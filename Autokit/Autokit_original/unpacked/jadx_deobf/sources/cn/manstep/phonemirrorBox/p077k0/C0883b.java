package cn.manstep.phonemirrorBox.p077k0;

import android.app.AlertDialog;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Color;
import android.view.View;
import android.widget.ImageView;
import cn.manstep.phonemirrorBox.util.C0985v;
import java.lang.ref.WeakReference;

/* JADX INFO: renamed from: cn.manstep.phonemirrorBox.k0.b */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class C0883b {

    /* JADX INFO: renamed from: e */
    private static C0883b f5520e;

    /* JADX INFO: renamed from: a */
    private WeakReference<Context> f5521a;

    /* JADX INFO: renamed from: b */
    private AlertDialog f5522b;

    /* JADX INFO: renamed from: c */
    private String f5523c;

    /* JADX INFO: renamed from: d */
    private int f5524d;

    /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.k0.b$a */
    class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            C0883b.this.f5522b.dismiss();
        }
    }

    /* JADX INFO: renamed from: b */
    private ImageView m6537b(Context context, int i) {
        ImageView imageView = new ImageView(context);
        int i2 = i + 10;
        imageView.setMinimumWidth(i2);
        imageView.setMinimumHeight(i2);
        imageView.setPadding(10, 10, 10, 10);
        imageView.setBackgroundColor(Color.parseColor("#FFFFFF"));
        return imageView;
    }

    /* JADX INFO: renamed from: c */
    public static C0883b m6538c() {
        if (f5520e == null) {
            synchronized (C0883b.class) {
                if (f5520e == null) {
                    f5520e = new C0883b();
                }
            }
        }
        return f5520e;
    }

    /* JADX INFO: renamed from: f */
    private int m6539f(String str, int i, int i2) {
        double d2;
        String str2 = this.f5523c;
        if (str2 != null && str2.equals(str)) {
            return 0;
        }
        this.f5523c = str;
        if (i > i2) {
            d2 = i2;
            Double.isNaN(d2);
        } else {
            d2 = i;
            Double.isNaN(d2);
        }
        int i3 = (int) (d2 * 0.35d);
        if (this.f5524d == i3) {
            return 0;
        }
        this.f5524d = i3;
        return i3;
    }

    /* JADX INFO: renamed from: d */
    public void m6540d() {
        AlertDialog alertDialog = this.f5522b;
        if (alertDialog != null) {
            alertDialog.dismiss();
        }
    }

    /* JADX INFO: renamed from: e */
    public C0883b m6541e(Context context) {
        if (context == null) {
            return this;
        }
        WeakReference<Context> weakReference = this.f5521a;
        if (weakReference == null || weakReference.get() == null) {
            this.f5521a = new WeakReference<>(context);
            AlertDialog.Builder builder = new AlertDialog.Builder(this.f5521a.get(), 2131755275);
            builder.setCancelable(true);
            AlertDialog alertDialogCreate = builder.create();
            this.f5522b = alertDialogCreate;
            alertDialogCreate.setCanceledOnTouchOutside(true);
        }
        return this;
    }

    /* JADX INFO: renamed from: g */
    public void m6542g() {
        if (f5520e != null) {
            this.f5522b = null;
            f5520e = null;
        }
    }

    /* JADX INFO: renamed from: h */
    public void m6543h(String str, int i, int i2) {
        int iM6539f;
        Bitmap bitmapM7392a;
        if (this.f5521a.get() == null || str == null || (iM6539f = m6539f(str, i, i2)) <= 0 || (bitmapM7392a = C0985v.m7392a(str, iM6539f, iM6539f)) == null) {
            return;
        }
        ImageView imageViewM6537b = m6537b(this.f5521a.get(), iM6539f);
        imageViewM6537b.setImageBitmap(bitmapM7392a);
        imageViewM6537b.setOnClickListener(new a());
        this.f5522b.setView(imageViewM6537b);
    }

    /* JADX INFO: renamed from: i */
    public void m6544i() {
        AlertDialog alertDialog = this.f5522b;
        if (alertDialog != null) {
            alertDialog.show();
        }
    }

    /* JADX INFO: renamed from: j */
    public void m6545j(String str, int i, int i2) {
        m6543h(str, i, i2);
        m6544i();
    }
}
