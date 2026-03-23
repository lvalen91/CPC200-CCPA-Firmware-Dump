package cn.manstep.phonemirrorBox.x0;

import android.app.Application;
import android.text.TextUtils;
import androidx.fragment.app.n;
import androidx.fragment.app.w;
import androidx.lifecycle.o;
import cn.manstep.phonemirrorBox.b0;
import cn.manstep.phonemirrorBox.k0.h;
import cn.manstep.phonemirrorBox.l0.t;
import com.yalantis.ucrop.BuildConfig;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class m extends androidx.lifecycle.a {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private WeakReference<n> f1985d;
    private t e;
    private o<String> f;
    private o<String> g;
    private o<Integer> h;
    private o<String> i;
    private final List<cn.manstep.phonemirrorBox.g0.e> j;
    private final List<String> k;

    class a implements t.e {
        a() {
        }

        @Override // cn.manstep.phonemirrorBox.l0.t.e
        public boolean a(String str) {
            if (TextUtils.isEmpty(str) || str.getBytes().length > 16) {
                return false;
            }
            if (str.equals(m.this.f.e())) {
                return true;
            }
            m.this.f.k(str);
            b0.i().F("BtName", str);
            if (!cn.manstep.phonemirrorBox.BoxInterface.d.i()) {
                return true;
            }
            cn.manstep.phonemirrorBox.BoxInterface.d.l.e1(str.getBytes());
            return true;
        }
    }

    class b implements t.e {
        b() {
        }

        @Override // cn.manstep.phonemirrorBox.l0.t.e
        public boolean a(String str) {
            if (TextUtils.isEmpty(str) || str.getBytes().length > 16) {
                return false;
            }
            if (str.equals(m.this.g.e())) {
                return true;
            }
            m.this.g.k(str);
            b0.i().F("WifiName", str);
            if (!cn.manstep.phonemirrorBox.BoxInterface.d.i()) {
                return true;
            }
            cn.manstep.phonemirrorBox.BoxInterface.d.l.i1(str.getBytes());
            return true;
        }
    }

    class c implements h.c {
        c() {
        }

        @Override // cn.manstep.phonemirrorBox.k0.h.c
        public boolean a(String str) {
            if (TextUtils.isEmpty(str) || str.getBytes().length > 15) {
                return false;
            }
            if (str.equals(m.this.f.e())) {
                return true;
            }
            m.this.f.k(str);
            b0.i().F("BtName", str);
            if (!cn.manstep.phonemirrorBox.BoxInterface.d.i()) {
                return true;
            }
            cn.manstep.phonemirrorBox.BoxInterface.d.l.e1(str.getBytes());
            return true;
        }
    }

    class d implements h.c {
        d() {
        }

        @Override // cn.manstep.phonemirrorBox.k0.h.c
        public boolean a(String str) {
            if (TextUtils.isEmpty(str) || str.getBytes().length > 15) {
                return false;
            }
            if (str.equals(m.this.g.e())) {
                return true;
            }
            m.this.g.k(str);
            b0.i().F("WifiName", str);
            if (!cn.manstep.phonemirrorBox.BoxInterface.d.i()) {
                return true;
            }
            cn.manstep.phonemirrorBox.BoxInterface.d.l.i1(str.getBytes());
            return true;
        }
    }

    public m(Application application) {
        super(application);
        this.j = new ArrayList();
        this.k = new ArrayList();
    }

    private List<cn.manstep.phonemirrorBox.g0.e> m(boolean z) {
        this.j.clear();
        for (int i = 0; i < this.k.size(); i++) {
            boolean z2 = cn.manstep.phonemirrorBox.BoxInterface.c.e().r() == Integer.parseInt(this.k.get(i));
            if (z) {
                if (Integer.parseInt(this.k.get(i)) >= 36) {
                    this.j.add(new cn.manstep.phonemirrorBox.g0.e(this.k.get(i), z2));
                }
            } else if (Integer.parseInt(this.k.get(i)) < 36) {
                this.j.add(new cn.manstep.phonemirrorBox.g0.e(this.k.get(i), z2));
            }
        }
        return this.j;
    }

    private void p() {
        this.k.clear();
        if (TextUtils.isEmpty(cn.manstep.phonemirrorBox.BoxInterface.c.e().s())) {
            return;
        }
        this.k.addAll(Arrays.asList(cn.manstep.phonemirrorBox.BoxInterface.c.e().s().split(",")));
    }

    private void w() {
        if (this.e != null) {
            w wVarL = this.f1985d.get().l();
            if (this.e.q0()) {
                wVarL.t(this.e);
            } else {
                wVarL.b(2131296606, this.e);
            }
            wVarL.h();
        }
    }

    public o<String> l() {
        if (this.f == null) {
            this.f = new o<>();
            String strN = b0.i().n("BtName", BuildConfig.FLAVOR);
            if (TextUtils.isEmpty(strN) && cn.manstep.phonemirrorBox.BoxInterface.d.l != null) {
                strN = cn.manstep.phonemirrorBox.BoxInterface.d.r();
            }
            this.f.k(strN);
        }
        return this.f;
    }

    public o<String> n() {
        cn.manstep.phonemirrorBox.BoxInterface.f fVar;
        if (this.g == null) {
            this.g = new o<>();
            String strN = b0.i().n("WifiName", BuildConfig.FLAVOR);
            if (TextUtils.isEmpty(strN) && (fVar = cn.manstep.phonemirrorBox.BoxInterface.d.l) != null) {
                strN = fVar.D();
            }
            this.g.k(strN);
        }
        return this.g;
    }

    public o<Integer> o() {
        if (this.h == null) {
            this.h = new o<>();
            this.h.k(Integer.valueOf(b0.i().m("wifi_type", 5)));
        }
        return this.h;
    }

    public void q() {
        if (this.e == null) {
            this.e = t.j2(this.f1985d.get());
        }
        this.e.k2(new a());
        this.e.m2(i().getResources().getString(2131689605), this.f.e());
        w();
    }

    public void r() {
        cn.manstep.phonemirrorBox.k0.h hVar = new cn.manstep.phonemirrorBox.k0.h(2131689605, this.f.e());
        hVar.u2(this.f1985d.get(), "InputDialog");
        hVar.A2(new c());
    }

    public void s(n nVar) {
        this.f1985d = new WeakReference<>(nVar);
    }

    public void t() {
        if (this.e == null) {
            this.e = t.j2(this.f1985d.get());
        }
        this.e.k2(new b());
        this.e.m2(i().getResources().getString(2131690014), this.g.e());
        w();
    }

    public void u() {
        cn.manstep.phonemirrorBox.k0.h hVar = new cn.manstep.phonemirrorBox.k0.h(2131690014, this.g.e());
        hVar.u2(this.f1985d.get(), "InputDialog");
        hVar.A2(new d());
    }

    public void v(int i) {
        this.h.k(Integer.valueOf(i));
        b0.i().F("wifi_type", Integer.valueOf(i));
        if (cn.manstep.phonemirrorBox.BoxInterface.d.i()) {
            cn.manstep.phonemirrorBox.BoxInterface.d.l.K0(i);
        }
        p();
        List<cn.manstep.phonemirrorBox.g0.e> listM = m(i == 5);
        if (listM.isEmpty() || !cn.manstep.phonemirrorBox.BoxInterface.d.i()) {
            if (cn.manstep.phonemirrorBox.BoxInterface.d.i()) {
                return;
            }
            this.i.k("0");
        } else {
            String strA = listM.get(0).a();
            this.i.k(strA);
            cn.manstep.phonemirrorBox.BoxInterface.c.e().z(Integer.parseInt(strA));
            cn.manstep.phonemirrorBox.BoxInterface.d.l.o1(Integer.parseInt(strA));
        }
    }
}
