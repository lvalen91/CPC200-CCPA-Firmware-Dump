package com.google.android.material.textfield;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.view.View;
import com.yalantis.ucrop.view.CropImageView;
import d.c.a.a.a0.k;

/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
class c extends d.c.a.a.a0.g {
    private final RectF A;
    private int B;
    private final Paint z;

    c() {
        this(null);
    }

    private void j0(Canvas canvas) {
        if (q0(getCallback())) {
            return;
        }
        canvas.restoreToCount(this.B);
    }

    private void k0(Canvas canvas) {
        Drawable.Callback callback = getCallback();
        if (!q0(callback)) {
            m0(canvas);
            return;
        }
        View view = (View) callback;
        if (view.getLayerType() != 2) {
            view.setLayerType(2, null);
        }
    }

    private void m0(Canvas canvas) {
        if (Build.VERSION.SDK_INT >= 21) {
            this.B = canvas.saveLayer(CropImageView.DEFAULT_ASPECT_RATIO, CropImageView.DEFAULT_ASPECT_RATIO, canvas.getWidth(), canvas.getHeight(), null);
        } else {
            this.B = canvas.saveLayer(CropImageView.DEFAULT_ASPECT_RATIO, CropImageView.DEFAULT_ASPECT_RATIO, canvas.getWidth(), canvas.getHeight(), null, 31);
        }
    }

    private void p0() {
        this.z.setStyle(Paint.Style.FILL_AND_STROKE);
        this.z.setColor(-1);
        this.z.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.DST_OUT));
    }

    private boolean q0(Drawable.Callback callback) {
        return callback instanceof View;
    }

    @Override // d.c.a.a.a0.g, android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        k0(canvas);
        super.draw(canvas);
        canvas.drawRect(this.A, this.z);
        j0(canvas);
    }

    boolean i0() {
        return !this.A.isEmpty();
    }

    void l0() {
        n0(CropImageView.DEFAULT_ASPECT_RATIO, CropImageView.DEFAULT_ASPECT_RATIO, CropImageView.DEFAULT_ASPECT_RATIO, CropImageView.DEFAULT_ASPECT_RATIO);
    }

    void n0(float f, float f2, float f3, float f4) {
        RectF rectF = this.A;
        if (f == rectF.left && f2 == rectF.top && f3 == rectF.right && f4 == rectF.bottom) {
            return;
        }
        this.A.set(f, f2, f3, f4);
        invalidateSelf();
    }

    void o0(RectF rectF) {
        n0(rectF.left, rectF.top, rectF.right, rectF.bottom);
    }

    c(k kVar) {
        super(kVar == null ? new k() : kVar);
        this.z = new Paint(1);
        p0();
        this.A = new RectF();
    }
}
