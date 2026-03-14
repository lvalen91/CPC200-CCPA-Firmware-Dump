package cn.manstep.phonemirrorBox.util;

import android.app.Dialog;
import android.content.Context;
import android.os.Handler;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ProgressBar;
import android.widget.TextView;

/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class g extends Dialog {

    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            g.this.cancel();
        }
    }

    class b implements Runnable {
        b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            g.this.cancel();
        }
    }

    public static class c {
        private Context a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private String f1879b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private boolean f1880c = false;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private boolean f1881d = false;

        public c(Context context) {
            this.a = context;
        }

        public c a(boolean z) {
            this.f1881d = z;
            return this;
        }

        public c b(boolean z) {
            this.f1880c = z;
            return this;
        }

        public c c(String str) {
            this.f1879b = str;
            return this;
        }

        public g d() {
            View viewInflate = LayoutInflater.from(this.a).inflate(2131492905, (ViewGroup) null);
            ((ProgressBar) viewInflate.findViewById(2131296724)).setVisibility(8);
            ((TextView) viewInflate.findViewById(2131296869)).setText(this.f1879b);
            g gVar = new g(this.a, 2131755275);
            gVar.setContentView(viewInflate);
            gVar.setCancelable(this.f1880c);
            gVar.setCanceledOnTouchOutside(this.f1881d);
            return gVar;
        }
    }

    public g(Context context, int i) {
        super(context, i);
    }

    public static void a(Context context, int i, int i2) {
        if (context != null) {
            c cVar = new c(context);
            cVar.c(context.getResources().getString(i));
            cVar.b(true);
            cVar.a(true);
            cVar.d().c(true, i2);
        }
    }

    public static void d(Context context, int i) {
        if (context != null) {
            c cVar = new c(context);
            cVar.c(context.getResources().getString(i));
            cVar.b(true);
            cVar.a(true);
            cVar.d().b(true);
        }
    }

    public void b(boolean z) {
        super.show();
        if (z) {
            new Handler().postDelayed(new a(), 3000L);
        }
    }

    public void c(boolean z, int i) {
        super.show();
        if (z) {
            new Handler().postDelayed(new b(), i);
        }
    }

    @Override // android.app.Dialog
    public void show() {
        super.show();
    }
}
