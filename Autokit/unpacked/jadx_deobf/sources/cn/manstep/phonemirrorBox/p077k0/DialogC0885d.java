package cn.manstep.phonemirrorBox.p077k0;

import android.app.Dialog;
import android.content.Context;
import android.text.method.ScrollingMovementMethod;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;

/* JADX INFO: renamed from: cn.manstep.phonemirrorBox.k0.d */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class DialogC0885d extends Dialog {

    /* JADX INFO: renamed from: b */
    private TextView f5541b;

    /* JADX INFO: renamed from: c */
    private TextView f5542c;

    /* JADX INFO: renamed from: d */
    private View f5543d;

    /* JADX INFO: renamed from: e */
    private View f5544e;

    /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.k0.d$a */
    public static class a {

        /* JADX INFO: renamed from: a */
        private View f5545a;

        /* JADX INFO: renamed from: b */
        private DialogC0885d f5546b;

        public a(Context context) {
            this.f5546b = new DialogC0885d(context, 2131755275);
            this.f5545a = ((LayoutInflater) context.getSystemService("layout_inflater")).inflate(2131492903, (ViewGroup) null, false);
            this.f5546b.addContentView(this.f5545a, new ViewGroup.LayoutParams(-1, -2));
            this.f5546b.f5541b = (TextView) this.f5545a.findViewById(2131296911);
            this.f5546b.f5542c = (TextView) this.f5545a.findViewById(2131296910);
            this.f5546b.f5542c.setMovementMethod(ScrollingMovementMethod.getInstance());
            this.f5546b.f5544e = this.f5545a.findViewById(2131296392);
            this.f5546b.f5543d = this.f5545a.findViewById(2131296394);
        }

        /* JADX INFO: renamed from: a */
        public DialogC0885d m6562a() {
            this.f5546b.setContentView(this.f5545a);
            this.f5546b.setCancelable(false);
            this.f5546b.setCanceledOnTouchOutside(false);
            return this.f5546b;
        }

        /* JADX INFO: renamed from: b */
        public a m6563b(CharSequence charSequence, CharSequence charSequence2) {
            this.f5546b.f5542c.setText(charSequence2);
            return this;
        }
    }

    public DialogC0885d(Context context, int i) {
        super(context, i);
    }

    /* JADX INFO: renamed from: f */
    public void m6559f() {
        this.f5544e.setEnabled(false);
    }

    /* JADX INFO: renamed from: g */
    public View m6560g() {
        return this.f5544e;
    }

    /* JADX INFO: renamed from: h */
    public View m6561h() {
        return this.f5543d;
    }
}
