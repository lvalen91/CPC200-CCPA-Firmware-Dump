#!/bin/sh
########################
# radio_ap_up.sh - the OWNED SoftAP layer. Chipset-neutral by construction: it loads no driver,
# names no module, reads no firmware tree. It configures hostapd + udhcpd on whatever interface
# the seam hands it, and returns only once the AP is actually up.
#
# WHY THIS FILE EXISTS UNDER THIS NAME. Every CCPA already ships a VENDOR file at
# /script/start_bluetooth_wifi.sh, so testing that path for existence proves the file is there,
# not that it is ours - and running the vendor copy on a stripped box is destructive:
#
#   * it reads config through `riddleBoxCfg`, which the OCBM base install removes, and the calls
#     are NOT existence-guarded. With it gone `passwd` comes back empty and the script seds an
#     EMPTY wpa_passphrase into /etc/hostapd.conf. That is persistent, on flash, and hostapd
#     refuses to start with a zero-length WPA passphrase - so the AP is broken for every future
#     bring-up, not just this one.
#   * its WLANIP default is 192.168.50.2 - the box's OWN NCM address - and it then repoints the
#     DHCP pool at 192.168.50.100-200, which is the pool the NCM link is handing out. On a unit
#     with no UART that is the control channel you are standing on.
#   * its teardown (`close_bluetooth_wifi.sh`) does `EnsureProcessKill udhcpd`, a killall that
#     takes the NCM DHCP server down with it.
#
# An unambiguous name is the guard. radio_hal.sh calls THIS path and explicitly refuses to fall
# back to the vendor one. Do not "simplify" that by pointing the seam at start_bluetooth_wifi.sh.
#
# WHAT IS CHIPSET-NEUTRAL HERE. The interface name arrives in RADIO_WLAN_IF (radio_hal.sh
# enumerates it - it is an insmod parameter, not a constant: Realtek if2name=sta0, Broadcom
# iface_name=sta, and on Broadcom wlan0 does not exist until something creates it on top of
# sta0). The device-unique SSID is derived from that interface's own MAC in sysfs rather than
# from the vendor's `set_wifi_mac` output, so no vendor helper is required.
#
# USAGE  RADIO_WLAN_IF=<iface> sh radio_ap_up.sh [AP]
# EXIT   0 AP converged   1 failed to converge
########################
set -u
export PATH=/usr/sbin:/usr/bin:/sbin:/bin:/tmp/bin:$PATH
L="[radio_ap_up]"

IF=${RADIO_WLAN_IF:-wlan0}
[ -e "/sys/class/net/$IF" ] || { echo "$L interface $IF does not exist - the driver must be up first"; exit 1; }
# AND IT MUST ACTUALLY BE A WIRELESS INTERFACE. Existence alone is not enough: this script
# unconditionally reconfigures whatever it is handed, so `RADIO_WLAN_IF=ncm0` would sail through
# the check above and then `ifconfig ncm0 192.168.43.1` - re-addressing the NCM management link
# out from under the only way into a unit with no UART, before hostapd ever gets a chance to
# fail. The seam always passes an enumerated wireless interface, but "the caller is careful" is
# exactly the guarantee this file refuses to accept from anyone else, so it does not accept it
# for itself either. A cfg80211/wext netdev is identifiable without knowing the driver.
if [ ! -e "/sys/class/net/$IF/wireless" ] && [ ! -e "/sys/class/net/$IF/phy80211" ]; then
  echo "$L $IF is not a wireless interface - refusing to reconfigure it"; exit 1
fi

# Single-flight. NOT the original's `[ -f lock ] && exit 0`: a crash between touch and rm left a
# stale file that suppressed every later bring-up until reboot. mkdir is atomic, and a lock older
# than 120s is treated as abandoned.
# Same discipline as radio_hal.sh's lock, and for the same reasons. Reclaim on the holder being
# GONE rather than on age; check the reclaim mkdir actually succeeded, because two contenders can
# both observe one stale lock and the loser would otherwise proceed unlocked and then delete the
# winner's lock on its way out; and make the signal trap EXIT, because in ash a trapped signal
# runs the handler and then RESUMES - releasing the lock while the bring-up carries on is worse
# than never having taken it.
LOCK=/tmp/.radio_ap_lock
if ! mkdir "$LOCK" 2>/dev/null; then
  _holder=$(cat "$LOCK/pid" 2>/dev/null)
  if { [ -n "$_holder" ] && [ ! -d "/proc/$_holder" ]; } \
     || { [ -z "$_holder" ] && [ -n "$(find "$LOCK" -maxdepth 0 -mmin +20 2>/dev/null)" ]; }; then
    echo "$L lock held by ${_holder:-no live process} - reclaiming"
    rm -rf "$LOCK"
    mkdir "$LOCK" 2>/dev/null || { echo "$L lost the reclaim race - refusing to stack"; exit 1; }
  else
    echo "$L another AP bring-up is in flight (pid ${_holder:-unknown}) - refusing to stack"; exit 1
  fi
fi
echo $$ > "$LOCK/pid" 2>/dev/null
trap 'rm -rf "$LOCK"' EXIT
trap 'rm -rf "$LOCK"; trap - EXIT; exit 143' INT TERM HUP

[ -f /etc/hostapd.conf ] || { echo "$L /etc/hostapd.conf missing"; exit 1; }

# ---- device-unique name ---------------------------------------------------------------------
# ccpa-<last 4 hex of the AP interface MAC>, matching the BT name so one box presents one
# identity on both radios. Falls back to the serial when the MAC is unreadable. Read from sysfs,
# not from `set_wifi_mac`, so this works on a unit where that vendor helper was stripped.
#
# THIS OVERWRITES ssid= IN /etc/hostapd.conf, AND THAT IS ONLY SAFE BECAUSE OF WHO CALLS US.
# In the BT-only bridge role (wifi_ap:false — the GM head-unit deployment, where the adapter is
# just the Bluetooth radio and the MFi coprocessor) that same file holds the VEHICLE's ssid,
# written by the supervisor's apply_host_wifi_creds(), and it is what the box hands the phone in
# the iAP2 0x5703 handoff. Clobbering it there would point the phone at an AP that is never
# raised — a documented, session-killing failure that also poisons the next attempt.
# We are safe only because session_supervisor skips wifi_ap_on entirely when CARPLAY_WIFI_AP=0.
# So: do NOT make radio_hal call this verb unconditionally, and do NOT "fix" the supervisor's
# wifi_ap:false branch to fall through to here.
# The seam resolves the identity once and passes it in, so the SSID and the Bluetooth name come
# from ONE decision. The local derivation below is only for a direct/bench invocation; it reads
# the same persisted /etc/carplay_ident first, so the two paths cannot diverge.
NAME="${RADIO_BOX_NAME:-}"
if [ -z "$NAME" ] && [ -s /etc/carplay_ident ]; then NAME=$(head -1 /etc/carplay_ident); fi
if [ -z "$NAME" ]; then
  SUF=$(cat "/sys/class/net/$IF/address" 2>/dev/null | tr -d ':' | tr 'A-F' 'a-f' | sed 's/.*\(....\)$/\1/')
  case "$SUF" in ''|*[!0-9a-f]*) SUF="" ;; esac
  [ -n "$SUF" ] || SUF=$(cat /etc/serial_number 2>/dev/null | tr -cd '0-9a-fA-F' | tr 'A-F' 'a-f' | sed 's/.*\(....\)$/\1/')
  if [ -n "$SUF" ]; then NAME="ccpa-$SUF"; echo "$NAME" > /etc/carplay_ident 2>/dev/null
  else NAME="ccpa-0000"; fi
fi
SUF=${NAME#ccpa-}
sed -i "s/^ssid=.*/ssid=$NAME/" /etc/hostapd.conf
echo "$NAME" > /etc/wifi_name

# ---- passphrase: set only if MISSING, never blanked ------------------------------------------
# The vendor bug this guards against is unconditional rewriting from a config oracle that no
# longer exists. We only ever fill in an absent or too-short key, and never overwrite a good one.
PSK=$(sed -n 's/^wpa_passphrase=//p' /etc/hostapd.conf | head -1)
if [ "${#PSK}" -lt 8 ]; then
  PSK=$(cat /etc/wifi_password 2>/dev/null | tr -cd '[:print:]' | head -c 63)
  [ "${#PSK}" -lt 8 ] && PSK="carplay$SUF"
  if grep -q '^wpa_passphrase=' /etc/hostapd.conf; then
    sed -i "s/^wpa_passphrase=.*/wpa_passphrase=$PSK/" /etc/hostapd.conf
  else
    echo "wpa_passphrase=$PSK" >> /etc/hostapd.conf
  fi
  echo "$L wpa_passphrase was absent/too short - set a device-derived one"
fi

# ---- channel + band ---------------------------------------------------------------------------
ch=$(sed -n 's/^channel=//p' /etc/hostapd.conf | head -1)
[ -e /etc/wifi_use_24G ] && ch=6
case "$ch" in ''|*[!0-9]*) ch=36 ;; esac
# hostapd of this vintage has no ACS and refuses to start with no channel, so it is always pinned.
if [ "$ch" -ge 1 ] && [ "$ch" -le 14 ]; then
  grep -q "^hw_mode=a" /etc/hostapd.conf && sed -i "s/^hw_mode=a/hw_mode=g/" /etc/hostapd.conf
else
  grep -q "^hw_mode=g" /etc/hostapd.conf && sed -i "s/^hw_mode=g/hw_mode=a/" /etc/hostapd.conf
fi
sed -i "s/^channel=.*/channel=${ch}/" /etc/hostapd.conf
# The AP must serve the interface we were handed, whatever it is called.
if grep -q '^interface=' /etc/hostapd.conf; then
  sed -i "s/^interface=.*/interface=$IF/" /etc/hostapd.conf
else
  sed -i "1i interface=$IF" /etc/hostapd.conf
fi

# ---- AP address -------------------------------------------------------------------------------
# HARD RULE: never 192.168.50.x. That is the NCM management subnet; colliding with it takes out
# the only way into a unit that has no UART. An override that lands there is refused, not obeyed.
# CANONICALISE BEFORE COMPARING. The first version tested `case $_w in 192.168.50.*) refuse`
# against an accept pattern of `[0-9]*.[0-9]*.[0-9]*.[0-9]*`. In shell globbing `[0-9]*` is "one
# digit followed by ANYTHING", so that accept pattern admits almost anything - and, worse, the
# refusal is a literal string match while the kernel parses the address numerically. inet_aton()
# reads a leading-zero octet as OCTAL and an 0x octet as HEX, so `192.168.062.1` and
# `192.168.0x32.1` both sail past the refusal and both resolve to 192.168.50.1 - the NCM
# management subnet, on a unit that may have no other way in. Comparing the text was never going
# to be sound; parse it into canonical octets first and compare THAT.
_ip_canon() {  # echoes the canonical dotted quad, or nothing if it is not a plain IPv4 literal
  case "$1" in *.*.*.*) ;; *) return 1 ;; esac
  IFS=. read -r _a _b _c _d <<EOF
$1
EOF
  for _o in "$_a" "$_b" "$_c" "$_d"; do
    case "$_o" in
      ''|*[!0-9]*) return 1 ;;          # empty, hex, octal-with-x, or trailing junk
      0|[1-9]|[1-9][0-9]|[1-9][0-9][0-9]) ;;   # no leading zeros => no octal reinterpretation
      *) return 1 ;;
    esac
    [ "$_o" -le 255 ] 2>/dev/null || return 1
  done
  echo "$_a.$_b.$_c.$_d"
}

WLANIP=192.168.43.1
if [ -e /etc/wifi_ip ]; then
  _w=$(_ip_canon "$(cat /etc/wifi_ip 2>/dev/null)")
  if [ -z "$_w" ]; then
    echo "$L /etc/wifi_ip is not a plain IPv4 address - ignoring it"
  else
    case "$_w" in
      192.168.50.*) echo "$L /etc/wifi_ip resolves to $_w - that is NCM's subnet; ignoring it" ;;
      *) WLANIP=$_w ;;
    esac
  fi
fi
base=${WLANIP%.*}
sed -i "s/192\.168\.[0-9]*\.100/${base}.100/; s/192\.168\.[0-9]*\.200/${base}.200/" /etc/udhcpd.conf 2>/dev/null
# Point udhcpd at the interface we are actually serving.
grep -q '^interface' /etc/udhcpd.conf 2>/dev/null && sed -i "s/^interface.*/interface	$IF/" /etc/udhcpd.conf
rm -f /var/lib/udhcpd.leases

echo 1 > "/proc/sys/net/ipv6/conf/$IF/disable_ipv6" 2>/dev/null
ifconfig "$IF" "$WLANIP" netmask 255.255.255.0 mtu 1500 up || {
  echo "$L could not configure $IF"; exit 1; }

# ---- bring up ---------------------------------------------------------------------------------
test -e /tmp/bin/hostapd || cp /usr/sbin/hostapd /tmp/bin/hostapd 2>/dev/null
ps | grep -v grep | grep -qw hostapd || hostapd /etc/hostapd.conf -B >/tmp/radio_ap_hostapd.log 2>&1

# The AP's DHCP server, explicitly scoped. The stock script masked this behind a global udhcpd
# check, so the always-running NCM instance satisfied it and the AP's own server never started -
# the phone then associates and never gets an address. Match on the CONFIG PATH, not the process
# name: the NCM server is `busybox udhcpd -f /tmp/udhcpd_ncm.conf` and must never be mistaken for
# this one, nor killed with it.
#
# Redirect and detach. This udhcpd does not daemonise on this build (v0.9.9-pre, not busybox's),
# so left alone it inherits the caller's stdout and holds the pipe open - which makes an ssh
# invocation of the seam hang long after the script itself has finished, and would break the
# HAL's convergent-on-return contract for any caller that reads our output.
if ! ps | grep -v grep | grep -q "udhcpd .*etc/udhcpd.conf"; then
  setsid udhcpd /etc/udhcpd.conf </dev/null >/tmp/radio_ap_dhcp.log 2>&1 &
fi

# ---- converge ---------------------------------------------------------------------------------
# Return only when the AP is really serving: the seam's contract is that a 0 means up, so a
# caller may start its advertiser immediately afterwards.
# DHCP IS PART OF CONVERGENCE, NOT A FOOTNOTE. The first version gated only on hostapd and the
# address, and merely COUNTED udhcpd in the closing log line. A DHCP server that died on a config
# error therefore still produced "AP up" and exit 0 - and the caller, trusting that, would start
# its advertiser. The phone then associates and never gets an address, which is verbatim the
# stock-script failure the udhcpd block above exists to fix. Anything the AP needs in order to
# actually serve a client belongs in the predicate.
ap_serving() {
  ps | grep -v grep | grep -qw hostapd || return 1
  ifconfig "$IF" 2>/dev/null | grep -q "inet addr:$WLANIP" || return 1
  ps | grep -v grep | grep -q "udhcpd .*etc/udhcpd.conf" || return 1
  return 0
}
n=0
while [ "$n" -lt 50 ]; do ap_serving && break; n=$((n+1)); sleep 0.2; done
# Re-test the FULL predicate after the loop: falling out of it on the bound is not success, and
# re-checking only hostapd here would let a missing address or a dead DHCP server report as up.
if ! ap_serving; then
  echo "$L AP did not converge (ssid=$NAME ch=$ch if=$IF):"
  ps | grep -v grep | grep -qw hostapd \
    || echo "$L   hostapd is not running"
  ifconfig "$IF" 2>/dev/null | grep -q "inet addr:$WLANIP" \
    || echo "$L   $IF does not hold $WLANIP"
  ps | grep -v grep | grep -q "udhcpd .*etc/udhcpd.conf" \
    || { echo "$L   the AP DHCP server is not running - a phone would associate and get no address"
         tail -3 /tmp/radio_ap_dhcp.log 2>/dev/null | sed "s|^|$L     |"; }
  exit 1
fi
echo "$L AP up: ssid=$NAME ip=$WLANIP ch=$ch if=$IF dhcp=yes"
exit 0
