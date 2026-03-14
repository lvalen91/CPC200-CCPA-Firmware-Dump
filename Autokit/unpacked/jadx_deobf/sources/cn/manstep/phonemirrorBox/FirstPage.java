package cn.manstep.phonemirrorBox;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.fragment.app.Fragment;
import androidx.lifecycle.C0409w;
import cn.manstep.phonemirrorBox.BoxInterface.C0732c;
import cn.manstep.phonemirrorBox.BoxInterface.C0733d;
import cn.manstep.phonemirrorBox.p075i0.AbstractC0869o;
import cn.manstep.phonemirrorBox.p089v0.C0995e;
import cn.manstep.phonemirrorBox.p091x0.C1006d;
import cn.manstep.phonemirrorBox.p091x0.C1009g;
import cn.manstep.phonemirrorBox.p091x0.C1013k;
import cn.manstep.phonemirrorBox.util.C0982s;

/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class FirstPage extends Fragment implements C0995e.d {

    /* JADX INFO: renamed from: a0 */
    private C1009g f4563a0;

    /* JADX INFO: renamed from: b0 */
    private C1006d f4564b0;

    /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.FirstPage$a */
    class RunnableC0742a implements Runnable {

        /* JADX INFO: renamed from: b */
        final /* synthetic */ View f4565b;

        RunnableC0742a(FirstPage firstPage, View view) {
            this.f4565b = view;
        }

        @Override // java.lang.Runnable
        public void run() {
            C0982s.m7373c("FirstPage,onViewCreated: " + this.f4565b.getWidth() + "x" + this.f4565b.getHeight());
        }
    }

    @Override // androidx.fragment.app.Fragment
    /* JADX INFO: renamed from: L0 */
    public View mo2408L0(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View viewInflate = layoutInflater.inflate(2131492941, viewGroup, false);
        C0409w.a aVar = new C0409w.a(m2385D() == null ? null : m2385D().getApplication());
        C1013k c1013k = (C1013k) new C0409w(m2403J1(), aVar).m3053a(C1013k.class);
        this.f4563a0 = (C1009g) new C0409w(m2403J1(), aVar).m3053a(C1009g.class);
        this.f4564b0 = (C1006d) new C0409w(m2403J1(), aVar).m3053a(C1006d.class);
        this.f4563a0.m7625J(m2401J());
        this.f4563a0.m7619D(m2385D());
        this.f4563a0.m7627L(c1013k);
        AbstractC0869o abstractC0869oM6439L = AbstractC0869o.m6439L(viewInflate);
        abstractC0869oM6439L.mo6441N(this.f4563a0);
        abstractC0869oM6439L.m2328G(this);
        C0995e.m7442O(this);
        return viewInflate;
    }

    @Override // androidx.fragment.app.Fragment
    /* JADX INFO: renamed from: M0 */
    public void mo2411M0() {
        super.mo2411M0();
        C0995e.m7447T(this);
    }

    @Override // cn.manstep.phonemirrorBox.p089v0.C0995e.d
    /* JADX INFO: renamed from: g */
    public void mo5834g(int i, int i2, int i3) {
        C0982s.m7374d("FirstPage", "onListenMsg: " + i + ", " + i2 + ", " + i3);
        if (i != 4) {
            if (i == 1) {
                C0982s.m7374d("FirstPage", "onListenMsg: page=" + i2 + "," + C0995e.m7432E(i2));
                if (i2 == 5) {
                    this.f4563a0.m7617B(true);
                    this.f4564b0.m7575E(3);
                    return;
                } else if (i2 != 4) {
                    this.f4563a0.m7617B(false);
                    return;
                } else {
                    if (4 != this.f4564b0.m7577v().m2959e().intValue()) {
                        this.f4564b0.m7575E(4);
                        this.f4563a0.m7617B(false);
                        return;
                    }
                    return;
                }
            }
            return;
        }
        if (i2 == 53) {
            C1009g c1009g = this.f4563a0;
            if (c1009g == null || C0733d.f4428l == null) {
                return;
            }
            c1009g.m7621F(C0733d.m5597r());
            return;
        }
        if (i2 == 52 || i2 == 8) {
            this.f4563a0.m7642z();
            C0982s.m7376f("FirstPage", "onListenMsg: wParam=" + i2);
            this.f4563a0.m7633q(false);
            C0732c.m5542e().m5563u();
            this.f4564b0.m7575E(0);
            return;
        }
        if (i2 == 1) {
            this.f4563a0.m7633q(true);
            this.f4564b0.m7575E(2);
            return;
        }
        if (i2 == 15) {
            this.f4564b0.m7575E(2);
            return;
        }
        if (i2 == 24) {
            this.f4563a0.m7620E(true);
            return;
        }
        if (i2 == 25) {
            this.f4563a0.m7620E(false);
            return;
        }
        if (i2 == 26) {
            this.f4563a0.m7628M(true);
            return;
        }
        if (i2 == 27) {
            this.f4563a0.m7628M(false);
            return;
        }
        if (i2 == 29) {
            this.f4563a0.m7632Q(false);
            return;
        }
        if (i2 == 30) {
            this.f4563a0.m7632Q(true);
            return;
        }
        if (i2 == 50) {
            this.f4563a0.m7616A(1);
            return;
        }
        if (i2 == 51) {
            this.f4563a0.m7616A(2);
        } else if (i2 == 70) {
            this.f4563a0.m7622G(i3);
        } else if (i2 == 56) {
            this.f4564b0.m7578y();
        }
    }

    @Override // androidx.fragment.app.Fragment
    /* JADX INFO: renamed from: g1 */
    public void mo2469g1(View view, Bundle bundle) {
        super.mo2469g1(view, bundle);
        View viewM2478l0 = m2478l0();
        if (viewM2478l0 != null) {
            viewM2478l0.post(new RunnableC0742a(this, viewM2478l0));
        }
    }

    @Override // cn.manstep.phonemirrorBox.p089v0.C0995e.d
    /* JADX INFO: renamed from: s */
    public void mo5835s(int i, int i2, Bundle bundle) {
        if (i == 4 && i2 == 62 && this.f4564b0 != null) {
            this.f4564b0.m7571A(bundle.getByteArray("COVER"));
        }
    }

    @Override // cn.manstep.phonemirrorBox.p089v0.C0995e.d
    /* JADX INFO: renamed from: x */
    public void mo5836x(int i, int i2, String str) {
        C1006d c1006d;
        if (i == 4) {
            if (i2 == 60) {
                C1006d c1006d2 = this.f4564b0;
                if (c1006d2 != null) {
                    c1006d2.m7573C(str);
                    return;
                }
                return;
            }
            if (i2 == 61) {
                C1006d c1006d3 = this.f4564b0;
                if (c1006d3 != null) {
                    c1006d3.m7572B(str);
                    return;
                }
                return;
            }
            if (i2 != 63 || (c1006d = this.f4564b0) == null) {
                return;
            }
            c1006d.m7574D(str);
        }
    }
}
