package cn.manstep.phonemirrorBox.x0;

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
import androidx.fragment.app.n;
import androidx.lifecycle.o;
import androidx.lifecycle.p;
import cn.manstep.phonemirrorBox.CheckActivity;
import cn.manstep.phonemirrorBox.MyApplication;
import cn.manstep.phonemirrorBox.b0;
import cn.manstep.phonemirrorBox.k0.h;
import cn.manstep.phonemirrorBox.l0.t;
import cn.manstep.phonemirrorBox.u;
import cn.manstep.phonemirrorBox.util.c0;
import cn.manstep.phonemirrorBox.util.w;
import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: /tmp/autokit_analysis/dumped_dex/dex_47.dex */
public class i extends cn.manstep.phonemirrorBox.x0.c {
    private final o<Boolean> A;
    private final o<Boolean> e;
    public o<Boolean> f;
    public o<Boolean> g;
    private o<Boolean> h;
    private o<Boolean> i;
    private o<Boolean> j;
    private o<Integer> k;
    private o<Boolean> l;
    private final o<Integer> m;
    private o<Integer> n;
    private o<Boolean> o;
    private o<Boolean> p;
    private o<Boolean> q;
    private o<Boolean> r;
    private o<Integer> s;
    private o<Boolean> t;
    private WeakReference<n> u;
    private t v;
    public final cn.manstep.phonemirrorBox.x0.b w;
    public final cn.manstep.phonemirrorBox.x0.f x;
    public final m y;
    private final o<Integer> z;

    class a implements t.e {
        a() {
        }

        @Override // cn.manstep.phonemirrorBox.l0.t.e
        public boolean a(String str) {
            if (TextUtils.isEmpty(str) || !cn.manstep.phonemirrorBox.o0.a.b(str)) {
                return false;
            }
            i.this.m.k(Integer.valueOf(Integer.parseInt(str)));
            return true;
        }
    }

    class b implements h.c {
        b() {
        }

        @Override // cn.manstep.phonemirrorBox.k0.h.c
        public boolean a(String str) {
            if (TextUtils.isEmpty(str) || !TextUtils.isDigitsOnly(str)) {
                return false;
            }
            if (str.equals(String.valueOf(i.this.m.e()))) {
                return true;
            }
            i.this.m.k(Integer.valueOf(Integer.parseInt(str)));
            return true;
        }
    }

    class c implements Runnable {
        c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                Context context = i.this.f1964d.get();
                ((ActivityManager) context.getSystemService("activity")).killBackgroundProcesses(context.getPackageName());
                System.exit(0);
            } catch (Exception unused) {
                Process.killProcess(Process.myPid());
                System.exit(1);
            }
        }
    }

    class d implements p<Integer> {
        d(i iVar) {
        }

        @Override // androidx.lifecycle.p
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public void c(Integer num) {
            b0.i().F("MicGain", num);
            if (cn.manstep.phonemirrorBox.BoxInterface.d.i()) {
                cn.manstep.phonemirrorBox.BoxInterface.d.l.s0("mediaDelay", num);
            }
        }
    }

    class e implements p<Integer> {
        e(i iVar) {
        }

        @Override // androidx.lifecycle.p
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public void c(Integer num) {
            b0.i().F("BootDelay", num);
        }
    }

    class f implements p<Integer> {
        f(i iVar) {
        }

        @Override // androidx.lifecycle.p
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public void c(Integer num) {
            b0.i().F("mediaDelay", num);
        }
    }

    class g implements View.OnClickListener {
        g(i iVar) {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
        }
    }

    class h implements View.OnClickListener {
        h() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            w.a(i.this.f1964d.get(), true);
        }
    }

    /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.x0.i$i, reason: collision with other inner class name */
    class ViewOnClickListenerC0104i implements View.OnClickListener {
        ViewOnClickListenerC0104i(i iVar) {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
        }
    }

    public i(Application application) {
        super(application);
        this.w = new cn.manstep.phonemirrorBox.x0.b();
        this.x = new cn.manstep.phonemirrorBox.x0.f();
        this.y = new m(application);
        this.g = new o<>(Boolean.valueOf(b0.i().o("UseOpenGLRender", false)));
        o<Boolean> oVar = new o<>();
        this.h = oVar;
        oVar.k(Boolean.valueOf(b0.i().o("IsAutoPlayMusic", true)));
        this.i = new o<>();
        c0.q();
        this.i.k(Boolean.FALSE);
        this.f = new o<>();
        boolean zO = b0.i().o("IsTextureView", c0.q());
        cn.manstep.phonemirrorBox.p.i = zO;
        this.f.k(Boolean.valueOf(zO));
        boolean zO2 = b0.i().o("BgKeyValid", true);
        o<Boolean> oVar2 = new o<>();
        this.j = oVar2;
        oVar2.k(Boolean.valueOf(zO2));
        int iM = b0.i().m("ChargeMode", 0);
        o<Integer> oVar3 = new o<>();
        this.k = oVar3;
        oVar3.k(Integer.valueOf(iM));
        o<Boolean> oVar4 = new o<>();
        this.t = oVar4;
        oVar4.k(Boolean.valueOf(b0.i().o("IsTurnDownMusic", true)));
        this.e = new o<>(Boolean.valueOf(b0.i().o("BG_CONN", cn.manstep.phonemirrorBox.p.A)));
        o<Integer> oVar5 = new o<>(Integer.valueOf(b0.i().m("MicGain", 0)));
        this.n = oVar5;
        oVar5.g(new d(this));
        o<Integer> oVar6 = new o<>(Integer.valueOf(b0.i().m("BootDelay", 0)));
        this.z = oVar6;
        oVar6.g(new e(this));
        o<Integer> oVar7 = new o<>(Integer.valueOf(b0.i().m("mediaDelay", 300)));
        this.m = oVar7;
        oVar7.g(new f(this));
        this.A = new o<>(Boolean.valueOf(cn.manstep.phonemirrorBox.BoxInterface.d.i()));
    }

    private void U() {
        if (this.v != null) {
            androidx.fragment.app.w wVarL = this.u.get().l();
            if (this.v.q0()) {
                wVarL.t(this.v);
            } else {
                wVarL.b(2131296606, this.v);
            }
            wVarL.h();
        }
    }

    public void A() {
        this.x.i();
        this.w.i();
    }

    public void B(boolean z) {
        b0.i().F("BG_CONN", Boolean.valueOf(z));
        MyApplication.b().i(z);
        this.e.k(Boolean.valueOf(z));
    }

    public void C(boolean z) {
        this.A.k(Boolean.valueOf(z));
    }

    public void D(int i) {
        if (this.s == null) {
            this.s = new o<>();
        }
        b0.i().F("CallAudioAttr", Integer.valueOf(i));
        this.s.k(Integer.valueOf(i));
    }

    public void E(int i) {
        cn.manstep.phonemirrorBox.BoxInterface.f fVar;
        this.k.k(Integer.valueOf(i));
        b0.i().F("ChargeMode", Integer.valueOf(i));
        if (i == 2) {
            Toast.makeText(this.f1964d.get(), 2131689650, 0).show();
        }
        if (!cn.manstep.phonemirrorBox.BoxInterface.d.i() || (fVar = cn.manstep.phonemirrorBox.BoxInterface.d.l) == null) {
            return;
        }
        fVar.u0(i);
    }

    public void F(n nVar) {
        this.u = new WeakReference<>(nVar);
        this.y.s(nVar);
    }

    public void G(boolean z) {
        b0.i().F("IsAutoPlayMusic", Boolean.valueOf(z));
    }

    public void H(boolean z) {
        this.l.k(Boolean.valueOf(z));
        b0.i().F("AudioTransferMode", Boolean.valueOf(z));
        if (cn.manstep.phonemirrorBox.BoxInterface.d.i()) {
            cn.manstep.phonemirrorBox.BoxInterface.d.l.k0(z);
        }
    }

    public void I(boolean z) {
        this.o.k(Boolean.valueOf(z));
        b0.i().F("HideSysNavBar", Boolean.valueOf(!z));
        Intent intent = new Intent(this.f1964d.get(), (Class<?>) CheckActivity.class);
        intent.addFlags(268435456);
        this.f1964d.get().startActivity(intent);
    }

    public void J(boolean z) {
        b0.i().F("IsTurnDownMusic", Boolean.valueOf(z));
    }

    public void K(boolean z) {
        b0.i().F("IsTextureView", Boolean.valueOf(z));
        cn.manstep.phonemirrorBox.p.i = z;
        this.f.k(Boolean.valueOf(z));
    }

    public void L(boolean z) {
        this.q.k(Boolean.valueOf(z));
        b0.i().F("UseVolumeKeySwitchMusic", Boolean.valueOf(z));
    }

    public void M() {
        if (this.v == null) {
            this.v = t.j2(this.u.get());
        }
        this.v.k2(new a());
        this.v.m2(i().getResources().getString(2131689824), String.valueOf(this.m.e()));
        this.v.l2(2);
        U();
    }

    public void N() {
        cn.manstep.phonemirrorBox.k0.h hVar = new cn.manstep.phonemirrorBox.k0.h(2131689824, 2, String.valueOf(this.m.e()));
        hVar.u2(this.u.get(), "InputDialog");
        hVar.A2(new b());
    }

    public void O(boolean z) {
        this.p.k(Boolean.valueOf(z));
        b0.i().F(b0.g, Boolean.valueOf(z));
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
    public void P(View view) {
        if (view instanceof CompoundButton) {
            boolean zIsChecked = ((CompoundButton) view).isChecked();
            if (cn.manstep.phonemirrorBox.BoxInterface.d.i()) {
                cn.manstep.phonemirrorBox.BoxInterface.d.l.f1("UseBTPhone", zIsChecked ? 1 : 0);
            }
        }
    }

    public void Q(View view) {
        if (view instanceof CompoundButton) {
            boolean zIsChecked = ((CompoundButton) view).isChecked();
            this.g.k(Boolean.valueOf(zIsChecked));
            b0.i().F("UseOpenGLRender", Boolean.valueOf(zIsChecked));
            if (zIsChecked) {
                K(true);
            }
        }
    }

    public void R(View view) {
        cn.manstep.phonemirrorBox.k0.a.I2(this.u.get(), 2131689939, new h(), new ViewOnClickListenerC0104i(this));
    }

    public void S() {
        new cn.manstep.phonemirrorBox.k0.g().u2(this.u.get(), "FontSizeDialog");
    }

    public void T(View view, String str) {
        cn.manstep.phonemirrorBox.k0.a.J2(this.u.get(), str, new g(this), null);
    }

    public void k() {
        androidx.fragment.app.w wVarL = this.u.get().l();
        wVarL.b(2131296606, cn.manstep.phonemirrorBox.l0.l.newInstance());
        wVarL.g("AudioDebugFragment");
        wVarL.i();
    }

    public o<Boolean> l() {
        return this.e;
    }

    public o<Boolean> m() {
        return this.j;
    }

    public o<Integer> n() {
        if (this.s == null) {
            o<Integer> oVar = new o<>();
            this.s = oVar;
            oVar.k(Integer.valueOf(b0.i().m("CallAudioAttr", u.z().e())));
        }
        return this.s;
    }

    public o<Integer> o() {
        return this.k;
    }

    public o<Boolean> p() {
        return this.h;
    }

    public o<Boolean> q() {
        if (this.l == null) {
            o<Boolean> oVar = new o<>();
            this.l = oVar;
            oVar.k(Boolean.valueOf(b0.i().o("AudioTransferMode", false)));
        }
        return this.l;
    }

    public o<Boolean> r() {
        if (this.p == null) {
            this.p = new o<>();
            this.p.k(Boolean.valueOf(b0.i().o(b0.g, u.z().X())));
        }
        return this.p;
    }

    public o<Boolean> s() {
        if (this.r == null) {
            o<Boolean> oVar = new o<>();
            this.r = oVar;
            if (Build.VERSION.SDK_INT >= 26) {
                oVar.k(Boolean.FALSE);
            } else {
                oVar.k(Boolean.TRUE);
            }
        }
        return this.r;
    }

    public o<Boolean> t() {
        if (this.o == null) {
            o<Boolean> oVar = new o<>();
            this.o = oVar;
            oVar.k(Boolean.valueOf(!b0.i().o("HideSysNavBar", true)));
        }
        return this.o;
    }

    public o<Boolean> u() {
        return this.t;
    }

    public o<Boolean> v() {
        return this.f;
    }

    public o<Boolean> w() {
        if (this.q == null) {
            o<Boolean> oVar = new o<>();
            this.q = oVar;
            oVar.k(Boolean.valueOf(b0.i().o("UseVolumeKeySwitchMusic", false)));
        }
        return this.q;
    }

    public o<Integer> x() {
        return this.m;
    }

    public o<Boolean> y() {
        return this.g;
    }

    public void z(View view) {
        boolean zIsChecked = false;
        if (view instanceof CompoundButton) {
            if (!(view instanceof RadioButton)) {
                zIsChecked = ((CompoundButton) view).isChecked();
            } else if (((RadioGroup) view.getParent()).indexOfChild(view) == 0) {
                zIsChecked = true;
            }
        }
        b0.i().F("BgKeyValid", Boolean.valueOf(zIsChecked));
        c0.t(this.f1964d.get(), zIsChecked);
    }
}
