# C2Air (VehiConn / `ly6239`) — Allwinner V821 platform spec

**Scope:** hardware and platform reference for the RISC-V C2Air adapter, derived entirely from
the SPI NOR dump at [`../flash_dumps/c2air_v821_2026.05.14/`](../flash_dumps/c2air_v821_2026.05.14/).
This is a **different platform from the CPC200-CCPA (A15W)** documented in
[`cpc200-ccpa_spec.md`](cpc200-ccpa_spec.md) — different SoC, different CPU architecture,
different ODM, different firmware lineage.

> **Provenance note.** Everything below is dump-derived. No boot log, serial console, or live
> device telemetry has been captured for this unit yet, so there are no runtime-confirmed values
> (contrast `cpc200-ccpa_spec.md`, which is largely boot-log confirmed). Items that would
> normally come from a boot log are marked **(dump-derived, not runtime-confirmed)**.

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
usb_controller: allwinner,sunxi-otg-manager (usbc0)
usb_port_type: 0                     # DEVICE-only (0=device, 1=host, 2=OTG); UDC @0x44100000 active
usb_role_when_connected: device/gadget   # computer/head-unit = host; dongle = USB device
cdc_ncm: host-side only              # cdc_ncm (usbnet host driver) present but dormant given device-only port
cdc_ncm_note: ODM wrapper ly_cdc_ncm / ly_cdc_ncm_enable; runtime "gooo usb ncm probe ok!"
gadget_configfs: present
gadget_functions: [functionfs, usb_f_accessory, mtp, mass_storage]
gadget_net_functions: none           # no f_ncm / u_ether / f_ecm / f_rndis / f_eem in kernel
setusbconfig_modes: [none, adb, mtp, mass_storage]
gadget_ident: {manufacturer: Allwinner, product: Tina}
adbd: present (/bin/adbd over FunctionFS); NOT autostarted
```

The single USB-C port is **device-only** (`usb_port_type=0`): when plugged into a computer the
**computer is the USB host and the dongle is the USB device (gadget)**. What it presents is set by
`setusbconfig` (adb/mtp/mass_storage). The `cdc_ncm` in the kernel is the USB **host** driver and
is dormant on a device-only port — it is *not* how the dongle appears to a computer.

**The A15W SSH-over-USB-NCM trick does not port as-is:** exposing the adapter as a USB network
device would need a kernel rebuild (`f_ncm` + `u_ether`) plus a musl/RISC-V userland. Over USB, the
usable shell path is **ADB** (adbd is present); see the root-access section. See also
[`../documentation/CPC200-CCPA_SSH_over_USB_NCM.md`](../documentation/CPC200-CCPA_SSH_over_USB_NCM.md)
for the A15W approach and
[`../documentation/01_Firmware_Architecture/c2air_v821_platform.md`](../documentation/01_Firmware_Architecture/c2air_v821_platform.md)
§7 for the full gadget analysis.

## Root access / on-device security

```yaml
uart_console: /dev/console respawn -/bin/sh   # inittab: unauthenticated ROOT shell, no getty
uart_port: ttyS0 @ 115200 (earlyprintk sunxi-uart 0x42500000)
root_password: tina                            # /etc/shadow DES hash 91rMiZzGliXHM; stock Tina default
ssh: none                                      # no dropbear/sshd/telnetd in either partition
adb: /bin/adbd present, manual enable via /sbin/adb.sh (setusbconfig adb)
selinux: 0
login_shells: root only (root:/bin/ash); daemon/ftp/network/nobody locked
```

Primary access vector is the **UART** — the serial console spawns a root `/bin/sh` with no login
at all. Full treatment in
[`../documentation/01_Firmware_Architecture/c2air_v821_platform.md`](../documentation/01_Firmware_Architecture/c2air_v821_platform.md)
§8.

## Debug UART (3-pad header)

```yaml
controller: UART0 @ 0x42500000 (allwinner,uart-v100), status okay
tty: ttyS0 / ttyAS0
baud: 115200 8N1                     # U-Boot baudrate=115200 AND kernel console=ttyS0,115200
wires: 2 (TX + RX, no flow control)  # uart0_type=2 -> 3 pads incl. GND
pins: [PL4, PL5]                     # uart0_pins_default; convention PL4=TX, PL5=RX (confirm empirically)
io_domain: PL bank / R_PIO (always-on)
idle_voltage: ~2.67 V                # both pads idle HIGH -> ~2.7 V logic UART
adapter: use 3.3 V USB-TTL           # do NOT use 5 V into the ~2.7 V IO
fifo: 64 bytes
not_console:
  uart1: [PD7, PD8, PD9, PD10]       # 4-wire = Bluetooth HCI (hciattach_rtk, ly_bt_bdrate=500000)
  uart2/uart3: disabled
```

Identify TX vs RX with a DMM: power-cycle and watch which pad momentarily dips below 2.67 V — that
one is TX (transmitting the boot log); RX stays steady. Wiring: GND↔GND, adapter-RX↔device-TX,
adapter-TX↔device-RX.

## Hidden service button (case-internal, new to this variant)

```yaml
type: momentary push-to-GND, hidden inside case near SPI   # absent on i.MX6UL CCPA variants
likely_pin: PC16 (ly_gpio_input, gpio_in, pull-up, active-low)  # boot-time ADC key may be separate
boot_time:                       # boot0/U-Boot: held at power-on -> download/recovery mode
  mechanism: ADC key (key_min/key_max) + misc-partition BCB; "ir-or-key-recovery"
  fastboot_key_value: 0x02-0x08
  recovery_key_value: 0x10-0x13
  modes: [efex (FEL/USB download), recovery, "factory + wipe data", sysrecovery, fastboot]
  reflash: xfel / sunxi-fel over USB-C (no desolder needed)
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

### Secure boot — UNRESOLVED

boot0 contains `sunxi_rsa_sign_check`, `sunxi-secure`, `sunxi_sha_calc_with_software`, a TRNG
error path, and the kernel DTB has a `secure_status` node. **Whether signature enforcement is
actually fused on is not established.** The i.MX6UL HAB findings in
[`../documentation/01_Firmware_Architecture/secure_boot_hab.md`](../documentation/01_Firmware_Architecture/secure_boot_hab.md)
describe a different silicon vendor's mechanism entirely and **do not transfer**. Treat this as
open until a fuse read or a modified-image boot test says otherwise.

## Partitions

Names resolved by `/init` through `/dev/mtdblock/by-name/`:

`rootfs` · `rootfs_data` · `app` · `customer` · `extend` · `sec` / `sec_storage` · `boot` ·
`recovery` · `riscv0` / `riscv0-r` · `sys`

`/init` mounts `rootfs_data` as the writable overlay and will `mkfs` it (jffs2, ubifs, or ext4
depending on the backing device class) if the mount fails. `extend` is mounted at `/tmp/usr`.
`sec_storage` is mounted at `/data/tee` when present. Measured offsets are in the dump README.

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
| Boot A/B | no | **yes (bit-identical slots)** |
| ODM | DongGuan HeWei | **Liaoyuan** |
| Protocols | CarPlay + Android Auto | **CarPlay only** (`ly_link_type=cp`; HiCar DHCP config present but unused) |

Binary compatibility between the two families is **zero** — different instruction set. Kernel
modules, `.so` files, and executables cannot be moved in either direction.
