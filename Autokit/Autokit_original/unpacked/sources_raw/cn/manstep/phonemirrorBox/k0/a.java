package cn.manstep.phonemirrorBox.k0;

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
import androidx.fragment.app.n;
import androidx.fragment.app.w;
import cn.manstep.phonemirrorBox.util.c0;

/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class a extends androidx.fragment.app.d {
    private View.OnClickListener q0;
    private View.OnClickListener r0;
    private Button s0;
    private Button t0;
    private int u0;
    private int v0;
    private int w0 = 5000;
    private boolean x0 = false;
    private final CountDownTimer y0 = new CountDownTimerC0088a(this.w0, 500);

    /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.k0.a$a, reason: collision with other inner class name */
    class CountDownTimerC0088a extends CountDownTimer {
        CountDownTimerC0088a(long j, long j2) {
            super(j, j2);
        }

        @Override // android.os.CountDownTimer
        public void onFinish() {
            a.this.z2();
        }

        @Override // android.os.CountDownTimer
        public void onTick(long j) {
            a.this.F2(String.valueOf(((int) j) / 1000));
        }
    }

    class b implements View.OnClickListener {
        b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (a.this.q0 != null) {
                a.this.q0.onClick(view);
            }
            a.this.j2();
        }
    }

    class c implements View.OnClickListener {
        c() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (a.this.r0 != null) {
                a.this.r0.onClick(view);
            }
            a.this.j2();
        }
    }

    public static void A2(n nVar, int i, int i2, View.OnClickListener onClickListener, View.OnClickListener onClickListener2) {
        a aVar = new a();
        Bundle bundle = new Bundle();
        bundle.putInt("titleResId", i);
        bundle.putInt("tipsResId", i2);
        aVar.S1(bundle);
        C2(nVar, aVar, onClickListener, onClickListener2);
    }

    public static void B2(n nVar, String str, String str2, View.OnClickListener onClickListener, View.OnClickListener onClickListener2) {
        a aVar = new a();
        Bundle bundle = new Bundle();
        bundle.putString("title", str);
        bundle.putString("tips", str2);
        aVar.S1(bundle);
        C2(nVar, aVar, onClickListener, onClickListener2);
    }

    private static void C2(n nVar, a aVar, View.OnClickListener onClickListener, View.OnClickListener onClickListener2) {
        aVar.H2(onClickListener);
        aVar.G2(onClickListener2);
        w wVarL = nVar.l();
        wVarL.e(aVar, "AlertDialogX");
        wVarL.i();
    }

    public static void D2(n nVar, View.OnClickListener onClickListener, boolean z) {
        if (!cn.manstep.phonemirrorBox.BoxInterface.d.i()) {
            onClickListener.onClick(null);
            return;
        }
        a aVar = new a();
        Bundle bundle = new Bundle();
        bundle.putInt("titleResId", 2131689787);
        bundle.putInt("tipsResId", 2131689762);
        bundle.putBoolean("cancelCountDown", z);
        aVar.S1(bundle);
        aVar.y0.start();
        C2(nVar, aVar, onClickListener, null);
    }

    public static void E2(n nVar, View.OnClickListener onClickListener) {
        if (!cn.manstep.phonemirrorBox.BoxInterface.d.i()) {
            onClickListener.onClick(null);
            return;
        }
        a aVar = new a();
        Bundle bundle = new Bundle();
        bundle.putInt("titleResId", 2131689787);
        bundle.putInt("tipsResId", 2131689939);
        aVar.S1(bundle);
        C2(nVar, aVar, onClickListener, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void F2(String str) {
        if (this.x0) {
            if (this.t0 == null || !q0()) {
                return;
            }
            this.t0.setText(j0(2131689638) + " (" + str + ")");
            return;
        }
        if (this.s0 == null || !q0()) {
            return;
        }
        this.s0.setText(j0(2131689891) + " (" + str + ")");
    }

    private void G2(View.OnClickListener onClickListener) {
        this.r0 = onClickListener;
    }

    private void H2(View.OnClickListener onClickListener) {
        this.q0 = onClickListener;
    }

    public static void I2(n nVar, int i, View.OnClickListener onClickListener, View.OnClickListener onClickListener2) {
        a aVar = new a();
        Bundle bundle = new Bundle();
        bundle.putInt("titleResId", 2131689700);
        bundle.putInt("tipsResId", i);
        aVar.S1(bundle);
        C2(nVar, aVar, onClickListener, onClickListener2);
    }

    public static void J2(n nVar, String str, View.OnClickListener onClickListener, View.OnClickListener onClickListener2) {
        a aVar = new a();
        Bundle bundle = new Bundle();
        bundle.putInt("titleResId", 2131689700);
        bundle.putString("tips", str);
        aVar.S1(bundle);
        C2(nVar, aVar, onClickListener, onClickListener2);
    }

    public static a K2(n nVar, View.OnClickListener onClickListener, View.OnClickListener onClickListener2) {
        a aVar = new a();
        Bundle bundle = new Bundle();
        bundle.putInt("titleResId", 2131689700);
        bundle.putInt("tipsResId", 2131689879);
        aVar.S1(bundle);
        C2(nVar, aVar, onClickListener, onClickListener2);
        return aVar;
    }

    public static void L2(n nVar, int i, View.OnClickListener onClickListener, View.OnClickListener onClickListener2) {
        a aVar = new a();
        Bundle bundle = new Bundle();
        bundle.putInt("titleResId", 2131689787);
        bundle.putInt("tipsResId", i);
        aVar.S1(bundle);
        C2(nVar, aVar, onClickListener, onClickListener2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void z2() {
        if (this.x0) {
            this.t0.performClick();
        } else {
            this.s0.performClick();
        }
    }

    @Override // androidx.fragment.app.Fragment
    public View L0(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        if (m2() != null) {
            m2().requestWindowFeature(1);
        }
        return layoutInflater.inflate(2131492898, viewGroup, false);
    }

    @Override // androidx.fragment.app.d, androidx.fragment.app.Fragment
    public void e1() {
        super.e1();
        Dialog dialogM2 = m2();
        if (dialogM2 != null) {
            dialogM2.setCancelable(false);
            dialogM2.setCanceledOnTouchOutside(false);
            Window window = dialogM2.getWindow();
            if (window != null) {
                WindowManager.LayoutParams attributes = window.getAttributes();
                attributes.width = c0.b(K1(), this.u0);
                attributes.height = c0.b(K1(), this.v0);
                attributes.gravity = 17;
                attributes.dimAmount = 0.7f;
                window.setAttributes(attributes);
                window.getDecorView().setBackground(new ColorDrawable(0));
                window.setBackgroundDrawable(new ColorDrawable(0));
            }
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void g1(View view, Bundle bundle) {
        super.g1(view, bundle);
        Bundle bundleI = I();
        if (bundleI != null) {
            TextView textView = (TextView) view.findViewById(2131296917);
            int i = bundleI.getInt("titleResId", 0);
            if (i == 0) {
                textView.setText(bundleI.getString("title"));
            } else {
                textView.setText(i);
            }
            TextView textView2 = (TextView) view.findViewById(2131296916);
            int i2 = bundleI.getInt("tipsResId", 0);
            if (i2 == 0) {
                textView2.setText(bundleI.getString("tips"));
            } else {
                textView2.setText(i2);
            }
            this.u0 = bundleI.getInt("width", 280);
            this.v0 = bundleI.getInt("height", 160);
            this.x0 = bundleI.getBoolean("cancelCountDown", false);
        }
        this.s0 = (Button) view.findViewById(2131296393);
        this.t0 = (Button) view.findViewById(2131296390);
        view.findViewById(2131296393).setOnClickListener(new b());
        view.findViewById(2131296390).setOnClickListener(new c());
        if (this.r0 != null) {
            view.findViewById(2131296390).setVisibility(0);
        } else {
            view.findViewById(2131296390).setVisibility(8);
        }
    }

    @Override // androidx.fragment.app.d
    public void j2() {
        super.j2();
        this.y0.cancel();
    }
}
