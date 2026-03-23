package cn.manstep.phonemirrorBox.p077k0;

import android.app.Dialog;
import android.content.Context;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.TextView;
import cn.manstep.phonemirrorBox.widget.C1000a;
import com.yalantis.ucrop.BuildConfig;

/* JADX INFO: renamed from: cn.manstep.phonemirrorBox.k0.e */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class DialogC0886e extends Dialog implements View.OnClickListener {

    /* JADX INFO: renamed from: b */
    private b f5547b;

    /* JADX INFO: renamed from: c */
    private TextView f5548c;

    /* JADX INFO: renamed from: d */
    private EditText f5549d;

    /* JADX INFO: renamed from: e */
    private View f5550e;

    /* JADX INFO: renamed from: f */
    private View f5551f;

    /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.k0.e$a */
    public static class a {

        /* JADX INFO: renamed from: a */
        private final View f5552a;

        /* JADX INFO: renamed from: b */
        private final DialogC0886e f5553b;

        public a(Context context) {
            this.f5553b = new DialogC0886e(context, 2131755275);
            this.f5552a = ((LayoutInflater) context.getSystemService("layout_inflater")).inflate(2131492907, (ViewGroup) null, false);
            this.f5553b.addContentView(this.f5552a, new ViewGroup.LayoutParams(-1, -2));
            this.f5553b.f5548c = (TextView) this.f5552a.findViewById(2131296911);
            this.f5553b.f5549d = (EditText) this.f5552a.findViewById(2131296477);
            this.f5553b.f5551f = this.f5552a.findViewById(2131296543);
            this.f5553b.f5550e = this.f5552a.findViewById(2131296544);
            this.f5553b.f5551f.setOnClickListener(this.f5553b);
            this.f5553b.f5550e.setOnClickListener(this.f5553b);
        }

        /* JADX INFO: renamed from: a */
        public DialogC0886e m6573a() {
            this.f5553b.setContentView(this.f5552a);
            this.f5553b.setCancelable(false);
            this.f5553b.setCanceledOnTouchOutside(false);
            return this.f5553b;
        }

        /* JADX INFO: renamed from: b */
        public a m6574b(int i) {
            this.f5553b.f5548c.setText(i);
            return this;
        }
    }

    /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.k0.e$b */
    public interface b {
        /* JADX INFO: renamed from: u */
        void mo6575u(String str);
    }

    public DialogC0886e(Context context, int i) {
        super(context, i);
    }

    /* JADX INFO: renamed from: h */
    private static boolean m6571h(String str) {
        if (str == null || str.trim().isEmpty() || str.length() < 5 || str.matches("(.)\\1+") || str.matches("(.+)(\\1)+") || str.matches("(\\d)\\1+") || str.matches("(.{1,2})(\\1)+") || str.matches(".*(.)\\1{2,}.*") || str.matches("(\\d)\\1*(\\d)\\2*(\\d)\\3*(\\d)\\4*") || str.matches(".*(\\d+[a-zA-Z][^\\w\\s]*)|(^[^\\w\\s]+[a-zA-Z][^\\w\\s]*)|([a-zA-Z]\\d[^\\w\\s]*).*")) {
            return false;
        }
        String[] strArr = {"qwerty", "12345", "asdfg"};
        for (int i = 0; i < 3; i++) {
            if (str.toLowerCase().contains(strArr[i])) {
                return false;
            }
        }
        String[] strArr2 = {"asdfghjkl", "qwertyuiop", "1234567890", "zxcvbnm"};
        for (int i2 = 0; i2 < 4; i2++) {
            if (str.toLowerCase().contains(strArr2[i2])) {
                return false;
            }
        }
        return true;
    }

    @Override // android.app.Dialog, android.content.DialogInterface
    public void dismiss() {
        super.dismiss();
        this.f5549d.setText(BuildConfig.FLAVOR);
    }

    /* JADX INFO: renamed from: i */
    public void m6572i(b bVar) {
        this.f5547b = bVar;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        int id = view.getId();
        if (id == 2131296543) {
            dismiss();
            return;
        }
        if (id == 2131296544) {
            String strTrim = this.f5549d.getText().toString().trim();
            if (TextUtils.isEmpty(strTrim)) {
                return;
            }
            if (m6571h(strTrim)) {
                this.f5547b.mo6575u(strTrim);
                dismiss();
            } else {
                this.f5549d.setText(BuildConfig.FLAVOR);
                C1000a.makeText(getContext(), 2131689754, 0).show();
            }
        }
    }
}
