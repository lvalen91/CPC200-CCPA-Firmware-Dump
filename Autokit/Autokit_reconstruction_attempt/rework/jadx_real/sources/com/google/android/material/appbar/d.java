package com.google.android.material.appbar;

import android.view.View;
import androidx.core.view.v;

/* JADX INFO: loaded from: /Volumes/stuff/macbook/misc/CPC200-CCPA/rework/dumped_real_classes.dex */
class d {
    private final View a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f2016b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f2017c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f2018d;
    private int e;
    private boolean f = true;
    private boolean g = true;

    public d(View view) {
        this.a = view;
    }

    void a() {
        View view = this.a;
        v.Z(view, this.f2018d - (view.getTop() - this.f2016b));
        View view2 = this.a;
        v.Y(view2, this.e - (view2.getLeft() - this.f2017c));
    }

    public int b() {
        return this.f2018d;
    }

    void c() {
        this.f2016b = this.a.getTop();
        this.f2017c = this.a.getLeft();
    }

    public boolean d(int i) {
        if (!this.g || this.e == i) {
            return false;
        }
        this.e = i;
        a();
        return true;
    }

    public boolean e(int i) {
        if (!this.f || this.f2018d == i) {
            return false;
        }
        this.f2018d = i;
        a();
        return true;
    }
}
