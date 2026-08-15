#!/bin/sh
########################
# radio_hal.sh - the chipset-neutral radio seam. Everything above this line (session_supervisor,
# the Rust daemons) asks for "wifi up" / "bt up" and never names a chip, a module, a firmware
# path or an attach helper.
#
# VERBS   probe | status | wifi_ap_on | wifi_ap_off | bt_on | bt_off
# EXIT    0 converged now   1 ran and failed   2 already converged   3 unsupported on this unit
#
# ---------------------------------------------------------------------------------------------
# WHY THE VERB AND SCRIPT NAMES LOOK LIKE THIS. session_supervisor's teardown runs inside a
# detached `sh -c` whose own argv is visible to its own pkill patterns. That is a real bug this
# project already paid for once (2026-08-01: a plain `pkill -f` SIGKILLed the teardown subshell
# before it reached wlan_off, orphaning hostapd, which kept beaconing). So the name of this
# script and every verb MUST avoid the substrings the supervisor pattern-matches on:
# airplayd, rx-connect, carplay-wireless, ocbmd, hostapd. Do not rename a verb without
# re-checking every pgrep/pkill pattern in session_supervisor.sh.
#
# THREE CONTRACT CLAUSES, each bought with a real failure:
#
#   1. CONVERGENT ON RETURN, NEVER FORK-AND-RETURN. When an `_on` verb returns 0, the radio is
#      up AND RESPONSIVE, and no work this verb started is still in flight. The vendor's own
#      dispatcher violates this (`/script/attach_bluetooth.sh &`, and the Broadcom branch
#      backgrounds brcm_patchram_plus) - that is precisely the uncoordinated double-bring-up
#      docs/40 recorded fighting itself for 7+ minutes on real hardware, because the caller
#      exec'd its advertiser while attach was still mid-retry. Callers rely on the return.
#
#   2. RESPONSIVENESS, NOT EXISTENCE. `hci0` can appear ~100ms after attach with firmware that
#      never loaded, and every later command then times out (docs/40). Convergence is a real HCI
#      round-trip - read the local name back under a timeout - not a node existence test. The
#      vendor's check is `hciconfig hci0` existence, which a dead chip passes.
#
#   3. NEVER REBOOT, NEVER TOUCH SESSION DAEMONS. The vendor SD8987 branch can reboot the box
#      from inside a radio bring-up; that would bypass session_supervisor's escalation ladder
#      and its persistent reboot budget. A backend that believes only a reboot can recover says
#      so with an exit code and lets the layer that owns reboot policy decide. Likewise this
#      script never signals airplayd / rx-connect / carplay-wireless / ocbmd: it cannot know
#      whether a live session is wired-owned, and the supervisor's conditional-reap logic
#      (docs/36 #1.4) exists exactly to make that distinction.
#
# WHAT WE TAKE FROM CARLINKIT AND WHAT WE DO NOT. radio_detect.sh extracts this unit's own
# insmod/attach command lines from its own vendor dispatcher. Those lines are the vendor's
# OBSERVATIONS - fleet-deployed, working, and not re-derivable by us for parts we do not own -
# so we run them verbatim. Their surrounding control flow is their CHOICE, and it carries the
# defects above, so we supply our own. We never execute init_bluetooth_wifi.sh wholesale.
#
# THE AP LAYER IS ALWAYS OURS. Never delegate it. On a stripped box the vendor's
# start_bluetooth_wifi.sh reads config through riddleBoxCfg, which the OCBM base removes; with
# it gone that script seds an EMPTY wpa_passphrase into /etc/hostapd.conf - persistent, on
# flash - and falls back to WLANIP=192.168.50.2, which is NCM's own address, then repoints the
# DHCP pool onto the NCM subnet. Its teardown killalls every udhcpd, including NCM's. That is
# the control channel you are standing on.
########################
set -u
export PATH=/usr/sbin:/usr/bin:/sbin:/bin:/tmp/bin:$PATH

VERB="${1:-}"
CAPS=/tmp/radio_caps
WLAN_STATE=/tmp/.radio_wlan_state
BT_STATE=/tmp/.radio_bt_state
LOGP="[radio_hal]"

log() { echo "$LOGP $*"; }

# Single-flight per subsystem. mkdir is the portable atomic test-and-set on busybox (no flock
# dependency). A concurrent second bring-up must not run - the supervisor can manufacture
# overlapping edges (a respawn synthesizes a host-present edge), and stacking two insmod/rmmod
# sequences on one module is the driver-wedge class this guards against.
#
# A lock MUST be reclaimable. An earlier version had no staleness handling and no trap: a killed
# invocation (an ssh session timing out mid-bring-up is enough) left the directory behind and
# every later call refused to run, so wireless could never come up again until reboot. A lock is
# an optimisation against stacking, never a way to permanently disable a radio.
lock_take() {  # $1 = subsystem
  _lk="/tmp/.radio_lock_$1"; _n=0
  while ! mkdir "$_lk" 2>/dev/null; do
    if [ -n "$(find "$_lk" -maxdepth 0 -mmin +2 2>/dev/null)" ]; then
      log "lock $1 is stale (>2min) - reclaiming"; rm -rf "$_lk"; continue
    fi
    _n=$((_n+1)); [ "$_n" -ge 60 ] && { log "lock $1 busy >30s - refusing to stack bring-ups"; return 1; }
    sleep 0.5
  done
  # Release on any exit path, including signals - otherwise a killed verb strands the lock.
  trap 'rm -rf "/tmp/.radio_lock_'"$1"'" 2>/dev/null' EXIT INT TERM HUP
  return 0
}
lock_drop() { trap - EXIT INT TERM HUP; rm -rf "/tmp/.radio_lock_$1" 2>/dev/null; }

# Atomic so a reader can never see a half-written descriptor. Consumers (the Rust daemons) must
# treat a missing or malformed file as "absent" and fall back to their compiled defaults - this
# file is an override channel, never a hard dependency.
publish() {  # $1 = state file, rest = KEY=VALUE...
  _f=$1; shift
  { for kv in "$@"; do echo "$kv"; done; } > "$_f.new" 2>/dev/null && mv "$_f.new" "$_f"
}

caps() {
  # Refresh the descriptor unless a caller pre-loaded one. Detection is read-only and cheap.
  [ -x /script/radio_detect.sh ] && sh /script/radio_detect.sh -q >/dev/null 2>&1
  [ -f "$CAPS" ] || { log "no descriptor at $CAPS and radio_detect.sh is missing"; return 1; }

  # A MALFORMED DESCRIPTOR MUST NEVER ABORT THIS SCRIPT. Measured: an extracted vendor line
  # carrying an unexpanded shell variable - e.g. the NXP branch's
  #     insmod /tmp/moal.ko "mod_para=$nxpWiFiConfig"
  # - makes `.` fail under `set -u` with status **2** in ash/dash, and 2 is this script's
  # "already converged" code. The verb would exit before the backend switch, reporting SUCCESS,
  # and the caller would start its advertiser over radios that were never brought up. That is
  # the silent-failure class this whole seam exists to eliminate, so it is not acceptable to
  # merely "usually" avoid it: source defensively and then require what we depend on.
  set +u
  . "$CAPS" 2>/dev/null
  set -u
  # Every key this script consumes gets a defined default, so a descriptor written by an older
  # or partially-failed detect can degrade to "unsupported" instead of killing the shell.
  : "${RADIO_BACKEND:=none}"   "${RADIO_WIRELESS:=no}"      "${RADIO_CHIP:=unknown}"
  : "${RADIO_SDIO_DEVICE:=}"   "${RADIO_SDIO_VENDOR:=}"     "${RADIO_FW_TREE:=}"
  : "${RADIO_KO_TARBALL:=}"    "${RADIO_WLAN_MODULES:=}"    "${RADIO_WLAN_INSMOD:=}"
  : "${RADIO_BT_LDISC_KO:=}"   "${RADIO_BT_ATTACH_CMD:=}"   "${RADIO_BT_ATTACH:=}"
  : "${RADIO_BT_PRELOAD:=}"    "${RADIO_BT_PRELOAD_CMD:=}"  "${RADIO_BT_AFTER_WLAN:=0}"
  : "${RADIO_BT_UART:=/dev/ttymxc2}"
  return 0
}

# Enumerate the wireless interface rather than assuming a name. The name is an insmod PARAMETER
# that differs per chip (Realtek if2name=sta0, Broadcom iface_name=sta), and on Broadcom wlan0
# does not exist until something explicitly creates it on top of sta0. A cfg80211/wext netdev is
# identifiable without knowing the driver: it carries wireless/ or phy80211/ in sysfs.
#
# NOTE THE VARIABLE NAMES. These helpers are called from inside caller loops, and sh has no
# function scope, so a bare or short loop variable here silently overwrites the caller's. That is
# not theoretical: wlan_iface() once used `_n`, the BT wait loop used `_n` as its counter, and
# calling the helper replaced the counter with a sysfs path — `_n=$((_n+1))` then failed with an
# arithmetic syntax error. It only ever reached that line when NO interface existed (otherwise
# the caller's `&& break` fired first), i.e. exclusively in the BT-only bridge role. Keep these
# names distinctive.
wlan_iface() {
  for _wif_d in /sys/class/net/*/; do
    [ -e "$_wif_d/wireless" ] || [ -e "$_wif_d/phy80211" ] || continue
    basename "$_wif_d"; return 0
  done
  return 1
}

hci_dev() {
  for _hcid_d in /sys/class/bluetooth/hci*/; do
    [ -d "$_hcid_d" ] && { basename "${_hcid_d%/}"; return 0; }
  done
  return 1
}

# Clause 2: a real HCI round-trip under a timeout. `hciconfig <dev>` merely existing proves
# nothing - the whole point. Single-shot: used inside the convergence poll, where a fast
# negative is what we want because we are about to poll again anyway.
bt_responsive() {  # $1 = hci dev
  timeout 5 hciconfig "$1" name 2>/dev/null | grep -q "Name:"
}

# Confirmed variant - used for DECISIONS, never inside a poll loop.
#
# MEASURED on an RTL8822CS: a healthy, attached controller intermittently times out a name read
# - about one attempt in four, with the next attempts a second later succeeding. So the probe is
# not a clean oracle, and the two questions we ask it deserve DIFFERENT bars:
#
#   "did my attach succeed?"        -> strict. One real round-trip, poll until it answers.
#   "is this radio already up?"     -> reluctant. A false negative here does not merely misreport;
#                                      it sends us into rmmod + GPIO reset + re-attach against a
#                                      working chip, which during a live session drops the phone.
#
# Hence: be strict to declare success, reluctant to destroy. Five spaced attempts cost up to a
# few tens of seconds in the rare all-miss case, and only on the decision path.
bt_responsive_confirmed() {  # $1 = hci dev
  _t=0
  while [ "$_t" -lt 5 ]; do
    bt_responsive "$1" && return 0
    _t=$((_t+1)); [ "$_t" -lt 5 ] && sleep 2
  done
  return 1
}

ap_running() { pgrep -x hostapd >/dev/null 2>&1 || ps | grep -v grep | grep -qw hostapd; }

# THE BOX IDENTITY. Wi-Fi and Bluetooth MUST advertise the same ccpa-<4hex>, and the only way to
# guarantee that is to decide it ONCE and persist it.
#
# Deriving it per-radio does not work, and the failure is not hypothetical. The natural sources
# disagree: this unit's WLAN MAC is 00:e0:4c:98:0a:6c (-> ccpa-0a6c) and its BT controller is
# 48:8f:4c:e0:ac:2b (-> ccpa-ac2b). So which name a radio gets would depend on which radio
# happened to be up when it was asked — and in the BT-only bridge role (wifi_ap:false) the WLAN
# driver is never loaded at all, so BT would silently take the other name. Worse, the answer
# could change between boots, and the phone stores the name in its bonded record.
#
# So: first successful derivation wins and is written to /etc/carplay_ident; everything after
# reads that file. One small flash write, once per box.
IDENT_FILE=/etc/carplay_ident
box_name() {  # $1 = optional hci dev, used only as a late fallback source
  if [ -s "$IDENT_FILE" ]; then head -1 "$IDENT_FILE"; return 0; fi
  _sfx=""
  # Preference order is about STABILITY, not availability: the Wi-Fi MAC is what the SSID has
  # historically been derived from, so a box that already has a name keeps it.
  _wi=$(wlan_iface 2>/dev/null) && _sfx=$(cat "/sys/class/net/$_wi/address" 2>/dev/null | tr -d ':' | tr 'A-F' 'a-f' | sed 's/.*\(....\)$/\1/')
  case "$_sfx" in ''|*[!0-9a-f]*) _sfx="" ;; esac
  # The vendor helper reports the Wi-Fi MAC without the interface being up, which is exactly the
  # bridge-role case. Kept by the base install's radio guard where it exists.
  if [ -z "$_sfx" ] && command -v set_wifi_mac >/dev/null 2>&1; then
    _sfx=$(set_wifi_mac 2>/dev/null | grep -oE '([0-9A-Fa-f]{2}:){5}[0-9A-Fa-f]{2}' | head -1 \
           | tr -d ':' | tr 'A-F' 'a-f' | sed 's/.*\(....\)$/\1/')
    case "$_sfx" in ''|*[!0-9a-f]*) _sfx="" ;; esac
  fi
  if [ -z "$_sfx" ] && [ -n "${1:-}" ]; then
    _sfx=$(cat "/sys/class/bluetooth/$1/address" 2>/dev/null | tr -d ':' | tr 'A-F' 'a-f' | sed 's/.*\(....\)$/\1/')
    case "$_sfx" in ''|*[!0-9a-f]*) _sfx="" ;; esac
  fi
  [ -n "$_sfx" ] || _sfx=$(cat /etc/serial_number 2>/dev/null | tr -cd '0-9a-fA-F' | tr 'A-F' 'a-f' | sed 's/.*\(....\)$/\1/')
  # Do NOT persist a placeholder: if every source failed we want the next call to try again
  # rather than freezing ccpa-0000 into flash forever.
  [ -n "$_sfx" ] || { echo "ccpa-0000"; return 0; }
  echo "ccpa-$_sfx" > "$IDENT_FILE" 2>/dev/null
  echo "ccpa-$_sfx"
}

# Name the controller. The owned bt_on.sh has always done this; the mapped path did not, which
# left a non-IW416 unit advertising its chip default (an RTL8822CS came up as "RTK_BT_4.2") while
# its SoftAP was correctly named ccpa-<4hex> — one box, two identities.
#
# Two mechanisms, both needed: /etc/.custom_bluetooth_name is the flag bluetoothDaemon honours
# when it applies a custom name (without it the daemon BLANKS the adapter name during init), and
# the direct hciconfig set covers the case where the daemon is not managing us. The retry exists
# because the daemon can blank the name AFTER our first set — assert until it sticks.
bt_set_name() {  # $1 = hci dev
  _bn=$(box_name "$1")
  echo "$_bn" > /etc/.custom_bluetooth_name 2>/dev/null
  echo "$_bn" > /etc/bluetooth_name 2>/dev/null
  _n=0
  while [ "$_n" -lt 10 ]; do
    hciconfig "$1" name "$_bn" 2>/dev/null
    sleep 0.5
    _cur=$(timeout 5 hciconfig "$1" name 2>/dev/null | sed -n "s/.*Name: '\(.*\)'.*/\1/p")
    [ "$_cur" = "$_bn" ] && break
    _n=$((_n+1))
  done
  log "BT name=$_bn (asserted after $_n retries, now '${_cur:-unknown}')"
}

# =============================================================================================
# WLAN
# =============================================================================================
do_wifi_ap_on() {
  caps || { publish "$WLAN_STATE" "result=unsupported" "detail=no-descriptor"; return 3; }

  if ap_running && wlan_iface >/dev/null 2>&1; then
    _i=$(wlan_iface)
    log "already converged (AP running on $_i)"
    publish "$WLAN_STATE" "result=ok" "backend=$RADIO_BACKEND" "chipset=$RADIO_SDIO_DEVICE" \
            "ap_iface=$_i" "ap_ip=$(ap_ip_of "$_i")" "wlan_mac=$(cat /sys/class/net/$_i/address 2>/dev/null)"
    return 2
  fi

  case "$RADIO_BACKEND" in
    owned)
      # The IW416 baseline's own scripts. exec keeps the process tree, signals and exit code
      # identical to calling wlan_on.sh directly, so this path is a no-op refactor for that unit.
      log "backend=owned -> /script/wlan_on.sh"
      sh /script/wlan_on.sh; _rc=$?
      _i=$(wlan_iface 2>/dev/null) || _i=""
      [ "$_rc" = 0 ] && ap_running \
        && publish "$WLAN_STATE" "result=ok" "backend=owned" "ap_iface=${_i:-wlan0}" \
                   "ap_ip=$(ap_ip_of "${_i:-wlan0}")" "wlan_mac=$(cat /sys/class/net/${_i:-wlan0}/address 2>/dev/null)" \
        || publish "$WLAN_STATE" "result=fail" "backend=owned" "detail=wlan_on.sh rc=$_rc"
      return $_rc
      ;;
    mapped)
      [ -n "$RADIO_WLAN_INSMOD" ] || {
        log "no insmod mapping could be extracted for chipset $RADIO_SDIO_DEVICE"
        publish "$WLAN_STATE" "result=unsupported" "chipset=$RADIO_SDIO_DEVICE" "detail=no-mapping"
        return 3; }
      # Stage this unit's own modules. The tarball is the unit's, extracted to tmpfs - we never
      # write to flash here (the vendor path untars overlays into / on some variants; that is
      # provisioning, not bring-up, and it does not belong in a per-session call).
      [ -e "/tmp/${RADIO_WLAN_MODULES%% *}" ] || tar -xzf "$RADIO_KO_TARBALL" -C /tmp 2>/dev/null \
                                                || tar -xf "$RADIO_KO_TARBALL" -C /tmp 2>/dev/null
      log "backend=mapped chipset=$RADIO_SDIO_DEVICE -> $RADIO_WLAN_INSMOD"
      _old=$IFS; IFS=';'
      for _cmd in $RADIO_WLAN_INSMOD; do
        [ -n "$_cmd" ] || continue
        IFS=$_old
        # Idempotent: a module already in /proc/modules is success, not the "File exists" error
        # insmod would print. wifi_ap_on must be safe to call repeatedly - the supervisor can
        # invoke it on any host-presence edge, and a driver already loaded is the common case.
        _mod=$(echo "$_cmd" | sed 's|.*/tmp/||; s/ .*//; s/\.ko$//')
        if [ -n "$_mod" ] && grep -q "^$_mod " /proc/modules 2>/dev/null; then
          log "  $_mod already loaded"
        else
          $_cmd 2>&1 | sed "s|^|$LOGP   |"
        fi
        IFS=';'
      done
      IFS=$_old
      # set_wifi_mac is the vendor's per-unit MAC applier and is kept by the base install's
      # radio guard on every variant. Harmless where absent.
      command -v set_wifi_mac >/dev/null 2>&1 && set_wifi_mac >/dev/null 2>&1
      # Converge on the interface appearing, discovered by enumeration.
      _n=0; while [ "$_n" -lt 100 ]; do wlan_iface >/dev/null 2>&1 && break; _n=$((_n+1)); sleep 0.1; done
      _i=$(wlan_iface 2>/dev/null) || {
        log "driver loaded but no wireless interface appeared"
        publish "$WLAN_STATE" "result=fail" "backend=mapped" "chipset=$RADIO_SDIO_DEVICE" "detail=no-iface"
        return 1; }
      log "wlan interface $_i up (mac $(cat /sys/class/net/$_i/address 2>/dev/null))"

      # The AP layer is OURS on every variant - see the header. It carries no chipset content;
      # RADIO_WLAN_IF tells it which interface to configure, defaulting to wlan0 so the IW416
      # unit's behaviour is unchanged when this variable is absent.
      #
      # DELIBERATELY /script/radio_ap_up.sh AND NOT /script/start_bluetooth_wifi.sh. Every unit
      # already ships a VENDOR file at that second path, so testing it for existence proves the
      # file is there, not that it is ours - and running the vendor's copy on a stripped box is
      # destructive: with riddleBoxCfg removed it seds an empty wpa_passphrase into
      # /etc/hostapd.conf (persistent, on flash) and defaults WLANIP to 192.168.50.2, which is
      # NCM's own address, then repoints the DHCP pool onto the management subnet. An
      # unambiguous name is the guard: presence at this path means it is the owned layer.
      [ -x /script/radio_ap_up.sh ] || {
        log "driver is up but the owned AP layer (/script/radio_ap_up.sh) is not installed"
        log "  NOT falling back to /script/start_bluetooth_wifi.sh - that is the vendor's copy and"
        log "  on a stripped box it corrupts hostapd.conf and collides with the NCM subnet"
        publish "$WLAN_STATE" "result=fail" "backend=mapped" "ap_iface=$_i" "detail=no-owned-ap-layer"
        return 1; }
      # RADIO_BOX_NAME is resolved HERE, not inside the AP layer, so the SSID and the Bluetooth
      # name provably come from one decision rather than two derivations that can disagree.
      ONDEMAND_WIFI=1 RADIO_WLAN_IF="$_i" RADIO_BOX_NAME="$(box_name)" \
        sh /script/radio_ap_up.sh AP 2>&1 | sed "s/^/$LOGP   /"
      _n=0; while [ "$_n" -lt 50 ]; do ap_running && break; _n=$((_n+1)); sleep 0.2; done
      if ap_running; then
        publish "$WLAN_STATE" "result=ok" "backend=mapped" "chipset=$RADIO_SDIO_DEVICE" \
                "ap_iface=$_i" "ap_ip=$(ap_ip_of "$_i")" "wlan_mac=$(cat /sys/class/net/$_i/address 2>/dev/null)"
        log "AP converged on $_i"
        return 0
      fi
      publish "$WLAN_STATE" "result=fail" "backend=mapped" "ap_iface=$_i" "detail=ap-did-not-start"
      log "AP did not start on $_i"
      return 1
      ;;
    *)
      log "NO BACKEND for wifi on this unit - wireless unavailable (wired projection unaffected)"
      publish "$WLAN_STATE" "result=unsupported" "chipset=${RADIO_SDIO_DEVICE:-unknown}" "detail=no-backend"
      return 3
      ;;
  esac
}

ap_ip_of() { ifconfig "$1" 2>/dev/null | sed -n 's/.*inet addr:\([0-9.]*\).*/\1/p' | head -1; }

do_wifi_ap_off() {
  caps || true
  # Chipset-neutral teardown. Deliberately NO module unload: whether rmmod is safe (and whether
  # it disturbs BT on a combo part) is chipset policy, and the supervisor's proven end-state for
  # BT is "attached but powered down" rather than unloaded.
  if [ "${RADIO_BACKEND:-none}" = owned ] && [ -x /script/wlan_off.sh ]; then
    log "backend=owned -> /script/wlan_off.sh"
    sh /script/wlan_off.sh; _rc=$?
    publish "$WLAN_STATE" "result=ok" "backend=owned" "detail=wlan_off rc=$_rc"
    return 0
  fi
  killall hostapd 2>/dev/null
  # Kill ONLY the AP's DHCP server. A killall udhcpd here would take down the NCM one serving
  # the management link - on a box with no UART that is the only way in, and it is exactly what
  # the vendor's close_bluetooth_wifi.sh does. Identify it by its CONFIG PATH, which is
  # unambiguous: the NCM server runs `busybox udhcpd -f /tmp/udhcpd_ncm.conf`.
  for _p in $(ps 2>/dev/null | grep -v grep | grep "udhcpd .*etc/udhcpd.conf" | awk '{print $1}'); do
    kill "$_p" 2>/dev/null
  done
  [ -e /var/run/udhcpd.pid ] && kill "$(cat /var/run/udhcpd.pid 2>/dev/null)" 2>/dev/null
  _i=$(wlan_iface 2>/dev/null) && ifconfig "$_i" down 2>/dev/null
  _n=0; while [ "$_n" -lt 25 ] && ap_running; do _n=$((_n+1)); sleep 0.2; done
  ap_running && { log "hostapd still running after teardown"; publish "$WLAN_STATE" "result=fail" "detail=ap-survived"; return 1; }
  rm -f "$WLAN_STATE"
  log "wifi AP down"
  return 0
}

# =============================================================================================
# BLUETOOTH
# =============================================================================================
do_bt_on() {
  caps || { publish "$BT_STATE" "result=unsupported" "detail=no-descriptor"; return 3; }

  _d=$(hci_dev 2>/dev/null) || _d=""
  if [ -n "$_d" ] && bt_responsive_confirmed "$_d"; then
    log "already converged ($_d responsive)"
    publish "$BT_STATE" "result=ok" "backend=$RADIO_BACKEND" "hci_dev=$_d" \
            "bt_mac=$(cat /sys/class/bluetooth/$_d/address 2>/dev/null)"
    return 2
  fi

  case "$RADIO_BACKEND" in
    owned)
      log "backend=owned -> /script/bt_on.sh"
      sh /script/bt_on.sh; _rc=$?
      _d=$(hci_dev 2>/dev/null) || _d=""
      if [ -n "$_d" ] && bt_responsive_confirmed "$_d"; then
        publish "$BT_STATE" "result=ok" "backend=owned" "hci_dev=$_d" \
                "bt_mac=$(cat /sys/class/bluetooth/$_d/address 2>/dev/null)"
        return 0
      fi
      publish "$BT_STATE" "result=fail" "backend=owned" "detail=bt_on.sh rc=$_rc, not responsive"
      return 1
      ;;
    mapped)
      [ -n "$RADIO_BT_ATTACH_CMD" ] || {
        log "no attach mapping could be extracted for chipset $RADIO_SDIO_DEVICE"
        publish "$BT_STATE" "result=unsupported" "chipset=$RADIO_SDIO_DEVICE" "detail=no-mapping"
        return 3; }

      # Ordering constraint, discovered not assumed: some parts wedge if BT attaches before the
      # WLAN driver is up (the vendor encodes this as a wait loop inside its attach script, and
      # radio_detect.sh reports its presence). Honour it rather than re-deriving which chips care.
      if [ "${RADIO_BT_AFTER_WLAN:-0}" = 1 ] && ! wlan_iface >/dev/null 2>&1; then
        log "chipset requires WLAN before BT attach - bringing the driver up first"
        _n=0; while [ "$_n" -lt 120 ]; do wlan_iface >/dev/null 2>&1 && break; _n=$((_n+1)); sleep 0.1; done
        wlan_iface >/dev/null 2>&1 || log "  wlan interface still absent; attaching anyway (vendor does the same after its timeout)"
      fi

      [ -e "/tmp/$RADIO_BT_LDISC_KO" ] || tar -xzf "$RADIO_KO_TARBALL" -C /tmp 2>/dev/null \
                                       || tar -xf "$RADIO_KO_TARBALL" -C /tmp 2>/dev/null
      [ -n "$RADIO_BT_LDISC_KO" ] && [ -e "/tmp/$RADIO_BT_LDISC_KO" ] && {
        grep -q "^${RADIO_BT_LDISC_KO%.ko} " /proc/modules 2>/dev/null || insmod "/tmp/$RADIO_BT_LDISC_KO" 2>/dev/null; }

      [ -n "$RADIO_BT_PRELOAD" ] && [ -n "${RADIO_BT_PRELOAD_CMD:-}" ] && {
        log "firmware preload: $RADIO_BT_PRELOAD_CMD"; $RADIO_BT_PRELOAD_CMD >/dev/null 2>&1; }

      # NEVER launch an attach while another helper still owns the UART. Learned on hardware:
      # a controller can sit at `UP RUNNING` and still be wedged (name read times out), so we
      # correctly decide to re-attach - but if the previous helper is alive it still holds
      # /dev/ttymxc2, and the second attach's H5 SYNC collides with the first's link state:
      #   Realtek Bluetooth WARN: OP_H5_SYNC Transmission timeout
      #   Realtek Bluetooth ERROR: Retransmission exhausts
      # which leaves the chip deader than it started. A stale helper is not a reason to skip the
      # attach - it is a reason to reclaim the port FIRST. This is the same reclaim the owned
      # attach path does with `killall hciattach` before re-attaching.
      # RECLAIM-RESET-ATTACH, retried. Three lessons, each paid for on hardware:
      #
      #  1. Never attach while another helper owns the UART. A controller can sit at `UP RUNNING`
      #     and still be wedged (name read times out), so re-attaching is right - but the stale
      #     helper still holds /dev/ttymxc2 and the new H5 SYNC collides with the old link state
      #     ("OP_H5_SYNC Transmission timeout" -> "Retransmission exhausts"), leaving the chip
      #     deader than before.
      #  2. Killing the helper is not enough: the line-discipline MODULE holds the stale H5 state.
      #     Both the vendor's reset_bluetooth() and our own reset_bt() rmmod it before the reset,
      #     and a reset without that step does not revive the chip - measured.
      #  3. The reset line is asserted HIGH then released LOW (1 -> 0). Both implementations agree;
      #     driving it the other way is a no-op that looks like a reset in the log.
      #
      # One attempt is not enough either - the owned path loops reset+attach+responsiveness, so
      # this does too. Everything here is derived from the mapping, so no chip name appears.
      _helper=${RADIO_BT_ATTACH_CMD%% *}
      _ldisc=${RADIO_BT_LDISC_KO%.ko}
      bt_reclaim_reset() {
        killall "$_helper" 2>/dev/null
        _k=0; while [ "$_k" -lt 20 ] && { pgrep -x "$_helper" >/dev/null 2>&1 || ps | grep -v grep | grep -qw "$_helper"; }; do
          _k=$((_k+1)); sleep 0.25
        done
        [ -n "$_ldisc" ] && grep -q "^$_ldisc " /proc/modules 2>/dev/null && { sleep 1; rmmod "$_ldisc" 2>/dev/null; }
        if [ -e /sys/class/gpio/gpio1/value ]; then
          echo 1 > /sys/class/gpio/gpio1/value 2>/dev/null; sleep 0.2
          echo 0 > /sys/class/gpio/gpio1/value 2>/dev/null; sleep 0.5
        fi
        [ -n "$RADIO_BT_LDISC_KO" ] && [ -e "/tmp/$RADIO_BT_LDISC_KO" ] \
          && { grep -q "^$_ldisc " /proc/modules 2>/dev/null || insmod "/tmp/$RADIO_BT_LDISC_KO" 2>/dev/null; }
      }

      # Clause 1: the attach runs detached so a helper that blocks cannot hang this verb, but we
      # DO NOT return until it converges. That is the whole difference from the vendor path,
      # which forks the attach and returns immediately.
      _try=0; _d=""
      while [ "$_try" -lt 4 ]; do
        _try=$((_try+1))
        if [ "$_try" -gt 1 ] || pgrep -x "$_helper" >/dev/null 2>&1 || ps | grep -v grep | grep -qw "$_helper"; then
          log "reclaim+reset (attempt $_try)"; bt_reclaim_reset
        fi
        log "attach attempt $_try: $RADIO_BT_ATTACH_CMD"
        setsid $RADIO_BT_ATTACH_CMD </dev/null >/tmp/radio_bt_attach.log 2>&1 &
        _n=0
        while [ "$_n" -lt 30 ]; do
          _d=$(hci_dev 2>/dev/null) && bt_responsive "$_d" && break
          _n=$((_n+1)); sleep 0.5
        done
        _d=$(hci_dev 2>/dev/null) || _d=""
        [ -n "$_d" ] && bt_responsive "$_d" && break
        log "  attempt $_try did not converge"
      done
      if [ -n "$_d" ] && bt_responsive "$_d"; then
        # Vendor SCO tuning where the mapping carried it; non-fatal.
        hciconfig "$_d" scomtu 240:32 2>/dev/null
        bt_set_name "$_d"
        publish "$BT_STATE" "result=ok" "backend=mapped" "chipset=$RADIO_SDIO_DEVICE" "hci_dev=$_d" \
                "bt_mac=$(cat /sys/class/bluetooth/$_d/address 2>/dev/null)"
        log "BT converged: $_d responsive on attempt $_try"
        return 0
      fi
      log "BT attach did not converge in 60s (device ${_d:-absent}); last log:"
      tail -5 /tmp/radio_bt_attach.log 2>/dev/null | sed "s/^/$LOGP   /"
      publish "$BT_STATE" "result=fail" "backend=mapped" "chipset=$RADIO_SDIO_DEVICE" "detail=no-convergence"
      return 1
      ;;
    *)
      log "NO BACKEND for bt on this unit - wireless unavailable (wired projection unaffected)"
      publish "$BT_STATE" "result=unsupported" "chipset=${RADIO_SDIO_DEVICE:-unknown}" "detail=no-backend"
      return 3
      ;;
  esac
}

do_bt_off() {
  # End state: powered down but STILL ATTACHED. Never rmmod the line discipline and never -9 the
  # attach helper - re-attach is the wedge-prone half, which is why the supervisor stops at
  # `hciconfig down` rather than calling bt_off.sh.
  _d=$(hci_dev 2>/dev/null) || { rm -f "$BT_STATE"; return 0; }
  hciconfig "$_d" noscan 2>/dev/null
  hciconfig "$_d" down   2>/dev/null
  rm -f "$BT_STATE"
  log "BT $_d powered down (attach left in place)"
  return 0
}

# =============================================================================================
case "$VERB" in
  probe)
    caps || exit 3
    echo "chipset=$RADIO_SDIO_DEVICE vendor=$RADIO_SDIO_VENDOR chip=$RADIO_CHIP backend=$RADIO_BACKEND wireless=$RADIO_WIRELESS"
    echo "wlan_insmod=\"$RADIO_WLAN_INSMOD\" bt_attach=\"$RADIO_BT_ATTACH_CMD\" bt_after_wlan=$RADIO_BT_AFTER_WLAN"
    [ "$RADIO_WIRELESS" = yes ] && exit 0 || exit 3 ;;
  status)
    caps || exit 3
    _i=$(wlan_iface 2>/dev/null) || _i=""
    _d=$(hci_dev 2>/dev/null)    || _d=""
    # Three-valued per radio: absent (no driver) / down / up. A cold box is "absent", which is
    # normal on this platform - radios load on demand - and must never read as failure.
    echo "wlan=$([ -z "$_i" ] && echo absent || { ap_running && echo up || echo down; }) iface=${_i:-none}"
    echo "bt=$([ -z "$_d" ] && echo absent || { bt_responsive_confirmed "$_d" && echo up || echo down; }) hci=${_d:-none}"
    [ -f "$WLAN_STATE" ] && sed 's/^/wlan_state: /' "$WLAN_STATE"
    [ -f "$BT_STATE" ]   && sed 's/^/bt_state:   /' "$BT_STATE"
    exit 0 ;;
  wifi_ap_on)  lock_take wlan || exit 1; do_wifi_ap_on;  _r=$?; lock_drop wlan; exit $_r ;;
  wifi_ap_off) lock_take wlan || exit 1; do_wifi_ap_off; _r=$?; lock_drop wlan; exit $_r ;;
  bt_on)       lock_take bt   || exit 1; do_bt_on;       _r=$?; lock_drop bt;   exit $_r ;;
  bt_off)      lock_take bt   || exit 1; do_bt_off;      _r=$?; lock_drop bt;   exit $_r ;;
  *) echo "$LOGP usage: radio_hal.sh probe|status|wifi_ap_on|wifi_ap_off|bt_on|bt_off" >&2; exit 64 ;;
esac
