# C2Air (VehiConn / `ly6239`) — Allwinner V821 platform spec

**Scope:** hardware and platform reference for the RISC-V C2Air adapter, derived entirely from
the SPI NOR dump at [`../flash_dumps/c2air_v821_2026.05.14/`](../flash_dumps/c2air_v821_2026.05.14/).
This is a **different platform from the CPC200-CCPA (A15W)** documented in
[`cpc200-ccpa_spec.md`](cpc200-ccpa_spec.md) — different SoC, different CPU architecture,
different ODM, different firmware lineage.

> **Provenance note (updated).** Originally dump-only, but a **live root shell was later obtained**
> (SSH-over-WiFi and USB-serial) and much of this spec is now **runtime-confirmed** — those sections
> are marked. For the full live analysis (access methods, boot log, UART bug, partition map,
> USB/ADB/NCM feasibility, secure boot, MFi, update mechanism) see
> [`../documentation/01_Firmware_Architecture/c2air_v821_runtime_and_access.md`](../documentation/01_Firmware_Architecture/c2air_v821_runtime_and_access.md).

## SoC

```yaml
soc: Allwinner V821
soc_family_id: sun300iw1p1
dt_compatible: ["allwinner,v821", "riscv,sun300iw1p1"]
dt_model: sun300iw1p1
architecture: RISC-V 32-bit          # NOT ARM — this is the key divergence from the A15W
cpu_cores: 1
riscv_isa: rv32i2p0m2p0a2p0f2p0d2p0c2p0xv5-0p0
riscv_isa_plain: RV32IMAFDC + Andes "xv5" V5 extension
cpu_vendor_core: Andes-derived       # inferred from xv5 ISA string + nds32le toolchain
enable_method: psci
timebase_frequency: 40000000         # 40 MHz (DTB 0x2625a00)
capacity_dmips_mhz: 523              # DTB 0x20b
i_cache_size: 16384                  # 16 KB (DTB 0x4000)
interrupt_controller: RISC-V PLIC    # sunxi_plicsw / sunxi_plmt in boot0
```

A second RISC-V core is implied by the U-Boot env (`boot_riscv=bootrv 82000000 200000 0 riscv0
riscv0-r`, `riscv_partition=riscv0`) but its firmware was not located in this dump.

## Memory

```yaml
ram_size: 64MB                       # DTB memory node reg = <0x0 0x80000000 0x0 0x4000000>
ram_base: 0x80000000
ram_ic: unknown                      # likely SiP / not separately marked; not visually confirmed
cma_reserved: 1M                     # U-Boot env: cma=1M
```

**64 MB — half the A15W's 128 MB.** Budget accordingly when porting anything from the i.MX6UL
side of this repo.

## Flash

```yaml
flash_ic: XT25F128F-W
flash_manufacturer: XTX Technology
flash_type: SPI NOR
flash_size: 16MB (128Mbit)
flash_package: SOP8
flash_marking_line1: XT25F128F-W
flash_marking_line2: 2545TH1C        # lot code, week 45 2025
jedec_id: 0x0B4018                   # mfr 0x0B (XTX), type 0x40, capacity 0x18
uboot_env_flash_size: 16             # U-Boot env: flash_size=16
security_registers: 3072 bytes       # SFDP + OTP; device-unique, see dump README
```

Programmer support: `minipro -p 'XT25F128F@SOP8'` (XGecu T48 verified working; entry reports
16 777 216 B main + 3072 B secondary, 4096 B read buffer, 256 B write buffer).

Same capacity as the A15W's Macronix MX25L12835F, different vendor and **completely different
partition layout** — see the dump README for the measured map.

## Wireless

```yaml
wifi_bt_chip: AICSemi AIC8800 family
kernel_drivers: [aic8800_bsp, aic8800_fdrv]     # built into the kernel image, not modules
variants_referenced: [aic8800d, aic8800d80, aic8800dc]
bt_patch_config: aic8800dc_bt_patch_config
wifi_patch_config: aic8800dc_wifi_patch_config
openwrt_target: v821-lybox_aic8800/generic
wifi_standard: 802.11ax (WiFi 6)                # hostapd ieee80211ax=1
bands: 2.4 GHz + 5 GHz
default_ap_channel: 36 (5 GHz, hw_mode=a)
p2p_channels_mapped: [1, 6, 11, 40, 44, 48, 149, 153]
max_num_sta: 2
```

**This is the first WiFi 6 adapter in this repo.** Every i.MX6UL variant — BCM4354, RTL8822CS,
IW416 — is WiFi 5 or older. See
[`../documentation/01_Firmware_Architecture/wifi_iw416_capabilities.md`](../documentation/01_Firmware_Architecture/wifi_iw416_capabilities.md)
for the A15W baseline this supersedes.

Stock AP credentials (shipped defaults, not per-unit): SSID `smartLinkBox`, WPA2-PSK
`88888888`, `wpa_group_rekey=86400`, CCMP only, `auth_algs=3`.

## USB

```yaml
usb_ports: 1                         # single USB-C, sole external USB
usb_controller: allwinner,sunxi-otg-manager (usbc0); UDC 44100000.udc-controller
usb_port_type: 0                     # DEVICE-only (0=device, 1=host, 2=OTG)
usb_role_when_connected: device/gadget   # computer/head-unit = host; dongle = USB device
# gadget function support — RUNTIME-TESTED live via configfs (create/remove each function):
gadget_net_functions: NONE           # ncm/ecm/rndis/eem all rejected -> no USB-network gadget
gadget_acm: SUPPORTED                # f_acm + g_serial (ttyGS, major 252) -> USB serial console
gadget_ffs: SUPPORTED                # functionfs (adb transport)
cdc_ncm: host-side only              # cdc_ncm + ly_cdc_ncm are the usbnet HOST driver, not a gadget
normal_gadget: CarPlay iAP accessory # app configures: ffs.adb + iphone_audio/hid/ptp/vendor.gs0
adbd: present (/bin/adbd); NOT autostarted; needs shell(2000) user + non-production to serve
```

Runtime-confirmed USB feasibility (see runtime doc §5):
- **NCM / USB-network over USB: NOT possible** without a kernel rebuild — `f_ncm`/`u_ether`/`f_ecm`/
  `f_rndis` are absent (tested by trying to instantiate each in configfs; all rejected). The
  `cdc_ncm`/`ly_cdc_ncm` in-kernel are the **host-side** driver, not a gadget.
- **ADB: PROVEN in debug mode** — adbd runs fine as root (no shell-user/production blocker in
  practice); the only conflict was gadget ownership by the CarPlay app. With the app disabled, adb
  works and **coexists with ACM as a composite `acm+ffs.adb` gadget** (`adb shell` = root, no key).
  Not usable alongside wired-CarPlay. Can be enabled live (configfs hot-swap, reverts on reboot) or
  persistently via `rootfs_acmadb.squashfs`.
- **ACM (USB serial): supported and PROVEN** — the `rootfs_acmdebug` image brings up a CDC-ACM
  `ttyGS0` root console (`/dev/cu.usbmodem*` on the host); see Root access below.

See [`../documentation/01_Firmware_Architecture/c2air_v821_runtime_and_access.md`](../documentation/01_Firmware_Architecture/c2air_v821_runtime_and_access.md)
§5 for the full live gadget analysis.

## Root access / on-device security

```yaml
root_password: tina                  # /etc/shadow DES hash; stock Tina default (musl crypt validates)
selinux: 0
login_shells: root only (root:/bin/ash)
# stock has NO network shell (no dropbear/sshd/telnetd). Two custom root consoles were built+proven:
console_A_ssh_wifi: rootfs_ssh.squashfs  -> ssh root@192.168.50.100 (pw tina); CarPlay/WiFi/BT stay ON
console_B_acm_usb:  rootfs_acmdebug.squashfs -> screen /dev/cu.usbmodem* (root shell); app OFF (no WiFi)
stock_restore:      restore_rootfs_slot.bin  -> bone-stock
switch_method: FEL (xfel spinor write 0x680000 <image>); brief-button+power to enter FEL
hardware_uart: UNUSABLE  # kernel UART-clock bug, see Debug UART; the ACM console replaces it
```

Stock ships no network shell. Two working root consoles were built (faithful VM repack + FEL flash)
and confirmed live: **SSH over WiFi** (keeps CarPlay running) and **CDC-ACM serial over USB** (a
dedicated debug mode that disables the app). Full recipes + workflow:
[`../documentation/01_Firmware_Architecture/c2air_v821_runtime_and_access.md`](../documentation/01_Firmware_Architecture/c2air_v821_runtime_and_access.md)
§1 & §6.

## Debug UART (3-pad header)

```yaml
controller: UART0 @ 0x42500000, driver uart-ng (registers /dev/ttyS, major 251)
tty: ttyS0                           # NOT ttyAS0; console=ttyS0 is correct
baud: 115200 8N1 (for U-Boot)        # U-Boot output is clean at 115200
console_status: UNUSABLE past kernel handoff  # RUNTIME-CONFIRMED: kernel UART-clock bug --
                                     # dmesg "uartclk 192000000 beyond rance[24000000,120000000]" ->
                                     # baud divisor mis-computed -> kernel log/shell at WRONG effective
                                     # baud (garbage at 115200). Console IS bound to ttyS0 w/ a root
                                     # shell on it; it's just mis-clocked. Fix needs kernel/DTS (signed
                                     # boot partition) -> not fixable in place. Use the ACM-USB console
                                     # instead. See runtime doc §3.
wires: 2 (TX + RX, no flow control)  # uart0_type=2 -> 3 pads incl. GND
pins: [PL4, PL5]                     # uart0_pins_default (PL4=TX, PL5=RX)
pad_order_edge_to_cpu: [GND, RX, TX] # CONFIRMED on-board; device-side signal names
wiring_to_3v3_adapter:               # crossover
  pad1_edge_GND: adapter GND
  pad2_mid_RX:   adapter TX
  pad3_cpu_TX:   adapter RX          # read-only boot log: pad3 -> adapter RX + GND suffices
io_domain: PL bank / R_PIO (always-on)
idle_voltage: ~2.67 V                # both pads idle HIGH -> ~2.7 V logic UART
adapter: use 3.3 V USB-TTL           # do NOT use 5 V into the ~2.7 V IO
fifo: 64 bytes
not_console:
  uart1: [PD7, PD8, PD9, PD10]       # 4-wire = Bluetooth HCI (hciattach_rtk, ly_bt_bdrate=500000)
  uart2/uart3: disabled
```

Pad order is confirmed on-board (edge→CPU = GND, RX, TX), so no DMM identification needed — wire the
crossover in the YAML above.

## Hidden service button (case-internal, new to this variant)

```yaml
type: momentary push-to-GND, hidden inside case near SPI   # absent on i.MX6UL CCPA variants
likely_pin: PC16 (ly_gpio_input, gpio_in, pull-up, active-low)  # boot-time ADC key may be separate
boot_time:                       # boot0/U-Boot: held at power-on -> download/recovery mode
  mechanism: ADC key (key_min/key_max) + misc-partition BCB; "ir-or-key-recovery"
  fastboot_key_value: 0x02-0x08
  recovery_key_value: 0x10-0x13
  modes: [efex (FEL/USB download), recovery, "factory + wipe data", sysrecovery, fastboot]
  reflash: xfel over USB-C (no desolder needed)
fel_confirmed:                   # brief button press at power-on -> FEL, verified on hardware
  usb_id: 1f3a:efe8              # VID Allwinner / PID FEL; 12 Mb/s full-speed (BootROM stage)
  xfel_probe: AWUSBFEX ID=0x00188200 (V821)
  sid: 12c028000c40490c8411410c208818d5   # eFuse; matches OTP page; per-unit (treat as serial)
  spinor: SFDP 16 MB, ~450 KB/s (~37 s full dump)
  validation: FEL read == T48 dump SHA-256 e9e8424c...e5c34e (byte-identical)
  tool: xfel (github.com/xboot/xfel) built on macOS; native chips/v821.c; sunxi-tools not needed
runtime:                         # Linux: /dev/ly_misc_dev, sysfs /sys/class/misc/ly_misc_dev/ly/
  readers: [CPowerKey (liblyctrl.so), checkKeyThread2/procDKeyThread (raaservice, ly_testcp)]
  short_press: switch phone / P2P re-pair; Bluetooth switch (dual-phone)
  long_press_10s: FACTORY RESET (wipes user data) -> /tmp/lydoreset
  special: test mode; force efex/fastboot (ly/ly_efex, /tmp/ly_fastboot)
```

> ⚠️ The long-press (≥10 s) path is a **data-wiping factory reset**, and boot0 has a
> `factory + wipe data` mode. Capture UART before experimenting. Full treatment in
> [`../documentation/01_Firmware_Architecture/c2air_v821_platform.md`](../documentation/01_Firmware_Architecture/c2air_v821_platform.md)
> §8.

## Firmware stack

```yaml
distro: Tina Linux 5.0
distro_base: OpenWrt 21.02-SNAPSHOT (r0-162b8ff)
distrib_info: tina.tenc.20260509.043018
distrib_taints: [no-all, mklibs, busybox]
kernel_version: 5.4.220
kernel_build: "#2 PREEMPT Sat May 9 12:29:51 CST 2026"
kernel_builder: tenc@ubuntu
kernel_compiler: gcc 10.4.0 (2024-02-02_nds32le-linux-glibc-v5d-bbc31ec98)
libc: musl
dynamic_loader: /lib/ld-musl-riscv32.so.1
init: /init (Tina/OpenWrt preinit, squashfs + jffs2 overlay)
app_version: 26051418.6239.2
project_name: ly6239
brand_string: VehiConn
link_type: cp                        # CarPlay only
odm: Liaoyuan ("ly" prefix; "liaoyuan" in OTP security register)
```

Compare A15W: Linux 3.14.52, glibc, ARMv7, HeWei ODM. **Nothing binary-level is portable between
the two.**

## Boot chain

```yaml
stage0: eGON.BT0 (Allwinner boot0/SPL) at flash offset 0x0
stage1: U-Boot (LZMA-compressed payload support; sunxi-package)
kernel_format: ANDROID! boot image, page_size 2048, gzip kernel, no ramdisk
ab_redundancy: yes                   # boot A @0x60000 and B @0x370000 are bit-identical
bootdelay: 0
bootcmd: "run setargs_nor boot_normal"
boot_normal: "sunxi_flash read 82000000 ${boot_partition};bootm 82000000"
boot_recovery: "sunxi_flash read 82000000 recovery;bootm 82000000"
console: ttyS0,115200
earlyprintk: sunxi-uart,0x42500000
root: /dev/mtdblock3 (rootfstype=squashfs)
recovery_key_value: 0x10..0x13
fastboot_key_value: 0x2..0x8
```

### Secure boot — **RESOLVED: NOT enforced (device unlocked)**

Runtime-confirmed: boot0 magic is plain **`eGON.BT0`** (secure would be `TOC0.GLH`); `boot`/`recovery`
are plain `ANDROID!` images with only a SHA1 integrity hash (no AVB/RSA); U-Boot env has no
secure/keybox flags; `bootcmd` = legacy `bootm` with **no verification**. The RSA/`burn_secure_mode`/
OPTEE machinery in U-Boot is dormant capability, not enforcement. ⇒ **`boot`/`recovery`/`uboot` can
be reflashed with unsigned custom images**; FEL/efex recovers a bad mtd0/mtd1. Update packages are
accepted on **MD5 + magic + `ly6239` project match only — no signature**. No OP-TEE / TEE in use.
Full evidence:
[`../documentation/01_Firmware_Architecture/c2air_v821_runtime_and_access.md`](../documentation/01_Firmware_Architecture/c2air_v821_runtime_and_access.md)
§7–§10.

## Partitions (RUNTIME-CONFIRMED — `/proc/mtd` + kernel cmdline)

10 MTD partitions on the SPI-NOR (`spif`). This supersedes the earlier dump-only guess (no
`app`/`extend`/`sec`/`riscv0` partitions actually exist on this unit):

| mtd | name | size | offset | notes |
|---|---|---|---|---|
| 0 | `uboot` | 0x60000 | 0x000000 | boot0/SPL + U-Boot |
| 1 | `boot` | 0x310000 | 0x060000 | ANDROID! kernel (active) |
| 2 | `recovery` | 0x310000 | 0x370000 | recovery image (NOT "boot B") |
| 3 | `rootfs` | 0x480000 | 0x680000 | SquashFS (mounted `/`, ro) |
| 4 | `customer` | 0x3a0000 | 0xB00000 | SquashFS — the live app (`/mnt/customer`, ro) |
| 5 | `env` | 0x10000 | 0xEA0000 | U-Boot env |
| 6 | `env-redund` | 0x10000 | 0xEB0000 | redundant env |
| 7 | `private` | 0x10000 | 0xEC0000 | small config |
| 8 | `logo` | 0xb0000 | 0xED0000 | jffs2 (`/mnt/logo`) |
| 9 | `UDISK` | 0x80000 | 0xF80000 | jffs2, per-device data (`/mnt/UDISK`) |

`/` = squashfs ro; `/mnt/customer` = squashfs ro; `/mnt/UDISK` + `/mnt/logo` = jffs2 rw. There is
no overlay mount (the `/init` `mount_etc`/`mount_overlay` calls are commented out).

## Confirmed capability deltas vs. CPC200-CCPA (A15W)

| Parameter | A15W (CPC200-CCPA) | C2Air (V821) |
|---|---|---|
| SoC | NXP i.MX6UL | Allwinner V821 |
| CPU ISA | ARMv7 (Cortex-A7, 32-bit) | **RISC-V RV32IMAFDC** |
| RAM | 128 MB | **64 MB** |
| Kernel | 3.14.52 | **5.4.220** |
| libc | glibc | **musl** |
| Distro | HeWei custom | **Tina Linux 5.0 / OpenWrt 21.02** |
| WiFi | WiFi 5 (RTL8822CS / IW416 / BCM4354) | **WiFi 6 (AIC8800, 802.11ax)** |
| Flash | 16 MB MX25L12835F | 16 MB XT25F128F-W |
| Boot layout | single | `boot` + separate `recovery` (not A/B) |
| ODM | DongGuan HeWei | **Liaoyuan** |
| Protocols | CarPlay + Android Auto | **CarPlay only** (`ly_link_type=cp`; HiCar DHCP config present but unused) |

Binary compatibility between the two families is **zero** — different instruction set. Kernel
modules, `.so` files, and executables cannot be moved in either direction.
