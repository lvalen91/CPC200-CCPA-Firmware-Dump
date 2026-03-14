package cn.manstep.phonemirrorBox.BoxInterface;

import android.content.Context;
import android.os.Build;
import android.os.Bundle;
import android.os.Process;
import android.os.SystemClock;
import android.text.TextUtils;
import android.util.Log;
import cn.manstep.phonemirrorBox.C0795b0;
import cn.manstep.phonemirrorBox.C0797c0;
import cn.manstep.phonemirrorBox.C0917m;
import cn.manstep.phonemirrorBox.C0925p;
import cn.manstep.phonemirrorBox.C0953u;
import cn.manstep.phonemirrorBox.C1002x;
import cn.manstep.phonemirrorBox.MainActivity;
import cn.manstep.phonemirrorBox.p074h0.C0853b;
import cn.manstep.phonemirrorBox.p084q0.C0931a;
import cn.manstep.phonemirrorBox.p084q0.C0932b;
import cn.manstep.phonemirrorBox.p084q0.C0933c;
import cn.manstep.phonemirrorBox.p084q0.C0934d;
import cn.manstep.phonemirrorBox.p084q0.C0935e;
import cn.manstep.phonemirrorBox.p084q0.C0936f;
import cn.manstep.phonemirrorBox.p084q0.InterfaceC0937g;
import cn.manstep.phonemirrorBox.p089v0.C0991a;
import cn.manstep.phonemirrorBox.p089v0.C0995e;
import cn.manstep.phonemirrorBox.util.C0964c0;
import cn.manstep.phonemirrorBox.util.C0972i;
import cn.manstep.phonemirrorBox.util.C0977n;
import cn.manstep.phonemirrorBox.util.C0982s;
import cn.manstep.phonemirrorBox.util.C0987x;
import cn.manstep.phonemirrorBox.util.C0989z;
import com.yalantis.ucrop.BuildConfig;
import com.yalantis.ucrop.view.CropImageView;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;
import java.lang.ref.WeakReference;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Random;
import java.util.TimerTask;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import javax.crypto.Cipher;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: renamed from: cn.manstep.phonemirrorBox.BoxInterface.f */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class C0735f {

    /* JADX INFO: renamed from: N */
    private static int f4457N = 2;

    /* JADX INFO: renamed from: O */
    public static boolean f4458O;

    /* JADX INFO: renamed from: P */
    public static boolean f4459P;

    /* JADX INFO: renamed from: Q */
    public static boolean f4460Q;

    /* JADX INFO: renamed from: R */
    public static boolean f4461R;

    /* JADX INFO: renamed from: A */
    private h f4462A;

    /* JADX INFO: renamed from: B */
    private List<C0730a> f4463B;

    /* JADX INFO: renamed from: C */
    private boolean f4464C;

    /* JADX INFO: renamed from: D */
    private int f4465D;

    /* JADX INFO: renamed from: E */
    private int f4466E;

    /* JADX INFO: renamed from: F */
    private int f4467F;

    /* JADX INFO: renamed from: d */
    private int f4478d;

    /* JADX INFO: renamed from: e */
    private int f4479e;

    /* JADX INFO: renamed from: o */
    private InterfaceC0937g f4489o;

    /* JADX INFO: renamed from: q */
    private k f4491q;

    /* JADX INFO: renamed from: r */
    private C0989z<Boolean> f4492r;

    /* JADX INFO: renamed from: s */
    private Thread f4493s;

    /* JADX INFO: renamed from: t */
    private Thread f4494t;

    /* JADX INFO: renamed from: u */
    private Thread f4495u;

    /* JADX INFO: renamed from: v */
    private ScheduledExecutorService f4496v;

    /* JADX INFO: renamed from: w */
    private Thread f4497w;

    /* JADX INFO: renamed from: x */
    private boolean f4498x;

    /* JADX INFO: renamed from: y */
    public WeakReference<Context> f4499y;

    /* JADX INFO: renamed from: z */
    public C0731b f4500z;

    /* JADX INFO: renamed from: a */
    private boolean f4475a = true;

    /* JADX INFO: renamed from: b */
    private int f4476b = 2;

    /* JADX INFO: renamed from: c */
    private int f4477c = 0;

    /* JADX INFO: renamed from: f */
    public boolean f4480f = false;

    /* JADX INFO: renamed from: g */
    public boolean f4481g = true;

    /* JADX INFO: renamed from: h */
    private boolean f4482h = false;

    /* JADX INFO: renamed from: i */
    private String f4483i = BuildConfig.FLAVOR;

    /* JADX INFO: renamed from: j */
    private String f4484j = BuildConfig.FLAVOR;

    /* JADX INFO: renamed from: k */
    private String f4485k = BuildConfig.FLAVOR;

    /* JADX INFO: renamed from: l */
    private String f4486l = BuildConfig.FLAVOR;

    /* JADX INFO: renamed from: m */
    private boolean f4487m = false;

    /* JADX INFO: renamed from: n */
    private int f4488n = 0;

    /* JADX INFO: renamed from: p */
    private boolean f4490p = false;

    /* JADX INFO: renamed from: G */
    private int f4468G = -1;

    /* JADX INFO: renamed from: H */
    private boolean f4469H = false;

    /* JADX INFO: renamed from: I */
    private final AtomicBoolean f4470I = new AtomicBoolean(false);

    /* JADX INFO: renamed from: J */
    private boolean f4471J = false;

    /* JADX INFO: renamed from: K */
    private byte[] f4472K = new byte[20];

    /* JADX INFO: renamed from: L */
    private int f4473L = 0;

    /* JADX INFO: renamed from: M */
    private boolean f4474M = true;

    /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.BoxInterface.f$a */
    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            C0735f.this.m5639a0();
        }
    }

    /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.BoxInterface.f$b */
    class b implements Runnable {
        b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            C0982s.m7375e("iosAudioThread_ id=" + Thread.currentThread().getId());
            Process.setThreadPriority(-19);
            while (!C0735f.this.f4464C) {
                try {
                    l lVarM5755a = C0735f.this.f4462A.m5755a();
                    if (lVarM5755a != null) {
                        Iterator it = C0735f.this.f4463B.iterator();
                        while (it.hasNext()) {
                            ((C0730a) it.next()).m5454t(lVarM5755a);
                        }
                    }
                } catch (InterruptedException e) {
                    C0982s.m7375e(Log.getStackTraceString(e));
                    return;
                }
            }
        }
    }

    /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.BoxInterface.f$c */
    class c implements Runnable {
        c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            C0982s.m7375e("audioRecordThread_ id=" + Thread.currentThread().getId());
            Process.setThreadPriority(-19);
            while (!C0735f.this.f4464C) {
                synchronized (C0730a.f4322h) {
                    if (!C0735f.this.f4498x) {
                        try {
                            C0730a.f4322h.wait();
                            Thread.sleep(C0925p.f5860G);
                        } catch (InterruptedException e) {
                            C0982s.m7375e(Log.getStackTraceString(e));
                        }
                    }
                }
                if (C0735f.this.f4464C) {
                    break;
                }
                if (C0735f.this.f4498x && C0730a.f4322h.m9126c() != 0) {
                    C0730a.f4322h.m9129i();
                    l lVar = C0735f.this.new l(C0730a.f4322h.m9126c() + 12);
                    lVar.f4534a.f4515c = 7;
                    lVar.m5785c();
                    ByteBuffer byteBufferM5786d = lVar.m5786d();
                    byteBufferM5786d.putInt(0, C0730a.f4323i);
                    byteBufferM5786d.putFloat(4, CropImageView.DEFAULT_ASPECT_RATIO);
                    byteBufferM5786d.putInt(8, 3);
                    while (!C0735f.this.f4464C && C0735f.this.f4498x) {
                        if (C0730a.f4322h.mo6486f(lVar.m5787e(), 12, lVar.m5788f() - 12)) {
                            C0735f.this.m5695R0(lVar);
                        } else {
                            try {
                                Thread.sleep(10L);
                            } catch (InterruptedException e2) {
                                C0982s.m7375e(Log.getStackTraceString(e2));
                            }
                        }
                    }
                    C0730a.f4322h.m9131k();
                }
            }
            C0982s.m7375e("audioRecordThread_ Exit");
        }
    }

    /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.BoxInterface.f$d */
    class d implements Runnable {

        /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.BoxInterface.f$d$a */
        class a extends TimerTask {

            /* JADX INFO: renamed from: b */
            final /* synthetic */ ScheduledExecutorService f4505b;

            a(ScheduledExecutorService scheduledExecutorService) {
                this.f4505b = scheduledExecutorService;
            }

            @Override // java.util.TimerTask, java.lang.Runnable
            public void run() {
                if (C0735f.this.f4464C) {
                    C0982s.m7373c("checkOpenThread_ bThreadExit ");
                    this.f4505b.shutdown();
                    return;
                }
                if (((Boolean) C0735f.this.f4492r.m7405a()).booleanValue()) {
                    C0982s.m7373c("bOpened_ = true , cancel timer");
                    C0735f.this.m5753y0();
                    this.f4505b.shutdown();
                    C0735f.this.f4494t = null;
                    return;
                }
                C0982s.m7373c("bOpened_ = false");
                boolean zM5706X0 = C0735f.this.m5706X0();
                try {
                    Thread.sleep(1000L);
                } catch (InterruptedException e) {
                    e.printStackTrace();
                }
                C0982s.m7373c("Send g_Open  = " + zM5706X0 + " !!!");
            }
        }

        d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            C0853b c0853b = new C0853b();
            c0853b.m6344f("send_g_open");
            ScheduledThreadPoolExecutor scheduledThreadPoolExecutor = new ScheduledThreadPoolExecutor(1, c0853b.m6343b());
            scheduledThreadPoolExecutor.scheduleAtFixedRate(new a(scheduledThreadPoolExecutor), 0L, 1000L, TimeUnit.MILLISECONDS);
        }
    }

    /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.BoxInterface.f$e */
    class e extends TimerTask {
        e() {
        }

        @Override // java.util.TimerTask, java.lang.Runnable
        public void run() {
            if (C0735f.this.f4464C) {
                C0982s.m7373c("bThreadExit ");
                C0735f.this.f4496v.shutdown();
                C0735f.this.f4496v = null;
            } else if (C0735f.this.m5663v0(170)) {
                C0982s.m7378h("send heart beat Start");
            } else {
                C0982s.m7375e("send heart beat err");
            }
        }
    }

    /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.BoxInterface.f$f */
    class f implements Runnable {
        f() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (!C0735f.this.f4470I.compareAndSet(false, true)) {
                C0982s.m7386p("BoxProtocol", "send_g_open_async->run: send_g_open() is already running. Ignoring this call.");
                return;
            }
            try {
                C0735f.this.m5706X0();
            } finally {
                C0735f.this.f4470I.set(false);
            }
        }
    }

    /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.BoxInterface.f$g */
    class g implements Runnable {
        g() {
        }

        @Override // java.lang.Runnable
        public void run() {
            C0735f.this.m5708Z0();
        }
    }

    /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.BoxInterface.f$h */
    class h {

        /* JADX INFO: renamed from: a */
        private l f4510a;

        /* JADX INFO: renamed from: b */
        private C0972i f4511b = new C0972i();

        public h() {
            this.f4510a = C0735f.this.new l();
        }

        /* JADX INFO: renamed from: a */
        public synchronized l m5755a() {
            l lVar;
            lVar = null;
            while (this.f4511b.m7255g() > 10) {
                C0982s.m7375e("dataVec_.size = " + this.f4511b.m7255g());
                this.f4511b.m7254f(0);
            }
            if (this.f4511b.m7253e()) {
                wait(100L);
            } else {
                this.f4510a.f4534a.f4514b = this.f4511b.m7251c().length;
                this.f4510a.f4536c.rewind();
                this.f4510a.f4536c.put(this.f4511b.m7251c());
                this.f4511b.m7254f(0);
                lVar = this.f4510a;
            }
            return lVar;
        }

        /* JADX INFO: renamed from: b */
        public synchronized void m5756b() {
            notify();
        }
    }

    /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.BoxInterface.f$i */
    class i {

        /* JADX INFO: renamed from: a */
        private int f4513a = 0;

        /* JADX INFO: renamed from: b */
        private int f4514b = 0;

        /* JADX INFO: renamed from: c */
        private int f4515c = 0;

        /* JADX INFO: renamed from: d */
        private int f4516d = 0;

        public i(C0735f c0735f) {
        }

        /* JADX INFO: renamed from: a */
        public void m5765a() {
            this.f4513a = 1438340539;
        }

        /* JADX INFO: renamed from: b */
        public boolean m5766b() {
            return 1438340539 == this.f4513a;
        }

        /* JADX INFO: renamed from: c */
        public boolean m5767c() {
            int i = this.f4513a;
            return (1437226410 == i || 1438340539 == i) && this.f4516d == (this.f4515c ^ (-1));
        }

        /* JADX INFO: renamed from: d */
        public void m5768d() {
            this.f4516d = this.f4515c ^ (-1);
            this.f4513a = m5766b() ? 1438340539 : 1437226410;
        }

        /* JADX INFO: renamed from: m */
        public int m5769m() {
            return 16;
        }
    }

    /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.BoxInterface.f$j */
    public static class j {

        /* JADX INFO: renamed from: a */
        public int f4517a = 0;

        /* JADX INFO: renamed from: b */
        public int f4518b = 0;

        /* JADX INFO: renamed from: c */
        public int f4519c = 1;

        /* JADX INFO: renamed from: d */
        public int f4520d = 2;

        /* JADX INFO: renamed from: e */
        public int f4521e = 0;

        /* JADX INFO: renamed from: f */
        public int f4522f = 0;

        /* JADX INFO: renamed from: g */
        public int f4523g = 0;

        /* JADX INFO: renamed from: h */
        private ByteBuffer f4524h;

        public j() {
            ByteBuffer byteBufferAllocate = ByteBuffer.allocate(m5770a());
            this.f4524h = byteBufferAllocate;
            byteBufferAllocate.order(ByteOrder.LITTLE_ENDIAN);
        }

        /* JADX INFO: renamed from: a */
        public static int m5770a() {
            return 28;
        }

        /* JADX INFO: renamed from: b */
        public void m5771b(ByteBuffer byteBuffer) {
            this.f4517a = byteBuffer.getInt(0);
            this.f4518b = byteBuffer.getInt(4);
            this.f4519c = byteBuffer.getInt(8);
            this.f4520d = byteBuffer.getInt(12);
            this.f4521e = byteBuffer.getInt(16);
            this.f4522f = byteBuffer.getInt(20);
            this.f4523g = byteBuffer.getInt(24);
        }
    }

    /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.BoxInterface.f$k */
    public static class k {

        /* JADX INFO: renamed from: h */
        static int f4525h = 2;

        /* JADX INFO: renamed from: i */
        static int f4526i = 1;

        /* JADX INFO: renamed from: a */
        int f4527a;

        /* JADX INFO: renamed from: b */
        int f4528b;

        /* JADX INFO: renamed from: c */
        int f4529c;

        /* JADX INFO: renamed from: d */
        int f4530d;

        /* JADX INFO: renamed from: e */
        int f4531e;

        /* JADX INFO: renamed from: f */
        int f4532f;

        /* JADX INFO: renamed from: g */
        private ByteBuffer f4533g;

        public k() {
            if (C0925p.f5870g) {
                C0982s.m7375e("use soft-decode, framerate = 25 !!!!!!!!!!!!!!!");
                C0925p.f5856C = 25;
            }
            this.f4527a = 0;
            this.f4528b = 0;
            this.f4529c = C0925p.f5856C;
            C0982s.m7374d("BoxProtocol", "videoFrameRate = " + this.f4529c);
            this.f4530d = 5;
            this.f4531e = 16384;
            this.f4532f = 0;
            ByteBuffer byteBufferAllocate = ByteBuffer.allocate(m5777g());
            this.f4533g = byteBufferAllocate;
            byteBufferAllocate.order(ByteOrder.LITTLE_ENDIAN);
        }

        /* JADX INFO: renamed from: a */
        public static String m5772a(int i) {
            if (i == 0) {
                return "AndroidInvalid(" + i + ")";
            }
            if (i == 1) {
                return "AndroidAuto(" + i + ")";
            }
            if (i == 2) {
                return "CarLife(" + i + ")";
            }
            if (i == 3) {
                return "AndroidMirror(" + i + ")";
            }
            if (i == 4) {
                return "HiCar(" + i + ")";
            }
            if (i != 5) {
                return "AndroidUnknown(" + i + ")";
            }
            return "ICCOA(" + i + ")";
        }

        /* JADX INFO: renamed from: b */
        public static void m5773b(int i) {
            f4526i = i;
            C0982s.m7373c("BoxProtocol,changeAndroidWorkMode: " + i);
        }

        /* JADX INFO: renamed from: c */
        public static void m5774c(int i) {
            if (i < 0) {
                return;
            }
            if (i == 1) {
                i = 2;
            }
            f4525h = i;
            C0982s.m7373c("BoxProtocol,changeIphoneWorkMode: " + i);
        }

        /* JADX INFO: renamed from: d */
        public static int m5775d() {
            return f4526i;
        }

        /* JADX INFO: renamed from: f */
        public static int m5776f() {
            return f4525h;
        }

        /* JADX INFO: renamed from: g */
        public static int m5777g() {
            return 28;
        }

        /* JADX INFO: renamed from: h */
        public static String m5778h(int i) {
            if (i == 0) {
                return "iPhoneInvalid(" + i + ")";
            }
            if (i == 1) {
                return "AirPlay(" + i + ")";
            }
            if (i == 2) {
                return "CarPlay(" + i + ")";
            }
            if (i == 3) {
                return "NonAirPlay(" + i + ")";
            }
            if (i != 4) {
                return "iPhoneUnknown(" + i + ")";
            }
            return "iPhoneCharge(" + i + ")";
        }

        /* JADX INFO: renamed from: i */
        public static boolean m5779i() {
            return f4526i == 4;
        }

        /* JADX INFO: renamed from: e */
        public byte[] m5780e() {
            this.f4533g.putInt(0, this.f4527a);
            this.f4533g.putInt(4, this.f4528b);
            this.f4533g.putInt(8, this.f4529c);
            this.f4533g.putInt(12, this.f4530d);
            this.f4533g.putInt(16, this.f4531e);
            this.f4533g.putInt(20, this.f4532f);
            this.f4533g.putInt(24, f4525h);
            C0982s.m7375e("BoxProtocol,StOpen,getBytes: phoneWorkMode=" + f4525h);
            return this.f4533g.array();
        }

        /* JADX INFO: renamed from: j */
        public void m5781j(ByteBuffer byteBuffer) {
            this.f4527a = byteBuffer.getInt(0);
            this.f4528b = byteBuffer.getInt(4);
            this.f4529c = byteBuffer.getInt(8);
            this.f4530d = byteBuffer.getInt(12);
            this.f4531e = byteBuffer.getInt(16);
            this.f4532f = byteBuffer.getInt(20);
            f4525h = byteBuffer.getInt(24);
        }
    }

    public C0735f(Context context) {
        this.f4478d = 0;
        this.f4479e = 0;
        C0982s.m7373c("BoxProtocol,BoxProtocol: ===***===");
        m5633O();
        m5634P(context);
        this.f4464C = false;
        this.f4478d = 0;
        this.f4479e = 0;
        this.f4491q = new k();
        C0989z<Boolean> c0989z = new C0989z<>();
        this.f4492r = c0989z;
        c0989z.m7406b(Boolean.FALSE);
        this.f4499y = new WeakReference<>(context);
        this.f4462A = new h();
        m5693Q();
        m5748u1();
        m5749v1();
        if (this.f4493s == null) {
            this.f4493s = new Thread(new a(), "readUsb");
        }
        if (this.f4495u == null) {
            this.f4495u = new Thread(new b(), "iosAudio");
        }
        if (this.f4497w == null) {
            this.f4497w = new Thread(new c(), "audioRecord");
            this.f4498x = false;
        }
        this.f4500z = new C0731b(context);
        this.f4494t.start();
        C0982s.m7373c("checkOpenThread_ started");
        this.f4493s.start();
        C0982s.m7373c("readThread_ started");
        this.f4497w.start();
    }

    /* JADX INFO: renamed from: A0 */
    private boolean m5628A0(int i2, String str, boolean z) {
        byte[] bytes = str.getBytes();
        return m5630C0(i2, bytes, bytes.length, z);
    }

    /* JADX INFO: renamed from: B0 */
    private boolean m5629B0(int i2, byte[] bArr, int i3) {
        return m5630C0(i2, bArr, i3, true);
    }

    /* JADX INFO: renamed from: C0 */
    private boolean m5630C0(int i2, byte[] bArr, int i3, boolean z) {
        C0982s.m7373c("BoxProtocol,sendDevInfo: " + bArr.length + " " + i3 + " " + this.f4492r.m7405a());
        if (!this.f4492r.m7405a().booleanValue() && z) {
            return false;
        }
        C0982s.m7373c("BoxProtocol,sendDevInfo: cmd=" + i2);
        l lVar = new l(i3);
        lVar.f4534a.f4515c = i2;
        lVar.f4534a.f4514b = i3;
        lVar.m5785c();
        System.arraycopy(bArr, 0, lVar.m5787e(), 0, i3);
        lVar.m5791j();
        synchronized (this) {
            if (!C0733d.m5587d0(lVar.m5789g(), lVar.m5790h())) {
                C0982s.m7375e("BoxProtocol,sendDevInfo: Write device info head err");
                return false;
            }
            if (C0733d.m5587d0(lVar.m5787e(), lVar.m5788f())) {
                C0982s.m7375e("BoxProtocol,sendDevInfo: sendDevInfo() success ");
                return true;
            }
            C0982s.m7375e("BoxProtocol,sendDevInfo: Write device info data err");
            return false;
        }
    }

    /* JADX INFO: renamed from: M */
    private void m5631M(l lVar) {
        if (lVar.m5788f() >= 4) {
            int i2 = lVar.m5786d().getInt(0);
            if (i2 == 2) {
                if (lVar.m5788f() - 4 == this.f4472K.length) {
                    m5648k1(lVar.m5787e(), 4);
                    C0733d.m5579O(1, 29);
                    return;
                }
                return;
            }
            if (i2 == 3) {
                C0982s.m7373c("Open camera");
                C0733d.m5579O(1, 30);
            } else {
                if (i2 != 4) {
                    return;
                }
                C0982s.m7373c("Close camera");
                C0733d.m5579O(1, 31);
            }
        }
    }

    /* JADX INFO: renamed from: N */
    private void m5632N(l lVar) {
        if (lVar.m5788f() >= 4) {
            int i2 = lVar.m5786d().getInt(0);
            try {
                if (i2 == 1) {
                    C0733d.m5580P(1, 216, new String(lVar.m5787e(), 4, (lVar.m5788f() - 4) - 1, "UTF-8"));
                } else if (i2 == 2 || i2 == 3) {
                    byte[] bArr = new byte[(lVar.m5788f() - 4) - 1];
                    System.arraycopy(lVar.m5787e(), 4, bArr, 0, (lVar.m5788f() - 4) - 1);
                    Bundle bundle = new Bundle();
                    bundle.putByteArray("COVER", bArr);
                    C0733d.m5580P(1, 218, bundle);
                } else if (i2 == 100) {
                    C0733d.m5580P(1, 217, new String(lVar.m5787e(), 4, (lVar.m5788f() - 4) - 1, "UTF-8"));
                } else if (i2 != 200) {
                } else {
                    C0733d.m5580P(1, 219, new String(lVar.m5787e(), 4, (lVar.m5788f() - 4) - 1, "UTF-8"));
                }
            } catch (UnsupportedEncodingException e2) {
                C0982s.m7376f("BoxProtocol", "handleDashboardData: " + C0982s.m7377g(e2));
            }
        }
    }

    /* JADX INFO: renamed from: O */
    private void m5633O() {
        f4458O = false;
        f4457N = -2;
    }

    /* JADX INFO: renamed from: P */
    private void m5634P(Context context) {
        this.f4463B = new ArrayList();
        C0730a.m5435l(context);
        C0730a c0730a = new C0730a(2, 1, context);
        c0730a.m5449J(0);
        this.f4463B.add(c0730a);
        C0730a c0730a2 = new C0730a(2, 2, context);
        c0730a2.m5449J(1);
        this.f4463B.add(c0730a2);
        C0730a c0730a3 = new C0730a(3, 1, context);
        c0730a3.m5449J(2);
        this.f4463B.add(c0730a3);
        C0730a c0730a4 = new C0730a(4, 1, context);
        c0730a4.m5449J(3);
        this.f4463B.add(c0730a4);
        if (C0925p.f5884u) {
            C0730a c0730a5 = new C0730a(7, 1, context);
            c0730a5.m5449J(4);
            this.f4463B.add(c0730a5);
        } else {
            C0730a c0730a6 = new C0730a(5, 1, context);
            c0730a6.m5449J(4);
            this.f4463B.add(c0730a6);
        }
        C0730a c0730a7 = new C0730a(6, 1, context);
        c0730a7.m5449J(5);
        this.f4463B.add(c0730a7);
        C0730a c0730a8 = new C0730a(5, 2, context);
        c0730a8.m5449J(6);
        this.f4463B.add(c0730a8);
        C0730a c0730a9 = new C0730a(4, 2, context);
        c0730a9.m5449J(7);
        this.f4463B.add(c0730a9);
    }

    /* JADX INFO: renamed from: R */
    private void m5635R(int i2) {
        if (i2 == 1) {
            this.f4489o = new C0932b(i2);
            C0991a.m7412t().mo7139c("AndroidMirror", f4461R);
            return;
        }
        if (i2 == 3) {
            C0925p.f5859F = 1;
            this.f4489o = new C0933c(i2);
            C0991a.m7412t().mo7139c("CarPlay", f4461R);
            return;
        }
        if (i2 == 4) {
            this.f4489o = new C0936f(i2);
            C0991a.m7412t().mo7139c("iPhoneMirror", f4461R);
            return;
        }
        if (i2 == 5) {
            this.f4489o = new C0931a(i2);
            C0991a.m7412t().mo7139c("AndroidAuto", f4461R);
            return;
        }
        if (i2 == 6) {
            C0925p.f5859F = 1;
            this.f4489o = new C0935e(i2);
            C0991a.m7412t().mo7139c("HiCar", f4461R);
        } else if (i2 != 7) {
            C0925p.f5859F = 1;
            this.f4489o = new C0934d(i2);
            C0991a.m7412t().mo7139c("Unknown", f4461R);
        } else {
            C0925p.f5859F = 1;
            this.f4489o = new C0935e(i2);
            C0991a.m7412t().mo7139c("Carlink", f4461R);
        }
    }

    /* JADX INFO: renamed from: X */
    private void m5636X(int i2) {
        if (i2 == 1) {
            C0733d.m5579O(1, 120);
            return;
        }
        if (i2 == 2) {
            C0733d.m5579O(1, 121);
            return;
        }
        if (i2 == 3) {
            C0733d.m5579O(1, 122);
            return;
        }
        if (i2 == 5) {
            C0733d.m5579O(1, 125);
        } else if (i2 == 6) {
            C0733d.m5579O(1, 126);
        } else {
            if (i2 != 7) {
                return;
            }
            C0733d.m5579O(1, 127);
        }
    }

    /* JADX INFO: renamed from: Y */
    private void m5637Y(l lVar) {
        C0731b c0731b;
        C0731b c0731b2;
        C0731b c0731b3;
        String str;
        String str2;
        int i2 = lVar.f4534a.f4515c;
        if (i2 == 1) {
            if (k.m5777g() != lVar.m5788f()) {
                if (lVar.m5788f() != 0) {
                    C0982s.m7373c("NULL!!!!!!");
                    return;
                } else {
                    m5706X0();
                    C0982s.m7376f("BoxProtocol", "onCmd: Resend g_Open!! #####################");
                    return;
                }
            }
            this.f4492r.m7406b(Boolean.TRUE);
            C0733d.m5579O(1, 36);
            this.f4491q.m5781j(lVar.m5786d());
            k kVar = this.f4491q;
            int i3 = kVar.f4527a;
            int i4 = kVar.f4528b;
            C0982s.m7375e("BoxProtocol,onCmd: Recv CMD_OPEN:  " + lVar.m5788f() + " " + this.f4491q.f4527a + "x" + this.f4491q.f4528b + "@" + this.f4491q.f4529c + "fps " + this.f4491q.f4530d + " " + this.f4491q.f4531e + " " + k.f4525h);
            k kVar2 = this.f4491q;
            if (kVar2.f4527a > 4000 || kVar2.f4528b > 4000 || kVar2.f4529c > 60) {
                C0982s.m7375e("BoxProtocol,onCmd: Recv CMD_OPEN: data exception!!!");
                return;
            }
            if (kVar2.f4532f == 0) {
                m5737n1(true);
                C0733d.m5579O(1, 123);
            } else if (C0732c.m5542e().m5562t(0, C0917m.f5781a)) {
                C0982s.m7376f("BoxProtocol", "onCmd: PID ERROR");
                m5737n1(true);
                C0733d.m5579O(1, 123);
            } else if (this.f4487m) {
                m5737n1(false);
                m5725h0();
            } else {
                C0982s.m7375e("BoxProtocol,box not support crypt!!!" + C0732c.m5542e().m5558p());
                if ("2024.07.08.0000".compareTo(C0732c.m5542e().m5558p()) < 0) {
                    m5737n1(true);
                    C0733d.m5579O(1, 123);
                }
            }
            if (this.f4480f && C0730a.f4321g) {
                m5676F0(C0795b0.m6071i().m6091m("MicType", 0));
            }
            C0982s.m7375e("BoxProtocol,onCmd: Recv CMD_OPEN: g_Open.iBoxversion = " + this.f4491q.f4532f);
            return;
        }
        if (i2 == 2) {
            if (this.f4471J) {
                m5713b1();
                return;
            }
            this.f4477c = 0;
            this.f4476b = 2;
            this.f4478d = 0;
            this.f4479e = 0;
            if (lVar.m5788f() == 4) {
                int i5 = lVar.m5786d().getInt(0);
                f4457N = i5;
                f4461R = false;
                m5635R(i5);
            } else if (lVar.m5788f() == 8) {
                f4457N = lVar.m5786d().getInt(0);
                f4461R = lVar.m5786d().getInt(4) == 1;
                C0982s.m7373c("BoxProtocol,onCmd: Recv bWifiDeviceConected: " + f4461R);
                m5635R(f4457N);
            }
            C0982s.m7373c("BoxProtocol,onCmd: Recv CMD_PLUG, Phone Type: " + f4457N + ",WorkMode:" + C0991a.m7412t().m7421u());
            InterfaceC0937g interfaceC0937g = this.f4489o;
            if (interfaceC0937g != null) {
                C0925p.f5860G = interfaceC0937g.mo6928j();
            }
            m5638Z();
            return;
        }
        if (i2 == 3) {
            if (4 == lVar.m5788f()) {
                int i6 = lVar.m5786d().getInt(0);
                C0982s.m7373c("BoxProtocol,onCmd: Recv CMD_PHASE iPhase = " + i6);
                if (this.f4471J) {
                    m5713b1();
                    return;
                }
                if (i6 != 3) {
                    if (i6 == 4) {
                        C0733d.m5579O(1, 5);
                        return;
                    }
                    if (i6 == 5) {
                        C0733d.m5579O(1, 6);
                        return;
                    }
                    if (i6 != 6) {
                        if (i6 != 8) {
                            if (i6 == 13) {
                                C0982s.m7376f("BoxProtocol", "onCmd: PHASE_LinkFailed phoneType=" + f4457N + ",bPhoneConnected=" + f4458O);
                                if (f4457N != -2 || f4458O) {
                                    return;
                                }
                                C0733d.m5579O(1, 204);
                                return;
                            }
                            if (i6 != 10) {
                                if (i6 == 11) {
                                    C0733d.m5579O(1, 16);
                                    return;
                                }
                                switch (i6) {
                                    case 1001:
                                        C0733d.m5579O(1, 50);
                                        C0982s.m7375e("BoxProtocol,onCmd: Hardware Error: Bluetooth");
                                        return;
                                    case 1002:
                                        C0733d.m5579O(1, 51);
                                        C0982s.m7375e("BoxProtocol,onCmd: Hardware Error: Wifi");
                                        return;
                                    case 1003:
                                        C0733d.m5579O(1, 52);
                                        return;
                                    case 1004:
                                        C0733d.m5579O(1, 53);
                                        return;
                                    default:
                                        return;
                                }
                            }
                        }
                        C0733d.m5579O(1, 9);
                        C0733d.m5579O(1, 15);
                        this.f4500z.m5467g(2, this.f4478d, this.f4479e, null, 0);
                        f4458O = true;
                        C0982s.m7376f("BoxProtocol", "onCmd: #PHASE_CARPLAY_WORING/PHASE_NonAIRPLAY_WORING");
                        return;
                    }
                }
                C0733d.m5579O(1, 15);
                f4458O = true;
                C0982s.m7376f("BoxProtocol", "onCmd: #PHASE_IOS_WORING/PHASE_ANDROID_WORKING");
                return;
            }
            return;
        }
        if (i2 == 4) {
            C0982s.m7376f("BoxProtocol", "onCmd: #CMD_PLUGOUT.");
            if (lVar.m5788f() == 4 && lVar.m5786d().getInt(0) == 1) {
                C0982s.m7373c("BoxProtocol,onCmd: CMD_PLUGOUT: Manually disconnected by the user on the phone end.");
                if (this.f4499y.get().getResources().getBoolean(2131034126)) {
                    C0733d.m5579O(4, 0);
                }
                C0733d.m5579O(1, 25);
            }
            if (f4457N != -1 && (c0731b = this.f4500z) != null) {
                c0731b.m5467g(0, this.f4478d, this.f4479e, null, 0);
            }
            f4458O = false;
            f4461R = false;
            C0982s.m7376f("BoxProtocol", "onCmd: #CMD_PLUGOUT Phone Disconnected.");
            C0733d.m5579O(1, f4457N != -1 ? 2 : 0);
            m5660t1();
            C0732c.m5542e().m5564v();
            f4457N = -2;
            return;
        }
        if (i2 == 6) {
            if (this.f4492r.m7405a().booleanValue()) {
                int i7 = lVar.m5786d().getInt(0);
                int i8 = lVar.m5786d().getInt(4);
                int i9 = lVar.m5786d().getInt(8);
                long j2 = C0732c.m5542e().m5558p().compareTo("2024.12.13.1130") >= 0 ? lVar.m5786d().getInt(12) : 0L;
                int i10 = i9 & 1;
                int i11 = (i9 >> 2) & 3;
                if (i11 == 0) {
                    i11 = 2;
                } else if (i11 == 1) {
                    i11 = 1;
                } else if (i11 == 2) {
                    i11 = 4;
                }
                if (i11 != this.f4476b) {
                    this.f4476b = i11;
                    if (1 == i11 || 4 == i11) {
                        C0733d.m5579O(2, 0);
                    } else {
                        C0733d.m5579O(2, 1);
                    }
                }
                if (this.f4477c != i10) {
                    this.f4477c = i10;
                    if (this.f4491q.f4530d == 5) {
                        if (i10 == 0) {
                            if (f4457N != -1 && (c0731b3 = this.f4500z) != null) {
                                c0731b3.m5467g(3, i7, i8, null, 0);
                            }
                        } else if (f4457N != -1 && (c0731b2 = this.f4500z) != null) {
                            c0731b2.m5467g(4, i7, i8, null, 0);
                        }
                        C0982s.m7373c("COMPRESS_METHORD_H264  boffscreen= " + this.f4477c);
                    }
                    C0733d.m5579O(1, this.f4477c == 1 ? 10 : 11);
                }
                if (i7 != this.f4478d || i8 != this.f4479e) {
                    this.f4478d = i7;
                    this.f4479e = i8;
                    C0733d.m5579O(3, 0);
                    if (this.f4491q.f4530d == 5 && f4457N != -1 && this.f4500z != null) {
                        C0982s.m7375e("new w h " + i7 + "x" + i8);
                        this.f4500z.m5467g(7, i7, i8, null, 0);
                    }
                }
                if (lVar.m5788f() > 20 && this.f4475a) {
                    int i12 = this.f4491q.f4530d;
                    if (i12 == 3) {
                        if (f4457N == -1) {
                            int iM5788f = lVar.m5788f() - 20;
                            byte[] bArr = new byte[iM5788f + 32];
                            ByteBuffer byteBufferWrap = ByteBuffer.wrap(bArr);
                            byteBufferWrap.order(ByteOrder.LITTLE_ENDIAN);
                            byteBufferWrap.putInt(4, iM5788f + 36);
                            byteBufferWrap.putInt(8, i7);
                            byteBufferWrap.putInt(12, i8);
                            byteBufferWrap.putInt(24, 131072);
                            System.arraycopy(lVar.m5787e(), 20, bArr, 32, iM5788f);
                            C0733d.m5573F(bArr);
                            return;
                        }
                        return;
                    }
                    if (i12 != 5) {
                        return;
                    }
                    int i13 = f4457N;
                    if (i13 != -1) {
                        int iM5788f2 = lVar.m5788f() - 20;
                        C0731b c0731b4 = this.f4500z;
                        if (c0731b4 != null) {
                            c0731b4.m5468h(8, i7, i8, lVar.m5787e(), iM5788f2, j2);
                            return;
                        }
                        return;
                    }
                    if (i13 == -1) {
                        int iM5788f3 = lVar.m5788f() - 20;
                        byte[] bArr2 = new byte[iM5788f3 + 32];
                        ByteBuffer byteBufferWrap2 = ByteBuffer.wrap(bArr2);
                        byteBufferWrap2.order(ByteOrder.LITTLE_ENDIAN);
                        byteBufferWrap2.putInt(4, iM5788f3 + 36);
                        byteBufferWrap2.putInt(8, i7);
                        byteBufferWrap2.putInt(12, i8);
                        byteBufferWrap2.putInt(24, 65536);
                        System.arraycopy(lVar.m5787e(), 20, bArr2, 32, iM5788f3);
                        C0733d.m5573F(bArr2);
                        return;
                    }
                    return;
                }
                return;
            }
            return;
        }
        if (i2 != 7) {
            if (i2 == 8) {
                int i14 = lVar.m5786d().getInt(0);
                C0982s.m7375e("BoxProtocol,onCmd: Recv CarPlay_CMD: " + i14);
                if (i14 == 1) {
                    if (C0730a.f4321g) {
                        this.f4498x = true;
                        synchronized (C0730a.f4322h) {
                            C0730a.f4322h.notify();
                            C0982s.m7376f("BoxProtocol", "onCmd: Start record audio========");
                        }
                        return;
                    }
                    return;
                }
                if (i14 == 2) {
                    if (C0730a.f4321g) {
                        this.f4498x = false;
                        C0982s.m7376f("BoxProtocol", "onCmd: Stop record audio========");
                        return;
                    }
                    return;
                }
                if (i14 == 3) {
                    C0982s.m7373c("recv  CarPlay_RequestHostUI...");
                    C0991a.m7412t().mo7150n();
                    if (!new File("/sdcard/carplay.png").exists()) {
                        C0733d.m5579O(4, 0);
                    }
                    if (f4457N != 5 || C0732c.m5542e().m5558p().compareTo("2022") >= 0) {
                        return;
                    }
                    C0995e.m7435H(200);
                    return;
                }
                if (i14 == 15) {
                    C0982s.m7375e("Config.bUseBoxMic: " + C0925p.f5882s);
                    C0982s.m7373c("BoxProtocol,onCmd: ======Box Mic======");
                    this.f4480f = true;
                    C0733d.m5579O(1, 116);
                    C0730a.f4321g = !C0925p.f5882s;
                    return;
                }
                if (i14 == 500) {
                    C0733d.m5579O(1, 212);
                    return;
                }
                if (i14 == 501) {
                    C0733d.m5579O(1, 213);
                    return;
                }
                if (i14 == 1000) {
                    C0982s.m7373c("BoxProtocol,onCmd: Recv CarPlay_SupportWifi");
                    f4459P = true;
                    C0732c.m5542e().m5543A(true);
                    return;
                }
                if (i14 == 1001) {
                    f4460Q = true;
                    this.f4481g = true;
                    C0733d.m5579O(1, 200);
                    return;
                }
                switch (i14) {
                    case 7:
                        C0730a.f4321g = true;
                        C0982s.m7373c("BoxProtocol,onCmd: ======Car Mic======");
                        C0733d.m5579O(1, 116);
                        return;
                    case 8:
                        C0730a.f4321g = false;
                        C0733d.m5579O(1, 117);
                        return;
                    case 9:
                        C0733d.m5579O(1, 118);
                        return;
                    case 10:
                        C0733d.m5579O(1, 119);
                        m5699T0(11);
                        return;
                    default:
                        switch (i14) {
                            case 1003:
                                C0733d.m5579O(1, 201);
                                return;
                            case 1004:
                                C0733d.m5579O(1, 202);
                                return;
                            case 1005:
                                C0733d.m5579O(1, 203);
                                return;
                            case 1006:
                                C0733d.m5579O(1, 204);
                                return;
                            case 1007:
                                this.f4482h = true;
                                C0733d.m5579O(1, 205);
                                return;
                            case 1008:
                                this.f4482h = false;
                                C0733d.m5579O(1, 206);
                                return;
                            case 1009:
                                this.f4481g = true;
                                f4461R = true;
                                C0733d.m5579O(1, 207);
                                return;
                            case 1010:
                                f4461R = false;
                                C0733d.m5579O(1, 208);
                                return;
                            case 1011:
                                C0733d.m5579O(1, 209);
                                return;
                            case 1012:
                                C0982s.m7373c("BoxProtocol,onCmd: Recv CarPlay_SupportWifiNeedKo=======================");
                                return;
                            default:
                                return;
                        }
                }
            }
            if (i2 == 13) {
                if (lVar.m5788f() <= 16) {
                    String str3 = BuildConfig.FLAVOR;
                    try {
                        str = new String(lVar.m5787e(), 0, lVar.m5788f() - 1, "UTF-8");
                    } catch (Exception e2) {
                        e = e2;
                    }
                    try {
                        this.f4485k = str;
                        C0733d.m5579O(1, 215);
                    } catch (Exception e3) {
                        e = e3;
                        str3 = str;
                        C0982s.m7375e(Log.getStackTraceString(e));
                        str = str3;
                    }
                    C0982s.m7375e("BoxProtocol,onCmd: Recv CMD_BOX_BLUETOOTH_NAME: " + str + ", len=" + (lVar.m5788f() - 1));
                    return;
                }
                return;
            }
            if (i2 == 14) {
                if (lVar.m5788f() <= 16) {
                    String str4 = BuildConfig.FLAVOR;
                    try {
                        str2 = new String(lVar.m5787e(), 0, lVar.m5788f() - 1, "UTF-8");
                    } catch (Exception e4) {
                        e = e4;
                    }
                    try {
                        this.f4486l = str2;
                    } catch (Exception e5) {
                        e = e5;
                        str4 = str2;
                        C0982s.m7375e(Log.getStackTraceString(e));
                        str2 = str4;
                    }
                    C0982s.m7375e("BoxProtocol,onCmd: Recv CMD_BOX_WIFI_NAME: " + str2 + ", len=" + (lVar.m5788f() - 1));
                    return;
                }
                return;
            }
            if (i2 == 18) {
                if (this.f4471J) {
                    m5713b1();
                    return;
                } else {
                    m5640e0(lVar);
                    return;
                }
            }
            if (i2 == 19) {
                try {
                    this.f4484j = new String(lVar.m5787e(), 0, lVar.m5788f() - 1, "UTF-8");
                    C0982s.m7375e("BoxProtocol,onCmd: Recv CMD_BLUETOOTH_ONLINE_LIST: " + this.f4484j);
                    C0733d.m5579O(1, 211);
                    return;
                } catch (Exception e6) {
                    C0982s.m7375e(Log.getStackTraceString(e6));
                    return;
                }
            }
            if (i2 == 24) {
                m5658s1(lVar);
                return;
            }
            if (i2 == 25) {
                if (lVar.m5788f() >= 4) {
                    try {
                        String str5 = new String(lVar.m5787e(), 0, lVar.m5788f(), "UTF-8");
                        C0982s.m7373c("BoxProtocol,onCmd->BoxInfo: " + str5);
                        C0732c.m5542e().m5565w(str5);
                        C0733d.m5579O(1, 35);
                        return;
                    } catch (Exception e7) {
                        C0982s.m7376f("BoxProtocol", "onCmd: " + C0982s.m7377g(e7));
                        return;
                    }
                }
                return;
            }
            if (i2 == 42) {
                m5632N(lVar);
                return;
            }
            if (i2 == 43) {
                m5656r1(lVar);
                return;
            }
            switch (i2) {
                case 11:
                    if (j.m5770a() == lVar.m5788f()) {
                        j jVar = new j();
                        jVar.m5771b(lVar.m5786d());
                        C0982s.m7375e("BoxProtocol,onCmd: Recv CMD_CARPLAY_MODE_CHANGE:  " + lVar.m5788f() + " " + jVar.f4517a + " " + jVar.f4518b + " " + jVar.f4519c + " " + jVar.f4520d + " " + jVar.f4521e + " " + jVar.f4522f + " " + jVar.f4523g);
                        return;
                    }
                    return;
                case 22:
                    m5631M(lVar);
                    return;
                case 119:
                    C0733d.m5579O(1, 34);
                    return;
                case 136:
                    C0982s.m7375e("BoxProtocol,onCmd: recv  CMD_DEBUG_TEST: " + lVar.m5786d().getInt(0));
                    return;
                case 153:
                    m5641f0(lVar);
                    return;
                case 161:
                    C0733d.m5579O(1, 32);
                    return;
                case 177:
                    if (4 == lVar.m5788f()) {
                        int i15 = lVar.m5786d().getInt(0);
                        C0982s.m7375e("BoxProtocol,onCmd: CMD_UPDATE_PROGRESS progress: " + i15);
                        C0733d.m5580P(1, 120, Integer.valueOf(i15));
                        return;
                    }
                    return;
                case 187:
                    if (4 == lVar.m5788f()) {
                        int i16 = lVar.m5786d().getInt(0);
                        C0982s.m7375e("BoxProtocol,onCmd: CMD_UPDATE iStatus: " + i16);
                        m5636X(i16);
                        return;
                    }
                    return;
                case 204:
                    if (32 == lVar.m5788f()) {
                        String str6 = "unknown";
                        try {
                            str6 = new String(lVar.m5787e(), 0, 18, "ISO-8859-1");
                        } catch (UnsupportedEncodingException e8) {
                            C0982s.m7375e(Log.getStackTraceString(e8));
                        }
                        C0982s.m7375e("BoxProtocol,onCmd: Recv CMD_BOX_SOFTWARE_VERSION: " + str6);
                        m5659t(str6);
                        C0925p.f5865b = "BOX:" + str6;
                        C0732c.m5542e().m5566x(str6);
                        if (f4459P) {
                            C0925p.f5865b += "W";
                        }
                        C0733d.m5579O(1, 124);
                        return;
                    }
                    return;
                case 240:
                    C0982s.m7375e("BoxProtocol,onCmd: recv  CMD_ENABLE_CRYPT");
                    this.f4487m = true;
                    return;
                case 255:
                    return;
                default:
                    C0982s.m7373c("BoxProtocol,onCmd: Unknown cmd = " + lVar.f4534a.f4515c);
                    return;
            }
        }
    }

    /* JADX INFO: renamed from: Z */
    private void m5638Z() {
        C0731b c0731b;
        C0730a.m5417A(this.f4499y.get(), true);
        C0733d.m5579O(1, 4);
        for (int i2 = 0; i2 < 10 && !MainActivity.f4609b0; i2++) {
            try {
                Thread.sleep(200L);
            } catch (InterruptedException e2) {
                C0982s.m7376f("BoxProtocol", "phonePlugIn: " + C0982s.m7377g(e2));
            }
        }
        if (f4457N == -1) {
            C0733d.m5579O(1, 1);
        } else if (this.f4474M) {
            C0733d.m5579O(1, 3);
            this.f4474M = true;
        } else {
            this.f4474M = false;
        }
        if (f4457N == -1 || (c0731b = this.f4500z) == null) {
            return;
        }
        c0731b.m5467g(1, this.f4478d, this.f4479e, null, 0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: a0 */
    public void m5639a0() {
        C0982s.m7374d("BoxProtocol", "readThreadRun: start " + this);
        l lVar = new l();
        long j2 = 0;
        long jElapsedRealtime = 0;
        long jElapsedRealtime2 = 0;
        while (true) {
            if (!this.f4464C) {
                if (j2 < 10) {
                    jElapsedRealtime = SystemClock.elapsedRealtime();
                    C0982s.m7379i("BoxProtocol", "readThreadRun: time1=" + jElapsedRealtime);
                }
                if (!C0733d.m5575H(lVar.m5789g(), lVar.m5790h())) {
                    C0982s.m7376f("BoxProtocol", "readThreadRun: readThread err 1");
                    break;
                }
                lVar.m5793l();
                if (lVar.f4534a.m5767c()) {
                    lVar.m5785c();
                    if (j2 < 10) {
                        jElapsedRealtime2 = SystemClock.elapsedRealtime();
                        C0982s.m7379i("BoxProtocol", "readThreadRun: time2=" + jElapsedRealtime2);
                    }
                    if (!C0733d.m5575H(lVar.m5787e(), lVar.m5788f())) {
                        C0982s.m7376f("BoxProtocol", "readThreadRun: readThread err 2");
                        break;
                    }
                    lVar.m5792k();
                    if (7 == lVar.f4534a.f4515c) {
                        if (f4457N == -2) {
                            C0982s.m7376f("BoxProtocol", "readThreadRun: (phoneType == PHONE_TYPE_UNKNOWN), CMD_AUDIO_FRAME decode_type=" + lVar.m5786d().getInt(0));
                        }
                        if (!this.f4469H && f4457N != -2) {
                            Iterator<C0730a> it = this.f4463B.iterator();
                            while (it.hasNext()) {
                                it.next().m5454t(lVar);
                            }
                        }
                    } else {
                        m5637Y(lVar);
                    }
                    if (6 == lVar.f4534a.f4515c) {
                        j2++;
                    } else if (4 == lVar.f4534a.f4515c || 2 == lVar.f4534a.f4515c) {
                        j2 = 0;
                    }
                    if (j2 < 10) {
                        C0982s.m7379i("BoxProtocol", "readThreadRun: readHead=" + (jElapsedRealtime2 - jElapsedRealtime) + ",readData=" + (SystemClock.elapsedRealtime() - jElapsedRealtime2));
                    }
                } else {
                    C0982s.m7376f("BoxProtocol", "readThreadRun: receive error head!!!");
                    this.f4492r.m7406b(Boolean.FALSE);
                    m5716c1();
                    jElapsedRealtime = 0;
                }
            } else {
                break;
            }
        }
        this.f4492r.m7406b(Boolean.FALSE);
        C0982s.m7374d("BoxProtocol", "readThreadRun: end readThread------:" + this);
    }

    /* JADX INFO: renamed from: e0 */
    private void m5640e0(l lVar) {
        C0982s.m7374d("BoxProtocol", "saveBluetoothPairList: ###");
        Context context = this.f4499y.get();
        if (context == null) {
            return;
        }
        File filesDir = context.getFilesDir();
        if (filesDir.exists() && filesDir.isDirectory()) {
            try {
                int iM5788f = lVar.m5788f() - 1;
                String str = new String(lVar.m5787e(), 0, iM5788f, "UTF-8");
                if (iM5788f > 0) {
                    m5730j1(str.split("\n").length);
                } else {
                    m5730j1(0);
                }
                C0982s.m7373c("BoxProtocol,saveBluetoothPairList: " + str);
                C0982s.m7373c("BoxProtocol,saveBluetoothPairList: " + iM5788f);
                FileOutputStream fileOutputStream = new FileOutputStream(filesDir.getAbsolutePath() + "/bluetooth_pair_list");
                fileOutputStream.write(str.getBytes(), 0, iM5788f);
                fileOutputStream.close();
                C0733d.m5579O(1, 210);
            } catch (Exception e2) {
                C0982s.m7376f("BoxProtocol", "saveBluetoothPairList: " + C0982s.m7377g(e2));
            }
        }
    }

    /* JADX INFO: renamed from: f0 */
    private void m5641f0(l lVar) {
        Context context = this.f4499y.get();
        if (context == null) {
            return;
        }
        String strM7315r = C0977n.m7315r(context);
        try {
            boolean z = false;
            int i2 = lVar.m5786d().getInt(0);
            String str = new String(lVar.m5787e(), 4, i2 - 1, "ISO-8859-1");
            int i3 = i2 + 4;
            int i4 = lVar.m5786d().getInt(i3);
            int i5 = i3 + 4;
            String strSubstring = str.substring(str.lastIndexOf("/") + 1);
            String strM7182f = strM7315r + "/" + strSubstring;
            if (strSubstring.toLowerCase().contains("log")) {
                strM7182f = strM7315r + "/hwbox.log";
                C0925p.f5868e = strM7182f;
            } else if (strSubstring.toLowerCase().contains("apk")) {
                strM7182f = C0964c0.m7182f(this.f4499y.get());
                z = true;
            }
            C0982s.m7383m("BoxProtocol,saveFileFromBox: Recv file " + strSubstring + " from Box, file content " + i4 + " byte");
            C0977n.m7303f(strM7182f);
            C0977n.m7321x(lVar.m5787e(), i5, i4, strM7182f);
            if (z) {
                C0733d.m5579O(1, 33);
            }
        } catch (Exception e2) {
            C0982s.m7375e("BoxProtocol, saveFileFromBox: \n" + Log.getStackTraceString(e2));
        }
    }

    /* JADX INFO: renamed from: g1 */
    private boolean m5643g1(byte[] bArr) {
        return m5629B0(162, bArr, bArr.length);
    }

    /* JADX INFO: renamed from: k1 */
    private void m5648k1(byte[] bArr, int i2) {
        byte[] bArr2 = this.f4472K;
        System.arraycopy(bArr, i2, bArr2, 0, bArr2.length);
    }

    /* JADX INFO: renamed from: r1 */
    private void m5656r1(l lVar) {
        if (m5704W()) {
            return;
        }
        if (lVar.m5788f() >= 4) {
            try {
                int i2 = lVar.m5786d().getInt(0);
                String str = new String(lVar.m5787e(), 4, (lVar.m5788f() - 4) - 1, "ISO-8859-1");
                C0982s.m7373c("BoxProtocol,showConnectionPinCode: phoneType=" + i2 + ", Pincode: " + str);
                if (i2 == 6 || i2 == 7) {
                    m5741p1(str);
                }
            } catch (Exception e2) {
                C0982s.m7376f("BoxProtocol", "showConnectionPinCode: " + C0982s.m7377g(e2));
            }
        }
        C0733d.m5579O(1, 230);
    }

    /* JADX INFO: renamed from: s1 */
    private void m5658s1(l lVar) {
        if (m5704W()) {
            return;
        }
        if (lVar.m5788f() >= 4) {
            try {
                int i2 = lVar.m5786d().getInt(0);
                String str = new String(lVar.m5787e(), 4, (lVar.m5788f() - 4) - 1, "ISO-8859-1");
                if (!k.m5779i()) {
                    str = BuildConfig.FLAVOR;
                }
                C0982s.m7373c("BoxProtocol,showConnectionUrl: phoneType=" + i2 + ", HiCarURL: " + str);
                if (i2 == 6) {
                    m5743q1(str);
                }
            } catch (Exception e2) {
                C0982s.m7376f("BoxProtocol", "showConnectionUrl: " + C0982s.m7377g(e2));
            }
        }
        C0733d.m5579O(1, 214);
    }

    /* JADX INFO: renamed from: t */
    private void m5659t(String str) {
        if (TextUtils.isEmpty(str) || "unknown".equalsIgnoreCase(str)) {
            return;
        }
        C0982s.m7373c("BoxProtocol,checkBoxVersion: " + str);
        if (str.length() != 18) {
            m5737n1(true);
        } else {
            m5737n1(!"Y".equals(str.substring(17, 18)));
        }
    }

    /* JADX INFO: renamed from: t1 */
    private void m5660t1() {
        if (C0730a.f4321g) {
            this.f4498x = false;
        }
        C0982s.m7374d("BoxProtocol", "stopAllAudio: AudioPlayerCount=" + this.f4463B.size());
        Iterator<C0730a> it = this.f4463B.iterator();
        while (it.hasNext()) {
            it.next().m5450K();
        }
    }

    /* JADX INFO: renamed from: u */
    private boolean m5661u(Context context, String str) {
        return m5662v(context, str, "/tmp/" + str + "\u0000");
    }

    /* JADX INFO: renamed from: v */
    private boolean m5662v(Context context, String str, String str2) {
        boolean z;
        try {
            InputStream inputStreamOpen = context.getAssets().open(str);
            int iAvailable = inputStreamOpen.available();
            byte[] bArr = new byte[iAvailable];
            int i2 = inputStreamOpen.read(bArr);
            if (i2 != iAvailable) {
                C0982s.m7375e("filename = " + str + " readCount = " + i2 + ", length = " + iAvailable);
                z = false;
            } else {
                z = true;
            }
            m5750w1(str2, bArr);
            inputStreamOpen.close();
            return z;
        } catch (Exception e2) {
            C0982s.m7375e("BoxProtocol,copyAssetFiletoBox: \n" + Log.getStackTraceString(e2));
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: v0 */
    public boolean m5663v0(int i2) {
        boolean zBooleanValue = this.f4492r.m7405a().booleanValue();
        if (zBooleanValue) {
            l lVar = new l(0);
            lVar.f4534a.f4515c = i2;
            lVar.f4534a.f4514b = 0;
            lVar.m5785c();
            lVar.m5791j();
            synchronized (this) {
                if (!C0733d.m5587d0(lVar.m5789g(), lVar.m5790h())) {
                    C0982s.m7373c("BoxProtocol,sendCmd: cmd = " + i2 + ", ret = false");
                    zBooleanValue = false;
                }
            }
        } else {
            C0982s.m7375e("BoxProtocol,sendCmd: bOpened_ = false, cmd = " + i2);
        }
        return zBooleanValue;
    }

    /* JADX INFO: renamed from: w */
    private boolean m5664w(String str, String str2) {
        File file = new File(str);
        if (file.exists() && file.isFile()) {
            int length = (int) file.length();
            C0982s.m7373c("BoxProtocol,copyLocalFileToBox: " + str + ", length = " + length);
            if (length > 102400) {
                C0982s.m7373c("BoxProtocol,copyLocalFileToBox: The local file that needs to be sent to the box is larger than 100kb!!! ");
                return false;
            }
            try {
                byte[] bArr = new byte[length];
                FileInputStream fileInputStream = new FileInputStream(file);
                fileInputStream.read(bArr);
                fileInputStream.close();
                return m5750w1(str2, bArr);
            } catch (Exception e2) {
                C0982s.m7375e("BoxProtocol,copyLocalFileToBox: " + Log.getStackTraceString(e2));
            }
        }
        return false;
    }

    /* JADX INFO: renamed from: w0 */
    private boolean m5665w0(int i2, int i3) {
        boolean zBooleanValue = this.f4492r.m7405a().booleanValue();
        if (zBooleanValue) {
            l lVar = new l(4);
            lVar.f4534a.f4515c = i2;
            lVar.f4534a.f4514b = 4;
            lVar.m5785c();
            lVar.m5786d().putInt(0, i3);
            lVar.m5791j();
            synchronized (this) {
                zBooleanValue = C0733d.m5587d0(lVar.m5789g(), lVar.m5790h()) ? C0733d.m5587d0(lVar.m5787e(), lVar.m5788f()) : false;
                C0982s.m7373c("BoxProtocol,sendCmd: " + i2 + " " + i3 + " " + zBooleanValue);
            }
        } else {
            C0982s.m7375e("BoxProtocol,sendCmd: bOpened_ = false, cmd = " + i2 + "," + i3);
        }
        return zBooleanValue;
    }

    /* JADX INFO: renamed from: x */
    private String m5666x(int i2) {
        if (i2 == 16) {
            return "CarPlay_StartNightMode";
        }
        if (i2 == 17) {
            return "CarPlay_StopNightMode";
        }
        if (i2 == 30) {
            return "CarPlay_StartBleAdv";
        }
        if (i2 == 31) {
            return "CarPlay_StopBleAdv";
        }
        return BuildConfig.FLAVOR + i2;
    }

    /* JADX INFO: renamed from: z0 */
    private boolean m5667z0(String str, int i2) {
        try {
            return m5750w1(str + "\u0000", new byte[]{(byte) (i2 & 255), (byte) ((i2 >> 8) & 255), (byte) ((i2 >> 16) & 255), (byte) ((i2 >> 24) & 255)});
        } catch (Exception e2) {
            C0982s.m7375e(Log.getStackTraceString(e2));
            return false;
        }
    }

    /* JADX INFO: renamed from: A */
    public boolean m5668A() {
        C0982s.m7373c("BoxProtocol,getBluetoothOnlineList: 1013");
        return m5699T0(1013);
    }

    /* JADX INFO: renamed from: B */
    String m5669B() {
        return this.f4485k;
    }

    /* JADX INFO: renamed from: C */
    public String m5670C() {
        return !BuildConfig.FLAVOR.equals(this.f4485k) ? this.f4485k : "Auto Box";
    }

    /* JADX INFO: renamed from: D */
    public String m5671D() {
        return this.f4486l;
    }

    /* JADX INFO: renamed from: D0 */
    public boolean m5672D0(String str, Object obj) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put(str, obj);
            String string = jSONObject.toString();
            C0982s.m7374d("BoxProtocol", "sendInfo: " + string);
            return m5726h1(string.getBytes());
        } catch (JSONException unused) {
            return false;
        }
    }

    /* JADX INFO: renamed from: E */
    public String m5673E() {
        return this.f4484j;
    }

    /* JADX INFO: renamed from: E0 */
    public boolean m5674E0() {
        C0982s.m7374d("BoxProtocol", "sendManualDisconnectTemp: isUnauthorized=" + this.f4471J);
        return m5663v0(15);
    }

    /* JADX INFO: renamed from: F */
    public int m5675F() {
        return this.f4473L;
    }

    /* JADX INFO: renamed from: F0 */
    public boolean m5676F0(int i2) {
        return i2 == 1 ? m5699T0(15) : i2 == 2 ? m5699T0(21) : m5699T0(7);
    }

    /* JADX INFO: renamed from: G */
    public byte[] m5677G() {
        return this.f4472K;
    }

    /* JADX INFO: renamed from: G0 */
    public void m5678G0(C0734e c0734e) {
        if (this.f4492r.m7405a().booleanValue()) {
            l lVar = new l(c0734e.m5626a());
            lVar.f4534a.f4515c = 23;
            lVar.m5785c();
            c0734e.m5627c(lVar.m5786d(), 0);
            lVar.m5791j();
            synchronized (this) {
                if (!C0733d.m5587d0(lVar.m5789g(), lVar.m5790h())) {
                    C0982s.m7375e("Send multi touch head err");
                } else if (!C0733d.m5587d0(lVar.m5787e(), lVar.m5788f())) {
                    C0982s.m7375e("Send multi touch data err");
                }
            }
        }
    }

    /* JADX INFO: renamed from: H */
    public C0730a m5679H() {
        int i2 = this.f4468G;
        if (i2 == -1) {
            return null;
        }
        return m5754z(i2);
    }

    /* JADX INFO: renamed from: H0 */
    public void m5680H0() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("pid", Process.myPid());
        } catch (JSONException e2) {
            C0982s.m7374d("BoxProtocol", "sendPid: " + C0982s.m7377g(e2));
        }
        String string = jSONObject.toString();
        C0982s.m7374d("BoxProtocol", "sendPid: " + string);
        m5628A0(160, string, false);
    }

    /* JADX INFO: renamed from: I */
    public int m5681I() {
        return 0;
    }

    /* JADX INFO: renamed from: I0 */
    public void m5682I0(int i2, int i3, int i4, int i5) {
        if (this.f4492r.m7405a().booleanValue()) {
            l lVar = new l(16);
            lVar.f4534a.f4515c = 5;
            lVar.m5785c();
            if (i2 == 0) {
                lVar.m5786d().putInt(0, 14);
            } else if (i2 == 1) {
                lVar.m5786d().putInt(0, 15);
            } else if (i2 == 2) {
                lVar.m5786d().putInt(0, 16);
            }
            lVar.m5786d().putInt(0, (i3 << 8) | lVar.m5786d().getInt(0));
            lVar.m5786d().putInt(4, i4);
            lVar.m5786d().putInt(8, i5);
            lVar.m5786d().putInt(12, this.f4476b | (this.f4477c << 16));
            lVar.m5791j();
            synchronized (this) {
                if (!C0733d.m5587d0(lVar.m5789g(), lVar.m5790h())) {
                    C0982s.m7375e("Send touch head err");
                } else if (!C0733d.m5587d0(lVar.m5787e(), lVar.m5788f())) {
                    C0982s.m7375e("Send touch data err");
                }
            }
        }
    }

    /* JADX INFO: renamed from: J */
    public InterfaceC0937g m5683J() {
        return this.f4489o;
    }

    /* JADX INFO: renamed from: J0 */
    public boolean m5684J0(String str, int i2) {
        if (i2 > 0) {
            return m5672D0(str, Integer.valueOf(i2));
        }
        return false;
    }

    /* JADX INFO: renamed from: K */
    public int m5685K() {
        return f4457N;
    }

    /* JADX INFO: renamed from: K0 */
    public boolean m5686K0(int i2) {
        return i2 == 5 ? m5699T0(25) : m5699T0(24);
    }

    /* JADX INFO: renamed from: L */
    public String m5687L() {
        return this.f4483i;
    }

    /* JADX INFO: renamed from: L0 */
    public boolean m5688L0(int i2) {
        C0982s.m7375e("BoxProtocol,send_AndroidWorkMode: mode = " + i2);
        return m5667z0("/etc/android_work_mode", i2);
    }

    /* JADX INFO: renamed from: M0 */
    public boolean m5689M0(int i2) {
        C0982s.m7374d("BoxProtocol", "send_CarplayLogoType: type=" + i2);
        return m5665w0(9, i2);
    }

    /* JADX INFO: renamed from: N0 */
    public boolean m5690N0(int i2) {
        C0982s.m7373c("BoxProtocol,send_NightMode: " + i2 + " (0:day 1:night)");
        if (i2 == 0) {
            m5699T0(17);
        } else if (1 == i2) {
            m5699T0(16);
        } else {
            m5723f1("DayNightMode", 2);
        }
        return m5667z0("/tmp/night_mode", i2);
    }

    /* JADX INFO: renamed from: O0 */
    public boolean m5691O0() {
        return m5692P0(C0733d.m5569A() ? C0797c0.m6109i().m6119h() : C0797c0.m6109i().m6117f());
    }

    /* JADX INFO: renamed from: P0 */
    public boolean m5692P0(int i2) {
        C0982s.m7373c("BoxProtocol,send_ScreenDPI: " + i2);
        return m5667z0("/tmp/screen_dpi", i2);
    }

    /* JADX INFO: renamed from: Q */
    public void m5693Q() {
        this.f4465D = C0797c0.m6116t().f6158b;
        this.f4466E = C0797c0.m6116t().f6159c;
        C0982s.m7373c("BoxProtocol,initBoundSize: " + this.f4465D + "x" + this.f4466E);
    }

    /* JADX INFO: renamed from: Q0 */
    public boolean m5694Q0() {
        return m5663v0(21);
    }

    /* JADX INFO: renamed from: R0 */
    public boolean m5695R0(l lVar) {
        lVar.m5791j();
        synchronized (this) {
            if (!C0733d.m5587d0(lVar.m5789g(), lVar.m5790h())) {
                C0982s.m7375e("BoxProtocol,send_audio_record: Write audioRecord head err");
                return false;
            }
            if (C0733d.m5587d0(lVar.m5787e(), lVar.m5788f())) {
                return true;
            }
            C0982s.m7375e("BoxProtocol,send_audio_record: Write audioRecord data err");
            return false;
        }
    }

    /* JADX INFO: renamed from: S */
    public boolean m5696S() {
        return f4457N == 5;
    }

    /* JADX INFO: renamed from: S0 */
    public boolean m5697S0(byte[] bArr) {
        if (bArr == null) {
            return false;
        }
        l lVar = new l(0);
        lVar.f4534a.f4515c = 22;
        lVar.f4534a.f4514b = bArr.length + 4;
        lVar.m5785c();
        lVar.m5786d().putInt(0, 1);
        System.arraycopy(bArr, 0, lVar.m5787e(), 4, bArr.length);
        lVar.m5791j();
        synchronized (this) {
            if (!C0733d.m5587d0(lVar.m5789g(), lVar.m5790h())) {
                C0982s.m7375e("BoxProtocol,send_camera_info: Write head err");
                return false;
            }
            if (C0733d.m5587d0(lVar.m5787e(), lVar.m5788f())) {
                return true;
            }
            C0982s.m7375e("BoxProtocol,send_camera_info: Write data err");
            return false;
        }
    }

    /* JADX INFO: renamed from: T */
    public boolean m5698T() {
        return f4457N == 3;
    }

    /* JADX INFO: renamed from: T0 */
    public boolean m5699T0(int i2) {
        C0982s.m7374d("BoxProtocol", "send_carplay_cmd: " + m5666x(i2));
        return m5665w0(8, i2);
    }

    /* JADX INFO: renamed from: U */
    public boolean m5700U() {
        return f4457N == 6;
    }

    /* JADX INFO: renamed from: U0 */
    public boolean m5701U0(int i2) {
        return m5665w0(136, i2);
    }

    /* JADX INFO: renamed from: V */
    public boolean m5702V() {
        return k.f4525h == 0;
    }

    /* JADX INFO: renamed from: V0 */
    public boolean m5703V0() {
        boolean zM5587d0;
        while (this.f4488n <= 0) {
            this.f4488n = new Random().nextInt(Integer.MAX_VALUE);
        }
        l lVar = new l(4);
        lVar.f4534a.f4515c = 240;
        lVar.f4534a.f4514b = 4;
        lVar.m5785c();
        lVar.m5786d().putInt(0, this.f4488n);
        lVar.m5791j();
        C0733d.m5582W(this.f4488n);
        synchronized (this) {
            zM5587d0 = C0733d.m5587d0(lVar.m5789g(), lVar.m5790h()) ? C0733d.m5587d0(lVar.m5787e(), lVar.m5788f()) : false;
            C0982s.m7373c("BoxProtocol,sendCmd CMD_ENABLE_CRYPT: " + this.f4488n + ", ret = " + zM5587d0);
        }
        return zM5587d0;
    }

    /* JADX INFO: renamed from: W */
    public boolean m5704W() {
        return this.f4471J;
    }

    /* JADX INFO: renamed from: W0 */
    public boolean m5705W0(int i2) {
        return m5665w0(119, i2);
    }

    /* JADX INFO: renamed from: X0 */
    public boolean m5706X0() {
        if (m5704W()) {
            return false;
        }
        m5680H0();
        k kVar = this.f4491q;
        kVar.f4529c = C0925p.f5856C;
        if (C0925p.f5870g) {
            kVar.f4527a = this.f4465D;
            kVar.f4528b = this.f4466E;
            this.f4467F = 160;
            kVar.f4529c = 25;
        } else {
            kVar.f4527a = this.f4465D;
            kVar.f4528b = this.f4466E;
            if (C0733d.m5569A()) {
                this.f4467F = C0795b0.m6071i().m6091m("DPI", C0797c0.m6109i().m6119h());
            } else {
                this.f4467F = C0795b0.m6071i().m6091m("DPI", C0797c0.m6109i().m6117f());
            }
        }
        m5703V0();
        m5692P0(this.f4467F);
        C0982s.m7378h("BoxProtocol,send_g_open: AutoPlay Video resolution and frame rate: " + (BuildConfig.FLAVOR + this.f4491q.f4527a + "x" + this.f4491q.f4528b + "@" + this.f4491q.f4529c + "fps, dpi=" + this.f4467F) + ", Config.bUseSoftDecode = " + C0925p.f5870g);
        m5688L0(k.m5775d());
        int i2 = C0925p.f5881r;
        if (i2 < 0) {
            this.f4491q.f4532f = C0925p.m6857a();
        } else {
            this.f4491q.f4532f = i2;
        }
        C0982s.m7373c("BoxProtocol,send_g_open: g_Open.iBoxversion = " + this.f4491q.f4532f);
        int i3 = k.f4525h;
        if (i3 > 4 || i3 < 0) {
            C0982s.m7375e("BoxProtocol,send_g_open: error phoneWorkMode=" + k.f4525h);
            k.f4525h = 2;
        }
        C0982s.m7375e("BoxProtocol,send_g_open: phoneWorkMode=" + k.m5778h(k.f4525h) + ",androidWorkMode=" + k.m5772a(k.f4526i));
        l lVar = new l(k.m5777g());
        lVar.f4534a.f4515c = 1;
        lVar.f4534a.f4514b = k.m5777g();
        lVar.m5785c();
        byte[] bArrM5780e = this.f4491q.m5780e();
        System.arraycopy(bArrM5780e, 0, lVar.m5787e(), 0, bArrM5780e.length);
        lVar.m5791j();
        synchronized (this) {
            if (!C0733d.m5587d0(lVar.m5789g(), lVar.m5790h())) {
                C0982s.m7375e("BoxProtocol,send_g_open: Write g_Open head err");
                return false;
            }
            if (C0733d.m5587d0(lVar.m5787e(), lVar.m5788f())) {
                C0982s.m7375e("BoxProtocol,send_g_open: success ");
                return true;
            }
            C0982s.m7375e("BoxProtocol,send_g_open: Write g_Open data err");
            return false;
        }
    }

    /* JADX INFO: renamed from: Y0 */
    public void m5707Y0() {
        new Thread(new f(), "send_g_open_async").start();
    }

    /* JADX INFO: renamed from: Z0 */
    public boolean m5708Z0() {
        return m5750w1("/tmp/iphone_work_mode\u0000", new byte[]{0});
    }

    /* JADX INFO: renamed from: a */
    public boolean m5709a(Context context) {
        if (context != null) {
            return C0732c.m5542e().m5558p().compareTo("2022") > 0 ? m5661u(context, "other_link.hwfs") : m5661u(context, "adb") && m5661u(context, "adb.pub") && m5661u(context, "helloworld0") && m5661u(context, "helloworld1") && m5661u(context, "helloworld2") && m5661u(context, "libby265n.so") && m5661u(context, "libby265n_x86.so") && m5661u(context, "libscreencap40.so") && m5661u(context, "libscreencap41.so") && m5661u(context, "libscreencap43.so") && m5661u(context, "libscreencap50.so") && m5661u(context, "libscreencap50_x86.so") && m5661u(context, "libscreencap442.so") && m5661u(context, "libscreencap422.so") && m5661u(context, "mirrorcoper.apk") && m5661u(context, "libscreencap60.so") && m5661u(context, "libscreencap70.so") && m5661u(context, "libscreencap71.so") && m5661u(context, "libscreencap80.so") && m5661u(context, "libscreencap90.so") && m5661u(context, "libscreencap100.so") && m5661u(context, "HWTouch.dex");
        }
        C0982s.m7375e("BoxProtocol,UploadAssets: context==null");
        return false;
    }

    /* JADX INFO: renamed from: a1 */
    public void m5710a1() {
        new Thread(new g(), "send_invalidMode").start();
    }

    /* JADX INFO: renamed from: b */
    public void m5711b() {
    }

    /* JADX INFO: renamed from: b0 */
    public void m5712b0() {
        C0982s.m7374d("BoxProtocol", "reset: " + this);
        this.f4480f = false;
        f4459P = false;
        f4457N = -2;
        f4460Q = false;
        this.f4481g = true;
        f4458O = false;
        this.f4487m = false;
        this.f4482h = false;
        int i2 = k.f4525h;
    }

    /* JADX INFO: renamed from: b1 */
    public boolean m5713b1() {
        this.f4481g = false;
        f4458O = false;
        f4457N = -2;
        C0982s.m7374d("BoxProtocol", "send_manualDisconnect: isUnauthorized=" + this.f4471J);
        return m5663v0(15);
    }

    /* JADX INFO: renamed from: c */
    public void m5714c(Context context) {
        if (context == null || C0795b0.m6071i().m6091m("CarPlayLogoType", 1) == 2) {
            return;
        }
        C0795b0 c0795b0M6071i = C0795b0.m6071i();
        String str = BuildConfig.FLAVOR;
        String strM6092n = c0795b0M6071i.m6092n("CarPlayOEMIconName", BuildConfig.FLAVOR);
        if (!TextUtils.isEmpty(strM6092n) && !strM6092n.toLowerCase().contains("default") && !strM6092n.toLowerCase().contains("custom")) {
            str = "oemIconLabel = " + strM6092n + "\n";
        }
        m5750w1("/etc/airplay.conf\u0000", ("oemIconVisible = 1\n" + str + ("name = " + m5670C() + "\n") + "model = Magic-Car-Link-1.00\noemIconPath = /etc/oem_icon.png\n").getBytes());
    }

    /* JADX INFO: renamed from: c0 */
    public boolean m5715c0(int i2) {
        k kVar = this.f4491q;
        C0925p.f5856C = i2;
        kVar.f4529c = i2;
        return m5706X0();
    }

    /* JADX INFO: renamed from: c1 */
    public boolean m5716c1() {
        boolean z = false;
        l lVar = new l(0);
        lVar.f4534a.f4515c = 206;
        lVar.m5785c();
        lVar.m5791j();
        synchronized (this) {
            if (C0733d.m5587d0(lVar.m5789g(), lVar.m5790h())) {
                z = true;
            } else {
                C0982s.m7375e("BoxProtocol,sendCmd: CMD_BOX_REBOOT , ret = false");
            }
        }
        return z;
    }

    /* JADX INFO: renamed from: d */
    public void m5717d() {
    }

    /* JADX INFO: renamed from: d0 */
    public boolean m5718d0(int i2, int i3) {
        this.f4465D = i2;
        this.f4466E = i3;
        return m5706X0();
    }

    /* JADX INFO: renamed from: d1 */
    public void m5719d1(boolean z) {
        C0730a.m5425I(z);
    }

    /* JADX INFO: renamed from: e */
    public void m5720e() {
        m5722f(this.f4499y.get());
    }

    /* JADX INFO: renamed from: e1 */
    public boolean m5721e1(byte[] bArr) {
        C0982s.m7373c("BoxProtocol,setBoxBluetoothName: " + bArr.length);
        if (bArr.length <= 15) {
            return m5629B0(13, bArr, bArr.length);
        }
        C0982s.m7373c("BoxProtocol,setBoxBluetoothName: Bluetooth name is too long.");
        return false;
    }

    /* JADX INFO: renamed from: f */
    public void m5722f(Context context) {
        String strM6092n;
        int iM6091m;
        if (context == null) {
            return;
        }
        int iM6091m2 = C0795b0.m6071i().m6091m("CarPlayLogoType", 1);
        if (iM6091m2 == 2) {
            strM6092n = "carplay";
            iM6091m = 0;
        } else {
            strM6092n = C0795b0.m6071i().m6092n("CarPlayOEMIconPath", BuildConfig.FLAVOR);
            iM6091m = C0795b0.m6071i().m6091m("CarBrandId", 0);
        }
        m5746t0(iM6091m, 0);
        C0982s.m7373c("BoxProtocol,UploadLocalLogoPNGPublic: filePath = " + strM6092n);
        if (TextUtils.isEmpty(strM6092n)) {
            m5689M0(1);
            if (m5662v(context, "CarLogo/default.png", "/etc/icon_120x120.png\u0000")) {
                m5662v(context, "CarLogo/default.png", "/etc/icon_180x180.png\u0000");
                m5662v(context, "CarLogo/default.png", "/etc/icon_256x256.png\u0000");
                return;
            }
            return;
        }
        if (strM6092n.contains("custom")) {
            m5664w(strM6092n, "/etc/icon_120x120.png\u0000");
            m5664w(strM6092n, "/etc/icon_180x180.png\u0000");
            m5664w(strM6092n, "/etc/icon_256x256.png\u0000");
            m5714c(this.f4499y.get());
            return;
        }
        m5662v(context, strM6092n, "/etc/icon_120x120.png\u0000");
        m5662v(context, strM6092n, "/etc/icon_180x180.png\u0000");
        m5662v(context, strM6092n, "/etc/icon_256x256.png\u0000");
        if (iM6091m2 == 2) {
            m5689M0(2);
        } else {
            m5689M0(1);
            m5714c(this.f4499y.get());
        }
    }

    /* JADX INFO: renamed from: f1 */
    public boolean m5723f1(String str, int i2) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put(str, i2);
            String string = jSONObject.toString();
            C0982s.m7379i("BoxProtocol", "setBoxConfig: " + string);
            return m5643g1(string.getBytes());
        } catch (JSONException unused) {
            return false;
        }
    }

    /* JADX INFO: renamed from: g0 */
    public boolean m5724g0(int i2, int i3) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("androidAutoSizeW", i2);
            jSONObject.put("androidAutoSizeH", i3);
            String string = jSONObject.toString();
            C0982s.m7373c("BoxProtocol,sendAndroidAutoSize: " + string);
            return m5726h1(string.getBytes());
        } catch (JSONException e2) {
            C0982s.m7374d("BoxProtocol", "sendAndroidAutoSize: \n" + C0982s.m7377g(e2));
            return false;
        }
    }

    /* JADX INFO: renamed from: h0 */
    public boolean m5725h0() {
        if ((k.m5775d() == 3 || k.m5776f() == 3) && !this.f4490p) {
            if (m5709a(this.f4499y.get())) {
                this.f4490p = true;
            } else {
                C0982s.m7375e("BoxProtocol,sendAndroidWorkModeAssets: UploadAssets failed!");
            }
        }
        return this.f4490p;
    }

    /* JADX INFO: renamed from: h1 */
    public boolean m5726h1(byte[] bArr) {
        return m5629B0(25, bArr, bArr.length);
    }

    /* JADX INFO: renamed from: i0 */
    public boolean m5727i0() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("version", "2025.03.19.1126");
            jSONObject.put("code", 37);
            jSONObject.put("lang", BuildConfig.FLAVOR + C1002x.m7495c());
            jSONObject.put("uuid", C0953u.m7001z().m7010I());
            jSONObject.put("size", BuildConfig.FLAVOR + C0925p.f5874k + "x" + C0925p.f5875l);
            jSONObject.put("model", Build.MODEL);
            jSONObject.put("platform", C0925p.m6859c("ro.board.platform", BuildConfig.FLAVOR));
            jSONObject.put("android", BuildConfig.FLAVOR + Build.VERSION.RELEASE + "(" + Build.VERSION.SDK_INT + ")");
            jSONObject.put("huid", C0953u.m7001z().m7062w());
        } catch (JSONException e2) {
            C0982s.m7374d("BoxProtocol", "sendAppInfo: " + C0982s.m7377g(e2));
        }
        return m5729j0(jSONObject.toString().getBytes());
    }

    /* JADX INFO: renamed from: i1 */
    public boolean m5728i1(byte[] bArr) {
        C0982s.m7373c("BoxProtocol,setBoxWifiName: " + bArr.length);
        if (bArr.length <= 15) {
            return m5629B0(14, bArr, bArr.length);
        }
        C0982s.m7373c("BoxProtocol,setBoxWifiName: Wifi name is too long.");
        return false;
    }

    /* JADX INFO: renamed from: j0 */
    public boolean m5729j0(byte[] bArr) {
        return m5629B0(160, bArr, bArr.length);
    }

    /* JADX INFO: renamed from: j1 */
    public void m5730j1(int i2) {
        C0982s.m7373c("BoxProtocol,setBtPairedCount: count = " + i2);
        this.f4473L = i2;
    }

    /* JADX INFO: renamed from: k0 */
    public boolean m5731k0(boolean z) {
        this.f4469H = z;
        return z ? m5699T0(22) : m5699T0(23);
    }

    /* JADX INFO: renamed from: l0 */
    public boolean m5732l0(byte[] bArr) {
        C0982s.m7373c("BoxProtocol,sendAutoConnByBtAddr: " + bArr.length);
        if (bArr.length != 17) {
            return false;
        }
        return m5629B0(17, bArr, 17);
    }

    /* JADX INFO: renamed from: l1 */
    public void m5733l1(int i2) {
        this.f4468G = i2;
    }

    /* JADX INFO: renamed from: m0 */
    public boolean m5734m0() {
        C0982s.m7373c("BoxProtocol,sendAutoConnect: cmd=1002," + this.f4481g + ", bOpened_=" + this.f4492r.m7405a());
        if (m5704W() || !this.f4481g) {
            return false;
        }
        if (!this.f4482h) {
            return m5699T0(1002);
        }
        C0982s.m7376f("BoxProtocol", "sendAutoConnect: bBluetoothConnected=true");
        return false;
    }

    /* JADX INFO: renamed from: m1 */
    public void m5735m1(int i2) {
    }

    /* JADX INFO: renamed from: n0 */
    public boolean m5736n0(byte[] bArr) {
        C0982s.m7373c("BoxProtocol,sendBluetoothAddr: " + bArr.length);
        if (bArr.length != 17) {
            return false;
        }
        return m5629B0(10, bArr, 17);
    }

    /* JADX INFO: renamed from: n1 */
    public void m5737n1(boolean z) {
        this.f4471J = z;
        if (z) {
            C0982s.m7375e("BoxProtocol,setUnauthorized: " + z);
            C0733d.m5579O(1, 123);
        }
    }

    /* JADX INFO: renamed from: o0 */
    public boolean m5738o0(byte[] bArr, int i2) {
        C0982s.m7374d("BoxProtocol", "sendBluetoothPairedList: " + i2);
        return m5629B0(18, bArr, i2);
    }

    /* JADX INFO: renamed from: o1 */
    public boolean m5739o1(int i2) {
        return m5723f1("WiFiChannel", i2);
    }

    /* JADX INFO: renamed from: p0 */
    public boolean m5740p0(byte[] bArr) {
        C0982s.m7373c("BoxProtocol,sendBluetoothPinCode: " + bArr.length);
        if (bArr.length != 4) {
            return false;
        }
        return m5629B0(12, bArr, 4);
    }

    /* JADX INFO: renamed from: p1 */
    public void m5741p1(String str) {
    }

    /* JADX INFO: renamed from: q0 */
    public boolean m5742q0() {
        int iM6091m = C0795b0.m6071i().m6091m("mediaDelay", 300);
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("syncTime", TimeUnit.MILLISECONDS.toSeconds(System.currentTimeMillis()));
            jSONObject.put("mediaDelay", iM6091m);
            jSONObject.put("drivePosition", C0795b0.m6071i().m6093o("IsLeftDrive", true) ? 0 : 1);
            C0987x c0987xM6105b = C0797c0.m6105b(C0795b0.m6071i().m6091m("vandroidautoh", 720));
            jSONObject.put("androidAutoSizeW", c0987xM6105b.f6158b);
            jSONObject.put("androidAutoSizeH", c0987xM6105b.f6159c);
            jSONObject.put("HiCarConnectMode", m5681I());
            jSONObject.put("GNSSCapability", 7);
            jSONObject.put("DashboardInfo", 1);
            if (C0953u.m7001z().m7030b0()) {
                jSONObject.put("UseBTPhone", 1);
            } else {
                jSONObject.put("UseBTPhone", 0);
            }
            String string = jSONObject.toString();
            C0982s.m7373c("BoxProtocol,sendBoxAllSettings: " + string);
            return m5726h1(string.getBytes());
        } catch (JSONException e2) {
            C0982s.m7376f("BoxProtocol", "sendBoxAllSettings: " + C0982s.m7377g(e2));
            return false;
        }
    }

    /* JADX INFO: renamed from: q1 */
    public void m5743q1(String str) {
        this.f4483i = str;
    }

    /* JADX INFO: renamed from: r0 */
    public boolean m5744r0(byte[] bArr) {
        if (bArr.length <= 16) {
            return m5750w1("/etc/box_name\u0000", bArr);
        }
        C0982s.m7373c("BoxProtocol,sendBoxName: Box name is too long.");
        return false;
    }

    /* JADX INFO: renamed from: s0 */
    public boolean m5745s0(String str, Object obj) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put(str, obj);
            return m5726h1(jSONObject.toString().getBytes());
        } catch (JSONException unused) {
            return false;
        }
    }

    /* JADX INFO: renamed from: t0 */
    public boolean m5746t0(int i2, int i3) {
        C0982s.m7373c("BoxProtocol,sendCarManufacturerInfo: " + i2 + ", " + i3);
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(8);
        byteBufferAllocate.order(ByteOrder.LITTLE_ENDIAN);
        byteBufferAllocate.putInt(0, i2);
        byteBufferAllocate.putInt(4, i3);
        return m5629B0(20, byteBufferAllocate.array(), 8);
    }

    /* JADX INFO: renamed from: u0 */
    public boolean m5747u0(int i2) {
        C0982s.m7373c("BoxProtocol,sendChargeMode: " + i2);
        return m5667z0("/tmp/charge_mode", i2);
    }

    /* JADX INFO: renamed from: u1 */
    public void m5748u1() {
        if (this.f4494t == null) {
            this.f4494t = new Thread(new d(), "checkOpen");
        }
    }

    /* JADX INFO: renamed from: v1 */
    public void m5749v1() {
        if (this.f4496v == null) {
            C0853b c0853b = new C0853b();
            c0853b.m6344f("heartBeat-%d");
            ScheduledThreadPoolExecutor scheduledThreadPoolExecutor = new ScheduledThreadPoolExecutor(1, c0853b.m6343b());
            this.f4496v = scheduledThreadPoolExecutor;
            scheduledThreadPoolExecutor.scheduleAtFixedRate(new e(), 0L, 2000L, TimeUnit.MILLISECONDS);
        }
    }

    /* JADX INFO: renamed from: w1 */
    public boolean m5750w1(String str, byte[] bArr) {
        if (bArr.length > 52428800) {
            C0982s.m7376f("BoxProtocol", "upload_file_to_box: The file is too large. size=" + bArr.length);
            return false;
        }
        byte[] bytes = str.getBytes();
        int length = bytes.length;
        int length2 = bArr.length;
        int i2 = length + 4 + 4 + length2;
        l lVar = new l(i2);
        lVar.f4534a.f4515c = 153;
        lVar.f4534a.f4514b = i2;
        lVar.m5785c();
        lVar.m5786d().putInt(0, length);
        int i3 = 0;
        int i4 = 4;
        while (i3 < bytes.length) {
            lVar.m5786d().put(i4, bytes[i3]);
            i3++;
            i4++;
        }
        lVar.m5786d().putInt(i4, length2);
        System.arraycopy(bArr, 0, lVar.m5787e(), i4 + 4, length2);
        lVar.m5791j();
        synchronized (this) {
            if (!C0733d.m5587d0(lVar.m5789g(), lVar.m5790h())) {
                C0982s.m7375e("BoxProtocol,upload_file_to_box: Write carplay_cmd head err, boxFileName: " + str);
                return false;
            }
            if (C0733d.m5587d0(lVar.m5787e(), lVar.m5788f())) {
                C0982s.m7375e("BoxProtocol,upload_file_to_box: send_carplay_cmd() success , boxFileName: " + str);
                return true;
            }
            C0982s.m7375e("BoxProtocol,upload_file_to_box: Write carplay_cmd data err, boxFileName: " + str);
            return false;
        }
    }

    /* JADX INFO: renamed from: x0 */
    public void m5751x0(int i2) {
        if (this.f4492r.m7405a().booleanValue()) {
            l lVar = new l(16);
            lVar.f4534a.f4514b = 16;
            lVar.f4534a.f4515c = 5;
            lVar.m5785c();
            if (i2 == 0) {
                lVar.m5786d().putInt(0, 11);
            } else if (i2 == 1) {
                lVar.m5786d().putInt(0, 12);
            } else if (i2 != 2) {
                return;
            } else {
                lVar.m5786d().putInt(0, 13);
            }
            lVar.m5791j();
            synchronized (this) {
                if (!C0733d.m5587d0(lVar.m5789g(), lVar.m5790h())) {
                    C0982s.m7375e("Send commadn head err");
                } else if (!C0733d.m5587d0(lVar.m5787e(), lVar.m5788f())) {
                    C0982s.m7375e("Send command data err");
                }
            }
        }
    }

    /* JADX INFO: renamed from: y */
    public void m5752y() {
        this.f4464C = true;
        this.f4478d = 0;
        this.f4479e = 0;
        h hVar = this.f4462A;
        if (hVar != null) {
            hVar.m5756b();
            this.f4462A = null;
        }
        m5737n1(false);
        try {
            try {
                if (this.f4496v != null) {
                    this.f4496v.shutdown();
                }
                if (this.f4494t != null) {
                    this.f4494t.join(800L);
                }
                if (this.f4493s != null) {
                    this.f4493s.join(800L);
                }
                if (this.f4495u != null) {
                    this.f4495u.join(800L);
                }
                if (this.f4497w != null) {
                    synchronized (C0730a.f4322h) {
                        C0730a.f4322h.notify();
                    }
                    this.f4497w.join(800L);
                }
            } catch (InterruptedException e2) {
                C0982s.m7375e(Log.getStackTraceString(e2));
            }
            this.f4496v = null;
            this.f4493s = null;
            this.f4494t = null;
            this.f4495u = null;
            this.f4497w = null;
            Iterator<C0730a> it = this.f4463B.iterator();
            while (it.hasNext()) {
                it.next().m5452h();
            }
            this.f4463B.clear();
            C0731b c0731b = this.f4500z;
            if (c0731b != null) {
                c0731b.m5466e();
            }
            this.f4500z = null;
            m5712b0();
            C0982s.m7375e("BoxProtocol destroy()");
        } catch (Throwable th) {
            this.f4496v = null;
            this.f4493s = null;
            this.f4494t = null;
            this.f4495u = null;
            this.f4497w = null;
            throw th;
        }
    }

    /* JADX INFO: renamed from: y0 */
    public void m5753y0() {
        C0982s.m7373c("BoxProtocol,sendConfig: ");
        m5742q0();
        m5727i0();
        m5717d();
        m5720e();
        m5711b();
        m5690N0(C0795b0.m6071i().m6091m("NightMode", 2));
        m5747u0(C0795b0.m6071i().m6091m("ChargeMode", 0));
        if (C0982s.f6143a) {
            m5701U0(1);
        }
        String strM6092n = C0795b0.m6071i().m6092n("BtName", BuildConfig.FLAVOR);
        if (!TextUtils.isEmpty(strM6092n)) {
            C0982s.m7374d("BoxProtocol", "sendConfig: btName=" + strM6092n);
            m5721e1(strM6092n.getBytes());
        }
        String strM6092n2 = C0795b0.m6071i().m6092n("WifiName", BuildConfig.FLAVOR);
        if (!TextUtils.isEmpty(strM6092n2)) {
            m5728i1(strM6092n2.getBytes());
        }
        m5744r0(m5670C().getBytes());
        m5676F0(C0795b0.m6071i().m6091m("MicType", 0));
        m5686K0(C0795b0.m6071i().m6091m("wifi_type", 5));
        m5731k0(C0795b0.m6071i().m6093o("AudioTransferMode", false));
        if (C0795b0.m6071i().m6093o("MediaPlaying_" + m5685K(), false)) {
            m5699T0(201);
        }
    }

    /* JADX INFO: renamed from: z */
    public C0730a m5754z(int i2) {
        List<C0730a> list = this.f4463B;
        if (list == null || list.size() <= 0 || i2 < 0) {
            return null;
        }
        if (i2 < this.f4463B.size()) {
            return this.f4463B.get(i2);
        }
        return this.f4463B.get(r3.size() - 1);
    }

    /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.BoxInterface.f$l */
    class l {

        /* JADX INFO: renamed from: a */
        private i f4534a;

        /* JADX INFO: renamed from: b */
        private ByteBuffer f4535b;

        /* JADX INFO: renamed from: c */
        private ByteBuffer f4536c;

        public l() {
            i iVar = new i(C0735f.this);
            this.f4534a = iVar;
            ByteBuffer byteBufferAllocate = ByteBuffer.allocate(iVar.m5769m());
            this.f4535b = byteBufferAllocate;
            byteBufferAllocate.order(ByteOrder.LITTLE_ENDIAN);
            ByteBuffer byteBufferAllocate2 = ByteBuffer.allocate(1048576);
            this.f4536c = byteBufferAllocate2;
            byteBufferAllocate2.order(ByteOrder.LITTLE_ENDIAN);
        }

        /* JADX INFO: renamed from: i */
        private void m5784i(boolean z) {
            int i = this.f4534a.f4514b;
            if (!C0735f.this.f4487m || this.f4534a.f4514b == 0) {
                return;
            }
            int i2 = this.f4534a.f4515c;
            if (z && i2 != 6 && i2 != 7) {
                this.f4534a.m5765a();
            }
            if (this.f4534a.m5766b()) {
                try {
                    byte[] bArr = new byte[16];
                    for (int i3 = 0; i3 < 16; i3++) {
                        bArr[i3] = (byte) "SkBRDy3gmrw1ieH0".charAt((C0735f.this.f4488n + i3) % 16);
                    }
                    byte[] bArr2 = new byte[16];
                    bArr2[1] = (byte) (C0735f.this.f4488n & 255);
                    bArr2[4] = (byte) ((C0735f.this.f4488n >> 8) & 255);
                    bArr2[9] = (byte) ((C0735f.this.f4488n >> 16) & 255);
                    bArr2[12] = (byte) ((C0735f.this.f4488n >> 24) & 255);
                    byte[] bArrM5787e = m5787e();
                    if (!z) {
                        bArrM5787e = new byte[m5788f()];
                        System.arraycopy(m5787e(), 0, bArrM5787e, 0, i);
                    }
                    SecretKeySpec secretKeySpec = new SecretKeySpec(bArr, "AES");
                    IvParameterSpec ivParameterSpec = new IvParameterSpec(bArr2);
                    Cipher cipher = Cipher.getInstance("AES/CFB/NoPadding");
                    if (z) {
                        cipher.init(1, secretKeySpec, ivParameterSpec);
                    } else {
                        cipher.init(2, secretKeySpec, ivParameterSpec);
                    }
                    System.arraycopy(cipher.doFinal(bArrM5787e), 0, m5787e(), 0, i);
                } catch (Exception e) {
                    C0982s.m7374d("BoxProtocol", "handleCryptData: " + C0982s.m7377g(e));
                }
            }
        }

        /* JADX INFO: renamed from: c */
        public void m5785c() {
            if (this.f4534a.f4514b > this.f4536c.capacity()) {
                C0982s.m7375e("Out of dataBuffer.capacity");
                ByteBuffer byteBufferAllocate = ByteBuffer.allocate(this.f4534a.f4514b);
                this.f4536c = byteBufferAllocate;
                byteBufferAllocate.order(ByteOrder.LITTLE_ENDIAN);
            }
        }

        /* JADX INFO: renamed from: d */
        public ByteBuffer m5786d() {
            return this.f4536c;
        }

        /* JADX INFO: renamed from: e */
        public byte[] m5787e() {
            return this.f4536c.array();
        }

        /* JADX INFO: renamed from: f */
        public int m5788f() {
            return this.f4534a.f4514b;
        }

        /* JADX INFO: renamed from: g */
        public byte[] m5789g() {
            return this.f4535b.array();
        }

        /* JADX INFO: renamed from: h */
        public int m5790h() {
            return this.f4534a.m5769m();
        }

        /* JADX INFO: renamed from: j */
        public void m5791j() {
            m5784i(true);
            this.f4534a.m5768d();
            this.f4535b.putInt(0, this.f4534a.f4513a);
            this.f4535b.putInt(4, this.f4534a.f4514b);
            this.f4535b.putInt(8, this.f4534a.f4515c);
            this.f4535b.putInt(12, this.f4534a.f4516d);
        }

        /* JADX INFO: renamed from: k */
        public void m5792k() {
            m5784i(false);
        }

        /* JADX INFO: renamed from: l */
        public void m5793l() {
            this.f4534a.f4513a = this.f4535b.getInt(0);
            this.f4534a.f4514b = this.f4535b.getInt(4);
            this.f4534a.f4515c = this.f4535b.getInt(8);
            this.f4534a.f4516d = this.f4535b.getInt(12);
        }

        public l(int i) {
            i iVar = new i(C0735f.this);
            this.f4534a = iVar;
            ByteBuffer byteBufferAllocate = ByteBuffer.allocate(iVar.m5769m());
            this.f4535b = byteBufferAllocate;
            byteBufferAllocate.order(ByteOrder.LITTLE_ENDIAN);
            ByteBuffer byteBufferAllocate2 = ByteBuffer.allocate(i);
            this.f4536c = byteBufferAllocate2;
            byteBufferAllocate2.order(ByteOrder.LITTLE_ENDIAN);
            this.f4534a.f4514b = i;
        }
    }
}
