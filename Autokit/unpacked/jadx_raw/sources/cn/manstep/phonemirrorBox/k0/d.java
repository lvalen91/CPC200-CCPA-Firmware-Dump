package cn.manstep.phonemirrorBox.k0;

import android.app.Dialog;
import android.content.Context;
import android.text.method.ScrollingMovementMethod;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;

/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class d extends Dialog {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private TextView f1689b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private TextView f1690c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private View f1691d;
    private View e;

    public static class a {
        private View a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private d f1692b;

        public a(Context context) {
            this.f1692b = new d(context, 2131755275);
            this.a = ((LayoutInflater) context.getSystemService("layout_inflater")).inflate(2131492903, (ViewGroup) null, false);
            this.f1692b.addContentView(this.a, new ViewGroup.LayoutParams(-1, -2));
            this.f1692b.f1689b = (TextView) this.a.findViewById(2131296911);
            this.f1692b.f1690c = (TextView) this.a.findViewById(2131296910);
            this.f1692b.f1690c.setMovementMethod(ScrollingMovementMethod.getInstance());
            this.f1692b.e = this.a.findViewById(2131296392);
            this.f1692b.f1691d = this.a.findViewById(2131296394);
        }

        public d a() {
            this.f1692b.setContentView(this.a);
            this.f1692b.setCancelable(false);
            this.f1692b.setCanceledOnTouchOutside(false);
            return this.f1692b;
        }

        public a b(CharSequence charSequence, CharSequence charSequence2) {
            this.f1692b.f1690c.setText(charSequence2);
            return this;
        }
    }

    public d(Context context, int i) {
        super(context, i);
    }

    public void f() {
        this.e.setEnabled(false);
    }

    public View g() {
        return this.e;
    }

    public View h() {
        return this.f1691d;
    }
}
