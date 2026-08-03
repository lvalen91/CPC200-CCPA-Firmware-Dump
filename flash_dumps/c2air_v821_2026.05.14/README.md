# C2Air — Allwinner V821 (RISC-V) SPI NOR dump, firmware `2026.05.14`

> [!IMPORTANT]
> **This is not an A15W / CPC200-CCPA dump and shares no lineage with the rest of `flash_dumps/`.**
> Every other dump in this repo is NXP i.MX6UL (ARM Cortex-A7, Linux 3.14, HeWei ODM firmware).
> This unit is **Allwinner V821, 32-bit RISC-V, Linux 5.4.220, Tina Linux 5.0**, built by a
> different ODM (Liaoyuan / `ly`). Nothing here is flashable to an A15W and nothing in the other
> dump folders is flashable to this device. Different CPU architecture entirely.

> [!CAUTION]
> Do not cross-flash. See also the `uboot+kernel are fuse-signed` caveat in
> [`../README.md`](../README.md) — that caveat is about the i.MX6UL HAB chain and does **not**
> describe this platform's secure boot, which has not been characterised.

## Provenance

| | |
|---|---|
| Flash IC | **XTX XT25F128F-W**, 16 MB (128 Mbit) SPI NOR, SOP8 |
| Marking | `XT25F128F-W` / `2545TH1C` (lot code — week 45, 2025) |
| JEDEC ID | `0x0B 0x40 0x18` (minipro reports `0xB4018`) |
| Reader | XGecu **T48** (firmware `00.1.35`) |
| OS / tool | macOS (Darwin 27), `minipro` 0.7.4 (Homebrew) |
| Dump date | 2026-07-31 |
| Verification | Two independent T48 reads **+ one FEL read**, all three **byte-identical** (SHA-256 `e9e8424c…`) |

```sh
minipro -p 'XT25F128F@SOP8' -D                          # ID check -> 0xB4018 OK
minipro -p 'XT25F128F@SOP8' -r flash_dump_c2air_2026.05.14.bin
```

`-r` without `-c` splits the read automatically: the 16 MB main array goes to the named file and
the 3 KB SFDP + security/OTP register page goes to `<name>.eeprom.bin` (stored here as
`security_regs_c2air_2026.05.14.bin`). Read time 37.9 s at minipro's default SPI clock.

**Solderless alternative — FEL (validated).** A brief press of the hidden button at power-on puts the
V821 BootROM into Allwinner FEL mode (USB `1f3a:efe8`, 12 Mb/s). `xfel` (github.com/xboot/xfel, native
V821 support) then reads the SPI NOR over the USB-C with no clip:

```sh
xfel version                            # -> AWUSBFEX ID=0x00188200 (V821)
xfel spinor read 0 0x1000000 fel_dump.bin   # ~450 KB/s, ~37 s
```

This FEL read was **byte-identical** to the T48 dump (same SHA-256), so the image is triple-confirmed.
See [`../../documentation/01_Firmware_Architecture/c2air_v821_platform.md`](../../documentation/01_Firmware_Architecture/c2air_v821_platform.md)
§8 for full FEL details and the `console=ttyS0`→`ttyAS0` serial-console fix.

> `minipro` prints `T48 support is not yet complete` and a firmware-newer-than-expected warning.
> Harmless for SPI NOR reads — the two matching passes confirm that — but re-verify carefully
> before trusting it for a **write**.

## Files

| File | Size | Contents |
|---|---|---|
| `flash_dump_c2air_2026.05.14.bin` | 16 MiB | Full SPI NOR main array — **XGecu T48** read (primary) |
| `flash_dump_c2air_2026.05.14_FEL.bin` | 16 MiB | Same array via **FEL / xfel** (solderless) — byte-identical to the T48 read (`cmp` clean, same SHA-256); kept as an independent-method cross-check |
| `security_regs_c2air_2026.05.14.bin` | 3072 B | SFDP + security/OTP registers — **device-unique, see below** |
| `rootfs_c2air_2026.05.14.zip` | 4.9 MB | Unpacked `rootfs` partition (SquashFS/xz) |
| `app_c2air_2026.05.14.zip` | 3.4 MB | Unpacked `app` partition (SquashFS/xz) |
| `kernel.dtb` | 62937 B | Device tree shipped in boot slot A (`sun300iw1p1`) |
| `boot0.dtb` | 18090 B | Device tree embedded in boot0/SPL (clock init) |
| `uboot_env.txt` | — | U-Boot environment recovered from `0xEA0000` |
| `SHA256SUMS` | — | Checksums for everything above |

Unpacked with Homebrew `squashfs` 4.7.5:

```sh
unsquashfs -no-xattrs -d rootfs rootfs.squashfs
```

`/dev/console` cannot be recreated without root on macOS, so the zips contain no device nodes
(0 devices, 0 fifos, 0 sockets). `rootfs` also carries 131 symlinks — the zips were made with
`zip -y` so those are preserved as links, not dereferenced.

## Flash layout (derived from magic scanning + `/init`)

Partition **names** come from `/init`, which resolves everything through
`/dev/mtdblock/by-name/{rootfs,app,customer,extend,sec}`. There is no `sunxi_mbr`-style table in
the image (that is a NAND/eMMC construct); offsets below are measured directly from the dump.

| Offset | Size | Contents |
|---|---|---|
| `0x000000` | — | boot0 / SPL — `eGON.BT0` magic at offset 0 |
| `0x051BE0` | 18090 B | boot0 device tree (clock init) |
| `0x060000` | ~0x2E3000 | **boot slot A** — `ANDROID!` header, page size 2048, 3 021 796 B gzip kernel, no ramdisk |
| `0x060800` | 3 021 796 B | gzip kernel image (inflates to 6 186 500 B) |
| `0x342800` | 62937 B | kernel device tree |
| `0x370000` | 0x310000 | **boot slot B** — *bit-identical to slot A over the full span* |
| `0x680000` | 4 273 672 B | **`rootfs`** — SquashFS 4.0, xz, 256 KB blocks, 308 inodes |
| `0xB00000` | 3 139 586 B | **`app`** — SquashFS 4.0, xz, 256 KB blocks, 69 inodes |
| `0xE00000` | — | JFFS2 region (`customer` / `extend` / `sec`), mostly erased |
| `0xEA0000` | — | U-Boot environment (redundant copy at `0xEB0000`) |
| `0xFF0000` | 64 KiB | Blank `0xFF` to end of device |

Last non-`0xFF` byte is at `0xFF000B` — a JFFS2 clean marker (`85 19 03 20`), i.e. an erased
JFFS2 block, not data.

Boot A/B were compared directly: `dump[0x60000:0x370000] == dump[0x370000:0x680000]` is **True**.
This is genuine A/B redundancy, not two different builds.

## Firmware identification

| | |
|---|---|
| SoC | Allwinner **V821** — `sun300iw1p1`, `compatible = "allwinner,v821", "riscv,sun300iw1p1"` |
| CPU | Single-core **32-bit RISC-V**, `rv32i2p0m2p0a2p0f2p0d2p0c2p0xv5-0p0` (RV32IMAFDC + Andes V5) |
| RAM | **64 MB** @ `0x80000000` (DTB `memory` node `reg = <0x0 0x80000000 0x0 0x4000000>`) |
| Kernel | `Linux version 5.4.220 (tenc@ubuntu) ... #2 PREEMPT Sat May 9 12:29:51 CST 2026` |
| Toolchain | gcc 10.4.0, `nds32le-linux-glibc` (Andes) |
| libc | **musl** — `/lib/ld-musl-riscv32.so.1` |
| Distro | Tina Linux 5.0 / OpenWrt 21.02-SNAPSHOT, `r0-162b8ff` |
| Target | `v821-lybox_aic8800/generic` |
| Build tag | `tina.tenc.20260509.043018` |
| App version | `26051418.6239.2` (`/app/system.json`) → 2026-05-14 |
| Project | `ly_project_name=ly6239` |
| Brand | `custom_name=VehiConn` |
| Link type | `ly_link_type=cp` — **CarPlay only** |
| WiFi/BT | **AICSemi AIC8800** family (`aic8800_bsp`, `aic8800_fdrv`, `aic8800d80`, `aic8800dc` in-kernel) |
| ODM | **Liaoyuan** — `liaoyuan` string in the OTP page, `ly*` binary prefix throughout `/app` |

### Kernel command line (from DTB)

```
earlyprintk=sunxi-uart,0x42500000 loglevel=8 initcall_debug=1 console=ttyAS0 init=/init
```

The U-Boot env overrides this at boot via `setargs_nor` with `console=ttyS0,115200`,
`loglevel=3`, `root=/dev/mtdblock3`, `rootfstype=squashfs`.

### WiFi capability — WiFi 6, a generation ahead of the A15W

`/etc/wifi/hostapd.conf` on this unit:

```
ssid=smartLinkBox
wpa_passphrase=88888888
hw_mode=a
channel=36
ieee80211n=1
ieee80211ac=1
ieee80211ax=1      # <-- WiFi 6
max_num_sta=2
```

`ieee80211ax=1` on `hw_mode=a` channel 36 means **5 GHz WiFi 6 (802.11ax)**. Every i.MX6UL
variant in this repo tops out at WiFi 5 (RTL8822CS / IW416 / BCM4354). `lyLoadModule.sh` maps
AP channels 1/6/11/40/44/48/149/153 to P2P frequencies, so 5 GHz P2P is in use for the CarPlay
link.

The default AP credentials above are **stock, shipped, and identical across units** — they are
not a secret extracted from this device.

### Notable `/app` contents

`btapp`, `lylink`, `lylinkapp`, `lyhostapd`, `raaservice`, `mtpservice`, `lydopack`,
`ly_testcp`, `lyUpdate.sh`, `lyLink.sh`, `lyLoadModule.sh`, `raa.crt`, `system.json`, plus
shared libraries `libwcarplay_new.so`, `libiap_new.so`, `liblyctrl.so`, `liblylinkmw.so.1`,
`libprotobuf-c.so.1`.

`libiap_new.so` exports a full Apple iAP2 surface — `CreateiAP2`, `CreateiAP2OverWiFiCP`,
`StartiAP2OverWiFiCP`, `SetiAP2OverWiFiCPWriteCallback`, `SetiAP2BTAddr`,
`SetiAP2LinkPacketSize` — and retains `MFiUtils/src/MFiCache.c` / `MFiLog.c` source paths.

`/app/ota/` holds a small `httpd` config (`H:/usr/ota/www`) and a `www/` tree with `cgi-bin/index.cgi`
— a much smaller OTA-only web surface than the A15W's Boa config server.

`/etc/wifi/` also contains `udhcpd-hicar.conf` alongside `udhcpd-cp.conf`, so the ODM image
carries **HiCar** DHCP config even though this unit's `ly_link_type` is set to CarPlay only.

### CDC-NCM is host-side only — the A15W SSH-over-NCM trick does NOT port as-is

The kernel has the **host** CDC-NCM driver (`cdc_ncm`, `cdc_ncm_bind_common`, `cdc_ncm_tx_fixup`,
plus an ODM wrapper `ly_cdc_ncm` / `ly_cdc_ncm_enable=%d`, and the runtime strings `gooo usb ncm
probe ok!` / `NCM_STATE=CONNECTED` / `force load ncm driver`). That is for the adapter acting as
USB **host** to an NCM peripheral (e.g. a tethered phone), **not** for presenting itself as a USB
network gadget.

The **gadget** side needed for SSH-over-USB is absent: no `f_ncm`, `u_ether`, `gether_*`,
`f_ecm`, or `f_rndis` in the kernel image. The USB gadget stack registers only `functionfs`,
`usb_f_accessory`, MTP, and `mass_storage`; `/bin/setusbconfig` offers exactly
`none | adb | mtp | mass_storage`. No text file in either partition references NCM.

So [`../../documentation/CPC200-CCPA_SSH_over_USB_NCM.md`](../../documentation/CPC200-CCPA_SSH_over_USB_NCM.md)
would require a **kernel rebuild** (add `f_ncm` + `u_ether`) here — the transport is *not* already
in place. There are, however, two much easier root paths — see below.

### Getting a root shell — three findings

- **UART = unconditional root, no password.** `/etc/inittab` spawns the console shell directly:
  `/dev/console::respawn:-/bin/sh`. There is no `getty`/login on serial — you land in a root
  `/bin/sh`. Console is `ttyS0` @ 115200 (`earlyprintk` on `sunxi-uart 0x42500000`).
- **Root password is `tina`** — the stock Allwinner Tina Linux default. `/etc/shadow` root hash
  `91rMiZzGliXHM` is DES-crypt; `crypt("tina", "91")` matches. Applies to any path that prompts
  for a password (`login`, `adbd`'s `su`, etc.).
- **`adbd` ships** (`/bin/adbd`, over FunctionFS `/dev/usb-ffs/adb/`), started manually by
  `/sbin/adb.sh` (`setusbconfig none; setusbconfig adb; adbd &`). It is **not** autostarted —
  `ly_boot.sh` forces `setusbconfig none` at boot — so ADB requires the UART/root step first, or
  a firmware change, to enable.

No SSH/dropbear/telnetd is present in either partition.

## Device-unique data — read before publishing

Reviewed explicitly. Findings:

- **No MAC addresses are stored in the flash image.** The U-Boot env has `wifi_mac=` and
  `bt_mac=` present but **empty**; a whole-image scan for `xx:xx:xx:xx:xx:xx` patterns returns
  nothing. MACs are presumably injected at runtime or held in SoC OTP outside this page.
- **`security_regs_c2air_2026.05.14.bin` is device-unique.** It contains the ODM string
  `liaoyuan` and a per-unit identifier `490c26050709.6239.2`, whose `.6239.2` tail matches both
  `ly_project_name=ly6239` and the `/app/system.json` `appver` suffix. Treat this file as a
  serial number. Keep it if you may ever need to restore *this* unit; strip it if that matters
  to you.
- The AP SSID/passphrase are stock defaults, not per-unit secrets.

## Open items

- Secure boot: `sunxi_rsa_sign_check`, `sunxi-secure`, `sunxi_sha_calc_with_software` and a
  `secure_status` DTB node are present in boot0. Whether this platform actually enforces a
  signed uboot/kernel — and whether it is fuse-bound like the i.MX6UL HAB chain — is **not**
  established. Do not assume the A15W findings transfer.
- A `riscv0` / `riscv0-r` partition and `boot_riscv=bootrv 82000000 200000 0 riscv0 riscv0-r`
  command exist in the env, implying a **second RISC-V core** with its own firmware image. Not
  located in this dump; may live in a partition that is blank on this unit.
- `recovery` partition is referenced by `boot_recovery` but was not identified in the image.
- No serial console capture yet — `ttyS0` @ 115200 per the env, `earlyprintk` on
  `sunxi-uart 0x42500000`.
