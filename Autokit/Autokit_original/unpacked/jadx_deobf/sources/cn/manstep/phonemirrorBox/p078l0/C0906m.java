package cn.manstep.phonemirrorBox.p078l0;

import android.content.Context;
import android.os.Bundle;
import android.view.KeyEvent;
import android.view.View;
import androidx.fragment.app.AbstractC0375w;
import androidx.fragment.app.Fragment;
import androidx.lifecycle.C0409w;

/* JADX INFO: renamed from: cn.manstep.phonemirrorBox.l0.m */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class C0906m extends Fragment {

    /* JADX INFO: renamed from: a0 */
    protected C0409w.b f5690a0;

    /* JADX INFO: renamed from: b0 */
    protected b f5691b0;

    /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.l0.m$a */
    class a implements View.OnKeyListener {
        a() {
        }

        @Override // android.view.View.OnKeyListener
        public boolean onKey(View view, int i, KeyEvent keyEvent) {
            if (i != 4) {
                return false;
            }
            if (keyEvent.getAction() == 1) {
                C0906m.this.mo6691g2();
            }
            return true;
        }
    }

    /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.l0.m$b */
    public interface b {
        /* JADX INFO: renamed from: a */
        void m6692a();
    }

    @Override // androidx.fragment.app.Fragment
    /* JADX INFO: renamed from: E0 */
    public void mo2389E0(Context context) {
        super.mo2389E0(context);
        this.f5690a0 = new C0409w.a(m2385D() == null ? null : m2385D().getApplication());
    }

    @Override // androidx.fragment.app.Fragment
    /* JADX INFO: renamed from: g1 */
    public void mo2469g1(View view, Bundle bundle) {
        super.mo2469g1(view, bundle);
        view.setFocusableInTouchMode(true);
        view.requestFocus();
        view.setOnKeyListener(new a());
    }

    /* JADX INFO: renamed from: g2 */
    protected void mo6691g2() {
        b bVar = this.f5691b0;
        if (bVar != null) {
            bVar.m6692a();
        }
        AbstractC0375w abstractC0375wM2774l = m2441X().m2774l();
        abstractC0375wM2774l.mo2532o(this);
        abstractC0375wM2774l.mo2527i();
    }
}
