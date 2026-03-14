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
import androidx.fragment.app.AbstractC0366n;
import cn.manstep.phonemirrorBox.BoxInterface.C0730a;
import cn.manstep.phonemirrorBox.C0925p;
import cn.manstep.phonemirrorBox.Dtmf;
import cn.manstep.phonemirrorBox.ecarx.ECarXUtil;
import cn.manstep.phonemirrorBox.p072f0.C0827c;
import cn.manstep.phonemirrorBox.p077k0.C0882a;
import cn.manstep.phonemirrorBox.p082o0.C0924a;
import cn.manstep.phonemirrorBox.widget.C1000a;
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
import p093d.p097b.p098a.C1198a;
import p093d.p097b.p098a.C1199b;
import p093d.p097b.p098a.C1200c;

/* JADX INFO: renamed from: cn.manstep.phonemirrorBox.util.l */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class C0975l {

    /* JADX INFO: renamed from: a */
    private final d f6072a;

    /* JADX INFO: renamed from: e */
    private PendingIntent f6076e;

    /* JADX INFO: renamed from: f */
    private UsbManager f6077f;

    /* JADX INFO: renamed from: g */
    private WeakReference<AbstractC0366n> f6078g;

    /* JADX INFO: renamed from: i */
    private int f6080i;

    /* JADX INFO: renamed from: n */
    private WeakReference<Context> f6085n;

    /* JADX INFO: renamed from: o */
    private f f6086o;

    /* JADX INFO: renamed from: p */
    private g f6087p;

    /* JADX INFO: renamed from: j */
    private int f6081j = -1;

    /* JADX INFO: renamed from: k */
    private boolean f6082k = false;

    /* JADX INFO: renamed from: l */
    private boolean f6083l = false;

    /* JADX INFO: renamed from: m */
    private boolean f6084m = false;

    /* JADX INFO: renamed from: b */
    private final e f6073b = new e(this);

    /* JADX INFO: renamed from: c */
    private ScheduledExecutorService f6074c = new ScheduledThreadPoolExecutor(2);

    /* JADX INFO: renamed from: d */
    private final ConcurrentHashMap<Integer, Future> f6075d = new ConcurrentHashMap<>();

    /* JADX INFO: renamed from: h */
    private final ArrayList<String> f6079h = new ArrayList<>();

    /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.util.l$a */
    class a extends TimerTask {
        a() {
        }

        @Override // java.util.TimerTask, java.lang.Runnable
        public void run() {
            C0982s.m7373c("DeviceCheck,startMicCheckTimer: " + Thread.currentThread().getName());
            C0975l c0975l = C0975l.this;
            c0975l.m7280y(1, Integer.valueOf(c0975l.m7275p()));
        }
    }

    /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.util.l$b */
    class b implements View.OnClickListener {

        /* JADX INFO: renamed from: b */
        final /* synthetic */ boolean f6089b;

        b(boolean z) {
            this.f6089b = z;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (this.f6089b) {
                C0975l.this.m7276r();
            }
        }
    }

    /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.util.l$c */
    class c implements View.OnClickListener {
        c() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            C0975l.this.m7280y(3, Boolean.TRUE);
        }
    }

    /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.util.l$d */
    public interface d {
        /* JADX INFO: renamed from: d */
        void mo6700d(boolean z, int i);

        /* JADX INFO: renamed from: f */
        void mo6701f(int i);

        /* JADX INFO: renamed from: j */
        void mo6702j(byte[] bArr, int i);

        /* JADX INFO: renamed from: p */
        void mo6703p(boolean z, int i, int i2);

        /* JADX INFO: renamed from: q */
        void mo6704q(boolean z, String str);
    }

    /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.util.l$e */
    private static class e extends Handler {

        /* JADX INFO: renamed from: a */
        private final WeakReference<C0975l> f6092a;

        public e(C0975l c0975l) {
            this.f6092a = new WeakReference<>(c0975l);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            super.handleMessage(message);
            int i = message.what;
            if (i == 0) {
                Future future = (Future) this.f6092a.get().f6075d.remove(0);
                if (future != null) {
                    future.cancel(true);
                }
                this.f6092a.get().f6072a.mo6704q(((Boolean) message.obj).booleanValue(), C0924a.m6855c(this.f6092a.get().f6079h, ","));
                return;
            }
            if (i == 1) {
                this.f6092a.get().f6072a.mo6701f(((Integer) message.obj).intValue());
            } else if (i == 2) {
                this.f6092a.get().m7279x((UsbDevice) message.obj);
            } else {
                if (i != 3) {
                    return;
                }
                this.f6092a.get().f6072a.mo6700d(((Boolean) message.obj).booleanValue(), this.f6092a.get().f6081j);
            }
        }
    }

    /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.util.l$f */
    private class f extends Thread {
        private f() {
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            C0975l c0975l = C0975l.this;
            c0975l.m7277v((Context) c0975l.f6085n.get());
        }

        /* synthetic */ f(C0975l c0975l, a aVar) {
            this();
        }
    }

    /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.util.l$g */
    private class g extends Thread {
        private g() {
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            C0975l.this.m7278w();
        }

        /* synthetic */ g(C0975l c0975l, a aVar) {
            this();
        }
    }

    /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.util.l$h */
    private static class h extends TimerTask {

        /* JADX INFO: renamed from: b */
        private final UsbManager f6095b;

        /* JADX INFO: renamed from: c */
        private int f6096c = 0;

        /* JADX INFO: renamed from: d */
        private final WeakReference<C0975l> f6097d;

        public h(C0975l c0975l, UsbManager usbManager) {
            this.f6095b = usbManager;
            this.f6097d = new WeakReference<>(c0975l);
        }

        @Override // java.util.TimerTask, java.lang.Runnable
        public void run() {
            C0982s.m7373c("DeviceCheck,UsbCheckTask: check usb " + this.f6096c);
            HashMap<String, UsbDevice> deviceList = this.f6095b.getDeviceList();
            this.f6097d.get().f6079h.clear();
            C0982s.m7373c("DeviceCheck,UsbCheckTask: " + deviceList.size());
            boolean z = false;
            for (UsbDevice usbDevice : deviceList.values()) {
                int vendorId = usbDevice.getVendorId();
                int productId = usbDevice.getProductId();
                this.f6097d.get().f6079h.add(String.format("0x%X", Integer.valueOf(vendorId)));
                boolean zHasPermission = this.f6095b.hasPermission(usbDevice);
                C0982s.m7373c("DeviceCheck,UsbCheckTask: " + vendorId + "," + productId + "," + zHasPermission + "," + usbDevice.getDeviceName());
                StringBuilder sb = new StringBuilder();
                sb.append("DeviceCheck,UsbCheckTask: ");
                sb.append(usbDevice.getDeviceClass());
                sb.append(" ");
                sb.append(usbDevice.getDeviceSubclass());
                sb.append(" ");
                sb.append(usbDevice.getDeviceProtocol());
                C0982s.m7373c(sb.toString());
                int i = 0;
                boolean z2 = false;
                while (i < usbDevice.getInterfaceCount()) {
                    UsbInterface usbInterface = usbDevice.getInterface(i);
                    C0982s.m7373c("DeviceCheck,UsbCheckTask: " + i + ":" + usbInterface.getInterfaceClass() + "," + usbInterface.getInterfaceSubclass() + "," + usbInterface.getInterfaceProtocol());
                    boolean z3 = usbInterface.getInterfaceClass() == 8 && usbInterface.getInterfaceSubclass() == 6;
                    if (Build.VERSION.SDK_INT >= 21) {
                        C0982s.m7373c("DeviceCheck,UsbCheckTask: " + i + ":" + usbInterface.getName());
                    }
                    i++;
                    z2 = z3;
                }
                if (!z2) {
                    this.f6097d.get().f6080i = usbDevice.getVendorId();
                    if (zHasPermission) {
                        this.f6097d.get().m7280y(0, Boolean.TRUE);
                        z = true;
                    } else {
                        this.f6097d.get().m7280y(0, Boolean.FALSE);
                        this.f6097d.get().m7280y(2, usbDevice);
                    }
                }
            }
            int i2 = this.f6096c;
            if (i2 < 2) {
                this.f6096c = i2 + 1;
            } else {
                if (z) {
                    return;
                }
                this.f6097d.get().m7280y(0, Boolean.FALSE);
            }
        }
    }

    public C0975l(d dVar, AbstractC0366n abstractC0366n) {
        this.f6072a = dVar;
        this.f6078g = new WeakReference<>(abstractC0366n);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:7:0x001e  */
    /* JADX INFO: renamed from: p */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public int m7275p() {
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
    /* JADX INFO: renamed from: r */
    public void m7276r() {
        this.f6084m = false;
        this.f6082k = false;
        a aVar = null;
        this.f6086o = new f(this, aVar);
        g gVar = new g(this, aVar);
        this.f6087p = gVar;
        gVar.start();
        this.f6086o.start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: v */
    public void m7277v(Context context) {
        if (context == null) {
            return;
        }
        this.f6083l = true;
        C0730a c0730a = new C0730a(5, 1, context);
        C1199b c1199bM5453i = c0730a.m5453i();
        C0827c.m6227n().m6232p(StubApp.getOrigApplicationContext(this.f6085n.get().getApplicationContext()));
        C0827c.m6227n().m6236u();
        if (Build.VERSION.SDK_INT >= 26) {
            c1199bM5453i.m9107a(ECarXUtil.getInstance().getMediaAudioAttributes(), new C1198a(16000, 4, 2));
        } else {
            c1199bM5453i.m9110d(new C1198a(16000, 4, 2), 3);
        }
        c1199bM5453i.m9117n(1.0f);
        InputStream inputStreamOpen = null;
        byte[] bArr = new byte[1280];
        try {
            try {
                try {
                    inputStreamOpen = context.getAssets().open("DTMF-14809414327.pcm");
                    long jElapsedRealtime = 0;
                    int i = 0;
                    while (!this.f6084m) {
                        jElapsedRealtime = jElapsedRealtime == 0 ? SystemClock.elapsedRealtime() : jElapsedRealtime + 40;
                        if (this.f6082k && (i = inputStreamOpen.read(bArr)) <= 0) {
                            break;
                        }
                        long jElapsedRealtime2 = SystemClock.elapsedRealtime();
                        if (this.f6082k) {
                            C0982s.m7375e("DeviceCheck,playAudio: curTime=" + jElapsedRealtime2 + ",playNextTime=" + jElapsedRealtime);
                            if (jElapsedRealtime2 < jElapsedRealtime) {
                                Thread.sleep(jElapsedRealtime - jElapsedRealtime2);
                            } else {
                                C0982s.m7375e("DeviceCheck,playAudio: play over time=" + (jElapsedRealtime2 - jElapsedRealtime));
                            }
                            c1199bM5453i.m9112f(bArr, 0, i);
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
            c0730a.m5452h();
            this.f6083l = false;
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
    /* JADX INFO: renamed from: w */
    public void m7278w() {
        try {
            Thread.sleep(C0925p.f5860G);
        } catch (InterruptedException e2) {
            e2.printStackTrace();
        }
        C1200c c1200c = new C1200c();
        c1200c.m9128h(new C1198a(16000, 16, 2));
        c1200c.m9129i();
        int iM9126c = c1200c.m9126c();
        byte[] bArr = new byte[153600];
        int i = 0;
        while (c1200c.m9134o() && this.f6083l) {
            if (c1200c.mo6486f(bArr, i, iM9126c)) {
                byte[] bArr2 = new byte[iM9126c];
                System.arraycopy(bArr, i, bArr2, 0, iM9126c);
                this.f6072a.mo6702j(bArr2, iM9126c);
                if (this.f6082k) {
                    i += iM9126c;
                } else {
                    this.f6082k = true;
                    C0982s.m7375e("DeviceCheck,recordeAudio : record first data!!!");
                }
            }
        }
        if (c1200c.m9135q() == 3) {
            c1200c.m9131k();
        }
        C0982s.m7375e("DeviceCheck,recordeAudio offset =" + i);
        byte[] bArr3 = new byte[i];
        System.arraycopy(bArr, 0, bArr3, 0, i);
        int iDtmfDoAec = new Dtmf().dtmfDoAec(bArr3);
        this.f6081j = iDtmfDoAec;
        if (iDtmfDoAec > 150) {
            this.f6081j = (iDtmfDoAec - 100) - 50;
        }
        m7280y(3, Boolean.valueOf(this.f6084m));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: x */
    public void m7279x(UsbDevice usbDevice) {
        UsbManager usbManager = this.f6077f;
        if (usbManager == null || usbDevice == null) {
            return;
        }
        usbManager.requestPermission(usbDevice, this.f6076e);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: y */
    public void m7280y(int i, Object obj) {
        Message message = new Message();
        message.what = i;
        message.obj = obj;
        this.f6073b.sendMessage(message);
    }

    /* JADX INFO: renamed from: A */
    public void m7281A(String str, String str2, boolean z) {
        C0882a.m6520B2(this.f6078g.get(), str, str2, new b(z), new c());
    }

    /* JADX INFO: renamed from: B */
    public void m7282B() {
        ScheduledExecutorService scheduledExecutorService = this.f6074c;
        if (scheduledExecutorService == null || scheduledExecutorService.isShutdown()) {
            this.f6074c = new ScheduledThreadPoolExecutor(2);
        }
        if (this.f6075d.get(1) == null) {
            this.f6075d.put(1, this.f6074c.scheduleAtFixedRate(new a(), 0L, 1L, TimeUnit.SECONDS));
        }
    }

    /* JADX INFO: renamed from: C */
    public void m7283C() {
        Future futureRemove = this.f6075d.remove(1);
        if (futureRemove != null) {
            futureRemove.cancel(true);
        }
    }

    /* JADX INFO: renamed from: D */
    public void m7284D() {
        this.f6084m = true;
    }

    /* JADX INFO: renamed from: m */
    public void m7285m(Context context) {
        this.f6077f = (UsbManager) context.getSystemService("usb");
        m7287o();
        m7286n();
        m7289s(context);
    }

    /* JADX INFO: renamed from: n */
    public void m7286n() {
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
        C0982s.m7375e("DeviceCheck,checkCodec: " + name);
        if (TextUtils.isEmpty(name)) {
            this.f6072a.mo6703p(false, 0, 0);
            return;
        }
        if (Build.VERSION.SDK_INT < 21) {
            this.f6072a.mo6703p(true, 0, 0);
            return;
        }
        MediaCodec mediaCodecCreateByCodecName = null;
        try {
            try {
                mediaCodecCreateByCodecName = MediaCodec.createByCodecName(name);
                MediaCodecInfo.VideoCapabilities videoCapabilities = mediaCodecCreateByCodecName.getCodecInfo().getCapabilitiesForType("video/avc").getVideoCapabilities();
                this.f6072a.mo6703p(true, ((Integer) videoCapabilities.getSupportedWidths().getUpper()).intValue(), ((Integer) videoCapabilities.getSupportedHeights().getUpper()).intValue());
            } catch (IOException e2) {
                e2.printStackTrace();
                this.f6072a.mo6703p(true, 0, 0);
            }
        } finally {
            mediaCodecCreateByCodecName.release();
        }
    }

    /* JADX INFO: renamed from: o */
    public void m7287o() {
        this.f6072a.mo6701f(m7275p());
    }

    /* JADX INFO: renamed from: q */
    public void m7288q(Context context, boolean z) {
        if (context == null || m7275p() != 0) {
            m7280y(3, Boolean.TRUE);
            return;
        }
        this.f6085n = new WeakReference<>(context);
        try {
            if (this.f6086o != null && this.f6086o.isAlive()) {
                this.f6086o.join();
            }
            if (this.f6087p != null && this.f6087p.isAlive()) {
                this.f6087p.join();
            }
        } catch (InterruptedException e2) {
            e2.printStackTrace();
        }
        if (z) {
            m7276r();
            C1000a.m7490c(context, 2131689930);
        } else if (SystemClock.elapsedRealtime() <= 120000) {
            m7281A(context.getString(2131689700), context.getString(2131689932), false);
        } else {
            m7281A(context.getString(2131689700), context.getString(2131689930), true);
        }
    }

    /* JADX INFO: renamed from: s */
    public void m7289s(Context context) {
        ScheduledExecutorService scheduledExecutorService = this.f6074c;
        if (scheduledExecutorService == null || scheduledExecutorService.isShutdown()) {
            this.f6074c = new ScheduledThreadPoolExecutor(2);
        }
        if (this.f6075d.get(0) == null) {
            this.f6075d.put(0, this.f6074c.scheduleAtFixedRate(new h(this, this.f6077f), 0L, 10L, TimeUnit.SECONDS));
        }
    }

    /* JADX INFO: renamed from: t */
    public void m7290t() {
        C0982s.m7375e("DeviceCheck,destroy");
        ScheduledExecutorService scheduledExecutorService = this.f6074c;
        if (scheduledExecutorService != null && !scheduledExecutorService.isShutdown()) {
            this.f6074c.shutdown();
            this.f6074c = null;
        }
        ConcurrentHashMap<Integer, Future> concurrentHashMap = this.f6075d;
        if (concurrentHashMap != null) {
            concurrentHashMap.clear();
        }
    }

    /* JADX INFO: renamed from: u */
    public void m7291u(UsbDevice usbDevice, boolean z) {
        C0982s.m7373c("DeviceCheck,findUsbDevice: " + z + ", " + usbDevice.toString());
        if (z) {
            m7280y(0, Boolean.TRUE);
        }
    }

    /* JADX INFO: renamed from: z */
    public void m7292z(PendingIntent pendingIntent) {
        this.f6076e = pendingIntent;
    }
}
