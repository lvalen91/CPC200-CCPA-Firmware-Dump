package cn.manstep.phonemirrorBox.k0;

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
import androidx.fragment.app.n;
import androidx.fragment.app.w;
import cn.manstep.phonemirrorBox.util.c0;
import com.yalantis.ucrop.BuildConfig;

/* JADX INFO: loaded from: /Volumes/stuff/macbook/misc/CPC200-CCPA/rework/dumped_real_classes.dex */
public class h extends androidx.fragment.app.d {
    private EditText q0;
    private c r0;
    private int s0;
    private String t0;
    private int u0;
    private int v0;
    private int w0;

    class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            h.this.y2();
        }
    }

    class b implements View.OnClickListener {
        b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            h.this.x2();
        }
    }

    public interface c {
        boolean a(String str);
    }

    private h() {
        this.s0 = 0;
        this.t0 = BuildConfig.FLAVOR;
        this.u0 = 1;
        this.v0 = 80;
        this.w0 = 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void x2() {
        j2();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void y2() {
        if (this.r0 != null) {
            if (this.q0.length() > 0 && this.r0.a(this.q0.getText().toString())) {
                j2();
            } else {
                if (this.u0 == 129) {
                    return;
                }
                cn.manstep.phonemirrorBox.widget.a.makeText(K(), 2131689754, 0).show();
            }
        }
    }

    public static void z2(n nVar, c cVar) {
        h hVar = new h();
        Bundle bundle = new Bundle();
        bundle.putInt("InputType", 129);
        bundle.putInt("TitleResId", 2131689759);
        bundle.putInt("Gravity", 17);
        hVar.S1(bundle);
        hVar.A2(cVar);
        w wVarL = nVar.l();
        wVarL.e(hVar, "InputDialog");
        wVarL.g("InputDialog");
        wVarL.i();
    }

    public void A2(c cVar) {
        this.r0 = cVar;
    }

    @Override // androidx.fragment.app.d, androidx.fragment.app.Fragment
    public void H0(Bundle bundle) {
        super.H0(bundle);
        Bundle bundleI = I();
        if (bundleI != null) {
            this.s0 = bundleI.getInt("TitleResId", 0);
            this.u0 = bundleI.getInt("InputType", 1);
            this.v0 = bundleI.getInt("Gravity", 80);
        }
    }

    @Override // androidx.fragment.app.Fragment
    public View L0(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        if (m2() != null) {
            m2().requestWindowFeature(1);
        }
        return layoutInflater.inflate(2131492948, viewGroup, false);
    }

    @Override // androidx.fragment.app.d, androidx.fragment.app.Fragment
    public void O0() {
        this.q0 = null;
        super.O0();
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
                int i = this.v0;
                attributes.gravity = i;
                if (i == 17) {
                    attributes.width = c0.b(K1(), 310.0f);
                } else {
                    attributes.width = -1;
                }
                attributes.dimAmount = 0.7f;
                if (this.w0 != 0) {
                    attributes.height = c0.b(K1(), this.w0);
                    attributes.dimAmount = 0.1f;
                }
                if (K().getResources().getConfiguration().orientation == 1) {
                    if (attributes.gravity == 17) {
                        attributes.width = c0.b(K1(), 400.0f);
                    }
                    if (this.w0 != 0) {
                        attributes.height = c0.b(K1(), 270.0f);
                    }
                }
                window.setAttributes(attributes);
                window.getDecorView().setBackground(new ColorDrawable(0));
                window.setBackgroundDrawable(new ColorDrawable(0));
            }
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void g1(View view, Bundle bundle) {
        super.g1(view, bundle);
        ((Button) view.findViewById(2131296380)).setOnClickListener(new a());
        ((Button) view.findViewById(2131296372)).setOnClickListener(new b());
        ((TextView) view.findViewById(2131296871)).setText(this.s0);
        EditText editText = (EditText) view.findViewById(2131296567);
        this.q0 = editText;
        editText.setInputType(this.u0);
        if (m2() != null && m2().getWindow() != null) {
            m2().getWindow().setSoftInputMode(4);
        }
        this.q0.setText(this.t0);
        EditText editText2 = this.q0;
        editText2.setSelection(editText2.length());
        this.q0.requestFocus();
        if (Build.VERSION.SDK_INT < 23) {
            this.q0.setLongClickable(false);
            this.q0.setTextIsSelectable(false);
        }
    }

    public h(int i, String str) {
        this.s0 = 0;
        this.t0 = BuildConfig.FLAVOR;
        this.u0 = 1;
        this.v0 = 80;
        this.w0 = 0;
        this.s0 = i;
        this.t0 = str;
        this.v0 = 17;
        this.w0 = 200;
    }

    public h(int i, int i2, String str) {
        this.s0 = 0;
        this.t0 = BuildConfig.FLAVOR;
        this.u0 = 1;
        this.v0 = 80;
        this.w0 = 0;
        this.s0 = i;
        this.t0 = str;
        this.u0 = i2;
    }
}
