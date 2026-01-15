Custom Firmware of CPC200-CCPA (A15W) 

Version: 2025.10.15.1127

Carlinkit Notes:
Bug Fixes

Actual:
- Patched upload.cgi path traversal exploit.
- Other webpage binary updates
- Disables/Uncomments dropbear SSH by replacing entire /etc/init.d folder and rcS file within
- New Projection Binaries. Potential New features or protocole messages (requires further testing)
So Far found

  HU_NEEDNAVI_STREAM          - Head unit requests nav video stream
  HU_NAVISCREEN_INFO          - Nav screen dimensions
  HU_NAVISCREEN_SAFEAREA_INFO - Safe display area
  HU_NAVISCREEN_VIEWAREA_INFO - Viewable area boundaries
  naviScreenInfo              - Screen info handler
  _naviScreenInfo %dx%d, %d FPS - Resolution/framerate format
  RequestNaviFocus            - Phone requests nav focus
  ReleaseNaviFocus            - Phone releases nav focus
  RequestNaviScreenFoucs      - Request screen focus (typo in firmware)
  ReleaseNaviScreenFoucs      - Release screen focus (typo in firmware)
  naviScreen                  - Nav screen reference

- Various other files replaced.

Custom Firmware Modifications:
- Enables Dropbear and added SFTP support
