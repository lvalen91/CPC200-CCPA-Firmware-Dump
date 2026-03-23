package cn.manstep.phonemirrorBox.p091x0;

import android.app.Application;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.view.View;
import android.widget.CompoundButton;
import androidx.fragment.app.AbstractC0366n;
import androidx.lifecycle.C0384a;
import androidx.lifecycle.C0401o;
import androidx.lifecycle.LiveData;
import cn.manstep.phonemirrorBox.C0795b0;
import cn.manstep.phonemirrorBox.C0925p;
import cn.manstep.phonemirrorBox.C0953u;
import cn.manstep.phonemirrorBox.p072f0.C0826b;
import cn.manstep.phonemirrorBox.p072f0.C0829e;
import cn.manstep.phonemirrorBox.p072f0.C0830f;
import cn.manstep.phonemirrorBox.p072f0.C0831g;
import cn.manstep.phonemirrorBox.p077k0.C0884c;
import cn.manstep.phonemirrorBox.util.C0982s;
import java.util.Locale;

/* JADX INFO: renamed from: cn.manstep.phonemirrorBox.x0.a */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class C1003a extends C0384a {

    /* JADX INFO: renamed from: d */
    public final boolean f6237d;

    /* JADX INFO: renamed from: e */
    private final C0401o<Integer> f6238e;

    /* JADX INFO: renamed from: f */
    private final C0401o<Integer> f6239f;

    /* JADX INFO: renamed from: g */
    private final C0401o<Integer> f6240g;

    /* JADX INFO: renamed from: h */
    private final C0401o<Integer> f6241h;

    /* JADX INFO: renamed from: i */
    private final C0401o<Integer> f6242i;

    /* JADX INFO: renamed from: j */
    private final C0401o<Integer> f6243j;

    /* JADX INFO: renamed from: k */
    private final C0401o<Integer> f6244k;

    /* JADX INFO: renamed from: l */
    private final C0401o<Integer> f6245l;

    /* JADX INFO: renamed from: m */
    private final C0401o<Boolean> f6246m;

    /* JADX INFO: renamed from: n */
    private final C0401o<Boolean> f6247n;

    /* JADX INFO: renamed from: o */
    private final C0401o<Boolean> f6248o;

    /* JADX INFO: renamed from: p */
    private final C0401o<Boolean> f6249p;

    /* JADX INFO: renamed from: q */
    private final C0401o<Integer> f6250q;

    /* JADX INFO: renamed from: r */
    private final C0401o<Boolean> f6251r;

    /* JADX INFO: renamed from: s */
    private final AbstractC0366n f6252s;

    /* JADX INFO: renamed from: t */
    private final C0401o<Integer> f6253t;

    /* JADX INFO: renamed from: u */
    public C0401o<Boolean> f6254u;

    /* JADX INFO: renamed from: v */
    private final C0401o<Integer> f6255v;

    /* JADX INFO: renamed from: w */
    private final C0401o<Integer> f6256w;

    /* JADX INFO: renamed from: x */
    private k f6257x;

    /* JADX INFO: renamed from: y */
    private C0401o<Integer> f6258y;

    /* JADX INFO: renamed from: z */
    private final C0401o<Boolean>[] f6259z;

    /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.x0.a$a */
    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            C1003a.this.m7504P();
        }
    }

    /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.x0.a$b */
    class b implements C0884c.b {
        b() {
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // cn.manstep.phonemirrorBox.p077k0.C0884c.b
        /* JADX INFO: renamed from: a */
        public void mo6553a(int i) {
            C1003a.this.f6242i.mo2965k(Integer.valueOf(i));
            C0795b0 c0795b0M6071i = C0795b0.m6071i();
            C1003a c1003a = C1003a.this;
            c0795b0M6071i.m6085F("NVAudioType", Integer.valueOf(c1003a.m7506S((Integer) c1003a.f6238e.m2959e(), (Integer) C1003a.this.f6242i.m2959e())));
            if (C1003a.this.f6257x != null) {
                C1003a.this.f6257x.mo6645a();
            }
        }
    }

    /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.x0.a$c */
    class c implements C0884c.b {
        c() {
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // cn.manstep.phonemirrorBox.p077k0.C0884c.b
        /* JADX INFO: renamed from: a */
        public void mo6553a(int i) {
            C1003a.this.f6243j.mo2965k(Integer.valueOf(i));
            C0795b0 c0795b0M6071i = C0795b0.m6071i();
            C1003a c1003a = C1003a.this;
            c0795b0M6071i.m6085F("CallAudioType", Integer.valueOf(c1003a.m7506S((Integer) c1003a.f6239f.m2959e(), (Integer) C1003a.this.f6243j.m2959e())));
            if (C1003a.this.f6257x != null) {
                C1003a.this.f6257x.mo6645a();
            }
        }
    }

    /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.x0.a$d */
    class d implements C0884c.b {
        d() {
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // cn.manstep.phonemirrorBox.p077k0.C0884c.b
        /* JADX INFO: renamed from: a */
        public void mo6553a(int i) {
            C1003a.this.f6244k.mo2965k(Integer.valueOf(i));
            C0795b0 c0795b0M6071i = C0795b0.m6071i();
            C1003a c1003a = C1003a.this;
            c0795b0M6071i.m6085F("VAAudioType", Integer.valueOf(c1003a.m7506S((Integer) c1003a.f6240g.m2959e(), (Integer) C1003a.this.f6244k.m2959e())));
            if (C1003a.this.f6257x != null) {
                C1003a.this.f6257x.mo6645a();
            }
        }
    }

    /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.x0.a$e */
    class e implements C0884c.b {
        e() {
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // cn.manstep.phonemirrorBox.p077k0.C0884c.b
        /* JADX INFO: renamed from: a */
        public void mo6553a(int i) {
            C1003a.this.f6238e.mo2965k(Integer.valueOf(i));
            C0795b0 c0795b0M6071i = C0795b0.m6071i();
            C1003a c1003a = C1003a.this;
            c0795b0M6071i.m6085F("NVAudioType", Integer.valueOf(c1003a.m7506S((Integer) c1003a.f6238e.m2959e(), (Integer) C1003a.this.f6242i.m2959e())));
            if (C1003a.this.f6257x != null) {
                C1003a.this.f6257x.mo6645a();
            }
        }
    }

    /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.x0.a$f */
    class f implements C0884c.b {
        f() {
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // cn.manstep.phonemirrorBox.p077k0.C0884c.b
        /* JADX INFO: renamed from: a */
        public void mo6553a(int i) {
            C1003a.this.f6239f.mo2965k(Integer.valueOf(i));
            C0795b0 c0795b0M6071i = C0795b0.m6071i();
            C1003a c1003a = C1003a.this;
            c0795b0M6071i.m6085F("CallAudioType", Integer.valueOf(c1003a.m7506S((Integer) c1003a.f6239f.m2959e(), (Integer) C1003a.this.f6243j.m2959e())));
            if (C1003a.this.f6257x != null) {
                C1003a.this.f6257x.mo6645a();
            }
        }
    }

    /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.x0.a$g */
    class g implements C0884c.b {
        g() {
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // cn.manstep.phonemirrorBox.p077k0.C0884c.b
        /* JADX INFO: renamed from: a */
        public void mo6553a(int i) {
            C1003a.this.f6240g.mo2965k(Integer.valueOf(i));
            C0795b0 c0795b0M6071i = C0795b0.m6071i();
            C1003a c1003a = C1003a.this;
            c0795b0M6071i.m6085F("VAAudioType", Integer.valueOf(c1003a.m7506S((Integer) c1003a.f6240g.m2959e(), (Integer) C1003a.this.f6244k.m2959e())));
            if (C1003a.this.f6257x != null) {
                C1003a.this.f6257x.mo6645a();
            }
        }
    }

    /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.x0.a$h */
    class h implements C0884c.b {
        h() {
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // cn.manstep.phonemirrorBox.p077k0.C0884c.b
        /* JADX INFO: renamed from: a */
        public void mo6553a(int i) {
            C1003a.this.f6245l.mo2965k(Integer.valueOf(i));
            C0795b0 c0795b0M6071i = C0795b0.m6071i();
            C1003a c1003a = C1003a.this;
            c0795b0M6071i.m6085F("RingAudioType", Integer.valueOf(c1003a.m7506S((Integer) c1003a.f6241h.m2959e(), (Integer) C1003a.this.f6245l.m2959e())));
            if (C1003a.this.f6257x != null) {
                C1003a.this.f6257x.mo6645a();
            }
        }
    }

    /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.x0.a$i */
    class i implements C0884c.b {
        i() {
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // cn.manstep.phonemirrorBox.p077k0.C0884c.b
        /* JADX INFO: renamed from: a */
        public void mo6553a(int i) {
            C1003a.this.f6241h.mo2965k(Integer.valueOf(i));
            C0795b0 c0795b0M6071i = C0795b0.m6071i();
            C1003a c1003a = C1003a.this;
            c0795b0M6071i.m6085F("RingAudioType", Integer.valueOf(c1003a.m7506S((Integer) c1003a.f6241h.m2959e(), (Integer) C1003a.this.f6245l.m2959e())));
            if (C1003a.this.f6257x != null) {
                C1003a.this.f6257x.mo6645a();
            }
        }
    }

    /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.x0.a$j */
    class j implements C0884c.b {
        j() {
        }

        @Override // cn.manstep.phonemirrorBox.p077k0.C0884c.b
        /* JADX INFO: renamed from: a */
        public void mo6553a(int i) {
            C1003a.this.f6255v.mo2965k(Integer.valueOf(i));
            C0795b0.m6071i().m6085F("RecordSource", C1003a.this.f6255v.m2959e());
        }
    }

    /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.x0.a$k */
    public interface k {
        /* JADX INFO: renamed from: a */
        void mo6645a();
    }

    public C1003a(Application application, AbstractC0366n abstractC0366n) {
        super(application);
        int i2 = 0;
        this.f6237d = Build.VERSION.SDK_INT >= 26;
        this.f6254u = new C0401o<>(Boolean.FALSE);
        this.f6259z = new C0401o[8];
        this.f6252s = abstractC0366n;
        this.f6238e = new C0401o<>(0);
        this.f6239f = new C0401o<>(0);
        this.f6240g = new C0401o<>(0);
        this.f6241h = new C0401o<>(0);
        this.f6242i = new C0401o<>(0);
        this.f6243j = new C0401o<>(0);
        this.f6244k = new C0401o<>(0);
        this.f6245l = new C0401o<>(0);
        this.f6256w = new C0401o<>(1);
        this.f6246m = new C0401o<>(Boolean.FALSE);
        this.f6247n = new C0401o<>(Boolean.FALSE);
        this.f6249p = new C0401o<>(Boolean.FALSE);
        this.f6248o = new C0401o<>(Boolean.FALSE);
        this.f6253t = new C0401o<>(16000);
        if (C0953u.m7001z().m7028a0()) {
            this.f6253t.mo2965k(48000);
        }
        this.f6250q = new C0401o<>(0);
        this.f6251r = new C0401o<>();
        this.f6255v = new C0401o<>(Integer.valueOf(C0795b0.m6071i().m6091m("RecordSource", C0953u.m7001z().m7007F())));
        this.f6258y = new C0401o<>(0);
        while (true) {
            C0401o<Boolean>[] c0401oArr = this.f6259z;
            if (i2 >= c0401oArr.length) {
                m7504P();
                return;
            } else {
                c0401oArr[i2] = new C0401o<>(Boolean.FALSE);
                i2++;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: P */
    public void m7504P() {
        if (Build.VERSION.SDK_INT >= 26) {
            this.f6242i.mo2965k(Integer.valueOf(C0829e.m6240j().m6207a()));
            this.f6238e.mo2965k(Integer.valueOf(C0829e.m6240j().m6209c()));
            this.f6243j.mo2965k(Integer.valueOf(C0826b.m6214j().m6207a()));
            this.f6239f.mo2965k(Integer.valueOf(C0826b.m6214j().m6209c()));
            this.f6244k.mo2965k(Integer.valueOf(C0831g.m6258j().m6207a()));
            this.f6240g.mo2965k(Integer.valueOf(C0831g.m6258j().m6209c()));
            this.f6245l.mo2965k(Integer.valueOf(C0830f.m6249j().m6207a()));
            this.f6241h.mo2965k(Integer.valueOf(C0830f.m6249j().m6209c()));
        } else {
            this.f6238e.mo2965k(Integer.valueOf(C0829e.m6240j().m6209c()));
            this.f6239f.mo2965k(Integer.valueOf(C0826b.m6214j().m6209c()));
            this.f6240g.mo2965k(Integer.valueOf(C0831g.m6258j().m6209c()));
            this.f6241h.mo2965k(Integer.valueOf(C0830f.m6249j().m6209c()));
        }
        int[] iArrM7519v = m7519v(C0795b0.m6071i().m6091m("NVAudioType", 0));
        if (iArrM7519v[0] != 0 || iArrM7519v[1] != 0) {
            this.f6238e.mo2965k(Integer.valueOf(iArrM7519v[0]));
            this.f6242i.mo2965k(Integer.valueOf(iArrM7519v[1]));
        }
        int[] iArrM7519v2 = m7519v(C0795b0.m6071i().m6091m("CallAudioType", 0));
        if (iArrM7519v2[0] != 0 || iArrM7519v2[1] != 0) {
            this.f6239f.mo2965k(Integer.valueOf(iArrM7519v2[0]));
            this.f6243j.mo2965k(Integer.valueOf(iArrM7519v2[1]));
        }
        int[] iArrM7519v3 = m7519v(C0795b0.m6071i().m6091m("VAAudioType", 0));
        if (iArrM7519v3[0] != 0 || iArrM7519v3[1] != 0) {
            this.f6240g.mo2965k(Integer.valueOf(iArrM7519v3[0]));
            this.f6244k.mo2965k(Integer.valueOf(iArrM7519v3[1]));
        }
        int[] iArrM7519v4 = m7519v(C0795b0.m6071i().m6091m("RingAudioType", 0));
        if (iArrM7519v4[0] != 0 || iArrM7519v4[1] != 0) {
            this.f6241h.mo2965k(Integer.valueOf(iArrM7519v4[0]));
            this.f6245l.mo2965k(Integer.valueOf(iArrM7519v4[1]));
        }
        this.f6251r.mo2965k(Boolean.valueOf(C0795b0.m6071i().m6093o("LowerAudioAPI", Build.VERSION.SDK_INT < 26)));
        int iM6091m = C0795b0.m6071i().m6091m("RecordChannel", C0953u.m7001z().m7005D());
        C0982s.m7374d("AudioDebug", "init: channelIndex=" + iM6091m);
        this.f6258y.mo2965k(Integer.valueOf(iM6091m));
        if (this.f6258y.m2959e().intValue() == 0) {
            this.f6258y.mo2965k(16);
            this.f6256w.mo2965k(1);
            return;
        }
        for (int i2 = 0; i2 < 8; i2++) {
            boolean z = ((1 << i2) & iM6091m) != 0;
            C0982s.m7374d("AudioDebug", "init: " + i2 + " " + z);
            this.f6259z[i2].mo2965k(Boolean.valueOf(z));
        }
        this.f6256w.mo2965k(3);
    }

    /* JADX INFO: renamed from: R */
    private void m7505R() {
        this.f6259z[0].mo2965k(Boolean.TRUE);
        this.f6259z[1].mo2965k(Boolean.TRUE);
        int i2 = 2;
        while (true) {
            C0401o<Boolean>[] c0401oArr = this.f6259z;
            if (i2 >= c0401oArr.length) {
                this.f6258y.mo2965k(3);
                C0795b0.m6071i().m6085F("RecordChannel", 3);
                return;
            } else {
                c0401oArr[i2].mo2965k(Boolean.FALSE);
                i2++;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: S */
    public int m7506S(Integer num, Integer num2) {
        int iIntValue = num != null ? num.intValue() : 0;
        int iIntValue2 = num2 != null ? num2.intValue() : 0;
        int i2 = ((iIntValue2 << 16) & (-65536)) | (65535 & iIntValue);
        C0982s.m7374d("AudioDebug", "setAudioType: usage=" + iIntValue + ",contentType=" + iIntValue2 + ",value=" + i2);
        return i2;
    }

    /* JADX INFO: renamed from: v */
    private int[] m7519v(int i2) {
        C0982s.m7374d("AudioDebug", "getAudioType: type=" + i2);
        int i3 = (i2 >> 16) & 65535;
        int i4 = i2 & 65535;
        C0982s.m7374d("AudioDebug", "getAudioType: contentType=" + i3 + ",usage=" + i4);
        return new int[]{i4, i3};
    }

    /* JADX INFO: renamed from: A */
    public LiveData<Boolean> m7520A(int i2) {
        C0982s.m7374d("AudioDebug", "SoundChannel[" + i2 + "]=" + this.f6259z[i2].m2959e());
        return this.f6259z[i2];
    }

    /* JADX INFO: renamed from: B */
    public C0401o<Integer> m7521B() {
        return this.f6242i;
    }

    /* JADX INFO: renamed from: C */
    public C0401o<Integer> m7522C() {
        return this.f6238e;
    }

    /* JADX INFO: renamed from: D */
    public C0401o<Integer> m7523D() {
        return this.f6250q;
    }

    /* JADX INFO: renamed from: E */
    public C0401o<Boolean> m7524E() {
        return this.f6249p;
    }

    /* JADX INFO: renamed from: F */
    public C0401o<Integer> m7525F() {
        return this.f6256w;
    }

    /* JADX INFO: renamed from: G */
    public C0401o<Integer> m7526G() {
        return this.f6255v;
    }

    /* JADX INFO: renamed from: H */
    public C0401o<Boolean> m7527H() {
        return this.f6248o;
    }

    /* JADX INFO: renamed from: I */
    public C0401o<Integer> m7528I() {
        return this.f6245l;
    }

    /* JADX INFO: renamed from: J */
    public C0401o<Integer> m7529J() {
        return this.f6241h;
    }

    /* JADX INFO: renamed from: K */
    public C0401o<Integer> m7530K() {
        return this.f6253t;
    }

    /* JADX INFO: renamed from: L */
    public C0401o<Integer> m7531L() {
        return this.f6258y;
    }

    /* JADX INFO: renamed from: M */
    public C0401o<Boolean> m7532M() {
        return this.f6246m;
    }

    /* JADX INFO: renamed from: N */
    public C0401o<Integer> m7533N() {
        return this.f6244k;
    }

    /* JADX INFO: renamed from: O */
    public C0401o<Integer> m7534O() {
        return this.f6240g;
    }

    /* JADX INFO: renamed from: Q */
    public void m7535Q() {
        C0982s.m7374d("AudioDebug", "ready to reset");
        C0795b0.m6071i().m6086a();
        m7550h0(16000);
        this.f6247n.mo2965k(Boolean.FALSE);
        this.f6246m.mo2965k(Boolean.FALSE);
        this.f6254u.mo2965k(Boolean.FALSE);
        new Handler(Looper.myLooper()).postDelayed(new a(), 500L);
    }

    /* JADX INFO: renamed from: T */
    public void m7536T() {
        C0884c.m6547B2(this.f6252s, "电话音频", 10, this.f6243j.m2959e() == null ? 0 : this.f6243j.m2959e().intValue(), new c());
    }

    /* JADX INFO: renamed from: U */
    public void m7537U() {
        if (this.f6251r.m2959e() == null || this.f6251r.m2959e().booleanValue()) {
        }
        C0884c.m6547B2(this.f6252s, "电话音频", 40, this.f6239f.m2959e() != null ? this.f6239f.m2959e().intValue() : 0, new f());
    }

    /* JADX INFO: renamed from: V */
    public void m7538V(k kVar) {
        this.f6257x = kVar;
    }

    /* JADX INFO: renamed from: W */
    public void m7539W(View view) {
        boolean zIsChecked = ((CompoundButton) view).isChecked();
        this.f6251r.mo2965k(Boolean.valueOf(zIsChecked));
        C0795b0.m6071i().m6085F("LowerAudioAPI", Boolean.valueOf(zIsChecked));
        C0795b0.m6071i().m6085F("NVAudioType", Integer.valueOf(m7506S(this.f6238e.m2959e(), this.f6242i.m2959e())));
        C0795b0.m6071i().m6085F("VAAudioType", Integer.valueOf(m7506S(this.f6240g.m2959e(), this.f6244k.m2959e())));
        C0795b0.m6071i().m6085F("CallAudioType", Integer.valueOf(m7506S(this.f6239f.m2959e(), this.f6243j.m2959e())));
        C0795b0.m6071i().m6085F("RingAudioType", Integer.valueOf(m7506S(this.f6241h.m2959e(), this.f6245l.m2959e())));
    }

    /* JADX INFO: renamed from: X */
    public void m7540X(int i2, View view) {
        if (view instanceof CompoundButton) {
            int iIntValue = this.f6258y.m2959e().intValue();
            boolean zIsChecked = ((CompoundButton) view).isChecked();
            this.f6259z[i2].mo2965k(Boolean.valueOf(zIsChecked));
            int i3 = zIsChecked ? (1 << i2) | iIntValue : ((1 << i2) ^ (-1)) & iIntValue;
            this.f6258y.mo2965k(Integer.valueOf(i3));
            C0795b0.m6071i().m6085F("RecordChannel", Integer.valueOf(i3));
            C0982s.m7374d("AudioDebug", "setMultiSoundChannel: " + String.format(Locale.CHINA, "%d, 0x%x", Integer.valueOf(i3), Integer.valueOf(i3)));
        }
    }

    /* JADX INFO: renamed from: Y */
    public void m7541Y() {
        C0884c.m6547B2(this.f6252s, "导航音频", 10, this.f6242i.m2959e() == null ? 0 : this.f6242i.m2959e().intValue(), new b());
    }

    /* JADX INFO: renamed from: Z */
    public void m7542Z() {
        if (this.f6251r.m2959e() == null || this.f6251r.m2959e().booleanValue()) {
        }
        C0884c.m6547B2(this.f6252s, "导航音频", 40, this.f6238e.m2959e() != null ? this.f6238e.m2959e().intValue() : 0, new e());
    }

    /* JADX INFO: renamed from: a0 */
    public void m7543a0(int i2) {
        this.f6250q.mo2965k(Integer.valueOf(i2));
    }

    /* JADX INFO: renamed from: b0 */
    public void m7544b0(boolean z) {
        this.f6249p.mo2965k(Boolean.valueOf(z));
    }

    /* JADX INFO: renamed from: c0 */
    public void m7545c0(int i2) {
        this.f6256w.mo2965k(Integer.valueOf(i2));
        if (i2 == 3) {
            m7505R();
        } else {
            C0795b0.m6071i().m6085F("RecordChannel", 0);
        }
    }

    /* JADX INFO: renamed from: d0 */
    public void m7546d0() {
        C0884c.m6547B2(this.f6252s, "录音源", 10, this.f6255v.m2959e().intValue(), new j());
    }

    /* JADX INFO: renamed from: e0 */
    public void m7547e0(boolean z) {
        this.f6248o.mo2965k(Boolean.valueOf(z));
    }

    /* JADX INFO: renamed from: f0 */
    public void m7548f0() {
        C0884c.m6547B2(this.f6252s, "铃声音频", 5, this.f6245l.m2959e() == null ? 0 : this.f6245l.m2959e().intValue(), new h());
    }

    /* JADX INFO: renamed from: g0 */
    public void m7549g0() {
        if (this.f6251r.m2959e() == null || this.f6251r.m2959e().booleanValue()) {
        }
        C0884c.m6547B2(this.f6252s, "铃声音频", 40, this.f6241h.m2959e() != null ? this.f6241h.m2959e().intValue() : 0, new i());
    }

    /* JADX INFO: renamed from: h0 */
    public void m7550h0(int i2) {
        this.f6253t.mo2965k(Integer.valueOf(i2));
        C0925p.f5883t = i2 == 48000;
    }

    /* JADX INFO: renamed from: i0 */
    public void m7551i0() {
        C0884c.m6547B2(this.f6252s, "语音音频", 10, this.f6244k.m2959e() == null ? 0 : this.f6244k.m2959e().intValue(), new d());
    }

    /* JADX INFO: renamed from: j0 */
    public void m7552j0() {
        if (this.f6251r.m2959e() == null || this.f6251r.m2959e().booleanValue()) {
        }
        C0884c.m6547B2(this.f6252s, "语音音频", 40, this.f6240g.m2959e() != null ? this.f6240g.m2959e().intValue() : 0, new g());
    }

    /* JADX INFO: renamed from: w */
    public C0401o<Integer> m7553w() {
        return this.f6243j;
    }

    /* JADX INFO: renamed from: x */
    public C0401o<Integer> m7554x() {
        return this.f6239f;
    }

    /* JADX INFO: renamed from: y */
    public C0401o<Boolean> m7555y() {
        return this.f6247n;
    }

    /* JADX INFO: renamed from: z */
    public C0401o<Boolean> m7556z() {
        return this.f6251r;
    }
}
