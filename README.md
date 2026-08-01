# CPC200-CCPA Resources

Resources for the **Carlinkit / MagicBox CPC200-CCPA** (A15W) wireless
CarPlay / Android Auto adapter: stock & custom firmware, EEPROM flash dumps, the AutoKit app RE,
centralized documentation, and binary patches.

- **Manufacturer:** Carlinkit / MagicBox
- **Model:** CPC200-CCPA (A15W)

## Repository layout

| Path | Contents |
|---|---|
| **`carlinkit/`** | Vendor-original material (as shipped) |
| `carlinkit/autokit/` | AutoKit app RE — `original/` (decompiled, unpacked, old) + `reconstruction/` |
| `carlinkit/firmware_stock/` | Stock update images (`A15W_Update_*.img`) |
| **`custom/`** | Custom modifications |
| `custom/firmware/` | Custom firmware builds + recovery |
| `custom/scripts/` | Custom scripts / script changes |
| `custom/patches/` | Binary patches - WIP |
| `custom/docs/` | Custom-firmware docs (USB-NCM quick start, etc.) |
| **`web_interface/`** | Replacement web UI for the adapter's Boa config server — vanilla-JS drop-in (~70 KB) + SSH installer + unpacked OEM backup; requires the SSH custom firmware. See [`documentation/01_Firmware_Architecture/web_interface.md`](documentation/01_Firmware_Architecture/web_interface.md) |
| **`flash_dumps/`** | Raw 16 MB SPI flash IC dumps, date-versioned (stock + post-custom `.ncm`), **plus one non-CCPA variant — see below** |
| **`documentation/`** | Centralized research docs (numbered sections + `_evidence/`, `_index/`) |
| **`hardware/`** | Device reference: `cpc200-ccpa_spec.md`, `c2air_v821_spec.md`, `MX25L12835F_datasheet.pdf` (flash), `MFI337S3959_iPod_Auth_Coprocessor_2.0C_spec.pdf` (Apple MFi 2.0C auth-coprocessor spec), `photos/` |

> Repo origin/purpose: maintain a pair of firmware images (for updating) and an EEPROM flash dump
> taken after the update completes. That core remains under `carlinkit/firmware_stock/` + `flash_dumps/`.

## Hardware platform (on-hand device inspection)

- **SoC:** NXP i.MX6UL (ARM Cortex-A7, single core, 528 MHz) — *fake Atmel branding on package*
- **RAM:** Samsung K4B1G1646D-HCF8 (128 MB DDR3L-800)
- **Flash:** Macronix MX25L12835F (16 MB SPI NOR, SOP8) — datasheet in `hardware/`
- **Wireless:** Realtek RTL8822CS (WiFi 5 + BT 4.2 combo)

**Confirmed capabilities:** HW video decode (≤4096 px wide) · unlimited simultaneous audio ·
USB 2.0 (480 Mbps) · WiFi 5 2T2R (866 Mbps) · 123 MB RAM available after kernel overhead.

Full spec: [`hardware/cpc200-ccpa_spec.md`](hardware/cpc200-ccpa_spec.md).

## Second platform: C2Air (Allwinner V821, RISC-V)

One dump in this repo is **not** a CPC200-CCPA and shares no lineage with the rest of the
material. A "C2Air"-branded adapter turned out to be a completely different design:

- **SoC:** Allwinner V821 (`sun300iw1p1`) — **32-bit RISC-V** (RV32IMAFDC + Andes `xv5`), not ARM
- **RAM:** 64 MB · **Flash:** XTX XT25F128F-W (16 MB SPI NOR, SOP8)
- **Wireless:** AICSemi AIC8800 — **WiFi 6 (802.11ax)**, 5 GHz
- **Firmware:** Linux 5.4.220 · musl · Tina Linux 5.0 / OpenWrt 21.02 · ODM **Liaoyuan**, not HeWei
- **CarPlay only** (`ly_link_type=cp`); HiCar DHCP config ships but is unused

Nothing is cross-flashable with the A15W in either direction — different instruction set. The
"2air" name is shared with the i.MX6UL `U2AC_AUTOKIT` documented elsewhere in this repo; they are
unrelated hardware. **Identify these adapters by SoC, not by box.**

- Dump: [`flash_dumps/c2air_v821_2026.05.14/`](flash_dumps/c2air_v821_2026.05.14/)
- Analysis: [`documentation/01_Firmware_Architecture/c2air_v821_platform.md`](documentation/01_Firmware_Architecture/c2air_v821_platform.md)
- Hardware sheet: [`hardware/c2air_v821_spec.md`](hardware/c2air_v821_spec.md)
