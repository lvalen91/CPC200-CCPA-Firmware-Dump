package cn.manstep.phonemirrorBox.BoxInterface;

import android.app.PendingIntent;
import android.content.Context;
import android.hardware.usb.UsbDevice;
import android.hardware.usb.UsbDeviceConnection;
import android.hardware.usb.UsbEndpoint;
import android.hardware.usb.UsbInterface;
import android.hardware.usb.UsbManager;
import cn.manstep.phonemirrorBox.C0795b0;
import cn.manstep.phonemirrorBox.C0917m;
import cn.manstep.phonemirrorBox.C0925p;
import cn.manstep.phonemirrorBox.C0953u;
import cn.manstep.phonemirrorBox.p087t0.C0952a;
import cn.manstep.phonemirrorBox.util.C0969f;
import cn.manstep.phonemirrorBox.util.C0982s;
import cn.manstep.phonemirrorBox.util.JniTools;
import com.stub.StubApp;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Locale;

/* JADX INFO: renamed from: cn.manstep.phonemirrorBox.BoxInterface.j */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class C0739j {

    /* JADX INFO: renamed from: n */
    private static final byte[] f4545n = new byte[16384];

    /* JADX INFO: renamed from: b */
    private UsbDeviceConnection f4547b;

    /* JADX INFO: renamed from: c */
    private UsbEndpoint f4548c;

    /* JADX INFO: renamed from: d */
    private UsbEndpoint f4549d;

    /* JADX INFO: renamed from: e */
    private UsbManager f4550e;

    /* JADX INFO: renamed from: f */
    private BoxConnection f4551f;

    /* JADX INFO: renamed from: g */
    private boolean f4552g;

    /* JADX INFO: renamed from: h */
    private UsbDevice f4553h;

    /* JADX INFO: renamed from: m */
    private final WeakReference<Context> f4558m;

    /* JADX INFO: renamed from: a */
    private boolean f4546a = false;

    /* JADX INFO: renamed from: i */
    private boolean f4554i = false;

    /* JADX INFO: renamed from: j */
    private boolean f4555j = false;

    /* JADX INFO: renamed from: k */
    private int f4556k = 0;

    /* JADX INFO: renamed from: l */
    private int f4557l = 0;

    public C0739j(Context context) {
        this.f4552g = false;
        this.f4552g = C0953u.m7001z().m7034d0();
        this.f4558m = new WeakReference<>(StubApp.getOrigApplicationContext(context.getApplicationContext()));
        if (this.f4552g) {
            this.f4551f = new BoxConnection();
        } else {
            this.f4550e = (UsbManager) context.getSystemService("usb");
        }
        if (this.f4556k == 2) {
            C0952a.m6994b(context).m6996c(this.f4557l);
        }
    }

    /* JADX INFO: renamed from: c */
    private int m5809c() {
        int i;
        int i2;
        boolean z;
        String[] strArr = new String[16];
        int deviceList = this.f4551f.getDeviceList(strArr);
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
                C0982s.m7374d("UsbManager", "evaluateUsbDevices: vid=" + vidPid[0] + ", pid=" + vidPid[1]);
                if (!m5816j(vidPid[0], vidPid[1])) {
                    if (!m5817k(vidPid[0], vidPid[1])) {
                        if (m5818m(vidPid[0])) {
                            int i4 = vidPid[0];
                            i2 = vidPid[1];
                            i = i4;
                            z2 = z3;
                            break;
                        }
                        if (m5814h(vidPid[0], vidPid[1])) {
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
        return m5812f(z2, z, i, i2);
    }

    /* JADX WARN: Code restructure failed: missing block: B:18:0x005d, code lost:
    
        return m5813g(r0, r1, r2);
     */
    /* JADX INFO: renamed from: d */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private int m5810d(HashMap<String, UsbDevice> map) {
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
            C0982s.m7373c("UsbManager,evaluateUsbDevices: usb: " + m5811e(vendorId, productId, interfaceCount));
            if (!m5816j(vendorId, productId)) {
                if (!m5817k(vendorId, productId)) {
                    if (m5819n(vendorId, interfaceCount)) {
                        break;
                    }
                    if (m5815i(next)) {
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

    /* JADX INFO: renamed from: e */
    private String m5811e(int i, int i2, int i3) {
        return String.format(Locale.CHINA, "vid=%d(0x%04X),pid=%d(0x%04X),interfaceCnt=%d", Integer.valueOf(i), Integer.valueOf(i), Integer.valueOf(i2), Integer.valueOf(i2), Integer.valueOf(i3));
    }

    /* JADX INFO: renamed from: f */
    private int m5812f(boolean z, boolean z2, int i, int i2) {
        BoxConnection boxConnection;
        if (this.f4554i != z) {
            this.f4554i = z;
            return z ? 3 : 4;
        }
        if (this.f4555j != z2) {
            this.f4555j = z2;
            return z2 ? 5 : 6;
        }
        if ((i != 0 || i2 != 0) && (boxConnection = this.f4551f) != null) {
            int iOpenDevice = boxConnection.openDevice(i, i2);
            if (iOpenDevice == 0) {
                this.f4546a = true;
                return 7;
            }
            C0982s.m7376f("UsbManager", "handleConnectionState: openDevice=" + BoxConnection.getError(iOpenDevice) + ", vid=" + i + ", pid=" + i2);
        }
        if (this.f4546a) {
            m5823b();
        }
        this.f4546a = false;
        return 0;
    }

    /* JADX INFO: renamed from: g */
    private int m5813g(boolean z, boolean z2, UsbDevice usbDevice) {
        int iM5820o;
        if (this.f4554i != z) {
            this.f4554i = z;
            return z ? 3 : 4;
        }
        if (this.f4555j != z2) {
            this.f4555j = z2;
            return z2 ? 5 : 6;
        }
        if (usbDevice != null && (iM5820o = m5820o(usbDevice)) > 0) {
            return iM5820o;
        }
        if (this.f4546a) {
            m5823b();
        }
        this.f4546a = false;
        C0982s.m7376f("UsbManager", "handleConnectionState() usbConnected = false");
        return 0;
    }

    /* JADX INFO: renamed from: h */
    private boolean m5814h(int i, int i2) {
        boolean zBox;
        try {
            zBox = JniTools.box(String.format(Locale.CHINA, "0x%04X", Integer.valueOf(i)));
        } catch (Error | Exception e) {
            C0982s.m7376f("UsbManager", "handleInvalidDevice: JniTools.box\n" + C0982s.m7377g(e));
            zBox = true;
        }
        if (zBox) {
            C0732c.m5542e().m5567y(i, i2);
            C0925p.f5881r = C0925p.m6857a() + 1;
            C0982s.m7376f("UsbManager", "handleInvalidDevice: VID ERROR");
            m5820o(this.f4553h);
            BoxConnection boxConnection = this.f4551f;
            if (boxConnection != null) {
                boxConnection.openDevice(i, i2);
            }
        }
        return zBox;
    }

    /* JADX INFO: renamed from: i */
    private boolean m5815i(UsbDevice usbDevice) {
        boolean zBox;
        try {
            zBox = JniTools.box(String.format(Locale.CHINA, "0x%04X", Integer.valueOf(usbDevice.getVendorId())));
        } catch (Error | Exception e) {
            C0982s.m7376f("UsbManager", "handleInvalidDevice: JniTools.box\n" + C0982s.m7377g(e));
            zBox = true;
        }
        if (zBox) {
            C0732c.m5542e().m5567y(usbDevice.getVendorId(), usbDevice.getProductId());
            C0925p.f5881r = C0925p.m6857a() + 1;
            C0982s.m7376f("UsbManager", "handleInvalidDevice: VID ERROR");
            m5820o(usbDevice);
        }
        return zBox;
    }

    /* JADX INFO: renamed from: j */
    private boolean m5816j(int i, int i2) {
        return i == 1317 && (i2 == 42149 || i2 == 42150);
    }

    /* JADX INFO: renamed from: k */
    private boolean m5817k(int i, int i2) {
        return i == 7531 && i2 == 42149;
    }

    /* JADX INFO: renamed from: m */
    private boolean m5818m(int i) {
        if (i > 0) {
            for (int i2 : C0917m.f5782b) {
                if (i == i2) {
                    return true;
                }
            }
        }
        return i > 0 && i == 4884;
    }

    /* JADX INFO: renamed from: n */
    private boolean m5819n(int i, int i2) {
        if (i > 0 && i2 <= 3) {
            for (int i3 : C0917m.f5782b) {
                if (i == i3) {
                    return true;
                }
            }
        }
        return i > 0 && i == 4884 && i2 <= 3;
    }

    /* JADX INFO: renamed from: o */
    private int m5820o(UsbDevice usbDevice) {
        int i = 0;
        while (true) {
            if (i >= usbDevice.getInterfaceCount()) {
                break;
            }
            UsbInterface usbInterface = usbDevice.getInterface(i);
            if (usbInterface.getEndpointCount() < 2) {
                i++;
            } else if (!this.f4546a) {
                boolean zHasPermission = this.f4550e.hasPermission(usbDevice);
                C0982s.m7373c("UsbManager,checkUsbConnected: VID=" + usbDevice.getVendorId() + ", hasPermission=" + zHasPermission + ", InterfaceClass=" + usbInterface.getInterfaceClass());
                if (!zHasPermission) {
                    this.f4553h = usbDevice;
                    return 2;
                }
                m5823b();
                synchronized (this) {
                    m5821t(usbInterface);
                    this.f4547b = this.f4550e.openDevice(usbDevice);
                    C0982s.m7375e("UsbManager,checkUsbConnected: Open Usb Device!!!");
                    C0732c.m5542e().m5567y(usbDevice.getVendorId(), usbDevice.getProductId());
                    if (this.f4547b != null) {
                        this.f4547b.claimInterface(usbInterface, true);
                        C0982s.m7373c("usbconnection:" + this.f4547b);
                        this.f4546a = true;
                        if (C0795b0.m6071i().m6093o("InsertBoxAutoStart", false)) {
                            C0969f.m7240f(this.f4558m.get(), null);
                        }
                    } else {
                        C0982s.m7373c("usbconnection == null");
                    }
                }
            }
        }
        return this.f4546a ? 7 : 0;
    }

    /* JADX INFO: renamed from: t */
    private void m5821t(UsbInterface usbInterface) {
        for (int i = 0; i < usbInterface.getEndpointCount(); i++) {
            UsbEndpoint endpoint = usbInterface.getEndpoint(i);
            if (endpoint.getType() == 2) {
                if (endpoint.getDirection() == 128) {
                    this.f4548c = endpoint;
                } else {
                    this.f4549d = endpoint;
                }
            }
        }
    }

    /* JADX INFO: renamed from: a */
    public int m5822a() {
        if (2 == this.f4556k) {
            this.f4546a = true;
            return 7;
        }
        if (!this.f4552g) {
            UsbManager usbManager = this.f4550e;
            if (usbManager == null) {
                return 0;
            }
            return m5810d(usbManager.getDeviceList());
        }
        BoxConnection boxConnection = this.f4551f;
        if (boxConnection == null) {
            return 0;
        }
        boxConnection.release();
        this.f4551f.init();
        return m5809c();
    }

    /* JADX INFO: renamed from: b */
    public void m5823b() {
        C0982s.m7374d("UsbManager", "closeUsb: usbConnected=" + this.f4546a);
        synchronized (this) {
            this.f4546a = false;
            if (this.f4547b != null) {
                this.f4547b.close();
            }
            if (this.f4551f != null) {
                this.f4551f.release();
            }
        }
    }

    /* JADX INFO: renamed from: l */
    public boolean m5824l() {
        return this.f4546a;
    }

    /* JADX INFO: renamed from: p */
    public boolean m5825p(byte[] bArr, int i) {
        if (!this.f4546a) {
            return false;
        }
        int i2 = i;
        int i3 = 0;
        while (true) {
            if (i2 <= 0) {
                break;
            }
            int iMin = Math.min(i2, 16384);
            int iM6995a = 2 == this.f4556k ? C0952a.m6994b(this.f4558m.get()).m6995a(f4545n, 0, iMin) : this.f4552g ? this.f4551f.bulkTransferIn(f4545n, iMin, 0) : this.f4547b.bulkTransfer(this.f4548c, f4545n, iMin, 0);
            if (iM6995a < 0) {
                C0982s.m7375e("UsbManager,readUsb: ret = " + iM6995a + "[USB Error], usbConnected = " + this.f4546a);
                break;
            }
            if (iM6995a > iMin) {
                C0982s.m7375e("UsbManager,readUsb: ret=" + iM6995a + ",iRecv=" + iMin + "[USB Error], usbConnected = " + this.f4546a);
                break;
            }
            if (1 == this.f4556k) {
                C0952a.m6994b(this.f4558m.get()).m6997d(f4545n, 0, iM6995a, this.f4557l);
            }
            System.arraycopy(f4545n, 0, bArr, i3, iM6995a);
            i3 += iM6995a;
            i2 = i - i3;
        }
        this.f4546a = i3 == i;
        return i3 == i;
    }

    /* JADX INFO: renamed from: q */
    public void m5826q(PendingIntent pendingIntent) {
        UsbDevice usbDevice;
        UsbManager usbManager = this.f4550e;
        if (usbManager == null || (usbDevice = this.f4553h) == null) {
            return;
        }
        usbManager.requestPermission(usbDevice, pendingIntent);
    }

    /* JADX INFO: renamed from: r */
    public void m5827r(boolean z) {
        if (z) {
            this.f4556k = 1;
        } else {
            this.f4556k = 0;
        }
        C0982s.m7374d("UsbManager", "saveUsbData: is=" + z + ", flag=" + this.f4556k);
    }

    /* JADX INFO: renamed from: s */
    public void m5828s(int i) {
        this.f4557l = i;
        C0982s.m7374d("UsbManager", "setAesRandomNum: l=" + i);
    }

    /* JADX INFO: renamed from: u */
    public boolean m5829u(byte[] bArr, int i) {
        boolean z = true;
        if (2 == this.f4556k) {
            return true;
        }
        if (!this.f4546a) {
            return false;
        }
        Object obj = this.f4547b;
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
                    int iBulkTransferOut = this.f4552g ? this.f4551f.bulkTransferOut(bArr2, iMin, 4000) : this.f4547b.bulkTransfer(this.f4549d, bArr2, iMin, 4000);
                    if (iBulkTransferOut >= 0 && iBulkTransferOut <= iMin) {
                        i3 += iBulkTransferOut;
                        i2 = i - i3;
                    }
                    C0982s.m7376f("UsbManager", "write usb iSend = " + iMin);
                    C0982s.m7376f("UsbManager", "write usb ret = " + iBulkTransferOut);
                    break;
                } finally {
                }
            }
            this.f4546a = i3 == i;
            if (i3 != i) {
                z = false;
            }
        }
        return z;
    }
}
