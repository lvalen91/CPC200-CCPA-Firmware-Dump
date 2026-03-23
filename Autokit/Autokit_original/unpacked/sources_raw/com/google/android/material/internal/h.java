package com.google.android.material.internal;

import android.content.Context;
import android.graphics.Typeface;
import android.text.TextPaint;
import com.yalantis.ucrop.view.CropImageView;
import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class h {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private float f2165c;
    private d.c.a.a.x.d f;
    private final TextPaint a = new TextPaint(1);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final d.c.a.a.x.f f2164b = new a();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f2166d = true;
    private WeakReference<b> e = new WeakReference<>(null);

    class a extends d.c.a.a.x.f {
        a() {
        }

        @Override // d.c.a.a.x.f
        public void a(int i) {
            h.this.f2166d = true;
            b bVar = (b) h.this.e.get();
            if (bVar != null) {
                bVar.a();
            }
        }

        @Override // d.c.a.a.x.f
        public void b(Typeface typeface, boolean z) {
            if (z) {
                return;
            }
            h.this.f2166d = true;
            b bVar = (b) h.this.e.get();
            if (bVar != null) {
                bVar.a();
            }
        }
    }

    public interface b {
        void a();

        int[] getState();

        boolean onStateChange(int[] iArr);
    }

    public h(b bVar) {
        g(bVar);
    }

    private float c(CharSequence charSequence) {
        return charSequence == null ? CropImageView.DEFAULT_ASPECT_RATIO : this.a.measureText(charSequence, 0, charSequence.length());
    }

    public d.c.a.a.x.d d() {
        return this.f;
    }

    public TextPaint e() {
        return this.a;
    }

    public float f(String str) {
        if (!this.f2166d) {
            return this.f2165c;
        }
        float fC = c(str);
        this.f2165c = fC;
        this.f2166d = false;
        return fC;
    }

    public void g(b bVar) {
        this.e = new WeakReference<>(bVar);
    }

    public void h(d.c.a.a.x.d dVar, Context context) {
        if (this.f != dVar) {
            this.f = dVar;
            if (dVar != null) {
                dVar.k(context, this.a, this.f2164b);
                b bVar = this.e.get();
                if (bVar != null) {
                    this.a.drawableState = bVar.getState();
                }
                dVar.j(context, this.a, this.f2164b);
                this.f2166d = true;
            }
            b bVar2 = this.e.get();
            if (bVar2 != null) {
                bVar2.a();
                bVar2.onStateChange(bVar2.getState());
            }
        }
    }

    public void i(boolean z) {
        this.f2166d = z;
    }

    public void j(Context context) {
        this.f.j(context, this.a, this.f2164b);
    }
}
