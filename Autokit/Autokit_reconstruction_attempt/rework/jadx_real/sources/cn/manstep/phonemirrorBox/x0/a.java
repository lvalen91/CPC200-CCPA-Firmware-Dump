package cn.manstep.phonemirrorBox.x0;

import android.app.Application;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.view.View;
import android.widget.CompoundButton;
import androidx.fragment.app.n;
import androidx.lifecycle.LiveData;
import androidx.lifecycle.o;
import cn.manstep.phonemirrorBox.b0;
import cn.manstep.phonemirrorBox.k0.c;
import cn.manstep.phonemirrorBox.p;
import cn.manstep.phonemirrorBox.u;
import cn.manstep.phonemirrorBox.util.s;
import java.util.Locale;

/* JADX INFO: loaded from: /Volumes/stuff/macbook/misc/CPC200-CCPA/rework/dumped_real_classes.dex */
public class a extends androidx.lifecycle.a {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final boolean f1960d;
    private final o<Integer> e;
    private final o<Integer> f;
    private final o<Integer> g;
    private final o<Integer> h;
    private final o<Integer> i;
    private final o<Integer> j;
    private final o<Integer> k;
    private final o<Integer> l;
    private final o<Boolean> m;
    private final o<Boolean> n;
    private final o<Boolean> o;
    private final o<Boolean> p;
    private final o<Integer> q;
    private final o<Boolean> r;
    private final n s;
    private final o<Integer> t;
    public o<Boolean> u;
    private final o<Integer> v;
    private final o<Integer> w;
    private k x;
    private o<Integer> y;
    private final o<Boolean>[] z;

    /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.x0.a$a, reason: collision with other inner class name */
    class RunnableC0101a implements Runnable {
        RunnableC0101a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            a.this.P();
        }
    }

    class b implements c.b {
        b() {
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // cn.manstep.phonemirrorBox.k0.c.b
        public void a(int i) {
            a.this.i.k(Integer.valueOf(i));
            b0 b0VarI = b0.i();
            a aVar = a.this;
            b0VarI.F("NVAudioType", Integer.valueOf(aVar.S((Integer) aVar.e.e(), (Integer) a.this.i.e())));
            if (a.this.x != null) {
                a.this.x.a();
            }
        }
    }

    class c implements c.b {
        c() {
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // cn.manstep.phonemirrorBox.k0.c.b
        public void a(int i) {
            a.this.j.k(Integer.valueOf(i));
            b0 b0VarI = b0.i();
            a aVar = a.this;
            b0VarI.F("CallAudioType", Integer.valueOf(aVar.S((Integer) aVar.f.e(), (Integer) a.this.j.e())));
            if (a.this.x != null) {
                a.this.x.a();
            }
        }
    }

    class d implements c.b {
        d() {
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // cn.manstep.phonemirrorBox.k0.c.b
        public void a(int i) {
            a.this.k.k(Integer.valueOf(i));
            b0 b0VarI = b0.i();
            a aVar = a.this;
            b0VarI.F("VAAudioType", Integer.valueOf(aVar.S((Integer) aVar.g.e(), (Integer) a.this.k.e())));
            if (a.this.x != null) {
                a.this.x.a();
            }
        }
    }

    class e implements c.b {
        e() {
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // cn.manstep.phonemirrorBox.k0.c.b
        public void a(int i) {
            a.this.e.k(Integer.valueOf(i));
            b0 b0VarI = b0.i();
            a aVar = a.this;
            b0VarI.F("NVAudioType", Integer.valueOf(aVar.S((Integer) aVar.e.e(), (Integer) a.this.i.e())));
            if (a.this.x != null) {
                a.this.x.a();
            }
        }
    }

    class f implements c.b {
        f() {
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // cn.manstep.phonemirrorBox.k0.c.b
        public void a(int i) {
            a.this.f.k(Integer.valueOf(i));
            b0 b0VarI = b0.i();
            a aVar = a.this;
            b0VarI.F("CallAudioType", Integer.valueOf(aVar.S((Integer) aVar.f.e(), (Integer) a.this.j.e())));
            if (a.this.x != null) {
                a.this.x.a();
            }
        }
    }

    class g implements c.b {
        g() {
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // cn.manstep.phonemirrorBox.k0.c.b
        public void a(int i) {
            a.this.g.k(Integer.valueOf(i));
            b0 b0VarI = b0.i();
            a aVar = a.this;
            b0VarI.F("VAAudioType", Integer.valueOf(aVar.S((Integer) aVar.g.e(), (Integer) a.this.k.e())));
            if (a.this.x != null) {
                a.this.x.a();
            }
        }
    }

    class h implements c.b {
        h() {
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // cn.manstep.phonemirrorBox.k0.c.b
        public void a(int i) {
            a.this.l.k(Integer.valueOf(i));
            b0 b0VarI = b0.i();
            a aVar = a.this;
            b0VarI.F("RingAudioType", Integer.valueOf(aVar.S((Integer) aVar.h.e(), (Integer) a.this.l.e())));
            if (a.this.x != null) {
                a.this.x.a();
            }
        }
    }

    class i implements c.b {
        i() {
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // cn.manstep.phonemirrorBox.k0.c.b
        public void a(int i) {
            a.this.h.k(Integer.valueOf(i));
            b0 b0VarI = b0.i();
            a aVar = a.this;
            b0VarI.F("RingAudioType", Integer.valueOf(aVar.S((Integer) aVar.h.e(), (Integer) a.this.l.e())));
            if (a.this.x != null) {
                a.this.x.a();
            }
        }
    }

    class j implements c.b {
        j() {
        }

        @Override // cn.manstep.phonemirrorBox.k0.c.b
        public void a(int i) {
            a.this.v.k(Integer.valueOf(i));
            b0.i().F("RecordSource", a.this.v.e());
        }
    }

    public interface k {
        void a();
    }

    public a(Application application, n nVar) {
        super(application);
        int i2 = 0;
        this.f1960d = Build.VERSION.SDK_INT >= 26;
        this.u = new o<>(Boolean.FALSE);
        this.z = new o[8];
        this.s = nVar;
        this.e = new o<>(0);
        this.f = new o<>(0);
        this.g = new o<>(0);
        this.h = new o<>(0);
        this.i = new o<>(0);
        this.j = new o<>(0);
        this.k = new o<>(0);
        this.l = new o<>(0);
        this.w = new o<>(1);
        this.m = new o<>(Boolean.FALSE);
        this.n = new o<>(Boolean.FALSE);
        this.p = new o<>(Boolean.FALSE);
        this.o = new o<>(Boolean.FALSE);
        this.t = new o<>(16000);
        if (u.z().a0()) {
            this.t.k(48000);
        }
        this.q = new o<>(0);
        this.r = new o<>();
        this.v = new o<>(Integer.valueOf(b0.i().m("RecordSource", u.z().F())));
        this.y = new o<>(0);
        while (true) {
            o<Boolean>[] oVarArr = this.z;
            if (i2 >= oVarArr.length) {
                P();
                return;
            } else {
                oVarArr[i2] = new o<>(Boolean.FALSE);
                i2++;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void P() {
        if (Build.VERSION.SDK_INT >= 26) {
            this.i.k(Integer.valueOf(cn.manstep.phonemirrorBox.f0.e.j().a()));
            this.e.k(Integer.valueOf(cn.manstep.phonemirrorBox.f0.e.j().c()));
            this.j.k(Integer.valueOf(cn.manstep.phonemirrorBox.f0.b.j().a()));
            this.f.k(Integer.valueOf(cn.manstep.phonemirrorBox.f0.b.j().c()));
            this.k.k(Integer.valueOf(cn.manstep.phonemirrorBox.f0.g.j().a()));
            this.g.k(Integer.valueOf(cn.manstep.phonemirrorBox.f0.g.j().c()));
            this.l.k(Integer.valueOf(cn.manstep.phonemirrorBox.f0.f.j().a()));
            this.h.k(Integer.valueOf(cn.manstep.phonemirrorBox.f0.f.j().c()));
        } else {
            this.e.k(Integer.valueOf(cn.manstep.phonemirrorBox.f0.e.j().c()));
            this.f.k(Integer.valueOf(cn.manstep.phonemirrorBox.f0.b.j().c()));
            this.g.k(Integer.valueOf(cn.manstep.phonemirrorBox.f0.g.j().c()));
            this.h.k(Integer.valueOf(cn.manstep.phonemirrorBox.f0.f.j().c()));
        }
        int[] iArrV = v(b0.i().m("NVAudioType", 0));
        if (iArrV[0] != 0 || iArrV[1] != 0) {
            this.e.k(Integer.valueOf(iArrV[0]));
            this.i.k(Integer.valueOf(iArrV[1]));
        }
        int[] iArrV2 = v(b0.i().m("CallAudioType", 0));
        if (iArrV2[0] != 0 || iArrV2[1] != 0) {
            this.f.k(Integer.valueOf(iArrV2[0]));
            this.j.k(Integer.valueOf(iArrV2[1]));
        }
        int[] iArrV3 = v(b0.i().m("VAAudioType", 0));
        if (iArrV3[0] != 0 || iArrV3[1] != 0) {
            this.g.k(Integer.valueOf(iArrV3[0]));
            this.k.k(Integer.valueOf(iArrV3[1]));
        }
        int[] iArrV4 = v(b0.i().m("RingAudioType", 0));
        if (iArrV4[0] != 0 || iArrV4[1] != 0) {
            this.h.k(Integer.valueOf(iArrV4[0]));
            this.l.k(Integer.valueOf(iArrV4[1]));
        }
        this.r.k(Boolean.valueOf(b0.i().o("LowerAudioAPI", Build.VERSION.SDK_INT < 26)));
        int iM = b0.i().m("RecordChannel", u.z().D());
        s.d("AudioDebug", "init: channelIndex=" + iM);
        this.y.k(Integer.valueOf(iM));
        if (this.y.e().intValue() == 0) {
            this.y.k(16);
            this.w.k(1);
            return;
        }
        for (int i2 = 0; i2 < 8; i2++) {
            boolean z = ((1 << i2) & iM) != 0;
            s.d("AudioDebug", "init: " + i2 + " " + z);
            this.z[i2].k(Boolean.valueOf(z));
        }
        this.w.k(3);
    }

    private void R() {
        this.z[0].k(Boolean.TRUE);
        this.z[1].k(Boolean.TRUE);
        int i2 = 2;
        while (true) {
            o<Boolean>[] oVarArr = this.z;
            if (i2 >= oVarArr.length) {
                this.y.k(3);
                b0.i().F("RecordChannel", 3);
                return;
            } else {
                oVarArr[i2].k(Boolean.FALSE);
                i2++;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int S(Integer num, Integer num2) {
        int iIntValue = num != null ? num.intValue() : 0;
        int iIntValue2 = num2 != null ? num2.intValue() : 0;
        int i2 = ((iIntValue2 << 16) & (-65536)) | (65535 & iIntValue);
        s.d("AudioDebug", "setAudioType: usage=" + iIntValue + ",contentType=" + iIntValue2 + ",value=" + i2);
        return i2;
    }

    private int[] v(int i2) {
        s.d("AudioDebug", "getAudioType: type=" + i2);
        int i3 = (i2 >> 16) & 65535;
        int i4 = i2 & 65535;
        s.d("AudioDebug", "getAudioType: contentType=" + i3 + ",usage=" + i4);
        return new int[]{i4, i3};
    }

    public LiveData<Boolean> A(int i2) {
        s.d("AudioDebug", "SoundChannel[" + i2 + "]=" + this.z[i2].e());
        return this.z[i2];
    }

    public o<Integer> B() {
        return this.i;
    }

    public o<Integer> C() {
        return this.e;
    }

    public o<Integer> D() {
        return this.q;
    }

    public o<Boolean> E() {
        return this.p;
    }

    public o<Integer> F() {
        return this.w;
    }

    public o<Integer> G() {
        return this.v;
    }

    public o<Boolean> H() {
        return this.o;
    }

    public o<Integer> I() {
        return this.l;
    }

    public o<Integer> J() {
        return this.h;
    }

    public o<Integer> K() {
        return this.t;
    }

    public o<Integer> L() {
        return this.y;
    }

    public o<Boolean> M() {
        return this.m;
    }

    public o<Integer> N() {
        return this.k;
    }

    public o<Integer> O() {
        return this.g;
    }

    public void Q() {
        s.d("AudioDebug", "ready to reset");
        b0.i().a();
        h0(16000);
        this.n.k(Boolean.FALSE);
        this.m.k(Boolean.FALSE);
        this.u.k(Boolean.FALSE);
        new Handler(Looper.myLooper()).postDelayed(new RunnableC0101a(), 500L);
    }

    public void T() {
        cn.manstep.phonemirrorBox.k0.c.B2(this.s, "电话音频", 10, this.j.e() == null ? 0 : this.j.e().intValue(), new c());
    }

    public void U() {
        if (this.r.e() == null || this.r.e().booleanValue()) {
        }
        cn.manstep.phonemirrorBox.k0.c.B2(this.s, "电话音频", 40, this.f.e() != null ? this.f.e().intValue() : 0, new f());
    }

    public void V(k kVar) {
        this.x = kVar;
    }

    public void W(View view) {
        boolean zIsChecked = ((CompoundButton) view).isChecked();
        this.r.k(Boolean.valueOf(zIsChecked));
        b0.i().F("LowerAudioAPI", Boolean.valueOf(zIsChecked));
        b0.i().F("NVAudioType", Integer.valueOf(S(this.e.e(), this.i.e())));
        b0.i().F("VAAudioType", Integer.valueOf(S(this.g.e(), this.k.e())));
        b0.i().F("CallAudioType", Integer.valueOf(S(this.f.e(), this.j.e())));
        b0.i().F("RingAudioType", Integer.valueOf(S(this.h.e(), this.l.e())));
    }

    public void X(int i2, View view) {
        if (view instanceof CompoundButton) {
            int iIntValue = this.y.e().intValue();
            boolean zIsChecked = ((CompoundButton) view).isChecked();
            this.z[i2].k(Boolean.valueOf(zIsChecked));
            int i3 = zIsChecked ? (1 << i2) | iIntValue : ((1 << i2) ^ (-1)) & iIntValue;
            this.y.k(Integer.valueOf(i3));
            b0.i().F("RecordChannel", Integer.valueOf(i3));
            s.d("AudioDebug", "setMultiSoundChannel: " + String.format(Locale.CHINA, "%d, 0x%x", Integer.valueOf(i3), Integer.valueOf(i3)));
        }
    }

    public void Y() {
        cn.manstep.phonemirrorBox.k0.c.B2(this.s, "导航音频", 10, this.i.e() == null ? 0 : this.i.e().intValue(), new b());
    }

    public void Z() {
        if (this.r.e() == null || this.r.e().booleanValue()) {
        }
        cn.manstep.phonemirrorBox.k0.c.B2(this.s, "导航音频", 40, this.e.e() != null ? this.e.e().intValue() : 0, new e());
    }

    public void a0(int i2) {
        this.q.k(Integer.valueOf(i2));
    }

    public void b0(boolean z) {
        this.p.k(Boolean.valueOf(z));
    }

    public void c0(int i2) {
        this.w.k(Integer.valueOf(i2));
        if (i2 == 3) {
            R();
        } else {
            b0.i().F("RecordChannel", 0);
        }
    }

    public void d0() {
        cn.manstep.phonemirrorBox.k0.c.B2(this.s, "录音源", 10, this.v.e().intValue(), new j());
    }

    public void e0(boolean z) {
        this.o.k(Boolean.valueOf(z));
    }

    public void f0() {
        cn.manstep.phonemirrorBox.k0.c.B2(this.s, "铃声音频", 5, this.l.e() == null ? 0 : this.l.e().intValue(), new h());
    }

    public void g0() {
        if (this.r.e() == null || this.r.e().booleanValue()) {
        }
        cn.manstep.phonemirrorBox.k0.c.B2(this.s, "铃声音频", 40, this.h.e() != null ? this.h.e().intValue() : 0, new i());
    }

    public void h0(int i2) {
        this.t.k(Integer.valueOf(i2));
        p.t = i2 == 48000;
    }

    public void i0() {
        cn.manstep.phonemirrorBox.k0.c.B2(this.s, "语音音频", 10, this.k.e() == null ? 0 : this.k.e().intValue(), new d());
    }

    public void j0() {
        if (this.r.e() == null || this.r.e().booleanValue()) {
        }
        cn.manstep.phonemirrorBox.k0.c.B2(this.s, "语音音频", 40, this.g.e() != null ? this.g.e().intValue() : 0, new g());
    }

    public o<Integer> w() {
        return this.j;
    }

    public o<Integer> x() {
        return this.f;
    }

    public o<Boolean> y() {
        return this.n;
    }

    public o<Boolean> z() {
        return this.r;
    }
}
