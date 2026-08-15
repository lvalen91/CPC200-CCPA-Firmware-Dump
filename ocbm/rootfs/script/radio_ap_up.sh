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

# Single-flight. NOT the original's `[ -f lock ] && exit 0`: a crash between touch and rm left a
# stale file that suppressed every later bring-up until reboot. mkdir is atomic, and a lock older
# than 120s is treated as abandoned.
LOCK=/tmp/.radio_ap_lock
if ! mkdir "$LOCK" 2>/dev/null; then
  if [ -n "$(find "$LOCK" -maxdepth 0 -mmin +2 2>/dev/null)" ]; then
    echo "$L stale lock (>2min) - reclaiming"; rm -rf "$LOCK"; mkdir "$LOCK" 2>/dev/null
  else
    echo "$L another AP bring-up is in flight - refusing to stack"; exit 1
  fi
fi
trap 'rm -rf "$LOCK"' EXIT INT TERM

[ -f /etc/hostapd.conf ] || { echo "$L /etc/hostapd.conf missing"; exit 1; }

# ---- device-unique name ---------------------------------------------------------------------
# ccpa-<last 4 hex of the AP interface MAC>, matching the BT name so one box presents one
# identity on both radios. Falls back to the serial when the MAC is unreadable. Read from sysfs,
# not from `set_wifi_mac`, so this works on a unit where that vendor helper was stripped.
SUF=$(cat "/sys/class/net/$IF/address" 2>/dev/null | tr -d ':' | tr 'A-F' 'a-f' | sed 's/.*\(....\)$/\1/')
case "$SUF" in ''|*[!0-9a-f]*) SUF="" ;; esac
[ -n "$SUF" ] || SUF=$(cat /etc/serial_number 2>/dev/null | tr -cd '0-9a-fA-F' | tr 'A-F' 'a-f' | sed 's/.*\(....\)$/\1/')
[ -n "$SUF" ] || SUF=0000
NAME="ccpa-$SUF"
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
WLANIP=192.168.43.1
if [ -e /etc/wifi_ip ]; then
  _w=$(cat /etc/wifi_ip 2>/dev/null)
  case "$_w" in
    192.168.50.*) echo "$L /etc/wifi_ip is $_w - that is NCM's subnet; ignoring it" ;;
    [0-9]*.[0-9]*.[0-9]*.[0-9]*) WLANIP=$_w ;;
    *) : ;;
  esac
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
n=0
while [ "$n" -lt 50 ]; do
  ps | grep -v grep | grep -qw hostapd && ifconfig "$IF" 2>/dev/null | grep -q "inet addr:$WLANIP" && break
  n=$((n+1)); sleep 0.2
done
if ! ps | grep -v grep | grep -qw hostapd; then
  echo "$L hostapd did not stay up (ssid=$NAME ch=$ch if=$IF)"; exit 1
fi
echo "$L AP up: ssid=$NAME ip=$WLANIP ch=$ch if=$IF dhcp=$(ps|grep -v grep|grep -c 'udhcpd .*etc/udhcpd.conf')"
exit 0
