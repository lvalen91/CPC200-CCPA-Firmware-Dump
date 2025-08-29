This repo will attempt to maintain a pair of Firmware IMG (used for updating).
And a EEPROM IC Flash Dump after the update is complete.

- Manufacturer: Carlinkit / MagicBox 
- Model: CPC200-CCPA

Also included is the Macronix (MXIC) Flash chip Spec PDF

CPC200-CCPA [On hand Device inspection]
hardware_platform:
- soc: NXP i.MX6UL (ARM Cortex-A7, single core, 528MHz)
- ram: Samsung K4B1G1646D-HCF8 (128MB DDR3L-800)
- flash: Macronix MX25L12835F (16MB SPI NOR, SOP8 package)
- wireless: Realtek RTL8822CS (WiFi 5 + BT 4.2 combo)

  confirmed_capabilities:
  - video_processing: hardware_decoder_4096px_width_max
  - audio_processing: unlimited_simultaneous
  - usb_interface: USB_2.0_480Mbps
  - wireless_performance: 866Mbps_WiFi_5_2T2R
  - memory_available: 123MB_after_kernel_overhead
