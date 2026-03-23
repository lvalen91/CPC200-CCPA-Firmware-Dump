package cn.manstep.phonemirrorBox.x0;

import android.app.Activity;
import android.app.Application;
import android.content.Intent;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.view.View;
import android.widget.Toast;
import androidx.fragment.app.n;
import androidx.lifecycle.o;
import androidx.lifecycle.p;
import cn.manstep.phonemirrorBox.AdjustSizeActivity;
import cn.manstep.phonemirrorBox.MainActivity;
import cn.manstep.phonemirrorBox.l;
import cn.manstep.phonemirrorBox.util.c0;
import cn.manstep.phonemirrorBox.util.s;
import cn.manstep.phonemirrorBox.util.u;
import com.yalantis.ucrop.BuildConfig;
import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class g extends androidx.lifecycle.a implements l.c {
    private final o<Integer> A;
    private final o<Integer> B;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final o<Boolean> f1971d;
    private final o<Boolean> e;
    private final WeakReference<Application> f;
    private final o<String> g;
    private final u h;
    private final o<Integer> i;
    private final cn.manstep.phonemirrorBox.util.k j;
    private final o<Integer> k;
    private final o<Boolean> l;
    private final o<Boolean> m;
    private final o<Boolean> n;
    private final o<Boolean> o;
    private final o<Boolean> p;
    private final o<Boolean> q;
    private final o<Boolean> r;
    public o<String> s;
    private o<String> t;
    private o<Integer> u;
    private o<Integer> v;
    private cn.manstep.phonemirrorBox.l w;
    private WeakReference<n> x;
    private o<Boolean> y;
    private WeakReference<Activity> z;

    class a implements View.OnClickListener {
        a(g gVar) {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
        }
    }

    class b implements Runnable {
        b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            g.this.e.k(Boolean.FALSE);
            g.this.l.k(Boolean.FALSE);
            g.this.m.k(Boolean.FALSE);
            g.this.n.k(Boolean.FALSE);
            g.this.o.k(Boolean.FALSE);
        }
    }

    class c implements Runnable {
        c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            Intent intent = new Intent(g.this.i(), (Class<?>) AdjustSizeActivity.class);
            intent.addFlags(268435456);
            g.this.i().startActivity(intent);
            g.this.i.k(0);
        }
    }

    class d implements p<Integer> {
        d() {
        }

        @Override // androidx.lifecycle.p
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public void c(Integer num) {
            g.this.B.k(num);
            g.this.K(num.intValue());
        }
    }

    public g(Application application) {
        super(application);
        this.h = new u();
        this.A = new o<>(0);
        this.B = new o<>(0);
        new o(Boolean.TRUE);
        this.f = new WeakReference<>(application);
        this.f1971d = new o<>(Boolean.valueOf(cn.manstep.phonemirrorBox.BoxInterface.d.i()));
        this.e = new o<>(Boolean.FALSE);
        this.g = new o<>(BuildConfig.FLAVOR);
        this.i = new o<>(0);
        this.k = new o<>(0);
        this.j = new cn.manstep.phonemirrorBox.util.k(new Handler(Looper.myLooper()));
        this.m = new o<>(Boolean.FALSE);
        this.l = new o<>(Boolean.FALSE);
        this.n = new o<>(Boolean.FALSE);
        this.o = new o<>(Boolean.FALSE);
        this.q = new o<>(Boolean.FALSE);
        this.p = new o<>(Boolean.FALSE);
        this.r = new o<>(Boolean.FALSE);
        K(this.B.e().intValue());
    }

    public void A(int i) {
        o<Integer> oVar = this.u;
        if (oVar != null) {
            if (i == 1) {
                oVar.k(2131230841);
            } else {
                if (i != 2) {
                    return;
                }
                this.v.k(2131231031);
            }
        }
    }

    public void B(boolean z) {
        androidx.fragment.app.d dVar;
        if (this.x.get() != null && (dVar = (androidx.fragment.app.d) this.x.get().h0("AlertDialogX")) != null) {
            dVar.j2();
        }
        if (!z) {
            this.j.b("NoPhoneConnecting", 1500L, new b());
            return;
        }
        this.j.a("NoPhoneConnecting");
        this.e.k(Boolean.TRUE);
        String strF = cn.manstep.phonemirrorBox.BoxInterface.c.e().f();
        if ("CarPlay".equals(strF)) {
            this.l.k(Boolean.TRUE);
            return;
        }
        if ("AndroidAuto".equals(strF)) {
            this.m.k(Boolean.TRUE);
            return;
        }
        if ("HiCar".equals(strF)) {
            this.n.k(Boolean.TRUE);
        } else if ("ICCOA".equals(strF) || "Carlink".equals(strF)) {
            this.o.k(Boolean.TRUE);
        }
    }

    public void C() {
        cn.manstep.phonemirrorBox.BoxInterface.f fVar;
        if (cn.manstep.phonemirrorBox.BoxInterface.d.i()) {
            if (!cn.manstep.phonemirrorBox.BoxInterface.f.P) {
                Toast toastMakeText = Toast.makeText(this.f.get(), 2131689613, 0);
                toastMakeText.setGravity(17, 0, 0);
                toastMakeText.show();
            } else {
                if (!cn.manstep.phonemirrorBox.BoxInterface.f.Q || (fVar = cn.manstep.phonemirrorBox.BoxInterface.d.l) == null) {
                    return;
                }
                fVar.m0();
            }
        }
    }

    public void D(Activity activity) {
        this.z = new WeakReference<>(activity);
    }

    public void E(boolean z) {
        if (this.y == null) {
            this.y = new o<>();
        }
        if (z) {
            this.y.k(Boolean.TRUE);
            String strF = cn.manstep.phonemirrorBox.BoxInterface.c.e().f();
            if ("CarPlay".equals(strF)) {
                this.p.k(Boolean.TRUE);
            } else if ("AndroidAuto".equals(strF)) {
                this.q.k(Boolean.TRUE);
            } else if ("HiCar".equals(strF)) {
                this.r.k(Boolean.TRUE);
            }
        } else {
            this.y.k(Boolean.FALSE);
            this.p.k(Boolean.FALSE);
            this.q.k(Boolean.FALSE);
            this.r.k(Boolean.FALSE);
        }
        o<Integer> oVar = this.u;
        if (oVar == null) {
            return;
        }
        if (!z) {
            oVar.k(2131230840);
            return;
        }
        cn.manstep.phonemirrorBox.l lVar = this.w;
        if (lVar != null && lVar.isShowing()) {
            this.w.hide();
        }
        this.u.k(2131230839);
    }

    public void F(String str) {
        if (this.t == null) {
            this.t = new o<>();
        }
        this.t.k(str);
        I(str);
    }

    public void G(int i) {
        int iB = c0.b(i(), 300.0f) / 100;
        if (i > 0) {
            H(i);
            this.g.k(BuildConfig.FLAVOR + i + "%");
        }
    }

    public void H(int i) {
        this.k.k(Integer.valueOf(i));
    }

    public void I(String str) {
        if (this.s == null) {
            this.s = new o<>();
        }
        if ("TOUR".equals(i().getResources().getString(2131689495))) {
            this.s.k(TextUtils.isEmpty(str) ? "Instruction: Switch on your Phone's Wi-Fi and connect your phone's \nbluetooth with the device (AutoKit-*****)\nAttention: Make sure only one phone is connected with the device.\nIf the connection is failed, please switch off/on your phone's Wi-Fi, \nreconnect the bluetooth or unplug and plug in the box again." : "Instruction: Switch on your Phone's Wi-Fi and connect your phone's \nbluetooth with the device (AutoKit-*****)\nAttention: Make sure only one phone is connected with the device.\nIf the connection is failed, please switch off/on your phone's Wi-Fi, \nreconnect the bluetooth or unplug and plug in the box again.".replace("AutoKit-*****", str));
        }
    }

    public void J(n nVar) {
        this.x = new WeakReference<>(nVar);
    }

    public void K(int i) {
        s.d("FirstPageViewModel", "setLinkConnectMode: " + i);
        if (i == 3 || i == 4) {
            this.A.k(1);
            return;
        }
        if (i == 6 || i == 7) {
            this.A.k(3);
        } else if (cn.manstep.phonemirrorBox.BoxInterface.d.x() && cn.manstep.phonemirrorBox.BoxInterface.d.v()) {
            this.A.k(1);
        } else {
            this.A.k(3);
        }
    }

    public void L(k kVar) {
        if (this.B.e().intValue() != 0) {
            kVar.E0(this.B.e().intValue());
        }
        kVar.T().g(new d());
    }

    public void M(boolean z) {
        o<Integer> oVar = this.v;
        if (oVar == null) {
            return;
        }
        if (z) {
            oVar.k(2131231029);
        } else {
            oVar.k(2131231030);
        }
    }

    public void N(View view) {
        if (cn.manstep.phonemirrorBox.BoxInterface.d.i()) {
            cn.manstep.phonemirrorBox.k0.b bVarC = cn.manstep.phonemirrorBox.k0.b.c();
            bVarC.e(view.getContext());
            bVarC.j(cn.manstep.phonemirrorBox.BoxInterface.d.l.L(), cn.manstep.phonemirrorBox.p.n, cn.manstep.phonemirrorBox.p.o);
        }
    }

    public void O(View view) {
        if (cn.manstep.phonemirrorBox.BoxInterface.f.P && cn.manstep.phonemirrorBox.BoxInterface.d.i()) {
            cn.manstep.phonemirrorBox.l lVar = new cn.manstep.phonemirrorBox.l(view.getContext());
            this.w = lVar;
            lVar.g(this);
            this.w.show();
        }
    }

    public void P(View view) {
    }

    public void Q(boolean z) {
        cn.manstep.phonemirrorBox.l lVar = this.w;
        if (lVar == null) {
            return;
        }
        if (z) {
            lVar.h(cn.manstep.phonemirrorBox.BoxInterface.d.l.E());
        } else {
            lVar.i();
        }
    }

    @Override // cn.manstep.phonemirrorBox.l.c
    public void a(String str) {
        cn.manstep.phonemirrorBox.BoxInterface.f fVar = cn.manstep.phonemirrorBox.BoxInterface.d.l;
        if (fVar != null) {
            fVar.o0(str.getBytes(), str.getBytes().length);
        }
    }

    @Override // cn.manstep.phonemirrorBox.l.c
    public void b(String str) {
        if (cn.manstep.phonemirrorBox.BoxInterface.d.l != null) {
            s.c("FirstPageViewModel,autoConnByBtAddress: " + str);
            cn.manstep.phonemirrorBox.BoxInterface.d.l.l0(str.getBytes());
        }
    }

    @Override // cn.manstep.phonemirrorBox.l.c
    public void c() {
        cn.manstep.phonemirrorBox.BoxInterface.f fVar = cn.manstep.phonemirrorBox.BoxInterface.d.l;
        if (fVar != null) {
            fVar.A();
        }
    }

    public void q(boolean z) {
        this.g.k(BuildConfig.FLAVOR);
        if (cn.manstep.phonemirrorBox.BoxInterface.f.P) {
            if (z && cn.manstep.phonemirrorBox.BoxInterface.d.l.W()) {
                z = false;
            }
            s.d("FirstPageViewModel", "boxConnectChanged: boxConnected=" + z);
            this.f1971d.k(Boolean.valueOf(z));
            this.e.k(Boolean.FALSE);
        }
    }

    public void r(View view) {
        if (cn.manstep.phonemirrorBox.BoxInterface.d.i()) {
            if (cn.manstep.phonemirrorBox.BoxInterface.d.l.W()) {
                cn.manstep.phonemirrorBox.k0.a.B2(this.x.get(), "产品信息", cn.manstep.phonemirrorBox.BoxInterface.c.e().a(), new a(this), null);
            } else {
                P(view);
            }
        }
    }

    public boolean s(View view) {
        if (this.i.e() != null) {
            if (this.i.e().intValue() >= 3) {
                this.h.b(new c(), 1000L);
            } else {
                o<Integer> oVar = this.i;
                oVar.k(Integer.valueOf(oVar.e().intValue() + 1));
            }
        }
        return true;
    }

    public void t() {
        MainActivity mainActivity = (MainActivity) this.z.get();
        if (mainActivity != null) {
            mainActivity.U0();
        }
    }

    public o<Integer> u() {
        if (this.u == null) {
            o<Integer> oVar = new o<>();
            this.u = oVar;
            oVar.k(2131230840);
        }
        return this.u;
    }

    public o<String> v() {
        if (this.t == null) {
            o<String> oVar = new o<>();
            this.t = oVar;
            oVar.k(BuildConfig.FLAVOR);
            if (cn.manstep.phonemirrorBox.BoxInterface.d.l != null) {
                this.t.k(cn.manstep.phonemirrorBox.BoxInterface.d.r());
            }
        }
        return this.t;
    }

    public o<String> w() {
        return this.g;
    }

    public o<String> x() {
        if (this.s == null) {
            this.s = new o<>();
            if ("TOUR".equals(i().getResources().getString(2131689495))) {
                this.s.k("Instruction: Switch on your Phone's Wi-Fi and connect your phone's \nbluetooth with the device (AutoKit-*****)\nAttention: Make sure only one phone is connected with the device.\nIf the connection is failed, please switch off/on your phone's Wi-Fi, \nreconnect the bluetooth or unplug and plug in the box again.");
            }
        }
        return this.s;
    }

    public o<Integer> y() {
        if (this.v == null) {
            o<Integer> oVar = new o<>();
            this.v = oVar;
            oVar.k(2131231030);
        }
        return this.v;
    }

    public void z() {
        F(BuildConfig.FLAVOR);
        M(false);
        E(false);
        cn.manstep.phonemirrorBox.l lVar = this.w;
        if (lVar != null && lVar.isShowing()) {
            this.w.hide();
        }
        s.f("FirstPageViewModel", "onBoxPlugOut: boxConnected=false");
        this.f1971d.k(Boolean.FALSE);
    }
}
