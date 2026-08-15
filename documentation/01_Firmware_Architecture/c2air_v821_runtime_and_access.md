# C2Air (Allwinner V821 / RISC-V) — Runtime Analysis, Root Access & FEL Trials

**Status:** live-device confirmed. A root shell was obtained over WiFi (dropbear) and the running
system probed directly. Everything below is from the live unit unless noted, and corrects earlier
dump-only speculation (notably the UART section).

**Companion docs:** [`c2air_v821_platform.md`](c2air_v821_platform.md) (dump-derived platform),
[`../../hardware/c2air_v821_spec.md`](../../hardware/c2air_v821_spec.md),
[`../../flash_dumps/c2air_v821_2026.05.14/`](../../flash_dumps/c2air_v821_2026.05.14/) (dump + this
session's `runtime_evidence/`: `dmesg_2026-08-01.txt`, `proc_system.txt`,
`uart_console_diagnosis.txt`, `processes_network.txt`).

> **Device is fully restorable.** The only flash regions ever modified in this work were the rootfs
> slot (0x680000) and the U-Boot env (0xEA0000/0xEB0000). Stock bytes for both come straight from
> the triple-verified dump (`e9e8424c…`); FEL rewrites them in seconds.

---

## 1. Root access — TWO working consoles

The mis-clocked hardware UART (§3) is unusable, but two independent root consoles were built and
**both confirmed working on the live unit**. Each is a rootfs image FEL-flashed to `0x680000`; you
switch between them (and stock) with one verified write. See §7 for the image workflow.

### A. SSH over WiFi — `rootfs_ssh.squashfs` (CarPlay stays working)
**Result:** `ssh root@192.168.50.100` (password `tina`) — full root shell **with WiFi/BT/CarPlay all
still running**. Recipe:
1. Extract the **stock** rootfs squashfs (dump offset 0x680000) **as root in a real Linux env**
   (Alpine Lima VM) so all owners/perms/device nodes survive.
2. Add exactly: `dropbearmulti` (static riscv32-musl, built with `zig cc` + `llvm-strip`), the
   `dropbear`/`dropbearkey` symlinks, and one boot hook `/etc/init.d/S99sshd` that starts **only
   dropbear** (`dropbear -r <hostkey> -p 22`). **No `setusbconfig`, no adbd** — see the failure in §2.
3. `mksquashfs` as root (xz, 256K) → faithful image; FEL-flash to 0x680000, readback-verified.

dropbear listens on `0.0.0.0:22`; root login works because musl `crypt()` validates the stock DES
hash (`tina`). Because the hook touches nothing else, the CarPlay app stack comes up normally.

### B. Serial console over USB (CDC-ACM) — `rootfs_acmdebug.squashfs` (a dedicated debug mode)
**Result:** the Mac enumerates `/dev/cu.usbmodem*`; opening it gives a `/ #` root shell
(`uid=0(root)`, `Linux (lybox) 5.4.220 riscv32`) — **the working serial console the hardware UART
never provided.** This bypasses the UART-clock bug entirely by using a USB serial gadget. Recipe
(same faithful-repack base) — one boot hook `/etc/init.d/S30acmdebug` that:
1. `touch /tmp/ly_boot` — pre-sets the flag `/etc/profile` checks, so **`ly_boot.sh` (the CarPlay
   app launcher) never runs**, freeing the single USB gadget.
2. Builds a CDC-ACM gadget in configfs (`idVendor 0x1f3a`, `idProduct 0xace1`, IAD device class
   `0xEF/02/01`, one `acm.0` function bound to UDC `44100000.udc-controller`) → `/dev/ttyGS0`.
3. Respawns `/bin/sh -i` on `/dev/ttyGS0` (root, no login prompt).
4. Feeds `/dev/watchdog` every 20 s as a safety (the app normally does; in practice the kernel
   `[watchdogd]` thread auto-feeds, so no reset either way). Keeps dropbear too, but it is
   unreachable here because WiFi is off.

**Trade-off (by design):** disabling the app means **no WiFi/BT/CarPlay** in this mode — it is a
pure serial-debug environment. Connect with `screen /dev/cu.usbmodem101` (baud irrelevant on ACM).

---

## 2. FEL trials — what worked and what didn't

FEL (Allwinner USB recovery) via **`xfel`** (built from source; native V821 support) was the
backbone. Entry: **brief press of the hidden button + power-on** (physical; cannot be triggered in
software). ID reads `AWUSBFEX ID=0x00188200(V821)`.

### Worked
- **Full 16 MB read** over FEL — byte-identical to the T48 clip dump (SHA `e9e8424c…`). Triple-verified image.
- **SID / SPI-NOR detect**: `xfel sid` = `<REDACTED-SID>` (also the OTP `chipid`); `xfel spinor` detects the 16 MB SFDP part.
- **DRAM init + RAM R/W**: `xfel ddr` brings up the 64 MB DDR; `write32/read32` verified.
- **Targeted flash writes**: rootfs slot (0x680000) and env (0xEA0000/0xEB0000) written and
  readback-verified many times.
- **Both root consoles delivered** (§1): the dropbear-over-WiFi rootfs and the ACM-over-USB
  debug rootfs were each flashed, booted, and confirmed giving `uid=0(root)`.
- **Recovery**: every failed experiment was undone by FEL-writing stock bytes back. Nothing was ever bricked.

### Didn't work / gotchas
- **`bootdelay=2` env change → device wouldn't boot.** With a UART adapter attached, U-Boot saw
  the idle/noisy RX line as a keypress and **halted at its prompt** (no kernel, no LEDs). `bootdelay=0`
  is correct here. Fix was reverting the env. (To use a U-Boot prompt safely, disconnect adapter-TX
  from device-RX first.)
- **`console=ttyS0`→`ttyAS0` env change → no effect.** The kernel console was silent for a
  *different* reason (see §3); `ttyS0` was correct all along.
- **Editing the rootfs with macOS `mksquashfs` → broke WiFi/BT.** A non-root extract on macOS drops
  empty dirs, the `/dev/console` node, and owner/perm fidelity; the repacked rootfs booted but the
  app stack (WiFi/BT/CarPlay) failed. **Lesson: repack squashfs as root in Linux** (the Lima VM),
  never from a lossy macOS extract.
- **`S99` hook calling `setusbconfig adb; adbd` → killed WiFi/BT/CarPlay.** It tears down the USB
  gadget the CarPlay app owns (see §5), which knocks the app over — no SSID. Removing that line
  (dropbear-only) fixed it. This was the single biggest red herring.
- **adbd at boot never served** even when the gadget enumerated (`0x18d1:0xd002`): the rootfs has no
  `shell` user (uid 2000) and adbd refuses to run as root in a "production" build. See §5.
- **FEL USB stability**: large writes occasionally abort with `usb bulk send error` and drop FEL,
  leaving a partial write. Always **readback-verify** and **retry the whole write**; re-enter FEL if
  it dropped. A short retry+verify loop made writes reliable.
- **WiFi link is a bit flaky** for the management channel (occasional SSH drops); `ServerAliveInterval`
  and retries help. Not a repack artifact — seen on the healthy device too.

---

## 3. Why the UART was dead after "Starting kernel …" (root cause, confirmed)

Not a config problem and not disabled — a **UART clock bug in the vendor kernel**. From the live
kernel:

- `/proc/consoles` → `ttyS0 -W- (EC p) 251:0` — console **is** enabled and bound.
- `/proc/tty/drivers` → the Allwinner driver `uart-ng` registers as **`ttyS`** (major **251**, not the
  8250 major 4). So `console=ttyS0` was always correct (earlier "should be ttyAS0" guess was wrong —
  there is no `ttyAS` on this kernel).
- The inittab root shell (`-/bin/sh`) **is** running on `/dev/console`, and writing to `/dev/console`
  succeeds.
- **The bug**, verbatim from dmesg:
  ```
  uart-ng0: ttyS0 at MMIO 0x42500000 ... is a SUNXI
  sunxi ...: console setup baud 115200 parity n bits 8 flow n
  sunxi ...: uart0 ... baud 115200, uartclk 192000000 beyond rance[24000000, 120000000]
  printk: console [ttyS0] enabled
  ```
  The driver initializes UART0 with **`uartclk = 192 MHz`, which is outside its supported range
  [24–120 MHz]**, so the baud-rate divisor is mis-computed. The kernel then drives the line at the
  **wrong effective baud**, so at a 115200 terminal the kernel log + shell come out as garbage /
  nothing — even though U-Boot (which clocks the UART correctly) was clean at 115200. `loglevel=3`
  additionally suppresses most messages.

**Implication:** the 3-pad UART (GND/RX/TX on PL4/PL5) is a *working* root console at the driver
level; it's just mis-clocked. A proper fix needs a corrected **DTB/kernel** UART parent-clock config.
**Because secure boot is OFF (§7), the boot partition is unsigned and CAN be reflashed** — so this
fix is *possible in principle* (patch the DTB's UART clock, repack the `ANDROID!` boot image, FEL-flash
it), not blocked by signing as earlier believed. It's just non-trivial (needs the clock config
identified + boot-image repack) and unnecessary now that both SSH-over-WiFi and the USB-serial console
work. The zero-effort alternative is matching the terminal to the wrong effective baud (≈184320/
187500 or 921600 — untested).

---

## 4. Runtime system facts (live)

| | |
|---|---|
| Kernel | `Linux 5.4.220 #2 PREEMPT Sat May 9 2026`, `riscv32`, gcc `nds32le` (Andes) |
| CPU | 1× hart, `isa: rv32imafdc` |
| RAM | MemTotal **58 MB** (of 64 MB; `androidboot.dramsize=64`, `dramfreq=520`) |
| Root | `/dev/root` squashfs **ro** (mtd3); `/tmp` tmpfs; `/mnt/customer` squashfs ro; `/mnt/UDISK` + `/mnt/logo` jffs2 rw |
| Modules | only `awbase` — AIC8800 WiFi/BT is **in-kernel**, not modular |
| Watchdog | `sunxi-wdt`, 300 s — **enabled from boot and effectively un-stoppable** (see below) |
| Distro | Tina Linux 5.0 / OpenWrt 21.02, target `v821-lybox_aic8800`, `tina.tenc.20260509.043018` |
| Hostname | `(lybox)`; `custom_name=VehiConn`; `func_mode=cp` (CarPlay); `product_number=4890` |

### The 300 s watchdog — un-stoppable, must be fed (important for custom firmware)

dmesg:
```
sunxi-wdt 4a001000.watchdog: Watchdog enabled (timeout=300 sec, nowayout=0)
watchdog: watchdog0: watchdog did not stop!      <- repeats every ~20 s
```
- The **SoC hardware watchdog** (a V821 silicon peripheral, `4a001000.watchdog`) is **enabled from
  boot with a 300 s timeout**. Despite `nowayout=0`, the driver **cannot actually disable it** — every
  stop attempt logs *"watchdog did not stop!"*. So once running it **must be pinged or the SoC resets
  every 5 minutes**.
- Is it hardware-*required*? No — the watchdog *timer* is silicon, but **enabling it this
  aggressively (auto-on, un-stoppable, 300 s) is a vendor/BSP design choice** (Allwinner Tina default
  + the ODM config), a deliberate reliability measure so an unattended in-car appliance auto-recovers
  from a hang. The hardware merely *provides* the watchdog; the firmware *chooses* to arm it.
- **Who feeds it:** normally the CarPlay app; the kernel `[watchdogd]` thread also pings a
  running-but-closed watchdog. Our debug hooks (`S30acmdebug`/`S30acmadb`) include an explicit
  `echo 1 > /dev/watchdog` every 20 s (those are the repeating "did not stop" lines).
- **Consequence for any custom firmware / OS:** a rootfs that disables the vendor app **must feed
  `/dev/watchdog`** (or the box resets every 300 s). A naive "disable the app" image without a feeder
  reset-loops. Because boot0/U-Boot arm it before Linux and Linux can't stop it, even a custom kernel
  inherits a running watchdog it must service (short of changing boot0/U-Boot, which are unsigned and
  reflashable — §7 — but still non-trivial). This is likely why a mid-session live gadget hot-swap,
  which briefly stalled the system, tripped a reset.

### Definitive partition map (`/proc/mtd` + kernel cmdline)
Cmdline `partitions=…@mtdblockN` gives names; sizes from `/proc/mtd`; offsets are cumulative:

| mtd | name | size | flash offset |
|---|---|---|---|
| 0 | uboot | 0x60000 | 0x000000 |
| 1 | boot | 0x310000 | 0x060000 |
| 2 | recovery | 0x310000 | 0x370000 |
| 3 | **rootfs** | 0x480000 | 0x680000 |
| 4 | **customer** (app) | 0x3a0000 | 0xB00000 |
| 5 | env | 0x10000 | 0xEA0000 |
| 6 | env-redund | 0x10000 | 0xEB0000 |
| 7 | private | 0x10000 | 0xEC0000 |
| 8 | logo | 0xb0000 | 0xED0000 |
| 9 | UDISK | 0x80000 | 0xF80000 |

Note this **corrects** the earlier dump-only guess: the squashfs at 0xB00000 is the **customer**
partition (the live app at `/mnt/customer`), not a separate "app" partition. `boot` is at 0x060000
and `recovery` at 0x370000 (the two 0x310000 images the earlier map called "boot A/B" are actually
**boot** and **recovery**, not an A/B pair).

### The app stack (live `ps` + listening ports)
Runs from **`/mnt/customer/app`** (the customer squashfs), launched by `ly_boot.sh` → `lyLink.sh`:
- `lylinkapp -w` (main link daemon, listens **:8299**)
- `rcpservice` (`{iAP2Client}` — the CarPlay/AirPlay receiver; listens **:38185–38302, :50721**)
- `btapp -NVehiConn-4890 -T/dev/ttyS1 -B -M` (Bluetooth over UART1 @ 500000)
- `ly_testcp`, `mdnsd`, `hostapd -B`, `wpa_supplicant … -c /tmp/p2p.conf`, two `udhcpd`, `httpd :80`
- our `dropbear :22`

### Wireless (WiFi 6, live)
- Chip **AIC8800D80** (`aicbsp: matched chip: aic8800d80`, fw `aic8800d80/fw_patch_table_8800d80_u02.bin`).
- `wlan0` = **AP** `192.168.50.100`, SSID **`VehiConn-4890`**, WPA2 `88888888`, **ch36 / 5 GHz**,
  `ieee80211ax=1` → **802.11ax (WiFi 6)**, `interworking=1`.
- `p2p-wlan0-0` = Wi-Fi Direct GO `192.168.43.1` (`device_name=VehiConn-4890`).
- BT: `aicbt` over `ttyS1` @ 500000 baud (`ly_bt_bdrate=500000`); Realtek-H5 driver strings are
  vestigial dual-support — the fitted chip is AIC.

### Vendor control sysfs — `/sys/class/misc/ly_misc_dev/ly/`
A full hardware-control surface: `key_status` (**the hidden button**, read `0` idle), `red/green/blue_gpio`,
`led_mode`, `wifi_en`, `wifi_pwr`, `bt_rst`, `bt_bdrate`, `chipid`, `ly_efex` (trigger FEL/efex),
`ly_boot`, `ly_boot_partition`, `func_mode`, `update`, `product_number`, `project`, `phy_range`.
Also `/sys/ly_private/wifi_ch`.

---

## 5. USB access: ADB and NCM — feasibility (live-tested)

The single external USB-C is a **device-only** gadget port (`usb_port_type=0`). At runtime the
CarPlay app configures it as an **iAP/CarPlay accessory** gadget:

- Active gadget `g1` bound to UDC `44100000.udc-controller`, state `configured`, functions:
  `ffs.adb`, `iphone_audio.gs0`, `iphone_hid.gs0`, `iphone_ptp.gs0`, `iphone_vendor1.gs0`,
  `iphone_vendor2.gs0`. (This is wired-CarPlay's iAP accessory surface.)

**Gadget function support** (tested by creating/removing each function in configfs, non-disruptively):

| Function | Result |
|---|---|
| `ncm` / `ecm` / `rndis` / `eem` (USB-net) | **NOT supported** — kernel lacks these gadget functions |
| `acm` (USB serial) | **supported** |
| `ffs` (adb transport) | **supported** |

### NCM over USB — **NO** (without a kernel rebuild)
There is no `f_ncm`/`u_ether`/`f_ecm`/`f_rndis` in the kernel, so the dongle cannot present a USB
network interface. The `cdc_ncm` + `ly_cdc_ncm` modules that exist are the **host-side** driver
(dongle-as-USB-host to an NCM peripheral), not a gadget. A USB-network path (and thus SSH-over-USB
via NCM) is impossible on the stock kernel; it would require compiling `CONFIG_USB_CONFIGFS_NCM` /
`f_ncm` into the (signed) kernel.

### ADB over USB — **PROVEN in debug mode, coexists with the ACM serial** (composite gadget)
`adbd` (`/bin/adbd`) + `ffs.adb` + `functionfs` are present. ADB was **confirmed live**: `adb devices`
showed `c2air-debug-0001  device` (authorized, no key) and `adb shell` gave `uid=0(root)`.

Findings that overturned the earlier "conflicts with CarPlay" caveat:
- **adbd runs fine as root** here — tested live, it survives with `init adb main` even with **no
  `shell:2000` user** and no property service. The "cannot run as root in production" gate does not
  block it in practice (no property service ⇒ permissive defaults).
- The only real blocker was **gadget ownership**: the CarPlay app configures the iAP accessory gadget,
  so ADB can't coexist with wired-CarPlay. **In debug mode the app is disabled**, freeing the gadget.
- ADB was added by **hot-swapping the live gadget** (configfs) to a **composite `acm.0` + `ffs.adb`**
  config — so the **serial console and adb work simultaneously** over the one USB. Because the gadget
  lives in configfs (runtime, never flashed), a **reboot reverts to ACM-only** — no FEL needed to undo.
- Persistent version: **`rootfs_acmadb.squashfs`** (hook `S30acmadb`) brings up the composite
  serial+adb gadget on every boot.

### USB serial console (`f_acm`) — **BUILT AND CONFIRMED WORKING** (the `rootfs_acmdebug` debug mode)
`f_acm` + `g_serial` (`ttyGS`, major 252) are present. The **debug-mode rootfs** (§1B) sets up a
CDC-ACM gadget and a root shell on `/dev/ttyGS0`, and it was verified live: the Mac enumerated
`/dev/cu.usbmodem101` and opening it gave a `uid=0(root)` shell. It sidesteps the ADB pitfalls
(no shell-user / production-adbd issues) and the gadget contention (it **disables the CarPlay app**
via `touch /tmp/ly_boot`, so it owns the UDC alone). This is the practical answer to both "fix the
UART" (you can't — §3) and "serial over USB" (yes — this).

Gadget config used (configfs `usb_gadget/g1`): `idVendor 0x1f3a`, `idProduct 0xace1`, device class
IAD `0xEF/0x02/0x01`, one `acm.0` function → UDC `44100000.udc-controller`. Connect:
`screen /dev/cu.usbmodem101` (baud irrelevant on ACM).

---

## 6. Access-mode workflow — three FEL-flashable images

All three are faithful rootfs images (built in the Lima VM) written to `0x680000`; switching is one
`xfel spinor write` + readback-verify. Nothing else on the flash is touched, so switching is safe
and reversible.

| Image | Access it gives | CarPlay / WiFi / BT | Notes |
|---|---|---|---|
| `rootfs_ssh.squashfs` | **root SSH over WiFi** — `ssh root@192.168.50.100`, pw `tina` | **on** | normal operation + a shell; hook = `S99sshd` (dropbear only) |
| `rootfs_acmdebug.squashfs` | **root serial over USB** — `screen /dev/cu.usbmodem*` | **off** (app disabled) | pure serial-debug mode; hook = `S30acmdebug` (ACM `ttyGS0` + app-disable + watchdog feed) |
| `rootfs_acmadb.squashfs` | **root serial + `adb shell`** over USB (composite) | **off** (app disabled) | serial *and* adb together; hook = `S30acmadb`. The same composite was also proven by live configfs hot-swap (no flash) |
| `restore_rootfs_slot.bin` | bone-stock (no added console) | on | stock bytes from the `e9e8424c…` dump |

The gadget config is pure configfs (runtime), so the ACM/ADB composite can also be enabled **live
without flashing** (hot-swap) and reverted with a power-cycle — handy for testing before committing an image.

Recovery is always FEL: brief-button + power → `xfel spinor write 0x680000 <image>`. FEL is the
BootROM, so a bad rootfs never bricks the unit.

---

## 7. Secure boot & lockout — **the unit is effectively UNLOCKED** (runtime-confirmed)

This **corrects** earlier speculation (and an earlier statement that the boot/kernel is "signed and
can't be modified"). Multiple independent signals show **secure boot is not enforced** on this unit:

- **boot0 magic is plain `eGON.BT0`** (`6f 00 80 3c 65 47 4f 4e 2e 42 54 30` at mtd0), not the secure
  `TOC0.GLH`. This is the strongest single tell — a secure-boot unit ships a TOC0 boot0.
- **`boot`/`recovery` are plain `ANDROID!` v2 images** (`sun300i_riscv32`, page 2048). The `id[]`
  field is only a mkbootimg **SHA1 integrity hash** — **no AVB/vbmeta footer, no appended RSA cert**.
- **U-Boot env has no secure flags** (`keybox_list=` empty; no `secure`/`verify`/`rotpk`), and
  `bootcmd` is a legacy `sunxi_flash read … boot; bootm` with **no verification step**. dmesg shows
  no secure/RSA/efuse activity; `secure_os_exist` absent ⇒ OP-TEE not loaded.
- U-Boot *contains* the sunxi secure machinery (`TOC0.GLH`, `burn_secure_mode`, "puk burned…", RSA,
  OPTEE/monitor) but it is **dormant capability, not enforcement**.

**Consequences:**
- **rootfs** is modifiable (already proven — this is how both consoles were added).
- **boot / recovery / uboot are NOT signature-checked**, so they can be reflashed with custom images
  (kernel, DTB) via FEL. Bricking mtd0/mtd1 with a bad image is recoverable through **FEL/efex** (no
  signed payload required here; `ly_efex_mode`, "jump to efex", `boot_fastboot=fastboot`, recovery
  key `0x10–0x13` / fastboot `0x2–0x8`).
- **This reopens the UART-clock fix (§3):** since the boot partition is unsigned, a corrected DTB (or
  kernel) *could* be repacked into the `ANDROID!` image and flashed — the blocker is no longer
  signing, only obtaining/patching the right UART parent-clock config (and repacking the boot image).
  Not yet attempted; the ACM-USB console remains the pragmatic path.

## 8. Update mechanism — **MD5 + magic + project-name, NO signature**

- Autorun `S99swupdate_autorun` → `/sbin/ly_swupdate` → `swupdate_cmd.sh`. Mainline **SWUpdate**
  (`/sbin/swupdate`) is present but its NOR path is commented out.
- The vendor **`/sbin/update`** consumes `/tmp/update.img|.swu`, `/mnt/UDISK/update.*`,
  `/mnt/SDCARD/update.img` → `swupdate_cmd.sh -i <img> -e stable,upgrade_recovery`. Its **only checks
  are a fixed magic header, an `ly_project_name` match (`ly6239`), and `md5sum -c md5.txt`. There is
  NO RSA / public-key verification.** A crafted package with the right magic + `ly6239` + valid
  `md5.txt` is accepted — a clean **custom-firmware install path** that doesn't even need FEL.
- In-kernel: `[ly_update_scan]` kthread + sysfs `ly_misc_dev/ly/update`; `lyUpdate.sh` also serves a
  local OTA web UI from `/usr/ota/www` (`index.cgi`). `lydopack` (the repack tool) is a **0-byte stub**
  on this unit. Recovery is entered via `boot_recovery` (key combo or `swu_mode …upgrade_recovery`).

## 9. MFi / Apple auth — **physical coprocessor on i2c-1 @ 0x10** (runtime-confirmed)

- One i2c bus: **`/dev/i2c-1`** (SUNXI TWI @ `0x42502400`). `i2cdetect -y 1` shows devices **ACKing
  at 0x10 and 0x11** — the Apple MFi auth-coprocessor addresses (CP2.0C/CP3.0). So this unit has a
  **hardware MFi chip**, not software auth.
- The kernel has an in-kernel **`iap`** (iAP-over-USB) driver; `/dev/iap` (char 180:192) is created by
  the app at runtime (absent here only because the app is disabled).
- `libiap_new.so` carries both hardware (`AuthDevice…_hard`, register r/w over `/dev/i2c-1` via ioctl,
  "Using MFi Auth v.%d chip") and software-fallback (`_soft`) paths, selected by `g_authMode`. Because
  real silicon ACKs, the hardware path is used.
- **Implication for cloning/porting:** MFi auth is bound to this unit's hardware chip **and** its
  per-device secrets (`carplay.key`, `raa.crt`) — editing the rootfs alone does not clone auth.

## 10. TEE / secure storage / keys

- **No hardware TEE in use**: no `/dev/tee*`, no `tee-supplicant`, no `/data/tee`, no `sec_storage`;
  OP-TEE not loaded; `keybox_list` empty.
- **`raaservice` (347 KB) is the key/cert manager**: OpenSSL client-cert/private-key/root-cert
  handling + "Verify returned", and raw `mtd_read`/`mtd_write` + `/proc/mtd` parsing — i.e. it keeps a
  per-device cert+key **directly in a flash MTD partition** (secure-storage-in-flash, **no TEE
  backing**). The `private` partition (mtd7) on this unit is just `display=1`, so the cert store is
  elsewhere (customer/UDISK).

## 11. RAM state & dumpability

64 MB DRAM (freq 520), **~58 MB usable, ~43 MB free with the app off** (only ~12 MB used). CMA pool
**4 MiB @ 0x83c00000** (DT reserved-mem overrides the `cma=1M` cmdline). **Live RAM cannot be dumped
from userspace**: `/dev/mem`, `/dev/kmem`, and `/proc/kcore` are all absent (`CONFIG_DEVMEM`/`DEVKMEM`
/`PROC_KCORE` off), no swap. Only per-process RSS and aggregate counters are visible. (RAM *can* be
read externally via FEL `xfel ddr` + `xfel read`, but that is a cold/scratch DRAM, not a live snapshot.)

## Firmware-modification summary (what helps / what blocks)

- **Helps:** secure boot off (plain eGON boot0, unsigned Android images); rootfs **and** boot/recovery/
  uboot reflashable; update accepts **unsigned** MD5+magic+`ly6239` packages; FEL/efex USB recovery;
  root shell in hand; `carplay.key`/`raa.crt` readable on-device.
- **Blocks / risks:** no `/dev/mem`/`kcore` → no live RAM dump; **MFi auth is a hardware coprocessor**
  tied to this unit's per-device secrets (not clonable by editing rootfs alone); a bad `mtd0`/`mtd1`
  needs FEL to un-brick; the ACM debug console rides on the USB gadget, so any gadget/reboot action
  severs it.

_Evidence: `runtime_evidence/` + `scratchpad/probe2/` (runtime, ram, storage, secureboot, update, mfi, tee_keys)._

---

## 12. Custom firmware & SDK — can you build a custom kernel / OS?

**Short answer: the *device* is wide open, but a fully-open build is gated on *sources/drivers*.**

### The SoC
The **V821** (`sun300iw1p1`) is an Allwinner **RISC-V** SoC: an **Andes A27L2** RV32 application core
(the Linux core — matches the `rv32imafdc` + Andes `xv5` we observed) plus a **T-Head XuanTie E907**
RV32 **MCU** core (almost certainly the `riscv0` / `boot_riscv` second core referenced in the U-Boot
env). 22 nm.

### Official SDK — Allwinner **Tina Linux** (OpenWrt-based BSP)
Ships the **kernel source, U-Boot, DTS, drivers (incl. AIC8800 WiFi/BT, display), and the RISC-V
toolchain**. Obtained by **registering on Allwinner's open-source developer portal**
(`open.allwinnertech.com` / the `aw-ol` / `rvboards` docs sites) — semi-gated (account/request), not
an anonymous download, but it exists; and the **GPL kernel source is legally obtainable** on request
from the vendor (Carlinkit/Liaoyuan). Community mirrors of Tina for various chips exist on GitHub.

### Open-source community route — **AvaotaSBC on GitHub (recommended, no portal needed)**
The Allwinner portal is account-gated (and was unreachable during this work), but there is an **active
open-source community, [AvaotaSBC](https://github.com/AvaotaSBC)**, that ships the **AvaotaF1** — a
RISC-V SBC **based on the same V821 SoC** — with a full open stack on GitHub:

| Repo | Provides |
|---|---|
| [`AvaotaSBC/linux`](https://github.com/AvaotaSBC/linux) | **V821 kernel source tree** (build base for a custom kernel/DTB) |
| [`AvaotaSBC/u-boot`](https://github.com/AvaotaSBC/u-boot) | **U-Boot** source for AvaotaSBC bootloader builds |
| [`AvaotaSBC/toolchains`](https://github.com/AvaotaSBC/toolchains) | RISC-V cross-toolchains |
| [`AvaotaSBC/buildroot-external-avaota`](https://github.com/AvaotaSBC/buildroot-external-avaota) | Buildroot external tree |
| [`AvaotaSBC/openwrt`](https://github.com/AvaotaSBC/openwrt) / [`AvaotaOS`](https://github.com/AvaotaSBC/AvaotaOS) / [`openeuler`](https://github.com/AvaotaSBC/openeuler) | full OS builds (OpenWrt / their OS / openEuler) |
| [`AvaotaSBC/AvaotaF1`](https://github.com/AvaotaSBC/AvaotaF1) | the V821 **hardware** reference (schematics, pinout) |

This is enough to **build custom kernels + U-Boot + a full OS for the V821** without the Allwinner
portal. **Caveat:** the AvaotaF1 is a *different board* than this CarPlay dongle — different DTS
(pinmux, the AIC8800 WiFi, the MFi i2c coprocessor, LEDs, the ODM's partitions). Use Avaota's kernel/
U-Boot as the SoC base and **port the device tree to the dongle**, cross-referencing the dongle's own
DTB (already extracted in the dump: `kernel.dtb`) for the exact clock/pinmux/peripheral config.

### Mainline / community — emerging, **not ready for V821**
`linux-sunxi.org` has a [V821 page](https://linux-sunxi.org/V821), and upstream work to support
Allwinner Andes RISC-V parts began landing around **Nov 2025** (a new `ARCH_SUNXI_ANDES` menu on the
`linux-riscv` list). But full V821 support (DTS + WiFi/display/etc. drivers) is **not upstream yet** —
contrast the older Allwinner **D1** (T-Head C906), which *is* well-supported in mainline and
linux-sunxi. The **AvaotaSBC BSP above is the practical route today**; mainline is a longer game.

### What that means for *this* unit
- **Device side is unlocked** — secure boot is OFF and updates are unsigned (§7–§8), so **custom
  kernels/rootfs/boot images can be flashed and booted** (via FEL, the unsigned `/sbin/update`
  package format, or on-device flash). No signing wall.
- **The gating factor is software:** to build a *working* custom kernel you need the Tina SDK (kernel
  source + DTS + the AIC8800 and display drivers). Mainline won't boot this board's peripherals yet.
- **You already have a big head start:** the **kernel binary + both DTBs are in the dump**, so
  **DTB patches** (e.g. fixing the UART parent clock, §3) and a **custom userland/OS on top of the
  vendor kernel** are very doable *without* the full SDK — swap the rootfs/init while keeping the
  vendor kernel+drivers. That's the pragmatic "custom OS" path today.
- **Two hard constraints carry over to any custom build:** (1) the **un-stoppable 300 s watchdog**
  (§4) must be fed or the box resets every 5 min; (2) **MFi/CarPlay auth is a hardware coprocessor**
  bound to this unit's per-device secrets (§9) — a custom OS can talk to it over `/dev/i2c-1`, but the
  auth material isn't clonable by editing the rootfs alone.

Realistic tiers: **(a)** custom userland on the stock kernel — easy, done; **(b)** patched DTB/kernel
from the Tina SDK — feasible, device will boot it (unsigned); **(c)** fully-mainline open OS — blocked
on upstream V821 driver support, not there yet.

Sources: [linux-sunxi V821](https://linux-sunxi.org/V821) ·
[linux-riscv: ARCH_SUNXI_ANDES (Nov 2025)](https://lists.infradead.org/pipermail/linux-riscv/2025-November/080605.html) ·
[Allwinner D1 SDK & docs (CNX)](https://www.cnx-software.com/2021/05/02/allwinner-d1-sdk-linux-risc-v-documentation/) ·
[Tina Linux (BananaPi docs)](https://docs.banana-pi.org/en/operating_system/Tina_Linux)

---

## 13. Device-unique data (per-unit — handle as secrets)
Captured live; **kept out of this repo** (they identify/authorize this specific unit):
- `chipid`/SID (= OTP page & `xfel sid`) — redacted in the committed logs.
- `/mnt/UDISK/carplay.key` (601 B) — per-device CarPlay auth key.
- `/mnt/customer/app/raa.crt` (2120 B) — **binary/encrypted** Android-Auto RAA license (not PEM).
- MACs (wlan0 / p2p) and device name `VehiConn-4890`.

The web config server (`httpd :80`, unauthenticated, CORS `*`) also exposes device info via
`/cgi-bin/index.cgi?id=host` (SID, MAC, name, versions) and has `id=set&…`, `id=logcat`, `id=upload`
endpoints — a stock control surface reachable over WiFi even without SSH.

## 14. RGB status LEDs — programmable color & brightness (runtime-confirmed)

The three front LEDs are **addressable serial-RGB LEDs**, not fixed-function red. Kernel driver
`ly_led_rgb` probes as `led_max_num=12, max_speed_hz=3000000` — i.e. a serial-RGB string (WS2812-style,
up to 12 LEDs at 3 MHz), of which 3 are populated. They ship red only because firmware boots them to
`rgb_mode=0xff0000`. 8 bits per channel ⇒ **full 24-bit colour + 256 brightness steps per channel**.

### Reliable control — the `rgb_mode` U-Boot env var (recommended)
`rgb_mode` is a real U-Boot environment variable, piped into the kernel cmdline via `${rgb_mode}` in
`setargs_nor`. `fw_printenv`/`fw_setenv` are on the device (`/etc/fw_env.config` → `env` + `env-redund`).
Format is `0x00RRGGBB`; the value applies at the next boot (boot0/U-Boot drives the LEDs early, so it
works even with the app disabled):

```sh
fw_setenv rgb_mode 0x00ff00     # green
fw_setenv rgb_mode 0x000100     # green, brightness 1/255 (lowest non-zero)
fw_setenv rgb_mode 0x0000ff     # blue
fw_setenv rgb_mode 0x201810     # warm-white, dim
fw_setenv rgb_mode 0xff0000     # restore stock red
reboot                          # (use `reboot -f`; a backgrounded reboot gets SIGHUP'd on shell exit)
```

**Confirmed live** on this unit: `0xff0000` (red) → `0x00ff00` (all three green) → `0x000100`
(all three faintly green). After each reboot `/proc/cmdline` shows the new `rgb_mode=` and
`/sys/class/misc/ly_led/ly_led_ctrl/led_rgb` reflects it (e.g. `0x00000100`).

### Live runtime path (app-owned) and why raw sysfs is unreliable in debug mode
The runtime control surface is `/dev/ly_led` (the app's `ledColorFd` ioctl, alongside `led_mode` /
`led_update_mode`) plus sysfs `/sys/class/misc/ly_led/ly_led_ctrl/{led_rgb,led_rgb_id}` (`led_rgb` =
`0x00RRGGBB`, `led_rgb_id` = LED index). In the **app-off ACM/SSH debug modes these sysfs writes are
unreliable**: the serial-RGB string shares the `sunxi_spif` SPI bus with the NOR flash, so `led_rgb`
writes either return `-EIO` (bus busy) or update the register without clocking a frame — the LEDs hold
their boot colour. The vendor app normally owns the pinctrl/SPI init and the flush; the clean,
app-independent lever is therefore `rgb_mode` + reboot (above).

### Dead ends (mapped, so nobody re-treads them)
- `/sys/class/misc/ly_misc_dev/ly/{red,green,blue}_gpio` — inert on this board (writes accepted, no effect).
- `/sys/class/misc/ly_misc_dev/ly/led_mode` — app-consumed pattern index; no effect with the app off.
- `matrix_led` (`ly_matrix_led`, nodes `brightness/grid/seg/on`) — a **separate segment/matrix display**
  peripheral, not the status LEDs; its `matrix_led_dts_parse not find default pinctrl` at boot is
  unrelated to RGB control.
