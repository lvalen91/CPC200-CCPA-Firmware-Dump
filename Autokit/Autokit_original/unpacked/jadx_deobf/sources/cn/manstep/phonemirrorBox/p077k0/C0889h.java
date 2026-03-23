package cn.manstep.phonemirrorBox.p077k0;

import android.app.Dialog;
import android.graphics.drawable.ColorDrawable;
import android.os.Build;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowManager;
import android.widget.Button;
import android.widget.EditText;
import android.widget.TextView;
import androidx.fragment.app.AbstractC0366n;
import androidx.fragment.app.AbstractC0375w;
import androidx.fragment.app.DialogInterfaceOnCancelListenerC0354d;
import cn.manstep.phonemirrorBox.util.C0964c0;
import cn.manstep.phonemirrorBox.widget.C1000a;
import com.yalantis.ucrop.BuildConfig;

/* JADX INFO: renamed from: cn.manstep.phonemirrorBox.k0.h */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class C0889h extends DialogInterfaceOnCancelListenerC0354d {

    /* JADX INFO: renamed from: q0 */
    private EditText f5574q0;

    /* JADX INFO: renamed from: r0 */
    private c f5575r0;

    /* JADX INFO: renamed from: s0 */
    private int f5576s0;

    /* JADX INFO: renamed from: t0 */
    private String f5577t0;

    /* JADX INFO: renamed from: u0 */
    private int f5578u0;

    /* JADX INFO: renamed from: v0 */
    private int f5579v0;

    /* JADX INFO: renamed from: w0 */
    private int f5580w0;

    /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.k0.h$a */
    class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            C0889h.this.m6602y2();
        }
    }

    /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.k0.h$b */
    class b implements View.OnClickListener {
        b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            C0889h.this.m6601x2();
        }
    }

    /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.k0.h$c */
    public interface c {
        /* JADX INFO: renamed from: a */
        boolean mo6605a(String str);
    }

    private C0889h() {
        this.f5576s0 = 0;
        this.f5577t0 = BuildConfig.FLAVOR;
        this.f5578u0 = 1;
        this.f5579v0 = 80;
        this.f5580w0 = 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: x2 */
    public void m6601x2() {
        mo2606j2();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: y2 */
    public void m6602y2() {
        if (this.f5575r0 != null) {
            if (this.f5574q0.length() > 0 && this.f5575r0.mo6605a(this.f5574q0.getText().toString())) {
                mo2606j2();
            } else {
                if (this.f5578u0 == 129) {
                    return;
                }
                C1000a.makeText(m2404K(), 2131689754, 0).show();
            }
        }
    }

    /* JADX INFO: renamed from: z2 */
    public static void m6603z2(AbstractC0366n abstractC0366n, c cVar) {
        C0889h c0889h = new C0889h();
        Bundle bundle = new Bundle();
        bundle.putInt("InputType", 129);
        bundle.putInt("TitleResId", 2131689759);
        bundle.putInt("Gravity", 17);
        c0889h.m2429S1(bundle);
        c0889h.m6604A2(cVar);
        AbstractC0375w abstractC0375wM2774l = abstractC0366n.m2774l();
        abstractC0375wM2774l.m2889e(c0889h, "InputDialog");
        abstractC0375wM2774l.m2891g("InputDialog");
        abstractC0375wM2774l.mo2527i();
    }

    /* JADX INFO: renamed from: A2 */
    public void m6604A2(c cVar) {
        this.f5575r0 = cVar;
    }

    @Override // androidx.fragment.app.DialogInterfaceOnCancelListenerC0354d, androidx.fragment.app.Fragment
    /* JADX INFO: renamed from: H0 */
    public void mo2397H0(Bundle bundle) {
        super.mo2397H0(bundle);
        Bundle bundleM2399I = m2399I();
        if (bundleM2399I != null) {
            this.f5576s0 = bundleM2399I.getInt("TitleResId", 0);
            this.f5578u0 = bundleM2399I.getInt("InputType", 1);
            this.f5579v0 = bundleM2399I.getInt("Gravity", 80);
        }
    }

    @Override // androidx.fragment.app.Fragment
    /* JADX INFO: renamed from: L0 */
    public View mo2408L0(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        if (m2608m2() != null) {
            m2608m2().requestWindowFeature(1);
        }
        return layoutInflater.inflate(2131492948, viewGroup, false);
    }

    @Override // androidx.fragment.app.DialogInterfaceOnCancelListenerC0354d, androidx.fragment.app.Fragment
    /* JADX INFO: renamed from: O0 */
    public void mo2416O0() {
        this.f5574q0 = null;
        super.mo2416O0();
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
                int i = this.f5579v0;
                attributes.gravity = i;
                if (i == 17) {
                    attributes.width = C0964c0.m7178b(m2406K1(), 310.0f);
                } else {
                    attributes.width = -1;
                }
                attributes.dimAmount = 0.7f;
                if (this.f5580w0 != 0) {
                    attributes.height = C0964c0.m7178b(m2406K1(), this.f5580w0);
                    attributes.dimAmount = 0.1f;
                }
                if (m2404K().getResources().getConfiguration().orientation == 1) {
                    if (attributes.gravity == 17) {
                        attributes.width = C0964c0.m7178b(m2406K1(), 400.0f);
                    }
                    if (this.f5580w0 != 0) {
                        attributes.height = C0964c0.m7178b(m2406K1(), 270.0f);
                    }
                }
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
        ((Button) view.findViewById(2131296380)).setOnClickListener(new a());
        ((Button) view.findViewById(2131296372)).setOnClickListener(new b());
        ((TextView) view.findViewById(2131296871)).setText(this.f5576s0);
        EditText editText = (EditText) view.findViewById(2131296567);
        this.f5574q0 = editText;
        editText.setInputType(this.f5578u0);
        if (m2608m2() != null && m2608m2().getWindow() != null) {
            m2608m2().getWindow().setSoftInputMode(4);
        }
        this.f5574q0.setText(this.f5577t0);
        EditText editText2 = this.f5574q0;
        editText2.setSelection(editText2.length());
        this.f5574q0.requestFocus();
        if (Build.VERSION.SDK_INT < 23) {
            this.f5574q0.setLongClickable(false);
            this.f5574q0.setTextIsSelectable(false);
        }
    }

    public C0889h(int i, String str) {
        this.f5576s0 = 0;
        this.f5577t0 = BuildConfig.FLAVOR;
        this.f5578u0 = 1;
        this.f5579v0 = 80;
        this.f5580w0 = 0;
        this.f5576s0 = i;
        this.f5577t0 = str;
        this.f5579v0 = 17;
        this.f5580w0 = 200;
    }

    public C0889h(int i, int i2, String str) {
        this.f5576s0 = 0;
        this.f5577t0 = BuildConfig.FLAVOR;
        this.f5578u0 = 1;
        this.f5579v0 = 80;
        this.f5580w0 = 0;
        this.f5576s0 = i;
        this.f5577t0 = str;
        this.f5578u0 = i2;
    }
}
