package cn.manstep.phonemirrorBox.k0;

import android.app.AlertDialog;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Color;
import android.view.View;
import android.widget.ImageView;
import cn.manstep.phonemirrorBox.util.v;
import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class b {
    private static b e;
    private WeakReference<Context> a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private AlertDialog f1683b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private String f1684c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f1685d;

    class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            b.this.f1683b.dismiss();
        }
    }

    private ImageView b(Context context, int i) {
        ImageView imageView = new ImageView(context);
        int i2 = i + 10;
        imageView.setMinimumWidth(i2);
        imageView.setMinimumHeight(i2);
        imageView.setPadding(10, 10, 10, 10);
        imageView.setBackgroundColor(Color.parseColor("#FFFFFF"));
        return imageView;
    }

    public static b c() {
        if (e == null) {
            synchronized (b.class) {
                if (e == null) {
                    e = new b();
                }
            }
        }
        return e;
    }

    private int f(String str, int i, int i2) {
        double d2;
        String str2 = this.f1684c;
        if (str2 != null && str2.equals(str)) {
            return 0;
        }
        this.f1684c = str;
        if (i > i2) {
            d2 = i2;
            Double.isNaN(d2);
        } else {
            d2 = i;
            Double.isNaN(d2);
        }
        int i3 = (int) (d2 * 0.35d);
        if (this.f1685d == i3) {
            return 0;
        }
        this.f1685d = i3;
        return i3;
    }

    public void d() {
        AlertDialog alertDialog = this.f1683b;
        if (alertDialog != null) {
            alertDialog.dismiss();
        }
    }

    public b e(Context context) {
        if (context == null) {
            return this;
        }
        WeakReference<Context> weakReference = this.a;
        if (weakReference == null || weakReference.get() == null) {
            this.a = new WeakReference<>(context);
            AlertDialog.Builder builder = new AlertDialog.Builder(this.a.get(), 2131755275);
            builder.setCancelable(true);
            AlertDialog alertDialogCreate = builder.create();
            this.f1683b = alertDialogCreate;
            alertDialogCreate.setCanceledOnTouchOutside(true);
        }
        return this;
    }

    public void g() {
        if (e != null) {
            this.f1683b = null;
            e = null;
        }
    }

    public void h(String str, int i, int i2) {
        int iF;
        Bitmap bitmapA;
        if (this.a.get() == null || str == null || (iF = f(str, i, i2)) <= 0 || (bitmapA = v.a(str, iF, iF)) == null) {
            return;
        }
        ImageView imageViewB = b(this.a.get(), iF);
        imageViewB.setImageBitmap(bitmapA);
        imageViewB.setOnClickListener(new a());
        this.f1683b.setView(imageViewB);
    }

    public void i() {
        AlertDialog alertDialog = this.f1683b;
        if (alertDialog != null) {
            alertDialog.show();
        }
    }

    public void j(String str, int i, int i2) {
        h(str, i, i2);
        i();
    }
}
