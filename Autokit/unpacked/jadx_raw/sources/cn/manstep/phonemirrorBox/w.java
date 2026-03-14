package cn.manstep.phonemirrorBox;

import android.content.Context;
import android.text.Html;
import android.widget.Button;

/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class w extends b {
    private String[] a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int[] f1949b = {1, 2, 5, 8, 9, 10, 3, 11, 4, 7, 15, 6, 13, 12, 14, 17, 16, 18};

    public w(Context context, boolean z) {
        context.getResources().getColor(2131099818);
        context.getResources().getColor(2131099775);
        context.getResources().getColor(2131099820);
        context.getResources().getColor(2131099875);
        context.getResources().getColor(2131099828);
        g(context);
    }

    private void g(Context context) {
        String[] strArr = new String[18];
        this.a = strArr;
        strArr[0] = Html.fromHtml(context.getString(2131689916)).toString();
        this.a[1] = Html.fromHtml(context.getString(2131689881)).toString();
        this.a[2] = Html.fromHtml(context.getString(2131689911)).toString();
        this.a[3] = Html.fromHtml(context.getString(2131690001)).toString();
        this.a[4] = Html.fromHtml(context.getString(2131689747)).toString();
        this.a[5] = Html.fromHtml(context.getString(2131689597)).toString();
        this.a[6] = Html.fromHtml(context.getString(2131689910)).toString();
        this.a[7] = Html.fromHtml(context.getString(2131689958)).toString();
        this.a[8] = Html.fromHtml(context.getString(2131689905)).toString();
        this.a[9] = Html.fromHtml(context.getString(2131689918)).toString();
        this.a[10] = Html.fromHtml(context.getString(2131689990)).toString();
        this.a[11] = Html.fromHtml(context.getString(2131689880)).toString();
        this.a[12] = Html.fromHtml(context.getString(2131689793)).toString();
        this.a[13] = Html.fromHtml(context.getString(2131689951)).toString();
        this.a[14] = Html.fromHtml(context.getString(2131689941)).toString();
        this.a[15] = Html.fromHtml(context.getString(2131689570)).toString();
        this.a[16] = Html.fromHtml(context.getString(2131689704)).toString();
        this.a[17] = Html.fromHtml(context.getString(2131689741)).toString();
    }

    @Override // cn.manstep.phonemirrorBox.b
    public int[] a() {
        return this.f1949b;
    }

    @Override // cn.manstep.phonemirrorBox.b
    public int c(Context context, int i) {
        return 0;
    }

    @Override // cn.manstep.phonemirrorBox.b
    public String[] d() {
        return this.a;
    }

    @Override // cn.manstep.phonemirrorBox.b
    public int e() {
        return 3;
    }

    @Override // cn.manstep.phonemirrorBox.b
    public void f(Context context, Button button, boolean z, boolean z2, boolean z3) {
        cn.manstep.phonemirrorBox.util.s.e("KeyLearnExImpl,setBtnStyle: bDefault=" + z);
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
