# Feasibility: CCPA as an NCM relay/host for CarPlay (macOS receiver)

**Question.** Can the CCPA be used over its NCM interface to do *only* the WLAN/BT
CarPlay handshake and tunnel the CarPlay session to a macOS app (à la
`carplayd` + `carlink_linux`/`carlink_macOS`), instead of the old riddleBox +
proprietary USB-bulk path? Including the thinnest "wireless dongle + USB host/slave"
role, and wired CarPlay via the Type-A port.

Sourced from live analysis of `carplayd` (Pi-Carlink), `carlink_linux`,
`carlink_macOS`, the CCPA protocol RE docs, and `local_carplay_sdk` (2026-06-29).

---

## TL;DR verdict

- **The CCPA does not pass CarPlay through — it *terminates* it.** The adapter IS the
  AirPlay receiver: it runs BT/iAP2, **two** MFi-chip signatures, HomeKit pair-setup/verify,
  and **decrypts** the ChaCha20-Poly1305 A/V, then emits a *proprietary* `0x55AA55AA`
  USB-bulk stream (decoded PCM + re-wrapped H.264). There is **no raw CarPlay stream to
  tunnel** without moving the receiver off the adapter.
- **The CCPA's one irreplaceable asset is its genuine Apple MFi 2.0C coprocessor**
  (I²C `/dev/i2c-1` @ 0x11). Everything else (radios, CPU) is weak and replaceable.
- **The PROVEN architecture is the *inverse* of "tunnel the session": host does the whole
  handshake + receiver, CCPA = MFi *signing oracle* over NCM TCP 5290.** `carplayd` reached
  `0xAA05 AuthSuccess` → WiFi join → iOS `carkitd` enrolled the car, with the CCPA doing
  only the two I²C signatures. **Our stripped CCPA is ideal for this** (the oracle is ~80
  lines of C + i2c; independent of the projection binaries we deleted).
- **The literal ask ("CCPA does handshake, tunnel session to mac") is the deprioritized
  "Strategy A passthrough"** in `carplayd/docs/07`. It's blocked on an untested firmware
  coupling AND we've removed the binaries that did the handshake.
- **A macOS-hosted receiver is harder than Linux** because macOS can't cleanly run a
  controllable Wi-Fi AP (hostapd-equivalent) or raw-HCI BT SSP — the two things the
  receiver host must own. This pushes a macOS design toward keeping the **radios on the
  CCPA** (Tier B below).

---

## Why: the data path today (all four sources agree)

```
iPhone ──BT/RFCOMM iAP2 + MFi(chip) + WiFi-cred handover──► CCPA (ARMiPhoneIAP2)
iPhone ──WiFi SoftAP 192.168.43.1, AirPlay/RTSP :5000──────► CCPA (AppleCarPlay)
        HomeKit pair-setup/verify + 2nd MFi(chip) sig + ChaCha20 A/V
                                   │  (decrypt + AAC→PCM + H.264 re-wrap)
                                   ▼
CCPA ──proprietary 0x55AA55AA USB-bulk (16B hdr: magic|len|type|~type)──► host app
        VideoData 0x06 = 20B hdr + H.264 Annex-B ; AudioData 0x07 = PCM16-LE
```

- The `0x55AA55AA` framing is the **riddleBox/ARMadb proprietary wrapper** — explicitly
  *not* CarPlay-on-the-wire. `carlink-protocol` (Rust) and `carlink_macOS/Protocol/*` both
  implement exactly this wrapper; it is the thing the proposal wants to discard.
- Host apps (`carlink_macOS` via legacy IOKit USB bulk + VideoToolbox; `carlink_linux` via
  libusb + GStreamer) are **dumb consumers** of pre-decrypted frames. They contain **zero**
  CarPlay/AirPlay/iAP2/MFi/HomeKit logic.
- MFi chip is hit **twice** per session (iAP2 `0xAA0x` stage, then AirPlay pair-verify
  stage). RSA-1024 MFi 2.0C is still accepted by current iOS (re-verify per iOS major).

**Consequence:** to put the session on macOS over NCM you must either (a) keep the adapter
terminating CarPlay and just change the *transport* of the proprietary stream (cheap, but
riddleBox stays), or (b) make **macOS the AirPlay receiver** and reduce the CCPA to a
radio/MFi front-end (the real goal, large effort).

---

## Three architecture tiers

### Tier A — "dumb dongle": remote radios + USB host/slave + MFi oracle; macOS does *everything*
**Verdict: not feasible for the radios; only the MFi-oracle slice works.**
- BT pairing (SSP/ECDH, RFCOMM) and the 802.11 SoftAP (beacons, EAPOL 4-way, DHCP) are
  **hard-real-time and must live on the radio silicon**. You cannot tunnel raw HCI / 802.11
  MAC over a TCP/NCM link and meet CarPlay's timing. So "macOS drives the CCPA's radios
  remotely" is out.
- The *one* thing that genuinely works as a remote service is **MFi signing** (slow,
  request/response, latency-tolerant) — which is Tier C, already proven.

### Tier B — CCPA = WLAN/BT + handshake + MFi front-end + IP bridge; **macOS = AirPlay receiver**
**Verdict: this is the realistic shape of the user's goal for a macOS app — high effort, two real unknowns.**
- CCPA keeps owning BT iAP2 + WiFi SoftAP + WiFi-cred handover + the MFi chip, then
  **L2/L3-bridges the iPhone's encrypted AirPlay traffic (`192.168.43.x`:5000 + ephemeral
  A/V) over NCM** to a **macOS app that terminates the AirPlay/HomeKit/CarPlay session**
  (RTSP, pair-setup SRP-6a, pair-verify Curve25519, ChaCha20, AAC-LC/ELD + H.264 decode),
  with MFi signatures **proxied back to the CCPA chip** as a network oracle.
- **Unknown 1 (firmware):** we **stripped** `ARMiPhoneIAP2`/`AppleCarPlay`/`ARMadb-driver`.
  Doing the handshake on the CCPA again means either restoring those (and they're coupled
  via `/var/run/phonemirror` to `ARMadb-driver` — untested whether they reach WiFi handover
  standalone) **or** writing new handshake code. `local_carplay_sdk` gives the iAP2 *link*
  layer but **not** the `0x1D01`/`0xAA0x` auth handshake or any AirPlay receiver — the exact
  missing pieces.
- **Unknown 2 (bridging):** the stripped CCPA lacks `iptables`/`iw`/`socat`/tun-bridge
  modules; routing the iPhone's encrypted AirPlay L3 over NCM needs userspace forwarding +
  mDNS reflection (or cross-built modules for the 3.14 kernel).
- **macOS gap:** no off-the-shelf AirPlay-*receiver*; you'd port `carplayd`'s C receiver
  (Apple AccessorySDK R14G17) or finish `carplayd-rs` (its `rtsp`/`pairing`/`receiver`
  crates are stubs today).

### Tier C — host does the entire handshake + receiver; CCPA = **MFi oracle over NCM only**  ✅ PROVEN
**Verdict: works today on Linux; the cleanest fit for our stripped CCPA. macOS port has radio caveats.**
- `carplayd`/Pi-Carlink already does this: Linux host's own BT (raw HCI) + WiFi (hostapd) +
  ported AccessorySDK receiver; CCPA runs only `mfi_auth_service` (TCP 5290:
  `op 0x01 CopyCertificate` → 945B cert, `op 0x02 CreateSignature` + 20B digest → 128B sig).
  Reached AuthSuccess → ReqWifiConfig → WiFi join → mDNS → car enrolled; A/V now decoded on
  the host (H.264 + AAC-LC; AAC-ELD voice WIP).
- **Our stripped CCPA is a perfect oracle node**: just add the small static `mfi_auth_service`
  daemon + `/dev/i2c-1` access. The chip is independent of the deleted projection binaries
  (verified standalone i2c sign roundtrips exist).
- **macOS caveat:** macOS can't run a controllable AP/hostapd or raw-HCI BT SSP like Linux,
  so "the receiver-host = the Mac" is awkward. Practical macOS variants: (i) a **Linux helper**
  (Pi / the existing carplayd box) owns radios + receiver and the **Mac is just the UI/display**
  client; or (ii) Tier B, where the **CCPA keeps the radios** and the Mac only terminates the
  AirPlay session arriving over NCM.

---

## Wired CarPlay + the Type-A port

- The Type-A port is a working **USB host** (EHCI, `ci_hdrc.0`; verified enumerating storage).
  > **Note (verified live 2026-07-08):** this Type-A (female) port `ci_hdrc.0` is **OTG dual-role**, not host-only — it is a USB host by default but switches to peripheral mode to present the `iap2,ncm` gadget (VID 0x08e4) for a wired phone. The always-gadget host-facing MALE cable is the *other* controller, `ci_hdrc.1` (VID 0x1314). See `../01_Firmware_Architecture/hardware_platform.md` § Physical Ports & Controller Roles.
- **Stock wired CarPlay** runs the *same* AirPlay session **over USB-CDC-NCM (IPv6), TCP 5000**
  — i.e. a cabled iPhone reaches the adapter's AirPlay server over an NCM link, then the
  adapter terminates it exactly as in wireless and emits the proprietary bulk stream.
- A wired tunnel is therefore structurally identical to Tier B with the front transport
  swapped: **iPhone ⇄ (Type-A, adapter=USB host, iAP2-over-USB + AirPlay-over-USB-NCM) ⇄
  adapter ⇄ (gadget NCM) ⇄ Mac**. The adapter bridges the phone-side USB-NCM to the Mac-side
  NCM. Same receiver-on-Mac + MFi-proxy requirements as Tier B; still needs the iAP2/USB host
  role (stock did this via `ARMadb`/`ARMiPhoneIAP2`, now removed) plus MFi.
- Note the adapter has **one USB-OTG gadget** (to the car/Mac) **+** the Type-A host. Wired
  iPhone uses the Type-A host; the gadget side carries NCM to the Mac.

---

## What's reusable vs what must be built

| Piece | Status | Role in a macOS-NCM design |
|---|---|---|
| CCPA MFi chip + `mfi_auth_service` (TCP 5290) | **Proven** | Network signing oracle (Tiers B/C). Add to stripped CCPA. |
| `carlink_linux` `carlink-core` (neutral types/traits) | Reusable | Source/sink vocabulary. |
| `carlink_linux` GStreamer sinks (H.264/H.265 + PCM/AAC-LC/AAC-ELD/Opus) | Reusable | Host-side decode. |
| `carlink_linux` `CarplaydSource` (TCP/UDP ingest of Annex-B + ADTS) | **Near-exact NCM template** | The `ProjectionSource` to clone for NCM. |
| `carlink_linux` `carlink-protocol` (`0x55AA55AA`) + `BulkTransport` | The thing to discard | Only relevant if you *tunnel the proprietary stream* (Option A below). |
| `carlink_macOS` Protocol/Video/Audio (IOKit USB, VideoToolbox, PCM) | Partly reusable | Decode/UI reusable; transport is USB-only (no network code). |
| `carplayd` C receiver (AccessorySDK R14G17) / `carplayd-rs` | Receiver source / WIP | The AirPlay-receiver half macOS would need (port). |
| `local_carplay_sdk` | iAP2 link + some msg parsers only | **Lacks** the auth handshake and the AirPlay receiver (the hard parts). |

---

## The cheap alternative worth naming (Option A)

If the real goal is just **"get off USB bulk / onto the network,"** not "replace riddleBox":
add a tiny adapter-side bridge that forwards the **same `0x55AA55AA` frames over a TCP socket
on `ncm0`**, and swap `carlink_macOS`'s `USBTransport` (IOKit `ReadPipe`/`WritePipe`) for an
`NWConnection` loop. The parser/decoder/UI are transport-agnostic → ~a day's work. **But the
adapter still terminates CarPlay and riddleBox stays.** This does not achieve the
"handshake-only relay" vision; it just moves the existing stream onto TCP.

---

## Hard blockers (ranked)

1. **No raw stream to tunnel** — CarPlay A/V is decrypted *at the adapter*; the leverage
   point is moving the **AirPlay receiver to the host**, not forwarding bytes.
2. **MFi chip is on the CCPA** — any host-side receiver must proxy both MFi signatures to the
   chip over NCM (latency inside pairing; works, but a constraint).
3. **macOS can't own the radios** (no hostapd/raw-HCI-SSP) — forces either a Linux receiver
   host or keeping radios on the CCPA (Tier B).
4. **Stripped firmware** — handshake binaries removed; restoring/replacing them is unproven
   (the `phonemirror`/`CMiddleManServer` coupling) and `local_carplay_sdk` doesn't cover
   auth or the receiver yet.
5. **CCPA as L3 bridge** — missing kernel/userspace forwarding tools on the 3.14 musl rootfs.

---

## Recommendation + first experiment

**Recommended target:** Tier C for the control/auth plane (it's proven and our stripped CCPA
is purpose-built for it), with the **receiver on Linux** (the existing carplayd/Pi box) and
the **Mac as a thin display/UI client** — OR commit to Tier B and accept building a macOS
AirPlay receiver while the CCPA keeps the radios + MFi.

**Cheapest high-information next step** (decides B-vs-C effort): stand up the **MFi oracle on
the current stripped CCPA** — cross-build the ~80-line `mfi_auth_service` (armv7/musl) against
`/dev/i2c-1` @0x11 (regs: cert 0x30/0x31, sign 0x20/0x21 + trigger 0x10 + read 0x11/0x12),
expose TCP 5290 over NCM, and replay a known challenge to confirm a valid 128-byte signature.
That validates the irreplaceable piece end-to-end with zero risk to the appliance, and is the
shared foundation of both viable tiers. (The MFi chip is shared/cloned across the fleet, so
oracle tooling is portable.)
