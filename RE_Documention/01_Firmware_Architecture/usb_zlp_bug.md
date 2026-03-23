# USB Zero Length Packet (ZLP) Bug — CPC200-CCPA

## Status: Confirmed, Fix Identified, Untested

**Date**: 2026-03-15
**Firmware**: 2025.10.15.1127CAY
**Affected**: Android Auto sessions (CarPlay survives same payloads)

## Summary

The adapter's USB bulk write path does not send a Zero Length Packet (ZLP) when the transfer size is an exact multiple of the USB max packet size (512 bytes for High-Speed bulk). Per USB 2.0 spec, a ZLP is required to signal transfer completion in this case. Without it, the host's USB driver hangs waiting for more data, killing the adapter-to-host data path.

## Symptoms

- Stable AA session dies instantly when album art or other metadata with a 512-aligned payload size is sent
- Adapter log shows: `_SendDataToCar iSize: NNNN, may need send ZLP`
- Host app receives 0 bytes from that point forward
- Adapter can still READ from USB (processes OPEN, heartbeats) but cannot WRITE
- Only recovers when adapter's "Host No Response" timer (60-70s) triggers `Reset Accessory!!`

## Reproduction

Reliable trigger: play "WHERE IS MY HUSBAND!" by RAYE on YouTube Music via Android Auto.

- YT Music serves album art at exactly 113,148 bytes
- Adapter adds 4-byte protocol header → 113,152 bytes = 221 × 512
- Session dies within 1 second of the metadata transfer
- Reproduced 3/3 times with the same song

Counter-test: same song on Apple Music via AA serves art at 113,846 bytes (not a 512 multiple) — session survives.

Counter-test: same song on CarPlay (both Apple Music and YT Music) — session survives despite identical ZLP warnings. CarPlay's `AppleCarPlay` daemon or USB endpoint state handles the missing ZLP differently than `ARMAndroidAuto`.

## Root Cause — Two Layers

### Layer 1: Userspace (`ARMadb-driver`)

Function `_SendDataToCar` at address `0x18598` detects the ZLP condition but only logs it:

```arm
0x18a58: ubfx  r2, r3, #0, #9    ; r2 = size % 512
0x18a5c: cmp   r2, #0            ; exact multiple?
0x18a5e: bne   #0x18a4e          ; no → normal send
0x18a60: movs  r0, #5            ; yes → WARN log level
0x18a64: ldr   r2, ="...may need send ZLP"
0x18a66: bl    BoxLog            ; log the warning
0x18a6a: b     #0x18a4e          ; FALL THROUGH — no ZLP sent
```

The developer detected the condition (the string says "may need send ZLP") but never implemented the actual ZLP send. The unconditional branch at `0x18a6a` goes to the same send path as the non-ZLP case.

### Layer 2: Kernel Module (`g_android_accessory.ko`)

The kernel module has a `accZLP` boolean parameter (added between firmware 2023.05.29 and 2023.09.27):

```
parm=accZLP:accessory send ZLP when tx_packet_size divide exactly ep_maxpacket
parmtype=accZLP:bool
```

In `acc_write()` at offset `0x464c`:
- When `accZLP=1`: sets `req->zero = 1` via `bfi` instruction (bit field insert on bit 1 of USB request flags)
- When `accZLP=0` (default): clears bit 1 via `bfc` (bit field clear)

The kernel logs confirm: `acc_write: size 113152, accZLP 0` — the infrastructure exists but is disabled.

**The module is always loaded without the parameter:**
```sh
insmod /tmp/g_android_accessory.ko    # accZLP defaults to false
```

No firmware version ever passes `accZLP=1`.

## Proposed Fix (Untested)

### Option A: Runtime (temporary, lost on reboot)

```sh
echo 1 > /sys/module/g_android_accessory/parameters/accZLP
```

Requires verifying the sysfs parameter is writable (permissions `0644` or `0200`).

### Option B: Boot script (persistent)

Modify the script that loads the module (likely `start_accessory.sh` or sourced from `start_main_service.sh`):

```sh
# Before:
insmod /tmp/g_android_accessory.ko

# After:
insmod /tmp/g_android_accessory.ko accZLP=1
```

### Option C: riddleBoxCfg (not applicable)

`riddleBoxCfg` does not control USB transport parameters. The ZLP fix is kernel-module-level only.

## Testing Plan

1. Verify sysfs writability: `cat /sys/module/g_android_accessory/parameters/accZLP` (expect `N` or `0`)
2. Enable at runtime: `echo 1 > /sys/module/g_android_accessory/parameters/accZLP`
3. Verify: `cat /sys/module/g_android_accessory/parameters/accZLP` (expect `Y` or `1`)
4. Play "WHERE IS MY HUSBAND!" by RAYE on YouTube Music via AA — should survive
5. Monitor adapter log: `_SendDataToCar iSize: 113152, may need send ZLP` should still appear, but `acc_write: size NNNN, accZLP 1` should show `accZLP 1` and the session should not die
6. Stress test with multiple song changes to hit various ZLP-boundary sizes
7. If successful, modify boot script for persistence

## ZLP Size Distribution (from test sessions)

Sizes observed hitting ZLP boundary (all multiples of 512):

| Size | Occurrences | Source | Fatal (AA)? |
|------|------------|--------|-------------|
| 1024 | ~142 | Heartbeat/small commands | No |
| 1536 | ~11 | Commands | No |
| 2048 | 2 | Commands | Sometimes |
| 2560 | 2 | Commands | No |
| 3072 | 3 | Commands | No |
| 5120 | 7 | Media data | No |
| 5632 | 1 | Media data | No |
| 6144 | 2 | Media data | No |
| 113152 | 3+ | Album art (YT Music) | **Yes — always** |
| 129536 | 3+ | Album art (YT Music) | **Yes — always** |

Small ZLP-boundary transfers survive (likely because the kernel's internal 16KB chunking produces non-aligned final chunks). Large transfers (>16KB) that are 512-aligned are always fatal because the final USB request is also aligned.

## Files Referenced

- Binary: `/Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/ARMadb-driver_2025.10_unpacked`
- Kernel module: extracted from `A15W_extracted/script/ko.tar.gz` → `g_android_accessory.ko`
- Boot script: `start_accessory.sh` (inside firmware image)
