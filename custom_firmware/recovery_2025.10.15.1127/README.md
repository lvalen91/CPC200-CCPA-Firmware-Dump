#Attempts recovery of a softBrick CPC200-CCPA

## What it does

- Attempts to remove ALL non-standard scripts
- Replaces /etc/init.d/rcs with known good
- Clears all configuration files within /etc/
- Puts a known good riddle default .conf and runs the restoreOld riddleBoxCfg
- Detects WLAN Chipset and applies the correct firmware BLOB.
- - - This should correct any potential issues caused by misconfiguration

## Maintains
- telnet and SSH Access
- - - Your computer might need its .SSH keys cleared to gain ssh access again. Due to a mismatch

## Adds
- Custom adapter website replacement. Could help clear some issues.

## How to install

- Same as all other firmware files.

1. Place A15W_Update.img on a MBR FAT32 USB Storage Stick
2. Connect USB to Adapter
3. Connect adapter to a walloutlet with no other devices connected to it.
4. When flashing of RED/BLUE lights begins - - The 'update' has started.
5. Wait for flashing to stop. Blue light might remain on indicating a wifi device is connected.
6. Wait 1 minutes
7. Unplug adapter from power and attempt to use as before.

## If using apps like Carlink, LIVI, etc

- THe adapter needs to be fully initalized. So ensure whatever app you use. That it does not conduct a minimal init.
- Carplay and Android Auto should work. If it does not. The issue is likely the app your using, or the phone themselves.
- WHile the adapter is 'updating' use that time to clear/remove the adapter from your phone. Remove it from Android Auto known devices etc etc.

# Tested on my own adapter. It worked to clear out random junk and corrupted state.
# THe test adapter was operational without any observed issues. 
