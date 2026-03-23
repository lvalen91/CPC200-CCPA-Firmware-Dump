package cn.manstep.phonemirrorBox;

import android.content.Context;
import android.text.Html;
import android.widget.Button;
import cn.manstep.phonemirrorBox.util.C0982s;

/* JADX INFO: renamed from: cn.manstep.phonemirrorBox.w */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class C0996w extends AbstractC0794b {

    /* JADX INFO: renamed from: a */
    private String[] f6199a;

    /* JADX INFO: renamed from: b */
    private int[] f6200b = {1, 2, 5, 8, 9, 10, 3, 11, 4, 7, 15, 6, 13, 12, 14, 17, 16, 18};

    public C0996w(Context context, boolean z) {
        context.getResources().getColor(2131099818);
        context.getResources().getColor(2131099775);
        context.getResources().getColor(2131099820);
        context.getResources().getColor(2131099875);
        context.getResources().getColor(2131099828);
        m7466g(context);
    }

    /* JADX INFO: renamed from: g */
    private void m7466g(Context context) {
        String[] strArr = new String[18];
        this.f6199a = strArr;
        strArr[0] = Html.fromHtml(context.getString(2131689916)).toString();
        this.f6199a[1] = Html.fromHtml(context.getString(2131689881)).toString();
        this.f6199a[2] = Html.fromHtml(context.getString(2131689911)).toString();
        this.f6199a[3] = Html.fromHtml(context.getString(2131690001)).toString();
        this.f6199a[4] = Html.fromHtml(context.getString(2131689747)).toString();
        this.f6199a[5] = Html.fromHtml(context.getString(2131689597)).toString();
        this.f6199a[6] = Html.fromHtml(context.getString(2131689910)).toString();
        this.f6199a[7] = Html.fromHtml(context.getString(2131689958)).toString();
        this.f6199a[8] = Html.fromHtml(context.getString(2131689905)).toString();
        this.f6199a[9] = Html.fromHtml(context.getString(2131689918)).toString();
        this.f6199a[10] = Html.fromHtml(context.getString(2131689990)).toString();
        this.f6199a[11] = Html.fromHtml(context.getString(2131689880)).toString();
        this.f6199a[12] = Html.fromHtml(context.getString(2131689793)).toString();
        this.f6199a[13] = Html.fromHtml(context.getString(2131689951)).toString();
        this.f6199a[14] = Html.fromHtml(context.getString(2131689941)).toString();
        this.f6199a[15] = Html.fromHtml(context.getString(2131689570)).toString();
        this.f6199a[16] = Html.fromHtml(context.getString(2131689704)).toString();
        this.f6199a[17] = Html.fromHtml(context.getString(2131689741)).toString();
    }

    @Override // cn.manstep.phonemirrorBox.AbstractC0794b
    /* JADX INFO: renamed from: a */
    public int[] mo6059a() {
        return this.f6200b;
    }

    @Override // cn.manstep.phonemirrorBox.AbstractC0794b
    /* JADX INFO: renamed from: c */
    public int mo6061c(Context context, int i) {
        return 0;
    }

    @Override // cn.manstep.phonemirrorBox.AbstractC0794b
    /* JADX INFO: renamed from: d */
    public String[] mo6062d() {
        return this.f6199a;
    }

    @Override // cn.manstep.phonemirrorBox.AbstractC0794b
    /* JADX INFO: renamed from: e */
    public int mo6063e() {
        return 3;
    }

    @Override // cn.manstep.phonemirrorBox.AbstractC0794b
    /* JADX INFO: renamed from: f */
    public void mo6064f(Context context, Button button, boolean z, boolean z2, boolean z3) {
        C0982s.m7375e("KeyLearnExImpl,setBtnStyle: bDefault=" + z);
        if (z) {
            button.setBackground(context.getResources().getDrawable(2131230817));
            return;
        }
        if (z2) {
            if (z3) {
                button.setBackground(context.getResources().getDrawable(2131230819));
                return;
            } else {
                button.setBackground(context.getResources().getDrawable(2131230818));
                return;
            }
        }
        if (z3) {
            button.setBackground(context.getResources().getDrawable(2131230816));
        } else {
            button.setBackground(context.getResources().getDrawable(2131230815));
        }
    }
}
