#!/usr/bin/env bash
# dropbear_upgrade.sh — replace the adapter's dropbear with the newer build, without ever
# being one failed step away from losing SSH.
#
# WHY: the Realtek unit ships dropbear 2020.81 (157,856 B) with only dss + rsa host keys, so
# it can only offer `rsa-sha2-256,ssh-rsa,ssh-dss`. The IW416 baseline
# (ccpa_backups/20260708_042628_vanilla_state/rootfs.tar.gz) carries dropbear 2026.91
# (436,856 B) with ed25519/ecdsa/curve25519 compiled in. Same armv7 i.MX6UL, same kernel,
# same firmware lineage, so the binary is portable — but "should be portable" is not
# evidence, which is what step 3 is for.
#
# THE SAFETY ARGUMENT, in order:
#   1. stage      copy to /tmp (tmpfs). Nothing installed. A reboot undoes it for free.
#   2. exec-check the staged binary runs at all on this hardware (-V prints its version).
#      A wrong-arch or missing-library binary dies here, having touched nothing.
#   3. smoke      run the NEW binary on port 2222, alongside the untouched old one on 22, and
#      make a real SSH connection to it from this host. This is the whole point: the
#      replacement is proven to work on THIS unit before it replaces anything. It also runs
#      with -R so it generates the ed25519/ecdsa host keys the unit is missing.
#   4. install    copy-then-rename. `cp` over a running executable fails with ETXTBSY; writing
#      /usr/sbin/dropbear.new beside it and `mv`-ing into place is atomic, and the running
#      daemon keeps the old inode until it is restarted.
#   5. restart    kill the old daemon, start the new one, and prove a FRESH connection works.
#   6. rollback   if step 5's proof fails, restore /usr/sbin/dropbear.pre and restart it.
#
# THE FALLBACK THAT MAKES THIS SAFE AT ALL: busybox telnetd on port 23 is never touched, and
# neither is NCM. Even total loss of SSH leaves a root shell on the same USB link, which is
# how any rollback would be driven. Do not "tidy up" telnetd before running this.
#
# Usage:
#   tools/dropbear_upgrade.sh                 # full run
#   tools/dropbear_upgrade.sh --check         # report both versions, change nothing
#   tools/dropbear_upgrade.sh --rollback      # restore the .pre binary
set -euo pipefail

REPO="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
BOXSH="$REPO/tools/boxsh.py"
SRC_TAR="${SRC_TAR:-/Users/zeno/Downloads/ccpa_backups/20260708_042628_vanilla_state/rootfs.tar.gz}"
BOX="${BOX:-192.168.50.2}"
ALT_PORT=2222
MODE="run"
[ "${1:-}" = "--check" ] && MODE=check
[ "${1:-}" = "--rollback" ] && MODE=rollback

RUN_DIR="$REPO/scratchpad/dropbear_$(date +%Y%m%d_%H%M%S)"
mkdir -p "$RUN_DIR"

say()  { printf '[dropbear] %s\n' "$*"; }
warn() { printf '[dropbear] !! %s\n' "$*" >&2; }
die()  { printf '[dropbear] ABORT: %s\n' "$*" >&2; exit 1; }

SSH_OPTS=(-o StrictHostKeyChecking=no -o UserKnownHostsFile=/dev/null -o LogLevel=ERROR
          -o ConnectTimeout=8)
SSHP=(); command -v sshpass >/dev/null 2>&1 && SSHP=(sshpass -p '')

# Control channel. SSH by preference, telnet as the independent fallback — which is exactly
# the channel that matters if an SSH upgrade goes wrong, so it is wired in from the start.
ssh_box()  { "${SSHP[@]}" ssh -n "${SSH_OPTS[@]}" "root@$BOX" "$1"; }
tel_box()  { python3 "$BOXSH" --host "$BOX" --timeout 60 run "$1"; }
box() { if ssh_box 'true' >/dev/null 2>&1; then ssh_box "$1"; else tel_box "$1"; fi; }

say "run dir: $RUN_DIR"

# ---------------------------------------------------------------------------- 0. extract
[ -f "$SRC_TAR" ] || die "source rootfs not found: $SRC_TAR"
tar xzf "$SRC_TAR" -C "$RUN_DIR" usr/sbin/dropbear 2>/dev/null \
  || die "could not extract usr/sbin/dropbear from $SRC_TAR"
NEW="$RUN_DIR/usr/sbin/dropbear"
NEW_MD5=$(md5 -q "$NEW"); NEW_SIZE=$(wc -c < "$NEW" | tr -d ' ')
NEW_VER=$(strings "$NEW" | grep -oE 'dropbear_[0-9.]+' | sort -u | head -1)
say "candidate: $NEW_VER, $NEW_SIZE bytes, md5 $NEW_MD5"
# This is a MULTI-CALL binary (busybox-style): one image containing the server, dbclient,
# dropbearkey, dropbearconvert and scp, dispatched on argv[0]. So it must be staged under the
# exact name `dropbear` or it just prints its usage text and exits — which is precisely how
# the first attempt at this failed, harmlessly, at the smoke test.
say "  (multi-call image: dropbear / dbclient / dropbearkey / dropbearconvert / scp)"

CUR=$(box 'echo "$(md5sum /usr/sbin/dropbear | cut -c1-32) $(wc -c < /usr/sbin/dropbear)"' | tr -d '\r')
CUR_VER=$(box 'strings /usr/sbin/dropbear 2>/dev/null | grep -oE "SSH-2.0-dropbear_[0-9.]+" | head -1' | tr -d '\r\n')
say "installed: ${CUR_VER:-unknown}  ($CUR)"

if [ "$MODE" = check ]; then
  box 'ls -la /etc/dropbear/; echo "--- listening ---"; netstat -ltn 2>/dev/null | grep -E ":22 |:23 " || true'
  exit 0
fi

if [ "$MODE" = rollback ]; then
  say "restoring /usr/sbin/dropbear.pre"
  box 'set -e
       [ -f /usr/sbin/dropbear.pre ] || { echo "no .pre backup on the box"; exit 1; }
       cp /usr/sbin/dropbear.pre /usr/sbin/dropbear.rb && chmod 755 /usr/sbin/dropbear.rb
       mv /usr/sbin/dropbear.rb /usr/sbin/dropbear && sync
       killall dropbear 2>/dev/null; sleep 1; /usr/sbin/dropbear
       sleep 1; echo "restored: $(strings /usr/sbin/dropbear | grep -oE "SSH-2.0-dropbear_[0-9.]+" | head -1)"'
  sleep 2
  ssh_box 'echo SSH_OK; uname -srm' && say "rollback verified" || warn "SSH still not answering — use telnet"
  exit 0
fi

# ---------------------------------------------------------------------------- 1. stage
say "1/6 staging to /tmp (tmpfs — a reboot undoes this for free)"
box 'mkdir -p /tmp/dbnew' >/dev/null
if ! "${SSHP[@]}" scp "${SSH_OPTS[@]}" "$NEW" "root@$BOX:/tmp/dbnew/dropbear" >/dev/null 2>&1; then
  warn "scp failed; falling back to a cat redirect"
  "${SSHP[@]}" ssh "${SSH_OPTS[@]}" "root@$BOX" 'cat > /tmp/dbnew/dropbear' < "$NEW" \
    || die "could not stage the binary"
fi
GOT=$(box 'md5sum /tmp/dbnew/dropbear | cut -c1-32' | tr -d ' \r\n')
[ "$GOT" = "$NEW_MD5" ] || die "staged copy does not match (box $GOT != host $NEW_MD5)"
box 'chmod 755 /tmp/dbnew/dropbear' >/dev/null
say "  staged and md5-verified"

# ---------------------------------------------------------------------------- 2. exec check
say "2/6 does it execute on this hardware at all?"
VER_OUT=$(box '/tmp/dbnew/dropbear -V 2>&1 | head -2' | tr -d '\r')
echo "$VER_OUT" | sed 's/^/    /'
echo "$VER_OUT" | grep -qiE "^Dropbear v[0-9]{4}\.[0-9]+" \
  || die "the staged binary did not report a server version. If it printed multi-call usage the staging name is wrong; otherwise it is the wrong arch or missing a library. Nothing has been changed."

# ---------------------------------------------------------------------------- 3. smoke test
say "3/6 running the NEW binary on port $ALT_PORT alongside the untouched old one on 22"
# -R generates missing host keys on demand, which is how this unit gets the ed25519/ecdsa keys
# it has never had.
#
# Run it in the FOREGROUND (-F) under an ssh session this script holds open in the background,
# rather than letting it daemonise. Dropbear's own fork puts the daemon in the ssh session's
# process group, so it is SIGHUPed the moment that session closes and the port is never
# served -- verified: with -F it listens on 2222, without it "Connection refused". Holding the
# session is the same trick the file transfer needs, and it makes teardown a plain kill.
box "pkill -f 'dbnew/dropbear' 2>/dev/null; :" >/dev/null 2>&1 || true
"${SSHP[@]}" ssh -n "${SSH_OPTS[@]}" "root@$BOX" \
    "/tmp/dbnew/dropbear -p $ALT_PORT -R -F -E" >"$RUN_DIR/db_smoke.log" 2>&1 &
SMOKE_PID=$!
sleep 4
SMOKE="$RUN_DIR/smoke.txt"
if "${SSHP[@]}" ssh -n "${SSH_OPTS[@]}" -p "$ALT_PORT" "root@$BOX" \
      'echo SMOKE_OK; id; uname -srm' > "$SMOKE" 2>&1 && grep -q SMOKE_OK "$SMOKE"; then
  sed 's/^/    /' "$SMOKE"
  say "  the new dropbear serves real SSH sessions on this unit"
else
  warn "smoke test FAILED — the new binary does not serve SSH here:"
  sed 's/^/    /' "$SMOKE" 2>/dev/null
  sed 's/^/    /' "$RUN_DIR/db_smoke.log" 2>/dev/null
  kill "$SMOKE_PID" 2>/dev/null || true
  box "pkill -f 'dbnew/dropbear' 2>/dev/null; :" >/dev/null 2>&1 || true
  die "not installing. The running dropbear was never touched."
fi
say "  host keys after -R (ed25519/ecdsa should now exist):"
box 'ls -la /etc/dropbear/' | sed 's/^/    /'
kill "$SMOKE_PID" 2>/dev/null || true
box "pkill -f 'dbnew/dropbear' 2>/dev/null; :" >/dev/null 2>&1 || true

# ---------------------------------------------------------------------------- 4. install
say "4/6 installing by copy-then-rename (ETXTBSY-safe; the running daemon keeps its inode)"
box 'set -e
     [ -f /usr/sbin/dropbear.pre ] || cp /usr/sbin/dropbear /usr/sbin/dropbear.pre
     cp /tmp/dbnew/dropbear /usr/sbin/dropbear.stage
     chmod 755 /usr/sbin/dropbear.stage
     mv /usr/sbin/dropbear.stage /usr/sbin/dropbear
     sync
     echo "installed md5=$(md5sum /usr/sbin/dropbear | cut -c1-32) size=$(wc -c < /usr/sbin/dropbear)"' \
  | sed 's/^/    /'

# The image already contains scp/dbclient/dropbearkey; symlinks cost nothing and give the box
# a local ssh client, a key generator and an scp it never had.
box 'for a in scp dbclient dropbearkey dropbearconvert; do
       [ -e /usr/sbin/$a ] || ln -s dropbear /usr/sbin/$a; done
     ls -la /usr/sbin/scp /usr/sbin/dbclient /usr/sbin/dropbearkey 2>/dev/null' | sed 's/^/    /'

# ---------------------------------------------------------------------------- 5. restart
say "5/6 restarting the daemon and proving a FRESH connection"
# Driven over telnet on purpose: this kills the SSH daemon we would otherwise be sitting on.
tel_box 'killall dropbear 2>/dev/null; sleep 1; /usr/sbin/dropbear; sleep 2; echo "running: $(pidof dropbear)"' \
  | sed 's/^/    /'
sleep 2
FRESH="$RUN_DIR/fresh.txt"
if "${SSHP[@]}" ssh -n "${SSH_OPTS[@]}" "root@$BOX" 'echo FRESH_OK; uname -srm' > "$FRESH" 2>&1 \
   && grep -q FRESH_OK "$FRESH"; then
  sed 's/^/    /' "$FRESH"
  say "  SSH is back on port 22, on the new binary"
else
  warn "SSH did NOT come back. Rolling back over telnet now."
  tel_box 'cp /usr/sbin/dropbear.pre /usr/sbin/dropbear.rb && chmod 755 /usr/sbin/dropbear.rb
           mv /usr/sbin/dropbear.rb /usr/sbin/dropbear && sync
           killall dropbear 2>/dev/null; sleep 1; /usr/sbin/dropbear; echo rolled-back'
  die "rolled back to the previous dropbear; telnet and NCM are unaffected"
fi

# ---------------------------------------------------------------------------- 6. report
say "6/6 result"
{
  echo "version:  $("${SSHP[@]}" ssh -n "${SSH_OPTS[@]}" "root@$BOX" 'strings /usr/sbin/dropbear | grep -oE "SSH-2.0-dropbear_[0-9.]+" | head -1')"
  echo "offered host key algorithms:"
  ssh -vv -o StrictHostKeyChecking=no -o UserKnownHostsFile=/dev/null -o ConnectTimeout=8 \
      -o BatchMode=yes "root@$BOX" true 2>&1 | grep -m1 -A0 "host key algorithms" | tail -1
} 2>&1 | sed 's/^/    /' | tee "$RUN_DIR/result.txt"
say "done. Previous binary kept at /usr/sbin/dropbear.pre (rollback: $0 --rollback)"
