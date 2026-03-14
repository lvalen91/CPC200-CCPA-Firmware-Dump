package com.google.android.material.internal;

import android.content.Context;
import android.graphics.Typeface;
import android.text.TextPaint;
import com.yalantis.ucrop.view.CropImageView;
import java.lang.ref.WeakReference;
import p093d.p099c.p100a.p101a.p117x.AbstractC1260f;
import p093d.p099c.p100a.p101a.p117x.C1258d;

/* JADX INFO: renamed from: com.google.android.material.internal.h */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class C1119h {

    /* JADX INFO: renamed from: c */
    private float f7193c;

    /* JADX INFO: renamed from: f */
    private C1258d f7196f;

    /* JADX INFO: renamed from: a */
    private final TextPaint f7191a = new TextPaint(1);

    /* JADX INFO: renamed from: b */
    private final AbstractC1260f f7192b = new a();

    /* JADX INFO: renamed from: d */
    private boolean f7194d = true;

    /* JADX INFO: renamed from: e */
    private WeakReference<b> f7195e = new WeakReference<>(null);

    /* JADX INFO: renamed from: com.google.android.material.internal.h$a */
    class a extends AbstractC1260f {
        a() {
        }

        @Override // p093d.p099c.p100a.p101a.p117x.AbstractC1260f
        /* JADX INFO: renamed from: a */
        public void mo8184a(int i) {
            C1119h.this.f7194d = true;
            b bVar = (b) C1119h.this.f7195e.get();
            if (bVar != null) {
                bVar.mo8293a();
            }
        }

        @Override // p093d.p099c.p100a.p101a.p117x.AbstractC1260f
        /* JADX INFO: renamed from: b */
        public void mo8185b(Typeface typeface, boolean z) {
            if (z) {
                return;
            }
            C1119h.this.f7194d = true;
            b bVar = (b) C1119h.this.f7195e.get();
            if (bVar != null) {
                bVar.mo8293a();
            }
        }
    }

    /* JADX INFO: renamed from: com.google.android.material.internal.h$b */
    public interface b {
        /* JADX INFO: renamed from: a */
        void mo8293a();

        int[] getState();

        boolean onStateChange(int[] iArr);
    }

    public C1119h(b bVar) {
        m8715g(bVar);
    }

    /* JADX INFO: renamed from: c */
    private float m8711c(CharSequence charSequence) {
        return charSequence == null ? CropImageView.DEFAULT_ASPECT_RATIO : this.f7191a.measureText(charSequence, 0, charSequence.length());
    }

    /* JADX INFO: renamed from: d */
    public C1258d m8712d() {
        return this.f7196f;
    }

    /* JADX INFO: renamed from: e */
    public TextPaint m8713e() {
        return this.f7191a;
    }

    /* JADX INFO: renamed from: f */
    public float m8714f(String str) {
        if (!this.f7194d) {
            return this.f7193c;
        }
        float fM8711c = m8711c(str);
        this.f7193c = fM8711c;
        this.f7194d = false;
        return fM8711c;
    }

    /* JADX INFO: renamed from: g */
    public void m8715g(b bVar) {
        this.f7195e = new WeakReference<>(bVar);
    }

    /* JADX INFO: renamed from: h */
    public void m8716h(C1258d c1258d, Context context) {
        if (this.f7196f != c1258d) {
            this.f7196f = c1258d;
            if (c1258d != null) {
                c1258d.m9472k(context, this.f7191a, this.f7192b);
                b bVar = this.f7195e.get();
                if (bVar != null) {
                    this.f7191a.drawableState = bVar.getState();
                }
                c1258d.m9471j(context, this.f7191a, this.f7192b);
                this.f7194d = true;
            }
            b bVar2 = this.f7195e.get();
            if (bVar2 != null) {
                bVar2.mo8293a();
                bVar2.onStateChange(bVar2.getState());
            }
        }
    }

    /* JADX INFO: renamed from: i */
    public void m8717i(boolean z) {
        this.f7194d = z;
    }

    /* JADX INFO: renamed from: j */
    public void m8718j(Context context) {
        this.f7196f.m9471j(context, this.f7191a, this.f7192b);
    }
}
