# AutoKit & BoxHelper JADX Decompilation Translation Guide

## Overview

This guide provides mappings to help translate obfuscated class names when using JADX to decompile AutoKit and BoxHelper APKs. The obfuscation primarily uses single-letter class names and package structures like `a.b.c`, `b.a.a`, etc.

---

## 1. AutoKit APK Decompilation Guide

### 1.1 **Main APK Structure**
```
AutoKit_2025.03.19.1126.apk (10MB)
├── classes.dex (1,209,004 bytes) - 360 Jiagu protected
├── assets/HWTouch.dex (11,764 bytes) - Unprotected touch system
└── native libraries (libAudioProcess.so, libopenH264decoder.so, etc.)
```

### 1.2 **JADX Command for AutoKit**
```bash
# Extract and analyze AutoKit APK
jadx -d autokit_decompiled AutoKit_2025.03.19.1126.apk

# For the extracted clean DEX (if you have it)
jadx -d autokit_clean_decompiled autokit_extracted.dex

# Include assets and resources
jadx -d autokit_full --show-bad-code --deobf AutoKit_2025.03.19.1126.apk
```

### 1.3 **AutoKit Class Mapping (Expected)**

**Touch System** (HWTouch.dex - Unprotected):
```
com.hewei.phonemirror.touch.HWTouch  → Touch input injection system
├── main()                           → Entry point, server on 127.0.0.1:8878  
├── sendAction()                     → Process touch events (down/move/up)
├── getResolution()                  → Get display resolution via reflection
└── injectMotionEvent()             → Inject touch events to Android system
```

**Main Application** (classes.dex - May be obfuscated):
```
# Service Management
cn.manstep.phonemirror.service.CarPlayService     → Main CarPlay service
cn.manstep.phonemirror.receiver.MediaButtonReceiver → Media button handling
cn.manstep.phonemirror.audio.*                    → Audio processing classes
cn.manstep.phonemirror.video.*                    → Video processing classes

# Or if obfuscated, look for:
a.b.c.* → Likely main application classes
com.a.* → Potentially core functionality
```

### 1.4 **Native Library Analysis**
```bash
# Analyze native libraries extracted by JADX
strings autokit_decompiled/resources/lib/arm64-v8a/libAudioProcess.so | grep -E "(Java_|JNI_)"
strings autokit_decompiled/resources/lib/arm64-v8a/libopenH264decoder.so | grep -E "(decode|frame)"
```

---

## 2. BoxHelper APK Decompilation Guide

### 2.1 **BoxHelper APK Structure**
```
BoxHelper.apk (~2-3MB)
├── classes.dex - Core USB communication
└── Native libraries (minimal)
```

### 2.2 **JADX Command for BoxHelper**
```bash
# Decompile BoxHelper APK
jadx -d boxhelper_decompiled BoxHelper.apk

# With deobfuscation enabled
jadx -d boxhelper_decompiled --deobf --show-bad-code BoxHelper.apk
```

### 2.3 **BoxHelper Class Translation Map**

Based on our reverse engineering analysis, here are the actual class mappings:

**Package: `cn.manstep.phonemirrorBox`**
```
cn.manstep.phonemirrorBox.MainActivity → Main activity (UI controller)
├── onCreate()                         → Session initialization
├── onDestroy()                       → Cleanup and shutdown
├── t()                               → Update UI state
├── u()                               → Landscape layout
└── v()                               → Portrait layout

Variables:
├── p (ImageButton)                   → Upgrade button
├── q (TextView)                      → Status text
├── r (CommunicationManager)          → USB communication manager
├── s (GradientRoundProgress)         → Progress bar
├── u (boolean)                       → Device ready state
├── v (String)                        → Upgrade URL
├── w (String)                        → Device version
└── x (String)                        → Device code
```

**Package: `b.a.a` (Core Communication)**
```
b.a.a.c → CommunicationManager (USB communication core)
├── USB device detection (VID 0x1314)
├── Session management
├── Protocol implementation
└── Threading coordination

Variables:
├── g (boolean)                       → USB connection active
├── d (boolean)                       → Permission request pending
├── l (int)                          → Connected device product ID
├── f (UsbManager)                    → Android USB manager
├── n (static UsbDeviceConnection)    → USB connection
├── o (static UsbEndpoint)            → Input endpoint
├── p (static UsbEndpoint)            → Output endpoint
├── f740b (ThreadPoolExecutor)        → Main thread pool
├── i (ScheduledExecutorService)      → Scheduled tasks
└── k (ConcurrentHashMap)             → Task tracking

Methods:
├── a() → USB data read operation
├── b() → Session initialization  
├── c() → USB data write operation
└── Inner class 'b' → Device detection task
```

```
b.a.a.d → MessageProcessor (Protocol message receiver)
├── run() → Main message processing loop
├── Protocol header parsing (0x55AA55AA)
├── Command processing (0x01, 0x19, 0xCC)
└── Response handling

Message Types:
├── command 1 (0x01)    → Session/Capabilities
├── command 25 (0x19)   → BoxSettings/Configuration  
└── command 204 (0xCC)  → Software Version
```

```
b.a.a.g → UIHandler (Handler for UI updates)
├── handleMessage() → Process UI update messages
├── Message type 1  → Version information
├── Message type 2  → Session disconnected
└── Message type 3  → Device configuration

Variables:
└── f746a → Reference to MainActivity
```

```
b.a.a.k → ProtocolDataStructure (Session configuration)
├── 28-byte protocol buffer
├── Session parameters (width, height, fps)
└── CPC200-CCPA protocol data

Variables:
├── f751a (int) → Width
├── f752b (int) → Height  
├── f753c (int) → FPS
├── d (int)     → Format
├── e (int)     → Packet max size
├── f (int)     → Version
├── g (ByteBuffer) → Protocol buffer
└── h (static int) → Mode
```

```
b.a.a.a → DownloadManager (APK download handling)
├── HTTP download functionality
├── Progress tracking
└── Installation management

b.a.a.b → DownloadTask (Download thread)
├── run() → Download execution
├── HTTP connection handling
└── File management
```

### 2.4 **Additional Obfuscated Packages**

**Package: `a.b.k` (Android Support/UI)**
```
a.b.k.h → Base activity class (likely AppCompatActivity)
a.b.k.k → UI framework classes
a.b.k.j → Utility classes
```

**Package: `a.e.d` (Permissions)**
```
a.e.d.a → Permission management
a.e.d.d → Permission callbacks
```

---

## 3. JADX Analysis Scripts

### 3.1 **Automated Class Analysis Script**

**File: `analyze_jadx_output.py`**
```python
#!/usr/bin/env python3
"""
AutoKit/BoxHelper JADX Analysis Helper
Automatically identifies key classes and methods in decompiled output
"""

import os
import re
from pathlib import Path

def analyze_jadx_output(decompiled_dir):
    """Analyze JADX decompiled output and identify key classes"""
    
    key_patterns = {
        'usb_communication': [
            r'UsbManager',
            r'UsbDevice',
            r'UsbDeviceConnection',
            r'bulkTransfer',
            r'0x1314',
            r'vendorId.*4884'
        ],
        'protocol_implementation': [
            r'0x55AA55AA',
            r'1437226410',
            r'ByteBuffer.*LITTLE_ENDIAN',
            r'putInt.*getInt',
            r'command.*0x01',
            r'heartbeat.*0xAA'
        ],
        'session_management': [
            r'scheduleAtFixedRate',
            r'ThreadPoolExecutor',
            r'ScheduledExecutorService',
            r'Handler.*handleMessage',
            r'Message.*obtain'
        ],
        'touch_system': [
            r'InputManager',
            r'injectInputEvent',
            r'MotionEvent',
            r'127\.0\.0\.1.*8878',
            r'ServerSocket'
        ]
    }
    
    results = {}
    
    for root, dirs, files in os.walk(decompiled_dir):
        for file in files:
            if file.endswith('.java'):
                file_path = os.path.join(root, file)
                try:
                    with open(file_path, 'r', encoding='utf-8', errors='ignore') as f:
                        content = f.read()
                        
                    relative_path = os.path.relpath(file_path, decompiled_dir)
                    
                    for category, patterns in key_patterns.items():
                        for pattern in patterns:
                            if re.search(pattern, content, re.IGNORECASE):
                                if category not in results:
                                    results[category] = []
                                if relative_path not in results[category]:
                                    results[category].append(relative_path)
                                break
                                
                except Exception as e:
                    print(f"Error reading {file_path}: {e}")
    
    return results

def generate_mapping_report(results):
    """Generate mapping report from analysis results"""
    
    print("=== AutoKit/BoxHelper JADX Analysis Report ===\n")
    
    for category, files in results.items():
        print(f"## {category.replace('_', ' ').title()}")
        print("-" * 40)
        for file_path in sorted(files):
            print(f"  {file_path}")
        print()
    
    return results

if __name__ == "__main__":
    import sys
    if len(sys.argv) != 2:
        print("Usage: python3 analyze_jadx_output.py <decompiled_directory>")
        sys.exit(1)
    
    decompiled_dir = sys.argv[1]
    if not os.path.exists(decompiled_dir):
        print(f"Directory not found: {decompiled_dir}")
        sys.exit(1)
    
    results = analyze_jadx_output(decompiled_dir)
    generate_mapping_report(results)
```

### 3.2 **Usage Instructions**

```bash
# 1. Decompile APK with JADX
jadx -d boxhelper_decompiled BoxHelper.apk

# 2. Run analysis script
python3 analyze_jadx_output.py boxhelper_decompiled

# 3. Look for key files identified by the script
grep -r "UsbManager" boxhelper_decompiled/sources/
grep -r "0x55AA55AA" boxhelper_decompiled/sources/
grep -r "scheduleAtFixedRate" boxhelper_decompiled/sources/
```

---

## 4. Manual Translation Guide

### 4.1 **Step-by-Step Translation Process**

**Step 1: Identify Main Activity**
```bash
# Look for MainActivity or main activity class
find boxhelper_decompiled -name "*.java" -exec grep -l "setContentView\|onCreate" {} \;
```

**Step 2: Find USB Communication Classes**
```bash
# Search for USB-related code
grep -r "UsbManager\|UsbDevice\|vendorId.*4884" boxhelper_decompiled/sources/
```

**Step 3: Locate Protocol Implementation**
```bash
# Find CPC200-CCPA protocol code
grep -r "0x55AA55AA\|1437226410" boxhelper_decompiled/sources/
```

**Step 4: Identify Threading Classes**
```bash
# Find session management and threading
grep -r "ThreadPoolExecutor\|scheduleAtFixedRate" boxhelper_decompiled/sources/
```

### 4.2 **Key Identifiers to Look For**

**USB Communication Identifiers:**
- `vendorId == 4884` or `0x1314`
- `UsbManager`, `UsbDevice`, `UsbDeviceConnection`
- `bulkTransfer` method calls
- Interface count checks (`<= 3`)

**Protocol Identifiers:**
- `0x55AA55AA` or `1437226410` (magic number)
- 16-byte header parsing
- `ByteBuffer.order(ByteOrder.LITTLE_ENDIAN)`
- Command values: `0x01`, `0xAA`, `0x19`, `0xCC`

**Session Management Identifiers:**
- `scheduleAtFixedRate` with 2000ms intervals
- `ThreadPoolExecutor` with 1-2 threads
- `Handler.handleMessage` implementations
- `ConcurrentHashMap` for task tracking

**UI Integration Identifiers:**
- Progress bar updates
- Button state changes
- Toast messages
- Handler message types (1, 2, 3)

### 4.3 **Common Obfuscation Patterns**

**Class Name Patterns:**
- Single letters: `a`, `b`, `c`, `d`, `e`, `f`, `g`, `h`
- Short packages: `a.b.c`, `b.a.a`, `a.e.d`
- Numbered variants: `a$1`, `b$2` (inner classes)

**Variable Name Patterns:**
- Single letters: `a`, `b`, `c`, `d`, `e`, `f`, `g`, `h`
- Letter + numbers: `f740b`, `f751a`, `f746a`
- Generic names: `str`, `obj`, `var`

**Method Name Patterns:**
- Single letters: `a()`, `b()`, `c()`  
- Generic names: `run()`, `call()`, `get()`
- Android overrides: `onCreate()`, `onDestroy()` (usually preserved)

---

## 5. Expected JADX Output Structure

### 5.1 **BoxHelper Decompiled Structure**
```
boxhelper_decompiled/
├── sources/
│   ├── cn/manstep/phonemirrorBox/
│   │   ├── MainActivity.java          # Main activity
│   │   └── GradientRoundProgress.java # Custom progress bar
│   ├── b/a/a/
│   │   ├── c.java                     # USB communication manager
│   │   ├── d.java                     # Message processor
│   │   ├── g.java                     # UI handler
│   │   ├── k.java                     # Protocol data structure
│   │   ├── a.java                     # Download manager
│   │   └── b.java                     # Download task
│   ├── a/b/k/                         # Android support classes
│   ├── a/e/d/                         # Permission classes
│   └── androidx/                      # AndroidX libraries
├── resources/
│   ├── AndroidManifest.xml
│   ├── res/                           # Resources
│   └── assets/                        # Assets
└── original/                          # Original APK
```

### 5.2 **AutoKit Decompiled Structure (if protection bypassed)**
```
autokit_decompiled/
├── sources/
│   ├── cn/manstep/phonemirror/
│   │   ├── service/CarPlayService.java
│   │   ├── audio/                     # Audio processing
│   │   ├── video/                     # Video processing  
│   │   └── receiver/                  # Broadcast receivers
│   ├── com/hewei/phonemirror/touch/
│   │   └── HWTouch.java              # Touch system (from assets)
│   └── [obfuscated packages]/         # Main app logic
├── resources/
│   ├── lib/arm64-v8a/
│   │   ├── libAudioProcess.so         # WebRTC audio
│   │   ├── libopenH264decoder.so      # H.264 decoder
│   │   └── [other native libraries]
│   └── assets/
│       └── HWTouch.dex               # Touch injection system
└── original/
```

---

## 6. Troubleshooting JADX Issues

### 6.1 **Common JADX Errors and Solutions**

**Error: "Bad dex file checksum"**
```bash
# Use --show-bad-code flag
jadx -d output --show-bad-code input.apk
```

**Error: "Decompilation failed"**
```bash
# Try without deobfuscation first
jadx -d output --no-deobf input.apk
```

**Error: "OutOfMemoryError"**
```bash
# Increase heap size
jadx -J-Xmx4G -d output input.apk
```

### 6.2 **Alternative Analysis Tools**

If JADX fails completely:
```bash
# Use apktool for resource extraction
apktool d input.apk

# Use dex2jar + CFR
d2j-dex2jar classes.dex
java -jar cfr.jar classes-dex2jar.jar

# Use Ghidra for native library analysis
# Import .so files into Ghidra for ARM64 analysis
```

---

## 7. Quick Reference Commands

### 7.1 **JADX Command Reference**
```bash
# Basic decompilation
jadx -d output input.apk

# With deobfuscation
jadx -d output --deobf input.apk

# Show problematic code
jadx -d output --show-bad-code input.apk

# Export Gradle project
jadx -d output --export-gradle input.apk

# Verbose output
jadx -d output -v input.apk
```

### 7.2 **Search Commands**
```bash
# Find USB communication
grep -r "UsbManager\|0x1314\|4884" output/sources/

# Find protocol implementation
grep -r "0x55AA55AA\|1437226410" output/sources/

# Find session management
grep -r "scheduleAtFixedRate\|ThreadPoolExecutor" output/sources/

# Find touch system
grep -r "127\.0\.0\.1.*8878\|ServerSocket" output/sources/
```

This translation guide should significantly help anyone using JADX to decompile and understand the AutoKit and BoxHelper APKs by providing clear mappings from obfuscated names to actual functionality.