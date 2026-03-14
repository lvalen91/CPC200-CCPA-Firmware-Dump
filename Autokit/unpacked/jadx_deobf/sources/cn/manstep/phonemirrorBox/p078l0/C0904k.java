package cn.manstep.phonemirrorBox.p078l0;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.databinding.C0328f;
import androidx.lifecycle.C0409w;
import cn.manstep.phonemirrorBox.BoxInterface.C0733d;
import cn.manstep.phonemirrorBox.C0930q;
import cn.manstep.phonemirrorBox.p075i0.AbstractC0859e;
import cn.manstep.phonemirrorBox.p091x0.C1006d;
import cn.manstep.phonemirrorBox.p091x0.C1011i;
import cn.manstep.phonemirrorBox.p091x0.C1013k;

/* JADX INFO: renamed from: cn.manstep.phonemirrorBox.l0.k */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class C0904k extends C0906m {

    /* JADX INFO: renamed from: c0 */
    private C1011i f5631c0;

    /* JADX INFO: renamed from: d0 */
    private C1013k f5632d0;

    /* JADX INFO: renamed from: e0 */
    private C1006d f5633e0;

    /* JADX INFO: renamed from: f0 */
    private AbstractC0859e f5634f0;

    /* JADX INFO: renamed from: g0 */
    private final C1006d.d f5635g0 = new a();

    /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.l0.k$a */
    class a implements C1006d.d {
        a() {
        }

        @Override // cn.manstep.phonemirrorBox.p091x0.C1006d.d
        /* JADX INFO: renamed from: k */
        public void mo5321k() {
        }

        @Override // cn.manstep.phonemirrorBox.p091x0.C1006d.d
        /* JADX INFO: renamed from: m */
        public void mo5322m(int i) {
            C0904k.this.f5631c0.m7652C(i != 0);
        }
    }

    /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.l0.k$b */
    class b implements View.OnClickListener {
        b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (C0904k.this.m2404K() instanceof InterfaceC0912s) {
                ((InterfaceC0912s) C0904k.this.m2404K()).mo5267f(C0904k.this);
            } else {
                C0904k.this.mo6691g2();
            }
        }
    }

    private C0904k() {
    }

    public static C0904k newInstance() {
        return new C0904k();
    }

    @Override // androidx.fragment.app.Fragment
    /* JADX INFO: renamed from: H0 */
    public void mo2397H0(Bundle bundle) {
        super.mo2397H0(bundle);
    }

    @Override // androidx.fragment.app.Fragment
    /* JADX INFO: renamed from: L0 */
    public View mo2408L0(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        this.f5634f0 = (AbstractC0859e) C0328f.m2359e(layoutInflater, 2131492930, viewGroup, false);
        C1013k c1013k = (C1013k) new C0409w(C0930q.m6906g().m6913h(), this.f5690a0).m3053a(C1013k.class);
        this.f5632d0 = c1013k;
        this.f5634f0.mo6370M(c1013k);
        C1011i c1011i = (C1011i) new C0409w(C0930q.m6906g().m6913h(), this.f5690a0).m3053a(C1011i.class);
        this.f5631c0 = c1011i;
        c1011i.m7650A();
        this.f5634f0.mo6369L(this.f5631c0);
        this.f5634f0.m2328G(this);
        C1006d c1006d = (C1006d) new C0409w(C0930q.m6906g().m6913h(), this.f5690a0).m3053a(C1006d.class);
        this.f5633e0 = c1006d;
        c1006d.m7576u(this.f5635g0);
        if (C0733d.m5591i()) {
            this.f5631c0.m7652C(true);
        }
        return this.f5634f0.m2334t();
    }

    @Override // androidx.fragment.app.Fragment
    /* JADX INFO: renamed from: O0 */
    public void mo2416O0() {
        this.f5632d0 = null;
        this.f5631c0 = null;
        this.f5633e0.m7579z(this.f5635g0);
        this.f5633e0 = null;
        this.f5634f0 = null;
        super.mo2416O0();
    }

    @Override // cn.manstep.phonemirrorBox.p078l0.C0906m, androidx.fragment.app.Fragment
    /* JADX INFO: renamed from: g1 */
    public void mo2469g1(View view, Bundle bundle) {
        super.mo2469g1(view, bundle);
        this.f5631c0.m7655F(m2385D() == null ? null : m2385D().getSupportFragmentManager());
        view.findViewById(2131296370).setOnClickListener(new b());
    }
}
