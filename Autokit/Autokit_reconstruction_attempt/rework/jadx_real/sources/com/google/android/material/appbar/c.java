package com.google.android.material.appbar;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import androidx.coordinatorlayout.widget.CoordinatorLayout;

/* JADX INFO: loaded from: /Volumes/stuff/macbook/misc/CPC200-CCPA/rework/dumped_real_classes.dex */
class c<V extends View> extends CoordinatorLayout.c<V> {
    private d a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f2014b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f2015c;

    public c() {
        this.f2014b = 0;
        this.f2015c = 0;
    }

    public int E() {
        d dVar = this.a;
        if (dVar != null) {
            return dVar.b();
        }
        return 0;
    }

    protected void F(CoordinatorLayout coordinatorLayout, V v, int i) {
        coordinatorLayout.I(v, i);
    }

    public boolean G(int i) {
        d dVar = this.a;
        if (dVar != null) {
            return dVar.e(i);
        }
        this.f2014b = i;
        return false;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.c
    public boolean l(CoordinatorLayout coordinatorLayout, V v, int i) {
        F(coordinatorLayout, v, i);
        if (this.a == null) {
            this.a = new d(v);
        }
        this.a.c();
        this.a.a();
        int i2 = this.f2014b;
        if (i2 != 0) {
            this.a.e(i2);
            this.f2014b = 0;
        }
        int i3 = this.f2015c;
        if (i3 == 0) {
            return true;
        }
        this.a.d(i3);
        this.f2015c = 0;
        return true;
    }

    public c(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f2014b = 0;
        this.f2015c = 0;
    }
}
