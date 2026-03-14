package cn.manstep.phonemirrorBox.p077k0;

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
import androidx.fragment.app.AbstractC0366n;
import androidx.fragment.app.AbstractC0375w;
import androidx.fragment.app.DialogInterfaceOnCancelListenerC0354d;
import cn.manstep.phonemirrorBox.AdvancedSettingsActivity;
import cn.manstep.phonemirrorBox.util.C0964c0;
import cn.manstep.phonemirrorBox.util.C0977n;

/* JADX INFO: renamed from: cn.manstep.phonemirrorBox.k0.k */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class C0892k extends DialogInterfaceOnCancelListenerC0354d {

    /* JADX INFO: renamed from: s0 */
    private static int f5599s0;

    /* JADX INFO: renamed from: q0 */
    private View.OnClickListener f5600q0;

    /* JADX INFO: renamed from: r0 */
    private View.OnClickListener f5601r0;

    /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.k0.k$a */
    class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (C0892k.this.f5600q0 != null) {
                C0892k.this.f5600q0.onClick(view);
                C0892k.this.mo2606j2();
            }
        }
    }

    /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.k0.k$b */
    class b implements View.OnClickListener {
        b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (C0892k.this.f5601r0 != null) {
                C0892k.this.f5601r0.onClick(view);
                C0892k.this.mo2606j2();
            }
        }
    }

    /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.k0.k$c */
    class c extends ClickableSpan {
        c() {
        }

        @Override // android.text.style.ClickableSpan
        public void onClick(View view) {
            Intent intent = new Intent(C0892k.this.m2406K1(), (Class<?>) AdvancedSettingsActivity.class);
            intent.setFlags(268435456);
            intent.putExtra("page", "pp");
            C0892k.this.m2452a2(intent);
        }

        @Override // android.text.style.ClickableSpan, android.text.style.CharacterStyle
        public void updateDrawState(TextPaint textPaint) {
            super.updateDrawState(textPaint);
            textPaint.setUnderlineText(false);
            textPaint.setColor(Color.parseColor("#0081EF"));
        }
    }

    /* JADX INFO: renamed from: A2 */
    public static C0892k m6627A2(AbstractC0366n abstractC0366n, View.OnClickListener onClickListener, View.OnClickListener onClickListener2) {
        C0892k c0892k = new C0892k();
        m6630x2(abstractC0366n, c0892k, onClickListener, onClickListener2);
        return c0892k;
    }

    /* JADX INFO: renamed from: x2 */
    private static void m6630x2(AbstractC0366n abstractC0366n, C0892k c0892k, View.OnClickListener onClickListener, View.OnClickListener onClickListener2) {
        c0892k.m6632z2(onClickListener);
        c0892k.m6631y2(onClickListener2);
        AbstractC0375w abstractC0375wM2774l = abstractC0366n.m2774l();
        abstractC0375wM2774l.m2889e(c0892k, "TermsPrivacyDialog");
        abstractC0375wM2774l.mo2527i();
    }

    /* JADX INFO: renamed from: y2 */
    private void m6631y2(View.OnClickListener onClickListener) {
        this.f5601r0 = onClickListener;
    }

    /* JADX INFO: renamed from: z2 */
    private void m6632z2(View.OnClickListener onClickListener) {
        this.f5600q0 = onClickListener;
    }

    @Override // androidx.fragment.app.Fragment
    /* JADX INFO: renamed from: L0 */
    public View mo2408L0(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        if (m2608m2() != null) {
            m2608m2().requestWindowFeature(1);
        }
        return layoutInflater.inflate(2131493022, viewGroup, false);
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
                attributes.width = -2;
                if (f5599s0 == 0) {
                    f5599s0 = C0964c0.m7178b(m2406K1(), 188.0f);
                }
                attributes.height = f5599s0;
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
        view.findViewById(2131296393).setOnClickListener(new a());
        view.findViewById(2131296390).setOnClickListener(new b());
        TextView textView = (TextView) view.findViewById(2131296912);
        String strM7317t = C0977n.m7317t(m2404K(), "privacy_tips", 2131886087);
        SpannableString spannableString = new SpannableString(strM7317t);
        spannableString.setSpan(new c(), strM7317t.indexOf("《"), strM7317t.indexOf("》") + 1, 33);
        textView.setHighlightColor(-16776961);
        textView.setMovementMethod(LinkMovementMethod.getInstance());
        textView.setText(spannableString);
    }

    @Override // androidx.fragment.app.DialogInterfaceOnCancelListenerC0354d
    /* JADX INFO: renamed from: o2 */
    public Dialog mo2610o2(Bundle bundle) {
        Dialog dialogMo2610o2 = super.mo2610o2(bundle);
        mo2463e1();
        return dialogMo2610o2;
    }
}
