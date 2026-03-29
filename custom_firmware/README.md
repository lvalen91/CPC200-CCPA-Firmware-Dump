# CPC200-CCPA (A15W) Custom Firmware Guide

## Overview

The Carlinkit CPC200-CCPA (A15W) firmware update images (`.img` files) are AES-128-CBC encrypted tar.gz archives. This guide covers how to extract, modify, and repackage custom firmware.

**Target device:** Carlinkit A15W (CPC200-CCPA)
**Encryption:** AES-128-CBC
**Key:** `AutoPlay9uPT4n17`
**IV:** Same as key

## Prerequisites

- **OpenSSL** (comes with macOS and most Linux distros)
- **tar** and **gzip** (standard on macOS/Linux)
- A stock or custom `.img` firmware file
- `FirmwareA15W.sh` (included in this repo)

Verify OpenSSL is installed:

```bash
openssl version
```

## Quick Reference

```bash
# Decrypt .img to .tar.gz
./FirmwareA15W.sh decrypt A15W_Update.img firmware.tar.gz

# Extract tar.gz to a directory
mkdir my_firmware
tar -xzf firmware.tar.gz -C my_firmware

# (make your modifications inside my_firmware/)

# Repackage to tar.gz
cd my_firmware
tar -czf ../my_custom.tar.gz --exclude='.DS_Store' .
cd ..

# Encrypt tar.gz to .img
./FirmwareA15W.sh encrypt my_custom.tar.gz A15W_Update.img
```

---

## Step-by-Step Instructions

### 1. Decrypt an existing .img file

The `.img` file is an AES-128-CBC encrypted gzip-compressed tar archive. Use `FirmwareA15W.sh` to decrypt:

```bash
./FirmwareA15W.sh decrypt A15W_Update.img firmware.tar.gz
```

Expected output:

```
Decrypted: A15W_Update.img -> firmware.tar.gz
Output size: 11342661 bytes
Verification: Valid gzip header detected
```

If you see `Warning: Output may not be valid gzip`, the input file may not be a valid A15W firmware image, or it may use a different encryption key (other device models use different keys).

### 2. Extract the tar.gz

Create a working directory and extract:

```bash
mkdir my_firmware
tar -xzf firmware.tar.gz -C my_firmware
```

This produces a rootfs overlay with the following structure:

```
my_firmware/
├── etc/                    # Configuration files
│   ├── init.d/rcS          # Boot script (CRITICAL)
│   ├── boa/                # Web server config and UI
│   │   ├── cgi-bin/        # CGI scripts
│   │   └── www/            # Web interface files
│   ├── bluetooth/          # Bluetooth config
│   ├── dbus-1/             # D-Bus config
│   ├── mdev/               # USB hotplug scripts
│   ├── riddle_default.conf # Factory default config (if present)
│   ├── fstab               # Filesystem mounts
│   ├── inittab             # Init configuration
│   ├── profile             # Shell environment
│   ├── shadow              # Root password
│   ├── software_version    # Firmware version string
│   └── box_product_type    # Device model ("A15W")
├── lib/
│   └── firmware/           # WiFi/BT firmware blobs (chip-specific)
├── script/                 # Shell scripts (~48 files)
│   ├── start_main_service.sh
│   ├── init_bluetooth_wifi.sh
│   ├── phone_link_deamon.sh
│   ├── update_box.sh
│   ├── ko.tar.gz           # Kernel modules
│   └── ...
├── tmp/
│   ├── once.sh             # Pre-update hook (runs BEFORE file copy)
│   ├── finish.sh           # Post-update hook (runs AFTER file copy)
│   ├── upg                 # Flash write binary
│   ├── AutoBox.img         # Base filesystem image
│   └── remove_unnecessary_file.sh
└── usr/
    ├── lib/                # Shared libraries
    ├── libexec/            # sftp-server (if SSH enabled)
    └── sbin/               # System binaries
        ├── ARMadb-driver   # Main USB protocol handler
        ├── ARMiPhoneIAP2   # iPhone/CarPlay protocol
        ├── ARMAndroidAuto  # Android Auto protocol
        ├── AppleCarPlay    # AirPlay/CarPlay server
        ├── dropbear        # SSH server (if SSH enabled)
        ├── riddleBoxCfg    # Configuration tool
        └── ...
```

**Important:** This is an OVERLAY, not a complete rootfs. The adapter's base JFFS2 filesystem already contains `/bin/busybox`, `/lib/libc`, kernel modules, etc. Files in this tar.gz are copied on top of the existing rootfs during update.

### 3. Modify the firmware

Edit files inside `my_firmware/` as needed. Common modifications:

#### Enable SSH (dropbear)

Edit `etc/init.d/rcS` and change `#dropbear` to `dropbear`:

```bash
# Before:
#dropbear

# After:
dropbear
```

You also need the `dropbear` binary in `usr/sbin/` and optionally `sftp-server` in `usr/libexec/`.

To enable passwordless root login, set `etc/shadow` to:

```
root::0:0:99999:7:::
```

#### Enable telnet

Add this line to `etc/init.d/rcS` after the `dropbear` line:

```bash
/bin/busybox telnetd -l /bin/sh -p 23 &
```

#### Change WiFi SSID/password

The WiFi AP configuration is in `etc/hostapd.conf` (if included in the tar, or it exists on the base rootfs). The SSID can also be set via `etc/wifi_name`.

#### Replace web interface

Replace files in `etc/boa/www/` and `etc/boa/cgi-bin/`. The web server (boa) serves from `/etc/boa/www/` and executes CGI scripts from `/etc/boa/cgi-bin/`.

If the tar contains `etc/boa/www/www.tar.gz`, this tarball is extracted to `/etc/boa/www/` at boot by `start_main_service.sh`. Either replace the tarball or remove it and place files directly.

#### Add chip-specific WiFi/BT firmware

The adapter auto-detects the WiFi chip via SDIO ID at boot. To include chip-specific firmware, place the appropriate tarball in the root of the tar.gz:

| Tarball | Chip | SDIO IDs |
|---------|------|----------|
| `rtl8822_rootfs.tar.gz` | Realtek RTL8822BS | `0xb822` |
| `rtl8822cs_rootfs.tar.gz` | Realtek RTL8822CS | `0xc822` |
| `bcm4354_rootfs.tar.gz` | Broadcom BCM4354 | `0x4354`, `0x4335` |
| `bcm4358_rootfs.tar.gz` | Broadcom BCM4358 | `0x4358`, `0xaa31` |
| `sd8987_rootfs.tar.gz` | Marvell SD8987 | `0x9149`, `0x9141` |
| `iw416_rootfs.tar.gz` | Intel iW416 | `0x9159` |

The `once.sh` script detects the chip and extracts only the matching tarball during the update process.

### 4. Understanding once.sh and finish.sh

These are hook scripts that run during the firmware update:

- **`tmp/once.sh`** runs BEFORE the file copy phase, on the LIVE rootfs with full root access. It can delete files, reset configs, kill processes, and prepare the system for the update. This is the most powerful hook.

- **`tmp/finish.sh`** runs AFTER the file copy phase. Used for cleanup and logging.

- **`tmp/upg`** is the flash write binary executed by `once.sh`. It handles writing firmware to the MTD partition.

The standard `once.sh` from official firmware handles chip detection, config migration, and runs `upg`. If you don't need custom pre-update logic, you can use a minimal `once.sh`:

```bash
#!/bin/bash
setUpdateProgress() { echo $1 > /tmp/update_progress; }
setUpdateProgress 5
test -e /etc/manufacture_date || echo -n $(awk -F. '{print $1$2$3}' /etc/software_version) > /etc/manufacture_date
setUpdateProgress 9
echo "Start upg"
rm -f /tmp/*.img /tmp/update.tar.gz
mv /tmp/update/tmp/upg /tmp/
mv /tmp/update/tmp/*.img /tmp/
chmod +x /tmp/upg
/tmp/upg >> /dev/console 2>&1 || exit 1
echo "End upg"
```

### 5. Repackage as tar.gz

From inside your firmware directory:

```bash
cd my_firmware
tar -czf ../my_custom.tar.gz --exclude='.DS_Store' --exclude='.git' .
cd ..
```

**Important notes:**

- Use relative paths (run tar from INSIDE the directory with `.`)
- Exclude `.DS_Store` files (macOS metadata) and `.git` directories
- The archive must contain files with paths like `./etc/init.d/rcS`, not `my_firmware/etc/init.d/rcS`

### 6. Encrypt to .img

```bash
./FirmwareA15W.sh encrypt my_custom.tar.gz A15W_Update.img
```

Expected output:

```
Encrypted: my_custom.tar.gz -> A15W_Update.img
Output size: 17758853 bytes
```

### 7. Verify the image (recommended)

Decrypt the `.img` back and compare to confirm the round-trip is lossless:

```bash
./FirmwareA15W.sh decrypt A15W_Update.img /tmp/verify.tar.gz
cmp my_custom.tar.gz /tmp/verify.tar.gz && echo "PASS: Byte-identical" || echo "FAIL"
rm -f /tmp/verify.tar.gz
```

You can also verify the tar contents:

```bash
./FirmwareA15W.sh decrypt A15W_Update.img /tmp/verify.tar.gz
tar -tzf /tmp/verify.tar.gz | head -20
rm -f /tmp/verify.tar.gz
```

---

## Deploying the Firmware

### Method 1: USB Drive (should work even on bootlooped adapters)

1. Format a USB drive as **FAT32**
2. Copy `A15W_Update.img` to the root of the USB drive
3. Plug the USB drive into the adapter's USB-A port
4. The adapter auto-detects and processes the update
5. Remove USB drive when LED indicates completion (adapter reboots)

The adapter looks for a file named `A15W_Update.img` (derived from `/etc/box_product_type`). The filename must match exactly.

### Method 2: SCP over SSH (requires SSH access)

```bash
scp A15W_Update.img root@192.168.43.1:/mnt/UPAN/A15W_Update.img
```

Then trigger the update:

```bash
ssh root@192.168.43.1 "/script/update_box.sh"
```

### Method 3: Web UI upload

If the web interface has an upload function, navigate to `http://192.168.43.1` and use the firmware upload page.

---

## Update Process Flow

When the adapter processes `A15W_Update.img`:

```
1. USB detected by mdev hotplug
2. Mounted at /mnt/UPAN/
3. A15W_Update.img copied to /tmp/
4. ARMimg_maker decrypts .img -> update.tar.gz
5. tar extracts to /tmp/update/
6. tmp/once.sh runs (pre-update, on live rootfs)
7. quickly_update.sh copies /tmp/update/* over /
8. tmp/finish.sh runs (post-update)
9. Reboot on USB removal (or automatic for OTA)
```

**Key detail:** `quickly_update.sh` only COPIES files — it never deletes. If you need to remove files from the adapter, do it in `once.sh`.

---

## Files You Should NOT Delete or Modify

These files are critical for adapter operation. Corrupting them can cause bootloops:

| File | Purpose |
|------|---------|
| `/etc/box_version` | CarPlay version handshake (value: 2). Deleting this breaks CarPlay. |
| `/etc/box_product_type` | Device model ("A15W"). Update mechanism depends on this. |
| `/etc/device_serial` | Unique device serial number |
| `/etc/serial_number` | Hardware serial |
| `/etc/manufacture_date` | Manufacturing date stamp |
| `/etc/.manufacture_date_sign` | Date signature (validated by firmware) |
| `/etc/factory_name` | Factory identity |
| `/etc/init.d/rcS` | Boot script. Syntax errors here cause bootloops. |
| `/etc/inittab` | Init configuration |
| `/etc/fstab` | Filesystem mounts |
| `/etc/profile` | Shell PATH and LD_LIBRARY_PATH |

---

## Runtime Config Files (safe to delete for reset)

These 4-byte binary files in `/etc/` are created by `riddleBoxCfg` at runtime. Deleting them resets the adapter to defaults on next boot:

```
AdvancedFeatures  AndroidAutoHeight  AndroidAutoWidth   AndroidWorkMode
AudioMultiBusMode AutoConnectInterval AutoPlauMusic     AutoResetUSB
AutoUpdate        BackRecording      BackgroundMode     BoxConfig_DelayStart
BoxConfig_UI_Lang BoxConfig_preferSPSPPSType BoxSupportArea BtAudio
CallQuality       CarDate            CarDrivePosition   CarLinkType
CustomCarLogo     CustomFrameRate    DashboardInfo      DayNightMode
DisplaySize       DuckPosition       EchoLatency        FastConnect
GNSSCapability    HNPInterval        HiCarConnectMode   HudGPSSwitch
ImprovedFluency   InternetHotspots   KnobMode           LastBoxUIType
LogMode           LogoType           MediaLatency       MediaPacketLen
MediaQuality      MicGainSwitch      MicMode            MicType
MouseMode         NaviAudio          NaviVolume         NeedAutoConnect
NeedKeyFrame      NotCarPlayH264DecreaseMode  OriginalResolution
RepeatKeyframe    ReturnMode         ScreenDPI          ScreenPhysicalH
ScreenPhysicalW   SendEmptyFrame     SendHeartBeat      SpsPpsMode
TtsPacketLen      TtsVolumGain       UDiskPassThrough   USBConnectedMode
USBTransMode      UdiskMode          UseBTPhone         UseUartBLE
VideoBitRate      VideoResolutionHeight VideoResolutionWidth VoiceQuality
VrPacketLen       VrVolumGain        WiFiChannel        WiFiP2PMode
WiredConnect      iAP2TransMode
```

Additionally, `/etc/riddle.conf` can be deleted to force regeneration from `/etc/riddle_default.conf`. This resets all settings including paired device list.

---

## riddle_default.conf

This file provides factory defaults when `riddle.conf` is missing. The adapter creates `riddle.conf` from this file on boot. Minimum required content:

```json
{
    "USBVID":   "1314",
    "USBPID":   "1521",
    "CarLinkType":  30,
    "AndroidWorkMode":  1
}
```

`CarLinkType: 30` enables CarPlay + AndroidAuto + HiCar. Without it, the adapter won't activate any phone connection protocols.

---

## Encryption Details

For reference, the encryption used by `FirmwareA15W.sh`:

- **Algorithm:** AES-128-CBC
- **Key:** `AutoPlay9uPT4n17` (hex: `4175746f506c617939755054346e3137`)
- **IV:** Same as key
- **Block size:** 16 bytes
- **Padding:** None (`-nopad`). Only the block-aligned portion of the file is encrypted. The remainder bytes (file_size % 16) are appended unencrypted.

Manual decrypt (equivalent to what the script does):

```bash
KEY_HEX="4175746f506c617939755054346e3137"
FILESIZE=$(stat -f %z input.img)        # macOS
TRUNCATED=$((FILESIZE - FILESIZE % 16))

head -c $TRUNCATED input.img | \
  openssl enc -d -aes-128-cbc -nopad -K $KEY_HEX -iv $KEY_HEX > output.tar.gz
tail -c $((FILESIZE % 16)) input.img >> output.tar.gz
```

Other Carlinkit device models use different keys:

| Model | Key |
|-------|-----|
| A15W (CPC200-CCPA) | `AutoPlay9uPT4n17` |
| U2W | `CarPlay5KBP6ClJv` |
| U2AW | `CarPlayBbnF6ecFP` |
| U2AC | `CarPlayiHXF1o74i` |

---

## Troubleshooting

**Update doesn't trigger from USB:**
- Ensure the USB drive is FAT32 formatted with a Master Boot Recover Parition. GPT might not work.
- Filename must be exactly `A15W_Update.img`
- Try a different USB drive (some aren't detected)

**Adapter bootloops after custom firmware:**
- USB firmware updates work even during bootloops (mdev hotplug runs early in boot)
- Plug in a USB drive with a known-good `A15W_Update.img`
- If boot is completely broken (can't reach mdev), hardware flash recovery via SPI programmer is required

**CarPlay doesn't activate:**
- Ensure `/etc/box_version` exists (4-byte little-endian int32, value `2`)
- Ensure `CarLinkType: 30` is in `riddle.conf` or `riddle_default.conf`
- Check `/tmp/ttyLog` via SSH for `Box Version not match` errors

**SSH not working after update:**
- Verify `dropbear` line is uncommented in `/etc/init.d/rcS`
- Verify `/usr/sbin/dropbear` binary exists in your firmware tar
- Connect to adapter WiFi (default: `192.168.43.1`)
