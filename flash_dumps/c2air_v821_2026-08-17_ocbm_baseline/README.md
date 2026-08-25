# C2Air — Allwinner V821 (RISC-V) — OCBM barebones baseline, 2026-08-17

Post-modification SPI NOR state of the **C2Air (Allwinner V821, 32-bit RISC-V)** adapter after
repartitioning and installing a stripped, ADB-capable baseline rootfs intended as the install target
for the open-source **OCBM** protocol stack.

> [!IMPORTANT]
> **This is not a CPC200-CCPA / A15W dump.** Different SoC, different instruction set. Nothing here
> is cross-flashable with the ARM i.MX6UL material elsewhere in `flash_dumps/`. See
> [`c2air_v821_2026.05.14/README.md`](../c2air_v821_2026.05.14/README.md) for the stock dump this
> was derived from.

> [!WARNING]
> **`UDISK` is redacted in the committed image.** The `0xF80000+0x80000` region is filled with `0xFF`
> (its erased state) because it holds per-unit MFi material (`carplay.key`) and a personal device
> name. Everything else is byte-exact. The unredacted image was deliberately **not** committed.
> See [Redaction](#redaction).

## Provenance

| | |
|---|---|
| Read method | `dd` per MTD partition over ADB, concatenated (`mtd0`–`mtd7` = exactly 16 MiB) |
| Cross-check | the `rootfs` region is **byte-identical** to the squashfs image that was FEL-flashed |
| Derived from | stock `2026.05.14` (`e9e8424c…`) |
| Date | 2026-08-17 |

`mtd0`–`mtd7` sum to the whole chip — `0x60000 + 0x310000 + 0xB30000 + 3×0x10000 + 0xB0000 +
0x80000 = 0x1000000` — so a full image can be reassembled from Linux with no FEL cycle.

> **adbd gotcha:** on this vendor adbd, redirecting stderr *inside* the shell command string
> (`adb shell "dd ... 2>/dev/null"`) silently yields a **0-byte** output file. Drop the redirect.
> Similarly, `adb` inside a `while read` loop eats the loop's stdin — same class of problem as the
> documented `ssh -n` requirement.

## Partition layout — CHANGED from stock

`recovery` and `customer` were absorbed into `rootfs`. The table is a real GPT at `mbr_offset`
`0x5C000` (protective MBR `0x5C000`, header `0x5C200`, entries `0x5C400`); LBAs are relative to that
base. There is **no backup GPT** — `bak_lba` 32031 points at erased flash and the unit boots fine
that way, so only the primary copy needs rewriting.

| mtd | name | size | offset | vs stock |
|---|---|---|---|---|
| 0 | uboot | `0x060000` | `0x000000` | unchanged |
| 1 | boot | `0x310000` | `0x060000` | unchanged (kernel) |
| 2 | **rootfs** | **`0xB30000`** (11,456 K) | `0x370000` | **absorbed `recovery` + `customer`** |
| 3 | env | `0x010000` | `0xEA0000` | values changed, see below |
| 4 | env-redund | `0x010000` | `0xEB0000` | same |
| 5 | private | `0x010000` | `0xEC0000` | unchanged (`display=1`) |
| 6 | logo | `0x0B0000` | `0xED0000` | unchanged, no longer mounted |
| 7 | UDISK | `0x080000` | `0xF80000` | **redacted here**; intact on-device |

Stock had 9 GPT entries; this has 7. `rootfs` moved to index 1 = **mtd2**, so
`nor_root=/dev/mtdblock2` is required. U-Boot regenerates the `partitions=` cmdline from the GPT
automatically, so nothing else needed changing.

### Two traps for anyone rewriting this table

**`0x5C000` is not 64 KB-erase-aligned.** It sits inside the erase sector `0x50000–0x60000`, which
also holds ~32.7 KB of live U-Boot. The GPT must be written as a **whole 64 KB sector image**, never
as a 1 KB poke. `partitions/gpt_sector_0x050000.bin` is exactly that sector.

**`HeaderSize` is at header offset 12, not 8** (offset 8 is `Revision` = `0x00010000`). Reading it
from the wrong offset computes the header CRC over 65,536 bytes instead of 92, which U-Boot rejects.
The symptom is `libfdt fdt_check_header(): FDT_ERR_BADMAGIC` then
`## error: sunxi_update_fdt_para_for_kernel : FDT_ERR_BADPATH` at `[00.026]`, *before* the bootdelay
countdown. That failure is a bad GPT, not a bad layout — this cost one bricked boot and an FEL
recovery to work out.

## Rootfs — stripped baseline

squashfs 4.0, **xz**, block size **262144**, `DUPLICATES|EXPORTABLE`, single uid/gid pair (all root).

| | stock | baseline |
|---|---|---|
| image | 4,462,242 B | **2,088,960 B** |
| entries | 312 | 195 |
| free in the 11,456 K slot | 434 K | **9,416 K** |

### Kept

`busybox` **1.37.0** (401 applets, static) · musl `libc.so` (only consumer is `adbd`) · `adbd` ·
**`/bin/adb_shell`** — the string is compiled into `adbd`, so removing it breaks `adb shell` ·
`/init` · **`/etc/awbase.ko`** — `rc.final` insmods it and it is the only loaded module ·
`fw_printenv` (+`fw_setenv` symlink) · `mkfs.jffs2` · `dropbearmulti` 2026.94 ·
`wpa_supplicant` 2.11 / `hostapd` / `wpa_cli` (static, **not started**) · `hciattach` ·
`flashcp` / `flash_erase` / `mtdinfo` / `mtd_debug` · `udhcpc` scripts · `/etc/wifi/*.conf`.

### Removed

Vendor projection stack and its orphans: OpenSSL (`libcrypto`+`libssl`), `libstdc++`, ffmpeg
(`libavutil`, `libswresample`), `mdnsd`, `libdns_sd`, `liblog`, `lypack`, the SWUpdate stack
(`swupdate`, `swupdate-client`, `swupdate-progress`, `swupdate_cmd.sh`, `/sbin/update`), the OTA web
UI (`/usr/ota`, 1,052 K including `aliyun-oss-sdk.min.js`), `/mnt/backup` (a spare copy of
`lylink`), `lsz`/`lrz` + 10 zmodem aliases, `jffs2dump`/`jffs2reader`, orphaned
`libz`/`libconfig`/`libnl-tiny`, `rc.common` + `/lib/functions/`, and the vendor init scripts
`S41netparam`, `S50lyboot`, `S99swupdate_autorun`.

`mdev.conf` + `hotplug.sh` were removed as **provably unreachable**: no USB host controller exists
(`/sys/bus/usb/devices/` is empty — only `44100000.udc-controller`), no block devices
(`/proc/partitions` lists only `mtdblock0–7`), `mmc0`'s single card is the AIC8800 SDIO function
rather than a slot, `sdcard_mode=0`, mdev is not running, and `CONFIG_UEVENT_HELPER` is off.

`/etc/profile` was rewritten (3,026 → 1,749 B). The vendor original set
`WORKDIR=/mnt/customer/app` and prepended `/tmp/app:/mnt/customer/app` to `PATH` — both deleted
paths, so every command lookup stat'd two missing directories — and called `/sbin/ly_boot.sh` (a
removed binary), plus an update-mode branch that would `fw_setenv`. What remains is the shell
environment plus the platform facts OCBM needs (`LY_MFI_I2C_BUS=1`, `LY_BT_UART=/dev/ttyS1`,
`LY_BT_BDRATE`, `LY_CHIPID`, `PRODUCT_NAME`/`BT_NAME`/`WIFI_NAME`).
`/etc/ld-musl-riscv32.path` was `/lib:/usr/lib:/usr/local/lib`, now `/lib` (the other two don't
exist).

Dependency closure is verified by parsing `DT_NEEDED` from every ELF in the tree: no missing
libraries. The only dangling symlinks are `/etc/resolv.conf` and `/etc/mtab`, both intentional
runtime pointers.

## Toolchain — use the vendor GCC, not clang

Everything in `tools/` is built with the **vendor GCC 10.4.0** (`riscv32-linux-musl`) from
[`AvaotaSBC/toolchains`](https://github.com/AvaotaSBC/toolchains) release `v821-toolchains` — the
same compiler the vendor kernel was built with.

**This matters.** A zig/clang build of busybox 1.37.0 produced a working binary for 400 applets but
**`awk` segfaulted** (SIGSEGV on `{print $2}`). It was not strict aliasing
(`-fno-strict-aliasing -fwrapv` made no difference), and applet *presence* checks all passed — only
functional testing caught it. Rebuilt with the vendor GCC, all 17 functional tests pass **and the
binary is 294 KB smaller**. For anything cross-compiled to this target, prefer the vendor GCC and
test behaviour, not just linkage.

Running the x86_64-hosted toolchain on an aarch64 Linux VM needs three non-obvious steps:

1. an x86_64 **glibc** sysroot (an Ubuntu 20.04 base tarball) — Alpine is musl, so qemu-user can't
   find `/lib64/ld-linux-x86-64.so.2`
2. that sysroot's `ld-linux-x86-64.so.2` is an **absolute symlink**, which qemu resolves against the
   real root — replace it with the actual file
3. **binfmt_misc registration** for `qemu-x86_64`. Wrapper scripts are not enough: the gcc driver
   `execv`s `cc1` itself, which bypasses an explicitly-invoked qemu. (Registration does not survive
   a VM reboot.)

Then `PATH=<tc>/bin:$PATH QEMU_LD_PREFIX=<sysroot> make CROSS_COMPILE=riscv32-linux-musl-`.
`tools/build-rv32.sh` documents the zig path and its own workarounds.

## Boot — reorganised for fast ADB

```
/init            mount proc/tmpfs/sysfs, set_parts_by_name, exec /sbin/init
  rcS
   1. rc.preboot   watchdog feeder + USB gadget + adbd + UDC bind   <-- ADB HERE
   2. hostname, lo up
   3. mount /mnt/UDISK
   4. rc.final  -> S30acmadb (ACM console + dropbear, backgrounded)
                -> insmod awbase.ko
```

| | stock hook | baseline |
|---|---|---|
| gadget/ADB up | 7.78 s | **3.64 s** |
| power-on → ADB (incl. U-Boot) | ~10.1 s | **~4.0 s** |

Three fixes. The dominant one: `dropbearkey -t ed25519` calls `getrandom()`, which blocks until
`crng init done` — **5.34 s** on this headless board — and it sat *ahead of* the gadget setup in the
same shell. It is now backgrounded and runs last. Second, a blind `sleep 2` was replaced by polling
`/dev/usb-ffs/adb/ep1`. Third, the `echo "" > UDC` unbind was dropped (it produced `ret=-19`).

Remaining floor: the in-kernel AIC8800 firmware load occupies the single hart from ~1.9 s to ~2.4 s
(`rwnx_request_firmware` ×4), so ~2 s is the minimum without a kernel rebuild.

## Bluetooth HCI

Stock had **no** BT userspace — `btapp` lived in the now-absorbed `customer` partition and needs
`liblylinkmw.so.1`, so it cannot run standalone. The kernel side is complete
(`Bluetooth: HCI UART driver ver 2.3`, H4, L2CAP/SCO, `krfcommd`) and `aicbt_patch_table_load` pulls
firmware from `aic8800d80/fw_patch_8800d80_u02_ext0.bin` **in-kernel** — `/lib/firmware` is empty
and unnecessary.

Only the line-discipline attach was missing. `tools/hciattach.c` (~60 lines) does it:

```c
tcsetattr(fd, ...)                       /* raw, B500000, CRTSCTS (ly_bt_bdrate=500000) */
ioctl(fd, TIOCSETD, &N_HCI /*15*/)
ioctl(fd, HCIUARTSETPROTO, HCI_UART_H4 /*0*/)
ioctl(bt_sock, HCIDEVUP, 0)              /* then hold the fd — the attach dies with it */
```

Verified live: `attached as hci0`, `hci0 UP`, `/sys/class/bluetooth/hci0` present, and ttyS1
counters moved to `tx:424 rx:665` — a real HCI handshake with the chip, not just an ldisc swap. It
is **not** started at boot; OCBM owns BT and WLAN, and since the attach is bound to fd lifetime,
daemon ownership is the natural design.

## OCBM dependency check — all verified on hardware

| Dependency | Status |
|---|---|
| `/dev/usb_accessory` (AOA transport) | **present** — `f_accessory` is registered; `mkdir functions/accessory.gs0` creates misc 10,54 |
| `hci0` + `AF_BLUETOOTH` | **working** (above) |
| `wlan0` + WPA userspace | **working** — AIC8800 driver in-kernel (`awbase` is the only module) |
| MFi coprocessor | **present** — `/dev/i2c-1`, ACKs at `0x10` and `0x11` |
| `carplay.key` | intact on UDISK on-device (redacted here) |
| USB-net (NCM/ECM/RNDIS) | **absent** — needs `CONFIG_USB_CONFIGFS_NCM`; no open V821 kernel exists |

Gadget functions this kernel registers, probed by instantiating each in configfs:
**available** `accessory.*`, `acm.N`, `ffs.*`, `iphone_{audio,hid,ptp,vendor1}.gs0` —
**absent** `ncm`, `ecm`, `eem`, `rndis`, `mtp`, `ptp`, `mass_storage`, `hid`, `uac1/2`, `midi`,
`uvc`, `gser`.

## Environment

`bootdelay=0`, `loglevel=8`, `nor_root=/dev/mtdblock2`, `rgb_mode=0x000100` (LEDs green at
brightness 1/255). Redundant env format is `crc32(4, LE) | flags(1)=0x01 | data`, CRC over `[5:]`,
48 variables, `0x00` padding. `/usr/sbin/fw_setenv` exists as a symlink to `fw_printenv` — contrary
to an earlier note in this repo claiming it was absent, which came from `command -v` in this busybox
only reporting its first argument.

`loglevel=8` puts the complete kernel boot log on the 3-pad UART, which **works fine at 115200 8N1**
— the `hardware_uart: UNUSABLE` and `console_status: UNUSABLE past kernel handoff` claims in
[`../../hardware/c2air_v821_spec.md`](../../hardware/c2air_v821_spec.md) are **wrong** and should be
corrected. The `baud_set[]` range check the docs blamed is advisory: `sunxi_uart_check_baudset()`'s
return value is **discarded** by its caller, so it never gated anything. UART *input* into Linux does
not reach userspace, but **U-Boot accepts typed commands** — silently, with no echo, no prompt and no
command output, yet `boot` demonstrably executes — which makes `bootdelay=2` a usable
bootloader-level rescue channel.

## Files

| File | Size | Contents |
|---|---|---|
| `flash_dump_..._sanitized.bin` | 16 MiB | full SPI NOR, **UDISK redacted to `0xFF`** |
| `partitions/uboot_0x000000.bin` | 384 K | boot0 (`eGON.BT0`) + U-Boot 2018.07 + GPT |
| `partitions/gpt_sector_0x050000.bin` | 64 K | the erase sector holding the GPT — write *this*, not 1 KB |
| `partitions/boot_0x060000.bin` | 3,136 K | `ANDROID!` v2 kernel, `sun300i_riscv32` |
| `partitions/rootfs_0x370000.bin` | 11,456 K | baseline squashfs + `0xFF` tail |
| `partitions/env_0xEA0000.bin` | 64 K | U-Boot env (MACs are empty on this unit) |
| `partitions/env-redund_0xEB0000.bin` | 64 K | redundant copy |
| `partitions/private_0xEC0000.bin` | 64 K | `display=1` |
| `partitions/logo_0xED0000.bin` | 704 K | bare jffs2 header, 132 non-`0xFF` bytes |
| `tools/busybox-1.37.0-riscv32-musl` | 952 K | 401 applets, static, vendor GCC |
| `tools/{flashcp,flash_erase,mtdinfo,mtd_debug}-riscv32` | ~90 K ea | mtd-utils 2.2.1 |
| `tools/hciattach-riscv32` + `.c` | 42 K | BT HCI line-discipline attach |
| `tools/uartcheck-riscv32` + `.c` | 42 K | UART termios dump / RX probe |
| `tools/busybox-1.37.0.config` | 30 K | the exact busybox config used |
| `tools/build-rv32.sh` | 7 K | build recipe + every workaround |

`UDISK` is intentionally absent from `partitions/`.

## Redaction

`UDISK` (`0xF80000`, 512 K) held 2,513 non-`0xFF` bytes: `carplay.key` (601 B, per-unit MFi auth),
`ly-VehiConn-4890`, `debug_booted`, `dbglog`, `btapp.db`, and a paired phone's name. Two are
per-unit secrets and one is personal data, so the region is `0xFF` here. Everything else is
byte-identical to what was read from the device, verified by comparing `[:0xF80000]`.

The unredacted image exists only outside this repository. Note that
`c2air_v821_2026.05.14/flash_dump_c2air_2026.05.14.bin` **is** committed and contains the same class
of per-unit material — worth revisiting separately.

## Restoring / re-flashing

```sh
# selective — preferred, and leaves UDISK alone
xfel spinor write 0x050000 partitions/gpt_sector_0x050000.bin
xfel spinor write 0x370000 partitions/rootfs_0x370000.bin
xfel spinor write 0xEA0000 partitions/env_0xEA0000.bin
xfel spinor write 0xEB0000 partitions/env-redund_0xEB0000.bin
xfel reset
```

Always readback-verify: `xfel spinor read <off> <len> back.bin && cmp back.bin <file>`. Large writes
occasionally abort with `usb bulk send error`; retry the whole write.

With `flashcp` now on the box, `boot`, `env` and `logo` can be written **from Linux** with no FEL
cycle — `flashcp -v file /dev/mtdN` erases, writes and verifies. **Not `rootfs`**: you cannot
overwrite the squashfs you are executing from, since its pages are read on demand.

FEL entry is a brief press of the hidden button at power-on. Because FEL lives in the SoC BootROM
and not in flash, it survives any content here — including a corrupt `boot0` — which is what makes
this layout reversible. An SPI programmer (XGecu T48, `XT25F128F@SOP8`) is the floor beneath that.
