package cn.manstep.phonemirrorBox.k0;

import android.app.Dialog;
import android.content.Context;
import android.text.format.Formatter;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import cn.manstep.phonemirrorBox.customview.CustomProgressBar;
import com.yalantis.ucrop.BuildConfig;

/* JADX INFO: loaded from: /Volumes/stuff/macbook/misc/CPC200-CCPA/rework/dumped_real_classes.dex */
public class f extends Dialog {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private View f1697b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private TextView f1698c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private TextView f1699d;
    private TextView e;
    private TextView f;
    private CustomProgressBar g;
    private int h;
    private int i;

    static /* synthetic */ class a {
    }

    public static class b {
        private View a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private f f1700b;

        class a implements View.OnClickListener {
            a() {
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                b.this.f1700b.cancel();
            }
        }

        public b(Context context) {
            this.f1700b = new f(context, 2131755303, null);
            this.a = ((LayoutInflater) context.getSystemService("layout_inflater")).inflate(2131492923, (ViewGroup) null, false);
            this.f1700b.addContentView(this.a, new ViewGroup.LayoutParams(-1, -2));
            this.f1700b.f1698c = (TextView) this.a.findViewById(2131296917);
            this.f1700b.f1699d = (TextView) this.a.findViewById(2131296913);
            this.f1700b.e = (TextView) this.a.findViewById(2131296914);
            this.f1700b.f = (TextView) this.a.findViewById(2131296918);
            this.f1700b.g = (CustomProgressBar) this.a.findViewById(2131296724);
            this.f1700b.f1697b = this.a.findViewById(2131296391);
            this.f1700b.f1697b.setOnClickListener(new a());
        }

        public f b() {
            this.f1700b.setContentView(this.a);
            this.f1700b.setCancelable(false);
            this.f1700b.setCanceledOnTouchOutside(false);
            return this.f1700b;
        }

        public b c(int i) {
            this.f1700b.f1699d.setText(i);
            return this;
        }

        public b d(int i) {
            this.f1700b.f1698c.setText(i);
            return this;
        }
    }

    /* synthetic */ f(Context context, int i, a aVar) {
        this(context, i);
    }

    @Override // android.app.Dialog, android.content.DialogInterface
    public void cancel() {
        super.cancel();
        this.g.f();
    }

    public void j(int i) {
        this.h = i;
        this.i = 0;
        this.g.setBarMax(i);
        if (this.f != null) {
            String fileSize = Formatter.formatFileSize(getContext(), i);
            this.f.setText("0/" + fileSize);
        }
    }

    public void k(int i) {
        this.f1699d.setText(i);
    }

    public void l(int i) {
        this.g.r = i;
        this.i = (int) ((i / this.h) * 100.0f);
        TextView textView = this.e;
        if (textView != null) {
            textView.setText(BuildConfig.FLAVOR + this.i + "%");
        }
        if (this.f != null) {
            String fileSize = Formatter.formatFileSize(getContext(), this.h);
            String fileSize2 = Formatter.formatFileSize(getContext(), i);
            this.f.setText(fileSize2 + "/" + fileSize);
        }
    }

    public void m() {
        this.f1697b.setVisibility(0);
    }

    private f(Context context, int i) {
        super(context, i);
    }
}
