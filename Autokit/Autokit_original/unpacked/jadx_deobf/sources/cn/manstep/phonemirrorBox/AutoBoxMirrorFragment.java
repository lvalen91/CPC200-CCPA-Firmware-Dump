package cn.manstep.phonemirrorBox;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.fragment.app.Fragment;
import androidx.lifecycle.C0409w;
import androidx.lifecycle.InterfaceC0402p;
import cn.manstep.phonemirrorBox.BoxInterface.C0733d;
import cn.manstep.phonemirrorBox.p091x0.C1006d;
import cn.manstep.phonemirrorBox.p091x0.C1011i;
import cn.manstep.phonemirrorBox.util.C0982s;

/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class AutoBoxMirrorFragment extends Fragment {

    /* JADX INFO: renamed from: a0 */
    private AutoBoxMirrorTextureView f4227a0;

    /* JADX INFO: renamed from: b0 */
    private FrameLayout f4228b0;

    /* JADX INFO: renamed from: c0 */
    private C1006d f4229c0;

    /* JADX INFO: renamed from: d0 */
    private C1006d.d f4230d0;

    /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.AutoBoxMirrorFragment$a */
    class C0710a implements InterfaceC0402p<Boolean> {
        C0710a() {
        }

        @Override // androidx.lifecycle.InterfaceC0402p
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public void mo2340c(Boolean bool) {
            C0982s.m7374d("AutoBoxMirrorFragment", "onChanged: useOpenGl=" + bool);
            if (AutoBoxMirrorFragment.this.f4228b0 != null) {
                AutoBoxMirrorFragment.this.f4227a0.setUseGlRender(bool.booleanValue());
                AutoBoxMirrorFragment.this.f4228b0.removeView(AutoBoxMirrorFragment.this.f4227a0);
                AutoBoxMirrorFragment.this.f4228b0.addView(AutoBoxMirrorFragment.this.f4227a0, 2);
            }
        }
    }

    /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.AutoBoxMirrorFragment$b */
    class C0711b implements InterfaceC0402p<Boolean> {
        C0711b(AutoBoxMirrorFragment autoBoxMirrorFragment) {
        }

        @Override // androidx.lifecycle.InterfaceC0402p
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public void mo2340c(Boolean bool) {
            if (C0733d.m5591i()) {
                C0733d.f4428l.f4500z.m5472l();
            }
        }
    }

    /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.AutoBoxMirrorFragment$c */
    class C0712c implements C1006d.d {
        C0712c() {
        }

        @Override // cn.manstep.phonemirrorBox.p091x0.C1006d.d
        /* JADX INFO: renamed from: k */
        public void mo5321k() {
        }

        @Override // cn.manstep.phonemirrorBox.p091x0.C1006d.d
        /* JADX INFO: renamed from: m */
        public void mo5322m(int i) {
            if (i == 2 && C0925p.f5872i) {
                AutoBoxMirrorFragment.this.f4227a0.m5340l();
                AutoBoxMirrorFragment.this.f4228b0.removeView(AutoBoxMirrorFragment.this.f4227a0);
                AutoBoxMirrorFragment.this.f4228b0.addView(AutoBoxMirrorFragment.this.f4227a0, 2);
            }
        }
    }

    @Override // androidx.fragment.app.Fragment
    /* JADX INFO: renamed from: L0 */
    public View mo2408L0(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        C0409w.a aVar = new C0409w.a(m2385D() == null ? null : m2385D().getApplication());
        C1011i c1011i = (C1011i) new C0409w(m2403J1(), aVar).m3053a(C1011i.class);
        c1011i.f6346g.m2960f(m2403J1(), new C0710a());
        c1011i.f6345f.m2960f(m2403J1(), new C0711b(this));
        this.f4229c0 = (C1006d) new C0409w(m2403J1(), aVar).m3053a(C1006d.class);
        C0712c c0712c = new C0712c();
        this.f4230d0 = c0712c;
        this.f4229c0.m7576u(c0712c);
        return layoutInflater.inflate(2131492933, viewGroup, false);
    }

    @Override // androidx.fragment.app.Fragment
    /* JADX INFO: renamed from: M0 */
    public void mo2411M0() {
        super.mo2411M0();
        this.f4229c0.m7579z(this.f4230d0);
    }

    @Override // androidx.fragment.app.Fragment
    /* JADX INFO: renamed from: O0 */
    public void mo2416O0() {
        super.mo2416O0();
        this.f4228b0 = null;
    }

    @Override // androidx.fragment.app.Fragment
    /* JADX INFO: renamed from: g1 */
    public void mo2469g1(View view, Bundle bundle) {
        super.mo2469g1(view, bundle);
        this.f4227a0 = (AutoBoxMirrorTextureView) view.findViewById(2131296257);
        this.f4228b0 = (FrameLayout) view.findViewById(2131296641);
    }
}
