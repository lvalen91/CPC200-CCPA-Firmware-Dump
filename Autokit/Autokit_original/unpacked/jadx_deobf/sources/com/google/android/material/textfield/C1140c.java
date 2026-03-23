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
import p093d.p099c.p100a.p101a.p102a0.C1208g;
import p093d.p099c.p100a.p101a.p102a0.C1212k;

/* JADX INFO: renamed from: com.google.android.material.textfield.c */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
class C1140c extends C1208g {

    /* JADX INFO: renamed from: A */
    private final RectF f7347A;

    /* JADX INFO: renamed from: B */
    private int f7348B;

    /* JADX INFO: renamed from: z */
    private final Paint f7349z;

    C1140c() {
        this(null);
    }

    /* JADX INFO: renamed from: j0 */
    private void m8854j0(Canvas canvas) {
        if (m8858q0(getCallback())) {
            return;
        }
        canvas.restoreToCount(this.f7348B);
    }

    /* JADX INFO: renamed from: k0 */
    private void m8855k0(Canvas canvas) {
        Drawable.Callback callback = getCallback();
        if (!m8858q0(callback)) {
            m8856m0(canvas);
            return;
        }
        View view = (View) callback;
        if (view.getLayerType() != 2) {
            view.setLayerType(2, null);
        }
    }

    /* JADX INFO: renamed from: m0 */
    private void m8856m0(Canvas canvas) {
        if (Build.VERSION.SDK_INT >= 21) {
            this.f7348B = canvas.saveLayer(CropImageView.DEFAULT_ASPECT_RATIO, CropImageView.DEFAULT_ASPECT_RATIO, canvas.getWidth(), canvas.getHeight(), null);
        } else {
            this.f7348B = canvas.saveLayer(CropImageView.DEFAULT_ASPECT_RATIO, CropImageView.DEFAULT_ASPECT_RATIO, canvas.getWidth(), canvas.getHeight(), null, 31);
        }
    }

    /* JADX INFO: renamed from: p0 */
    private void m8857p0() {
        this.f7349z.setStyle(Paint.Style.FILL_AND_STROKE);
        this.f7349z.setColor(-1);
        this.f7349z.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.DST_OUT));
    }

    /* JADX INFO: renamed from: q0 */
    private boolean m8858q0(Drawable.Callback callback) {
        return callback instanceof View;
    }

    @Override // p093d.p099c.p100a.p101a.p102a0.C1208g, android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        m8855k0(canvas);
        super.draw(canvas);
        canvas.drawRect(this.f7347A, this.f7349z);
        m8854j0(canvas);
    }

    /* JADX INFO: renamed from: i0 */
    boolean m8859i0() {
        return !this.f7347A.isEmpty();
    }

    /* JADX INFO: renamed from: l0 */
    void m8860l0() {
        m8861n0(CropImageView.DEFAULT_ASPECT_RATIO, CropImageView.DEFAULT_ASPECT_RATIO, CropImageView.DEFAULT_ASPECT_RATIO, CropImageView.DEFAULT_ASPECT_RATIO);
    }

    /* JADX INFO: renamed from: n0 */
    void m8861n0(float f, float f2, float f3, float f4) {
        RectF rectF = this.f7347A;
        if (f == rectF.left && f2 == rectF.top && f3 == rectF.right && f4 == rectF.bottom) {
            return;
        }
        this.f7347A.set(f, f2, f3, f4);
        invalidateSelf();
    }

    /* JADX INFO: renamed from: o0 */
    void m8862o0(RectF rectF) {
        m8861n0(rectF.left, rectF.top, rectF.right, rectF.bottom);
    }

    C1140c(C1212k c1212k) {
        super(c1212k == null ? new C1212k() : c1212k);
        this.f7349z = new Paint(1);
        m8857p0();
        this.f7347A = new RectF();
    }
}
