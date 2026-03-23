package cn.manstep.phonemirrorBox.BoxInterface;

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

/* JADX INFO: loaded from: /tmp/autokit_analysis/dumped_dex/dex_47.dex */
public class j {
    private static final byte[] n = new byte[16384];

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private UsbDeviceConnection f1478b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private UsbEndpoint f1479c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private UsbEndpoint f1480d;
    private UsbManager e;
    private BoxConnection f;
    private boolean g;
    private UsbDevice h;
    private final WeakReference<Context> m;
    private boolean a = false;
    private boolean i = false;
    private boolean j = false;
    private int k = 0;
    private int l = 0;

    public j(Context context) {
        this.g = false;
        this.g = u.z().d0();
        this.m = new WeakReference<>(StubApp.getOrigApplicationContext(context.getApplicationContext()));
        if (this.g) {
            this.f = new BoxConnection();
        } else {
            this.e = (UsbManager) context.getSystemService("usb");
        }
        if (this.k == 2) {
            cn.manstep.phonemirrorBox.t0.a.b(context).c(this.l);
        }
    }

    private int c() {
        int i;
        int i2;
        boolean z;
        String[] strArr = new String[16];
        int deviceList = this.f.getDeviceList(strArr);
        boolean z2 = false;
        if (deviceList > 0) {
            int i3 = 0;
            boolean z3 = false;
            z = false;
            while (true) {
                if (i3 >= deviceList) {
                    z2 = z3;
                    i = 0;
                    i2 = 0;
                    break;
                }
                int[] vidPid = BoxConnection.getVidPid(strArr[i3]);
                s.d("UsbManager", "evaluateUsbDevices: vid=" + vidPid[0] + ", pid=" + vidPid[1]);
                if (!j(vidPid[0], vidPid[1])) {
                    if (!k(vidPid[0], vidPid[1])) {
                        if (m(vidPid[0])) {
                            int i4 = vidPid[0];
                            i2 = vidPid[1];
                            i = i4;
                            z2 = z3;
                            break;
                        }
                        if (h(vidPid[0], vidPid[1])) {
                            return 1;
                        }
                    } else {
                        z = true;
                    }
                } else {
                    z3 = true;
                }
                i3++;
            }
        } else {
            i = 0;
            i2 = 0;
            z = false;
        }
        return f(z2, z, i, i2);
    }

    /* JADX WARN: Code restructure failed: missing block: B:18:0x005d, code lost:
    
        return g(r0, r1, r2);
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private int d(HashMap<String, UsbDevice> map) {
        UsbDevice next;
        Iterator<UsbDevice> it = map.values().iterator();
        boolean z = false;
        boolean z2 = false;
        while (true) {
            if (!it.hasNext()) {
                next = null;
                break;
            }
            next = it.next();
            int vendorId = next.getVendorId();
            int productId = next.getProductId();
            int interfaceCount = next.getInterfaceCount();
            s.c("UsbManager,evaluateUsbDevices: usb: " + e(vendorId, productId, interfaceCount));
            if (!j(vendorId, productId)) {
                if (!k(vendorId, productId)) {
                    if (n(vendorId, interfaceCount)) {
                        break;
                    }
                    if (i(next)) {
                        return 1;
                    }
                } else {
                    z2 = true;
                }
            } else {
                z = true;
            }
        }
    }

    private String e(int i, int i2, int i3) {
        return String.format(Locale.CHINA, "vid=%d(0x%04X),pid=%d(0x%04X),interfaceCnt=%d", Integer.valueOf(i), Integer.valueOf(i), Integer.valueOf(i2), Integer.valueOf(i2), Integer.valueOf(i3));
    }

    private int f(boolean z, boolean z2, int i, int i2) {
        BoxConnection boxConnection;
        if (this.i != z) {
            this.i = z;
            return z ? 3 : 4;
        }
        if (this.j != z2) {
            this.j = z2;
            return z2 ? 5 : 6;
        }
        if ((i != 0 || i2 != 0) && (boxConnection = this.f) != null) {
            int iOpenDevice = boxConnection.openDevice(i, i2);
            if (iOpenDevice == 0) {
                this.a = true;
                return 7;
            }
            s.f("UsbManager", "handleConnectionState: openDevice=" + BoxConnection.getError(iOpenDevice) + ", vid=" + i + ", pid=" + i2);
        }
        if (this.a) {
            b();
        }
        this.a = false;
        return 0;
    }

    private int g(boolean z, boolean z2, UsbDevice usbDevice) {
        int iO;
        if (this.i != z) {
            this.i = z;
            return z ? 3 : 4;
        }
        if (this.j != z2) {
            this.j = z2;
            return z2 ? 5 : 6;
        }
        if (usbDevice != null && (iO = o(usbDevice)) > 0) {
            return iO;
        }
        if (this.a) {
            b();
        }
        this.a = false;
        s.f("UsbManager", "handleConnectionState() usbConnected = false");
        return 0;
    }

    private boolean h(int i, int i2) {
        boolean zBox;
        try {
            zBox = JniTools.box(String.format(Locale.CHINA, "0x%04X", Integer.valueOf(i)));
        } catch (Error | Exception e) {
            s.f("UsbManager", "handleInvalidDevice: JniTools.box\n" + s.g(e));
            zBox = true;
        }
        if (zBox) {
            c.e().y(i, i2);
            p.r = p.a() + 1;
            s.f("UsbManager", "handleInvalidDevice: VID ERROR");
            o(this.h);
            BoxConnection boxConnection = this.f;
            if (boxConnection != null) {
                boxConnection.openDevice(i, i2);
            }
        }
        return zBox;
    }

    private boolean i(UsbDevice usbDevice) {
        boolean zBox;
        try {
            zBox = JniTools.box(String.format(Locale.CHINA, "0x%04X", Integer.valueOf(usbDevice.getVendorId())));
        } catch (Error | Exception e) {
            s.f("UsbManager", "handleInvalidDevice: JniTools.box\n" + s.g(e));
            zBox = true;
        }
        if (zBox) {
            c.e().y(usbDevice.getVendorId(), usbDevice.getProductId());
            p.r = p.a() + 1;
            s.f("UsbManager", "handleInvalidDevice: VID ERROR");
            o(usbDevice);
        }
        return zBox;
    }

    private boolean j(int i, int i2) {
        return i == 1317 && (i2 == 42149 || i2 == 42150);
    }

    private boolean k(int i, int i2) {
        return i == 7531 && i2 == 42149;
    }

    private boolean m(int i) {
        if (i > 0) {
            for (int i2 : m.f1780b) {
                if (i == i2) {
                    return true;
                }
            }
        }
        return i > 0 && i == 4884;
    }

    private boolean n(int i, int i2) {
        if (i > 0 && i2 <= 3) {
            for (int i3 : m.f1780b) {
                if (i == i3) {
                    return true;
                }
            }
        }
        return i > 0 && i == 4884 && i2 <= 3;
    }

    private int o(UsbDevice usbDevice) {
        int i = 0;
        while (true) {
            if (i >= usbDevice.getInterfaceCount()) {
                break;
            }
            UsbInterface usbInterface = usbDevice.getInterface(i);
            if (usbInterface.getEndpointCount() < 2) {
                i++;
            } else if (!this.a) {
                boolean zHasPermission = this.e.hasPermission(usbDevice);
                s.c("UsbManager,checkUsbConnected: VID=" + usbDevice.getVendorId() + ", hasPermission=" + zHasPermission + ", InterfaceClass=" + usbInterface.getInterfaceClass());
                if (!zHasPermission) {
                    this.h = usbDevice;
                    return 2;
                }
                b();
                synchronized (this) {
                    t(usbInterface);
                    this.f1478b = this.e.openDevice(usbDevice);
                    s.e("UsbManager,checkUsbConnected: Open Usb Device!!!");
                    c.e().y(usbDevice.getVendorId(), usbDevice.getProductId());
                    if (this.f1478b != null) {
                        this.f1478b.claimInterface(usbInterface, true);
                        s.c("usbconnection:" + this.f1478b);
                        this.a = true;
                        if (b0.i().o("InsertBoxAutoStart", false)) {
                            cn.manstep.phonemirrorBox.util.f.f(this.m.get(), null);
                        }
                    } else {
                        s.c("usbconnection == null");
                    }
                }
            }
        }
        return this.a ? 7 : 0;
    }

    private void t(UsbInterface usbInterface) {
        for (int i = 0; i < usbInterface.getEndpointCount(); i++) {
            UsbEndpoint endpoint = usbInterface.getEndpoint(i);
            if (endpoint.getType() == 2) {
                if (endpoint.getDirection() == 128) {
                    this.f1479c = endpoint;
                } else {
                    this.f1480d = endpoint;
                }
            }
        }
    }

    public int a() {
        if (2 == this.k) {
            this.a = true;
            return 7;
        }
        if (!this.g) {
            UsbManager usbManager = this.e;
            if (usbManager == null) {
                return 0;
            }
            return d(usbManager.getDeviceList());
        }
        BoxConnection boxConnection = this.f;
        if (boxConnection == null) {
            return 0;
        }
        boxConnection.release();
        this.f.init();
        return c();
    }

    public void b() {
        s.d("UsbManager", "closeUsb: usbConnected=" + this.a);
        synchronized (this) {
            this.a = false;
            if (this.f1478b != null) {
                this.f1478b.close();
            }
            if (this.f != null) {
                this.f.release();
            }
        }
    }

    public boolean l() {
        return this.a;
    }

    public boolean p(byte[] bArr, int i) {
        if (!this.a) {
            return false;
        }
        int i2 = i;
        int i3 = 0;
        while (true) {
            if (i2 <= 0) {
                break;
            }
            int iMin = Math.min(i2, 16384);
            int iA = 2 == this.k ? cn.manstep.phonemirrorBox.t0.a.b(this.m.get()).a(n, 0, iMin) : this.g ? this.f.bulkTransferIn(n, iMin, 0) : this.f1478b.bulkTransfer(this.f1479c, n, iMin, 0);
            if (iA < 0) {
                s.e("UsbManager,readUsb: ret = " + iA + "[USB Error], usbConnected = " + this.a);
                break;
            }
            if (iA > iMin) {
                s.e("UsbManager,readUsb: ret=" + iA + ",iRecv=" + iMin + "[USB Error], usbConnected = " + this.a);
                break;
            }
            if (1 == this.k) {
                cn.manstep.phonemirrorBox.t0.a.b(this.m.get()).d(n, 0, iA, this.l);
            }
            System.arraycopy(n, 0, bArr, i3, iA);
            i3 += iA;
            i2 = i - i3;
        }
        this.a = i3 == i;
        return i3 == i;
    }

    public void q(PendingIntent pendingIntent) {
        UsbDevice usbDevice;
        UsbManager usbManager = this.e;
        if (usbManager == null || (usbDevice = this.h) == null) {
            return;
        }
        usbManager.requestPermission(usbDevice, pendingIntent);
    }

    public void r(boolean z) {
        if (z) {
            this.k = 1;
        } else {
            this.k = 0;
        }
        s.d("UsbManager", "saveUsbData: is=" + z + ", flag=" + this.k);
    }

    public void s(int i) {
        this.l = i;
        s.d("UsbManager", "setAesRandomNum: l=" + i);
    }

    public boolean u(byte[] bArr, int i) {
        boolean z = true;
        if (2 == this.k) {
            return true;
        }
        if (!this.a) {
            return false;
        }
        Object obj = this.f1478b;
        if (obj == null) {
            obj = this;
        }
        synchronized (obj) {
            int i2 = i;
            int i3 = 0;
            while (i2 > 0) {
                try {
                    int iMin = Math.min(i2, 16384);
                    byte[] bArr2 = new byte[iMin];
                    System.arraycopy(bArr, i3, bArr2, 0, iMin);
                    int iBulkTransferOut = this.g ? this.f.bulkTransferOut(bArr2, iMin, 4000) : this.f1478b.bulkTransfer(this.f1480d, bArr2, iMin, 4000);
                    if (iBulkTransferOut >= 0 && iBulkTransferOut <= iMin) {
                        i3 += iBulkTransferOut;
                        i2 = i - i3;
                    }
                    s.f("UsbManager", "write usb iSend = " + iMin);
                    s.f("UsbManager", "write usb ret = " + iBulkTransferOut);
                    break;
                } finally {
                }
            }
            this.a = i3 == i;
            if (i3 != i) {
                z = false;
            }
        }
        return z;
    }
}
