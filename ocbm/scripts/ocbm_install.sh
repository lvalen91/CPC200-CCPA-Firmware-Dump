#!/usr/bin/env bash
# ocbm_install.sh — install OCBM onto an adapter sitting at the NCM base, and prove it works
# before making it the default.
#
# STARTING POINT: the NCM base produced by tools/ncm_base_install.sh — Carlinkit stack gone,
# owned boot path, `/script/ncm_only` set, root shell at 192.168.50.2 over USB-NCM.
#
# ============================== THE SHAPE OF THE PROBLEM ===============================
# `ci_hdrc.1` is a SINGLE-FUNCTION gadget: `functions=ncm` OR `functions=accessory`, never
# both. NCM is what carries telnet/dropbear, so arming OCBM takes the control channel away.
# On a unit with no UART wired that makes "switch to OCBM" a one-way door.
#
# So this script never switches anything it has not first proven it can switch back from:
#
#   1. place     files pushed over NCM. Nothing about the boot path changes, so the adapter
#                still boots NCM no matter what happens here.
#   2. verify    md5 of every placed file against the host, exec bits, `sh -n` the scripts.
#   3. reboot    cold boot, still on NCM — proves placing the files broke nothing.
#   4. trial     TEMPORARY switch to accessory with a dead-man timer that reboots back to NCM
#                on its own. The host then does the OCBM handshake and opens a root console.
#                Whether that succeeds or fails, the adapter returns to NCM by itself.
#   5. finalize  only now, and only if you say so: make OCBM the boot default. Even that is
#                armed with `/script/ocbm_trial`, a first-boot dead-man that restores
#                `ncm_only` and reboots unless the host confirms over the OCBM link.
#
# Every irreversible-looking step is therefore preceded by the same step done reversibly.
#
# ============================== WHY THE TRIAL LOOKS LIKE IT DOES =======================
# Two things were learned the hard way on 2026-08-15 and are baked in here:
#
#  * WAIT FOR `CONFIGURED`, NOT FOR THE DEVICE NODE. `/dev/usb_accessory` appears ~100 ms
#    after the function binds, long before the host has enumerated. Starting ocbmd there gets
#    `accessory POLLHUP/POLLERR — USB transport gone; exiting for respawn` and the trial dies
#    at once.
#  * BOUNCE THE PULLUP AFTER CHANGING FUNCTIONS. Going from an `ncm` composite straight to a
#    vendor accessory leaves the host holding the old configuration: the box reports
#    CONNECTED (VBUS) but never CONFIGURED, and nothing appears in `ioreg`/`lsusb`.
#
# ============================== USAGE ==================================================
#   tools/ocbm_install.sh preflight
#   tools/ocbm_install.sh all              # place → verify → reboot → trial → ask
#   tools/ocbm_install.sh trial            # re-run just the reversible switch test
#   tools/ocbm_install.sh finalize         # make OCBM the default (asks first)
#   tools/ocbm_install.sh revert           # put ncm_only back, reboot
#
# Options:
#   --host IP     adapter address (default 192.168.50.2 — .100 is usually YOUR lease)
#   --full        also install the projection stack (iap2d, airplayd, rx-connect,
#                 carplay-wireless, session_supervisor.sh, projection_up.sh). Default is the
#                 minimal set: ocbmd + ocbm_boot.sh, which is all CONSOLE/FILE management needs
#   --ttl N       trial dead-man timeout in seconds (default 600)
#   --run-dir DIR where reports land
#   --yes         skip prompts (the finalize prompt included — think first)
set -euo pipefail

REPO="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
BOXSH="$REPO/tools/boxsh.py"
ARM="$REPO/target/armv7-unknown-linux-musleabihf/release"
OCBM_HOST="$REPO/target/release/ocbm-host"

BOX="192.168.50.2"
FULL=0
TTL=600
RUN_DIR=""
ASSUME_YES=0
PHASES=()

while [ $# -gt 0 ]; do
  case "$1" in
    --host) BOX="$2"; shift 2 ;;
    --full) FULL=1; shift ;;
    --ttl) TTL="$2"; shift 2 ;;
    --run-dir) RUN_DIR="$2"; shift 2 ;;
    --yes|-y) ASSUME_YES=1; shift ;;
    -h|--help) sed -n '2,50p' "$0"; exit 0 ;;
    -*) echo "unknown option: $1" >&2; exit 2 ;;
    *) PHASES+=("$1"); shift ;;
  esac
done
[ ${#PHASES[@]} -gt 0 ] || { echo "no phase given (try --help)" >&2; exit 2; }
[ -n "$RUN_DIR" ] || RUN_DIR="$REPO/scratchpad/ocbm_$(date +%Y%m%d_%H%M%S)"
mkdir -p "$RUN_DIR"

say()  { printf '[ocbm] %s\n' "$*"; }
warn() { printf '[ocbm] !! %s\n' "$*" >&2; }
die()  { printf '[ocbm] ABORT: %s\n' "$*" >&2; exit 1; }
# --------------------------------------------------------------------------------------
# Transport. SSH FIRST, telnet only as a fallback.
#
# The box runs dropbear 2020.81 on ncm0 — modern enough that stock OpenSSH negotiates
# curve25519/rsa-sha2-256 with no legacy overrides at all. Root's password is blank, which
# sshpass supplies. SSH is preferred over the busybox telnetd shell for the obvious reasons
# (real exit status, no pty echo parsing) and one non-obvious one: it makes file transfer a
# single `cat` redirect that either succeeds or fails, instead of a `nc` race.
#
# The box has NO scp/sftp-server, so `ssh box 'cat > file'` is the transfer, not scp.
# --------------------------------------------------------------------------------------
SSH_OPTS=(-o StrictHostKeyChecking=no -o UserKnownHostsFile=/dev/null -o LogLevel=ERROR
          -o ConnectTimeout=8 -o ServerAliveInterval=5 -o ServerAliveCountMax=3)
SSHP=()
command -v sshpass >/dev/null 2>&1 && SSHP=(sshpass -p "${BOX_PW:-}")
VIA=""

detect_transport() {
  [ -n "$VIA" ] && return 0
  if [ ${#SSHP[@]} -gt 0 ] && "${SSHP[@]}" ssh -n "${SSH_OPTS[@]}" "root@$BOX" true >/dev/null 2>&1; then
    VIA=ssh
  elif ssh -n "${SSH_OPTS[@]}" -o BatchMode=yes "root@$BOX" true >/dev/null 2>&1; then
    VIA=ssh; SSHP=()
  elif python3 "$BOXSH" --host "$BOX" --timeout 10 probe >/dev/null 2>&1; then
    VIA=telnet
  else
    return 1
  fi
  return 0
}

box() {
  detect_transport || die "no control channel at $BOX (tried ssh, then telnet)"
  # -n is load-bearing: without it ssh inherits the caller's stdin, and inside
  # `while read ... done < <(manifest)` it swallows the manifest, so only the first file in a
  # batch ever gets placed.
  if [ "$VIA" = ssh ]; then "${SSHP[@]}" ssh -n "${SSH_OPTS[@]}" "root@$BOX" "$1"
  else python3 "$BOXSH" --host "$BOX" --timeout "${BOX_TIMEOUT:-45}" run "$1"; fi
}
boxq() { box "$1" >/dev/null 2>&1; }

ask() {  # $1 = prompt; returns 0 for yes
  [ "$ASSUME_YES" = 1 ] && return 0
  printf '\n[ocbm] %s [y/N]: ' "$1"; local a; read -r a
  case "$a" in [Yy]*) return 0 ;; *) return 1 ;; esac
}

wait_ncm() {  # wait for the NCM control channel to answer
  local deadline=$(( SECONDS + ${1:-260} ))
  VIA=""                       # re-probe: sshd and telnetd come up at different points in boot
  while [ $SECONDS -lt $deadline ]; do
    VIA=""
    boxq 'true' && { say "NCM control channel is up ($BOX, via $VIA)"; return 0; }
    sleep 5
  done
  return 1
}

# The file set. Minimal by default: ocbm_boot.sh skips session_supervisor.sh when it is not
# executable, so the projection stack is genuinely optional and CONSOLE/FILE work without it.
manifest() {
  echo "$ARM/ocbmd|/usr/sbin/ocbmd|755"
  echo "$REPO/ccpa/rootfs/script/ocbm_boot.sh|/script/ocbm_boot.sh|755"
  echo "$REPO/tools/run_ocbmd.sh|/script/run_ocbmd.sh|755"
  if [ "$FULL" = 1 ]; then
    # The radio seam MUST ship with session_supervisor.sh, because the supervisor's four radio
    # call sites now resolve through it. A box that gets the supervisor without these has no
    # radio bring-up at all - and on a BT-only bridge deployment (wifi_ap:false, e.g. the GM
    # head-unit app, where the adapter IS the Bluetooth radio and the MFi coprocessor) that is a
    # total failure, not a degraded one. The baseline installs these too; shipping them here
    # covers a box converted before the seam existed.
    echo "$REPO/ccpa/rootfs/script/radio_detect.sh|/script/radio_detect.sh|755"
    echo "$REPO/ccpa/rootfs/script/radio_hal.sh|/script/radio_hal.sh|755"
    echo "$REPO/ccpa/rootfs/script/radio_ap_up.sh|/script/radio_ap_up.sh|755"
    echo "$ARM/iap2d|/usr/sbin/iap2d|755"
    echo "$ARM/airplayd|/usr/sbin/airplayd|755"
    echo "$ARM/rx-connect|/usr/sbin/rx-connect|755"
    echo "$ARM/carplay-wireless|/usr/sbin/carplay-wireless|755"
    echo "$REPO/tools/session_supervisor.sh|/script/session_supervisor.sh|755"
    echo "$REPO/tools/projection_up.sh|/script/projection_up.sh|755"
    echo "$REPO/tools/phone_reset.sh|/script/phone_reset.sh|755"
    echo "$REPO/tools/run_supervisor.sh|/script/run_supervisor.sh|755"
  fi
}

# --------------------------------------------------------------------------------------
# Transfer over the NCM link with `nc`: the box opens a TCP connection back to this host and
# writes the file straight to disk. Base64 through the telnet shell would be ~300 round trips
# for a 440 KB binary. Note busybox `nc` does not always exit on EOF, so the box side is
# detached and completion is judged by md5, not by the command returning.
# --------------------------------------------------------------------------------------
push_file() {  # $1 local  $2 remote  $3 mode
  local local_f="$1" remote="$2" mode="$3" want got
  [ -f "$local_f" ] || die "missing artifact: $local_f"
  want=$(md5 -q "$local_f")
  detect_transport || die "no control channel at $BOX"
  if [ "$VIA" = ssh ]; then
    # scp, NOT `scp -O`. The box has no `scp` binary, which is what -O (legacy scp protocol)
    # would need on the remote side; it does have /usr/libexec/sftp-server, which is what
    # modern scp uses by default. Falls back to a `cat` redirect for a unit whose sftp-server
    # is missing -- that needs nothing on the box but a shell.
    if ! "${SSHP[@]}" scp "${SSH_OPTS[@]}" "$local_f" "root@$BOX:$remote.new" >/dev/null 2>&1; then
      "${SSHP[@]}" ssh "${SSH_OPTS[@]}" "root@$BOX" "cat > $remote.new" < "$local_f" \
        || die "transfer of $remote failed (scp and cat both)"
    fi
  else
    python3 "$BOXSH" --host "$BOX" --mode "$mode" put "$local_f" "$remote.new" >/dev/null \
      || die "telnet transfer of $remote failed"
  fi
  got=$(box "md5sum $remote.new 2>/dev/null | cut -c1-32" | tr -d ' \r\n')
  [ "$got" = "$want" ] || {
    box "rm -f $remote.new" >/dev/null 2>&1 || true
    die "transfer of $remote did not verify (box '$got' != host '$want') — nothing installed"
  }
  box "chmod $mode $remote.new && mv $remote.new $remote && sync" >/dev/null
  say "  placed $remote ($(wc -c < "$local_f" | tr -d ' ') bytes, md5 $want)"
}

# ======================================================================================
phase_preflight() {
  say "=== preflight ==="
  wait_ncm 45 || die "no NCM shell at $BOX — this installs FROM the NCM base"
  [ -x "$OCBM_HOST" ] || {
    warn "host client not built at $OCBM_HOST"
    say "building it (needs libusb: brew install libusb)…"
    ( cd "$REPO" && PKG_CONFIG_PATH=/opt/homebrew/opt/libusb/lib/pkgconfig cargo build --release -p ocbm-host ) \
      || die "could not build ocbm-host — the trial phase cannot verify anything without it"
  }
  local need=0
  while IFS='|' read -r l r m; do
    [ -f "$l" ] || { warn "MISSING artifact $l"; need=1; }
  done < <(manifest)
  [ "$need" = 0 ] || die "build the box binaries first (cargo zigbuild --release --target armv7-unknown-linux-musleabihf)"

  box '
echo "== base state =="
echo "sw=$(cat /etc/software_version 2>/dev/null)"
df -k / | tail -1 | awk "{print \"rootfs: \"\$2\"K total, \"\$4\"K free\"}"
echo "flags: ncm_only=$([ -e /script/ncm_only ] && echo yes || echo no) ncm_wifi=$([ -e /script/ncm_wifi ] && echo yes || echo no)"
echo "gadget=$(cat /sys/class/android_usb_accessory/android0/functions)/$(cat /sys/class/android_usb_accessory/android0/state)"
echo "vendor stack: $(ls /usr/sbin | grep -cE "^(ARMadb-driver|ARMiPhoneIAP2|AppleCarPlay|boa|riddle_top)$") binaries (want 0)"
echo "ocbmd present: $([ -e /usr/sbin/ocbmd ] && echo yes || echo no)"
' | tee "$RUN_DIR/preflight.txt"

  grep -q "ncm_only=yes" "$RUN_DIR/preflight.txt" || warn "no ncm_only flag — the revert path assumes it"
  grep -q "vendor stack: 0" "$RUN_DIR/preflight.txt" || warn "vendor binaries still present; run tools/ncm_base_install.sh first"

  local free; free=$(grep -o '[0-9]*K free' "$RUN_DIR/preflight.txt" | tr -dc 0-9)
  local want; want=$(( $(manifest | cut -d'|' -f1 | xargs wc -c 2>/dev/null | tail -1 | awk '{print $1}') / 1024 ))
  say "need ~${want}K, have ${free}K free"
  [ "${free:-0}" -gt $(( want + 512 )) ] || die "not enough free space on the rootfs"
}

phase_place() {
  say "=== place — pushing files over NCM (nothing about the boot path changes) ==="
  while IFS='|' read -r l r m; do push_file "$l" "$r" "$m"; done < <(manifest)
  say "placed $(manifest | wc -l | tr -d ' ') files"
}

phase_verify() {
  say "=== verify — md5, exec bits, syntax ==="
  local checks="$RUN_DIR/verify_payload.sh"
  { echo '#!/bin/sh'
    while IFS='|' read -r l r m; do
      printf 'check %s %s %s\n' "$r" "$(md5 -q "$l")" "$m"
    done < <(manifest)
  } > "$checks.args"
  { cat <<'EOS'
#!/bin/sh
bad=0
check() {
  f=$1; want=$2; mode=$3
  [ -e "$f" ] || { echo "  MISSING  $f"; bad=1; return; }
  got=$(md5sum "$f" | cut -c1-32)
  [ "$got" = "$want" ] || { echo "  BADMD5   $f (box $got != host $want)"; bad=1; return; }
  [ -x "$f" ] || { echo "  NOEXEC   $f"; bad=1; return; }
  case "$f" in *.sh) sh -n "$f" 2>/dev/null || { echo "  SYNTAX   $f"; bad=1; return; };; esac
  echo "  ok       $f"
}
EOS
    grep '^check ' "$checks.args"
    echo 'df -k / | tail -1 | awk "{print \"  free: \"\$4\"K\"}"'
    echo '[ "$bad" = 0 ] && echo VERIFY_OK || echo VERIFY_FAILED'
  } > "$checks"
  push_file "$checks" /tmp/ocbm_verify.sh 755
  box 'sh /tmp/ocbm_verify.sh' | tee "$RUN_DIR/verify.txt"
  grep -q VERIFY_OK "$RUN_DIR/verify.txt" || die "verification failed — see above; the adapter still boots NCM, nothing is at risk"
  say "all files verified in place"
}

phase_reboot() {
  say "=== reboot — confirm the adapter still comes up on NCM with the files in place ==="
  boxq 'sync; (sleep 1; reboot) >/dev/null 2>&1 &' || true
  sleep 10
  wait_ncm 260 || die "the adapter did not come back on NCM after placing the files. It has NOT been switched to OCBM, so the boot path is unchanged — check the USB interface on this host first."
  box 'echo "uptime=$(cut -d. -f1 /proc/uptime)s gadget=$(cat /sys/class/android_usb_accessory/android0/functions)/$(cat /sys/class/android_usb_accessory/android0/state)"; ls -la /usr/sbin/ocbmd /script/ocbm_boot.sh' | tee "$RUN_DIR/reboot.txt"
  say "still NCM, files survived the reboot"
}

phase_trial() {
  say "=== trial — TEMPORARY switch to OCBM, dead-man reboots back to NCM in ${TTL}s ==="
  local payload="$RUN_DIR/ocbm_try.sh"
  cat > "$payload" <<'EOS'
#!/bin/sh
# Generated by tools/ocbm_install.sh. Flips the gadget to a pure OCBM accessory, starts ocbmd,
# and reboots back to the (proven) NCM boot path after TTL unless /tmp/ocbm_keep appears.
# The log lives on jffs2, NOT /tmp, because /tmp does not survive the reboot this may trigger
# and that log is the whole post-mortem if the switch fails.
TTL=${1:-600}
L=/script/ocbm_try.log
A=/sys/class/android_usb_accessory/android0
{
  echo "=== trial start uptime=$(cut -d. -f1 /proc/uptime)s ttl=${TTL}s ==="
  echo "  was: class=$(cat $A/bDeviceClass) sub=$(cat $A/bDeviceSubClass) proto=$(cat $A/bDeviceProtocol) pid=$(cat $A/idProduct) functions=$(cat $A/functions)"
  sleep 3                      # let the telnet session that launched us close first
  pkill -f udhcpd_ncm.conf 2>/dev/null
  ifconfig ncm0 down 2>/dev/null
  # PURE accessory: bDeviceClass=0, not 239 — the host must see a single vendor interface,
  # not an IAD composite, which macOS seizes.
  echo 0 > "$A/enable"
  echo 0 > "$A/bDeviceClass"; echo 0 > "$A/bDeviceSubClass"; echo 0 > "$A/bDeviceProtocol"
  echo 2d00 > "$A/idProduct"
  echo accessory > "$A/functions"
  echo 1 > "$A/enable"
  # Bounce the pullup so the host drops the old NCM device and enumerates the new descriptors.
  sleep 1; echo 0 > "$A/enable"; sleep 2; echo 1 > "$A/enable"
  # Wait for CONFIGURED (host enumerated), not just for the device node to exist.
  i=0
  while [ $i -lt 300 ]; do
    st=$(cat "$A/state" 2>/dev/null); [ "$st" = "CONFIGURED" ] && break
    [ $((i % 20)) = 0 ] && echo "  waiting for enumeration: state=$st t=$((i/10))s"
    i=$((i+1)); sleep 0.1
  done
  echo "  gadget: functions=$(cat $A/functions) state=$(cat $A/state) class=$(cat $A/bDeviceClass) pid=$(cat $A/idProduct) node=$([ -e /dev/usb_accessory ] && echo present || echo MISSING)"
  if [ "$(cat $A/state)" != "CONFIGURED" ] || [ ! -e /dev/usb_accessory ]; then
    echo "FATAL: host never configured the accessory. Rebooting to NCM."; sync; reboot; exit 0
  fi
  # Respawn ocbmd the way OCBM mode does via inittab: it exits deliberately when the USB
  # transport drops, and without a respawner one transient ends the trial.
  ( n=0; while [ $n -lt 100 ]; do /usr/sbin/ocbmd >>/tmp/ocbmd.log 2>&1; n=$((n+1)); sleep 1; done ) &
  sleep 3
  pidof ocbmd >/dev/null 2>&1 && echo "  ocbmd running pid=$(pidof ocbmd)" \
    || { echo "FATAL: ocbmd will not stay up:"; tail -10 /tmp/ocbmd.log; sync; reboot; exit 0; }
  i=0
  while [ $i -lt "$TTL" ]; do
    [ -e /tmp/ocbm_keep ] && { echo "  HELD open by /tmp/ocbm_keep at ${i}s"; exit 0; }
    sleep 5; i=$((i+5))
  done
  echo "  TTL expired with no /tmp/ocbm_keep — rebooting back to NCM"
  sync; reboot
} >> "$L" 2>&1
EOS
  push_file "$payload" /tmp/ocbm_try.sh 755
  box 'rm -f /script/ocbm_try.log /tmp/ocbmd.log /tmp/ocbm_keep; sh -n /tmp/ocbm_try.sh && echo SYNTAX_OK' | grep -q SYNTAX_OK \
    || die "trial payload did not parse on the box"

  say "launching the trial — the NCM link will drop in ~3s"
  boxq "setsid sh /tmp/ocbm_try.sh $TTL >/dev/null 2>&1 </dev/null & echo go" || true

  say "waiting for the OCBM accessory to enumerate on this host…"
  # Match idProduct 11520 (0x2d00), NOT the vendor. The NCM device is the SAME vendor 0x1314
  # (product 0x1520), so a vendor-only test matches the very device being replaced and returns
  # immediately — the handshake then runs before the accessory has enumerated and reports
  # "device 1314 not found" while the box side is perfectly healthy.
  local i=0 seen=0
  while [ $i -lt 40 ]; do
    if ioreg -p IOUSB -w0 -l 2>/dev/null | grep -q '"idProduct" = 11520'; then seen=1; break; fi
    sleep 3; i=$((i+1))
  done
  [ "$seen" = 1 ] && say "  accessory enumerated (0x1314:0x2d00)" \
                  || warn "no 0x2d00 device seen; trying the handshake anyway"

  say "--- OCBM handshake ---"
  # Retry: the interface can need a moment to settle after enumeration.
  local h=0
  while [ $h -lt 5 ]; do
    "$OCBM_HOST" hello > "$RUN_DIR/trial_hello.txt" 2>&1 || true
    grep -q HELLO_ACK "$RUN_DIR/trial_hello.txt" && break
    sleep 3; h=$((h+1))
  done
  cat "$RUN_DIR/trial_hello.txt"
  if ! grep -q HELLO_ACK "$RUN_DIR/trial_hello.txt"; then
    warn "no HELLO_ACK — OCBM is not answering."
    warn "The dead-man will reboot the adapter back to NCM within ${TTL}s; nothing is lost."
    warn "Post-mortem after it returns:  cat /script/ocbm_try.log"
    die "trial failed at the handshake"
  fi

  say "--- CONSOLE root shell ---"
  ( printf 'id\r'; sleep 3; printf 'uname -srm\r'; sleep 2; printf 'df -h / | tail -1\r'; sleep 3 ) \
    | "$OCBM_HOST" console 2>&1 | tee "$RUN_DIR/trial_console.txt" || true
  grep -q 'uid=0(root)' "$RUN_DIR/trial_console.txt" \
    && say "CONSOLE gives a root shell — OCBM is a working management channel" \
    || warn "CONSOLE did not return a root prompt (see $RUN_DIR/trial_console.txt)"

  say "trial verified. Letting the dead-man return the adapter to NCM…"
  wait_ncm $(( TTL + 180 )) || die "the adapter did not come back on NCM after the trial — check /script/ocbm_try.log via UART or reflash"
  box 'echo "back on NCM: uptime=$(cut -d. -f1 /proc/uptime)s gadget=$(cat /sys/class/android_usb_accessory/android0/functions)"; echo "--- trial log ---"; cat /script/ocbm_try.log' | tee "$RUN_DIR/trial.txt"
  say "round trip complete: NCM → OCBM → NCM, unattended"
}

phase_finalize() {
  say "=== finalize ==="
  cat <<EOF

  The adapter is at the NCM base with OCBM installed and PROVEN (handshake + root console),
  and it is currently booting NCM. Two ways to leave it:

    [1] LEAVE IT ON NCM  (default, reversible)
        Boots to NCM every time; telnet/ssh at $BOX. OCBM stays installed and you can run
        'tools/ocbm_install.sh trial' whenever you want it, with the same dead-man.

    [2] MAKE OCBM THE DEFAULT
        Removes /script/ncm_only, so start_main_service runs ocbm_boot.sh and the adapter
        comes up as an OCBM accessory. NCM/telnet will NOT be there — management moves to
        'ocbm-host console'. First boot is armed with /script/ocbm_trial: if this host does
        not confirm over the OCBM link within 240s, the box restores ncm_only and reboots
        itself back to NCM.

EOF
  ask "make OCBM the boot default? (No = leave it on NCM)" || {
    say "left on NCM. OCBM is installed and ready; 'trial' switches temporarily any time."
    return 0
  }

  # REFUSE TO ARM A DEAD-MAN THE BOX CANNOT HONOUR. The flag is written and cleared from here,
  # but the timer that acts on it lives in ocbm_boot.sh. For a long time it lived NOWHERE: this
  # phase promised a 240s self-revert that no box-side code implemented, so a first boot where
  # OCBM did not come up left a no-UART unit with no NCM, no OCBM, and an operator waiting for a
  # rescue that could not arrive. Never take that promise on trust again - verify it is installed.
  say "verifying the box can honour the dead-man before arming it"
  if ! box 'grep -q ocbm_trial /script/ocbm_boot.sh && echo DEADMAN_PRESENT' | grep -q DEADMAN_PRESENT; then
    die "the ocbm_boot.sh on this box has no /script/ocbm_trial timer, so the 240s self-revert
     this phase promises would not happen. Re-run 'place' to install the current ocbm_boot.sh,
     or finalize by hand only if you have UART or SPI recovery for this unit."
  fi

  say "arming the first-boot dead-man, the failover watchdog, and ocbmd respawn"
  box '
set -e
touch /script/ocbm_trial

# Arm the NCM failover watchdog. ocbm_boot.sh has always implemented it but gated it on this
# flag, and nothing ever created the flag - so the "if OCBM cannot come up, fall back to NCM"
# safety net was inert on every converted unit. It is opt-in precisely so it can be armed HERE,
# at the moment the box stops having NCM as its default.
touch /script/ocbm_failover

# Give ocbmd PID-1 respawn protection. ocbmd exits deliberately when the USB transport drops
# (a host closing the link is normal), and ocbm_boot.sh launches it exactly once. Without a
# respawner the FIRST disconnect closes the only management door until the next power cycle -
# on an adapter living in a car, that is every trip. ncm_base_install deliberately derives an
# inittab with no OCBM respawns (correct for the NCM base, where those scripts do not exist);
# this is where they are added back, now that they do.
#
# Derived and asserted, never blind-copied: a bad inittab on a unit with no UART is a reflash.
if ! grep -q "run_ocbmd" /etc/inittab; then
  [ -x /script/run_ocbmd.sh ] || { echo "FATAL: run_ocbmd.sh missing - refusing to edit inittab"; exit 1; }
  [ -f /etc/inittab.pre ] || cp /etc/inittab /etc/inittab.pre
  cp /etc/inittab /tmp/inittab.new
  echo "::respawn:/script/run_ocbmd.sh" >> /tmp/inittab.new
  [ -x /script/run_supervisor.sh ] && ! grep -q run_supervisor /tmp/inittab.new \
    && echo "::respawn:/script/run_supervisor.sh" >> /tmp/inittab.new
  grep -q "sysinit:/etc/init.d/rcS" /tmp/inittab.new || { echo "FATAL: derived inittab lost rcS"; exit 1; }
  grep -q "run_ocbmd"              /tmp/inittab.new || { echo "FATAL: derived inittab lost the respawn"; exit 1; }
  [ "$(wc -l < /tmp/inittab.new)" -ge 5 ]           || { echo "FATAL: derived inittab looks truncated"; exit 1; }
  # mv, not cp: same filesystem, so the replacement is atomic. A torn /etc/inittab is the one
  # truncation on this box that no software path can recover from.
  cp /tmp/inittab.new /etc/inittab.new && mv /etc/inittab.new /etc/inittab
  echo "  inittab: ocbmd respawn installed"
else
  echo "  inittab: ocbmd respawn already present"
fi

rm -f /script/ncm_only /script/ncm_wifi
sync
echo "flags: ncm_only=$([ -e /script/ncm_only ] && echo yes || echo no) ocbm_trial=$([ -e /script/ocbm_trial ] && echo yes || echo no) ocbm_failover=$([ -e /script/ocbm_failover ] && echo yes || echo no)"
echo FINALIZE_ARMED' | tee "$RUN_DIR/finalize_arm.txt"
  grep -q FINALIZE_ARMED "$RUN_DIR/finalize_arm.txt" \
    || die "arming failed — the box was NOT switched. See $RUN_DIR/finalize_arm.txt; ncm_only is still in place."
  boxq 'sync; (sleep 1; reboot) >/dev/null 2>&1 &' || true
  sleep 15

  say "waiting for OCBM to come up on this host…"
  local i=0
  while [ $i -lt 40 ]; do
    if "$OCBM_HOST" hello 2>/dev/null | grep -q HELLO_ACK; then
      say "OCBM answered — confirming the trial so the box stops its revert timer"
      ( printf 'rm -f /script/ocbm_trial; echo CONFIRMED\r'; sleep 3 ) | "$OCBM_HOST" console 2>&1 | tail -5
      say "OCBM is now the boot default."
      say "Management: '$OCBM_HOST console' (root shell), '$OCBM_HOST push <local> <remote>'."
      say "To go back: 'tools/ocbm_install.sh revert' while OCBM is up."
      return 0
    fi
    sleep 5; i=$((i+1))
  done
  warn "OCBM did not answer within ~200s."
  warn "The first-boot dead-man should restore ncm_only and reboot on its own; waiting for NCM."
  wait_ncm 300 && { say "the adapter reverted itself to NCM, as designed"; box 'cat /tmp/ocbm_boot.log 2>/dev/null; cat /script/ocbm_try.log 2>/dev/null' | tail -20; } \
                || die "neither OCBM nor NCM is answering — recover via UART or the SPI image"
}

phase_revert() {
  # Works from either side: over NCM if that is what is up, otherwise over the OCBM console.
  say "=== revert — put ncm_only back and reboot ==="
  if boxq 'true'; then
    box 'touch /script/ncm_only; rm -f /script/ocbm_trial; sync; echo reverted'
    boxq 'sync; (sleep 1; reboot) >/dev/null 2>&1 &' || true
  else
    say "no NCM shell; trying the OCBM console"
    ( printf 'touch /script/ncm_only; rm -f /script/ocbm_trial; sync; reboot\r'; sleep 3 ) \
      | "$OCBM_HOST" console 2>&1 | tail -5
  fi
  sleep 12
  wait_ncm 260 && say "back on NCM" || die "did not come back on NCM"
}

run_phase() {
  case "$1" in
    preflight) phase_preflight ;;
    place)     phase_place ;;
    verify)    phase_verify ;;
    reboot)    phase_reboot ;;
    trial)     phase_trial ;;
    finalize)  phase_finalize ;;
    revert)    phase_revert ;;
    all)
      phase_preflight; phase_place; phase_verify; phase_reboot; phase_trial; phase_finalize
      say "done. run dir: $RUN_DIR"
      ;;
    *) die "unknown phase: $1" ;;
  esac
}
for p in "${PHASES[@]}"; do run_phase "$p"; done
