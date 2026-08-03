# Runtime evidence — C2Air V821 (captured 2026-08-01, live)

Raw captures from the running unit after root shells were obtained (dropbear over WiFi, then a
USB-serial console). See the analysis in
[`../../../documentation/01_Firmware_Architecture/c2air_v821_runtime_and_access.md`](../../../documentation/01_Firmware_Architecture/c2air_v821_runtime_and_access.md).

First-pass (SSH over WiFi):
| File | Contents |
|---|---|
| `dmesg_2026-08-01.txt` | Full kernel boot log (635 lines) — the log the mis-clocked UART never produced. Contains the `uartclk 192000000 beyond range` line, `aic8800d80` WiFi/BT bring-up, and the 10-partition MTD map. |
| `proc_system.txt` | `/proc/cmdline`, version, cpuinfo (`rv32imafdc`), meminfo, lsmod, mounts, df, `/proc/mtd`. |
| `uart_console_diagnosis.txt` | `/proc/consoles`, `/proc/tty/drivers`, console-open fd map, write-to-`/dev/console` test — proof the console is bound to `ttyS0` (major 251, `uart-ng`). |
| `processes_network.txt` | Full `ps`, listening ports, `ifconfig`, live `hostapd.conf`/`p2p.conf`, `/mnt/customer/app` listing. |
| `device_control_sysfs.txt` | `ly_misc_dev` control sysfs (button, LEDs, wifi_en, ly_efex…), mounts (redacted). |

Deep probe (USB-serial console, app disabled — the `probe_*` set):
| File | Contents |
|---|---|
| `probe_secureboot.txt` | boot0 `eGON.BT0` magic, `ANDROID!` headers, U-Boot env secure flags — **secure boot NOT enforced**. |
| `probe_update.txt` | `/sbin/update` + `swupdate_cmd.sh` — update accepts **MD5 + magic + `ly6239`, no signature**. |
| `probe_mfi.txt` | `/dev/i2c-1`, `i2cdetect` — **hardware MFi coprocessor ACKing at 0x10/0x11**. |
| `probe_storage.txt` | `/proc/mtd`, mounts, per-partition usage, `private` (mtd7)=`display=1`. |
| `probe_ram.txt` / `probe_mem.txt` | meminfo/free/CMA; `/dev/mem`,`kcore` absent → no live RAM dump. |
| `probe_runtime.txt` | kernel threads/daemons alive with the app off. |
| `probe_tee_keys.txt` | no OP-TEE/TEE; `raaservice` cert store in flash MTD. |

**Excluded on purpose (per-device secrets):** `carplay.key`, `raa.crt` contents, MAC addresses, the
SID, and the paired-phone name — redacted here and kept out of the repo. They identify/authorize
this specific unit.
