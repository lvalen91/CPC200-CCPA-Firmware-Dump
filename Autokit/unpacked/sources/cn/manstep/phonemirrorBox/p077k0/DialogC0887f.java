package cn.manstep.phonemirrorBox.p077k0;

import android.app.Dialog;
import android.content.Context;
import android.text.format.Formatter;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import cn.manstep.phonemirrorBox.customview.CustomProgressBar;
import com.yalantis.ucrop.BuildConfig;

/* JADX INFO: renamed from: cn.manstep.phonemirrorBox.k0.f */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class DialogC0887f extends Dialog {

    /* JADX INFO: renamed from: b */
    private View f5554b;

    /* JADX INFO: renamed from: c */
    private TextView f5555c;

    /* JADX INFO: renamed from: d */
    private TextView f5556d;

    /* JADX INFO: renamed from: e */
    private TextView f5557e;

    /* JADX INFO: renamed from: f */
    private TextView f5558f;

    /* JADX INFO: renamed from: g */
    private CustomProgressBar f5559g;

    /* JADX INFO: renamed from: h */
    private int f5560h;

    /* JADX INFO: renamed from: i */
    private int f5561i;

    /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.k0.f$a */
    static /* synthetic */ class a {
    }

    /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.k0.f$b */
    public static class b {

        /* JADX INFO: renamed from: a */
        private View f5562a;

        /* JADX INFO: renamed from: b */
        private DialogC0887f f5563b;

        /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.k0.f$b$a */
        class a implements View.OnClickListener {
            a() {
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                b.this.f5563b.cancel();
            }
        }

        public b(Context context) {
            this.f5563b = new DialogC0887f(context, 2131755303, null);
            this.f5562a = ((LayoutInflater) context.getSystemService("layout_inflater")).inflate(2131492923, (ViewGroup) null, false);
            this.f5563b.addContentView(this.f5562a, new ViewGroup.LayoutParams(-1, -2));
            this.f5563b.f5555c = (TextView) this.f5562a.findViewById(2131296917);
            this.f5563b.f5556d = (TextView) this.f5562a.findViewById(2131296913);
            this.f5563b.f5557e = (TextView) this.f5562a.findViewById(2131296914);
            this.f5563b.f5558f = (TextView) this.f5562a.findViewById(2131296918);
            this.f5563b.f5559g = (CustomProgressBar) this.f5562a.findViewById(2131296724);
            this.f5563b.f5554b = this.f5562a.findViewById(2131296391);
            this.f5563b.f5554b.setOnClickListener(new a());
        }

        /* JADX INFO: renamed from: b */
        public DialogC0887f m6590b() {
            this.f5563b.setContentView(this.f5562a);
            this.f5563b.setCancelable(false);
            this.f5563b.setCanceledOnTouchOutside(false);
            return this.f5563b;
        }

        /* JADX INFO: renamed from: c */
        public b m6591c(int i) {
            this.f5563b.f5556d.setText(i);
            return this;
        }

        /* JADX INFO: renamed from: d */
        public b m6592d(int i) {
            this.f5563b.f5555c.setText(i);
            return this;
        }
    }

    /* synthetic */ DialogC0887f(Context context, int i, a aVar) {
        this(context, i);
    }

    @Override // android.app.Dialog, android.content.DialogInterface
    public void cancel() {
        super.cancel();
        this.f5559g.m6143f();
    }

    /* JADX INFO: renamed from: j */
    public void m6585j(int i) {
        this.f5560h = i;
        this.f5561i = 0;
        this.f5559g.setBarMax(i);
        if (this.f5558f != null) {
            String fileSize = Formatter.formatFileSize(getContext(), i);
            this.f5558f.setText("0/" + fileSize);
        }
    }

    /* JADX INFO: renamed from: k */
    public void m6586k(int i) {
        this.f5556d.setText(i);
    }

    /* JADX INFO: renamed from: l */
    public void m6587l(int i) {
        this.f5559g.f4785r = i;
        this.f5561i = (int) ((i / this.f5560h) * 100.0f);
        TextView textView = this.f5557e;
        if (textView != null) {
            textView.setText(BuildConfig.FLAVOR + this.f5561i + "%");
        }
        if (this.f5558f != null) {
            String fileSize = Formatter.formatFileSize(getContext(), this.f5560h);
            String fileSize2 = Formatter.formatFileSize(getContext(), i);
            this.f5558f.setText(fileSize2 + "/" + fileSize);
        }
    }

    /* JADX INFO: renamed from: m */
    public void m6588m() {
        this.f5554b.setVisibility(0);
    }

    private DialogC0887f(Context context, int i) {
        super(context, i);
    }
}
