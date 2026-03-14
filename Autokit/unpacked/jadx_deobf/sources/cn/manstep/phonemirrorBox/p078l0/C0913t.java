package cn.manstep.phonemirrorBox.p078l0;

import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Toast;
import androidx.databinding.C0328f;
import androidx.fragment.app.AbstractC0366n;
import androidx.fragment.app.AbstractC0375w;
import androidx.fragment.app.Fragment;
import androidx.lifecycle.C0409w;
import cn.manstep.phonemirrorBox.p075i0.AbstractC0877w;
import cn.manstep.phonemirrorBox.p091x0.C1010h;
import cn.manstep.phonemirrorBox.util.C0982s;

/* JADX INFO: renamed from: cn.manstep.phonemirrorBox.l0.t */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class C0913t extends Fragment {

    /* JADX INFO: renamed from: a0 */
    private C1010h f5756a0;

    /* JADX INFO: renamed from: b0 */
    private AbstractC0877w f5757b0;

    /* JADX INFO: renamed from: c0 */
    private String f5758c0;

    /* JADX INFO: renamed from: d0 */
    private String f5759d0;

    /* JADX INFO: renamed from: e0 */
    private int f5760e0 = 1;

    /* JADX INFO: renamed from: f0 */
    private e f5761f0;

    /* JADX INFO: renamed from: g0 */
    private AbstractC0366n f5762g0;

    /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.l0.t$a */
    class a implements View.OnTouchListener {
        a(C0913t c0913t) {
        }

        @Override // android.view.View.OnTouchListener
        public boolean onTouch(View view, MotionEvent motionEvent) {
            C0982s.m7375e("InputFragment,onTouch: " + motionEvent.toString());
            return motionEvent.getAction() != 1;
        }
    }

    /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.l0.t$b */
    class b implements View.OnClickListener {
        b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            AbstractC0375w abstractC0375wM2774l = C0913t.this.f5762g0.m2774l();
            abstractC0375wM2774l.mo2532o(C0913t.this);
            abstractC0375wM2774l.mo2526h();
        }
    }

    /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.l0.t$c */
    class c implements View.OnClickListener {
        c() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (C0913t.this.f5761f0 != null && !C0913t.this.f5761f0.mo6755a(C0913t.this.f5757b0.f5472x.getText().toString())) {
                Toast.makeText(C0913t.this.m2404K(), 2131689754, 0).show();
                return;
            }
            AbstractC0375w abstractC0375wM2774l = C0913t.this.f5762g0.m2774l();
            abstractC0375wM2774l.mo2532o(C0913t.this);
            abstractC0375wM2774l.mo2526h();
        }
    }

    /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.l0.t$d */
    class d implements Runnable {
        d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            C0913t.this.f5757b0.f5472x.requestFocus();
            try {
                C0913t.this.f5757b0.f5472x.setSelection(C0913t.this.f5757b0.f5472x.length());
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.l0.t$e */
    public interface e {
        /* JADX INFO: renamed from: a */
        boolean mo6755a(String str);
    }

    /* JADX INFO: renamed from: j2 */
    public static C0913t m6751j2(AbstractC0366n abstractC0366n) {
        C0913t c0913t = new C0913t();
        c0913t.f5762g0 = abstractC0366n;
        return c0913t;
    }

    @Override // androidx.fragment.app.Fragment
    /* JADX INFO: renamed from: B0 */
    public void mo2380B0(Bundle bundle) {
        super.mo2380B0(bundle);
        this.f5757b0.f5470v.setOnClickListener(new b());
        this.f5757b0.f5471w.setOnClickListener(new c());
    }

    @Override // androidx.fragment.app.Fragment
    /* JADX INFO: renamed from: E0 */
    public void mo2389E0(Context context) {
        super.mo2389E0(context);
    }

    @Override // androidx.fragment.app.Fragment
    /* JADX INFO: renamed from: L0 */
    public View mo2408L0(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        this.f5757b0 = (AbstractC0877w) C0328f.m2359e(layoutInflater, 2131492949, viewGroup, false);
        C1010h c1010h = (C1010h) new C0409w(this, new C0409w.a(m2385D() == null ? null : m2385D().getApplication())).m3053a(C1010h.class);
        this.f5756a0 = c1010h;
        this.f5757b0.mo6479L(c1010h);
        this.f5757b0.m2328G(this);
        this.f5757b0.f5472x.setInputType(this.f5760e0);
        this.f5756a0.m7647m(this.f5758c0);
        this.f5756a0.m7646l(this.f5759d0);
        return this.f5757b0.m2334t();
    }

    @Override // androidx.fragment.app.Fragment
    /* JADX INFO: renamed from: e1 */
    public void mo2463e1() {
        super.mo2463e1();
        new Handler().postDelayed(new d(), 500L);
    }

    @Override // androidx.fragment.app.Fragment
    /* JADX INFO: renamed from: g1 */
    public void mo2469g1(View view, Bundle bundle) {
        super.mo2469g1(view, bundle);
        this.f5757b0.f5472x.setOnTouchListener(new a(this));
    }

    /* JADX INFO: renamed from: k2 */
    public void m6752k2(e eVar) {
        this.f5761f0 = eVar;
    }

    /* JADX INFO: renamed from: l2 */
    public void m6753l2(int i) {
        this.f5760e0 = i;
    }

    /* JADX INFO: renamed from: m2 */
    public void m6754m2(String str, String str2) {
        this.f5758c0 = str;
        this.f5759d0 = str2;
    }
}
