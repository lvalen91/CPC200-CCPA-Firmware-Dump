# CPC200-CCPA Heartbeat Mechanism

**Source:** Binary analysis of `ARMadb-driver_unpacked` + practical testing
**Firmware:** 2025.10.XX
**Last Updated:** 2026-01-20

---

## Executive Summary

The heartbeat mechanism serves as a **connection supervision watchdog**. The firmware monitors incoming heartbeat messages and resets the USB connection if no heartbeat is received within **15 seconds**.

**Key Findings:**
- Firmware enforces a **15-second maximum gap**, not a specific send interval
- Heartbeat must start **BEFORE** initialization messages on cold start
- Recommended interval: **2000ms** (provides 7+ heartbeats within timeout window)

---

## Critical Implementation Requirement

### Cold Start Timing (CRITICAL)

**Problem discovered November 2025:** Starting heartbeat AFTER initialization causes cold start failures.

| Sequence | Heartbeat Timing | Result |
|----------|------------------|--------|
| **Wrong** | After init messages | Fails ~11.7 seconds with `projectionDisconnected` |
| **Correct** | Before init messages | Stable for 30+ minutes (tested) |

**Correct initialization sequence:**
```
1. USB Reset
2. 3-second mandatory wait
3. Open USB connection
4. START HEARTBEAT IMMEDIATELY  ← Critical
5. Send initialization messages
6. Start reading loop
```

**Why:** The firmware requires active supervision during boot. Heartbeat serves as a stabilization signal, not just keepalive.

| Condition | Heartbeat Timing | Result |
|-----------|------------------|--------|
| Cold Start (USB Reset) | Must start BEFORE init | Stable |
| Warm Reconnect | Can start AFTER init | Stable |

---

## Message Format

```
Header (16 bytes, no payload):
+------------------+------------------+------------------+------------------+
|   0x55AA55AA     |   0x00000000     |   0x000000AA     |   0xFFFFFF55     |
|   (magic)        |   (length=0)     |   (type=170)     |   (type check)   |
+------------------+------------------+------------------+------------------+

Hex: AA 55 AA 55 00 00 00 00 AA 00 00 00 55 FF FF FF
```

- **Type:** 0xAA (170 decimal)
- **Payload:** None (header-only message)
- **Direction:** Bidirectional (host ↔ adapter)

---

## Timeout Values (Hardcoded in Firmware)

| Constant | Hex | Decimal | Address | Purpose |
|----------|-----|---------|---------|---------|
| Host No Response | `0x3a98` | **15,000 ms** | 0x21112 | Max gap before connection reset |
| Send to Host | `0x1194` | **4,500 ms** | 0x210a0 | USB write failure timeout |
| Timing Unit | `0x3e8` | **1,000 ms** | 0x18e6e | Base timing calculation |
| Min Spacing | `0x1f4` | **500 ms** | 0x18e82 | Minimum message spacing |

---

## Recommended Intervals

| Interval | Heartbeats per 15s | Safety Margin |
|----------|-------------------|---------------|
| 1000 ms | 15 | High |
| **2000 ms** | 7-8 | **Good (recommended)** |
| 5000 ms | 3 | Minimal |
| 10000 ms | 1-2 | Risky |

Timer constants at `0x71150` contain value `0x07d0` (2000ms), suggesting this as the intended interval.

---

## Binary Analysis

### Timeout Check Logic (0x21108-0x21118)

```assembly
0x21104  blx   dbus_connection_unref
0x21108  ldr.w r3, [sb]           ; Load last heartbeat timestamp from [sb]
0x2110c  mov   r7, r0             ; r7 = current time (from previous call)
0x2110e  cbz   r3, 0x2111c        ; If no timestamp, skip to auto-detect
0x21110  subs  r3, r7, r3         ; r3 = elapsed = current_time - last_heartbeat
0x21112  movw  r2, 0x3a98         ; r2 = 15000 milliseconds
0x21116  cmp   r3, r2             ; Compare elapsed vs 15000
0x21118  bls.w 0x20c50            ; Branch if elapsed <= 15000 (OK)
                                   ; Fall through if elapsed > 15000 (TIMEOUT)
```

**Pseudocode:**
```c
elapsed_time = current_time - last_heartbeat_received;
if (elapsed_time > 15000) {
    log("Host No Response, we will reset connection!!!");
    reset_connection();
}
```

### Send to Host Timeout (0x210a0-0x210ae)

```assembly
0x210a0  movw  r2, 0x1194         ; r2 = 4500 milliseconds
0x210a4  vcvt.s32.f64 s15, d7     ; Convert timing value
0x210a8  vmov  r3, s15
0x210ac  cmp   r3, r2             ; Compare elapsed vs 4500
0x210ae  ble   0x21032            ; Branch if <= 4500 (OK)
                                   ; Fall through if > 4500 (TIMEOUT)
```

### Key Functions

| Address | Function | Purpose |
|---------|----------|---------|
| `0x18088` | Message pre-processor | Validates USB header and magic bytes |
| `0x18244` | Decrypt/validate | Processes incoming messages |
| `0x18e2c` | Message dispatcher | Routes by type (0xAA → heartbeat handler) |
| `0x21080` | Timeout checker | Checks elapsed time, triggers reset |
| `0x6327a` | D-Bus dispatch | Emits `HUDComand_A_HeartBeat` signal |

### D-Bus Signal Flow

When heartbeat (type 0xAA) is received:
1. Header validated at `0x18088`
2. Decrypted/validated at `0x18244`
3. Routed at `0x18e2c`
4. D-Bus signal emitted at `0x6327a`:

```assembly
0x6327a  ldr   r4, [0x6334c]      ; Load "HUDComand_A_HeartBeat" string ptr
0x6327c  b     0x63362            ; Jump to D-Bus emit routine
```

---

## Configuration

### SendHeartBeat

**Config key:** `SendHeartBeat` in `/etc/riddle.conf`
**String location:** `0x6e515`
**Config table:** `0x71480`

```
Offset 0x71480: 1e 00 00 00  01 00 00 00  1e 00 00 00  15 e5 07 00
                ^^^^^^^^^^   ^^^^^^^^^^   ^^^^^^^^^^   ^^^^^^^^^^^
                min=30       default=1    max=30       -> string ptr
```

- **Default:** 1 (enabled)
- **Type:** Boolean

**When disabled (`riddleBoxCfg SendHeartBeat 0`):**
1. Outbound heartbeat emission stops (D-Bus signal not dispatched)
2. Timeout monitoring **continues** (15-second check still runs)
3. Host must still send heartbeats or connection resets
4. Effect is bidirectional - both sides need heartbeats

### HNPInterval

**Config key:** `HNPInterval` (Host No Pong Interval)
**String location:** `0x6e490`
**Config table:** `0x713b0`

Likely controls the timeout period, but 15-second value appears hardcoded at `0x21112`.

---

## Timeout Messages (Firmware Strings)

| File Offset | Runtime Addr | Message |
|-------------|--------------|---------|
| `0x5d530` | `0x6d530` | `Host No Response, we will reset connection!!!` |
| `0x5d56f` | `0x6d56f` | `Send to Host timeout, we will reset connection!!!` |
| `0x5d55f` | `0x6d55f` | `tickPass %d ms` |
| `0x5d605` | `0x6d605` | `Need reset every time when timeout!!!` |

### String Locations

| Binary | Offset | String |
|--------|--------|--------|
| ARMadb-driver_unpacked | `0x5b583` | `HUDComand_A_HeartBeat` |
| ARMadb-driver_unpacked | `0x6e515` | `SendHeartBeat` |
| ARMadb-driver_unpacked | `0x6e490` | `HNPInterval` |
| riddleBoxCfg_unpacked | `0x18f54` | `SendHeartBeat` |

---

## Timer Constants (0x71150)

```
Offset 71150: e8 03 00 00  2c 01 00 00  d0 07 00 00
              ^^^^^^^^^^   ^^^^^^^^^^   ^^^^^^^^^^
              1000 ms      300 ms       2000 ms
```

The 2000ms value aligns with the recommended heartbeat interval.

---

## Design Rationale

Based on firmware analysis, heartbeat serves four purposes:

1. **USB Connection Supervision** - USB bulk transfers can become stale without application awareness
2. **Crash Detection** - Detects if host application has crashed or frozen
3. **Resource Cleanup** - Allows firmware to free resources and accept new connections
4. **Cold Start Stabilization** - Provides synchronization signal during firmware boot

The firmware implements a watchdog pattern: if no heartbeat is seen within the 15-second timeout window, assume the connection is dead and reset.

---

## Developer Guidelines

### DO NOT MODIFY WITHOUT TESTING

1. **NEVER** move heartbeat start to after initialization - causes cold start failures
2. **NEVER** add delays between heartbeat start and initialization
3. **Test BOTH scenarios:**
   - Cold start (app restart with adapter connected)
   - Warm reconnect (adapter disconnect/reconnect while app running)

### Failure Indicators

- `projectionDisconnected` message ~11-12 seconds after connection
- Session terminating before stable streaming state
- TTY log showing "Host No Response" message

### Expected Log Pattern (Correct)

```
14:53:47.834 > [DONGLE] Starting dongle connection sequence
14:53:47.835 > [DONGLE] Heartbeat started before initialization
14:53:48.147 > [DONGLE] Initialization sequence completed in 313ms
14:53:48.148 > [DONGLE] Starting message reading loop
```

---

## Known Issues (Resolved)

### Duplicate Heartbeat Timer Bug (Fixed 2025-11-05)

**Problem:** Two heartbeat timers running simultaneously, offset by ~260ms.

**Root Causes:**
- Missing `await` in projectionDisconnected handler
- Incorrect `Future.delayed` usage

**Resolution:**
- Added `await` before `restart()` call
- Fixed `Future.delayed()` to properly sequence stop/wait/start
- Ensures one heartbeat timer per adapter session

---

## References

- Binary: `cpc200_ccpa_firmware_binaries/unpacked/ARMadb-driver_unpacked`
- Tools: rizin, strings, xxd
- Discovery: November 2025 (cold start timing)
- Binary Analysis: January 2026
- Testing: 100% success rate across all test scenarios
