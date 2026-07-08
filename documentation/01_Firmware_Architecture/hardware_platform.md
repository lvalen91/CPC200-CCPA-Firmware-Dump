# CPC200-CCPA Hardware Platform

**Model:** CPC200-CCPA / Carlinkit A15W Wireless CarPlay/Android Auto Adapter
**Consolidated from:** Firmware analysis and live RE
**Last Updated:** 2026-01-16

---

## System-on-Chip

| Parameter | Value |
|-----------|-------|
| **Processor** | NXP i.MX6ULL (ARM Cortex-A7) — ULL variant confirmed (DCP at 0x02280000, OCOTP at 0x021BC000) |
| **Architecture** | ARMv7, 32-bit |
| **RAM** | 128MB |
| **Storage** | 16MB Flash |
| **Kernel** | Linux 3.14.52+g94d07bb SMP |

## Wireless Connectivity

| Component | Chip | Details |
|-----------|------|---------|
| **WiFi** | Realtek RTL88x2CS | 5GHz 802.11ac, hotspot mode |
| **Bluetooth** | Realtek RTK HCI UART | BR/EDR + BLE |

> **WLAN variant:** the A15W ships with **two non-interchangeable WiFi variants** — the
> **Realtek RTL88x2CS** (802.11ac) shown above, and an **NXP/Marvell IW416** (802.11n, 1×1)
> seen on the units in `hardware_revisions.md`. For the IW416 variant's radio capabilities and
> SoftAP support matrix, see `wifi_iw416_capabilities.md`. The Bluetooth row likewise differs
> on IW416 units (NXP `uartiw416_bt_v0.bin` over `hci_uart`).

## Audio Hardware

### Supported Codecs

| Codec | I2C Address | Purpose |
|-------|-------------|---------|
| **WM8960** (Primary) | 0x1a | Full-duplex stereo, high-quality audio |
| **WM8978** (Variant) | — | Alternate hardware revision (own mixer script) |
| **AC6966** (Alternative) | 0x15 | Bluetooth SCO optimized, voice calls |

### Codec Detection (from init scripts)
```bash
i2cdetect -y -a 0 0x1a 0x1a | grep "1a" && audioCodec=wm8960
i2cdetect -y -a 0 0x15 0x15 | grep "15" && audioCodec=ac6966
```

### Kernel Modules
```bash
insmod /tmp/snd-soc-wm8960.ko
insmod /tmp/snd-soc-imx-wm8960.ko
insmod /tmp/snd-soc-bt-sco.ko
insmod /tmp/snd-soc-imx-btsco.ko
```

### Codec Mixer Configuration (TinyALSA)

`/script/init_audio_codec.sh` detects the codec (WM8960 @ `0x1a` → loads the module + runs `/script/set_wm8960_mix.sh`; AC6966 @ `0x15` → BT-SCO module + `i2cset -f -y 0 0x15 0x01 1` to open record). A WM8978 hardware variant uses `/script/set_wm8978_mix.sh`. The fixed mixer state is applied with `tinymix` (`/usr/sbin/tinymix`), and `/script/start_mic_record.sh` also uses it on the mic path.

**WM8960** (`/script/set_wm8960_mix.sh`):
```bash
tinymix 0 60 60      # Master playback volume L/R (range 0-255)
tinymix 2 1 0        # Channel routing
tinymix 35 180 180   # Mic input boost (near max)
tinymix 55 0         # left path
tinymix 4 7          # R2 routing       (#R2)
tinymix 7 3          # R1 routing       (#R1)
tinymix 48 1         # Right Boost
tinymix 50 1         # R2
tinymix 51 0         # R3
tinymix 52 1         # R1
```

**WM8978** (`/script/set_wm8978_mix.sh`):
```bash
tinymix 9 255 255    # Mic mixer, max volume
tinymix 48 63 63     # Additional gain
```

(The ALSA card/mixer only exists while an audio session is active; at idle `/proc/asound/cards` is empty.)

## MFi Authentication Coprocessor

The adapter carries a **genuine Apple MFi authentication IC** — not a software MFi spoof. The firmware drives it over I2C during every wireless CarPlay pairing.

| Parameter | Value |
|-----------|-------|
| **Bus** | `/dev/i2c-1` (I2C bus 1) |
| **Address** | 7-bit `0x11` (8-bit `0x22`) |
| **Type** | Genuine Apple MFi authentication IC — firmware log: `mfi ic is from APPLE` |
| **Certificate serial** | `IPA_3333AA071227AA02AA0011AA003045` (subject serial `33 33 AA 07 12 27 AA 02 AA 00 11 AA 00 30 45`) |
| **Output** | 128-byte RSA signature (RSA-1024, PKCS#1 v1.5) |

The firmware reads `MFI_AUTH_COP_REG_ADDR_SIGNATURE_LEN` then `MFI_AUTH_COP_REG_ADDR_SIGNATURE_DATA` to retrieve the signature after writing the challenge.

**This is real hardware, NOT a software MFi spoof.** (Contrast the CPC200-U2W, which spoofs MFi in software.) The chip is exercised **twice per wireless pairing**:
1. **iAP2 / Bluetooth layer** — challenge-response carried in iAP2 messages `0xAA00`–`0xAA05` over BT RFCOMM (945-byte cert, 20-byte challenge, 128-byte signature).
2. **AirPlay layer** — a second `MFi auth create signature` after the HomeKit `pair-verify` exchange, on the WiFi side.

The cert is identical between the two; the signatures differ because the input challenges differ. See `02_Protocol_Reference/carplay_handshake.md` and the "Wireless CarPlay Handshake" section of `initialization.md` for the full flow.

> **RE caveat:** A live register-level I2C trace of this chip was *not* captured — the firmware's kernel rejects `ptrace` (`EINVAL`, kernel-wide) and has no ftrace, so `/dev/i2c-1` cannot be snooped in-place. The cryptographic material was instead captured on the wire (BT iAP2 `0xAA0x` + firmware `ttyLog`).

## USB Interfaces

### Physical Ports & Controller Roles (verified live 2026-07-08)

The CCPA has **two physical USB ports**, driven by the two ChipIdea (`ci_hdrc`) controllers. They are **not** the same role, and `ci_hdrc.0` is dual-role — the source of an earlier "host vs gadget" doc ambiguity that is actually one OTG port:

| Controller | Physical port | Role |
|------------|---------------|------|
| **`ci_hdrc.1`** | Host-facing **MALE** USB-A cable (Type-C female on some models) — plugs into the car / head unit / your laptop | **Always CCPA-as-gadget** (the car is the host). Presents `ncm`/`accessory`, **VID 0x1314** "Auto Box". This is the "Head Unit-Facing" gadget and the [Host-Facing Gadget](#host-facing-gadget-mechanism-descriptors-and-bulk-transport) below. |
| **`ci_hdrc.0`** | Single **FEMALE** USB-A port — where a phone **or** USB storage plugs in | **OTG dual-role**, negotiated by what is plugged in. **Host by default** (EHCI root hub `usb1`, `SerialNumber: ci_hdrc.0`, `USB 2.0 started, EHCI 1.00`) for USB storage / hosting; **switches to peripheral mode** to present the `android_usb` gadget = `iap2,ncm`, **VID 0x08e4** "Auto Box", when a phone connects for wired projection. |

> **OTG evidence.** The boot OTG state machine on `ci_hdrc.0` shows `fsm->id=0 → a_idle → host (protocol 1) → EHCI` (cable/host side), then `fsm->id=1 → b_peripheral (protocol 2)` (phone connected). `ci_hdrc.0` registers **both** an EHCI host controller and a UDC (idle state `not attached`) and flips between them by OTG ID. So the "iPhone-Facing (Gadget Mode)" descriptors below and the "Type-A USB host enumerating storage" description in [`../06_Reference/ncm_carplay_relay_feasibility.md`](../06_Reference/ncm_carplay_relay_feasibility.md) are **two facets of the same single female port**, not a contradiction.

### iPhone-Facing (Gadget Mode — `ci_hdrc.0` peripheral role)

When a phone is connected, the female `ci_hdrc.0` port switches to peripheral mode and the adapter presents itself to the iPhone as an Apple-compatible accessory:

| Parameter | Value | Description |
|-----------|-------|-------------|
| idVendor | 0x08e4 (2276) | Magic Communication Technology |
| idProduct | 0x01c0 (448) | Auto Box product ID |
| iManufacturer | "Magic Communication Tec." | Manufacturer string |
| iProduct | "Auto Box" | Product string |
| functions | iap2,ncm | IAP2 protocol + USB NCM networking |

Configuration script:
```bash
echo 0 > /sys/class/android_usb/android0/enable
echo 0x08e4 > /sys/class/android_usb/android0/idVendor
echo 0x01c0 > /sys/class/android_usb/android0/idProduct
echo "Magic Communication Tec." > /sys/class/android_usb/android0/iManufacturer
echo "Auto Box" > /sys/class/android_usb/android0/iProduct
echo "iap2,ncm" > /sys/class/android_usb/android0/functions
echo 1 > /sys/class/android_usb/android0/enable
```

### Head Unit-Facing (`ci_hdrc.1`, always CCPA-as-gadget)

The head unit / car is the USB host; the CCPA is always the gadget on this MALE cable (Type-C female on some models).

| Parameter | Value | Description |
|-----------|-------|-------------|
| VID | 0x1314 (4884) | Configurable in riddle.conf (`USBVID`) |
| PID | 0x1521 (5409) | Configurable in riddle.conf (`USBPID`) — **but 0x1520 measured live on the stripped test unit, see PID note below** |

> **Values are hex.** The sysfs `idVendor`/`idProduct` files (and `USBVID`/`USBPID` in riddle.conf) store the value as a bare hex string with no `0x` prefix (`config_key_analysis.md` `USBPID` handler formats `"%x"`). "1314"/"1521" therefore mean **0x1314 / 0x1521**, not decimal. See the Host-Facing Gadget section below for the descriptors observed on the wire.

### iPhone Detection
```bash
# From start_hnp.sh
iphoneRoleSwitch_test 0x05ac 0x12a8
# 0x05ac = Apple Inc. vendor ID
# 0x12a8 = iPhone product ID
```

## USB Gadget Functions

| Module | Purpose |
|--------|---------|
| `g_iphone.ko` | IAP2 USB gadget driver |
| `f_ptp_appledev.ko` | PTP Apple device function |
| `f_ptp_appledev2.ko` | Alternative PTP function |
| `g_android_accessory.ko` | Android AOA gadget |
| `cdc_ncm.ko` | USB NCM networking |
| `storage_common.ko` | USB mass storage |

> **Fixed legacy function set (verified live 2026-07-08):** on the host-facing gadget the only functions available at runtime are the kernel-compiled `f_accessory`, `f_adb`, `f_mtp`, `f_mass_storage`, `f_ncm` — there is no configfs/gadgetfs to add more. See the **Host-Facing Gadget** section below.

### Android Open Accessory (AOA) Mode

When an Android phone connects for Android Auto, the adapter configures it into AOA mode:

| Property | Value | Description |
|----------|-------|-------------|
| idVendor | 0x18d1 | Google Inc. |
| idProduct | 0x2d00 or 0x4ee1 | AOA accessory (0x2d00) or AOA+ADB composite (0x4ee1, seen with Pixel 10) |
| Protocol | AOA 2.0 | USB Accessory Protocol |

**Observed Devices (TTY log Jan 2026):**
```
usb 1-1: New USB device found, idVendor=18d1, idProduct=4ee1
usb 1-1: Product: Pixel 10
usb 1-1: Manufacturer: Google
usb 1-1: SerialNumber: 57281FDCR00673
```

**AOA Configuration Process:**
1. Adapter detects USB device arrival via libusb hotplug
2. `ConfigAoa` class configures phone into AOA mode
3. Phone re-enumerates with AOA USB identifiers
4. OpenAuto SDK establishes Android Auto session

## Host-Facing Gadget: Mechanism, Descriptors, and Bulk Transport

> **Verified live on-device 2026-07-08** (method: root shell via SSH-over-USB-CDC-NCM to `192.168.50.2` + soldered UART console; macOS acting as libusb host on the adapter's gadget port). Unit under test: a heavily stripped "MFi/NCM appliance" build (projection binaries `ARMadb-driver`/`AppleCarPlay`/`ARMiPhoneIAP2` removed). Companion how-to: [`../CPC200-CCPA_SSH_over_USB_NCM.md`](../CPC200-CCPA_SSH_over_USB_NCM.md).

**Gadget controller & control interface.** The host-facing port (the plug that goes into the car / head unit / your laptop) is UDC `ci_hdrc.1`, driven by a **legacy monolithic `android_usb_accessory` gadget** controlled through sysfs at `/sys/class/android_usb_accessory/android0` (`enable`, `functions`, `idVendor`, `idProduct`, `state`, `bDeviceClass`, …). Switch the function at runtime:

```sh
A=/sys/class/android_usb_accessory/android0
echo 0 > $A/enable
echo <funcs> > $A/functions      # e.g. accessory | ncm | ncm,accessory
echo 1 > $A/enable
```

Composite is supported (comma-separated, e.g. `ncm,accessory`, mirroring the phone-side `iap2,ncm`).

**Fixed, kernel-compiled function set.** Only five legacy functions are compiled in: `f_accessory`, `f_adb`, `f_mtp`, `f_mass_storage`, `f_ncm`. Each exposes a misc (major 10) char device on the gadget side:

| Function | Gadget char device | Node (major, minor) |
|----------|--------------------|---------------------|
| f_accessory | `/dev/usb_accessory` | (10, 56) |
| f_adb | `/dev/android_adb` | (10, 57) |
| f_mtp | `/dev/mtp_usb` | (10, 58) |

**No arbitrary gadgets — the kernel is locked.** `functionfs` is listed in `/proc/filesystems` but is **not** usably bound to this gadget; there is **no `gadgetfs`** (`/dev/gadget` absent) and **no configfs `usb_gadget`** (`/sys/kernel/config/usb_gadget/` does not exist). You therefore **cannot** define arbitrary interfaces/endpoints/descriptors, and the kernel cannot be replaced (HAB-closed secure boot + per-chip OTPMK-encrypted kernel — see [`secure_boot_hab.md`](secure_boot_hab.md) and [`../05_Security_Analysis/kernel_encryption.md`](../05_Security_Analysis/kernel_encryption.md)). A custom host-facing bulk transport is limited to **repurposing one of the fixed function char-devices**.

**Stock bulk transport = f_accessory / `/dev/usb_accessory`.** The stock `ARMadb-driver` opens `/dev/usb_accessory` — confirmed by strings in the unpacked binary (`/dev/usb_accessory`, `/script/start_accessory.sh`, `echo 0 > /sys/class/android_usb_accessory/android0/enable`, `rmmod g_android_accessory && rmmod storage_common`, `fd_usb_accessory_wraper`). So the `0x55AA55AA` USB-bulk protocol (see [`../02_Protocol_Reference/usb_protocol.md`](../02_Protocol_Reference/usb_protocol.md)) rides the **f_accessory** function's bulk endpoints. The kernel driver is a raw byte pipe; all framing is application-defined.

**Accessory-mode descriptors (observed from a macOS libusb host):**

| Field | Value |
|-------|-------|
| idVendor | **0x1314** (sysfs `idVendor` reads "1314") |
| idProduct | **0x1520** (sysfs `idProduct` reads "1520") — see PID note below |
| iManufacturer | "Magic Communication Tec." |
| iProduct | "Auto Box" |
| bDeviceClass | 0xEF (Miscellaneous / IAD) |
| Configuration | high-speed config #1, "android_accessory" |
| Interface 0 | bInterfaceClass 0xFF (vendor-specific), bInterfaceSubClass 0xF0, bInterfaceProtocol 0, 2 endpoints |
| Bulk IN | **0x83**, wMaxPacketSize 512 |
| Bulk OUT | **0x02**, wMaxPacketSize 512 |

macOS loads **no** kernel driver for interface 0, so libusb (and Android `UsbManager`) can claim it directly. **No Android Open Accessory (AOA) control handshake (requests 51/52/53) is required** — just claim IF 0 and bulk-transfer. The 512-byte max packet size confirms **USB 2.0 high-speed**.

> **PID discrepancy (flagged, not overwritten).** This stripped unit measured **idProduct 0x1520** in *both* ncm and accessory modes, whereas other CCPA material records the head-unit-facing default as **0x1521** (the `Head Unit-Facing` table above, [`../CPC200-CCPA_SSH_over_USB_NCM.md`](../CPC200-CCPA_SSH_over_USB_NCM.md), and `configuration.md`/`config_key_analysis.md`, where `USBPID` defaults to "1521"). `USBPID` is a configurable riddle.conf value, so 0x1520 vs 0x1521 is most likely a per-unit / per-build configuration difference rather than a contradiction. [`../04_Implementation/host_app_guide.md`](../04_Implementation/host_app_guide.md) already scans for both PIDs.

**Measured throughput** (macOS libusb host ↔ box `dd`, accessory-only, **no** NCM active):

| Direction | Endpoint | Box command | Rate |
|-----------|----------|-------------|------|
| Read (adapter → host) | IN 0x83 | `dd if=/dev/zero of=/dev/usb_accessory bs=65536` | **339 Mbps** (254 MB / 6.0 s) |
| Write (host → adapter) | OUT 0x02 | `dd if=/dev/usb_accessory of=/dev/null bs=65536` | **90 Mbps** (65.6 MB / 5.8 s; box confirms 12.2 MB/s) |

Both directions far exceed CarPlay's needs (video 8–30 Mbps). Coordination notes: the device-side read must be posted **before** the host writes; use `bs=64K` on the box (`bs=512` collapses write throughput to ~10 Mbps — the box read block size dominates). The read/write asymmetry (339 vs 90) reflects the i.MX6UL ChipIdea receive/`acc_read` path being less optimized than transmit.

> **⚠ Operational hazard (live-verified).** Disabling the accessory gadget (`echo 0 > $A/enable`) while OUT transfers are pending/undrained **hangs the gadget-disable in an uninterruptible kernel wait**, wedging the box: the console shell goes to D-state, USB drops, and there is **no software recovery** — only a physical power-cycle. Safe practice: post the device read *before* writing; revert with `reboot -f`, **never** `echo 0`; and wrap experiments in a cancelable reboot-watchdog, e.g. `(sleep N; [ -e /tmp/keep ] || reboot -f) &`, so any hang self-recovers.

## Serial Console (UART)

> **Verified live on-device 2026-07-08** (method: soldered wires on the board's `TX1`/`RX1` pads).

- Board silkscreen pads **`TX1` / `RX1`** (+ GND) = i.MX6UL **UART1 = `ttymxc0` = MMIO `0x02020000`** (the "UART (serial)" row in [`flash_layout.md`](flash_layout.md) § Key I/O Regions). **3.3 V logic.**
- An **always-on passwordless root shell** runs on these pads (inittab `ttymxc0::respawn`).
- **Default baud is 9600 8N1, NOT 115200.** A CFW inittab comment claiming 115200 is aspirational/wrong for the running default. 115200 can be made persistent via an inittab wrapper that runs `stty 115200` before spawning the shell.
- **U-Boot is 2015.04**, and its console is **silenced on the pins** in the *active* environment: the saved env sets `console=ttyLogFile0` (a write-only RAM log device), so **nothing prints on the UART pins during U-Boot or kernel boot** — only the post-boot Linux inittab shell appears. The compiled-in default env in mtd0 says `console=ttymxc0,115200` / `baudrate=115200`, but the saved env overrides it (consistent with the "norargs is stale" note in [`flash_layout.md`](flash_layout.md)).

**i.MX6UL UART map (this board):**

| UART | Node | MMIO | Role |
|------|------|------|------|
| UART1 | `ttymxc0` | 0x02020000 | Console pads `TX1`/`RX1` — passwordless root shell (9600 8N1) |
| UART2 | `ttymxc1` | 0x021E8000 | Unused spare |
| UART3 | `ttymxc2` | 0x021EC000 | Bluetooth HCI |

## Key Hardware Interfaces

| Path | Purpose |
|------|---------|
| `/dev/android_iap2` | USB IAP2 device |
| `/dev/hwaes` | Hardware AES engine |
| `/dev/i2c-1` | MFi authentication coprocessor (genuine Apple IC, 7-bit addr 0x11) |
| `/sys/class/android_usb/android0/` | USB gadget control |
| `/sys/bus/platform/devices/ci_hdrc.1/` | USB OTG controller |

## GPIO Assignments

| GPIO | Suspected Purpose |
|------|-------------------|
| GPIO 2 | Unknown hardware control |
| GPIO 6 | WiFi/BT module power |
| GPIO 7 | WiFi/BT module reset |
| GPIO 9 | Unknown hardware control |

## Resource Constraints

The CPC200-CCPA operates under severe constraints:

| Resource | Limit | Impact |
|----------|-------|--------|
| RAM | 128MB | Limits processing to basic format conversion |
| Storage | 16MB | Compressed rootfs (~15MB) |
| CPU | Single-core ARM32 | No complex DSP operations |

This architecture results in a **"Smart Interface, Dumb Processing"** design where the adapter handles protocol translation and format conversion, delegating sophisticated processing (WebRTC, noise cancellation) to the host application.

---


## Unit-Specific OCOTP Fuse Values (CPC200-CCPA, firmware db2026.91)

Read 2026-06-30 via `/sys/fsl_otp/` (sysfs interface; direct devmem of OCOTP registers hangs on this device).

| Register | Value | Notes |
|----------|-------|-------|
| CFG0 | 0x692173ca | DCP PAYLOAD[0] for kernel decrypt |
| CFG1 | 0x1d16c1d7 | DCP PAYLOAD[1] for kernel decrypt |
| CFG2 | 0x7df100ae | |
| CFG3 | 0xfc433f02 | |
| CFG4 | 0x0 | |
| CFG5 | 0x08d0004a | |
| CFG6 | 0x0 | |
| LOCK | 0x324003 | Selective fuse locking |
| MISC_CONF | 0x40 | HAB Closed (SEC_CONFIG[1]=1) |
| FIELD_RETURN | 0x2 | |
| MAC0 | 0x767bb8ec | Ethernet MAC bytes [5:2] |
| MAC1 | 0xfefd6672 | Ethernet MAC bytes [1:0] |
| SRK0-7 | 0x35799e07... | Identical to all other HeWei devices |
| OTPMK0-7 | 0xbadabada | Hardware-masked; actual OTPMK never readable |
| SW_GP2 / GP412 | 0x0 | DCP PAYLOAD[2] for kernel decrypt |
| SW_GP3 / GP413 | 0x0 | DCP PAYLOAD[3] for kernel decrypt |

CFG0 and CFG1 are passed to the DCP descriptor as the PAYLOAD field during kernel decryption — they are NOT the AES key. The AES key is derived internally by the DCP from the hardware OTPMK. See `05_Security_Analysis/kernel_encryption.md`.

## References

- Source: `GM_research/_evidence/cpc200_research/docs/hardware/REVERSE_ENGINEERING_NOTES.md`
- Source: `carlink_native/documents/reference/Firmware/firmware_initialization.md`
- Source: `carlink_native/documents/reference/Firmware/firmware_audio.md`
