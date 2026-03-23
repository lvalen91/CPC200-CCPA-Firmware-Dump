package com.google.android.material.bottomappbar;

import com.yalantis.ucrop.view.CropImageView;
import d.c.a.a.a0.f;
import d.c.a.a.a0.m;

/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class a extends f implements Cloneable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private float f2038b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private float f2039c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private float f2040d;
    private float e;
    private float f;
    private float g;

    @Override // d.c.a.a.a0.f
    public void b(float f, float f2, float f3, m mVar) {
        float f4;
        float f5;
        float f6 = this.f2040d;
        if (f6 == CropImageView.DEFAULT_ASPECT_RATIO) {
            mVar.m(f, CropImageView.DEFAULT_ASPECT_RATIO);
            return;
        }
        float f7 = ((this.f2039c * 2.0f) + f6) / 2.0f;
        float f8 = f3 * this.f2038b;
        float f9 = f2 + this.f;
        float f10 = (this.e * f3) + ((1.0f - f3) * f7);
        if (f10 / f7 >= 1.0f) {
            mVar.m(f, CropImageView.DEFAULT_ASPECT_RATIO);
            return;
        }
        float f11 = this.g;
        float f12 = f11 * f3;
        boolean z = f11 == -1.0f || Math.abs((f11 * 2.0f) - f6) < 0.1f;
        if (z) {
            f4 = f10;
            f5 = CropImageView.DEFAULT_ASPECT_RATIO;
        } else {
            f5 = 1.75f;
            f4 = CropImageView.DEFAULT_ASPECT_RATIO;
        }
        float f13 = f7 + f8;
        float f14 = f4 + f8;
        float fSqrt = (float) Math.sqrt((f13 * f13) - (f14 * f14));
        float f15 = f9 - fSqrt;
        float f16 = f9 + fSqrt;
        float degrees = (float) Math.toDegrees(Math.atan(fSqrt / f14));
        float f17 = (90.0f - degrees) + f5;
        mVar.m(f15, CropImageView.DEFAULT_ASPECT_RATIO);
        float f18 = f8 * 2.0f;
        mVar.a(f15 - f8, CropImageView.DEFAULT_ASPECT_RATIO, f15 + f8, f18, 270.0f, degrees);
        if (z) {
            mVar.a(f9 - f7, (-f7) - f4, f9 + f7, f7 - f4, 180.0f - f17, (f17 * 2.0f) - 180.0f);
        } else {
            float f19 = this.f2039c;
            float f20 = f12 * 2.0f;
            float f21 = f9 - f7;
            mVar.a(f21, -(f12 + f19), f21 + f19 + f20, f19 + f12, 180.0f - f17, ((f17 * 2.0f) - 180.0f) / 2.0f);
            float f22 = f9 + f7;
            float f23 = this.f2039c;
            mVar.m(f22 - ((f23 / 2.0f) + f12), f23 + f12);
            float f24 = this.f2039c;
            mVar.a(f22 - (f20 + f24), -(f12 + f24), f22, f24 + f12, 90.0f, f17 - 90.0f);
        }
        mVar.a(f16 - f8, CropImageView.DEFAULT_ASPECT_RATIO, f16 + f8, f18, 270.0f - degrees, degrees);
        mVar.m(f, CropImageView.DEFAULT_ASPECT_RATIO);
    }

    float c() {
        return this.e;
    }

    public float d() {
        return this.g;
    }

    float e() {
        return this.f2039c;
    }

    float f() {
        return this.f2038b;
    }

    public float g() {
        return this.f2040d;
    }

    void h(float f) {
        if (f < CropImageView.DEFAULT_ASPECT_RATIO) {
            throw new IllegalArgumentException("cradleVerticalOffset must be positive.");
        }
        this.e = f;
    }

    public void i(float f) {
        this.g = f;
    }

    void j(float f) {
        this.f2039c = f;
    }

    void k(float f) {
        this.f2038b = f;
    }

    public void l(float f) {
        this.f2040d = f;
    }

    void m(float f) {
        this.f = f;
    }
}
