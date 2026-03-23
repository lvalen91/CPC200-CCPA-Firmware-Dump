package cn.manstep.phonemirrorBox.util;

import android.app.PendingIntent;
import android.content.Context;
import android.hardware.usb.UsbDevice;
import android.hardware.usb.UsbInterface;
import android.hardware.usb.UsbManager;
import android.media.AudioRecord;
import android.media.MediaCodec;
import android.media.MediaCodecInfo;
import android.media.MediaCodecList;
import android.os.Build;
import android.os.Handler;
import android.os.Message;
import android.os.SystemClock;
import android.text.TextUtils;
import android.view.View;
import cn.manstep.phonemirrorBox.Dtmf;
import cn.manstep.phonemirrorBox.ecarx.ECarXUtil;
import com.stub.StubApp;
import com.yalantis.ucrop.BuildConfig;
import java.io.IOException;
import java.io.InputStream;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.TimerTask;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.Future;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class l {
    private final d a;
    private PendingIntent e;
    private UsbManager f;
    private WeakReference<androidx.fragment.app.n> g;
    private int i;
    private WeakReference<Context> n;
    private f o;
    private g p;
    private int j = -1;
    private boolean k = false;
    private boolean l = false;
    private boolean m = false;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final e f1890b = new e(this);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private ScheduledExecutorService f1891c = new ScheduledThreadPoolExecutor(2);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final ConcurrentHashMap<Integer, Future> f1892d = new ConcurrentHashMap<>();
    private final ArrayList<String> h = new ArrayList<>();

    class a extends TimerTask {
        a() {
        }

        @Override // java.util.TimerTask, java.lang.Runnable
        public void run() {
            s.c("DeviceCheck,startMicCheckTimer: " + Thread.currentThread().getName());
            l lVar = l.this;
            lVar.y(1, Integer.valueOf(lVar.p()));
        }
    }

    class b implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ boolean f1894b;

        b(boolean z) {
            this.f1894b = z;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (this.f1894b) {
                l.this.r();
            }
        }
    }

    class c implements View.OnClickListener {
        c() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            l.this.y(3, Boolean.TRUE);
        }
    }

    public interface d {
        void d(boolean z, int i);

        void f(int i);

        void j(byte[] bArr, int i);

        void p(boolean z, int i, int i2);

        void q(boolean z, String str);
    }

    private static class e extends Handler {
        private final WeakReference<l> a;

        public e(l lVar) {
            this.a = new WeakReference<>(lVar);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            super.handleMessage(message);
            int i = message.what;
            if (i == 0) {
                Future future = (Future) this.a.get().f1892d.remove(0);
                if (future != null) {
                    future.cancel(true);
                }
                this.a.get().a.q(((Boolean) message.obj).booleanValue(), cn.manstep.phonemirrorBox.o0.a.c(this.a.get().h, ","));
                return;
            }
            if (i == 1) {
                this.a.get().a.f(((Integer) message.obj).intValue());
            } else if (i == 2) {
                this.a.get().x((UsbDevice) message.obj);
            } else {
                if (i != 3) {
                    return;
                }
                this.a.get().a.d(((Boolean) message.obj).booleanValue(), this.a.get().j);
            }
        }
    }

    private class f extends Thread {
        private f() {
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            l lVar = l.this;
            lVar.v((Context) lVar.n.get());
        }

        /* synthetic */ f(l lVar, a aVar) {
            this();
        }
    }

    private class g extends Thread {
        private g() {
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            l.this.w();
        }

        /* synthetic */ g(l lVar, a aVar) {
            this();
        }
    }

    private static class h extends TimerTask {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final UsbManager f1899b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private int f1900c = 0;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final WeakReference<l> f1901d;

        public h(l lVar, UsbManager usbManager) {
            this.f1899b = usbManager;
            this.f1901d = new WeakReference<>(lVar);
        }

        @Override // java.util.TimerTask, java.lang.Runnable
        public void run() {
            s.c("DeviceCheck,UsbCheckTask: check usb " + this.f1900c);
            HashMap<String, UsbDevice> deviceList = this.f1899b.getDeviceList();
            this.f1901d.get().h.clear();
            s.c("DeviceCheck,UsbCheckTask: " + deviceList.size());
            boolean z = false;
            for (UsbDevice usbDevice : deviceList.values()) {
                int vendorId = usbDevice.getVendorId();
                int productId = usbDevice.getProductId();
                this.f1901d.get().h.add(String.format("0x%X", Integer.valueOf(vendorId)));
                boolean zHasPermission = this.f1899b.hasPermission(usbDevice);
                s.c("DeviceCheck,UsbCheckTask: " + vendorId + "," + productId + "," + zHasPermission + "," + usbDevice.getDeviceName());
                StringBuilder sb = new StringBuilder();
                sb.append("DeviceCheck,UsbCheckTask: ");
                sb.append(usbDevice.getDeviceClass());
                sb.append(" ");
                sb.append(usbDevice.getDeviceSubclass());
                sb.append(" ");
                sb.append(usbDevice.getDeviceProtocol());
                s.c(sb.toString());
                int i = 0;
                boolean z2 = false;
                while (i < usbDevice.getInterfaceCount()) {
                    UsbInterface usbInterface = usbDevice.getInterface(i);
                    s.c("DeviceCheck,UsbCheckTask: " + i + ":" + usbInterface.getInterfaceClass() + "," + usbInterface.getInterfaceSubclass() + "," + usbInterface.getInterfaceProtocol());
                    boolean z3 = usbInterface.getInterfaceClass() == 8 && usbInterface.getInterfaceSubclass() == 6;
                    if (Build.VERSION.SDK_INT >= 21) {
                        s.c("DeviceCheck,UsbCheckTask: " + i + ":" + usbInterface.getName());
                    }
                    i++;
                    z2 = z3;
                }
                if (!z2) {
                    this.f1901d.get().i = usbDevice.getVendorId();
                    if (zHasPermission) {
                        this.f1901d.get().y(0, Boolean.TRUE);
                        z = true;
                    } else {
                        this.f1901d.get().y(0, Boolean.FALSE);
                        this.f1901d.get().y(2, usbDevice);
                    }
                }
            }
            int i2 = this.f1900c;
            if (i2 < 2) {
                this.f1900c = i2 + 1;
            } else {
                if (z) {
                    return;
                }
                this.f1901d.get().y(0, Boolean.FALSE);
            }
        }
    }

    public l(d dVar, androidx.fragment.app.n nVar) {
        this.a = dVar;
        this.g = new WeakReference<>(nVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:7:0x001e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public int p() {
        int i = 1;
        AudioRecord audioRecord = new AudioRecord(1, 44100, 16, 1, 44100);
        if (audioRecord.getState() != 0) {
            if (audioRecord.getRecordingState() != 1) {
                i = 2;
                audioRecord.release();
            } else {
                audioRecord.startRecording();
                if (audioRecord.getRecordingState() == 3) {
                    audioRecord.stop();
                    i = 0;
                }
                audioRecord.release();
            }
        }
        return i;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void r() {
        this.m = false;
        this.k = false;
        a aVar = null;
        this.o = new f(this, aVar);
        g gVar = new g(this, aVar);
        this.p = gVar;
        gVar.start();
        this.o.start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void v(Context context) {
        if (context == null) {
            return;
        }
        this.l = true;
        cn.manstep.phonemirrorBox.BoxInterface.a aVar = new cn.manstep.phonemirrorBox.BoxInterface.a(5, 1, context);
        d.b.a.b bVarI = aVar.i();
        cn.manstep.phonemirrorBox.f0.c.n().p(StubApp.getOrigApplicationContext(this.n.get().getApplicationContext()));
        cn.manstep.phonemirrorBox.f0.c.n().u();
        if (Build.VERSION.SDK_INT >= 26) {
            bVarI.a(ECarXUtil.getInstance().getMediaAudioAttributes(), new d.b.a.a(16000, 4, 2));
        } else {
            bVarI.d(new d.b.a.a(16000, 4, 2), 3);
        }
        bVarI.n(1.0f);
        InputStream inputStreamOpen = null;
        byte[] bArr = new byte[1280];
        try {
            try {
                try {
                    inputStreamOpen = context.getAssets().open("DTMF-14809414327.pcm");
                    long jElapsedRealtime = 0;
                    int i = 0;
                    while (!this.m) {
                        jElapsedRealtime = jElapsedRealtime == 0 ? SystemClock.elapsedRealtime() : jElapsedRealtime + 40;
                        if (this.k && (i = inputStreamOpen.read(bArr)) <= 0) {
                            break;
                        }
                        long jElapsedRealtime2 = SystemClock.elapsedRealtime();
                        if (this.k) {
                            s.e("DeviceCheck,playAudio: curTime=" + jElapsedRealtime2 + ",playNextTime=" + jElapsedRealtime);
                            if (jElapsedRealtime2 < jElapsedRealtime) {
                                Thread.sleep(jElapsedRealtime - jElapsedRealtime2);
                            } else {
                                s.e("DeviceCheck,playAudio: play over time=" + (jElapsedRealtime2 - jElapsedRealtime));
                            }
                            bVarI.f(bArr, 0, i);
                        } else {
                            Thread.sleep(1L);
                            jElapsedRealtime = 0;
                        }
                    }
                    if (inputStreamOpen != null) {
                        inputStreamOpen.close();
                    }
                } catch (Exception e2) {
                    e2.printStackTrace();
                    if (inputStreamOpen != null) {
                        inputStreamOpen.close();
                    }
                }
            } catch (IOException e3) {
                e3.printStackTrace();
            }
            aVar.h();
            this.l = false;
        } catch (Throwable th) {
            if (inputStreamOpen != null) {
                try {
                    inputStreamOpen.close();
                } catch (IOException e4) {
                    e4.printStackTrace();
                }
            }
            throw th;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void w() {
        try {
            Thread.sleep(cn.manstep.phonemirrorBox.p.G);
        } catch (InterruptedException e2) {
            e2.printStackTrace();
        }
        d.b.a.c cVar = new d.b.a.c();
        cVar.h(new d.b.a.a(16000, 16, 2));
        cVar.i();
        int iC = cVar.c();
        byte[] bArr = new byte[153600];
        int i = 0;
        while (cVar.o() && this.l) {
            if (cVar.f(bArr, i, iC)) {
                byte[] bArr2 = new byte[iC];
                System.arraycopy(bArr, i, bArr2, 0, iC);
                this.a.j(bArr2, iC);
                if (this.k) {
                    i += iC;
                } else {
                    this.k = true;
                    s.e("DeviceCheck,recordeAudio : record first data!!!");
                }
            }
        }
        if (cVar.q() == 3) {
            cVar.k();
        }
        s.e("DeviceCheck,recordeAudio offset =" + i);
        byte[] bArr3 = new byte[i];
        System.arraycopy(bArr, 0, bArr3, 0, i);
        int iDtmfDoAec = new Dtmf().dtmfDoAec(bArr3);
        this.j = iDtmfDoAec;
        if (iDtmfDoAec > 150) {
            this.j = (iDtmfDoAec - 100) - 50;
        }
        y(3, Boolean.valueOf(this.m));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void x(UsbDevice usbDevice) {
        UsbManager usbManager = this.f;
        if (usbManager == null || usbDevice == null) {
            return;
        }
        usbManager.requestPermission(usbDevice, this.e);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void y(int i, Object obj) {
        Message message = new Message();
        message.what = i;
        message.obj = obj;
        this.f1890b.sendMessage(message);
    }

    public void A(String str, String str2, boolean z) {
        cn.manstep.phonemirrorBox.k0.a.B2(this.g.get(), str, str2, new b(z), new c());
    }

    public void B() {
        ScheduledExecutorService scheduledExecutorService = this.f1891c;
        if (scheduledExecutorService == null || scheduledExecutorService.isShutdown()) {
            this.f1891c = new ScheduledThreadPoolExecutor(2);
        }
        if (this.f1892d.get(1) == null) {
            this.f1892d.put(1, this.f1891c.scheduleAtFixedRate(new a(), 0L, 1L, TimeUnit.SECONDS));
        }
    }

    public void C() {
        Future futureRemove = this.f1892d.remove(1);
        if (futureRemove != null) {
            futureRemove.cancel(true);
        }
    }

    public void D() {
        this.m = true;
    }

    public void m(Context context) {
        this.f = (UsbManager) context.getSystemService("usb");
        o();
        n();
        s(context);
    }

    public void n() {
        int codecCount = MediaCodecList.getCodecCount();
        String name = BuildConfig.FLAVOR;
        for (int i = 0; i < codecCount; i++) {
            MediaCodecInfo codecInfoAt = MediaCodecList.getCodecInfoAt(i);
            if (!codecInfoAt.isEncoder()) {
                for (String str : codecInfoAt.getSupportedTypes()) {
                    if ("video/avc".equals(str) && (BuildConfig.FLAVOR.equalsIgnoreCase(name) || "OMX.google.h264.decoder".equalsIgnoreCase(name))) {
                        name = codecInfoAt.getName();
                    }
                }
            }
        }
        s.e("DeviceCheck,checkCodec: " + name);
        if (TextUtils.isEmpty(name)) {
            this.a.p(false, 0, 0);
            return;
        }
        if (Build.VERSION.SDK_INT < 21) {
            this.a.p(true, 0, 0);
            return;
        }
        MediaCodec mediaCodecCreateByCodecName = null;
        try {
            try {
                mediaCodecCreateByCodecName = MediaCodec.createByCodecName(name);
                MediaCodecInfo.VideoCapabilities videoCapabilities = mediaCodecCreateByCodecName.getCodecInfo().getCapabilitiesForType("video/avc").getVideoCapabilities();
                this.a.p(true, ((Integer) videoCapabilities.getSupportedWidths().getUpper()).intValue(), ((Integer) videoCapabilities.getSupportedHeights().getUpper()).intValue());
            } catch (IOException e2) {
                e2.printStackTrace();
                this.a.p(true, 0, 0);
            }
        } finally {
            mediaCodecCreateByCodecName.release();
        }
    }

    public void o() {
        this.a.f(p());
    }

    public void q(Context context, boolean z) {
        if (context == null || p() != 0) {
            y(3, Boolean.TRUE);
            return;
        }
        this.n = new WeakReference<>(context);
        try {
            if (this.o != null && this.o.isAlive()) {
                this.o.join();
            }
            if (this.p != null && this.p.isAlive()) {
                this.p.join();
            }
        } catch (InterruptedException e2) {
            e2.printStackTrace();
        }
        if (z) {
            r();
            cn.manstep.phonemirrorBox.widget.a.c(context, 2131689930);
        } else if (SystemClock.elapsedRealtime() <= 120000) {
            A(context.getString(2131689700), context.getString(2131689932), false);
        } else {
            A(context.getString(2131689700), context.getString(2131689930), true);
        }
    }

    public void s(Context context) {
        ScheduledExecutorService scheduledExecutorService = this.f1891c;
        if (scheduledExecutorService == null || scheduledExecutorService.isShutdown()) {
            this.f1891c = new ScheduledThreadPoolExecutor(2);
        }
        if (this.f1892d.get(0) == null) {
            this.f1892d.put(0, this.f1891c.scheduleAtFixedRate(new h(this, this.f), 0L, 10L, TimeUnit.SECONDS));
        }
    }

    public void t() {
        s.e("DeviceCheck,destroy");
        ScheduledExecutorService scheduledExecutorService = this.f1891c;
        if (scheduledExecutorService != null && !scheduledExecutorService.isShutdown()) {
            this.f1891c.shutdown();
            this.f1891c = null;
        }
        ConcurrentHashMap<Integer, Future> concurrentHashMap = this.f1892d;
        if (concurrentHashMap != null) {
            concurrentHashMap.clear();
        }
    }

    public void u(UsbDevice usbDevice, boolean z) {
        s.c("DeviceCheck,findUsbDevice: " + z + ", " + usbDevice.toString());
        if (z) {
            y(0, Boolean.TRUE);
        }
    }

    public void z(PendingIntent pendingIntent) {
        this.e = pendingIntent;
    }
}
