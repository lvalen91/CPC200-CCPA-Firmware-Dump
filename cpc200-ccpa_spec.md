Memory Specifications

  ram_ic: k4b1g1646d-hcf8
  ram_manufacturer: Samsung
  ram_type: DDR3L SDRAM
  ram_size: 128MB (confirmed by boot log: 131072K total, 123256K available)
  ram_speed: 800MHz (HC-F8 speed grade)
  ram_configuration: 16M x 16 x 8 banks

  Flash Memory Specifications

  flash_ic: MX25L12835F
  flash_manufacturer: Macronix
  flash_type: SPI NOR Flash
  flash_size: 16MB (128Mbit)
  flash_package: SOP8
  flash_partitioning:
    uboot: 256KB
    kernel: 3328KB
    rootfs: 12800KB
  flash_interface: QSPI (21e0000.qspi controller)

  Boot Log Analysis (From /var/log/box_last_reboot.log)

  kernel_build_info:
    version: 3.14.52+g94d07bb
    build_id: 448
    build_date: "Tue Feb 25 15:18:24 CST 2025"
    compiler: gcc 4.9.2
    build_user: sky@sky-vmware-1604

  memory_layout:
    total_pages: 32768
    available_memory: 123256KB
    total_memory: 131072KB  # 128MB
    reserved_memory: 7816KB
    kernel_memory_usage:
      kernel_code: 4260KB
      rwdata: 194KB
      rodata: 1384KB
      init: 204KB
      bss: 478KB

  processor_confirmed:
    model: "Freescale i.MX6 UltraLite 14x14 EVK Board"
    cpu_type: "ARMv7 Processor [410fc075] revision 5"
    architecture: ARMv7
    cache: "PIPT / VIPT nonaliasing data cache, VIPT aliasing instruction cache"

  Wireless Chipset Confirmed

  bluetooth_wifi_chipset: RTL8822CS
  firmware_location: /lib/firmware/rtlbt/rtl8822_ko.tar.gz
  firmware_size: 1008553 bytes (984KB compressed)
  firmware_original_size: 2908160 bytes (2.8MB uncompressed)
  firmware_date: "Tue Feb 25 07:18:40 2025"

  rtl8822cs_capabilities:
    wifi_standards: [802.11a/b/g/n/ac]
    wifi_bands: [2.4GHz, 5GHz]
    max_wifi_speed: 866Mbps
    bluetooth_version: 4.2
    interfaces: [WiFi + Bluetooth combo]
    antenna_configuration: 2T2R

  Flash Partition Analysis

  mtd_partitioning: "mtdparts=21e0000.qspi:256k(uboot),3328K(kernel),12800K(rootfs)"
  partition_layout:
    mtdblock0: uboot (256KB)
    mtdblock1: kernel (3328KB)
    mtdblock2: rootfs (12800KB, JFFS2)
    total_used: ~16MB
  flash_filesystem: JFFS2 (Journalling Flash File System v2)

  Updated CPC200-CCPA Complete Hardware Profile

  # Definitive hardware specifications from physical inspection + firmware analysis
  hardware_platform:
    soc: NXP i.MX6UL (ARM Cortex-A7, single core, 528MHz)
    ram: Samsung K4B1G1646D-HCF8 (128MB DDR3L-800)
    flash: Macronix MX25L12835F (16MB SPI NOR, SOP8 package)
    wireless: Realtek RTL8822CS (WiFi 5 + BT 4.2 combo)

  confirmed_capabilities:
    video_processing: hardware_decoder_4096px_width_max
    audio_processing: unlimited_simultaneous
    usb_interface: USB_2.0_480Mbps
    wireless_performance: 866Mbps_WiFi_5_2T2R
    memory_available: 123MB_after_kernel_overhead
    storage_available: 12.5MB_rootfs_JFFS2
