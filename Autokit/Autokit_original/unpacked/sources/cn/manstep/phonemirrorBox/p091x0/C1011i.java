package cn.manstep.phonemirrorBox.p091x0;

import android.app.ActivityManager;
import android.app.Application;
import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.os.Handler;
import android.os.Process;
import android.text.TextUtils;
import android.view.View;
import android.widget.CompoundButton;
import android.widget.RadioButton;
import android.widget.RadioGroup;
import android.widget.Toast;
import androidx.fragment.app.AbstractC0366n;
import androidx.fragment.app.AbstractC0375w;
import androidx.lifecycle.C0401o;
import androidx.lifecycle.InterfaceC0402p;
import cn.manstep.phonemirrorBox.BoxInterface.C0733d;
import cn.manstep.phonemirrorBox.BoxInterface.C0735f;
import cn.manstep.phonemirrorBox.C0795b0;
import cn.manstep.phonemirrorBox.C0925p;
import cn.manstep.phonemirrorBox.C0953u;
import cn.manstep.phonemirrorBox.CheckActivity;
import cn.manstep.phonemirrorBox.MyApplication;
import cn.manstep.phonemirrorBox.p077k0.C0882a;
import cn.manstep.phonemirrorBox.p077k0.C0888g;
import cn.manstep.phonemirrorBox.p077k0.C0889h;
import cn.manstep.phonemirrorBox.p078l0.C0905l;
import cn.manstep.phonemirrorBox.p078l0.C0913t;
import cn.manstep.phonemirrorBox.p082o0.C0924a;
import cn.manstep.phonemirrorBox.util.C0964c0;
import cn.manstep.phonemirrorBox.util.C0986w;
import java.lang.ref.WeakReference;

/* JADX INFO: renamed from: cn.manstep.phonemirrorBox.x0.i */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class C1011i extends C1005c {

    /* JADX INFO: renamed from: A */
    private final C0401o<Boolean> f6343A;

    /* JADX INFO: renamed from: e */
    private final C0401o<Boolean> f6344e;

    /* JADX INFO: renamed from: f */
    public C0401o<Boolean> f6345f;

    /* JADX INFO: renamed from: g */
    public C0401o<Boolean> f6346g;

    /* JADX INFO: renamed from: h */
    private C0401o<Boolean> f6347h;

    /* JADX INFO: renamed from: i */
    private C0401o<Boolean> f6348i;

    /* JADX INFO: renamed from: j */
    private C0401o<Boolean> f6349j;

    /* JADX INFO: renamed from: k */
    private C0401o<Integer> f6350k;

    /* JADX INFO: renamed from: l */
    private C0401o<Boolean> f6351l;

    /* JADX INFO: renamed from: m */
    private final C0401o<Integer> f6352m;

    /* JADX INFO: renamed from: n */
    private C0401o<Integer> f6353n;

    /* JADX INFO: renamed from: o */
    private C0401o<Boolean> f6354o;

    /* JADX INFO: renamed from: p */
    private C0401o<Boolean> f6355p;

    /* JADX INFO: renamed from: q */
    private C0401o<Boolean> f6356q;

    /* JADX INFO: renamed from: r */
    private C0401o<Boolean> f6357r;

    /* JADX INFO: renamed from: s */
    private C0401o<Integer> f6358s;

    /* JADX INFO: renamed from: t */
    private C0401o<Boolean> f6359t;

    /* JADX INFO: renamed from: u */
    private WeakReference<AbstractC0366n> f6360u;

    /* JADX INFO: renamed from: v */
    private C0913t f6361v;

    /* JADX INFO: renamed from: w */
    public final C1004b f6362w;

    /* JADX INFO: renamed from: x */
    public final C1008f f6363x;

    /* JADX INFO: renamed from: y */
    public final C1015m f6364y;

    /* JADX INFO: renamed from: z */
    private final C0401o<Integer> f6365z;

    /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.x0.i$a */
    class a implements C0913t.e {
        a() {
        }

        @Override // cn.manstep.phonemirrorBox.p078l0.C0913t.e
        /* JADX INFO: renamed from: a */
        public boolean mo6755a(String str) {
            if (TextUtils.isEmpty(str) || !C0924a.m6854b(str)) {
                return false;
            }
            C1011i.this.f6352m.mo2965k(Integer.valueOf(Integer.parseInt(str)));
            return true;
        }
    }

    /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.x0.i$b */
    class b implements C0889h.c {
        b() {
        }

        @Override // cn.manstep.phonemirrorBox.p077k0.C0889h.c
        /* JADX INFO: renamed from: a */
        public boolean mo6605a(String str) {
            if (TextUtils.isEmpty(str) || !TextUtils.isDigitsOnly(str)) {
                return false;
            }
            if (str.equals(String.valueOf(C1011i.this.f6352m.m2959e()))) {
                return true;
            }
            C1011i.this.f6352m.mo2965k(Integer.valueOf(Integer.parseInt(str)));
            return true;
        }
    }

    /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.x0.i$c */
    class c implements Runnable {
        c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                Context context = C1011i.this.f6272d.get();
                ((ActivityManager) context.getSystemService("activity")).killBackgroundProcesses(context.getPackageName());
                System.exit(0);
            } catch (Exception unused) {
                Process.killProcess(Process.myPid());
                System.exit(1);
            }
        }
    }

    /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.x0.i$d */
    class d implements InterfaceC0402p<Integer> {
        d(C1011i c1011i) {
        }

        @Override // androidx.lifecycle.InterfaceC0402p
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public void mo2340c(Integer num) {
            C0795b0.m6071i().m6085F("MicGain", num);
            if (C0733d.m5591i()) {
                C0733d.f4428l.m5745s0("mediaDelay", num);
            }
        }
    }

    /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.x0.i$e */
    class e implements InterfaceC0402p<Integer> {
        e(C1011i c1011i) {
        }

        @Override // androidx.lifecycle.InterfaceC0402p
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public void mo2340c(Integer num) {
            C0795b0.m6071i().m6085F("BootDelay", num);
        }
    }

    /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.x0.i$f */
    class f implements InterfaceC0402p<Integer> {
        f(C1011i c1011i) {
        }

        @Override // androidx.lifecycle.InterfaceC0402p
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public void mo2340c(Integer num) {
            C0795b0.m6071i().m6085F("mediaDelay", num);
        }
    }

    /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.x0.i$g */
    class g implements View.OnClickListener {
        g(C1011i c1011i) {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
        }
    }

    /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.x0.i$h */
    class h implements View.OnClickListener {
        h() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            C0986w.m7395a(C1011i.this.f6272d.get(), true);
        }
    }

    /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.x0.i$i */
    class i implements View.OnClickListener {
        i(C1011i c1011i) {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
        }
    }

    public C1011i(Application application) {
        super(application);
        this.f6362w = new C1004b();
        this.f6363x = new C1008f();
        this.f6364y = new C1015m(application);
        this.f6346g = new C0401o<>(Boolean.valueOf(C0795b0.m6071i().m6093o("UseOpenGLRender", false)));
        C0401o<Boolean> c0401o = new C0401o<>();
        this.f6347h = c0401o;
        c0401o.mo2965k(Boolean.valueOf(C0795b0.m6071i().m6093o("IsAutoPlayMusic", true)));
        this.f6348i = new C0401o<>();
        C0964c0.m7193q();
        this.f6348i.mo2965k(Boolean.FALSE);
        this.f6345f = new C0401o<>();
        boolean zM6093o = C0795b0.m6071i().m6093o("IsTextureView", C0964c0.m7193q());
        C0925p.f5872i = zM6093o;
        this.f6345f.mo2965k(Boolean.valueOf(zM6093o));
        boolean zM6093o2 = C0795b0.m6071i().m6093o("BgKeyValid", true);
        C0401o<Boolean> c0401o2 = new C0401o<>();
        this.f6349j = c0401o2;
        c0401o2.mo2965k(Boolean.valueOf(zM6093o2));
        int iM6091m = C0795b0.m6071i().m6091m("ChargeMode", 0);
        C0401o<Integer> c0401o3 = new C0401o<>();
        this.f6350k = c0401o3;
        c0401o3.mo2965k(Integer.valueOf(iM6091m));
        C0401o<Boolean> c0401o4 = new C0401o<>();
        this.f6359t = c0401o4;
        c0401o4.mo2965k(Boolean.valueOf(C0795b0.m6071i().m6093o("IsTurnDownMusic", true)));
        this.f6344e = new C0401o<>(Boolean.valueOf(C0795b0.m6071i().m6093o("BG_CONN", C0925p.f5854A)));
        C0401o<Integer> c0401o5 = new C0401o<>(Integer.valueOf(C0795b0.m6071i().m6091m("MicGain", 0)));
        this.f6353n = c0401o5;
        c0401o5.m2961g(new d(this));
        C0401o<Integer> c0401o6 = new C0401o<>(Integer.valueOf(C0795b0.m6071i().m6091m("BootDelay", 0)));
        this.f6365z = c0401o6;
        c0401o6.m2961g(new e(this));
        C0401o<Integer> c0401o7 = new C0401o<>(Integer.valueOf(C0795b0.m6071i().m6091m("mediaDelay", 300)));
        this.f6352m = c0401o7;
        c0401o7.m2961g(new f(this));
        this.f6343A = new C0401o<>(Boolean.valueOf(C0733d.m5591i()));
    }

    /* JADX INFO: renamed from: U */
    private void m7648U() {
        if (this.f6361v != null) {
            AbstractC0375w abstractC0375wM2774l = this.f6360u.get().m2774l();
            if (this.f6361v.m2486q0()) {
                abstractC0375wM2774l.mo2533t(this.f6361v);
            } else {
                abstractC0375wM2774l.m2886b(2131296606, this.f6361v);
            }
            abstractC0375wM2774l.mo2526h();
        }
    }

    /* JADX INFO: renamed from: A */
    public void m7650A() {
        this.f6363x.m7608i();
        this.f6362w.m7557i();
    }

    /* JADX INFO: renamed from: B */
    public void m7651B(boolean z) {
        C0795b0.m6071i().m6085F("BG_CONN", Boolean.valueOf(z));
        MyApplication.m5997b().m6005i(z);
        this.f6344e.mo2965k(Boolean.valueOf(z));
    }

    /* JADX INFO: renamed from: C */
    public void m7652C(boolean z) {
        this.f6343A.mo2965k(Boolean.valueOf(z));
    }

    /* JADX INFO: renamed from: D */
    public void m7653D(int i2) {
        if (this.f6358s == null) {
            this.f6358s = new C0401o<>();
        }
        C0795b0.m6071i().m6085F("CallAudioAttr", Integer.valueOf(i2));
        this.f6358s.mo2965k(Integer.valueOf(i2));
    }

    /* JADX INFO: renamed from: E */
    public void m7654E(int i2) {
        C0735f c0735f;
        this.f6350k.mo2965k(Integer.valueOf(i2));
        C0795b0.m6071i().m6085F("ChargeMode", Integer.valueOf(i2));
        if (i2 == 2) {
            Toast.makeText(this.f6272d.get(), 2131689650, 0).show();
        }
        if (!C0733d.m5591i() || (c0735f = C0733d.f4428l) == null) {
            return;
        }
        c0735f.m5747u0(i2);
    }

    /* JADX INFO: renamed from: F */
    public void m7655F(AbstractC0366n abstractC0366n) {
        this.f6360u = new WeakReference<>(abstractC0366n);
        this.f6364y.m7788s(abstractC0366n);
    }

    /* JADX INFO: renamed from: G */
    public void m7656G(boolean z) {
        C0795b0.m6071i().m6085F("IsAutoPlayMusic", Boolean.valueOf(z));
    }

    /* JADX INFO: renamed from: H */
    public void m7657H(boolean z) {
        this.f6351l.mo2965k(Boolean.valueOf(z));
        C0795b0.m6071i().m6085F("AudioTransferMode", Boolean.valueOf(z));
        if (C0733d.m5591i()) {
            C0733d.f4428l.m5731k0(z);
        }
    }

    /* JADX INFO: renamed from: I */
    public void m7658I(boolean z) {
        this.f6354o.mo2965k(Boolean.valueOf(z));
        C0795b0.m6071i().m6085F("HideSysNavBar", Boolean.valueOf(!z));
        Intent intent = new Intent(this.f6272d.get(), (Class<?>) CheckActivity.class);
        intent.addFlags(268435456);
        this.f6272d.get().startActivity(intent);
    }

    /* JADX INFO: renamed from: J */
    public void m7659J(boolean z) {
        C0795b0.m6071i().m6085F("IsTurnDownMusic", Boolean.valueOf(z));
    }

    /* JADX INFO: renamed from: K */
    public void m7660K(boolean z) {
        C0795b0.m6071i().m6085F("IsTextureView", Boolean.valueOf(z));
        C0925p.f5872i = z;
        this.f6345f.mo2965k(Boolean.valueOf(z));
    }

    /* JADX INFO: renamed from: L */
    public void m7661L(boolean z) {
        this.f6356q.mo2965k(Boolean.valueOf(z));
        C0795b0.m6071i().m6085F("UseVolumeKeySwitchMusic", Boolean.valueOf(z));
    }

    /* JADX INFO: renamed from: M */
    public void m7662M() {
        if (this.f6361v == null) {
            this.f6361v = C0913t.m6751j2(this.f6360u.get());
        }
        this.f6361v.m6752k2(new a());
        this.f6361v.m6754m2(m2977i().getResources().getString(2131689824), String.valueOf(this.f6352m.m2959e()));
        this.f6361v.m6753l2(2);
        m7648U();
    }

    /* JADX INFO: renamed from: N */
    public void m7663N() {
        C0889h c0889h = new C0889h(2131689824, 2, String.valueOf(this.f6352m.m2959e()));
        c0889h.m2615u2(this.f6360u.get(), "InputDialog");
        c0889h.m6604A2(new b());
    }

    /* JADX INFO: renamed from: O */
    public void m7664O(boolean z) {
        this.f6355p.mo2965k(Boolean.valueOf(z));
        C0795b0.m6071i().m6085F(C0795b0.f4732g, Boolean.valueOf(z));
        new Handler().postDelayed(new c(), 1000L);
    }

    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:593)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    /* JADX INFO: renamed from: P */
    public void m7665P(View view) {
        if (view instanceof CompoundButton) {
            boolean zIsChecked = ((CompoundButton) view).isChecked();
            if (C0733d.m5591i()) {
                C0733d.f4428l.m5723f1("UseBTPhone", zIsChecked ? 1 : 0);
            }
        }
    }

    /* JADX INFO: renamed from: Q */
    public void m7666Q(View view) {
        if (view instanceof CompoundButton) {
            boolean zIsChecked = ((CompoundButton) view).isChecked();
            this.f6346g.mo2965k(Boolean.valueOf(zIsChecked));
            C0795b0.m6071i().m6085F("UseOpenGLRender", Boolean.valueOf(zIsChecked));
            if (zIsChecked) {
                m7660K(true);
            }
        }
    }

    /* JADX INFO: renamed from: R */
    public void m7667R(View view) {
        C0882a.m6527I2(this.f6360u.get(), 2131689939, new h(), new i(this));
    }

    /* JADX INFO: renamed from: S */
    public void m7668S() {
        new C0888g().m2615u2(this.f6360u.get(), "FontSizeDialog");
    }

    /* JADX INFO: renamed from: T */
    public void m7669T(View view, String str) {
        C0882a.m6528J2(this.f6360u.get(), str, new g(this), null);
    }

    /* JADX INFO: renamed from: k */
    public void m7670k() {
        AbstractC0375w abstractC0375wM2774l = this.f6360u.get().m2774l();
        abstractC0375wM2774l.m2886b(2131296606, C0905l.newInstance());
        abstractC0375wM2774l.m2891g("AudioDebugFragment");
        abstractC0375wM2774l.mo2527i();
    }

    /* JADX INFO: renamed from: l */
    public C0401o<Boolean> m7671l() {
        return this.f6344e;
    }

    /* JADX INFO: renamed from: m */
    public C0401o<Boolean> m7672m() {
        return this.f6349j;
    }

    /* JADX INFO: renamed from: n */
    public C0401o<Integer> m7673n() {
        if (this.f6358s == null) {
            C0401o<Integer> c0401o = new C0401o<>();
            this.f6358s = c0401o;
            c0401o.mo2965k(Integer.valueOf(C0795b0.m6071i().m6091m("CallAudioAttr", C0953u.m7001z().m7035e())));
        }
        return this.f6358s;
    }

    /* JADX INFO: renamed from: o */
    public C0401o<Integer> m7674o() {
        return this.f6350k;
    }

    /* JADX INFO: renamed from: p */
    public C0401o<Boolean> m7675p() {
        return this.f6347h;
    }

    /* JADX INFO: renamed from: q */
    public C0401o<Boolean> m7676q() {
        if (this.f6351l == null) {
            C0401o<Boolean> c0401o = new C0401o<>();
            this.f6351l = c0401o;
            c0401o.mo2965k(Boolean.valueOf(C0795b0.m6071i().m6093o("AudioTransferMode", false)));
        }
        return this.f6351l;
    }

    /* JADX INFO: renamed from: r */
    public C0401o<Boolean> m7677r() {
        if (this.f6355p == null) {
            this.f6355p = new C0401o<>();
            this.f6355p.mo2965k(Boolean.valueOf(C0795b0.m6071i().m6093o(C0795b0.f4732g, C0953u.m7001z().m7025X())));
        }
        return this.f6355p;
    }

    /* JADX INFO: renamed from: s */
    public C0401o<Boolean> m7678s() {
        if (this.f6357r == null) {
            C0401o<Boolean> c0401o = new C0401o<>();
            this.f6357r = c0401o;
            if (Build.VERSION.SDK_INT >= 26) {
                c0401o.mo2965k(Boolean.FALSE);
            } else {
                c0401o.mo2965k(Boolean.TRUE);
            }
        }
        return this.f6357r;
    }

    /* JADX INFO: renamed from: t */
    public C0401o<Boolean> m7679t() {
        if (this.f6354o == null) {
            C0401o<Boolean> c0401o = new C0401o<>();
            this.f6354o = c0401o;
            c0401o.mo2965k(Boolean.valueOf(!C0795b0.m6071i().m6093o("HideSysNavBar", true)));
        }
        return this.f6354o;
    }

    /* JADX INFO: renamed from: u */
    public C0401o<Boolean> m7680u() {
        return this.f6359t;
    }

    /* JADX INFO: renamed from: v */
    public C0401o<Boolean> m7681v() {
        return this.f6345f;
    }

    /* JADX INFO: renamed from: w */
    public C0401o<Boolean> m7682w() {
        if (this.f6356q == null) {
            C0401o<Boolean> c0401o = new C0401o<>();
            this.f6356q = c0401o;
            c0401o.mo2965k(Boolean.valueOf(C0795b0.m6071i().m6093o("UseVolumeKeySwitchMusic", false)));
        }
        return this.f6356q;
    }

    /* JADX INFO: renamed from: x */
    public C0401o<Integer> m7683x() {
        return this.f6352m;
    }

    /* JADX INFO: renamed from: y */
    public C0401o<Boolean> m7684y() {
        return this.f6346g;
    }

    /* JADX INFO: renamed from: z */
    public void m7685z(View view) {
        boolean zIsChecked = false;
        if (view instanceof CompoundButton) {
            if (!(view instanceof RadioButton)) {
                zIsChecked = ((CompoundButton) view).isChecked();
            } else if (((RadioGroup) view.getParent()).indexOfChild(view) == 0) {
                zIsChecked = true;
            }
        }
        C0795b0.m6071i().m6085F("BgKeyValid", Boolean.valueOf(zIsChecked));
        C0964c0.m7196t(this.f6272d.get(), zIsChecked);
    }
}
