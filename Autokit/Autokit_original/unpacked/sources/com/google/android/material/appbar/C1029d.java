package com.google.android.material.appbar;

import android.view.View;
import androidx.core.view.C0292v;

/* JADX INFO: renamed from: com.google.android.material.appbar.d */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
class C1029d {

    /* JADX INFO: renamed from: a */
    private final View f6546a;

    /* JADX INFO: renamed from: b */
    private int f6547b;

    /* JADX INFO: renamed from: c */
    private int f6548c;

    /* JADX INFO: renamed from: d */
    private int f6549d;

    /* JADX INFO: renamed from: e */
    private int f6550e;

    /* JADX INFO: renamed from: f */
    private boolean f6551f = true;

    /* JADX INFO: renamed from: g */
    private boolean f6552g = true;

    public C1029d(View view) {
        this.f6546a = view;
    }

    /* JADX INFO: renamed from: a */
    void m7926a() {
        View view = this.f6546a;
        C0292v.m2075Z(view, this.f6549d - (view.getTop() - this.f6547b));
        View view2 = this.f6546a;
        C0292v.m2074Y(view2, this.f6550e - (view2.getLeft() - this.f6548c));
    }

    /* JADX INFO: renamed from: b */
    public int m7927b() {
        return this.f6549d;
    }

    /* JADX INFO: renamed from: c */
    void m7928c() {
        this.f6547b = this.f6546a.getTop();
        this.f6548c = this.f6546a.getLeft();
    }

    /* JADX INFO: renamed from: d */
    public boolean m7929d(int i) {
        if (!this.f6552g || this.f6550e == i) {
            return false;
        }
        this.f6550e = i;
        m7926a();
        return true;
    }

    /* JADX INFO: renamed from: e */
    public boolean m7930e(int i) {
        if (!this.f6551f || this.f6549d == i) {
            return false;
        }
        this.f6549d = i;
        m7926a();
        return true;
    }
}
