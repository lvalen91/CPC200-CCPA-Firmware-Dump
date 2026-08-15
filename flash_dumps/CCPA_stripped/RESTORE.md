# CPC200-CCPA backup (20260708_042628_vanilla_state)

State: **VANILLA** — the clean owned base. Stock projection stack (riddleBox) removed;
Carlinkit cruft/latent-trigger scripts deleted; all remaining scripts owned, **dead-code-free
and syntax-clean** (`sh -n` all pass, zero dead references, zero dangling refs); early
self-respawning UART console (`::sysinit` before rcS, 115200); radios on-demand (IW416
wlan_on/bt_on, slim scripts); NCM always-on. No backup files reside in rootfs.
Device: A15W "carlink", NXP i.MX6UL, kernel 3.14.52, sw 2025.10.15.1127, serial 2025.02.25.1521626a.

## Files
- CPC200-CCPA_full_nor_16MB.bin : complete 16MB SPI NOR image (flash @ 0x000000), mtd0+mtd1+mtd2
- mtd0.bin (uboot,  256K)  @ 0x000000
- mtd1.bin (kernel, 3328K) @ 0x040000
- mtd2.bin (rootfs, 12800K)@ 0x380000
- rootfs.tar.gz : live jffs2 rootfs contents (top-level dirs; excludes /proc /sys /dev /tmp)
- manifest.txt  : device state at backup time (process list, /script, /usr/sbin, gadget/radios)
- SHA256SUMS

## Notes
- mtd0 (uboot) and mtd1 (kernel) are **bit-identical** to prior backups (HAB-signed U-Boot +
  OTPMK-encrypted kernel are immutable and untouched) — verified by sha256.
- mtd2 (rootfs) is the vanilla owned base (this pass's endpoint).
- What changed from stock: removed check_mfg_mode/check_log_size/init_bluetooth_wifi/
  close_bluetooth_wifi/start_iap2_ncm + riddle.conf; slimmed attach_bluetooth (IW416-only) and
  start_bluetooth_wifi (AP-only, wlan0-DHCP bug fixed); rewrote start_main_service (242->~55 lines,
  all projection/vendor launches removed); added early_console.sh (Lever 1); ownership headers +
  dead-line removal across the retained scripts.

## SPI programmer restore (Macronix MX25L12835F, 16MB SOP8)
Write CPC200-CCPA_full_nor_16MB.bin to chip offset 0x000000 (full-chip erase+program+verify).
Or per-region: mtd0->0x0, mtd1->0x40000, mtd2->0x380000.
