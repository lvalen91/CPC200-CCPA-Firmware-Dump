# C2Air (Allwinner V821 / RISC-V) — Platform & Firmware Architecture

**Status:** first-pass, dump-only analysis. Single unit, single dump, no serial console, no live
device access, no boot log.

> [!IMPORTANT]
> **A live root shell was later obtained and the running system probed directly. Where this
> dump-only doc and the runtime doc disagree, the runtime doc wins** —
> [`c2air_v821_runtime_and_access.md`](c2air_v821_runtime_and_access.md). Two speculative claims
> below are now **corrected** there: (1) the UART going silent after "Starting kernel …" is a
> **kernel UART-clock bug** (`uartclk 192 MHz beyond range`), **not** a `ttyS0`/`ttyAS0` console-name
> mismatch — `console=ttyS0` was correct; (2) the two `0x310000` images at 0x060000 and 0x370000 are
> **`boot` and `recovery`**, not a "boot A/B" pair, and the 0xB00000 squashfs is the **`customer`**
> partition. See the runtime doc for the confirmed partition map, USB/ADB/NCM feasibility, and the
> dropbear-over-WiFi access method.

**Evidence base:** one verified 16 MB SPI NOR dump —
[`../../flash_dumps/c2air_v821_2026.05.14/`](../../flash_dumps/c2air_v821_2026.05.14/). Two
independent reads, byte-identical. Every claim below is traceable to that image; nothing here is
runtime-confirmed.

> [!WARNING]
> **This platform is unrelated to the CPC200-CCPA / A15W that the rest of this repo documents.**
> Different SoC vendor, different CPU instruction set (RISC-V vs ARM), different ODM, different
> kernel generation, different libc, different distro. Findings do not transfer in either
> direction. In particular, do not apply this repo's HAB secure-boot, firmware-encryption-key,
> `CheckBoxManuDateSign`, or kernel-vermagic conclusions here — see
> [`device_variants_and_conversion.md`](device_variants_and_conversion.md) §1 for that scoping
> note.

---

## 1. Why this device is in this repo

The adapter is marketed as a "C2Air", which collides with the **U2AC_AUTOKIT ("2air")** already
documented as part of the HeWei i.MX6UL family. They are not the same hardware. The naming
collision is itself the finding worth recording: **brand names in this product category do not
identify a platform.** Identify by SoC, not by box.

## 2. Platform summary

| Layer | Value | Source in dump |
|---|---|---|
| SoC | Allwinner V821 (`sun300iw1p1`) | kernel DTB `compatible = "allwinner,v821", "riscv,sun300iw1p1"` |
| CPU | 1× RISC-V RV32IMAFDC + Andes `xv5` | DTB `riscv,isa` |
| RAM | 64 MB @ `0x80000000` | DTB `memory` node |
| Flash | XTX XT25F128F-W, 16 MB SPI NOR | chip marking + JEDEC `0x0B4018` |
| Kernel | Linux 5.4.220, `#2 PREEMPT Sat May 9 12:29:51 CST 2026` | version string in inflated kernel |
| Toolchain | gcc 10.4.0, `nds32le-linux-glibc` (Andes) | same string |
| libc | musl (`/lib/ld-musl-riscv32.so.1`) | ELF interpreter of `/bin/busybox` |
| Distro | Tina Linux 5.0 / OpenWrt 21.02-SNAPSHOT `r0-162b8ff` | `/etc/openwrt_release` |
| Target | `v821-lybox_aic8800/generic` | `DISTRIB_TARGET` |
| Build | `tina.tenc.20260509.043018` | `DISTRIB_INFO` |
| App | `26051418.6239.2` | `/app/system.json` |
| Project | `ly6239` | U-Boot env `ly_project_name` |
| Brand | `VehiConn` | U-Boot env `custom_name` |
| ODM | Liaoyuan | `liaoyuan` in OTP page; `ly*` prefix on every app binary |

Full hardware sheet: [`../../hardware/c2air_v821_spec.md`](../../hardware/c2air_v821_spec.md).

## 3. Boot chain

```
eGON.BT0 (boot0/SPL) @ 0x000000
   └─ boot0 DTB @ 0x051BE0        (clock init, "allwinner,clk-init")
   └─ U-Boot                       (LZMA payload support, sunxi-package)
        └─ env @ 0xEA0000 (+ redundant copy @ 0xEB0000)
        └─ bootcmd = run setargs_nor boot_normal
             └─ sunxi_flash read 82000000 ${boot_partition}; bootm 82000000
                  └─ ANDROID! boot image @ 0x060000  (mtd1 `boot`)
                       ├─ gzip kernel @ 0x060800, 3 021 796 B -> 6 186 500 B
                       └─ kernel DTB  @ 0x342800, 62 937 B
                  └─ mtd2 `recovery` @ 0x370000 (separate recovery image)
```

### boot vs recovery (NOT an A/B pair — corrected)

The two `0x310000` images at 0x060000 and 0x370000 are the **`boot`** (mtd1) and **`recovery`**
(mtd2) partitions — confirmed at runtime via `/proc/mtd` + kernel cmdline (`boot_partition=boot`,
`boot_recovery` command). They happen to be **bit-identical on this unit**
(`dump[0x60000:0x370000] == dump[0x370000:0x680000]` is True), which earlier looked like "boot
A/B" — but they are functionally distinct partitions (normal boot vs recovery), not a redundant
A/B scheme.

### Runtime kernel command line

DTB `bootargs` (overridden by U-Boot):

```
earlyprintk=sunxi-uart,0x42500000 loglevel=8 initcall_debug=1 console=ttyAS0 init=/init
```

Effective line assembled by `setargs_nor` from the env:

```
console=ttyS0,115200 loglevel=3 initcall_debug=0 root=/dev/mtdblock3 rootwait
rootfstype=squashfs init=/init rdinit=/rdinit cma=1M selinux=0
project=ly6239 custom_name=VehiConn ly_boot_mode=normal boot_partition=boot ...
```

Plus ODM-specific knobs passed straight through to userspace: `led_mode`, `rgb_mode`,
`sdcard_mode`, `func_det_mode`, `sys_mode`, `ly_flash_clock`, `ly_bt_bdrate`,
`led_update_mode`, `ly_test`, `ly_efex_mode`, `ly_debug_mode`.

Recovery/fastboot are key-triggered at boot: `recovery_key_value` `0x10`–`0x13`,
`fastboot_key_value` `0x2`–`0x8`. `bootdelay=0`.

## 4. Storage layout

> **Runtime-confirmed** (2026-08-01) from the live kernel — `/proc/mtd` for names/sizes and the
> kernel cmdline `partitions=…@mtdblockN` for the name↔index map. This **supersedes** the earlier
> dump-only guess (which mis-read `boot`+`recovery` as a "boot A/B" pair and the 0xB00000 squashfs
> as "app"). There is no `sunxi_mbr` table — offsets are the cumulative partition sizes.

| mtd | name | size | flash offset | notes |
|---|---|---|---|---|
| 0 | `uboot` | `0x60000` | `0x000000` | boot0/SPL + U-Boot |
| 1 | `boot` | `0x310000` | `0x060000` | ANDROID! kernel image (**active boot partition**) |
| 2 | `recovery` | `0x310000` | `0x370000` | recovery image (**not** a "boot B"; bit-identical to `boot` on this unit) |
| 3 | **`rootfs`** | `0x480000` | `0x680000` | SquashFS 4.0 / xz (mounted `/`, read-only) |
| 4 | **`customer`** | `0x3a0000` | `0xB00000` | SquashFS 4.0 / xz — **the live app** (`/mnt/customer`); this is the 0xB00000 squashfs earlier mislabeled "app" |
| 5 | `env` | `0x10000` | `0xEA0000` | U-Boot environment |
| 6 | `env-redund` | `0x10000` | `0xEB0000` | redundant env copy |
| 7 | `private` | `0x10000` | `0xEC0000` | small config (`display=1` observed) |
| 8 | `logo` | `0xb0000` | `0xED0000` | jffs2, boot logo / `raa.crt` staging (`/mnt/logo`) |
| 9 | `UDISK` | `0x80000` | `0xF80000` | jffs2, per-device data (`carplay.key`, name) (`/mnt/UDISK`) |

Full boot log and `/proc/mtd` capture:
[`../../flash_dumps/c2air_v821_2026.05.14/runtime_evidence/`](../../flash_dumps/c2air_v821_2026.05.14/runtime_evidence/).

### `/init` overlay behaviour

`/init` (13 894 B, Tina/OpenWrt preinit) mounts `rootfs_data` as the writable overlay over the
read-only SquashFS root, and will format it if the mount fails — selecting **jffs2, ubifs, or
ext4** depending on the backing device class (`/dev/mtdblock*` → jffs2; UBI → ubifs; else ext4).
`extend` is mounted at `/tmp/usr`. `sec_storage` mounts at `/data/tee` when both the node and
`/data/tee` exist, implying an OP-TEE-style secure-storage path.

`/var` is a symlink to `/tmp`; `/linuxrc` → `bin/busybox`; `/rdinit` → `init`.

## 5. Userland

### `rootfs` partition

Standard Tina/OpenWrt tree: `bin` `sbin` `usr` `lib` `lib32` `etc` `www` `overlay` `rom` `data`
`mnt`. 134 files, 42 directories, 131 symlinks (BusyBox applet links dominate). Only one loadable
module ships in the image: `/etc/awbase.ko`. The AIC8800 WiFi/BT driver is **built into the
kernel**, not a module — `aic8800_bsp` and `aic8800_fdrv` appear in the vmlinux strings.

### `app` partition

Mounted separately; contains the entire vendor stack:

| Binary | Role (inferred) |
|---|---|
| `lylink`, `lylinkapp` | main link/session daemon |
| `btapp` | Bluetooth application |
| `lyhostapd` | vendor hostapd build |
| `raaservice` + `raa.crt` | remote/attestation or auth service with bundled cert |
| `mtpservice` + `mtpservice.conf` | MTP |
| `lydopack` | packaging/OTA helper |
| `ly_testcp` | CarPlay test harness |
| `lyUpdate.sh`, `lyLink.sh`, `lyLoadModule.sh`, `update_kill_service.sh`, `blink.sh`, `format_udisk.sh` | shell glue |
| `libwcarplay_new.so` | wireless CarPlay core |
| `libiap_new.so` | Apple iAP2 |
| `liblyctrl.so`, `liblylinkmw.so.1` | vendor control / middleware |
| `libprotobuf-c.so.1` | protobuf-c runtime |
| `logo`, `my.ttf`, `system.json` | UI assets |

`/app/system.json`:

```json
{"align":"right|bottom","color":"#ffffff","appver":"26051418.6239.2","led":"103-5"}
```

### Apple iAP2 surface

`libiap_new.so` exports `CreateiAP2`, `DestroyiAP2`, `CreateiAP2OverWiFiCP`,
`StartiAP2OverWiFiCP`, `SetiAP2OverWiFiCPWriteCallback`, `SetiAP2OverWifiCPPassState`,
`SetiAP2BTAddr`, `SetiAP2LinkPacketSize`, and retains build paths `MFiUtils/src/MFiCache.c` and
`MFiUtils/src/MFiLog.c`. This is the same functional layer as the A15W's iAP2 handling but a
**different vendor implementation** — see
[`../02_Protocol_Reference/`](../02_Protocol_Reference/) for the A15W protocol work, which
remains the better-documented side.

Whether a physical MFi auth coprocessor is fitted was **not** determined from the dump — no
`/dev/i2c` MFi probe path was identified. Open item.

## 6. Wireless — WiFi 6

`/etc/wifi/hostapd.conf`:

```
ssid=smartLinkBox        wpa=2              wpa_key_mgmt=WPA-PSK
wpa_passphrase=88888888  wpa_pairwise=CCMP  rsn_pairwise=CCMP
hw_mode=a                channel=36         max_num_sta=2
ieee80211n=1  ieee80211ac=1  ieee80211ax=1
ht_capab=[SHORT-GI-20][SHORT-GI-40][HT40+]
driver=nl80211           auth_algs=3        wpa_group_rekey=86400
```

**`ieee80211ax=1` with `hw_mode=a` on channel 36 = 5 GHz 802.11ax.** This is the first WiFi 6
device recorded in this repo; the entire i.MX6UL family (BCM4354 / RTL8822CS / IW416) is WiFi 5
or older. Relevant to the latency/throughput analysis in
[`wifi_iw416_capabilities.md`](wifi_iw416_capabilities.md), which describes the older ceiling.

`lyLoadModule.sh` maps AP channel → P2P frequency for 1/6/11 (2.4 GHz) and 40/44/48/149/153
(5 GHz), reading an override from `/sys/ly_private/wifi_ch`. The `/sys/ly_private/` node family
is a vendor sysfs surface worth enumerating on a live unit.

The SSID and passphrase above are **shipped defaults identical across units**, not per-device
secrets.

### HiCar config present, CarPlay-only build

`/etc/wifi/` carries `udhcpd-cp.conf` **and** `udhcpd-hicar.conf`, so the ODM base image supports
Huawei HiCar. This unit's U-Boot env sets `ly_link_type=cp` — CarPlay only. No Android Auto
assets were found. Whether `ly_link_type` is a soft switch or gated elsewhere is unverified.

## 7. USB — the single port is a device-only gadget; NCM support is host-side (irrelevant here)

### The USB-C port's role

The board has **one** USB-C port. In the kernel DTB it is `usbc0`, an
`allwinner,sunxi-otg-manager`, configured **device-only**:

```
usbc0: usbc0@0 {
    compatible = "allwinner,sunxi-otg-manager";
    usb_port_type = <0x00>;        // 0 = device/peripheral, 1 = host, 2 = OTG dual-role
    usb_host_init_state = <0x00>;
};
```

USB roles are the reverse of intuition: **"host" is the side that powers and enumerates the bus
— i.e. the computer or car head unit — and the dongle is the USB *device* (a.k.a. peripheral /
"gadget")**, even though the dongle is the interesting box. This is true of every CarPlay dongle,
and here it is fixed: `usb_port_type=0` locks the port to device mode. The active controller is
the UDC (`udc-controller@44100000`); the EHCI/OHCI host controllers exist in silicon
(`ehci0/ohci0@44101000`) but the OTG manager keeps the port in device mode.

**So when this dongle is plugged into a computer, the computer is host and the dongle presents a
USB gadget** — whatever `setusbconfig` builds (adb/mtp/mass_storage). See §8 for the practical
shell path over that port.

### Why the `cdc_ncm` in the kernel is a red herring

The kernel ships the **host** CDC-NCM driver (`cdc_ncm`, `cdc_ncm_bind_common`,
`cdc_ncm_tx_fixup`, `cdc_ncm_rx_fixup`, an ODM wrapper `ly_cdc_ncm` / `ly_cdc_ncm_enable`, and
runtime strings `gooo usb ncm probe ok!`, `NCM_STATE=CONNECTED`, `force load ncm driver`, `force
connnect usb ncm` — typos verbatim). A host-side NCM driver only does anything when the SoC acts
as USB **host** to an NCM peripheral (e.g. a tethered phone). With `usb_port_type=0` that path is
not wired up on this product; the driver is almost certainly inherited from the Tina default
kernel config and dormant. It is **not** what presents the dongle to a computer.

The **gadget** side is absent. The kernel registers only `functionfs`, `usb_f_accessory`, MTP,
and `mass_storage`; there is no `f_ncm`, `u_ether`, `gether_*`, `f_ecm`, or `f_rndis`.
`/bin/setusbconfig` (a shell wrapper over `configfs` `usb_gadget/g1`) offers exactly
`none | adb | mtp | mass_storage`. Neither partition contains any file referencing NCM.

**Consequence for [`../CPC200-CCPA_SSH_over_USB_NCM.md`](../CPC200-CCPA_SSH_over_USB_NCM.md):**
that approach does **not** port as-is — the network-gadget transport is not present and would
require a kernel rebuild (add `f_ncm` + `u_ether`) plus a musl/RISC-V userland (none of the A15W
binaries can run here). Given the two easier root paths in §8, porting it is unnecessary anyway.

### USB gadget functions available

| Function | Present |
|---|---|
| `functionfs` (adb) | yes |
| `usb_f_accessory` (Android Open Accessory) | yes |
| MTP (`mtp.gs0`) | yes |
| `mass_storage` | yes |
| NCM / ECM / RNDIS / EEM (any USB-net gadget) | **no** |

`setusbconfig` builds the gadget via `configfs`, identifying as manufacturer `Allwinner`,
product `Tina`.

## 8. Root access — three vectors

| Vector | Auth required | Notes |
|---|---|---|
| **UART serial console** | **none** | `/etc/inittab`: `/dev/console::respawn:-/bin/sh` — a bare root shell, no `getty`/login. `ttyS0` @ 115200. This is the primary way in. |
| **Root password** | `tina` | `/etc/shadow` root hash `91rMiZzGliXHM` is DES-crypt; `crypt("tina","91")` matches. Stock Allwinner Tina default. Used by `login` and any `su` path. |
| **ADB** | none once enabled | `/bin/adbd` ships (FunctionFS `/dev/usb-ffs/adb/`). **Not autostarted** — `ly_boot.sh` runs `setusbconfig none` at boot; `/sbin/adb.sh` enables it (`setusbconfig adb; adbd &`). Needs the UART/root step or a firmware edit to turn on. |

- **No SSH.** No dropbear/sshd/telnetd in either partition.
- `/etc/inittab` in full: `sysinit` → `/etc/init.d/rcS boot`, `respawn` root shell on
  `/dev/console`, `ctrlaltdel` → reboot. The shell is genuinely unguarded on serial.
- `/etc/passwd`: `root:x:0:0:root:/root:/bin/ash`. Only `root` has a login shell; `daemon`, `ftp`,
  `network`, `nobody` are `*`-locked.

Practically: solder/hook the UART for instant root; use password `tina` wherever prompted; enable
`adbd` from there if a USB shell is wanted. Because §7 shows no USB-net gadget, ADB-over-FunctionFS
(or UART) is the realistic remote-shell route, not NCM.

### UART pinout (the 3-pad header)

The debug console is **UART0**, and its 2-wire type accounts for the 3 pads (GND + TX + RX):

| Property | Value | Source |
|---|---|---|
| Controller | UART0 @ `0x42500000` (`allwinner,uart-v100`), `status="okay"` | kernel DTB |
| tty | `ttyS0` / `ttyAS0` | env `console=ttyS0,115200` |
| **Baud** | **115200 8N1** | U-Boot `baudrate=115200` **and** kernel `console=ttyS0,115200` |
| Wires | 2-wire, no flow control (`uart0_type=2`) | kernel DTB — matches the 3 pads |
| Pins | **PL4, PL5** (`uart0_pins_default`, function `uart0`) | kernel DTB pinctrl |
| FIFO | 64 B (`sunxi,uart-fifosize=0x40`) | kernel DTB |

**Physical pad order (confirmed on-board): from the board edge toward the CPU = `GND, RX, TX`**
(device-side signal names). Consistent with the sunxi convention PL4=TX / PL5=RX.

| Pad (edge → CPU) | Signal (device) | Connect to 3.3 V USB-TTL adapter |
|---|---|---|
| 1 (edge) | GND | GND |
| 2 (middle) | RX (input) | adapter **TX** |
| 3 (CPU side) | TX (output) | adapter **RX** |

Read-only (just the boot log): pad 3 (TX) → adapter RX + GND is enough.

**Electrical.** PL4/PL5 are in the **PL bank (`R_PIO`, always-on domain)**; measured idle **~2.67 V** on
both pads = both lines idling HIGH, i.e. a **~2.7 V logic UART**. Use a **3.3 V** USB-TTL adapter
(reads the 2.7 V highs fine, 3.3 V output tolerated); **do not use 5 V**.

Not the console: **UART1** (PD7–PD10, 4-wire) is the **Bluetooth HCI** link (`hciattach_rtk`,
`ly_bt_bdrate=500000`). UART2/UART3 are `disabled`.

#### Serial goes silent after "Starting kernel ..." — kernel UART-clock bug (RUNTIME-CONFIRMED)

Observed live boot transcript (UART @ 115200):

```
[0]LY BOOT0
LY U-Boot(05/09/2026-04:18:41)
[00.259]
Starting kernel ...
        <-- nothing intelligible further
```

boot0 and U-Boot print fine; the kernel then goes quiet. **Root cause (confirmed from inside the
running kernel via SSH): a UART parent-clock bug, NOT a console-name mismatch.** The earlier
`ttyS0`/`ttyAS0` theory in prior revisions of this doc was **wrong** — there is no `ttyAS` on this
kernel and `console=ttyS0` was correct all along:

- `/proc/consoles` → `ttyS0 -W- (EC p) 251:0` — the console **is** enabled and bound.
- `/proc/tty/drivers` → the Allwinner `uart-ng` driver registers as **`ttyS`** (major **251**, not the
  8250 major 4). The inittab shell (`-/bin/sh`) **is** running on `/dev/console`, and writing to
  `/dev/console` succeeds.
- **The bug, verbatim from dmesg:**
  ```
  uart-ng0: ttyS0 at MMIO 0x42500000 ... is a SUNXI
  console setup baud 115200 parity n bits 8 flow n
  uart0 ... baud 115200, uartclk 192000000 beyond rance[24000000, 120000000]
  printk: console [ttyS0] enabled
  ```
  UART0 is clocked at **192 MHz — outside the driver's supported `[24–120 MHz]` range** — so the
  baud-rate divisor is mis-computed and the kernel drives the line at the **wrong effective baud**.
  At a 115200 terminal the kernel log + shell are garbage/nothing, even though U-Boot (which clocks
  the UART correctly) was clean at 115200. `loglevel=3` additionally suppresses most messages.

**Fix status — not fixable in place on the locked device:**
- The real fix is in the **kernel/DTS UART parent-clock config** (make UART0's clock ≤120 MHz). The
  kernel lives in the signed `boot` partition, so this needs the vendor SDK / a re-signed kernel.
- Runtime register poke is unavailable: `/dev/mem` is disabled (`CONFIG_DEVMEM` off) and busybox has
  no `devmem`/`stty`.
- **Empirical workaround (untested):** set the terminal to a non-standard baud matching the
  mis-clock — likely **≈184320/187500** (if the driver clamped to 120 MHz) or **921600** (if it fell
  back to the 24 MHz oscillator).
- **Recommended:** don't bother — **SSH-over-WiFi (§ root access) is a superior root console**, and a
  `f_acm` USB-serial gadget (supported) is an alternative that bypasses this UART entirely.

### Hidden service button — boot-mode + runtime multi-function key

A momentary push-button, hidden inside the case (not present on the i.MX6UL CCPA variants), is read
through **two independent paths**:

**Boot-time (boot0 / U-Boot) — recovery & reflash.** boot0 selects a boot mode from an ADC "key"
(`key_min`/`key_max`) plus the Android-style `misc` partition BCB. Human-readable outcomes in boot0:

```
[boot efex] set misc : boot efex                 # Allwinner FEL / USB download mode
[boot recovery] set misc : boot recovery
[boot factory] set misc : boot factory and wipe data
[ir sysrecovery] set misc : boot recovery and sysrecovery
ir-or-key-recovery                               # recovery via IR OR key
```

Env key ranges: `fastboot_key_value 0x02–0x08`, `recovery_key_value 0x10–0x13`. **Held at power-on,
the button forces efex(FEL)/recovery/fastboot** — the intended reflash entry, drivable with
`xfel` / `sunxi-fel` over the USB-C without desoldering the SPI. `bootdelay=0` otherwise.

**Runtime (Linux app) — function/reset key.** Polled via a misc driver `/dev/ly_misc_dev` (sysfs
`/sys/class/misc/ly_misc_dev/ly/{ly_efex,update,chipid}`) by `CPowerKey` in `liblyctrl.so` and
`checkKeyThread2`/`procDKeyThread` in `raaservice` / `ly_testcp`. Decoded actions:

| Press | Action | Evidence string |
|---|---|---|
| short | switch phone / P2P re-pair | `checkKeyThread2 do switch p2p` |
| short | Bluetooth switch (dual-phone) | `do bt_sw`, `btdevice: Phone 2st is …`, `check_second_devices` |
| **long ≥10 s** | **factory reset — wipes user data** (`/tmp/lydoreset`) | `checkKeyThread2 press > 10s`, `pthreadKeyMonitor do reset` |
| special | test mode | `procDKeyThread run test mode` |
| special | force efex/fastboot | writes `…/ly/ly_efex`, `/tmp/ly_fastboot` |

**Pin (likely).** The strongest single-button candidate in the DTB is `ly_gpio_input` → **PC16**,
`gpio_in` with **pull-up** — idles HIGH (~2.7 V, same rail as the UART pads), pulled to 0 V when
pressed (active-low, momentary-to-GND). The boot-time ADC-key detection may sit on a separate ADC
line; firmware alone can't separate the two. ⚠️ The long-press path performs a **data-wiping factory
reset** — capture UART before experimenting and be deliberate with hold time.

### FEL (Allwinner USB download mode) — CONFIRMED working, solderless dump/flash

A **brief** button press at power-on drops the SoC BootROM into **FEL**, verified on real hardware:

| Property | Value |
|---|---|
| USB ID | **`1f3a:efe8`** (VID Allwinner, PID FEL) |
| Link speed | 12 Mb/s (USB full-speed → BootROM stage, not the 480 Mb/s Linux gadget) |
| xfel probe | `AWUSBFEX ID=0x00188200 (V821)` |
| SID (eFuse) | `12c028000c40490c8411410c208818d5` — **matches the OTP security-register page**; per-unit, treat as a serial |
| SPI NOR | SFDP-detected, 16 777 216 B |
| Read speed | ~450 KB/s → full 16 MB in ~37 s |
| **Validation** | **FEL read is byte-identical to the T48 dump** (SHA-256 `e9e8424c…e5c34e`) — the image is now triple-confirmed (2× T48 + FEL) |

**Tooling:** `xfel` (github.com/xboot/xfel) built from source on macOS (libusb) — it ships **native
V821 support** (`chips/v821.c`), no patching. `sunxi-tools`/`sunxi-fel` is not in Homebrew and was
not needed. macOS may require running under `sudo` for raw USB.

```sh
xfel version                            # -> V821, confirms FEL link
xfel sid                                # chip eFuse SID
xfel spinor                             # detect 16 MB SFDP NOR
xfel spinor read 0 0x1000000 dump.bin   # full dump, ~37 s
# writes (not run here): xfel spinor write 0 img.bin  /  xfel spinor erase <a> <len>
# RAM: xfel ddr && xfel read <addr> <len> file
```

FEL is also how the rootfs-based root consoles were delivered (SSH-over-WiFi and USB-serial) — see
[`c2air_v821_runtime_and_access.md`](c2air_v821_runtime_and_access.md). Note: the "console env fix"
described in earlier revisions of this doc (`console=ttyAS0`) was based on a wrong theory — the
serial console is unusable due to a kernel UART-clock bug, not a console-name mismatch (§7), and no
env change fixes it.

## 9. Web surface

Much smaller than the A15W's Boa config server. `/app/ota/httpd.conf` sets document root
`H:/usr/ota/www` with `E404:index.html`; `/app/ota/www/` contains `index.html`, `css/`, `js/`,
`lan/`, and `cgi-bin/index.cgi`. It is an **OTA-only** surface. The replacement web UI in
[`../../web_interface/`](../../web_interface/) targets the A15W Boa server and does not apply.

## 10. Secure boot — **RESOLVED: NOT enforced (device unlocked)**

Earlier this was "unassessed." **Runtime analysis settled it: secure boot is OFF.** boot0 magic is
plain **`eGON.BT0`** (a secure unit ships `TOC0.GLH`); `boot`/`recovery` are plain `ANDROID!` images
with only a mkbootimg SHA1 integrity hash (no AVB/RSA); the U-Boot env has no secure/keybox flags and
`bootcmd` uses legacy `bootm` with **no verification**. The `sunxi_rsa_sign_check`/`burn_secure_mode`/
RSA/OPTEE strings in U-Boot are **dormant capability, not enforcement**. So `boot`/`recovery`/`uboot`
can be reflashed with custom (unsigned) images; a bad `mtd0`/`mtd1` is recoverable via FEL/efex. Full
evidence and the firmware-modification picture:
[`c2air_v821_runtime_and_access.md`](c2air_v821_runtime_and_access.md) §7.

`selinux=0` on the kernel command line. Combined with §8, on-device security is minimal.

`selinux=0` on the kernel command line. Combined with §8, on-device security is minimal: the
serial console alone is unauthenticated root.

## 11. Device-unique data

Checked before the dump was committed:

- **No MAC addresses in the flash image.** `wifi_mac=` and `bt_mac=` exist in the U-Boot env but
  are **empty**, and a whole-image regex sweep for `xx:xx:xx:xx:xx:xx` finds nothing. MACs are
  injected at runtime or held in SoC OTP outside the SPI part.
- **The 3 KB security-register page is per-unit.** It holds `liaoyuan` and the identifier
  `490c26050709.6239.2` — the `.6239.2` tail matches `ly_project_name=ly6239` and the
  `/app/system.json` `appver` suffix. Treat it as a serial number.
- AP SSID/passphrase are stock defaults.
- The root password `tina` is a shipped stock default, not a per-unit secret.

## 12. Open items

1. Serial console capture (`ttyS0` @ 115200; `earlyprintk` on `sunxi-uart` `0x42500000`) — would
   confirm RAM, partition table, and the AIC8800 variant actually fitted.
2. Which AIC8800 die is present — `aic8800d`, `aic8800d80`, and `aic8800dc` are all referenced in
   the kernel. `d80` is the WiFi 6 part and `ieee80211ax=1` implies it, but this is inference.
3. Whether an MFi auth coprocessor is fitted, and on which bus.
4. Secure-boot enforcement state (§10).
5. The `riscv0` / `riscv0-r` second-core firmware — referenced by `boot_riscv` but not found.
6. `/sys/ly_private/` sysfs surface — only `wifi_ch` is known, from `lyLoadModule.sh`.
7. `raa.crt` / `raaservice` — unidentified. Worth pulling apart.
8. Whether `ly_link_type=cp` can be flipped to enable the HiCar path whose DHCP config already ships.
9. OTA update format — `lyUpdate.sh` + `lydopack` + env `ly_update_pkg_name=update.img`. No
   update image has been obtained for this platform.

---

## References

- [`../../flash_dumps/c2air_v821_2026.05.14/README.md`](../../flash_dumps/c2air_v821_2026.05.14/README.md) — dump provenance, verification, measured flash map
- [`../../hardware/c2air_v821_spec.md`](../../hardware/c2air_v821_spec.md) — hardware sheet + A15W comparison table
- [`device_variants_and_conversion.md`](device_variants_and_conversion.md) — HeWei/i.MX6UL family (scoping note in §1)
- [`hardware_platform.md`](hardware_platform.md), [`flash_layout.md`](flash_layout.md), [`secure_boot_hab.md`](secure_boot_hab.md) — A15W counterparts to this document
