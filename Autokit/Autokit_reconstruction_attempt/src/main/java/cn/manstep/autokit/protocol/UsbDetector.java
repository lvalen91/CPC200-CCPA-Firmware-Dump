/**
 * UsbDetector.java
 *
 * USB device enumeration and connection manager. Handles both Android UsbManager API
 * and a custom native BoxConnection JNI path (for non-standard USB stacks).
 *
 * Detects AutoKit box devices by VID/PID matching:
 *   - VID 1317 (0x0525), PID 42149/42150 (0xA4A5/0xA4A6) = "fake OTG" accessory
 *   - VID 7531 (0x1D6B), PID 42149 = "box enter U mode"
 *   - VID 4884 (0x1314) and VIDs in m.b[] = known AutoKit box VIDs
 *
 * Return codes from detection:
 *   0 = no device / disconnected
 *   1 = invalid VID (unauthorized)
 *   2 = needs USB permission
 *   3 = fake OTG plug in
 *   4 = fake OTG plug out
 *   5 = box enter U mode
 *   6 = box exit U mode (OTG plug out)
 *   7 = device connected successfully
 *
 * Original: BoxInterface/j.java
 */
package cn.manstep.autokit.protocol;

import android.app.PendingIntent;
import android.content.Context;
import android.hardware.usb.UsbDevice;
import android.hardware.usb.UsbDeviceConnection;
import android.hardware.usb.UsbEndpoint;
import android.hardware.usb.UsbInterface;
import android.hardware.usb.UsbManager;
import cn.manstep.phonemirrorBox.b0;
import cn.manstep.phonemirrorBox.m;
import cn.manstep.phonemirrorBox.p;
import cn.manstep.phonemirrorBox.u;
import cn.manstep.phonemirrorBox.util.JniTools;
import cn.manstep.phonemirrorBox.util.s;
import com.stub.StubApp;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Locale;

public class UsbDetector {
    private static final byte[] readBuffer = new byte[16384];             /* was: field 'n' */

    private UsbDeviceConnection usbConnection;    /* was: field 'f1478b' (renamed from 'b') */
    private UsbEndpoint endpointIn;               /* was: field 'f1479c' (renamed from 'c') */
    private UsbEndpoint endpointOut;              /* was: field 'f1480d' (renamed from 'd') */
    private UsbManager usbManager;                /* was: field 'e' */
    private BoxConnection boxConnection;          /* was: field 'f' */
    private boolean useNativeUsb;                 /* was: field 'g' -- true = use BoxConnection JNI */
    private UsbDevice pendingPermissionDevice;    /* was: field 'h' */
    private final WeakReference<Context> contextRef; /* was: field 'm' */
    private boolean usbConnected = false;         /* was: field 'a' */
    private boolean fakeOtgDetected = false;      /* was: field 'i' */
    private boolean boxUModeDetected = false;     /* was: field 'j' */
    private int dataTransferMode = 0;             /* was: field 'k' -- 0=normal, 1=AES encrypted, 2=TCP */
    private int aesRandomNum = 0;                 /* was: field 'l' */

    public UsbDetector(Context context) {
        this.useNativeUsb = false;
        this.useNativeUsb = u.z().d0();
        this.contextRef = new WeakReference<>(StubApp.getOrigApplicationContext(context.getApplicationContext()));
        if (this.useNativeUsb) {
            this.boxConnection = new BoxConnection();
        } else {
            this.usbManager = (UsbManager) context.getSystemService("usb");
        }
        if (this.dataTransferMode == 2) {
            cn.manstep.phonemirrorBox.t0.a.b(context).c(this.aesRandomNum);
        }
    }

    /**
     * Scan for devices using native BoxConnection JNI.
     * was: method 'c()'
     */
    private int scanNativeDevices() {
        int matchedVid;
        int matchedPid;
        boolean isBoxUMode;
        String[] deviceStrings = new String[16];
        int deviceCount = this.boxConnection.getDeviceList(deviceStrings);
        boolean hasFakeOtg = false;
        if (deviceCount > 0) {
            int idx = 0;
            boolean fakeOtgFound = false;
            isBoxUMode = false;
            while (true) {
                if (idx >= deviceCount) {
                    hasFakeOtg = fakeOtgFound;
                    matchedVid = 0;
                    matchedPid = 0;
                    break;
                }
                int[] vidPid = BoxConnection.getVidPid(deviceStrings[idx]);
                s.d("UsbManager", "evaluateUsbDevices: vid=" + vidPid[0] + ", pid=" + vidPid[1]);
                if (!isFakeOtgDevice(vidPid[0], vidPid[1])) {
                    if (!isBoxUModeDevice(vidPid[0], vidPid[1])) {
                        if (isKnownBoxVid(vidPid[0])) {
                            matchedVid = vidPid[0];
                            matchedPid = vidPid[1];
                            hasFakeOtg = fakeOtgFound;
                            break;
                        }
                        if (handleInvalidDeviceNative(vidPid[0], vidPid[1])) {
                            return 1; /* unauthorized VID */
                        }
                    } else {
                        isBoxUMode = true;
                    }
                } else {
                    fakeOtgFound = true;
                }
                idx++;
            }
        } else {
            matchedVid = 0;
            matchedPid = 0;
            isBoxUMode = false;
        }
        return handleConnectionStateNative(hasFakeOtg, isBoxUMode, matchedVid, matchedPid);
    }

    /**
     * Scan for devices using Android UsbManager API.
     * was: method 'd(HashMap)'
     */
    private int scanUsbManagerDevices(HashMap<String, UsbDevice> map) {
        UsbDevice matchedDevice;
        Iterator<UsbDevice> it = map.values().iterator();
        boolean fakeOtgFound = false;
        boolean boxUModeFound = false;
        while (true) {
            if (!it.hasNext()) {
                matchedDevice = null;
                break;
            }
            matchedDevice = it.next();
            int vendorId = matchedDevice.getVendorId();
            int productId = matchedDevice.getProductId();
            int interfaceCount = matchedDevice.getInterfaceCount();
            s.c("UsbManager,evaluateUsbDevices: usb: " + formatDeviceInfo(vendorId, productId, interfaceCount));
            if (!isFakeOtgDevice(vendorId, productId)) {
                if (!isBoxUModeDevice(vendorId, productId)) {
                    if (isKnownBoxVidWithInterfaceCheck(vendorId, interfaceCount)) {
                        break;
                    }
                    if (handleInvalidDeviceUsb(matchedDevice)) {
                        return 1;
                    }
                } else {
                    boxUModeFound = true;
                }
            } else {
                fakeOtgFound = true;
            }
        }
        /* JADX decompiler note: missing return path leads to g(fakeOtgFound, boxUModeFound, matchedDevice) */
        return handleConnectionStateUsb(fakeOtgFound, boxUModeFound, matchedDevice);
    }

    /** Format device info for logging. was: method 'e(int, int, int)' */
    private String formatDeviceInfo(int vid, int pid, int ifCount) {
        return String.format(Locale.CHINA, "vid=%d(0x%04X),pid=%d(0x%04X),interfaceCnt=%d",
                Integer.valueOf(vid), Integer.valueOf(vid),
                Integer.valueOf(pid), Integer.valueOf(pid),
                Integer.valueOf(ifCount));
    }

    /** Handle connection state transitions for native USB. was: method 'f(boolean, boolean, int, int)' */
    private int handleConnectionStateNative(boolean hasFakeOtg, boolean hasBoxUMode, int vid, int pid) {
        BoxConnection bc;
        if (this.fakeOtgDetected != hasFakeOtg) {
            this.fakeOtgDetected = hasFakeOtg;
            return hasFakeOtg ? 3 : 4;
        }
        if (this.boxUModeDetected != hasBoxUMode) {
            this.boxUModeDetected = hasBoxUMode;
            return hasBoxUMode ? 5 : 6;
        }
        if ((vid != 0 || pid != 0) && (bc = this.boxConnection) != null) {
            int result = bc.openDevice(vid, pid);
            if (result == 0) {
                this.usbConnected = true;
                return 7;
            }
            s.f("UsbManager", "handleConnectionState: openDevice=" + BoxConnection.getError(result)
                    + ", vid=" + vid + ", pid=" + pid);
        }
        if (this.usbConnected) {
            closeUsb();  /* was: b() */
        }
        this.usbConnected = false;
        return 0;
    }

    /** Handle connection state transitions for UsbManager API. was: method 'g(boolean, boolean, UsbDevice)' */
    private int handleConnectionStateUsb(boolean hasFakeOtg, boolean hasBoxUMode, UsbDevice device) {
        int result;
        if (this.fakeOtgDetected != hasFakeOtg) {
            this.fakeOtgDetected = hasFakeOtg;
            return hasFakeOtg ? 3 : 4;
        }
        if (this.boxUModeDetected != hasBoxUMode) {
            this.boxUModeDetected = hasBoxUMode;
            return hasBoxUMode ? 5 : 6;
        }
        if (device != null && (result = tryOpenUsbDevice(device)) > 0) {
            return result;
        }
        if (this.usbConnected) {
            closeUsb();
        }
        this.usbConnected = false;
        s.f("UsbManager", "handleConnectionState() usbConnected = false");
        return 0;
    }

    /** Check for invalid/unauthorized VID via JniTools.box() -- native BoxConnection path. was: method 'h(int, int)' */
    private boolean handleInvalidDeviceNative(int vid, int pid) {
        boolean isInvalid;
        try {
            isInvalid = JniTools.box(String.format(Locale.CHINA, "0x%04X", Integer.valueOf(vid)));
        } catch (Error | Exception e) {
            s.f("UsbManager", "handleInvalidDevice: JniTools.box\n" + s.g(e));
            isInvalid = true;
        }
        if (isInvalid) {
            BoxInfo.getInstance().setVidPid(vid, pid);  /* was: c.e().y(vid, pid) */
            p.r = p.a() + 1;
            s.f("UsbManager", "handleInvalidDevice: VID ERROR");
            tryOpenUsbDevice(this.pendingPermissionDevice);
            BoxConnection bc = this.boxConnection;
            if (bc != null) {
                bc.openDevice(vid, pid);
            }
        }
        return isInvalid;
    }

    /** Check for invalid/unauthorized VID via JniTools.box() -- UsbManager path. was: method 'i(UsbDevice)' */
    private boolean handleInvalidDeviceUsb(UsbDevice device) {
        boolean isInvalid;
        try {
            isInvalid = JniTools.box(String.format(Locale.CHINA, "0x%04X", Integer.valueOf(device.getVendorId())));
        } catch (Error | Exception e) {
            s.f("UsbManager", "handleInvalidDevice: JniTools.box\n" + s.g(e));
            isInvalid = true;
        }
        if (isInvalid) {
            BoxInfo.getInstance().setVidPid(device.getVendorId(), device.getProductId());
            p.r = p.a() + 1;
            s.f("UsbManager", "handleInvalidDevice: VID ERROR");
            tryOpenUsbDevice(device);
        }
        return isInvalid;
    }

    /** Check if VID/PID matches "fake OTG" accessory (VID=0x0525). was: method 'j(int, int)' */
    private boolean isFakeOtgDevice(int vid, int pid) {
        return vid == 1317 && (pid == 42149 || pid == 42150);
    }

    /** Check if VID/PID matches box U-mode device (VID=0x1D6B). was: method 'k(int, int)' */
    private boolean isBoxUModeDevice(int vid, int pid) {
        return vid == 7531 && pid == 42149;
    }

    /** Check if VID matches known box VIDs (native path, no interface count check). was: method 'm(int)' */
    private boolean isKnownBoxVid(int vid) {
        if (vid > 0) {
            for (int knownVid : m.f1780b) {
                if (vid == knownVid) {
                    return true;
                }
            }
        }
        return vid > 0 && vid == 4884; /* 0x1314 */
    }

    /** Check VID and interface count (UsbManager path). was: method 'n(int, int)' */
    private boolean isKnownBoxVidWithInterfaceCheck(int vid, int interfaceCount) {
        if (vid > 0 && interfaceCount <= 3) {
            for (int knownVid : m.f1780b) {
                if (vid == knownVid) {
                    return true;
                }
            }
        }
        return vid > 0 && vid == 4884 && interfaceCount <= 3;
    }

    /** Try to open a USB device via Android UsbManager. was: method 'o(UsbDevice)' */
    private int tryOpenUsbDevice(UsbDevice device) {
        if (device == null) return 0;
        int i = 0;
        while (true) {
            if (i >= device.getInterfaceCount()) {
                break;
            }
            UsbInterface usbInterface = device.getInterface(i);
            if (usbInterface.getEndpointCount() < 2) {
                i++;
            } else if (!this.usbConnected) {
                boolean hasPermission = this.usbManager.hasPermission(device);
                s.c("UsbManager,checkUsbConnected: VID=" + device.getVendorId()
                        + ", hasPermission=" + hasPermission
                        + ", InterfaceClass=" + usbInterface.getInterfaceClass());
                if (!hasPermission) {
                    this.pendingPermissionDevice = device;
                    return 2; /* needs permission */
                }
                closeUsb();
                synchronized (this) {
                    setupEndpoints(usbInterface);  /* was: t(usbInterface) */
                    this.usbConnection = this.usbManager.openDevice(device);
                    s.e("UsbManager,checkUsbConnected: Open Usb Device!!!");
                    BoxInfo.getInstance().setVidPid(device.getVendorId(), device.getProductId());
                    if (this.usbConnection != null) {
                        this.usbConnection.claimInterface(usbInterface, true);
                        s.c("usbconnection:" + this.usbConnection);
                        this.usbConnected = true;
                        if (b0.i().o("InsertBoxAutoStart", false)) {
                            cn.manstep.phonemirrorBox.util.f.f(this.contextRef.get(), null);
                        }
                    } else {
                        s.c("usbconnection == null");
                    }
                }
            }
        }
        return this.usbConnected ? 7 : 0;
    }

    /** Identify bulk IN and OUT endpoints. was: method 't(UsbInterface)' */
    private void setupEndpoints(UsbInterface usbInterface) {
        for (int i = 0; i < usbInterface.getEndpointCount(); i++) {
            UsbEndpoint endpoint = usbInterface.getEndpoint(i);
            if (endpoint.getType() == 2) { /* BULK */
                if (endpoint.getDirection() == 128) { /* IN */
                    this.endpointIn = endpoint;
                } else {
                    this.endpointOut = endpoint;
                }
            }
        }
    }

    /**
     * Run a USB detection scan. Returns a status code (0-7).
     * was: method 'a()'
     */
    public int detectDevices() {
        if (2 == this.dataTransferMode) {
            this.usbConnected = true;
            return 7;
        }
        if (!this.useNativeUsb) {
            UsbManager um = this.usbManager;
            if (um == null) {
                return 0;
            }
            return scanUsbManagerDevices(um.getDeviceList());
        }
        BoxConnection bc = this.boxConnection;
        if (bc == null) {
            return 0;
        }
        bc.release();
        this.boxConnection.init();
        return scanNativeDevices();
    }

    /** Close USB connection and release resources. was: method 'b()' */
    public void closeUsb() {
        s.d("UsbManager", "closeUsb: usbConnected=" + this.usbConnected);
        synchronized (this) {
            this.usbConnected = false;
            if (this.usbConnection != null) {
                this.usbConnection.close();
            }
            if (this.boxConnection != null) {
                this.boxConnection.release();
            }
        }
    }

    /** Check if USB is connected. was: method 'l()' */
    public boolean isConnected() {
        return this.usbConnected;
    }

    /**
     * Read data from USB into buffer. Handles chunked reads up to 16KB at a time.
     * was: method 'p(byte[], int)'
     */
    public boolean readUsb(byte[] buffer, int length) {
        if (!this.usbConnected) {
            return false;
        }
        int remaining = length;
        int offset = 0;
        while (true) {
            if (remaining <= 0) {
                break;
            }
            int chunkSize = Math.min(remaining, 16384);
            int bytesRead = 2 == this.dataTransferMode
                    ? cn.manstep.phonemirrorBox.t0.a.b(this.contextRef.get()).a(readBuffer, 0, chunkSize)
                    : this.useNativeUsb
                        ? this.boxConnection.bulkTransferIn(readBuffer, chunkSize, 0)
                        : this.usbConnection.bulkTransfer(this.endpointIn, readBuffer, chunkSize, 0);
            if (bytesRead < 0) {
                s.e("UsbManager,readUsb: ret = " + bytesRead + "[USB Error], usbConnected = " + this.usbConnected);
                break;
            }
            if (bytesRead > chunkSize) {
                s.e("UsbManager,readUsb: ret=" + bytesRead + ",iRecv=" + chunkSize
                        + "[USB Error], usbConnected = " + this.usbConnected);
                break;
            }
            if (1 == this.dataTransferMode) {
                cn.manstep.phonemirrorBox.t0.a.b(this.contextRef.get()).d(readBuffer, 0, bytesRead, this.aesRandomNum);
            }
            System.arraycopy(readBuffer, 0, buffer, offset, bytesRead);
            offset += bytesRead;
            remaining = length - offset;
        }
        this.usbConnected = offset == length;
        return offset == length;
    }

    /** Request USB permission for pending device. was: method 'q(PendingIntent)' */
    public void requestPermission(PendingIntent pendingIntent) {
        UsbDevice device;
        UsbManager um = this.usbManager;
        if (um == null || (device = this.pendingPermissionDevice) == null) {
            return;
        }
        um.requestPermission(device, pendingIntent);
    }

    /** Enable/disable AES data encryption. was: method 'r(boolean)' */
    public void setEncryptionEnabled(boolean enabled) {
        if (enabled) {
            this.dataTransferMode = 1;
        } else {
            this.dataTransferMode = 0;
        }
        s.d("UsbManager", "saveUsbData: is=" + enabled + ", flag=" + this.dataTransferMode);
    }

    /** Set AES random number for encryption. was: method 's(int)' */
    public void setAesRandomNum(int num) {
        this.aesRandomNum = num;
        s.d("UsbManager", "setAesRandomNum: l=" + num);
    }

    /**
     * Write data to USB. Handles chunked writes up to 16KB at a time.
     * was: method 'u(byte[], int)'
     */
    public boolean writeUsb(byte[] data, int length) {
        boolean success = true;
        if (2 == this.dataTransferMode) {
            return true;
        }
        if (!this.usbConnected) {
            return false;
        }
        Object lock = this.usbConnection;
        if (lock == null) {
            lock = this;
        }
        synchronized (lock) {
            int remaining = length;
            int offset = 0;
            while (remaining > 0) {
                try {
                    int chunkSize = Math.min(remaining, 16384);
                    byte[] chunk = new byte[chunkSize];
                    System.arraycopy(data, offset, chunk, 0, chunkSize);
                    int bytesWritten = this.useNativeUsb
                            ? this.boxConnection.bulkTransferOut(chunk, chunkSize, 4000)
                            : this.usbConnection.bulkTransfer(this.endpointOut, chunk, chunkSize, 4000);
                    if (bytesWritten >= 0 && bytesWritten <= chunkSize) {
                        offset += bytesWritten;
                        remaining = length - offset;
                    }
                    s.f("UsbManager", "write usb iSend = " + chunkSize);
                    s.f("UsbManager", "write usb ret = " + bytesWritten);
                    break;
                } finally {
                }
            }
            this.usbConnected = offset == length;
            if (offset != length) {
                success = false;
            }
        }
        return success;
    }
}
