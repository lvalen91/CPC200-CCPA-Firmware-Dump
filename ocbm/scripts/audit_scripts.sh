#!/bin/sh
echo "===================== SYNTAX CHECK (sh -n) ====================="
for f in /etc/init.d/rcS /etc/mdev/udisk_insert.sh /script/*.sh; do
  if sh -n "$f" 2>/tmp/e; then echo "  OK    $f"; else echo "  ERR>> $f : $(cat /tmp/e)"; fi
done
echo
echo "============ DEAD REFERENCES to removed components ============="
# things that no longer exist on this stripped box:
PAT='ARMadb|AppleCarPlay|ARMiPhoneIAP2|ARMAndroidAuto|ARMHiCar|mdnsd|boxNetworkService|boxHUDServer|colorLightDaemon|boxImgTools|riddleBox|riddle_top|riddleBoxCfg|check_mfg_mode|check_log_size|init_bluetooth_wifi|close_bluetooth_wifi|start_iap2_ncm|cpu_UsageRate|check_udisk_log|fakeiOSDevice|fakeCarLife|fakeAADevice|AutomaticTest|hwSecret|/usr/sbin/boa|boa_old|wpa_supplicant|wpa_cli|brcm_patchram|rtk_hciattach|rtk_hci_uart|bcmdhd|88x2|8733bs|bcm4|BCM4'
for f in /etc/init.d/rcS /etc/mdev/udisk_insert.sh /script/*.sh; do
  m=$(grep -nE "$PAT" "$f" 2>/dev/null | grep -vE ':[[:space:]]*#')
  [ -n "$m" ] && { echo "--- $f ---"; echo "$m"; }
done
echo
echo "============ dangling file/script refs (test -e / call) ========"
for f in /script/*.sh /etc/init.d/rcS; do
  for ref in $(grep -oE '/script/[a-zA-Z0-9_]+\.sh|/usr/sbin/[a-zA-Z0-9_]+' "$f" 2>/dev/null | sort -u); do
    [ -e "$ref" ] || echo "  $f -> MISSING $ref"
  done
done
echo "AUDIT_DONE"
