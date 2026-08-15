# OCBM — converting a CCPA to the Open CCPA Bulk Multiplexer
[!CAUTION]
> This is a work in progress, posting only because signficant positive return. Do at your own risk, with bricked adapter if something goes wrong. Do not expect recovery to be possible. Safer to assume a deadend, it would be even better if you were comforable with SPI Programmers like Xegu or others and can do a backup of your own IC before hand.
> OCBM is currently Carplay Only, AA testing will happen eventually. OCBM binaries will be published soon.

OCBM replaces Carlinkit's `0x55AA55AA` projection protocol with an open framed multiplexer over
the adapter's single bulk accessory pipe. This directory holds the tooling to take an adapter
from stock Carlinkit firmware to an OCBM-default appliance, the binaries that go with it, and
the results of doing exactly that on a Realtek RTL8822CS unit on 2026-08-15.

---

> [!CAUTION]
> ## You must install the NCM CFW image FIRST. This is not optional.
>
> **Everything here starts from an adapter already running the NCM-capable image:**
> [`custom/firmware/2025.10.15.1127/NCM/`](../custom/firmware/2025.10.15.1127/NCM/) —
> see its [README](../custom/firmware/2025.10.15.1127/NCM/README.md) and
> [`A15W_NCM_Update.img`](../custom/firmware/2025.10.15.1127/NCM/A15W_NCM_Update.img).
>
> That image is the on-ramp. It adds `/script/custom_init.sh` and the `ncm_only` / `ncm_wifi`
> trigger files, brings CDC-NCM up about 3 seconds into boot, and gives you a root shell over
> the USB cable at **192.168.50.2**. The scripts here *continue* from that state — they do
> **not** bootstrap it, and `ncm_base_install.sh` refuses to run without it.
>
> Its own prerequisites apply and are equally hard: you must already be on
> **2025.10.15.1127 with the SSH-minimal CFW**. Deviate and assume brick.
>
> **Why it matters so much here:** the host-facing gadget `ci_hdrc.1` is single-function —
> `functions=ncm` **or** `functions=accessory`, never both. NCM is what carries ssh/telnet, so
> arming OCBM *takes your control channel away*. Without the NCM image you have no way in
> before the switch and no way back after it.

> [!WARNING]
> ## Have a recovery path before you start
>
> * **A UART console, or an SPI programmer, or both.** The pads are `TX1`/`RX1` (i.MX6UL
>   UART1 = `ttymxc0`, 3.3 V); the NCM image already puts a passwordless root shell there at
>   115200 8N1. If you have neither, a failed switch means opening the case.
> * **A full NOR dump of your own unit, taken before you begin.** `ncm_base_install.sh backup`
>   does this and verifies it. Backups from *other* adapters are not a substitute — see
>   "One unit's image is not another's" below.

> [!CAUTION]
> ## One unit's image is not another's
>
> There are several CCPA variants with different WLAN/BT silicon. `init_bluetooth_wifi.sh` is
> the vendor's own dispatcher and selects on the SDIO card id:
>
> | SDIO id | Chip | Driver / firmware |
> |---|---|---|
> | `0xb822` / `0xc822` | Realtek RTL8822BS / **RTL8822CS** | `88x2bs.ko` / `88x2cs.ko`, `rtlbt/rtl8822_ko.tar.gz` |
> | `0xb733` | Realtek RTL8733BS | `8733bs.ko`, `rtlbt/rtl8733_ko.tar.gz` |
> | `0x4354` / `0x4335` | Broadcom BCM4354/4335 | `bcmdhd.ko`, `bcm/bcm4354_ko.tar.gz` |
> | `0x4358` / `0xaa31` | Broadcom BCM4358 | `bcmdhd.ko`, `bcm/bcm4358_ko.tar.gz` |
> | `0x9149` / `0x9141` | NXP SD8987 | `mlan.ko`/`moal.ko`, `nxp/sd8987_ko.tar.gz` |
> | `0x9159` | NXP/Marvell IW416 | `mlan.ko`/`moal.ko`, `nxp/iw416_ko.tar.gz` |
>
> **Only the driver tarball for a unit's own chip ships in its rootfs** — there is no fallback
> set. Delete or overwrite a variant's WLAN files and its radios are gone until it is
> reflashed. `mtd0` (HAB-signed U-Boot) and `mtd1` (OTPMK-encrypted kernel) are also
> production-keyed per unit and were verified *different* between two adapters of the same
> firmware revision.
>
> So `ncm_base_install.sh` never branches on a chipset whitelist — an unrecognised variant
> would fall off the end of one. Nothing WLAN/BT is in any kill list, every deletion is
> re-checked against an `is_radio()` pattern guard immediately before it happens, and no radio
> script or firmware is ever installed *from* the reference rootfs.

---

## The route

    stock Carlinkit firmware
      └─ NCM CFW image  ................  custom/firmware/2025.10.15.1127/NCM/   ← START HERE
           └─ ncm_base_install.sh  ......  strip the Carlinkit stack → NCM base
                └─ ocbm_install.sh  ......  place OCBM, prove it reversibly, then default

Optional, and independent of the above:

    dropbear_upgrade.sh   2020.81 → 2026.91   (also gives the box scp/dbclient/dropbearkey)
    busybox_upgrade.sh    1.32.1  → 1.37.0    (402 applets vs 350)

### `scripts/ncm_base_install.sh` — Carlinkit stack → NCM base

`preflight → backup → bootpath → coldtest → strip → audit → coldtest2`

The ordering is the safety argument, and it is not cosmetic. `/script/start_main_service.sh` is
the *sole* launcher of the vendor userspace — `check_mfg_mode.sh`, `colorLightDaemon`, `mdnsd`,
`boxNetworkService`, `boa`, `cpu_UsageRate.sh`, `check_log_size.sh`; `rcS` and `inittab` launch
none of it. So the owned boot path is installed **first**, while every vendor file is still on
disk, and the box is cold-booted through it. Only then does `strip` delete — and by then
nothing it deletes is running or referenced, so it never has to kill a live process. It asserts
that rather than assuming it.

That ordering also disarms `check_mfg_mode.sh`, a 2-second polling loop that does
`rmmod cdc_ncm; echo 0 > .../android0/enable` on `mfgmode=1` (NCM gone) and
`flash_erase /dev/mtd0 0 1 && reboot` on `mfgmode=2`. Do not strip with it running.

Nothing is deleted until a cold boot has returned on NCM unaided. Fail that gate and you abort
with a fully working adapter.

### The radio platform — chipset-agnostic WLAN/BT bring-up

> **Status (2026-08-15): hardware-validated end to end on an RTL8822CS unit — detection, WLAN
> driver load, SoftAP, and a responsive `hci0` — with no repo backend for that chipset. Wireless
> CarPlay itself is not yet demonstrated on a non-IW416 unit, and Broadcom is untested.**

The scripts live in `rootfs/script/` here and are placed by `ncm_base_install.sh` as part of the
owned boot path, so a converted unit has a working radio platform whatever silicon it carries.
They are the *only* rootfs scripts published in this repo, and deliberately so: they contain no
chipset payload, so they are safe on any variant. The IW416-specific `wlan_on.sh`/`bt_on.sh` are
not published, because installing one chip's bring-up onto another's board is exactly what the
variant rule forbids.

    rootfs/script/radio_detect.sh   read-only detection; emits /tmp/radio_caps
    rootfs/script/radio_hal.sh      the seam: probe|status|wifi_ap_on|wifi_ap_off|bt_on|bt_off
    rootfs/script/radio_ap_up.sh    the owned SoftAP layer (never the vendor's)

CCPA ships at least six WLAN/BT parts — RTL8822BS/CS, RTL8733BS, BCM4354/4335, BCM4358, NXP
SD8987, NXP IW416 — and **only the driver set for a unit's own chip is in its rootfs.** There is
no fallback set. That is why `ncm_base_install.sh` never branches on a chipset whitelist and
never installs radio scripts from the repo overlay: each unit keeps its own bring-up path.

The gap that leaves: the *callers* still named one chip's scripts. `session_supervisor.sh` calls
`/script/wlan_on.sh` and `/script/bt_on.sh` by literal path, and those are the IW416 baseline's.
On a Realtek unit they simply do not exist, so wireless bring-up fails **silently** — the calls
sit inside a detached `sh -c` whose output is redirected and whose exit status is never read.
Wired projection keeps working, so nothing looks wrong.

The fix is a seam — `radio_detect.sh` + `radio_hal.sh` — that **adopts the vendor's mapping and
not their mechanism**:

* Every unit ships `/script/init_bluetooth_wifi.sh`, the vendor's own SDIO-ID dispatcher, which
  the strip deliberately preserves. Its per-chip `insmod` lines, attach helper/baud, and ordering
  constraints are *observations* — fleet-deployed, working, and not re-derivable for parts you do
  not own. They are extracted and used verbatim, by intersecting the modules in the unit's own
  tarball with that dispatcher's own `insmod` lines. **No chipset table is involved**, so a part
  nobody anticipated still resolves.
* The dispatcher itself is **never executed**. Its control flow is a *choice*, and it carries:
  `attach_bluetooth.sh &` (fork-and-return — the uncoordinated double-bring-up that once fought
  itself for 7+ minutes), the Broadcom branch backgrounding `brcm_patchram_plus` the same way, an
  SD8987 branch that can `reboot` from inside a radio bring-up, per-boot `tar -xvf … -C /` into
  the rootfs, and a BT health check that is object existence — which a dead chip passes.

Three findings from running it on real hardware, each worth knowing before reimplementing:

* **The AP layer must stay owned.** On a stripped box the vendor's `start_bluetooth_wifi.sh`
  reads config through `riddleBoxCfg`, which the OCBM base removes, and the calls are not
  existence-guarded. With it gone the script seds an **empty `wpa_passphrase` into
  `/etc/hostapd.conf`** — persistent, on flash — and falls back to `WLANIP=192.168.50.2`, which
  is NCM's own address, then repoints the DHCP pool onto the management subnet. Its teardown
  `killall`s every `udhcpd`, including NCM's.
* **`hci0` existing proves nothing — and neither does `UP RUNNING`.** A wedged controller was
  observed reporting `UP RUNNING` while every HCI name read timed out. Convergence has to be a
  real round-trip under a timeout. Recovering such a chip needs the attach helper killed, the
  **line-discipline module rmmod'd**, and the reset GPIO driven `1` → `0` (polarity matters —
  the other way is a no-op that looks correct in the log), then re-insmod and re-attach.
* **The interface name is an `insmod` parameter, not a constant.** Realtek loads
  `if2name=sta0`, Broadcom `iface_name=sta op_mode=5`, and on Broadcom `wlan0` does not exist at
  all until something runs `iw dev sta0 interface add wlan0 type managed`. Enumerate
  `/sys/class/net/*/wireless`; never assume `wlan0`.

Measured on the RTL8822CS unit, with no repo backend for that chipset: SDIO
`vendor=0x024c device=0xc822 class=0x07`, firmware tree `rtlbt`, extracted
`insmod /tmp/88x2cs.ko if2name=sta0` and `rtk_hciattach -s 115200 ttymxc2 rtk_h5`, BT-after-WLAN
ordering detected; `wlan0` and a responsive `hci0` (`RTK_BT_4.2`) both came up, with `ncm0` and
the management channel untouched.

### `scripts/ocbm_install.sh` — NCM base → OCBM

`preflight → place → verify → reboot → trial → finalize`

`trial` is the point of the script: a **temporary** switch to the accessory gadget with a
dead-man timer that reboots back to NCM on its own. The host does the OCBM handshake and opens
a root console; whether that succeeds or fails, the adapter returns to NCM unattended. Only
after that does `finalize` offer to make OCBM the default.

Two things that will bite anyone reimplementing this, both learned the hard way:

* **Wait for gadget `state=CONFIGURED`, not for `/dev/usb_accessory`.** The device node appears
  ~100 ms after the function binds, long before the host has enumerated. Start `ocbmd` there
  and it gets `accessory POLLHUP/POLLERR — USB transport gone; exiting for respawn` and dies
  immediately.
* **Bounce the pullup after changing `functions`.** Going from an `ncm` composite straight to a
  vendor accessory leaves the host holding the old configuration: the box reports `CONNECTED`
  (VBUS) but never `CONFIGURED`, and nothing appears in `ioreg`/`lsusb`.

### `scripts/boxsh.py` — telnet transport

Non-interactive driver for `busybox telnetd -l /bin/sh` (IAC negotiation, echo suppression,
md5-verified `put`/`get`). **Prefer ssh** — the box's dropbear negotiates curve25519/rsa-sha2-256
with stock OpenSSH and the root password is blank, so `sshpass -p ''` is enough. This exists as
the independent fallback, which is what makes an ssh-daemon upgrade safe.

### `scripts/dropbear_upgrade.sh` / `scripts/busybox_upgrade.sh`

Both follow the same shape: stage to `/tmp`, prove the binary executes, prove it *works* before
replacing anything, install by copy-then-rename (`cp` over a running executable is `ETXTBSY`;
`mv` is atomic and the running process keeps the old inode), then verify and reboot.

`busybox_upgrade.sh` adds the gate that actually matters, computed on the box rather than
assumed: every applet that has a symlink **and** works today must exist in the new binary.
Applets already dangling do not count. On the test unit: 358 symlinks, 315 working, zero
regressions, 36 broken applets restored.

`dropbearmulti-2026.91-armv7` is a **multi-call binary** (busybox-style, dispatched on
`argv[0]`): `dropbear` / `dbclient` / `dropbearkey` / `dropbearconvert` / **`scp`**. It must be
installed under the exact name `dropbear` or it only prints its usage text.

## Management once OCBM is the default

There is no NCM and no ssh/telnet in OCBM mode. The host client (`ocbm-host`, from the
`ccpa_custom` project) speaks the protocol:

    ocbm-host hello                        # handshake; prints caps + active mode
    ocbm-host console                      # root PTY over the bulk pipe
    ocbm-host push <local> <remote> [mode] # md5/crc-verified file push
    ocbm-host pull <remote> <local>

`caps=0x3f` = CONSOLE, ECHO, MFI, IP, FILE, ETH.

### NCM failover watchdog

`ocbm_boot.sh` can arm a failover (opt-in via `/script/ocbm_failover`): if the OCBM stack cannot
come up, it drops `/script/ncm_only` and reboots, returning the unit to NCM rather than leaving
it unreachable. Triggers are deliberately narrow — `/dev/usb_accessory` absent after 60 s, or
`ocbmd` dead on 4 consecutive checks. **No host talking to us is explicitly not a trigger**: an
appliance in a car or on a bench with nothing attached is healthy, and treating that as failure
would make the box flap between modes. Verdict lands in `/script/ocbm_failover.log`.

Detection is validated in both directions. The recovery *action* has not been exercised from a
real OCBM failure — treat it as best-effort, and keep the SPI image as the actual guarantee.

## Binaries

| File | From | Notes |
|---|---|---|
| `binaries/busybox-1.37.0-armv7` | 2026-06-30 build | 1,001,020 B · 402 applets |
| `binaries/dropbearmulti-2026.91-armv7` | multi-call | 436,856 B · server + client + keygen + scp |

armv7 / i.MX6UL, built against this firmware lineage. `SHA256SUMS` alongside.

`ocbmd` (the box-side OCBM daemon) and `ocbm-host` are not included here — they are build
artifacts of the `ccpa_custom` project.

## Results

[`results/2026-08-15_realtek_rtl8822cs.md`](results/2026-08-15_realtek_rtl8822cs.md) — the full
run on a Realtek RTL8822CS unit: strip, both upgrades, the reversible OCBM trial, and the switch
to OCBM-default, with the numbers and the failures.
