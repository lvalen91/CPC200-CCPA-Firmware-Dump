#!/usr/bin/env bash
# busybox_upgrade.sh — replace /bin/busybox, which is /bin/sh and ~358 applet symlinks and
# therefore the entire userspace, without ever being one bad binary away from having no shell.
#
# WHY THIS IS NOT THE DROPBEAR UPGRADE AGAIN. dropbear is one daemon; if it dies you still
# have telnet. busybox is `sh` itself: telnetd is a busybox applet, and every channel —
# telnet, ssh, the OCBM console — ends in `/bin/sh`, which IS this binary. Break it and every
# door closes at once, on a unit with no UART. So the protocol below is built around two
# independent shells and a coverage gate, not around "it probably works".
#
# THE GATES, in order:
#   1. stage        /tmp (tmpfs). Nothing installed; a reboot undoes it for free.
#   2. exec         the staged binary reports its version on this hardware.
#   3. COVERAGE     every applet that currently has a symlink AND is provided by the running
#                   busybox must also be provided by the new one. Applets that are already
#                   dangling today do not count — they are broken either way. This is the gate
#                   that actually matters, and it is computed from the box, not assumed.
#   4. parse        every boot script (`/etc/init.d/rcS`, `/script/*.sh`) must pass `sh -n`
#                   UNDER THE NEW BINARY. A shell that cannot parse the boot path is a brick.
#   5. smoke        boot-critical applets exercised from /tmp: sh, ifconfig, insmod, mount,
#                   tar, pkill, netstat, udhcpd, telnetd.
#   6. RESCUE       before installing: keep the old binary at /bin/busybox.pre, expose it as
#                   /bin/rescue/sh (busybox dispatches on argv[0], so the symlink's NAME must
#                   be `sh`), and open a SECOND telnetd on port 24 in which both the daemon and
#                   the shell come from the OLD binary. Port 23 and every ssh session run the
#                   NEW /bin/sh; port 24 is untouched by the swap, so one can always repair the
#                   other. NOT via /etc/passwd: this dropbear validates the login shell during
#                   authentication and denies the password outright if it is /bin/rescue/sh.
#   7. install      copy-then-rename (ETXTBSY-safe; running processes keep the old inode).
#   8. verify       new shell works, then reboot and verify again — boot is the real test.
#
# Usage:
#   tools/busybox_upgrade.sh --check      # report + run the coverage gate, change nothing
#   tools/busybox_upgrade.sh              # full run
#   tools/busybox_upgrade.sh --rollback   # restore /bin/busybox.pre
#   tools/busybox_upgrade.sh --cleanup    # drop /bin/busybox.pre + /bin/rescue (~640 KB)
set -euo pipefail

REPO="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
BOXSH="$REPO/tools/boxsh.py"
SRC_TAR="${SRC_TAR:-/Users/zeno/Downloads/ccpa_backups/20260708_042628_vanilla_state/rootfs.tar.gz}"
BOX="${BOX:-192.168.50.2}"
MODE=run
case "${1:-}" in --check) MODE=check ;; --rollback) MODE=rollback ;; --cleanup) MODE=cleanup ;; esac

RUN_DIR="$REPO/scratchpad/busybox_$(date +%Y%m%d_%H%M%S)"; mkdir -p "$RUN_DIR"
say()  { printf '[busybox] %s\n' "$*"; }
warn() { printf '[busybox] !! %s\n' "$*" >&2; }
die()  { printf '[busybox] ABORT: %s\n' "$*" >&2; exit 1; }

SSH_OPTS=(-o StrictHostKeyChecking=no -o UserKnownHostsFile=/dev/null -o LogLevel=ERROR -o ConnectTimeout=8)
SSHP=(); command -v sshpass >/dev/null 2>&1 && SSHP=(sshpass -p '')
ssh_box() { "${SSHP[@]}" ssh -n "${SSH_OPTS[@]}" "root@$BOX" "$1"; }
tel_box() { python3 "$BOXSH" --host "$BOX" --timeout 60 run "$1"; }
box()     { if ssh_box 'true' >/dev/null 2>&1; then ssh_box "$1"; else tel_box "$1"; fi; }

say "run dir: $RUN_DIR"

if [ "$MODE" = rollback ]; then
  say "restoring /bin/busybox.pre — driven over TELNET, which does not depend on root's shell"
  tel_box 'set -e
    [ -f /bin/busybox.pre ] || { echo "no .pre backup"; exit 1; }
    /bin/busybox.pre cp /bin/busybox.pre /bin/busybox.rb 2>/dev/null || cp /bin/busybox.pre /bin/busybox.rb
    chmod 755 /bin/busybox.rb && mv /bin/busybox.rb /bin/busybox && sync
    echo "restored: $(/bin/busybox 2>&1 | head -1)"'
  exit 0
fi

if [ "$MODE" = cleanup ]; then
  say "removing /bin/busybox.pre and /bin/rescue"
  box 'rm -rf /bin/rescue /bin/busybox.pre; sync; df -h / | tail -1'
  exit 0
fi

# ------------------------------------------------------------------ 0. extract + fingerprint
[ -f "$SRC_TAR" ] || die "source rootfs not found: $SRC_TAR"
tar xzf "$SRC_TAR" -C "$RUN_DIR" bin/busybox 2>/dev/null || die "no bin/busybox in $SRC_TAR"
NEW="$RUN_DIR/bin/busybox"
NEW_MD5=$(md5 -q "$NEW"); NEW_SIZE=$(wc -c < "$NEW" | tr -d ' ')
say "candidate: $NEW_SIZE bytes, md5 $NEW_MD5"
box '/bin/busybox 2>&1 | head -1; echo "installed md5=$(md5sum /bin/busybox | cut -c1-32) size=$(wc -c < /bin/busybox)"' | sed 's/^/    /'

# ------------------------------------------------------------------ 1. stage
say "1/8 staging to /tmp"
box 'mkdir -p /tmp/bb' >/dev/null
"${SSHP[@]}" scp "${SSH_OPTS[@]}" "$NEW" "root@$BOX:/tmp/bb/busybox" >/dev/null 2>&1 \
  || "${SSHP[@]}" ssh "${SSH_OPTS[@]}" "root@$BOX" 'cat > /tmp/bb/busybox' < "$NEW" \
  || die "could not stage busybox"
GOT=$(box 'md5sum /tmp/bb/busybox | cut -c1-32' | tr -d ' \r\n')
[ "$GOT" = "$NEW_MD5" ] || die "staged copy does not match (box $GOT != host $NEW_MD5)"
box 'chmod 755 /tmp/bb/busybox' >/dev/null
say "  staged, md5 verified"

# ------------------------------------------------------------------ 2. exec check
say "2/8 does it run here?"
VER=$(box '/tmp/bb/busybox 2>&1 | head -1' | tr -d '\r')
echo "    $VER"
echo "$VER" | grep -q "BusyBox v" || die "staged binary did not identify itself — wrong arch or missing library. Nothing changed."

# ------------------------------------------------------------------ 3. COVERAGE GATE
say "3/8 applet coverage gate"
box 'for d in /bin /sbin /usr/bin /usr/sbin; do
       for f in $d/*; do
         if [ -L "$f" ]; then t=$(readlink "$f"); case "$t" in *busybox) basename "$f";; esac; fi
       done
     done | sort -u' | tr -d '\r' > "$RUN_DIR/symlinks.txt"
box '/bin/busybox --list'      | tr -d '\r' | sort -u > "$RUN_DIR/old_applets.txt"
box '/tmp/bb/busybox --list'   | tr -d '\r' | sort -u > "$RUN_DIR/new_applets.txt"
# What works today = symlinked AND provided by the running binary. Anything already dangling
# is broken either way and must not block the upgrade.
comm -12 "$RUN_DIR/symlinks.txt" "$RUN_DIR/old_applets.txt" > "$RUN_DIR/working_today.txt"
comm -23 "$RUN_DIR/working_today.txt" "$RUN_DIR/new_applets.txt" > "$RUN_DIR/would_break.txt"
say "  symlinks=$(wc -l < "$RUN_DIR/symlinks.txt" | tr -d ' ') old=$(wc -l < "$RUN_DIR/old_applets.txt" | tr -d ' ') new=$(wc -l < "$RUN_DIR/new_applets.txt" | tr -d ' ') working_today=$(wc -l < "$RUN_DIR/working_today.txt" | tr -d ' ')"
if [ -s "$RUN_DIR/would_break.txt" ]; then
  warn "these applets work today and are NOT in the new busybox:"
  tr '\n' ' ' < "$RUN_DIR/would_break.txt" | sed 's/^/    /' >&2; echo >&2
  die "coverage gate failed — nothing installed"
fi
say "  no regressions: every applet that works today survives"
say "  restored (dangling today, provided by the new binary): $(comm -12 "$RUN_DIR/symlinks.txt" "$RUN_DIR/new_applets.txt" | comm -13 "$RUN_DIR/working_today.txt" - | wc -l | tr -d ' ')"

# ------------------------------------------------------------------ 4. parse the boot path
say "4/8 boot scripts must parse under the NEW shell"
box 'bad=0
     for f in /etc/init.d/rcS /etc/mdev/udisk_insert.sh /script/*.sh; do
       [ -f "$f" ] || continue
       /tmp/bb/busybox sh -n "$f" 2>/tmp/bb/err || { echo "  PARSE FAIL $f: $(cat /tmp/bb/err)"; bad=1; }
     done
     [ "$bad" = 0 ] && echo PARSE_OK || echo PARSE_FAILED' | tee "$RUN_DIR/parse.txt"
grep -q PARSE_OK "$RUN_DIR/parse.txt" || die "a boot script does not parse under the new shell — nothing installed"

# ------------------------------------------------------------------ 5. functional smoke
say "5/8 boot-critical applets, exercised from /tmp"
box 'B=/tmp/bb/busybox; bad=0
     $B sh -c "echo   sh ok" || bad=1
     $B ifconfig ncm0 >/dev/null 2>&1 && echo "  ifconfig ok" || { echo "  ifconfig FAIL"; bad=1; }
     $B netstat -ltn >/dev/null 2>&1 && echo "  netstat ok"  || { echo "  netstat FAIL"; bad=1; }
     $B ps >/dev/null 2>&1          && echo "  ps ok"        || { echo "  ps FAIL"; bad=1; }
     $B tar --help >/dev/null 2>&1  && echo "  tar ok"       || { echo "  tar FAIL"; bad=1; }
     $B mount >/dev/null 2>&1       && echo "  mount ok"     || { echo "  mount FAIL"; bad=1; }
     for a in insmod pkill udhcpd telnetd mdev sed grep awk; do
       $B --list | grep -qx "$a" && echo "  $a present" || { echo "  $a MISSING"; bad=1; }
     done
     [ "$bad" = 0 ] && echo SMOKE_OK || echo SMOKE_FAILED' | tee "$RUN_DIR/smoke.txt"
grep -q SMOKE_OK "$RUN_DIR/smoke.txt" || die "smoke test failed — nothing installed"

if [ "$MODE" = check ]; then
  say "--check: gates only, nothing installed"
  exit 0
fi

# ------------------------------------------------------------------ 6. rescue channel
say "6/8 opening an independent rescue channel BEFORE touching /bin/busybox"
# Pointing root's login shell at the old binary via /etc/passwd does NOT work here: this
# dropbear validates the login shell during authentication and rejects /bin/rescue/sh with
# "Permission denied" before any shell is ever exec'd. Verified, then reverted.
#
# So the rescue door is a SECOND telnetd on port 24 in which BOTH halves come from the old
# binary — `/bin/busybox.pre telnetd -l /bin/rescue/sh`. The normal telnetd on 23 and every
# ssh session run the NEW /bin/sh; this one is untouched by the swap. It is held open by a
# background ssh for the duration of the risky window, because a daemonised child would be
# SIGHUPed the moment its session closed.
box 'set -e
     [ -f /bin/busybox.pre ] || cp /bin/busybox /bin/busybox.pre
     chmod 755 /bin/busybox.pre
     mkdir -p /bin/rescue
     [ -e /bin/rescue/sh ] || ln -s /bin/busybox.pre /bin/rescue/sh
     /bin/rescue/sh -c "echo rescue_shell_works_old_binary"
     sync' | sed 's/^/    /'

"${SSHP[@]}" ssh -n "${SSH_OPTS[@]}" "root@$BOX" \
    '/bin/busybox.pre telnetd -F -l /bin/rescue/sh -p 24' >"$RUN_DIR/rescue.log" 2>&1 &
RESCUE_PID=$!
sleep 3
if python3 "$BOXSH" --host "$BOX" --port 24 --timeout 15 run 'echo RESCUE_OK; /bin/busybox.pre | head -1' \
     2>/dev/null | grep -q RESCUE_OK; then
  say "  rescue channel live on port 24, served entirely by the OLD binary"
else
  kill "$RESCUE_PID" 2>/dev/null || true
  warn "could not open the rescue channel on port 24."
  warn "Proceeding anyway would mean the only shells are the ones being replaced."
  die "not installing"
fi

# ------------------------------------------------------------------ 7. install
say "7/8 installing /bin/busybox by copy-then-rename"
box 'set -e
     cp /tmp/bb/busybox /bin/busybox.stage
     chmod 755 /bin/busybox.stage
     mv /bin/busybox.stage /bin/busybox
     sync
     echo "  installed: $(/bin/busybox 2>&1 | head -1)"
     echo "  md5=$(md5sum /bin/busybox | cut -c1-32) size=$(wc -c < /bin/busybox)"' | sed 's/^/    /'

# ------------------------------------------------------------------ 8. verify + reboot
say "8/8 verifying the NEW binary as /bin/sh"
# NOT `sh -c "... $(/bin/busybox|head -1)"`: the version banner contains parentheses, and
# substituting it into a string the shell then parses is a syntax error, not a broken shell.
box '/bin/sh -c "echo new_sh_ok"; /bin/busybox | head -1' | sed 's/^/    /'
if ! tel_box 'echo TELNET_NEWSH_OK' | grep -q TELNET_NEWSH_OK; then
  warn "telnetd (which runs the NEW /bin/sh) is not answering — rolling back via the port-24 rescue channel"
  python3 "$BOXSH" --host "$BOX" --port 24 --timeout 30 run \
    'cp /bin/busybox.pre /bin/busybox.rb && chmod 755 /bin/busybox.rb && mv /bin/busybox.rb /bin/busybox && sync; echo rolled-back' || true
  kill "$RESCUE_PID" 2>/dev/null || true
  die "rolled back; ssh still works via the rescue shell"
fi
say "  telnet works on the new /bin/sh"

ssh_box 'echo "    ssh on the new shell OK"' || warn "ssh failed on the new shell — telnet and the port-24 rescue channel remain"

say "  rebooting — boot is the real test"
box 'sync; (sleep 1; reboot) >/dev/null 2>&1 &' >/dev/null 2>&1 || true
sleep 12
i=0; while [ $i -lt 50 ]; do box 'true' >/dev/null 2>&1 && break; sleep 5; i=$((i+1)); done
box 'echo "  uptime=$(cut -d. -f1 /proc/uptime)s"
     echo "  busybox: $(/bin/busybox | head -1)"
     echo "  gadget=$(cat /sys/class/android_usb_accessory/android0/functions)/$(cat /sys/class/android_usb_accessory/android0/state)"
     busybox ifconfig ncm0 | grep "inet addr"
     df -h / | tail -1' | tee "$RUN_DIR/after_reboot.txt"
grep -q "192.168.50.2" "$RUN_DIR/after_reboot.txt" || die "the adapter did not come back cleanly — roll back with --rollback over telnet"
kill "$RESCUE_PID" 2>/dev/null || true
say "done. Kept for manual recovery: /bin/busybox.pre + /bin/rescue/sh"
say "     (rescue channel: ssh in and run  /bin/busybox.pre telnetd -F -l /bin/rescue/sh -p 24)"
say "     remove it with: $0 --cleanup   (frees ~640 KB)"
