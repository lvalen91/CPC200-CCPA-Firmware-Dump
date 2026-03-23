package cn.manstep.phonemirrorBox.p089v0;

import android.content.Context;
import cn.manstep.phonemirrorBox.p088u0.C0958e;
import com.yalantis.ucrop.BuildConfig;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;

/* JADX INFO: renamed from: cn.manstep.phonemirrorBox.v0.a */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class C0991a implements InterfaceC0994d {

    /* JADX INFO: renamed from: i */
    private static C0991a f6168i;

    /* JADX INFO: renamed from: a */
    private final ArrayList<InterfaceC0994d> f6169a;

    /* JADX INFO: renamed from: b */
    private final List<InterfaceC0992b> f6170b;

    /* JADX INFO: renamed from: c */
    private int f6171c = 0;

    /* JADX INFO: renamed from: d */
    private boolean f6172d = false;

    /* JADX INFO: renamed from: e */
    private String f6173e = BuildConfig.FLAVOR;

    /* JADX INFO: renamed from: f */
    private int f6174f = 0;

    /* JADX INFO: renamed from: g */
    private boolean f6175g = false;

    /* JADX INFO: renamed from: h */
    private boolean f6176h = false;

    private C0991a() {
        C0958e c0958e = new C0958e();
        C0993c c0993c = new C0993c();
        ArrayList<InterfaceC0994d> arrayList = new ArrayList<>(2);
        this.f6169a = arrayList;
        arrayList.add(c0958e);
        this.f6169a.add(c0993c);
        this.f6170b = new LinkedList();
    }

    /* JADX INFO: renamed from: t */
    public static C0991a m7412t() {
        if (f6168i == null) {
            synchronized (C0991a.class) {
                if (f6168i == null) {
                    f6168i = new C0991a();
                }
            }
        }
        return f6168i;
    }

    /* JADX INFO: renamed from: A */
    public boolean m7413A() {
        return m7415C() || m7423w() || m7422v();
    }

    /* JADX INFO: renamed from: B */
    public boolean m7414B() {
        return this.f6174f == 10;
    }

    /* JADX INFO: renamed from: C */
    public boolean m7415C() {
        return this.f6175g;
    }

    /* JADX INFO: renamed from: D */
    public void m7416D() {
        if (this.f6174f != 15) {
            Iterator<InterfaceC0994d> it = this.f6169a.iterator();
            while (it.hasNext()) {
                it.next().mo7152p();
            }
            this.f6174f = 15;
        }
    }

    /* JADX INFO: renamed from: E */
    public void m7417E() {
        List<InterfaceC0992b> list = this.f6170b;
        if (list != null) {
            list.clear();
        }
        this.f6172d = false;
    }

    /* JADX INFO: renamed from: F */
    public void m7418F(InterfaceC0992b interfaceC0992b) {
        List<InterfaceC0992b> list = this.f6170b;
        if (list != null) {
            list.remove(interfaceC0992b);
        }
    }

    @Override // cn.manstep.phonemirrorBox.p089v0.InterfaceC0994d
    /* JADX INFO: renamed from: a */
    public void mo7137a() {
        if (this.f6174f != 2) {
            Iterator<InterfaceC0994d> it = this.f6169a.iterator();
            while (it.hasNext()) {
                it.next().mo7137a();
            }
            this.f6174f = 2;
        }
        Iterator<InterfaceC0992b> it2 = this.f6170b.iterator();
        while (it2.hasNext()) {
            it2.next().mo5985d(this.f6173e);
        }
    }

    @Override // cn.manstep.phonemirrorBox.p089v0.InterfaceC0994d
    /* JADX INFO: renamed from: b */
    public void mo7138b() {
        if (this.f6174f != 8) {
            Iterator<InterfaceC0994d> it = this.f6169a.iterator();
            while (it.hasNext()) {
                it.next().mo7138b();
            }
            this.f6174f = 8;
        }
        this.f6176h = true;
    }

    @Override // cn.manstep.phonemirrorBox.p089v0.InterfaceC0994d
    /* JADX INFO: renamed from: c */
    public void mo7139c(String str, boolean z) {
        if (this.f6174f != 1) {
            Iterator<InterfaceC0994d> it = this.f6169a.iterator();
            while (it.hasNext()) {
                it.next().mo7139c(str, z);
            }
            this.f6174f = 1;
        }
        this.f6173e = str;
    }

    @Override // cn.manstep.phonemirrorBox.p089v0.InterfaceC0994d
    /* JADX INFO: renamed from: d */
    public void mo7140d() {
        if (this.f6174f != 9) {
            Iterator<InterfaceC0994d> it = this.f6169a.iterator();
            while (it.hasNext()) {
                it.next().mo7140d();
            }
            this.f6174f = 9;
        }
        this.f6176h = false;
    }

    @Override // cn.manstep.phonemirrorBox.p089v0.InterfaceC0994d
    /* JADX INFO: renamed from: e */
    public void mo7141e() {
        if (this.f6174f != 10) {
            Iterator<InterfaceC0994d> it = this.f6169a.iterator();
            while (it.hasNext()) {
                it.next().mo7141e();
            }
            this.f6174f = 10;
        }
    }

    @Override // cn.manstep.phonemirrorBox.p089v0.InterfaceC0994d
    /* JADX INFO: renamed from: f */
    public void mo7142f() {
        this.f6171c = 0;
        if (this.f6174f != 5) {
            Iterator<InterfaceC0994d> it = this.f6169a.iterator();
            while (it.hasNext()) {
                it.next().mo7142f();
            }
            this.f6174f = 5;
        }
        Iterator<InterfaceC0992b> it2 = this.f6170b.iterator();
        while (it2.hasNext()) {
            it2.next().mo5984c();
        }
    }

    @Override // cn.manstep.phonemirrorBox.p089v0.InterfaceC0994d
    /* JADX INFO: renamed from: g */
    public void mo7143g() {
        if (this.f6174f != 6) {
            Iterator<InterfaceC0994d> it = this.f6169a.iterator();
            while (it.hasNext()) {
                it.next().mo7143g();
            }
            this.f6174f = 6;
        }
        this.f6172d = true;
        Iterator<InterfaceC0992b> it2 = this.f6170b.iterator();
        while (it2.hasNext()) {
            it2.next().mo5990i();
        }
    }

    @Override // cn.manstep.phonemirrorBox.p089v0.InterfaceC0994d
    /* JADX INFO: renamed from: h */
    public void mo7144h() {
        if (this.f6174f != 12) {
            Iterator<InterfaceC0994d> it = this.f6169a.iterator();
            while (it.hasNext()) {
                it.next().mo7144h();
            }
            this.f6174f = 12;
        }
        this.f6175g = true;
        for (InterfaceC0992b interfaceC0992b : this.f6170b) {
            interfaceC0992b.mo5986e();
            interfaceC0992b.mo5987f();
        }
    }

    @Override // cn.manstep.phonemirrorBox.p089v0.InterfaceC0994d
    /* JADX INFO: renamed from: i */
    public void mo7145i() {
        this.f6171c = 0;
        if (this.f6174f != 3) {
            Iterator<InterfaceC0994d> it = this.f6169a.iterator();
            while (it.hasNext()) {
                it.next().mo7145i();
            }
            this.f6174f = 3;
        }
    }

    @Override // cn.manstep.phonemirrorBox.p089v0.InterfaceC0994d
    /* JADX INFO: renamed from: j */
    public void mo7146j() {
        if (this.f6174f != 16) {
            Iterator<InterfaceC0994d> it = this.f6169a.iterator();
            while (it.hasNext()) {
                it.next().mo7146j();
            }
            this.f6174f = 16;
        }
        Iterator<InterfaceC0992b> it2 = this.f6170b.iterator();
        while (it2.hasNext()) {
            it2.next().mo5992k();
        }
    }

    @Override // cn.manstep.phonemirrorBox.p089v0.InterfaceC0994d
    /* JADX INFO: renamed from: k */
    public void mo7147k() {
        this.f6171c = 1;
        if (this.f6174f != 4) {
            Iterator<InterfaceC0994d> it = this.f6169a.iterator();
            while (it.hasNext()) {
                it.next().mo7147k();
            }
            this.f6174f = 4;
        }
        Iterator<InterfaceC0992b> it2 = this.f6170b.iterator();
        while (it2.hasNext()) {
            it2.next().mo5988g();
        }
    }

    @Override // cn.manstep.phonemirrorBox.p089v0.InterfaceC0994d
    /* JADX INFO: renamed from: l */
    public void mo7148l() {
        if (this.f6174f != 11) {
            Iterator<InterfaceC0994d> it = this.f6169a.iterator();
            while (it.hasNext()) {
                it.next().mo7148l();
            }
            this.f6174f = 11;
        }
    }

    @Override // cn.manstep.phonemirrorBox.p089v0.InterfaceC0994d
    /* JADX INFO: renamed from: m */
    public void mo7149m() {
        if (this.f6174f != 7) {
            Iterator<InterfaceC0994d> it = this.f6169a.iterator();
            while (it.hasNext()) {
                it.next().mo7149m();
            }
            this.f6174f = 7;
        }
        this.f6172d = false;
        Iterator<InterfaceC0992b> it2 = this.f6170b.iterator();
        while (it2.hasNext()) {
            it2.next().mo5991j();
        }
    }

    @Override // cn.manstep.phonemirrorBox.p089v0.InterfaceC0994d
    /* JADX INFO: renamed from: n */
    public void mo7150n() {
        if (this.f6174f != 17) {
            Iterator<InterfaceC0994d> it = this.f6169a.iterator();
            while (it.hasNext()) {
                it.next().mo7150n();
            }
            this.f6174f = 17;
        }
        Iterator<InterfaceC0992b> it2 = this.f6170b.iterator();
        while (it2.hasNext()) {
            it2.next().mo5989h();
        }
    }

    @Override // cn.manstep.phonemirrorBox.p089v0.InterfaceC0994d
    /* JADX INFO: renamed from: o */
    public void mo7151o() {
        if (this.f6174f != 13) {
            Iterator<InterfaceC0994d> it = this.f6169a.iterator();
            while (it.hasNext()) {
                it.next().mo7151o();
            }
            this.f6174f = 13;
        }
        this.f6175g = false;
        Iterator<InterfaceC0992b> it2 = this.f6170b.iterator();
        while (it2.hasNext()) {
            it2.next().mo5983b();
        }
    }

    @Override // cn.manstep.phonemirrorBox.p089v0.InterfaceC0994d
    /* JADX INFO: renamed from: p */
    public void mo7152p() {
        if (this.f6174f != 14) {
            Iterator<InterfaceC0994d> it = this.f6169a.iterator();
            while (it.hasNext()) {
                it.next().mo7152p();
            }
            this.f6174f = 14;
        }
        Iterator<InterfaceC0992b> it2 = this.f6170b.iterator();
        while (it2.hasNext()) {
            it2.next().mo5986e();
        }
    }

    @Override // cn.manstep.phonemirrorBox.p089v0.InterfaceC0994d
    /* JADX INFO: renamed from: q */
    public void mo7153q(Context context) {
        Iterator<InterfaceC0994d> it = this.f6169a.iterator();
        while (it.hasNext()) {
            it.next().mo7153q(context);
        }
    }

    /* JADX INFO: renamed from: r */
    public void m7419r(InterfaceC0992b interfaceC0992b) {
        this.f6170b.add(interfaceC0992b);
    }

    /* JADX INFO: renamed from: s */
    public void m7420s() {
        this.f6171c = 2;
        if (this.f6174f != 40) {
            Iterator<InterfaceC0994d> it = this.f6169a.iterator();
            while (it.hasNext()) {
                it.next().mo7147k();
            }
            this.f6174f = 40;
        }
        Iterator<InterfaceC0992b> it2 = this.f6170b.iterator();
        while (it2.hasNext()) {
            it2.next().mo5982a();
        }
    }

    /* JADX INFO: renamed from: u */
    public String m7421u() {
        return this.f6173e;
    }

    /* JADX INFO: renamed from: v */
    public boolean m7422v() {
        return this.f6171c == 2;
    }

    /* JADX INFO: renamed from: w */
    public boolean m7423w() {
        return this.f6171c == 1;
    }

    /* JADX INFO: renamed from: x */
    public boolean m7424x() {
        return m7422v() || m7423w();
    }

    /* JADX INFO: renamed from: y */
    public boolean m7425y() {
        return this.f6172d;
    }

    /* JADX INFO: renamed from: z */
    public boolean m7426z() {
        return this.f6176h;
    }
}
