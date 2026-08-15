#!/usr/bin/env bash
# ncm_base_install.sh — take an NCM-capable CPC200-CCPA to the owned NCM base, over the NCM link.
#
# STARTING POINT (required): an adapter already running the NCM .img — `/script/custom_init.sh`
# + `/script/ncm_only`, CDC-NCM armed early in boot, root shell reachable at 192.168.50.2.
# That image is the distributed on-ramp; this script is the CONTINUATION and assumes the link
# exists. It does not bootstrap NCM and will refuse to run without it.
#
# ENDPOINT: the 2026-07-08 baseline (`ccpa/backup/base`) MINUS OCBM — Carlinkit's projection
# stack (riddleBox: ARMadb-driver / ARMiPhoneIAP2 / AppleCarPlay / ARMAndroidAuto / ARMHiCar /
# boa / riddle_top / …) removed, every remaining script owned and dead-reference-free, radios
# on-demand, NCM always-on, UART root console armed before rcS. No ocbmd, no ocbm_boot.sh, no
# daemons — this is the clean base OCBM is then installed onto.
#
# ============================== ORDER OF OPERATIONS ====================================
# 1. preflight    identify the unit; refuse to touch a surprise
# 2. backup       full NOR (mtd0/1/2) + rootfs tarball pulled to the host
# 3. bootpath     the ENTIRE owned boot path, installed while every vendor file is still on
#                 disk: UART console as ::sysinit before rcS, NCM armed as early as boot
#                 allows, and the owned rcS + start_main_service.sh. Deletes NOTHING. The
#                 last of those is what disarms the vendor stack — it is the only thing that
#                 launches check_mfg_mode.sh, boa, mdnsd, boxNetworkService, riddle_top et al.
# 4. coldtest     power-cycle. The box now boots the FINAL configuration, with the old stack
#                 still on disk as a fallback. Must come back on USB-NCM unaided.
# 5. strip        only now delete — and by now nothing being deleted is running or referenced,
#                 so the strip never has to kill a live process. It ASSERTS that.
# 5b. prunelibs   OPTIONAL (--prune-libs): vendor + toolchain libraries, each one cleared
#                 first by a reference scan of what this unit's surviving binaries name
# 6. audit        sh -n every script, scan for dead references and dangling refs
# 7. coldtest2    power-cycle again; prove the STRIPPED box still self-arms NCM
# 8. tidy         OPTIONAL: drop the .pre/.bak copies once coldtest2 has passed
#
# The gate that matters: nothing is deleted until a cold boot has come back on NCM alone.
# Fail at step 4 and you abort with a fully working adapter. Recovery tiers behind that:
# UART pads (armed at step 3) and the SPI programmer with the step-2 image.
#
# ============================== WHAT IS NEVER TOUCHED ==================================
# * mtd0 (HAB-signed U-Boot) / mtd1 (OTPMK-encrypted kernel) — read for backup, never written.
# * /script/ko.tar.gz — gadget modules built against THIS unit's kernel. Overwriting them
#   with another unit's copy loses the gadget, and with it NCM, and with it the box.
# * ANYTHING WLAN/BT — see the variant rule below. This is the single biggest hazard here.
# * /etc/riddle.conf, unit MACs, dropbear host keys, hostapd SSID/PSK — unit identity.
# * dropbear / telnetd / udhcpd and the gadget itself — that is the control channel you are
#   standing on. The strip never stops them and never bounces the gadget.
#
# ======================= THE WLAN VARIANT RULE (read before editing a kill list) =======
# There are several CCPA variants with different WLAN/BT silicon. `init_bluetooth_wifi.sh` is
# the vendor's own dispatcher and reads the SDIO card ID to pick a branch:
#
#   0xb822 / 0xc822  Realtek RTL8822BS / RTL8822CS   88x2bs.ko / 88x2cs.ko, rtlbt/rtl8822_ko.tar.gz
#   0xb733           Realtek RTL8733BS               8733bs.ko,             rtlbt/rtl8733_ko.tar.gz
#   0x4354 / 0x4335  Broadcom BCM4354/4335           bcmdhd.ko,             bcm/bcm4354_ko.tar.gz
#   0x4358 / 0xaa31  Broadcom BCM4358                bcmdhd.ko,             bcm/bcm4358_ko.tar.gz
#   0x9149 / 0x9141  NXP SD8987                      mlan.ko/moal.ko,       nxp/sd8987_ko.tar.gz
#   0x9159           NXP/Marvell IW416               mlan.ko/moal.ko,       nxp/iw416_ko.tar.gz
#
# The decisive fact (resources repo, 01_Firmware_Architecture/device_variants_and_conversion.md):
# **only the driver tarball for the unit's own chip ships in its rootfs.** An RTL8822CS unit
# carries 88x2cs.ko + rtk_hci_uart.ko and nothing else — there is no fallback set to fall back
# to. Delete a variant's WLAN files and its radios are gone until it is reflashed.
#
# So this script does not branch on a chipset whitelist (an unrecognised variant would fall off
# the end of one). Instead:
#   (a) nothing WLAN/BT is in any kill list;
#   (b) the generated payload re-checks EVERY candidate against `is_radio()` immediately before
#       deleting it, so a later edit to a list cannot bypass the rule — it prints
#       "SKIP (WLAN/BT guard)" and moves on;
#   (c) no radio script or firmware is ever installed FROM the repo overlay, because those are
#       the IW416 baseline's. Each unit keeps its own bring-up path, which means the vendor
#       scripts (init_bluetooth_wifi.sh + attach_bluetooth.sh + start_bluetooth_wifi.sh) are
#       KEPT and become the on-demand radio path, in place of the baseline's IW416-only
#       wlan_on.sh/bt_on.sh. `audit` will list them under "dead references"; that is expected
#       on this base and is not a failure.
# Preflight reports the detected variant for the log; it never gates behaviour.
#
# ============================== TRANSPORT ==============================================
# Default is `busybox telnetd -l /bin/sh` on port 23 via tools/boxsh.py: no login, no
# password, no crypto negotiation — the one channel that behaves identically on the shipped
# .img, on a half-stripped unit, and on the finished base. The box's dropbear is old enough
# (SHA-1 kex, ssh-rsa host key) that modern OpenSSH refuses it without a pile of overrides
# and cannot be given a blank password without sshpass. `--via ssh` selects it anyway.
#
# ============================== USAGE ==================================================
#   tools/ncm_base_install.sh install             # interactive: connect, show specs, confirm
#   tools/ncm_base_install.sh preflight
#   tools/ncm_base_install.sh backup
#   tools/ncm_base_install.sh earlyaccess
#   tools/ncm_base_install.sh coldtest            # issues the reboot itself, then waits
#   tools/ncm_base_install.sh strip --dry-run     # prints the kill list, deletes nothing
#   tools/ncm_base_install.sh strip
#   tools/ncm_base_install.sh prunelibs --dry-run   # optional: /usr/lib + /lib, ref-guarded
#   tools/ncm_base_install.sh audit
#   tools/ncm_base_install.sh coldtest2
#   tools/ncm_base_install.sh all                 # the above, with gates between
#
# Options:
#   --host IP        adapter address (default 192.168.50.2 — NOT .100, that is your Mac's
#                    DHCP lease from the adapter's udhcpd)
#   --pass PW        root password; implies ssh. Omit for the shipped blank-password unit —
#                    `install` prompts for an IP/password only if the default endpoint is dead
#   --via telnet|ssh transport (default telnet)
#   --host-if enX    your USB-NCM interface; forced to a static 192.168.50.1 while waiting
#                    for a cold boot, for when macOS will not re-DHCP the new interface
#   --run-dir DIR    where backups/reports land (default scratchpad/ncmbase_<stamp>)
#   --deep           also drop vendor cruft the baseline dropped but nothing depends on
#   --wifi-backstop  rest on `ncm_wifi` (NCM + Wi-Fi AP) instead of `ncm_only` during the
#                    run, for a second way in on a unit with no UART wired
#   --prune-libs     also run the `prunelibs` phase inside `all` (see the phase list)
#   --keep-web       keep /usr/sbin/boa + /etc/boa. Use when the unit carries a web UI that
#                    is not the vendor's — `baselinediff` warns when it detects one
#   --dry-run        enumerate and report; change nothing
#   --yes            skip the gates (soak/CI use — think first)
set -euo pipefail

REPO="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
OVERLAY="$REPO/ccpa/rootfs"
BOXSH="$REPO/tools/boxsh.py"

BOX="192.168.50.2"
BOX_PW=""
VIA="telnet"
HOST_IF=""
HOST_IP="192.168.50.1"
RUN_DIR=""
DEEP=0
WIFI_BACKSTOP=0
PRUNE_LIBS=0
KEEP_WEB=0
DRY=0
ASSUME_YES=0
PHASES=()

while [ $# -gt 0 ]; do
  case "$1" in
    --host) BOX="$2"; shift 2 ;;
    --pass) BOX_PW="$2"; VIA=ssh; shift 2 ;;
    --via) VIA="$2"; shift 2 ;;
    --host-if) HOST_IF="$2"; shift 2 ;;
    --run-dir) RUN_DIR="$2"; shift 2 ;;
    --deep) DEEP=1; shift ;;
    --wifi-backstop) WIFI_BACKSTOP=1; shift ;;
    --prune-libs) PRUNE_LIBS=1; shift ;;
    --keep-web) KEEP_WEB=1; shift ;;
    --dry-run) DRY=1; shift ;;
    --yes|-y) ASSUME_YES=1; shift ;;
    -h|--help) sed -n '2,70p' "$0"; exit 0 ;;
    -*) echo "unknown option: $1" >&2; exit 2 ;;
    *) PHASES+=("$1"); shift ;;
  esac
done
[ ${#PHASES[@]} -gt 0 ] || { echo "no phase given (try --help)" >&2; exit 2; }
[ -n "$RUN_DIR" ] || RUN_DIR="$REPO/scratchpad/ncmbase_$(date +%Y%m%d_%H%M%S)"
mkdir -p "$RUN_DIR"

say()  { printf '[ncm-base] %s\n' "$*"; }
warn() { printf '[ncm-base] !! %s\n' "$*" >&2; }
die()  { printf '[ncm-base] ABORT: %s\n' "$*" >&2; exit 1; }

gate() {
  [ "$ASSUME_YES" = 1 ] && { say "gate (auto-yes): $*"; return 0; }
  printf '\n[ncm-base] GATE: %s\n[ncm-base] type YES to continue: ' "$*"
  local a; read -r a
  [ "$a" = "YES" ] || die "stopped at gate"
}

# --------------------------------------------------------------------------------------
# Transport. box/push/pull dispatch on --via so every phase below is written once.
# --------------------------------------------------------------------------------------
SSH_OPTS=(-o StrictHostKeyChecking=no -o UserKnownHostsFile=/dev/null -o LogLevel=ERROR
          -o ConnectTimeout=8 -o HostKeyAlgorithms=+ssh-rsa -o PubkeyAcceptedAlgorithms=+ssh-rsa
          -o KexAlgorithms=+diffie-hellman-group14-sha1 -o Ciphers=+aes128-ctr)

box() {   # run a shell command on the box; stdout passthrough, exit status preserved
  if [ "$VIA" = telnet ]; then python3 "$BOXSH" --host "$BOX" --timeout "${BOX_TIMEOUT:-45}" run "$1"
  elif [ -n "$BOX_PW" ] && command -v sshpass >/dev/null 2>&1; then
    sshpass -p "$BOX_PW" ssh "${SSH_OPTS[@]}" "root@$BOX" "$1"
  else ssh "${SSH_OPTS[@]}" "root@$BOX" "$1"; fi
}
box_slow() { BOX_TIMEOUT=600 box "$1"; }   # 528 MHz ARM: whole-rootfs scans need real time
boxq() { box "$1" >/dev/null 2>&1; }
push() {  # $1 local  $2 remote  [$3 mode]
  if [ "$VIA" = telnet ]; then python3 "$BOXSH" --host "$BOX" --mode "${3:-755}" put "$1" "$2" >/dev/null
  else scp "${SSH_OPTS[@]}" -O "$1" "root@$BOX:$2" >/dev/null && ssh "${SSH_OPTS[@]}" "root@$BOX" "chmod ${3:-755} $2"; fi
}
pull() {  # $1 remote  $2 local — big files go over nc, which is ~100x faster than base64
  local size; size=$(box "wc -c < $1" | tr -d ' \r\n')
  if [ "${size:-0}" -gt 262144 ] && command -v nc >/dev/null 2>&1; then
    boxq "pkill -f 'nc -l -p 9899'; :" || true
    box "(busybox nc -l -p 9899 < $1 >/dev/null 2>&1 &) ; sleep 1; echo listening" >/dev/null
    if nc -w 120 "$BOX" 9899 > "$2" 2>/dev/null && [ -s "$2" ]; then
      local want got
      want=$(box "md5sum $1 | cut -c1-32" | tr -d ' \r\n')
      got=$(md5 -q "$2")
      [ "$want" = "$got" ] && return 0
      warn "nc transfer of $1 did not verify (md5 $got != $want); falling back to base64"
    fi
  fi
  python3 "$BOXSH" --host "$BOX" --timeout 180 get "$1" "$2" >/dev/null
}

host_if_up() { [ -n "$HOST_IF" ] || return 0; sudo ifconfig "$HOST_IF" inet "$HOST_IP" netmask 255.255.255.0 up 2>/dev/null || true; }

wait_box() {
  local deadline=$(( SECONDS + ${1:-200} )) n=0
  while [ $SECONDS -lt $deadline ]; do
    host_if_up
    if boxq 'true'; then say "box is up ($BOX)"; return 0; fi
    n=$((n+1)); [ $((n % 6)) = 0 ] && say "waiting for $BOX … $(( deadline - SECONDS ))s left"
    sleep 5
  done
  return 1
}

# ======================================================================================
# Kill lists.
#
# Tier A is the Carlinkit projection stack and its hangers-on — this is what "the Carlinkit
# protocol removed" means, and all of it goes. Tier B is vendor cruft the 07-08 baseline also
# dropped; nothing depends on it, so it sits behind --deep.
#
# Deliberately in NEITHER list, i.e. always kept:
#   dropbear telnetd udhcpd            — the control channel you are standing on
#   hostapd bluetoothDaemon hcid hfpd hcitool hciconfig dbus-daemon set_wifi_mac
#   the radio stack — see the variant rule below
#
# THE VARIANT RULE. There are several CCPA hardware variants with different WLAN/BT silicon
# (NXP IW416 with `fw_loader_linux`+`hciattach`, Realtek RTL8822CS/RTL88x2CS with
# `rtk_hciattach`+`wl`, and others). They differ in which attach helper, which /lib/firmware
# tree and which bring-up script they need, and a unit that loses its own set has no radios
# and no way to get them back short of a reflash.
#
# So this script does not branch on a chipset whitelist — an unrecognised variant would fall
# off the end of one. Instead: (a) nothing radio-related is ever in a kill list, (b) the
# generated payload re-checks every candidate against `is_radio()` before deleting it, so a
# later edit to the lists cannot bypass the rule, and (c) no radio script or firmware is ever
# installed FROM the repo overlay (those are the IW416 baseline's). Each unit keeps its own.
# Detection below is reported for the log; it never gates behaviour.
# ======================================================================================
SBIN_A="AppleCarPlay ARMadb-driver ARMandroid_Mirror ARMAndroidAuto ARMHiCar ARMiPhoneIAP2 \
AutomaticTest boa boa_old boxHUDServer boxImgTools boxImgTools.zip boxNetworkService \
colorLightDaemon fakeAADevice fakeCarLife fakeiOSDevice hwSecret mdnsd riddle_top \
riddleBoxCfg usbmuxd"
# NOT in SBIN_B on purpose, even though the 07-08 baseline dropped them: i2cdetect/i2cset are
# the bring-up tools for the MFi coprocessor on /dev/i2c-1 @0x11, and flash_erase is a recovery
# tool. 69 KB total, and all three are wanted by the work that comes after this script.
SBIN_B="ARMimg_maker hwfsTools tinymix mkfs.fat reset_usb"

SCRIPT_A="check_mfg_mode.sh check_log_size.sh cpu_UsageRate.sh check_update.sh check_udisk_log.sh \
phone_link_deamon.sh start_iphone.sh start_aoa.sh start_accessory.sh \
start_accessory_mass_storage.sh start_mass_storage.sh start_mtp.sh start_hnp.sh \
start_iap2_ncm.sh start_android_ncm.sh up_apple_net.sh getFuncModule.sh \
start_mic_record.sh test_mic.sh set_wm8960_mix.sh set_wm8978_mix.sh init_audio_codec.sh \
mount-SK.sh mount-UPAN.sh mount-TF.sh mount-LJ.sh mount-gadgetfs.sh smart_copy.sh \
reset_usb_bus.sh open_log.sh goto_burn_mode.sh update_box.sh update_box_ota.sh \
update_kernel.sh update_dtb.sh module_upgrade.sh quickly_update.sh custom_init.sh.disabled"
ETC_A="airplay.conf airplay_brand.conf airplay_car.conf airplay_none.conf airplay_siri.conf \
android_work_mode BoxHelper.apk box_brand.png car.png car_manu_info icon_120x120.png \
icon_180x180.png icon_256x256.png oem_icon.png siri.png rgbLight.conf mime.types \
dhcp6s.conf udhcpd_hicar_ap.conf dbus-1/system.d/riddle.conf"
# Only riddle.conf goes from etc/dbus-1/system.d — bluetooth.conf and hfpd.conf stay, the
# 07-08 pass kept them and dbus-daemon/hcid/hfpd are still the radio stack.

# Libraries the 07-08 pass also dropped, recovered by diffing its own pre/post rootfs
# tarballs. This is where the rest of that pass's 6.2 MB of free space came from — the kill
# lists above only account for ~2.5 MB. Guarded by a reference scan (see phase_prunelibs):
# the baseline unit is IW416 and this one may be Realtek, so "unused there" is not evidence
# of "unused here" and nothing is removed that any surviving binary still names.
LIB_VENDOR="libARMtool.so libauthagent.so libboxtrans.so libcrypto.so libcrypto.so.1.1 \
libdmsdp.so libdmsdpaudiohandler.so libdmsdpcamerahandler.so libdmsdpdvaudio.so \
libdmsdpdvcamera.so libdmsdpdvdevice.so libdmsdpdvgps.so libdmsdpdvinterface.so \
libdmsdpgpshandler.so libdmsdphisight.so libdmsdpplatform.so libdmsdpsec.so libdns_sd.so \
libfdk-aac.so libfdk-aac.so.1 libfdk-aac.so.1.0.0 libhicar.so libHisightSink.so \
libHwDeviceAuthSDK.so libHwKeystoreSDK.so libmanagement.so libnearby.so libsecurec.so \
libssl.so libssl.so.1.1 libtinyalsa.so libusb-1.0.so libusb-1.0.so.0 libusb-1.0.so.0.1.0"
LIB_DEV="Mcrt1.o Scrt1.o crt1.o crti.o crtn.o gcrt1.o libasan_preinit.o libasan.la \
libatomic.la libgomp.la libitm.la libsanitizer.spec libssp.la libssp_nonshared.la \
libstdc++.la libsupc++.la libubsan.la libgomp.spec libitm.spec \
libanl-2.20.so libanl.so libanl.so.1 libasan.so libasan.so.1 \
libBrokenLocale-2.20.so libBrokenLocale.so libBrokenLocale.so.1 libc.so \
libcidn-2.20.so libcidn.so libcidn.so.1 libgcc_s.so libgomp.so libgomp.so.1 \
libgomp.so.1.0.0 libitm.so libitm.so.1 libitm.so.1.0.0 libmemusage.so \
libnss_db-2.20.so libnss_db.so libnss_db.so.2 libnss_hesiod-2.20.so libnss_hesiod.so \
libnss_hesiod.so.2 libnss_nisplus-2.20.so libnss_nisplus.so libnss_nisplus.so.2 \
libpcprofile.so libpthread.so libSegFault.so libstdc++.so libthread_db-1.0.so \
libthread_db.so libthread_db.so.1 libubsan.so libubsan.so.0"
ETC_B="riddle_default.conf riddle.conf"          # riddle.conf carries unit config — --deep only
# Vendor daemons/loops to STOP before deleting their files. dropbear/telnetd/udhcpd and the
# radio stack are absent from this list on purpose.
KILL_PROCS="ARMadb-driver ARMiPhoneIAP2 ARMAndroidAuto ARMHiCar ARMandroid_Mirror AppleCarPlay \
AutomaticTest boa boxNetworkService boxHUDServer colorLightDaemon mdnsd riddle_top usbmuxd \
fakeiOSDevice fakeCarLife fakeAADevice"
KILL_LOOPS="check_mfg_mode check_log_size cpu_UsageRate check_update phone_link_deamon check_udisk_log"

# ======================================================================================
# PHASES
# ======================================================================================

phase_connect() {
  # Try the known-good NCM endpoint first, because on the shipped .img that is what it is:
  # 192.168.50.2, telnetd with no login. Only if that fails do we ask, so the common case is
  # zero prompts.
  say "=== connect ==="
  say "trying the default NCM endpoint: root@$BOX (telnet, no password)"
  if wait_box 20; then say "connected to $BOX over $VIA"; return 0; fi

  warn "no shell at $BOX."
  warn "Note: 192.168.50.100 is normally YOUR host's DHCP lease from the adapter, not the adapter."
  while :; do
    printf '[ncm-base] adapter IP [%s]: ' "$BOX"; local ip; read -r ip
    [ -n "$ip" ] && BOX="$ip"
    printf '[ncm-base] root password (blank = none, as shipped): '; stty -echo 2>/dev/null; read -r BOX_PW; stty echo 2>/dev/null; echo
    if [ -z "$BOX_PW" ]; then
      VIA=telnet; say "trying telnet://$BOX (no password)"
      wait_box 20 && { say "connected over telnet"; return 0; }
      VIA=ssh; say "telnet did not answer; trying ssh root@$BOX"
    else
      VIA=ssh; say "password given → using ssh root@$BOX"
    fi
    wait_box 20 && { say "connected over ssh"; return 0; }
    warn "still no shell at $BOX."
    printf '[ncm-base] retry? [Y/n]: '; local again; read -r again
    case "$again" in [Nn]*) die "no connection to the adapter";; esac
  done
}

phase_specs() {
  # The spec sheet the confirmation is based on. Everything here is read-only, and every number
  # quoted in the confirmation prompt below comes from this pass, not from an assumption.
  say "=== specs ==="
  local pf="$RUN_DIR/preflight.txt"
  [ -f "$pf" ] || { phase_preflight; }
  local sw ser var sid free used tot vb ncm ec
  sw=$(grep -o 'sw_version : .*' "$pf" | cut -d: -f2- | tr -d ' ')
  var=$(grep -o 'wlan_variant=.*' "$pf" | cut -d= -f2)
  sid=$(grep -o 'sdio_card_id=.*' "$pf" | cut -d= -f2)
  ser=$(box 'cat /etc/serial_number 2>/dev/null' | tr -d ' \r\n')
  set -- $(box 'df -k / | tail -1' | tr -d '\r')
  tot=$2; used=$3; free=$4
  vb=$(grep -o 'vendor_binaries=[0-9]*' "$pf" | cut -d= -f2)
  ncm=$(grep -o 'custom_init=[A-Za-z]*' "$pf" | cut -d= -f2)
  ec=$(grep -o 'early_console=[a-zA-Z]*' "$pf" | cut -d= -f2)

  # What the strip would reclaim, measured on THIS box rather than estimated.
  local reclaim
  reclaim=$(DRY=1 ; python3 "$BOXSH" --host "$BOX" --timeout 90 run "
t=0
for b in $SBIN_A $( [ "$DEEP" = 1 ] && echo "$SBIN_B" ); do [ -e /usr/sbin/\$b ] && t=\$((t+\$(du -sk /usr/sbin/\$b | cut -f1))); done
for s in $SCRIPT_A; do [ -e /script/\$s ] && t=\$((t+\$(du -sk /script/\$s | cut -f1))); done
for e in $ETC_A; do [ -e /etc/\$e ] && t=\$((t+\$(du -sk /etc/\$e | cut -f1))); done
[ -e /etc/boa ] && t=\$((t+\$(du -sk /etc/boa | cut -f1)))
echo \$t" 2>/dev/null | tr -d ' \r\n')

  cat <<EOF

  ┌─ ADAPTER ────────────────────────────────────────────────────────
  │  address        $BOX  (via $VIA${BOX_PW:+, password set})
  │  firmware       ${sw:-?}
  │  serial         ${ser:-?}
  │  WLAN variant   ${var:-?}   (SDIO id ${sid:-?})
  │  rootfs         ${tot}K total, ${used}K used, ${free}K free
  ├─ CURRENT STATE ──────────────────────────────────────────────────
  │  NCM persistent ${ncm:-?}        (custom_init.sh installed)
  │  UART console   ${ec:-?}        (early_console.sh before rcS)
  │  Carlinkit stack ${vb:-?} projection binaries still installed
  ├─ WHAT THIS WILL DO ──────────────────────────────────────────────
  │  remove         the Carlinkit projection stack (~${reclaim:-?}K)
  │  install        the owned boot scripts + UART early console
  │  KEEP UNTOUCHED all WLAN/BT files for ${var:-this variant},
  │                 /script/ko.tar.gz, unit identity, mtd0/mtd1,
  │                 and dropbear/telnetd/udhcpd (your way in)
  └──────────────────────────────────────────────────────────────────

EOF
}

phase_confirm() {
  phase_specs
  gate "strip the original Carlinkit firmware from this adapter and create the NCM baseline? A full NOR backup is taken first, and nothing is deleted until a cold boot has proven NCM self-arms."
}

phase_preflight() {
  say "=== preflight ==="
  wait_box 45 || die "no shell at $BOX. This script CONTINUES from the NCM .img; it does not bootstrap the link. Check that the adapter is on USB, that your interface has a 192.168.50.x address, and that the adapter is at .2 (192.168.50.100 is usually YOUR lease, not the box)."

  box '
echo "== identity =="
echo "hostname   : $(hostname)"
echo "kernel     : $(uname -r) $(uname -m)"
echo "sw_version : $(cat /etc/software_version 2>/dev/null)"
echo "uptime     : $(cut -d. -f1 /proc/uptime)s"
df -h / | tail -1
echo "== gadget =="
A=/sys/class/android_usb_accessory/android0
echo "acc_sysfs=$([ -e $A/enable ] && echo present || echo MISSING) functions=$(cat $A/functions 2>/dev/null) state=$(cat $A/state 2>/dev/null) vid=$(cat $A/idVendor 2>/dev/null) pid=$(cat $A/idProduct 2>/dev/null)"
echo "phone_side=$([ -e /sys/class/android_usb/android0/enable ] && echo present || echo MISSING)"
busybox ifconfig ncm0 2>/dev/null | head -2
echo "== ncm persistence =="
echo "ncm_only=$([ -e /script/ncm_only ] && echo YES || echo no) ncm_wifi=$([ -e /script/ncm_wifi ] && echo YES || echo no)"
echo "custom_init=$([ -e /script/custom_init.sh ] && echo YES || echo no) early_armed=$([ -e /tmp/ncm_early_armed ] && echo YES || echo no)"
echo "custom_init_md5=$(md5sum /script/custom_init.sh 2>/dev/null | cut -c1-32)"
grep -c "custom_init" /script/start_main_service.sh >/dev/null 2>&1 && echo "sms_hook=YES" || echo "sms_hook=NO"
echo "== uart console =="
grep -n "early_console\|ttymxc0" /etc/inittab 2>/dev/null || echo "  (no ttymxc0 line in inittab)"
echo "early_console=$([ -x /script/early_console.sh ] && echo YES || echo no)"
echo "== wlan variant (informational — nothing branches on this) =="
# Same source the vendor dispatcher uses. Reported, never gated: an unlisted id is fine,
# because the WLAN/BT guard protects by pattern, not by whitelist.
sid=$(cat /sys/module/*/parameters/sdio 2>/dev/null | head -1)
[ -n "$sid" ] || sid=$(grep -ihoE "0x[0-9a-f]{4}" /sys/bus/sdio/devices/*/device 2>/dev/null | head -1)
echo "sdio_card_id=${sid:-unreadable}"
case "$sid" in
  0xb822|0xc822) echo "wlan_variant=realtek_rtl8822";;
  0xb733)        echo "wlan_variant=realtek_rtl8733";;
  0x4354|0x4335) echo "wlan_variant=broadcom_bcm4354";;
  0x4358|0xaa31) echo "wlan_variant=broadcom_bcm4358";;
  0x9149|0x9141) echo "wlan_variant=nxp_sd8987";;
  0x9159)        echo "wlan_variant=nxp_iw416";;
  *)             echo "wlan_variant=undetermined_by_sdio_id";;
esac
echo "firmware_trees: $(ls /lib/firmware 2>/dev/null | tr "\n" " ")"
echo "attach_helpers: $(ls /usr/sbin 2>/dev/null | grep -i "hciattach\|patchram\|fw_loader" | tr "\n" " ")"
echo "radio_scripts : $(ls /script 2>/dev/null | grep -i "bluetooth\|wlan\|wifi\|^bt_" | tr "\n" " ")"
echo "wlan_modules  : $(ls /lib/firmware/*/*.tar.gz /tmp/*.ko 2>/dev/null | tr "\n" " ")"
echo "== vendor stack still present =="
n=0; for f in /usr/sbin/ARMadb-driver /usr/sbin/ARMiPhoneIAP2 /usr/sbin/AppleCarPlay /usr/sbin/ARMAndroidAuto /usr/sbin/boa /usr/sbin/riddle_top; do
  [ -e "$f" ] && { echo "  HAVE $f"; n=$((n+1)); }; done
echo "vendor_binaries=$n"
echo "== running =="
ps | grep -vE "\[.*\]" | tail -30
' | tee "$RUN_DIR/preflight.txt"

  local pf="$RUN_DIR/preflight.txt"
  grep -q "acc_sysfs=present" "$pf" || die "the host-facing accessory gadget sysfs is missing — NCM has nothing to bind to."
  grep -q "sms_hook=YES"      "$pf" || die "/script/start_main_service.sh has no custom_init hook: this is not the NCM .img boot path. Stop and check the image."
  grep -q "custom_init=YES"   "$pf" || die "/script/custom_init.sh absent — this unit is not running the NCM .img. This script continues from that image; it does not create the link."
  say "wlan variant: $(grep -o 'wlan_variant=.*' "$pf" | head -1 | cut -d= -f2) — kept intact either way (guard is by pattern, not whitelist)"
  local n; n=$(grep -o "vendor_binaries=[0-9]*" "$pf" | cut -d= -f2)
  say "vendor projection binaries still present: ${n:-?}"
  say "report: $pf"
}

phase_backup() {
  say "=== backup — full NOR + rootfs, before anything is modified ==="
  # RAM is 128 MB (~107 MB free tmpfs); NOR is 16 MB and the rootfs ~10 MB. Both stage in
  # /tmp comfortably. mtd0/mtd1 are READ here and never written.
  box '
set -e
rm -rf /tmp/bk; mkdir -p /tmp/bk
for i in 0 1 2; do dd if=/dev/mtd$i of=/tmp/bk/mtd$i.bin bs=64k 2>/dev/null; done
cd / && tar czf /tmp/bk/rootfs.tar.gz --exclude=./proc --exclude=./sys --exclude=./dev \
        --exclude=./tmp --exclude=./mnt --exclude=./media . 2>/dev/null || true
{ echo "state=NCM-IMG (pre-strip; Carlinkit stack intact)";
  echo "sw=$(cat /etc/software_version 2>/dev/null)";
  echo "uptime=$(cut -d. -f1 /proc/uptime)s"; df -h /; echo "--- ps ---"; ps;
  echo "--- /script ---"; ls /script; echo "--- /usr/sbin ---"; ls -S /usr/sbin;
  echo "--- gadget ---"; cat /sys/class/android_usb_accessory/android0/functions; } > /tmp/bk/manifest.txt
md5sum /tmp/bk/* > /tmp/bk/MD5SUMS
ls -la /tmp/bk'
  mkdir -p "$RUN_DIR/backup_pre"
  for f in manifest.txt MD5SUMS mtd0.bin mtd1.bin mtd2.bin rootfs.tar.gz; do
    say "pulling $f"; pull "/tmp/bk/$f" "$RUN_DIR/backup_pre/$f"
  done
  box 'rm -rf /tmp/bk' >/dev/null
  cat "$RUN_DIR/backup_pre/mtd0.bin" "$RUN_DIR/backup_pre/mtd1.bin" "$RUN_DIR/backup_pre/mtd2.bin" \
      > "$RUN_DIR/backup_pre/full_nor_16MB.bin"
  ( cd "$RUN_DIR/backup_pre" && shasum -a 256 ./* > SHA256SUMS )
  local sz; sz=$(stat -f %z "$RUN_DIR/backup_pre/full_nor_16MB.bin")
  [ "$sz" = 16777216 ] || die "recomposed NOR is $sz bytes, expected 16777216 — the backup is not trustworthy; do not proceed"
  say "backup verified → $RUN_DIR/backup_pre/full_nor_16MB.bin (SPI-programmer restore image)"
}

phase_earlyaccess() {
  say "=== earlyaccess — UART console before rcS, NCM as early as boot allows ==="
  # This is step one for a reason: it is the recovery floor everything after it leans on, and
  # it is what was validated on the first adapter. Two levers:
  #
  #  (a) /script/early_console.sh registered as the FIRST ::sysinit in /etc/inittab, i.e.
  #      BEFORE /etc/init.d/rcS. It backgrounds a self-respawning 115200 root shell on
  #      ttymxc0 and returns immediately, so a diagnostic shell exists before rcS's
  #      mount/mdev/service steps can hang. The stock `ttymxc0::respawn:getty` line only
  #      comes up after rcS and dies with it; this one does not.
  #  (b) /script/custom_init.sh, called at start_main_service.sh:42 — arms the CDC-NCM gadget
  #      at ~T+3s, before the radios, and sets /tmp/UDiskPassThroughMode so the vendor
  #      runMainProcess skips ARMadb-driver and nothing clobbers the gadget afterwards.
  #
  # The .img already ships (b). We verify it byte-for-byte against the repo copy rather than
  # trusting it, and add (a).
  local ci_md5 repo_md5
  repo_md5=$(md5 -q "$OVERLAY/script/custom_init.sh")
  ci_md5=$(box 'md5sum /script/custom_init.sh 2>/dev/null | cut -c1-32' | tr -d ' \r\n')
  if [ "$ci_md5" = "$repo_md5" ]; then
    say "custom_init.sh matches the repo copy ($repo_md5) — NCM early-arm is the known-good one"
  else
    warn "custom_init.sh differs from the repo copy (box $ci_md5 / repo $repo_md5)"
    gate "replace /script/custom_init.sh with the repo copy? The box's copy is saved as .pre first."
    [ "$DRY" = 1 ] || { box 'cp /script/custom_init.sh /script/custom_init.sh.pre'; push "$OVERLAY/script/custom_init.sh" /script/custom_init.sh.new; }
  fi

  [ "$DRY" = 1 ] && { say "(dry-run) would install early_console.sh + a derived inittab"; return 0; }

  push "$OVERLAY/script/early_console.sh" /script/early_console.sh.new
  push "$OVERLAY/script/start_ncm.sh"     /script/start_ncm.sh.new
  push "$OVERLAY/script/copy_to_tmp.sh"   /script/copy_to_tmp.sh.new
  [ -f "$OVERLAY/script/mount_usb.sh" ] && push "$OVERLAY/script/mount_usb.sh" /script/mount_usb.sh.new

  # The inittab is DERIVED on the box rather than copied: the repo's file carries
  # `::respawn:/script/run_ocbmd.sh` and `run_supervisor.sh`, which belong to the OCBM stack.
  # On the NCM base those scripts do not exist and PID 1 would respawn-loop on them forever.
  box '
set -e
inst() { n="$1.new"; [ -f "$n" ] || return 0
         sh -n "$n" || { echo "SYNTAX FAIL $1 - not installed"; rm -f "$n"; return 1; }
         [ -f "$1" ] && [ ! -f "$1.pre" ] && cp "$1" "$1.pre"
         chmod 755 "$n" && mv "$n" "$1" && echo "  installed $1"; }
for f in /script/early_console.sh /script/custom_init.sh /script/start_ncm.sh /script/copy_to_tmp.sh /script/mount_usb.sh; do inst "$f"; done

[ -x /script/early_console.sh ] || { echo "early_console.sh not executable - refusing to touch inittab"; exit 1; }
[ -f /etc/inittab.pre ] || cp /etc/inittab /etc/inittab.pre
# drop any existing ttymxc0 getty + any stale early_console line, then put ours FIRST
grep -v "ttymxc0::respawn" /etc/inittab | grep -v "early_console.sh" > /tmp/inittab.new
sed -i "1i ::sysinit:/script/early_console.sh" /tmp/inittab.new
# sanity: the file must still have an rcS sysinit and a shutdown action, and no OCBM respawns
grep -q "sysinit:/etc/init.d/rcS" /tmp/inittab.new || { echo "derived inittab lost rcS - aborting"; exit 1; }
grep -q "run_ocbmd\|run_supervisor"  /tmp/inittab.new && { echo "derived inittab has OCBM respawns - aborting"; exit 1; }
[ "$(wc -l < /tmp/inittab.new)" -ge 5 ] || { echo "derived inittab looks truncated - aborting"; exit 1; }
cp /tmp/inittab.new /etc/inittab && echo "  installed /etc/inittab"
sync
echo "--- /etc/inittab ---"; cat /etc/inittab
'
  # ---- the owned boot path, installed BEFORE anything is deleted --------------------------
  # WHY HERE AND NOT IN strip: /script/start_main_service.sh is what launches the entire vendor
  # userspace — check_mfg_mode.sh (71), colorLightDaemon (81), mdnsd (85), boxNetworkService
  # (95), boa (110), cpu_UsageRate.sh (132), check_log_size.sh (134). rcS and inittab launch
  # none of it. So swapping this one file disarms the whole vendor stack at the next boot.
  #
  # Doing it first, while every vendor binary is still present, buys three things:
  #   1. the cold boot after this validates the FINAL boot path, with the old stack still on
  #      disk as a fallback and the .pre copies on-box as an undo;
  #   2. by the time `strip` runs, nothing it deletes is running or referenced by any boot
  #      script — so the deletion cannot pull the rug out from under a live process;
  #   3. it stops check_mfg_mode.sh, which is a 2-second polling loop that does
  #      `rmmod cdc_ncm; echo 0 > .../android0/enable` on mfgmode=1 (NCM gone) and
  #      `flash_erase /dev/mtd0 0 1 && reboot` on mfgmode=2 (U-Boot block erased). It reads
  #      mfgmode from sysfs and is 0 today, but leaving that loop running across a strip is
  #      not a risk worth carrying.
  say "installing the owned boot path (this is what disarms the vendor stack at next boot)"
  for f in start_main_service.sh after_shutdown.sh init_gpio.sh sync_box_time.sh; do
    [ -f "$OVERLAY/script/$f" ] && push "$OVERLAY/script/$f" "/script/$f.new"
  done
  push "$OVERLAY/etc/init.d/rcS" /etc/init.d/rcS.new
  push "$OVERLAY/etc/mdev/udisk_insert.sh" /etc/mdev/udisk_insert.sh.new
  box '
set -e
inst() { n="$1.new"; [ -f "$n" ] || return 0
         sh -n "$n" || { echo "SYNTAX FAIL $1 - not installed"; rm -f "$n"; return 1; }
         [ -f "$1" ] && [ ! -f "$1.pre" ] && cp "$1" "$1.pre"
         chmod 755 "$n" && mv "$n" "$1" && echo "  installed $1"; }
for f in /script/start_main_service.sh /script/after_shutdown.sh /script/init_gpio.sh /script/sync_box_time.sh; do inst "$f"; done
inst /etc/init.d/rcS
mkdir -p /etc/mdev && inst /etc/mdev/udisk_insert.sh
# Post-checks. A bad rcS on a unit with no UART wired is a reflash, so each of these reverts
# from the .pre copy rather than leaving a box that will not come back.
fail=0
grep -q telnetd            /etc/init.d/rcS || { echo "FATAL: rcS does not start telnetd";            cp /etc/init.d/rcS.pre /etc/init.d/rcS; fail=1; }
grep -q dropbear           /etc/init.d/rcS || { echo "FATAL: rcS does not start dropbear";           cp /etc/init.d/rcS.pre /etc/init.d/rcS; fail=1; }
grep -q start_main_service /etc/init.d/rcS || { echo "FATAL: rcS does not call start_main_service";  cp /etc/init.d/rcS.pre /etc/init.d/rcS; fail=1; }
grep -q custom_init /script/start_main_service.sh || { echo "FATAL: start_main_service has no custom_init hook (NCM would not arm)"; cp /script/start_main_service.sh.pre /script/start_main_service.sh; fail=1; }
[ "$fail" = 1 ] && { echo "BOOTPATH_REVERTED"; exit 1; }
sync
echo "BOOTPATH_OK"' | tee "$RUN_DIR/bootpath.txt"
  grep -q BOOTPATH_OK "$RUN_DIR/bootpath.txt" || die "the owned boot path failed its post-checks and the box reverted itself — do NOT reboot until you have read $RUN_DIR/bootpath.txt"

  say "boot path installed. UART console before rcS; NCM at ~T+3s; vendor launches gone."
  say "Nothing has been DELETED yet — the whole Carlinkit stack is still on disk, just no"
  say "longer started. The next cold boot is the real test of the final configuration."
}

phase_coldtest() {
  local tag="${1:-coldtest}"
  say "=== $tag — prove a cold boot self-arms NCM ==="
  [ "$DRY" = 1 ] && { say "(dry-run) skipping reboot"; return 0; }
  say "rebooting…"
  boxq 'sync; (sleep 1; reboot) >/dev/null 2>&1 &' || true
  sleep 10
  if wait_box 220; then
    box '
echo "armed=$([ -e /tmp/ncm_early_armed ] && echo early || echo late-fallback)"
echo "uptime=$(cut -d. -f1 /proc/uptime)s"
A=/sys/class/android_usb_accessory/android0
echo "gadget=$(cat $A/functions)/$(cat $A/state)"
busybox ifconfig ncm0 | head -2
echo "--- inittab sysinit ---"; head -2 /etc/inittab
echo "--- early_console pids ---"; ps | grep -c early_console
cat /tmp/ncm_early.log 2>/dev/null' | tee "$RUN_DIR/$tag.txt"
    grep -q "192.168.50.2" "$RUN_DIR/$tag.txt" || warn "reached the box but ncm0 has no address?"
    say "$tag PASSED"
    return 0
  fi
  warn "$tag FAILED — no shell on $BOX after the reboot."
  warn "  1. check your USB-NCM interface exists and has 192.168.50.x (pass --host-if enX)"
  warn "  2. if you have UART wired: 115200 8N1 on ttymxc0, the console is up before rcS"
  warn "  3. last resort: reflash $RUN_DIR/backup_pre/full_nor_16MB.bin with the SPI programmer"
  [ -f "$RUN_DIR/strip.txt" ] && warn "NOTE: the strip has already run in this run dir." \
                              || warn "Nothing has been removed — the adapter is as you found it."
  die "$tag failed"
}

phase_strip() {
  say "=== strip — remove the Carlinkit projection stack ==="
  boxq '[ -e /script/ncm_wifi ] || [ -e /script/ncm_only ]' || die "no NCM boot flag on the box; refusing to strip"
  if [ ! -f "$RUN_DIR/coldtest.txt" ] && [ "$DRY" != 1 ] && [ "$ASSUME_YES" != 1 ]; then
    die "no passing coldtest in this run dir. Refusing to strip a box whose NCM cold boot is unproven."
  fi
  [ -f "$RUN_DIR/backup_pre/full_nor_16MB.bin" ] || [ "$DRY" = 1 ] || [ "$ASSUME_YES" = 1 ] \
    || die "no verified backup in this run dir — run 'backup' first"

  local payload="$RUN_DIR/strip_payload.sh"
  {
    echo '#!/bin/sh'
    echo '# generated by tools/ncm_base_install.sh — runs on the adapter'
    echo "DRY=$DRY"; echo "DEEP=$DEEP"; echo "KEEP_WEB=$KEEP_WEB"
    echo "SBIN_A=\"$SBIN_A\""; echo "SBIN_B=\"$SBIN_B\""; echo "SCRIPT_A=\"$SCRIPT_A\""
    echo "ETC_A=\"$ETC_A\""; echo "ETC_B=\"$ETC_B\""
    echo "KILL_PROCS=\"$KILL_PROCS\""; echo "KILL_LOOPS=\"$KILL_LOOPS\""
    cat <<'EOS'
set -u
# THE WLAN/BT GUARD. Every deletion goes through this, so no kill list — present or future —
# can take out a variant's radio support. Matches the attach helpers (hciattach, rtk_hciattach,
# brcm_patchram*, bcm*), the daemons and tools, the firmware loaders, and anything living under
# a firmware/module tree. Deliberately broad: a false positive costs a few KB of flash, a false
# negative costs the unit its Wi-Fi and Bluetooth with no way to put them back short of a
# reflash — and the variants do not share one file set.
is_radio() {
  case "$1" in
    */lib/firmware/*|*/lib/modules/*|*.ko|*/nvram*|*/*fw*.bin|*/*_bt_*|*/*wlan*|*/*WlanCal*) return 0;;
  esac
  b=${1##*/}
  case "$b" in
    # bring-up / teardown scripts. These are the ONLY on-demand radio path this script
    # leaves the unit, because it never installs the IW416-specific wlan_on/bt_on from the
    # repo overlay. init_bluetooth_wifi.sh is the chipset dispatcher itself.
    init_bluetooth_wifi.sh|close_bluetooth_wifi.sh|load_bluetooth_wifi.sh|\
    attach_bluetooth.sh|start_bluetooth_wifi.sh|wlan_on.sh|wlan_off.sh|bt_on.sh|bt_off.sh) return 0;;
    # daemons, tools, attach helpers
    *hciattach*|hci*|bluetooth*|*bluetooth*|bt_*|*_bt|hfpd|dbus-daemon|dbus*|\
    hostapd|wpa_supplicant|wpa_cli|p2p_supplicant*|wl|iw|iwpriv|iwconfig|iwlist|\
    fw_loader*|set_wifi_mac|*patchram*|sdio*|libnl*|libbluetooth*) return 0;;
    # every driver tarball / module / blob named by the vendor dispatcher, all variants
    mlan*|moal*|88x2*|8733*|bcmdhd*|*_ko.tar.gz|*_rootfs.tar.gz|\
    *8822*|*8987*|*iw416*|*IW416*|*bcm4*|*BCM4*|*rtl8*|*RTL8*|*rtk*|txpower*|wifi_mod_para*) return 0;;
    # anything with wifi/wlan in the name at all
    *wifi*|*WiFi*|*wlan*|*WLAN*) return 0;;
  esac
  return 1
}
kill_one() {
  [ -e "$1" ] || return 0
  if is_radio "$1"; then echo "  SKIP (WLAN/BT guard) $1"; return 0; fi
  if [ "$DRY" = 1 ]; then echo "  WOULD REMOVE $1 ($(du -sk "$1" 2>/dev/null | cut -f1) KB)"
  else rm -rf "$1" && echo "  removed $1"; fi
}
echo "=== free before: $(df -k / | tail -1 | awk '{print $4}') KB ==="

# --- vendor daemons: ASSERT, do not kill ------------------------------------------------
# By this point the owned boot path has been installed and the box has cold-booted through
# it, so none of these should be running: start_main_service.sh is what launched them and it
# no longer does. That is deliberate. Killing a live vendor daemon mid-strip is the risk this
# ordering exists to avoid — check_mfg_mode.sh alone can do `rmmod cdc_ncm` and take NCM with
# it. If any are still up, the boot path did not take effect and we stop rather than improvise.
echo "--- vendor daemons: expecting none to be running ---"
still=""
for p in $KILL_PROCS; do pidof "$p" >/dev/null 2>&1 && still="$still $p"; done
for p in $KILL_LOOPS; do pgrep -f "$p" >/dev/null 2>&1 && still="$still $p"; done
if [ -n "$still" ]; then
  echo "  STILL RUNNING:$still"
  echo "  The owned start_main_service.sh should have stopped these from ever starting."
  echo "  Refusing to delete files out from under live processes."
  echo "STRIP_ABORTED_DAEMONS_RUNNING"
  exit 1
fi
echo "  none running - every candidate below is inert"

echo "--- vendor projection binaries (/usr/sbin) ---"
for b in $SBIN_A; do
  [ "$KEEP_WEB" = 1 ] && [ "$b" = boa ] && continue
  kill_one "/usr/sbin/$b"
done
if [ "$DEEP" = 1 ]; then echo "--- deep: vendor cruft ---"; for b in $SBIN_B; do kill_one "/usr/sbin/$b"; done; fi

echo "--- vendor scripts (/script) ---"
for s in $SCRIPT_A; do kill_one "/script/$s"; done

echo "--- vendor config (/etc) ---"
for e in $ETC_A; do kill_one "/etc/$e"; done
if [ "$KEEP_WEB" = 1 ]; then echo "  KEEP /etc/boa + /usr/sbin/boa (--keep-web)"; else kill_one /etc/boa; fi
if [ "$DEEP" = 1 ]; then for e in $ETC_B; do kill_one "/etc/$e"; done; kill_one /etc/RiddleBoxData; fi

echo "=== free after: $(df -k / | tail -1 | awk '{print $4}') KB ==="
echo "--- still running (should be: init, dropbear, telnetd, udhcpd, radios, early_console) ---"
ps | grep -vE "\[.*\]"
[ "$DRY" = 1 ] || sync
echo "STRIP_DONE"
EOS
  } > "$payload"

  push "$payload" /tmp/strip.sh
  # Detached + logged: an SSH/telnet drop mid-strip must not leave the rootfs half-edited.
  boxq 'chmod 755 /tmp/strip.sh; setsid sh /tmp/strip.sh >/tmp/strip.log 2>&1 </dev/null & sleep 2; :' || true
  local i=0
  while [ $i -lt 60 ]; do boxq 'grep -q STRIP_DONE /tmp/strip.log' && break; sleep 3; i=$((i+1)); done
  box 'cat /tmp/strip.log' | tee "$RUN_DIR/strip.txt"
  if grep -q STRIP_ABORTED_DAEMONS_RUNNING "$RUN_DIR/strip.txt"; then
    die "vendor daemons are still running: the owned boot path has not taken effect. Run 'bootpath' then 'coldtest' before stripping."
  fi
  grep -q STRIP_DONE "$RUN_DIR/strip.txt" || die "strip did not report STRIP_DONE — inspect /tmp/strip.log before doing anything else"
  [ "$DRY" = 1 ] && { say "(dry-run) nothing was removed"; return 0; }

  say "strip complete. The boot path was already owned before this ran, so nothing that was"
  say "deleted was running or referenced."
  say "strip complete."
}

phase_baselinediff() {
  # The 07-08 baseline snapshot (ccpa/backup/base/rootfs.tar.gz) is a REAL rootfs that reached
  # the endpoint, so it beats any hand-written kill list as a specification: anything on this
  # box that the baseline does not have is, by definition, something the original pass removed
  # or never had. Two categories are filtered out before reporting, and only two:
  #
  #   WLAN/BT   — the baseline is an IW416 unit and this one may be any variant. Its radio
  #               file set is NOT the target for another variant (see the WLAN VARIANT RULE).
  #   identity  — MACs, serials, host keys, leases, logs: per-unit by nature.
  #
  # Everything else that differs is signal. EXTRA = still to remove; MISSING = the baseline had
  # something this box does not (usually the owned scripts, installed by `strip`).
  local base_tar="$REPO/ccpa/backup/base/rootfs.tar.gz"
  [ -f "$base_tar" ] || { warn "no baseline snapshot at $base_tar — skipping"; return 0; }
  say "=== baselinediff — this box vs the 07-08 vanilla rootfs (WLAN/BT + identity excluded) ==="

  tar tzf "$base_tar" 2>/dev/null | sed 's|^\./||' | grep -v '/$' | sort > "$RUN_DIR/baseline.files"
  # -type f OR -type l: /bin and /sbin are ~200 symlinks to busybox and the tar listing counts
  # them, so enumerating only regular files here reports the entire busybox applet set as
  # "missing from this box".
  box_slow 'find / -xdev \( -path /proc -o -path /sys -o -path /dev -o -path /tmp -o -path /mnt -o -path /media -o -path /var -o -path /run \) -prune -o \( -type f -o -type l \) -print 2>/dev/null' \
    | sed 's|^/||' | tr -d '\r' | sort > "$RUN_DIR/box.files"
  [ -s "$RUN_DIR/box.files" ] || die "could not enumerate the box's files"

  # Mirrors the on-box is_radio() plus per-unit identity. Kept as one regex so it is obvious
  # what is being excluded from the comparison and why.
  local EXCL='(^lib/firmware/|^lib/modules/|\.ko$|bluetooth|wlan|wifi|hci|hostapd|wpa_|patchram|libnl|8822|88x2|8733|bcm4|mlan|moal|iw416|sd8987|rtl8|rtk|txpower|WlanCal|fw_loader|_ko\.tar\.gz$|(^|/)wl$)'
  local IDENT='(^etc/dropbear/|^etc/ssh|^root/|^etc/hostname|^etc/serial|^etc/.*mac|^etc/carplay_peers|^etc/riddle\.conf$|^etc/.custom_|leases|\.log$|\.pid$|^script/ko\.tar\.gz$|^var/|^g/|^linuxrc$|ash_history)'

  comm -23 "$RUN_DIR/box.files" "$RUN_DIR/baseline.files" \
    | grep -viE "$EXCL" | grep -viE "$IDENT" > "$RUN_DIR/extra.files" || true
  comm -13 "$RUN_DIR/box.files" "$RUN_DIR/baseline.files" \
    | grep -viE "$EXCL" | grep -viE "$IDENT" > "$RUN_DIR/missing.files" || true

  say "EXTRA on this box vs the baseline ($(wc -l < "$RUN_DIR/extra.files" | tr -d ' ') files) — candidates the baseline does not carry:"
  sed 's/^/    /' "$RUN_DIR/extra.files" | head -60
  [ "$(wc -l < "$RUN_DIR/extra.files")" -gt 60 ] && say "    … $(( $(wc -l < "$RUN_DIR/extra.files") - 60 )) more (full list: $RUN_DIR/extra.files)"
  say "MISSING vs the baseline ($(wc -l < "$RUN_DIR/missing.files" | tr -d ' ') files) — what the baseline has that this box does not:"
  sed 's/^/    /' "$RUN_DIR/missing.files" | head -40
  say "WLAN/BT and identity files were excluded from BOTH directions on purpose."
  say "lists: $RUN_DIR/{extra,missing,box,baseline}.files"

  # The web UI goes. Stock boa ships server.cgi + upload.cgi; a unit may also carry the
  # custom interface from the CCPA resources repo (config/governor/logs/restart/streamstats/
  # sysinfo/term .cgi). BOTH are removed on the NCM base by design — the base carries no HTTP
  # server at all, and config is app-driven from here on. This is reported, not asked about;
  # `--keep-web` exists for the rare case someone wants the UI kept, and the backup phase
  # captures /etc/boa in rootfs.tar.gz either way.
  local custom_cgi
  custom_cgi=$(grep '^etc/boa/cgi-bin/' "$RUN_DIR/extra.files" 2>/dev/null \
               | grep -vE '(server|upload)\.cgi$' | sed 's|.*/||' | tr '\n' ' ')
  if [ -n "${custom_cgi// /}" ]; then
    say "web UI: this unit carries the custom CGI set ($custom_cgi)"
    say "        — removed with boa, as intended for the NCM base."
  fi
}

phase_prunelibs() {
  say "=== prunelibs — vendor + toolchain libraries, guarded by a per-unit reference scan ==="
  # The 07-08 pass freed 6.2 MB; the binary/script/config strip only accounts for ~2.5 MB of
  # that. The rest is /usr/lib vendor libraries (HiCar/DMSDP, libdns_sd, libfdk-aac, libusb,
  # libcrypto/libssl, libARMtool…) and /lib toolchain leftovers (crt*.o, *.la, sanitizer and
  # unused NSS sonames).
  #
  # Those were measured unused on an IW416 unit. This one may be any variant, so nothing is
  # taken on that unit's authority: the box first builds the set of sonames named by every
  # binary it is KEEPING, then refuses to remove any library whose name family appears there.
  # dropbear linking libcrypto, hostapd linking libnl, a variant's `wl` linking something
  # unexpected — all get caught by evidence from this unit rather than by a guess.
  local payload="$RUN_DIR/prunelibs_payload.sh"
  {
    echo '#!/bin/sh'; echo "DRY=$DRY"
    echo "LIB_VENDOR=\"$LIB_VENDOR\""; echo "LIB_DEV=\"$LIB_DEV\""
    cat <<'EOS'
set -u
is_radio() {
  case "$1" in */lib/firmware/*|*/lib/modules/*|*.ko) return 0;; esac
  b=${1##*/}
  case "$b" in libnl*|libbluetooth*|*wlan*|*8822*|*88x2*) return 0;; esac
  return 1
}
CAND=""
for l in $LIB_VENDOR; do [ -e "/usr/lib/$l" ] && CAND="$CAND /usr/lib/$l"; done
for l in $LIB_DEV;    do [ -e "/lib/$l" ]     && CAND="$CAND /lib/$l"; done

# 1) the reference blob: every file we are KEEPING, minus the candidates themselves
: > /tmp/keep.list
for d in /bin /sbin /usr/bin /usr/sbin /usr/lib /lib; do
  [ -d "$d" ] || continue
  for f in "$d"/*; do
    [ -f "$f" ] || continue
    # Skip symlinks. /bin and /sbin are ~200 symlinks to one busybox; following them all
    # would push ~200 MB through the scan below and take the box many minutes. The target
    # itself (/bin/busybox) is a regular file and is already in the list.
    [ -L "$f" ] && continue
    skip=0
    for c in $CAND; do [ "$f" = "$c" ] && { skip=1; break; }; done
    [ "$skip" = 0 ] && echo "$f" >> /tmp/keep.list
  done
done
echo "reference scan over $(wc -l < /tmp/keep.list) surviving files ($(cat $(cat /tmp/keep.list) 2>/dev/null | wc -c) bytes)"
# Pull soname literals out of the ELFs. busybox's `tr -c '[:print:]'` silently yields NOTHING
# on this build, which would make the whole guard vacuous, so try three extractors and verify
# the result before trusting it.
extract() { cat $(cat /tmp/keep.list) 2>/dev/null | "$@" 2>/dev/null \
            | grep -o 'lib[A-Za-z0-9_.+-]*\.so[0-9.]*' | sort -u; }
for m in "strings" "tr -c a-zA-Z0-9_.+- \n" "sed s/[^a-zA-Z0-9_.+-]/\n/g"; do
  extract $m > /tmp/refs.txt
  [ "$(wc -l < /tmp/refs.txt)" -gt 0 ] && { echo "extractor: $m"; break; }
done
echo "sonames referenced by survivors: $(wc -l < /tmp/refs.txt)"

# THE ASSERTION. A scan that comes back empty (or implausibly thin) is indistinguishable, at
# the loop below, from "nothing references any of these" — and would delete the entire
# candidate list, libcrypto and libssl included. Every dynamically linked binary on this box
# names libc, so if libc is not in the results the scan did not work and we stop. Refusing to
# prune costs nothing; pruning on a broken scan costs the unit's SSH, or worse.
if [ "$(wc -l < /tmp/refs.txt)" -lt 10 ] || ! grep -q '^libc\.so' /tmp/refs.txt; then
  echo "FATAL: reference scan produced $(wc -l < /tmp/refs.txt) sonames and no libc.so."
  echo "       The guard would be vacuous, so nothing is being removed. Library pruning is"
  echo "       OPTIONAL - the rest of the base is unaffected by skipping it."
  head -20 /tmp/refs.txt
  echo "PRUNE_ABORTED"
  exit 0
fi

# 2) decide per candidate, on the whole name FAMILY (libfoo.so, .so.1, .so.1.0.0 stand or fall
#    together — removing the symlink of a live soname is pointless and confusing)
echo "=== free before: $(df -k / | tail -1 | awk '{print $4}') KB ==="
for c in $CAND; do
  b=${c##*/}
  if is_radio "$c"; then echo "  SKIP (WLAN/BT guard) $c"; continue; fi
  stem=$(echo "$b" | sed 's/\.so.*$//; s/-[0-9].*$//; s/\.la$//; s/\.o$//; s/\.spec$//')
  if [ -n "$stem" ] && grep -q "^${stem}[.-]" /tmp/refs.txt 2>/dev/null; then
    echo "  KEEP $c (referenced: $(grep "^${stem}[.-]" /tmp/refs.txt | tr '\n' ' '))"
    continue
  fi
  if [ "$DRY" = 1 ]; then echo "  WOULD REMOVE $c ($(du -sk "$c" 2>/dev/null | cut -f1) KB)"
  else rm -f "$c" && echo "  removed $c"; fi
done
echo "=== free after: $(df -k / | tail -1 | awk '{print $4}') KB ==="
rm -f /tmp/keep.list /tmp/refs.txt
[ "$DRY" = 1 ] || sync
echo "PRUNE_DONE"
EOS
  } > "$payload"
  push "$payload" /tmp/prunelibs.sh
  box_slow 'sh /tmp/prunelibs.sh' | tee "$RUN_DIR/prunelibs.txt"
  grep -q PRUNE_DONE "$RUN_DIR/prunelibs.txt" || die "prunelibs did not complete"
  # A library prune that breaks dropbear is survivable (telnet is the channel) but worth knowing.
  [ "$DRY" = 1 ] || box 'sleep 1; pidof dropbear >/dev/null && echo "dropbear still alive" || echo "NOTE: dropbear is not running (telnet is unaffected)"'
  say "prunelibs done"
}

phase_tidy() {
  # The vanilla endpoint's README says "no backup files reside in rootfs". This removes the
  # .pre/.bak/.disabled copies THIS script and earlier passes left behind — but only ever run
  # it after coldtest2 has passed, because until then those copies are the on-box undo.
  say "=== tidy — remove on-box backup copies (run only after coldtest2) ==="
  [ -f "$RUN_DIR/coldtest2.txt" ] || [ "$ASSUME_YES" = 1 ] || die "coldtest2 has not passed in this run dir; the .pre copies are still your on-box undo"
  box '
for f in /script/*.pre /script/*.bak /script/*.disabled /etc/*.pre /etc/init.d/*.pre /etc/mdev/*.pre; do
  [ -e "$f" ] || continue
  echo "  removed $f"; rm -f "$f"
done
sync; ls /script; df -h / | tail -1' | tee "$RUN_DIR/tidy.txt"
}

phase_audit() {
  say "=== audit — syntax, dead references, dangling refs ==="
  push "$REPO/tools/audit_scripts.sh" /tmp/audit.sh
  box 'sh /tmp/audit.sh' | tee "$RUN_DIR/audit.txt" || true
  grep -q AUDIT_DONE "$RUN_DIR/audit.txt" || warn "audit did not complete"

  # A syntax error is always fatal.
  if grep -q "ERR>>" "$RUN_DIR/audit.txt"; then
    grep "ERR>>" "$RUN_DIR/audit.txt" | sed 's/^/    /' >&2
    die "a script does not parse — fix before rebooting"
  fi

  # A dangling reference is NOT automatically a fault on this base, and treating it as one
  # gives a false failure at the worst moment. Two legitimate sources of them here:
  #   * the multi-variant radio scripts name every chipset's helper (brcm_patchram_plus,
  #     hciattach, wpa_supplicant…), and a unit only ever ships its own — those references
  #     were dangling before this script ran and are all `test -e` guarded;
  #   * the owned start_main_service.sh references /script/ocbm_boot.sh, which is exactly what
  #     is NOT installed on the NCM base — guarded, and flag-gated off besides.
  # So classify: a reference whose every occurrence sits behind a `test -e` / `[ -e ]` guard is
  # fine. One that would actually execute is a real fault.
  local dangling; dangling=$(grep -oE '^  [^ ]+ -> MISSING [^ ]+' "$RUN_DIR/audit.txt" || true)
  if [ -n "$dangling" ]; then
    # Line shape is:  "  <file> -> MISSING <ref>"  → fields f, "->", "MISSING", r.
    # Built as a payload FILE rather than an inline string: this has to survive bash quoting,
    # the telnet channel and busybox sh, and getting any of those layers wrong silently
    # classifies everything one way — which is worse than not checking, because it looks like
    # an answer. The payload also asserts the file is readable instead of reading an empty
    # grep result as innocence.
    local payload="$RUN_DIR/audit_refs.sh"
    { echo '#!/bin/sh'
      while read -r f _ _ r; do
        [ -n "$f" ] && [ -n "$r" ] || continue
        printf 'classify %s %s\n' "$f" "$r"
      done <<< "$dangling"
    } > "$payload.args"
    { cat <<'EOS'
#!/bin/sh
classify() {
  f=$1; r=$2
  [ -f "$f" ] || { echo "UNREADABLE $f (cannot classify $r)"; return; }
  u=$(grep -n -- "$r" "$f" 2>/dev/null | grep -v 'test -e' | grep -v '\[ -e' | grep -vE '^[0-9]+:[[:space:]]*#')
  if [ -n "$u" ]; then echo "UNGUARDED $f -> $r :: $u"; else echo "guarded   $f -> $r"; fi
}
EOS
      grep '^classify ' "$payload.args"
      echo 'echo CLASSIFY_DONE'
    } > "$payload"
    push "$payload" /tmp/audit_refs.sh
    box 'sh /tmp/audit_refs.sh' | tee "$RUN_DIR/audit_refs.txt"
    grep -q CLASSIFY_DONE "$RUN_DIR/audit_refs.txt" || die "reference classification did not run to completion — not trusting its result"
    if grep -qE "UNGUARDED|UNREADABLE" "$RUN_DIR/audit_refs.txt"; then
      grep -E "UNGUARDED|UNREADABLE" "$RUN_DIR/audit_refs.txt" | sed 's/^/    /' >&2
      die "an unguarded reference to a removed file would execute at boot — fix before rebooting"
    fi
    say "$(grep -c guarded "$RUN_DIR/audit_refs.txt") dangling references, all guarded by test -e — expected on this base"
  fi
  say "audit clean"
}

phase_report() {
  box '
echo "state=NCM BASE (Carlinkit projection stripped, owned scripts, no OCBM)"
echo "sw=$(cat /etc/software_version 2>/dev/null)"
df -h / | tail -1
echo "--- ps ---"; ps | grep -vE "\[.*\]"
echo "--- /script ---"; ls /script
echo "--- /usr/sbin ---"; ls /usr/sbin | tr "\n" " "
echo; echo "--- gadget ---"; A=/sys/class/android_usb_accessory/android0
echo "functions=$(cat $A/functions) state=$(cat $A/state)"
busybox ifconfig ncm0 | head -2' | tee "$RUN_DIR/final_state.txt"
  say "run dir: $RUN_DIR"
}

phase_flag() {
  # Resting boot flag. ncm_only = baseline parity (radios off at boot, NCM the only channel).
  # ncm_wifi = same NCM timing plus the Wi-Fi AP as a second way in.
  if [ "$WIFI_BACKSTOP" = 1 ]; then
    box 'touch /script/ncm_wifi; rm -f /script/ncm_only; sync; echo "flag=ncm_wifi"'
  else
    box 'touch /script/ncm_only; rm -f /script/ncm_wifi; sync; echo "flag=ncm_only"'
  fi
}

run_phase() {
  case "$1" in
    connect)     phase_connect ;;
    specs)       phase_specs ;;
    baselinediff) phase_baselinediff ;;
    preflight)   phase_preflight ;;
    backup)      phase_backup ;;
    earlyaccess|bootpath) phase_earlyaccess ;;
    coldtest)    phase_coldtest coldtest ;;
    coldtest2)   phase_coldtest coldtest2 ;;
    strip)       phase_strip ;;
    prunelibs)   phase_prunelibs ;;
    tidy)        phase_tidy ;;
    audit)       phase_audit ;;
    flag)        phase_flag ;;
    report)      phase_report ;;
    all|install)
      phase_connect
      phase_preflight
      phase_baselinediff
      phase_confirm
      phase_backup
      gate "backup pulled and verified. Next: earlyaccess — arms the UART console before rcS and pins the NCM early arm. Removes NOTHING."
      phase_earlyaccess
      phase_flag
      gate "next is a REBOOT. If the box does not come back on NCM the run stops there, with the Carlinkit stack still fully intact."
      phase_coldtest coldtest
      gate "NCM cold boot proven. Next: strip — this DELETES the Carlinkit projection stack. Restore image: $RUN_DIR/backup_pre/full_nor_16MB.bin"
      phase_strip
      if [ "$PRUNE_LIBS" = 1 ]; then phase_prunelibs; fi
      phase_audit
      gate "next: second reboot, to prove the STRIPPED box still self-arms NCM."
      phase_coldtest coldtest2
      phase_report
      say "done — the adapter is at the NCM base. OCBM installs on top of this."
      ;;
    *) die "unknown phase: $1" ;;
  esac
}

for p in "${PHASES[@]}"; do run_phase "$p"; done
