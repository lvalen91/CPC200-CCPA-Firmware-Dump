# HeWei Adapter Family — Device Variants, Identity Architecture & Cross-Model Conversion

**Scope:** The CPC200-CCPA (A15W) is one member of a family of sibling adapters built by the
same ODM (HeWei) on the same i.MX6UL platform. The other variants — `U2W_AUTOKIT` and
`U2AC_AUTOKIT` ("2air") — are documented elsewhere in this repo only incidentally. This file
collects the cross-variant **findings**: the device-family hardware/firmware comparison,
kernel-module portability rules, the `CheckBoxManuDateSign` identity architecture, and the
cross-model conversion analysis. Procedures, dump references, and recovery steps are
deliberately excluded — this is a findings reference only.

> Companion docs: `hardware_platform.md` (A15W platform), `hardware_revisions.md` (A15W
> hardware revisions), `version_comparison.md` (A15W firmware history),
> `firmware_encryption.md`, `wifi_iw416_capabilities.md`.

---

## 1. Device Family

All three variants share the same SoC, NOR flash part, RAM size, and ODM. They differ in
WiFi silicon, firmware lineage, and HAB signing-key era.

| Variant | Product type | WiFi chip | Firmware era | HAB era | Notes |
|---------|--------------|-----------|--------------|---------|-------|
| **U2W_AUTOKIT** | `U2W_AUTOKIT` | Broadcom BCM4354 | 2021 lineage | Era 2b (CSF `0x8782A7D0`) | CarPlay-only; BCM4354 dropped from firmware after 2022.07 |
| **A15W / CPC200-CCPA** | `A15W` | Realtek RTL8822CS **or** NXP/Marvell IW416 | 2025 lineage | Era 3b (CSF `0x8781F7D0`) | Two non-interchangeable WLAN variants (see `hardware_platform.md`) |
| **U2AC_AUTOKIT ("2air")** | `U2AC_AUTOKIT` | NXP/Marvell IW416 (SDIO `0x9159`) | 2025.12 lineage | Era 3 (CSF `0x8781F7D0`) | Modular HWFS firmware; hardened stock web interface |

### Shared platform (all variants)

| Parameter | Value |
|-----------|-------|
| SoC | NXP/Freescale i.MX6UL (ARM Cortex-A7, ARMv7, 32-bit) |
| RAM | 128 MB |
| Flash | 16 MB SPI NOR (Macronix MX25L12835F) |
| Flash layout | 256 KB uboot + 3,328 KB kernel + 12,800 KB rootfs |
| Kernel | Linux 3.14.52+g94d07bb SMP |
| ODM | DongGuan HeWei |

> [!IMPORTANT]
> **"2air" branding is not platform-specific — do not read this table as covering every device
> sold under that name.** Everything in this document describes the **HeWei / i.MX6UL / ARM**
> family only. A separate adapter sold as a **C2Air** has been dumped and is built on an
> entirely unrelated platform: **Allwinner V821, 32-bit RISC-V, Tina Linux 5.0 (kernel 5.4.220),
> AIC8800 WiFi 6, ODM Liaoyuan**. It shares no SoC, no instruction set, no ODM, and no firmware
> lineage with the U2AC_AUTOKIT "2air" row above. None of the findings in this document —
> HAB/SRK fuses, vermagic rules, `CheckBoxManuDateSign`, partition portability, encryption keys,
> board-marking eras — apply to it.
>
> See [`c2air_v821_platform.md`](c2air_v821_platform.md) and
> [`../../hardware/c2air_v821_spec.md`](../../hardware/c2air_v821_spec.md).

### SRK fuses are identical across the whole family

Direct OTP-fuse comparison across U2W, U2AC ("2air"), A15W, and the Carlinkit-brand devices
shows **byte-for-byte identical SRK table fuses**:

```
SRK0=0x35799e07  SRK4=0xddf4d972
SRK1=0x3777df73  SRK5=0xade068b3
SRK2=0xf1f402d0  SRK6=0x79e7970b
SRK3=0xd57be823  SRK7=0xa30cdab2
LOCK=0x324003
```

The differing CSF certificate-pointer values seen between firmware eras (`0x8782A7D0` era 2,
`0x8781F7D0` era 3) are different **key indices within the same 4-key SRK table**, not
different keys. The "brand" distinction (Carlinkit vs AutoKit) is purely a software/product
label, not a cryptographic one. HAB therefore does not by itself prevent a cross-variant
U-Boot from verifying, as long as the same SRK fuse table is present (which it always is).

---

## 2. Cross-Variant Hardware Comparison — 2air vs A15W (IW416)

For the two IW416-based variants the hardware is nearly indistinguishable:

| Component | 2air (U2AC_AUTOKIT) | A15W (IW416) | Match |
|-----------|---------------------|--------------|-------|
| SoC | i.MX6UL | i.MX6UL | Identical |
| Flash layout | 256K + 3328K + 12800K | 256K + 3328K + 12800K | Identical |
| U-Boot build stamp | Feb 02 2023 23:26:24 | Feb 02 2023 23:26:24 | Identical |
| U-Boot code | 89 bytes differ / 180,224 | (reference) | 99.95% identical |
| CSF / HAB era | Era 3 (`0x8781F7D0`) | Era 3 (`0x8781F7D0`) | Identical |
| SRK fuses | (family table) | (family table) | Identical |
| WiFi chip | IW416 | IW416 | Identical |
| WiFi firmware | 7 NXP blobs | 7 NXP blobs | Identical |
| Kernel vermagic | `3.14.52+g94d07bb` | `3.14.52+g94d07bb` | Identical |
| Factory | GuanSheng | GuanSheng | Same |

**The 89 differing U-Boot bytes are per-device identity values** (UUID/serial hashes derived
from OTP fuses) located at offset **0x87D–0x8FD**. The U-Boot executable code is otherwise
identical. This means mtd0 cannot be transplanted between two physical units even of the same
variant — each carries its own identity bytes.

### 2air firmware module system (HWFS)

The 2air uses a modular firmware ("HWFS") composed of independently-versioned components,
in contrast to the A15W's monolithic rootfs image:

```
Boot128, USBDrv, Common, Service, HUCP, HUAA,
CarPlay, AndroidAuto, IW416, WebAUTOKIT, Cus_U2AC_AUTOKIT
```

Each module carries its own build timestamp (e.g. `2025.12.29.1746`).

---

## 3. Kernel-Module Vermagic — Portability Rule

Every variant's kernel reports the same vermagic banner:

```
3.14.52+g94d07bb SMP preempt mod_unload modversions ARMv7 p2v8
```

Kernel modules (`.ko` files, shipped inside `ko.tar.gz` and the per-chip WiFi driver
tarballs, extracted to `/tmp/` at boot) **must match this vermagic string exactly** to load.
Because the IW416 A15W and the 2air share the same vermagic, modules are interchangeable
between them. The U2W (2021 lineage) kernel build's vermagic was not extracted; if it differs,
A15W-built modules would refuse to load on a U2W kernel.

### WiFi-driver-per-chip gap

The init script (`init_bluetooth_wifi.sh`) contains branch logic for all supported WiFi chip
variants (it reads the SDIO card ID and selects a branch). However, **only the driver tarball
for the unit's primary chip is shipped in the rootfs**. So a rootfs built for an RTL8822CS unit
contains only `88x2cs.ko` (+ `rtk_hci_uart.ko`); it has no Broadcom, IW416, RTL8733, etc.
blobs. This is the real reason for the historical "WiFi chip restrictions" attributed to
Ludwig-v's conversion matrix (e.g. "RTL8822BS only up to 2022.07.29"): the script logic always
supported every chip, but the **binary payload in the delta** was built for one specific chip.
A rootfs whose shipped driver does not match the installed silicon simply fails to bring up
`wlan0`.

---

## 4. CheckBoxManuDateSign — Identity Architecture

`ARMadb-driver` validates device identity on **every startup** by comparing two
MD5-like hashes:

1. **Stored signature** — read from `/etc/.manufacture_date_sign`
2. **Computed signature** — derived at runtime from `/etc/manufacture_date` +
   `/etc/serial_number` + the device's OTP fuse values

If the two do not match, the `MiddleMan` subprocess **crash-loops (~5×/second)**, which
prevents USB-gadget initialization and therefore blocks all CarPlay / Android Auto
functionality. This is a userspace identity check keyed to the physical chip's OTP fuses, not
a boot-ROM or kernel gate.

### Identity-file classification

The firmware's `/etc` files fall into two categories that **must not be mixed** when reasoning
about which files are bound to the silicon and which travel with the rootfs:

**Hardware identity — bound to the physical chip's OTP fuses:**

| File | Role |
|------|------|
| `/etc/.manufacture_date_sign` | Factory-computed signature (OTPMK-derived) |
| `/etc/manufacture_date` | Manufacturing date — input to the signature hash |
| `/etc/serial_number` | Serial (device-specific suffix) — input to the signature hash |
| `/etc/device_serial` | Device serial hash |

**Operational config — bound to the rootfs binaries, not the silicon:**

| File | Role |
|------|------|
| `/etc/box_product_type` | Selects USB gadget mode, module loading, protocol init |
| `/etc/riddle.conf` / `/etc/riddle_default.conf` | Runtime config (USBVID/USBPID/CarLinkType/resolution/...) |
| `/etc/hostapd.conf` | WiFi AP configuration |
| `/etc/bluetooth/hcid.conf` | Bluetooth HCI config |
| `/etc/wifi_name`, `/etc/bluetooth_name` | SSID / BT name |
| `/etc/shadow` | Root password |
| `/etc/airplay.conf`, `/etc/udhcpd.conf` | AirPlay / DHCP config |

**Critical finding: `box_product_type` is NOT an input to the `CheckBoxManuDateSign` hash.**
It can be changed independently without breaking signature validation. Only
`manufacture_date`, `serial_number`, and the OTP fuses feed the hash.

### Failure modes

| Identity mistake | Symptom |
|------------------|---------|
| Wrong `.manufacture_date_sign` | MiddleMan crash-loop; no USB; no CarPlay |
| Wrong `manufacture_date` or `serial_number` | Same — hash mismatch |
| Wrong `box_product_type` | USB gadget never enumerates; head unit/host can't see device |
| Incomplete `riddle.conf` (missing USBVID/USBPID/CarLinkType) | USB descriptor setup incomplete — no enumeration |

---

## 5. Flash Partition Portability — Proven Rules

Cross-variant experiments (2air ↔ A15W IW416) establish which flash regions are portable
between sibling devices:

| Partition | Portable? | Reason |
|-----------|-----------|--------|
| mtd0 (U-Boot, 256 KB) | **No** | Carries per-device identity bytes (0x87D–0x8FD) + CSF cert material |
| mtd1 (kernel, 3,328 KB) | **No** | Encrypted with per-chip OTPMK; cannot be decrypted by a different unit's silicon |
| mtd2 (rootfs, 12,800 KB) | **Yes** | Plain JFFS2 — no signing, no encryption |

Empirical results: a **full** foreign SPI image (A15W → 2air) **fails to boot** — the foreign
kernel cannot be decrypted by the target's OTPMK. A **hybrid** (target's own boot region +
foreign rootfs) **boots fully with SSH**. The root cause of full-flash failure is therefore the
per-chip kernel encryption, not HAB (the SRK table is shared family-wide).

> JFFS2 note: the rootfs uses Carlinkit's custom compression type `0x16`
> (`JFFS2_COMPR_CARLINKIT_ZLIB`); standard JFFS2 extractors need patching to read it.

---

## 6. Device Activation (`uuid_sign`) — Userspace-Only

The `fakeiOSDevice` binary reads `/etc/uuid_sign` (a 256-byte signature) and submits it to the
custom `/dev/hwaes` kernel driver via **IOCTL `0x6205`** for hardware-AES verification. If the
check fails, the adapter shows an activation prompt and blocks the projection UI.

**Finding: this is a userspace daemon check, not a boot or kernel gate.** A missing or invalid
`uuid_sign`:

- does **not** prevent boot
- does **not** prevent kernel loading
- does **not** affect WiFi, USB, or SSH access
- only blocks the CarPlay / Android Auto projection UI (an application-level nag)

A live A15W unit observed with **no `uuid_sign` file at all** ran normally, indicating
enforcement is firmware-version dependent or disabled on some builds. For cross-variant
reasoning, activation is not a structural concern — it sits entirely above the boot/kernel
layer.

---

## 7. Boot Behavior With a Missing WiFi Driver

When a rootfs does not contain the driver tarball for the installed WiFi chip, the system
**boots fully and degrades gracefully — it does not panic**:

```
U-Boot decrypts + boots kernel                          OK
Kernel mounts JFFS2 rootfs                              OK
rcS: SSH (dropbear), telnet, mounts                     OK
start_main_service.sh: ARMadb-driver, dbus, ...         OK
init_bluetooth_wifi.sh:
   reads SDIO ID, enters matching branch                OK
   extract driver tarball                               FAIL (file not present)
   insmod driver .ko                                    FAIL (file not present)
   wlan0 never created / hostapd has no interface       FAIL
All other services continue                             OK
```

Consequence: no wireless access, but the car-facing USB gadget port and the USB host port
still function, and all userspace daemons start normally. This is a graceful degradation, not a
boot failure.

---

## 8. Cross-Model Conversion Analysis (Ludwig-v Delta Method)

Historical cross-model conversions applied a firmware `.img` **delta** from one variant onto a
running adapter of a different variant. The delta only ever touched **rootfs** files; mtd0 and
mtd1 were never modified by it.

**File overlap:** all U2-family devices (U2W, U2AW, U2AC) share **~84% identical files**. A
delta typically changes ~59 files and adds ~75 new ones (mostly web-UI chunks), **assuming the
rest of the base system is already present**.

### Why feature-removal succeeds and feature-add fails

The delta is a *partial* update that assumes a complete base. Whether it produces a working
system depends entirely on whether the target's existing base already contains everything the
delta does not carry:

| Direction | Outcome | Reason |
|-----------|---------|--------|
| **Removing features** (e.g. U2AC → U2W) | Succeeds | Target needs *fewer* files than the source already has — every dependency is present |
| **Same-version update** | Succeeds | Base matches what the delta was built against |
| **Adding features** (e.g. U2W → U2AC) | Fails / boot-loops | Delta assumes newer base files (scripts, libs, `ko.tar.gz`) that don't exist on the older base — missing dependencies break init |
| **Cross-version of same model** | Fails | Delta targeted a different base version; expected files are wrong versions or absent |

**The pattern:** adding features fails because the delta does not carry the full dependency
tree; removing features succeeds because the target already has more than enough. The chip
restrictions in the conversion matrix were a side effect of the delta replacing the WiFi driver
tarball with one built for the target firmware's primary chip (see §3).

A **full** rootfs (mtd2) replacement avoids the partial-base problem entirely — every file is
accounted for and the resulting state is deterministic — but it does not bypass the per-chip
kernel encryption (§5) or the chip-driver requirement (§3).

---

## 9. Per-Product OTA Firmware History — U2W_AUTOKIT

OTA findings specific to the U2W_AUTOKIT line (decrypted with the U2W firmware key — see §11):

| Version | AutoBox.img (mtd0+mtd1) | WiFi blobs | CSF era | Notes |
|---------|-------------------------|------------|---------|-------|
| 2021.12.22.1645 | **None** | 0 | — | Tiny ~460 KB delta ("optimize memory") — boot region untouched |
| 2022.06.08.1109 | **Yes** | 3 (bcm4354, rtl8822, sd8987) | Era 2 (`0x8782A7D0`) | First full update carrying a new U-Boot+kernel |
| 2022.07.29.1625 | **Yes** | 4 (bcm4354, bcm4358, rtl8822, sd8987) | Era 2 (`0x8782A7D0`) | Added BCM4358 support |
| 2023.10.31.1425 | **Yes** | 3 (rtl8822, bcm4358, rtl8822cs) | **Era 3 (`0x8781F7D0`)** | SRK key index rotated era 2→3; **BCM4354 support dropped** |

Key findings:

- **`AutoBox.img` first appeared in 2022.06.08.** Devices that only ever received the
  2021.12.22 delta kept their factory U-Boot+kernel; devices that updated past 2022.06 received
  a new signed boot region.
- **The era 2→3 SRK key-index rotation happened at 2023.10.31** — the same transition seen in
  the A15W firmware lineage. A U2W updated to 2023.10.31 becomes cryptographically aligned
  (era 3) with current A15W firmware.
- **BCM4354 WiFi was dropped after 2022.07.29.** A BCM4354 unit updated to 2023.10.31 would
  lose WiFi unless the BCM4354 blob was already on the rootfs from a prior update.
- The U2W_AUTOKIT OTA chain effectively ends at 2023.10.31 (the only currently-offered build).

This confirms — contrary to an earlier "U-Boot/kernel are never updated" assumption — that the
boot region **is** updated OTA via `AutoBox.img`, but only on full updates, and gated by the
device's manufacture-date batch on the update server.

---

## 10. 2air Stock Firmware — Security Findings

The stock 2air firmware (2025.12) ships a **hardened** web interface compared to the A15W:

- Only `server.cgi` and `upload.cgi` are present — **none of the unauthenticated helper CGIs**
  found on A15W (no `config.cgi`, `sysinfo.cgi`, `logs.cgi`, `restart.cgi`, etc.).
- `upload.cgi` creates uploaded files with **0644 permissions (no execute bit)**, so even
  though a path-traversal write still works, uploaded CGI scripts cannot be executed (Boa
  returns 403). The A15W "upload a web shell" code-execution path does not work here.
- `server.cgi` uses the same HMAC key as the A15W web API.

### Stock dropbear / SSH state

The 2air ships dropbear **infrastructure but disabled**:

| Item | State |
|------|-------|
| `/etc/dropbear/dropbear_rsa_host_key` | Present |
| `/etc/dropbear/dropbear_dss_host_key` | Present |
| `/usr/sbin/dropbear` | **Binary absent** |
| `rcS` dropbear line | Commented out (`#dropbear`) |
| Root password | **Set** (DES hash) — not blank |

This contrasts with A15W units that have run custom firmware (dropbear present, blank/key-based
root login, and in some builds an unauthenticated telnet on port 23).

---

## 11. Firmware Encryption Keys (per product line)

Firmware `.img` files are AES-128-CBC encrypted; the key differs per product line. (Cross-
reference `firmware_encryption.md`.)

| Product | Firmware `.img` key |
|---------|---------------------|
| A15W / CPC200-CCPA | `AutoPlay9uPT4n17` |
| U2W (Carlinkit) | `CarPlay5KBP6ClJv` |
| U2W_AUTOKIT | `CarPlay5KBP6ClJv` (same as U2W) |
| U2AW | `CarPlayBbnF6ecFP` |
| U2AC | `CarPlayiHXF1o74i` |
| U2AC_AUTOKIT (2air) | `CarPlayiHXF1o74i` |

The 2air's modular HWFS components use a separate module-encryption key (`8e15c895KBP6ClJv`).
Because the firmware key is per-product, a foreign-keyed `.img` fails decryption in the target's
`ARMimg_maker`, and the update mechanism also matches the filename against
`<box_product_type>_Update.img`.

---

## 12. Board-Marking / Era Reference

Physical board markings observed across the family. All share the i.MX6UL SoC and MX25L12835F
SPI NOR; PCB layouts vary by revision.

| Board marking | Product | Era |
|---------------|---------|-----|
| A15 V01.5 (2019-12-25) | U2W V2 | 2019 |
| A15 V0A1 (20210108) | U2W V2 AUTOKIT | 2021 |
| A15 V07 (20231209) | U2W V3 AUTOKIT | 2023 |
| CP2A (20220508) | V4 AUTOKIT (USB-C form factor) | 2022 |
| 2AIR (20241031B) | V5 AUTOKIT (U2AC_AUTOKIT / "2air") | 2024 |
| X240126A-409, CCPA 202405 | A15W / CPC200-CCPA | 2024–2025 |

---

## References (within this repo)

- `hardware_platform.md` — A15W SoC/platform/USB/MFi detail
- `hardware_revisions.md` — A15W per-unit hardware revisions (WR2C / WN16)
- `version_comparison.md` — A15W firmware version history
- `firmware_encryption.md` — firmware image encryption detail
- `wifi_iw416_capabilities.md` — IW416 radio capabilities
