#!/bin/sh
########################
# radio_detect.sh - resolve THIS unit's WLAN/BT platform, read-only, and write a sourceable
# descriptor to /tmp/radio_caps. Run at boot before anything wants a radio, and again after a
# driver load (the post-load facts are the ones nobody can predict).
#
# WHY THIS EXISTS. CCPA ships at least six WLAN/BT parts (RTL8822BS/CS, RTL8733BS, BCM4354/4335,
# BCM4358, NXP SD8987, NXP IW416) and - per the resources repo's
# 01_Firmware_Architecture/device_variants_and_conversion.md - ONLY the driver tarball for a
# unit's own chip ships in its rootfs. There is no fallback set. So every layer above this one
# has to stop hardcoding one chip's names and paths, and instead ask.
#
# THE RULE THIS SCRIPT OBEYS (same as tools/ncm_base_install.sh): never branch on a chipset
# whitelist for BEHAVIOUR - an unlisted variant falls off the end of one and gets nothing. The
# chip-name table below is for HUMANS and logs only; nothing acts on it. Behaviour is derived
# from what the unit itself carries:
#
#   the SDIO id          - hardware ground truth, readable before any driver loads
#   /lib/firmware/<tree> - exactly one tree per unit, so the tree names the vendor
#   the attach helper    - rtk_hciattach XOR brcm_patchram_plus XOR hciattach+fw_loader_linux
#   /script/init_bluetooth_wifi.sh - the VENDOR's own per-SDIO-id dispatcher, which every unit
#                          ships and which knows that unit's exact insmod/attach lines
#
# The vendor dispatcher is the authority for the bottom half (load the driver, attach the
# controller) precisely because it encodes per-chip knowledge we cannot re-derive - e.g. on
# 0xc822 and SD8987 the BT attach must wait for wlan0 or the chip wedges. We own everything
# ABOVE the driver; see radio_hal.sh for why delegating the vendor's AP/network half is not
# merely inadequate but destructive on a stripped box.
#
# DO NOT make this script mutate anything. It must be safe to run at any time, in any state,
# including from a diagnostic shell mid-session. Loading a driver to "find out" is exactly the
# side effect callers rely on not happening.
########################
set -u
OUT=${RADIO_CAPS:-/tmp/radio_caps}

# ---- 1. hardware identity -----------------------------------------------------------------
# GLOB the sdio device node. The vendor dispatcher hardcodes mmc0:0001:1 (init_bluetooth_wifi.sh
# line 21); that path is an enumeration accident, not a guarantee, and a unit that enumerates
# differently would silently read nothing and fall into the "unknown chip" branch.
SDIO_NODE=""
for d in /sys/bus/sdio/devices/*/; do [ -e "$d/device" ] && { SDIO_NODE="${d%/}"; break; }; done
SDIO_DEV=""; SDIO_VEN=""; SDIO_CLS=""
if [ -n "$SDIO_NODE" ]; then
  SDIO_DEV=$(cat "$SDIO_NODE/device" 2>/dev/null)
  SDIO_VEN=$(cat "$SDIO_NODE/vendor" 2>/dev/null)
  SDIO_CLS=$(cat "$SDIO_NODE/class"  2>/dev/null)
fi

# Human-readable only. NOTHING below branches on CHIP - if this says "unknown" the unit still
# works, because every decision after this point comes from the filesystem, not this table.
case "$SDIO_DEV" in
  0xb822) CHIP=realtek_rtl8822bs ;;
  0xc822) CHIP=realtek_rtl8822cs ;;
  0xb733) CHIP=realtek_rtl8733bs ;;
  0x4354|0x4335) CHIP=broadcom_bcm4354 ;;
  0x4358|0xaa31) CHIP=broadcom_bcm4358 ;;
  0x9149|0x9141) CHIP=nxp_sd8987 ;;
  0x9159) CHIP=nxp_iw416 ;;
  "")     CHIP=no_sdio_radio ;;
  *)      CHIP=unknown ;;
esac

# ---- 2. the unit's own support set ---------------------------------------------------------
# Exactly one firmware tree ships per unit, so its name identifies the vendor without a table.
FW_TREE=""
for t in /lib/firmware/*/; do
  [ -d "$t" ] || continue
  case "${t%/}" in */rtlbt|*/nxp|*/bcm) FW_TREE="${t%/}"; break ;; esac
done
[ -n "$FW_TREE" ] || { for t in /lib/firmware/*/; do [ -d "$t" ] && { FW_TREE="${t%/}"; break; }; done; }
KO_TARBALL=$(ls "$FW_TREE"/*_ko.tar.gz 2>/dev/null | head -1)

# ---- 3. BT attach helper -------------------------------------------------------------------
# Most-specific first. Helper PRESENCE is discriminating; general binary presence is NOT - this
# Realtek unit ships /usr/sbin/wl (a Broadcom-flavoured tool) and supplicant configs with no
# supplicant binary, so never infer the chip from a non-attach binary.
BT_ATTACH=""
for h in rtk_hciattach brcm_patchram_plus hciattach; do
  [ -x "/usr/sbin/$h" ] && { BT_ATTACH=$h; break; }
done
BT_PRELOAD=""
[ -x /usr/sbin/fw_loader_linux ] && BT_PRELOAD=fw_loader_linux

# ---- 4. which bring-up path this unit actually carries -------------------------------------
# Resolution order, and the reason for it:
#   owned  - this unit got the project's own scripts (the IW416 baseline). Proven, keep using.
#   vendor - the unit's factory dispatcher survived the strip (ncm_base_install.sh's is_radio()
#            guard protects it by explicit basename). It is the only on-unit-correct source for
#            five of the six variants.
#   none   - no path. Report it loudly; wireless is unavailable. WIRED projection is unaffected,
#            it never touches a radio.
BACKEND=none
if [ -f /script/wlan_on.sh ] && [ -f /script/bt_on.sh ]; then
  BACKEND=owned
elif [ -f /script/init_bluetooth_wifi.sh ] && [ -f /script/attach_bluetooth.sh ]; then
  BACKEND=mapped
fi
# load_bluetooth_wifi.sh is deliberately NOT accepted as a dispatcher: despite the generic name
# it is Realtek-only (hardcodes rtk_hciattach and 88x2bs.ko), so treating it as one would hand a
# Broadcom unit a Realtek bring-up.

WIRELESS=no
[ "$BACKEND" != none ] && [ -n "$KO_TARBALL" ] && WIRELESS=yes

# ---- 4b. ADOPT THE VENDOR'S MAPPING, NOT THEIR MECHANISM -----------------------------------
# BACKEND=mapped means: this unit's own dispatcher is the authority for WHAT to run, and we
# extract those command lines here. It does NOT mean we execute the dispatcher. Running it
# wholesale would re-import the very defects the owned scripts exist to fix:
#   - it forks BT attach and returns (`/script/attach_bluetooth.sh &`), which is exactly the
#     uncoordinated double-bring-up docs/40 recorded fighting itself for 7+ minutes;
#   - the Broadcom branches background brcm_patchram_plus the same way;
#   - the SD8987 branch can `reboot` the box from inside a radio bring-up, bypassing the
#     supervisor's reboot budget;
#   - it untars overlays into `/` and its BT health check is object-existence, which a dead
#     chip passes (docs/40 again).
# The per-chip command lines are the vendor's OBSERVATIONS - fleet-deployed and working - so we
# take them verbatim. The surrounding control flow is their CHOICE, and we do not.
#
# The extraction carries no chipset table: we intersect the modules in THIS unit's own tarball
# with the dispatcher's own insmod lines. A part nobody anticipated still resolves, because the
# unit ships a dispatcher that knows its own silicon and a tarball that names its own modules.
# REFUSE TO EMIT WHAT WE CANNOT FAITHFULLY EXECUTE. Single-line extraction only works while a
# vendor branch is closed-form. The Realtek branches are; the NXP and Broadcom ones are NOT -
# they carry shell variables resolved elsewhere in the dispatcher:
#     insmod /tmp/moal.ko "mod_para=$nxpWiFiConfig"
#     brcm_patchram_plus --patchram /lib/firmware/bcm/$bcmBTFirmware ... --bd_addr "$bcmBTMac" &
# Captured verbatim, those are not commands, they are text that happens to look like one. Worse,
# writing them into the descriptor makes `. /tmp/radio_caps` abort under `set -u` - status 2,
# which radio_hal defines as "already converged". A mapping we cannot execute must therefore
# become NO mapping, so the seam reports "unsupported" honestly and the caller can act on it.
# A trailing `&` is stripped rather than rejected: backgrounding is the vendor's control-flow
# choice, and radio_hal supplies its own detached-and-converged discipline in its place.
safe_cmd() {  # stdin -> stdout, empty if the line cannot be executed as captured
  _c=$(cat)
  _c=$(echo "$_c" | sed 's/[[:space:]]*&[[:space:]]*$//')          # vendor's backgrounding
  case "$_c" in
    *'$'*|*'`'*|*'"'*|*"'"*) echo "" ;;   # unresolved substitution or quoting we cannot honour
    *) echo "$_c" ;;
  esac
}

BT_LDISC=""; WLAN_MODS=""
for m in $(tar tzf "$KO_TARBALL" 2>/dev/null | sed 's|.*/||' | grep '\.ko$'); do
  case "$m" in *hci_uart*) BT_LDISC=$m ;; *) WLAN_MODS="$WLAN_MODS $m" ;; esac
done
WLAN_MODS=${WLAN_MODS# }

# Anchor on "insmod /tmp/" - the dispatcher's success/failure echo strings also contain the word
# insmod followed by the module name, and a greedy sed without this anchor picks the echo.
WLAN_INSMOD=""
for m in $WLAN_MODS; do
  l=$(grep -h "insmod /tmp/$m" /script/init_bluetooth_wifi.sh 2>/dev/null \
      | grep -v '^[[:space:]]*#' | head -1 \
      | sed 's|.*\(insmod /tmp/[^&|;}]*\).*|\1|' | sed 's/[[:space:]]*$//' | safe_cmd)
  [ -n "$l" ] && WLAN_INSMOD="$WLAN_INSMOD$l
"
done
# Attach helper invocation, anchored at line start so `if [ -e ... ]` tests and echo lines can
# never be mistaken for the command itself.
BT_ATTACH_CMD=""
[ -n "$BT_ATTACH" ] && BT_ATTACH_CMD=$(grep -hE "^[[:space:]]*$BT_ATTACH " /script/attach_bluetooth.sh 2>/dev/null \
                       | head -1 | sed 's/^[[:space:]]*//' | safe_cmd)
# Ordering constraint: some parts wedge if BT attaches before the WLAN driver is up. The vendor
# encodes this as a wait loop inside the attach script; its presence is the signal.
BT_AFTER_WLAN=0
grep -qE 'while \[ ! -e /sys/class/net/' /script/attach_bluetooth.sh 2>/dev/null && BT_AFTER_WLAN=1

# ---- 5. post-load facts: enumerate, never assume -------------------------------------------
# The WLAN interface name is an INSMOD PARAMETER that differs per chip - Realtek passes
# if2name=sta0, Broadcom iface_name=sta, and on Broadcom STA units wlan0 does not exist until
# `iw dev sta0 interface add wlan0` runs. So the name is discovered here, not declared upstream.
# A cfg80211/wext netdev is identifiable without knowing the driver: it has wireless/ or
# phy80211/ under its sysfs node.
WLAN_IF=""; WLAN_IFS=""
for n in /sys/class/net/*/; do
  [ -e "$n/wireless" ] || [ -e "$n/phy80211" ] || continue
  i=$(basename "$n"); WLAN_IFS="$WLAN_IFS $i"
  [ -n "$WLAN_IF" ] || WLAN_IF=$i
done
WLAN_IFS=${WLAN_IFS# }
WLAN_MAC=""
[ -n "$WLAN_IF" ] && WLAN_MAC=$(cat "/sys/class/net/$WLAN_IF/address" 2>/dev/null)

HCI_DEV=""
for b in /sys/class/bluetooth/hci*/; do [ -d "$b" ] && { HCI_DEV=$(basename "${b%/}"); break; }; done
BT_MAC=""
[ -n "$HCI_DEV" ] && BT_MAC=$(cat "/sys/class/bluetooth/$HCI_DEV/address" 2>/dev/null)

# ---- 6. emit ------------------------------------------------------------------------------
# Written via tmp+mv so a reader can never see a half-file. Consumers MUST treat a missing or
# malformed descriptor as "absent" and fall back to their compiled defaults, never crash on it.
{
  echo "RADIO_CHIP=$CHIP"
  echo "RADIO_SDIO_NODE=$SDIO_NODE"
  echo "RADIO_SDIO_VENDOR=$SDIO_VEN"
  echo "RADIO_SDIO_DEVICE=$SDIO_DEV"
  echo "RADIO_SDIO_CLASS=$SDIO_CLS"
  echo "RADIO_FW_TREE=$FW_TREE"
  echo "RADIO_KO_TARBALL=$KO_TARBALL"
  echo "RADIO_BT_ATTACH=$BT_ATTACH"
  echo "RADIO_BT_PRELOAD=$BT_PRELOAD"
  echo "RADIO_BT_UART=/dev/ttymxc2"
  echo "RADIO_BACKEND=$BACKEND"
  echo "RADIO_WLAN_MODULES=\"$WLAN_MODS\""
  echo "RADIO_BT_LDISC_KO=$BT_LDISC"
  echo "RADIO_BT_ATTACH_CMD=\"$BT_ATTACH_CMD\""
  echo "RADIO_BT_AFTER_WLAN=$BT_AFTER_WLAN"
  echo "RADIO_WLAN_INSMOD=\"$(echo "$WLAN_INSMOD" | sed '/^$/d' | tr '\n' ';')\""
  echo "RADIO_WIRELESS=$WIRELESS"
  echo "RADIO_WLAN_IF=$WLAN_IF"
  echo "RADIO_WLAN_IFS=\"$WLAN_IFS\""
  echo "RADIO_WLAN_MAC=$WLAN_MAC"
  echo "RADIO_HCI_DEV=$HCI_DEV"
  echo "RADIO_BT_MAC=$BT_MAC"
  echo "RADIO_DETECTED_AT=$(cut -d. -f1 /proc/uptime 2>/dev/null)"
} > "$OUT.new" 2>/dev/null && mv "$OUT.new" "$OUT"

[ "${1:-}" = -q ] || cat "$OUT"
# Exit 0 always: detection is diagnostic. "No radio" is a finding, not a failure, and this runs
# on the boot path where a non-zero exit would be mistaken for something worth reacting to.
exit 0
