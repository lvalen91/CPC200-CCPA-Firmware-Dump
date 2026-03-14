package com.google.android.material.bottomappbar;

import com.yalantis.ucrop.view.CropImageView;
import p093d.p099c.p100a.p101a.p102a0.C1207f;
import p093d.p099c.p100a.p101a.p102a0.C1214m;

/* JADX INFO: renamed from: com.google.android.material.bottomappbar.a */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class C1045a extends C1207f implements Cloneable {

    /* JADX INFO: renamed from: b */
    private float f6615b;

    /* JADX INFO: renamed from: c */
    private float f6616c;

    /* JADX INFO: renamed from: d */
    private float f6617d;

    /* JADX INFO: renamed from: e */
    private float f6618e;

    /* JADX INFO: renamed from: f */
    private float f6619f;

    /* JADX INFO: renamed from: g */
    private float f6620g;

    @Override // p093d.p099c.p100a.p101a.p102a0.C1207f
    /* JADX INFO: renamed from: b */
    public void mo7999b(float f, float f2, float f3, C1214m c1214m) {
        float f4;
        float f5;
        float f6 = this.f6617d;
        if (f6 == CropImageView.DEFAULT_ASPECT_RATIO) {
            c1214m.m9301m(f, CropImageView.DEFAULT_ASPECT_RATIO);
            return;
        }
        float f7 = ((this.f6616c * 2.0f) + f6) / 2.0f;
        float f8 = f3 * this.f6615b;
        float f9 = f2 + this.f6619f;
        float f10 = (this.f6618e * f3) + ((1.0f - f3) * f7);
        if (f10 / f7 >= 1.0f) {
            c1214m.m9301m(f, CropImageView.DEFAULT_ASPECT_RATIO);
            return;
        }
        float f11 = this.f6620g;
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
        c1214m.m9301m(f15, CropImageView.DEFAULT_ASPECT_RATIO);
        float f18 = f8 * 2.0f;
        c1214m.m9293a(f15 - f8, CropImageView.DEFAULT_ASPECT_RATIO, f15 + f8, f18, 270.0f, degrees);
        if (z) {
            c1214m.m9293a(f9 - f7, (-f7) - f4, f9 + f7, f7 - f4, 180.0f - f17, (f17 * 2.0f) - 180.0f);
        } else {
            float f19 = this.f6616c;
            float f20 = f12 * 2.0f;
            float f21 = f9 - f7;
            c1214m.m9293a(f21, -(f12 + f19), f21 + f19 + f20, f19 + f12, 180.0f - f17, ((f17 * 2.0f) - 180.0f) / 2.0f);
            float f22 = f9 + f7;
            float f23 = this.f6616c;
            c1214m.m9301m(f22 - ((f23 / 2.0f) + f12), f23 + f12);
            float f24 = this.f6616c;
            c1214m.m9293a(f22 - (f20 + f24), -(f12 + f24), f22, f24 + f12, 90.0f, f17 - 90.0f);
        }
        c1214m.m9293a(f16 - f8, CropImageView.DEFAULT_ASPECT_RATIO, f16 + f8, f18, 270.0f - degrees, degrees);
        c1214m.m9301m(f, CropImageView.DEFAULT_ASPECT_RATIO);
    }

    /* JADX INFO: renamed from: c */
    float m8000c() {
        return this.f6618e;
    }

    /* JADX INFO: renamed from: d */
    public float m8001d() {
        return this.f6620g;
    }

    /* JADX INFO: renamed from: e */
    float m8002e() {
        return this.f6616c;
    }

    /* JADX INFO: renamed from: f */
    float m8003f() {
        return this.f6615b;
    }

    /* JADX INFO: renamed from: g */
    public float m8004g() {
        return this.f6617d;
    }

    /* JADX INFO: renamed from: h */
    void m8005h(float f) {
        if (f < CropImageView.DEFAULT_ASPECT_RATIO) {
            throw new IllegalArgumentException("cradleVerticalOffset must be positive.");
        }
        this.f6618e = f;
    }

    /* JADX INFO: renamed from: i */
    public void m8006i(float f) {
        this.f6620g = f;
    }

    /* JADX INFO: renamed from: j */
    void m8007j(float f) {
        this.f6616c = f;
    }

    /* JADX INFO: renamed from: k */
    void m8008k(float f) {
        this.f6615b = f;
    }

    /* JADX INFO: renamed from: l */
    public void m8009l(float f) {
        this.f6617d = f;
    }

    /* JADX INFO: renamed from: m */
    void m8010m(float f) {
        this.f6619f = f;
    }
}
