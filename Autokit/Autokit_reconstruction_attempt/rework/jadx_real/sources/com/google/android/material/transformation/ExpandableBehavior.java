package com.google.android.material.transformation;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewTreeObserver;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.view.v;
import java.util.List;

/* JADX INFO: loaded from: /Volumes/stuff/macbook/misc/CPC200-CCPA/rework/dumped_real_classes.dex */
@Deprecated
public abstract class ExpandableBehavior extends CoordinatorLayout.c<View> {
    private int a;

    class a implements ViewTreeObserver.OnPreDrawListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ View f2239b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ int f2240c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ d.c.a.a.u.a f2241d;

        a(View view, int i, d.c.a.a.u.a aVar) {
            this.f2239b = view;
            this.f2240c = i;
            this.f2241d = aVar;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // android.view.ViewTreeObserver.OnPreDrawListener
        public boolean onPreDraw() {
            this.f2239b.getViewTreeObserver().removeOnPreDrawListener(this);
            if (ExpandableBehavior.this.a == this.f2240c) {
                ExpandableBehavior expandableBehavior = ExpandableBehavior.this;
                d.c.a.a.u.a aVar = this.f2241d;
                expandableBehavior.H((View) aVar, this.f2239b, aVar.a(), false);
            }
            return false;
        }
    }

    public ExpandableBehavior() {
        this.a = 0;
    }

    private boolean F(boolean z) {
        if (!z) {
            return this.a == 1;
        }
        int i = this.a;
        return i == 0 || i == 2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    protected d.c.a.a.u.a G(CoordinatorLayout coordinatorLayout, View view) {
        List<View> listR = coordinatorLayout.r(view);
        int size = listR.size();
        for (int i = 0; i < size; i++) {
            View view2 = listR.get(i);
            if (e(coordinatorLayout, view, view2)) {
                return (d.c.a.a.u.a) view2;
            }
        }
        return null;
    }

    protected abstract boolean H(View view, View view2, boolean z, boolean z2);

    /* JADX WARN: Multi-variable type inference failed */
    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.c
    public boolean h(CoordinatorLayout coordinatorLayout, View view, View view2) {
        d.c.a.a.u.a aVar = (d.c.a.a.u.a) view2;
        if (!F(aVar.a())) {
            return false;
        }
        this.a = aVar.a() ? 1 : 2;
        return H((View) aVar, view, aVar.a(), true);
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.c
    public boolean l(CoordinatorLayout coordinatorLayout, View view, int i) {
        d.c.a.a.u.a aVarG;
        if (v.T(view) || (aVarG = G(coordinatorLayout, view)) == null || !F(aVarG.a())) {
            return false;
        }
        int i2 = aVarG.a() ? 1 : 2;
        this.a = i2;
        view.getViewTreeObserver().addOnPreDrawListener(new a(view, i2, aVarG));
        return false;
    }

    public ExpandableBehavior(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.a = 0;
    }
}
