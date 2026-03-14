package cn.manstep.phonemirrorBox.util;

import android.app.Dialog;
import android.content.Context;
import android.os.Handler;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ProgressBar;
import android.widget.TextView;

/* JADX INFO: renamed from: cn.manstep.phonemirrorBox.util.g */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class DialogC0970g extends Dialog {

    /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.util.g$a */
    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            DialogC0970g.this.cancel();
        }
    }

    /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.util.g$b */
    class b implements Runnable {
        b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            DialogC0970g.this.cancel();
        }
    }

    /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.util.g$c */
    public static class c {

        /* JADX INFO: renamed from: a */
        private Context f6055a;

        /* JADX INFO: renamed from: b */
        private String f6056b;

        /* JADX INFO: renamed from: c */
        private boolean f6057c = false;

        /* JADX INFO: renamed from: d */
        private boolean f6058d = false;

        public c(Context context) {
            this.f6055a = context;
        }

        /* JADX INFO: renamed from: a */
        public c m7245a(boolean z) {
            this.f6058d = z;
            return this;
        }

        /* JADX INFO: renamed from: b */
        public c m7246b(boolean z) {
            this.f6057c = z;
            return this;
        }

        /* JADX INFO: renamed from: c */
        public c m7247c(String str) {
            this.f6056b = str;
            return this;
        }

        /* JADX INFO: renamed from: d */
        public DialogC0970g m7248d() {
            View viewInflate = LayoutInflater.from(this.f6055a).inflate(2131492905, (ViewGroup) null);
            ((ProgressBar) viewInflate.findViewById(2131296724)).setVisibility(8);
            ((TextView) viewInflate.findViewById(2131296869)).setText(this.f6056b);
            DialogC0970g dialogC0970g = new DialogC0970g(this.f6055a, 2131755275);
            dialogC0970g.setContentView(viewInflate);
            dialogC0970g.setCancelable(this.f6057c);
            dialogC0970g.setCanceledOnTouchOutside(this.f6058d);
            return dialogC0970g;
        }
    }

    public DialogC0970g(Context context, int i) {
        super(context, i);
    }

    /* JADX INFO: renamed from: a */
    public static void m7241a(Context context, int i, int i2) {
        if (context != null) {
            c cVar = new c(context);
            cVar.m7247c(context.getResources().getString(i));
            cVar.m7246b(true);
            cVar.m7245a(true);
            cVar.m7248d().m7244c(true, i2);
        }
    }

    /* JADX INFO: renamed from: d */
    public static void m7242d(Context context, int i) {
        if (context != null) {
            c cVar = new c(context);
            cVar.m7247c(context.getResources().getString(i));
            cVar.m7246b(true);
            cVar.m7245a(true);
            cVar.m7248d().m7243b(true);
        }
    }

    /* JADX INFO: renamed from: b */
    public void m7243b(boolean z) {
        super.show();
        if (z) {
            new Handler().postDelayed(new a(), 3000L);
        }
    }

    /* JADX INFO: renamed from: c */
    public void m7244c(boolean z, int i) {
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
