package cn.manstep.phonemirrorBox;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.fragment.app.Fragment;
import androidx.lifecycle.w;
import cn.manstep.phonemirrorBox.x0.d;

/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class AutoBoxMirrorFragment extends Fragment {
    private AutoBoxMirrorTextureView a0;
    private FrameLayout b0;
    private d c0;
    private d.InterfaceC0103d d0;

    class a implements androidx.lifecycle.p<Boolean> {
        a() {
        }

        @Override // androidx.lifecycle.p
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public void c(Boolean bool) {
            cn.manstep.phonemirrorBox.util.s.d("AutoBoxMirrorFragment", "onChanged: useOpenGl=" + bool);
            if (AutoBoxMirrorFragment.this.b0 != null) {
                AutoBoxMirrorFragment.this.a0.setUseGlRender(bool.booleanValue());
                AutoBoxMirrorFragment.this.b0.removeView(AutoBoxMirrorFragment.this.a0);
                AutoBoxMirrorFragment.this.b0.addView(AutoBoxMirrorFragment.this.a0, 2);
            }
        }
    }

    class b implements androidx.lifecycle.p<Boolean> {
        b(AutoBoxMirrorFragment autoBoxMirrorFragment) {
        }

        @Override // androidx.lifecycle.p
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public void c(Boolean bool) {
            if (cn.manstep.phonemirrorBox.BoxInterface.d.i()) {
                cn.manstep.phonemirrorBox.BoxInterface.d.l.z.l();
            }
        }
    }

    class c implements d.InterfaceC0103d {
        c() {
        }

        @Override // cn.manstep.phonemirrorBox.x0.d.InterfaceC0103d
        public void k() {
        }

        @Override // cn.manstep.phonemirrorBox.x0.d.InterfaceC0103d
        public void m(int i) {
            if (i == 2 && p.i) {
                AutoBoxMirrorFragment.this.a0.l();
                AutoBoxMirrorFragment.this.b0.removeView(AutoBoxMirrorFragment.this.a0);
                AutoBoxMirrorFragment.this.b0.addView(AutoBoxMirrorFragment.this.a0, 2);
            }
        }
    }

    @Override // androidx.fragment.app.Fragment
    public View L0(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        w.a aVar = new w.a(D() == null ? null : D().getApplication());
        cn.manstep.phonemirrorBox.x0.i iVar = (cn.manstep.phonemirrorBox.x0.i) new androidx.lifecycle.w(J1(), aVar).a(cn.manstep.phonemirrorBox.x0.i.class);
        iVar.g.f(J1(), new a());
        iVar.f.f(J1(), new b(this));
        this.c0 = (d) new androidx.lifecycle.w(J1(), aVar).a(d.class);
        c cVar = new c();
        this.d0 = cVar;
        this.c0.u(cVar);
        return layoutInflater.inflate(2131492933, viewGroup, false);
    }

    @Override // androidx.fragment.app.Fragment
    public void M0() {
        super.M0();
        this.c0.z(this.d0);
    }

    @Override // androidx.fragment.app.Fragment
    public void O0() {
        super.O0();
        this.b0 = null;
    }

    @Override // androidx.fragment.app.Fragment
    public void g1(View view, Bundle bundle) {
        super.g1(view, bundle);
        this.a0 = (AutoBoxMirrorTextureView) view.findViewById(2131296257);
        this.b0 = (FrameLayout) view.findViewById(2131296641);
    }
}
