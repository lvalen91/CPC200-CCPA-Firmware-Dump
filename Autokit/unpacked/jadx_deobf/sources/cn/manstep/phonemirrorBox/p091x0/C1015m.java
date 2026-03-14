package cn.manstep.phonemirrorBox.p091x0;

import android.app.Application;
import android.text.TextUtils;
import androidx.fragment.app.AbstractC0366n;
import androidx.fragment.app.AbstractC0375w;
import androidx.lifecycle.C0384a;
import androidx.lifecycle.C0401o;
import cn.manstep.phonemirrorBox.BoxInterface.C0732c;
import cn.manstep.phonemirrorBox.BoxInterface.C0733d;
import cn.manstep.phonemirrorBox.BoxInterface.C0735f;
import cn.manstep.phonemirrorBox.C0795b0;
import cn.manstep.phonemirrorBox.p073g0.C0850e;
import cn.manstep.phonemirrorBox.p077k0.C0889h;
import cn.manstep.phonemirrorBox.p078l0.C0913t;
import com.yalantis.ucrop.BuildConfig;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/* JADX INFO: renamed from: cn.manstep.phonemirrorBox.x0.m */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class C1015m extends C0384a {

    /* JADX INFO: renamed from: d */
    private WeakReference<AbstractC0366n> f6424d;

    /* JADX INFO: renamed from: e */
    private C0913t f6425e;

    /* JADX INFO: renamed from: f */
    private C0401o<String> f6426f;

    /* JADX INFO: renamed from: g */
    private C0401o<String> f6427g;

    /* JADX INFO: renamed from: h */
    private C0401o<Integer> f6428h;

    /* JADX INFO: renamed from: i */
    private C0401o<String> f6429i;

    /* JADX INFO: renamed from: j */
    private final List<C0850e> f6430j;

    /* JADX INFO: renamed from: k */
    private final List<String> f6431k;

    /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.x0.m$a */
    class a implements C0913t.e {
        a() {
        }

        @Override // cn.manstep.phonemirrorBox.p078l0.C0913t.e
        /* JADX INFO: renamed from: a */
        public boolean mo6755a(String str) {
            if (TextUtils.isEmpty(str) || str.getBytes().length > 16) {
                return false;
            }
            if (str.equals(C1015m.this.f6426f.m2959e())) {
                return true;
            }
            C1015m.this.f6426f.mo2965k(str);
            C0795b0.m6071i().m6085F("BtName", str);
            if (!C0733d.m5591i()) {
                return true;
            }
            C0733d.f4428l.m5721e1(str.getBytes());
            return true;
        }
    }

    /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.x0.m$b */
    class b implements C0913t.e {
        b() {
        }

        @Override // cn.manstep.phonemirrorBox.p078l0.C0913t.e
        /* JADX INFO: renamed from: a */
        public boolean mo6755a(String str) {
            if (TextUtils.isEmpty(str) || str.getBytes().length > 16) {
                return false;
            }
            if (str.equals(C1015m.this.f6427g.m2959e())) {
                return true;
            }
            C1015m.this.f6427g.mo2965k(str);
            C0795b0.m6071i().m6085F("WifiName", str);
            if (!C0733d.m5591i()) {
                return true;
            }
            C0733d.f4428l.m5728i1(str.getBytes());
            return true;
        }
    }

    /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.x0.m$c */
    class c implements C0889h.c {
        c() {
        }

        @Override // cn.manstep.phonemirrorBox.p077k0.C0889h.c
        /* JADX INFO: renamed from: a */
        public boolean mo6605a(String str) {
            if (TextUtils.isEmpty(str) || str.getBytes().length > 15) {
                return false;
            }
            if (str.equals(C1015m.this.f6426f.m2959e())) {
                return true;
            }
            C1015m.this.f6426f.mo2965k(str);
            C0795b0.m6071i().m6085F("BtName", str);
            if (!C0733d.m5591i()) {
                return true;
            }
            C0733d.f4428l.m5721e1(str.getBytes());
            return true;
        }
    }

    /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.x0.m$d */
    class d implements C0889h.c {
        d() {
        }

        @Override // cn.manstep.phonemirrorBox.p077k0.C0889h.c
        /* JADX INFO: renamed from: a */
        public boolean mo6605a(String str) {
            if (TextUtils.isEmpty(str) || str.getBytes().length > 15) {
                return false;
            }
            if (str.equals(C1015m.this.f6427g.m2959e())) {
                return true;
            }
            C1015m.this.f6427g.mo2965k(str);
            C0795b0.m6071i().m6085F("WifiName", str);
            if (!C0733d.m5591i()) {
                return true;
            }
            C0733d.f4428l.m5728i1(str.getBytes());
            return true;
        }
    }

    public C1015m(Application application) {
        super(application);
        this.f6430j = new ArrayList();
        this.f6431k = new ArrayList();
    }

    /* JADX INFO: renamed from: m */
    private List<C0850e> m7780m(boolean z) {
        this.f6430j.clear();
        for (int i = 0; i < this.f6431k.size(); i++) {
            boolean z2 = C0732c.m5542e().m5560r() == Integer.parseInt(this.f6431k.get(i));
            if (z) {
                if (Integer.parseInt(this.f6431k.get(i)) >= 36) {
                    this.f6430j.add(new C0850e(this.f6431k.get(i), z2));
                }
            } else if (Integer.parseInt(this.f6431k.get(i)) < 36) {
                this.f6430j.add(new C0850e(this.f6431k.get(i), z2));
            }
        }
        return this.f6430j;
    }

    /* JADX INFO: renamed from: p */
    private void m7781p() {
        this.f6431k.clear();
        if (TextUtils.isEmpty(C0732c.m5542e().m5561s())) {
            return;
        }
        this.f6431k.addAll(Arrays.asList(C0732c.m5542e().m5561s().split(",")));
    }

    /* JADX INFO: renamed from: w */
    private void m7782w() {
        if (this.f6425e != null) {
            AbstractC0375w abstractC0375wM2774l = this.f6424d.get().m2774l();
            if (this.f6425e.m2486q0()) {
                abstractC0375wM2774l.mo2533t(this.f6425e);
            } else {
                abstractC0375wM2774l.m2886b(2131296606, this.f6425e);
            }
            abstractC0375wM2774l.mo2526h();
        }
    }

    /* JADX INFO: renamed from: l */
    public C0401o<String> m7783l() {
        if (this.f6426f == null) {
            this.f6426f = new C0401o<>();
            String strM6092n = C0795b0.m6071i().m6092n("BtName", BuildConfig.FLAVOR);
            if (TextUtils.isEmpty(strM6092n) && C0733d.f4428l != null) {
                strM6092n = C0733d.m5597r();
            }
            this.f6426f.mo2965k(strM6092n);
        }
        return this.f6426f;
    }

    /* JADX INFO: renamed from: n */
    public C0401o<String> m7784n() {
        C0735f c0735f;
        if (this.f6427g == null) {
            this.f6427g = new C0401o<>();
            String strM6092n = C0795b0.m6071i().m6092n("WifiName", BuildConfig.FLAVOR);
            if (TextUtils.isEmpty(strM6092n) && (c0735f = C0733d.f4428l) != null) {
                strM6092n = c0735f.m5671D();
            }
            this.f6427g.mo2965k(strM6092n);
        }
        return this.f6427g;
    }

    /* JADX INFO: renamed from: o */
    public C0401o<Integer> m7785o() {
        if (this.f6428h == null) {
            this.f6428h = new C0401o<>();
            this.f6428h.mo2965k(Integer.valueOf(C0795b0.m6071i().m6091m("wifi_type", 5)));
        }
        return this.f6428h;
    }

    /* JADX INFO: renamed from: q */
    public void m7786q() {
        if (this.f6425e == null) {
            this.f6425e = C0913t.m6751j2(this.f6424d.get());
        }
        this.f6425e.m6752k2(new a());
        this.f6425e.m6754m2(m2977i().getResources().getString(2131689605), this.f6426f.m2959e());
        m7782w();
    }

    /* JADX INFO: renamed from: r */
    public void m7787r() {
        C0889h c0889h = new C0889h(2131689605, this.f6426f.m2959e());
        c0889h.m2615u2(this.f6424d.get(), "InputDialog");
        c0889h.m6604A2(new c());
    }

    /* JADX INFO: renamed from: s */
    public void m7788s(AbstractC0366n abstractC0366n) {
        this.f6424d = new WeakReference<>(abstractC0366n);
    }

    /* JADX INFO: renamed from: t */
    public void m7789t() {
        if (this.f6425e == null) {
            this.f6425e = C0913t.m6751j2(this.f6424d.get());
        }
        this.f6425e.m6752k2(new b());
        this.f6425e.m6754m2(m2977i().getResources().getString(2131690014), this.f6427g.m2959e());
        m7782w();
    }

    /* JADX INFO: renamed from: u */
    public void m7790u() {
        C0889h c0889h = new C0889h(2131690014, this.f6427g.m2959e());
        c0889h.m2615u2(this.f6424d.get(), "InputDialog");
        c0889h.m6604A2(new d());
    }

    /* JADX INFO: renamed from: v */
    public void m7791v(int i) {
        this.f6428h.mo2965k(Integer.valueOf(i));
        C0795b0.m6071i().m6085F("wifi_type", Integer.valueOf(i));
        if (C0733d.m5591i()) {
            C0733d.f4428l.m5686K0(i);
        }
        m7781p();
        List<C0850e> listM7780m = m7780m(i == 5);
        if (listM7780m.isEmpty() || !C0733d.m5591i()) {
            if (C0733d.m5591i()) {
                return;
            }
            this.f6429i.mo2965k("0");
        } else {
            String strM6329a = listM7780m.get(0).m6329a();
            this.f6429i.mo2965k(strM6329a);
            C0732c.m5542e().m5568z(Integer.parseInt(strM6329a));
            C0733d.f4428l.m5739o1(Integer.parseInt(strM6329a));
        }
    }
}
