package cn.manstep.phonemirrorBox.p077k0;

import android.app.Dialog;
import android.graphics.drawable.ColorDrawable;
import android.os.Bundle;
import android.os.CountDownTimer;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowManager;
import android.widget.Button;
import android.widget.TextView;
import androidx.fragment.app.AbstractC0366n;
import androidx.fragment.app.AbstractC0375w;
import androidx.fragment.app.DialogInterfaceOnCancelListenerC0354d;
import cn.manstep.phonemirrorBox.BoxInterface.C0733d;
import cn.manstep.phonemirrorBox.util.C0964c0;

/* JADX INFO: renamed from: cn.manstep.phonemirrorBox.k0.a */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class C0882a extends DialogInterfaceOnCancelListenerC0354d {

    /* JADX INFO: renamed from: q0 */
    private View.OnClickListener f5508q0;

    /* JADX INFO: renamed from: r0 */
    private View.OnClickListener f5509r0;

    /* JADX INFO: renamed from: s0 */
    private Button f5510s0;

    /* JADX INFO: renamed from: t0 */
    private Button f5511t0;

    /* JADX INFO: renamed from: u0 */
    private int f5512u0;

    /* JADX INFO: renamed from: v0 */
    private int f5513v0;

    /* JADX INFO: renamed from: w0 */
    private int f5514w0 = 5000;

    /* JADX INFO: renamed from: x0 */
    private boolean f5515x0 = false;

    /* JADX INFO: renamed from: y0 */
    private final CountDownTimer f5516y0 = new a(this.f5514w0, 500);

    /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.k0.a$a */
    class a extends CountDownTimer {
        a(long j, long j2) {
            super(j, j2);
        }

        @Override // android.os.CountDownTimer
        public void onFinish() {
            C0882a.this.m6535z2();
        }

        @Override // android.os.CountDownTimer
        public void onTick(long j) {
            C0882a.this.m6524F2(String.valueOf(((int) j) / 1000));
        }
    }

    /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.k0.a$b */
    class b implements View.OnClickListener {
        b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (C0882a.this.f5508q0 != null) {
                C0882a.this.f5508q0.onClick(view);
            }
            C0882a.this.mo2606j2();
        }
    }

    /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.k0.a$c */
    class c implements View.OnClickListener {
        c() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (C0882a.this.f5509r0 != null) {
                C0882a.this.f5509r0.onClick(view);
            }
            C0882a.this.mo2606j2();
        }
    }

    /* JADX INFO: renamed from: A2 */
    public static void m6519A2(AbstractC0366n abstractC0366n, int i, int i2, View.OnClickListener onClickListener, View.OnClickListener onClickListener2) {
        C0882a c0882a = new C0882a();
        Bundle bundle = new Bundle();
        bundle.putInt("titleResId", i);
        bundle.putInt("tipsResId", i2);
        c0882a.m2429S1(bundle);
        m6521C2(abstractC0366n, c0882a, onClickListener, onClickListener2);
    }

    /* JADX INFO: renamed from: B2 */
    public static void m6520B2(AbstractC0366n abstractC0366n, String str, String str2, View.OnClickListener onClickListener, View.OnClickListener onClickListener2) {
        C0882a c0882a = new C0882a();
        Bundle bundle = new Bundle();
        bundle.putString("title", str);
        bundle.putString("tips", str2);
        c0882a.m2429S1(bundle);
        m6521C2(abstractC0366n, c0882a, onClickListener, onClickListener2);
    }

    /* JADX INFO: renamed from: C2 */
    private static void m6521C2(AbstractC0366n abstractC0366n, C0882a c0882a, View.OnClickListener onClickListener, View.OnClickListener onClickListener2) {
        c0882a.m6526H2(onClickListener);
        c0882a.m6525G2(onClickListener2);
        AbstractC0375w abstractC0375wM2774l = abstractC0366n.m2774l();
        abstractC0375wM2774l.m2889e(c0882a, "AlertDialogX");
        abstractC0375wM2774l.mo2527i();
    }

    /* JADX INFO: renamed from: D2 */
    public static void m6522D2(AbstractC0366n abstractC0366n, View.OnClickListener onClickListener, boolean z) {
        if (!C0733d.m5591i()) {
            onClickListener.onClick(null);
            return;
        }
        C0882a c0882a = new C0882a();
        Bundle bundle = new Bundle();
        bundle.putInt("titleResId", 2131689787);
        bundle.putInt("tipsResId", 2131689762);
        bundle.putBoolean("cancelCountDown", z);
        c0882a.m2429S1(bundle);
        c0882a.f5516y0.start();
        m6521C2(abstractC0366n, c0882a, onClickListener, null);
    }

    /* JADX INFO: renamed from: E2 */
    public static void m6523E2(AbstractC0366n abstractC0366n, View.OnClickListener onClickListener) {
        if (!C0733d.m5591i()) {
            onClickListener.onClick(null);
            return;
        }
        C0882a c0882a = new C0882a();
        Bundle bundle = new Bundle();
        bundle.putInt("titleResId", 2131689787);
        bundle.putInt("tipsResId", 2131689939);
        c0882a.m2429S1(bundle);
        m6521C2(abstractC0366n, c0882a, onClickListener, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: F2 */
    public void m6524F2(String str) {
        if (this.f5515x0) {
            if (this.f5511t0 == null || !m2486q0()) {
                return;
            }
            this.f5511t0.setText(m2474j0(2131689638) + " (" + str + ")");
            return;
        }
        if (this.f5510s0 == null || !m2486q0()) {
            return;
        }
        this.f5510s0.setText(m2474j0(2131689891) + " (" + str + ")");
    }

    /* JADX INFO: renamed from: G2 */
    private void m6525G2(View.OnClickListener onClickListener) {
        this.f5509r0 = onClickListener;
    }

    /* JADX INFO: renamed from: H2 */
    private void m6526H2(View.OnClickListener onClickListener) {
        this.f5508q0 = onClickListener;
    }

    /* JADX INFO: renamed from: I2 */
    public static void m6527I2(AbstractC0366n abstractC0366n, int i, View.OnClickListener onClickListener, View.OnClickListener onClickListener2) {
        C0882a c0882a = new C0882a();
        Bundle bundle = new Bundle();
        bundle.putInt("titleResId", 2131689700);
        bundle.putInt("tipsResId", i);
        c0882a.m2429S1(bundle);
        m6521C2(abstractC0366n, c0882a, onClickListener, onClickListener2);
    }

    /* JADX INFO: renamed from: J2 */
    public static void m6528J2(AbstractC0366n abstractC0366n, String str, View.OnClickListener onClickListener, View.OnClickListener onClickListener2) {
        C0882a c0882a = new C0882a();
        Bundle bundle = new Bundle();
        bundle.putInt("titleResId", 2131689700);
        bundle.putString("tips", str);
        c0882a.m2429S1(bundle);
        m6521C2(abstractC0366n, c0882a, onClickListener, onClickListener2);
    }

    /* JADX INFO: renamed from: K2 */
    public static C0882a m6529K2(AbstractC0366n abstractC0366n, View.OnClickListener onClickListener, View.OnClickListener onClickListener2) {
        C0882a c0882a = new C0882a();
        Bundle bundle = new Bundle();
        bundle.putInt("titleResId", 2131689700);
        bundle.putInt("tipsResId", 2131689879);
        c0882a.m2429S1(bundle);
        m6521C2(abstractC0366n, c0882a, onClickListener, onClickListener2);
        return c0882a;
    }

    /* JADX INFO: renamed from: L2 */
    public static void m6530L2(AbstractC0366n abstractC0366n, int i, View.OnClickListener onClickListener, View.OnClickListener onClickListener2) {
        C0882a c0882a = new C0882a();
        Bundle bundle = new Bundle();
        bundle.putInt("titleResId", 2131689787);
        bundle.putInt("tipsResId", i);
        c0882a.m2429S1(bundle);
        m6521C2(abstractC0366n, c0882a, onClickListener, onClickListener2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: z2 */
    public void m6535z2() {
        if (this.f5515x0) {
            this.f5511t0.performClick();
        } else {
            this.f5510s0.performClick();
        }
    }

    @Override // androidx.fragment.app.Fragment
    /* JADX INFO: renamed from: L0 */
    public View mo2408L0(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        if (m2608m2() != null) {
            m2608m2().requestWindowFeature(1);
        }
        return layoutInflater.inflate(2131492898, viewGroup, false);
    }

    @Override // androidx.fragment.app.DialogInterfaceOnCancelListenerC0354d, androidx.fragment.app.Fragment
    /* JADX INFO: renamed from: e1 */
    public void mo2463e1() {
        super.mo2463e1();
        Dialog dialogM2608m2 = m2608m2();
        if (dialogM2608m2 != null) {
            dialogM2608m2.setCancelable(false);
            dialogM2608m2.setCanceledOnTouchOutside(false);
            Window window = dialogM2608m2.getWindow();
            if (window != null) {
                WindowManager.LayoutParams attributes = window.getAttributes();
                attributes.width = C0964c0.m7178b(m2406K1(), this.f5512u0);
                attributes.height = C0964c0.m7178b(m2406K1(), this.f5513v0);
                attributes.gravity = 17;
                attributes.dimAmount = 0.7f;
                window.setAttributes(attributes);
                window.getDecorView().setBackground(new ColorDrawable(0));
                window.setBackgroundDrawable(new ColorDrawable(0));
            }
        }
    }

    @Override // androidx.fragment.app.Fragment
    /* JADX INFO: renamed from: g1 */
    public void mo2469g1(View view, Bundle bundle) {
        super.mo2469g1(view, bundle);
        Bundle bundleM2399I = m2399I();
        if (bundleM2399I != null) {
            TextView textView = (TextView) view.findViewById(2131296917);
            int i = bundleM2399I.getInt("titleResId", 0);
            if (i == 0) {
                textView.setText(bundleM2399I.getString("title"));
            } else {
                textView.setText(i);
            }
            TextView textView2 = (TextView) view.findViewById(2131296916);
            int i2 = bundleM2399I.getInt("tipsResId", 0);
            if (i2 == 0) {
                textView2.setText(bundleM2399I.getString("tips"));
            } else {
                textView2.setText(i2);
            }
            this.f5512u0 = bundleM2399I.getInt("width", 280);
            this.f5513v0 = bundleM2399I.getInt("height", 160);
            this.f5515x0 = bundleM2399I.getBoolean("cancelCountDown", false);
        }
        this.f5510s0 = (Button) view.findViewById(2131296393);
        this.f5511t0 = (Button) view.findViewById(2131296390);
        view.findViewById(2131296393).setOnClickListener(new b());
        view.findViewById(2131296390).setOnClickListener(new c());
        if (this.f5509r0 != null) {
            view.findViewById(2131296390).setVisibility(0);
        } else {
            view.findViewById(2131296390).setVisibility(8);
        }
    }

    @Override // androidx.fragment.app.DialogInterfaceOnCancelListenerC0354d
    /* JADX INFO: renamed from: j2 */
    public void mo2606j2() {
        super.mo2606j2();
        this.f5516y0.cancel();
    }
}
