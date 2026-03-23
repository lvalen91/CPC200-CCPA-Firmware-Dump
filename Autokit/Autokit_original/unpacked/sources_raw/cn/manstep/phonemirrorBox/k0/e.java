package cn.manstep.phonemirrorBox.k0;

import android.app.Dialog;
import android.content.Context;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.TextView;
import com.yalantis.ucrop.BuildConfig;

/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class e extends Dialog implements View.OnClickListener {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private b f1693b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private TextView f1694c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private EditText f1695d;
    private View e;
    private View f;

    public static class a {
        private final View a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final e f1696b;

        public a(Context context) {
            this.f1696b = new e(context, 2131755275);
            this.a = ((LayoutInflater) context.getSystemService("layout_inflater")).inflate(2131492907, (ViewGroup) null, false);
            this.f1696b.addContentView(this.a, new ViewGroup.LayoutParams(-1, -2));
            this.f1696b.f1694c = (TextView) this.a.findViewById(2131296911);
            this.f1696b.f1695d = (EditText) this.a.findViewById(2131296477);
            this.f1696b.f = this.a.findViewById(2131296543);
            this.f1696b.e = this.a.findViewById(2131296544);
            this.f1696b.f.setOnClickListener(this.f1696b);
            this.f1696b.e.setOnClickListener(this.f1696b);
        }

        public e a() {
            this.f1696b.setContentView(this.a);
            this.f1696b.setCancelable(false);
            this.f1696b.setCanceledOnTouchOutside(false);
            return this.f1696b;
        }

        public a b(int i) {
            this.f1696b.f1694c.setText(i);
            return this;
        }
    }

    public interface b {
        void u(String str);
    }

    public e(Context context, int i) {
        super(context, i);
    }

    private static boolean h(String str) {
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
        this.f1695d.setText(BuildConfig.FLAVOR);
    }

    public void i(b bVar) {
        this.f1693b = bVar;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        int id = view.getId();
        if (id == 2131296543) {
            dismiss();
            return;
        }
        if (id == 2131296544) {
            String strTrim = this.f1695d.getText().toString().trim();
            if (TextUtils.isEmpty(strTrim)) {
                return;
            }
            if (h(strTrim)) {
                this.f1693b.u(strTrim);
                dismiss();
            } else {
                this.f1695d.setText(BuildConfig.FLAVOR);
                cn.manstep.phonemirrorBox.widget.a.makeText(getContext(), 2131689754, 0).show();
            }
        }
    }
}
