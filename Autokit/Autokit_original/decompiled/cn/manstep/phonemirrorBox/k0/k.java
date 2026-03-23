package cn.manstep.phonemirrorBox.k0;

import android.app.Dialog;
import android.content.Intent;
import android.graphics.Color;
import android.graphics.drawable.ColorDrawable;
import android.os.Bundle;
import android.text.SpannableString;
import android.text.TextPaint;
import android.text.method.LinkMovementMethod;
import android.text.style.ClickableSpan;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowManager;
import android.widget.TextView;
import androidx.fragment.app.n;
import androidx.fragment.app.w;
import cn.manstep.phonemirrorBox.AdvancedSettingsActivity;
import cn.manstep.phonemirrorBox.util.c0;

/* JADX INFO: loaded from: /tmp/autokit_analysis/dumped_dex/dex_47.dex */
public class k extends androidx.fragment.app.d {
    private static int s0;
    private View.OnClickListener q0;
    private View.OnClickListener r0;

    class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (k.this.q0 != null) {
                k.this.q0.onClick(view);
                k.this.j2();
            }
        }
    }

    class b implements View.OnClickListener {
        b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (k.this.r0 != null) {
                k.this.r0.onClick(view);
                k.this.j2();
            }
        }
    }

    class c extends ClickableSpan {
        c() {
        }

        @Override // android.text.style.ClickableSpan
        public void onClick(View view) {
            Intent intent = new Intent(k.this.K1(), (Class<?>) AdvancedSettingsActivity.class);
            intent.setFlags(268435456);
            intent.putExtra("page", "pp");
            k.this.a2(intent);
        }

        @Override // android.text.style.ClickableSpan, android.text.style.CharacterStyle
        public void updateDrawState(TextPaint textPaint) {
            super.updateDrawState(textPaint);
            textPaint.setUnderlineText(false);
            textPaint.setColor(Color.parseColor("#0081EF"));
        }
    }

    public static k A2(n nVar, View.OnClickListener onClickListener, View.OnClickListener onClickListener2) {
        k kVar = new k();
        x2(nVar, kVar, onClickListener, onClickListener2);
        return kVar;
    }

    private static void x2(n nVar, k kVar, View.OnClickListener onClickListener, View.OnClickListener onClickListener2) {
        kVar.z2(onClickListener);
        kVar.y2(onClickListener2);
        w wVarL = nVar.l();
        wVarL.e(kVar, "TermsPrivacyDialog");
        wVarL.i();
    }

    private void y2(View.OnClickListener onClickListener) {
        this.r0 = onClickListener;
    }

    private void z2(View.OnClickListener onClickListener) {
        this.q0 = onClickListener;
    }

    @Override // androidx.fragment.app.Fragment
    public View L0(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        if (m2() != null) {
            m2().requestWindowFeature(1);
        }
        return layoutInflater.inflate(2131493022, viewGroup, false);
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
                attributes.width = -2;
                if (s0 == 0) {
                    s0 = c0.b(K1(), 188.0f);
                }
                attributes.height = s0;
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
        view.findViewById(2131296393).setOnClickListener(new a());
        view.findViewById(2131296390).setOnClickListener(new b());
        TextView textView = (TextView) view.findViewById(2131296912);
        String strT = cn.manstep.phonemirrorBox.util.n.t(K(), "privacy_tips", 2131886087);
        SpannableString spannableString = new SpannableString(strT);
        spannableString.setSpan(new c(), strT.indexOf("《"), strT.indexOf("》") + 1, 33);
        textView.setHighlightColor(-16776961);
        textView.setMovementMethod(LinkMovementMethod.getInstance());
        textView.setText(spannableString);
    }

    @Override // androidx.fragment.app.d
    public Dialog o2(Bundle bundle) {
        Dialog dialogO2 = super.o2(bundle);
        e1();
        return dialogO2;
    }
}
