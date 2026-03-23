package com.google.android.material.transformation;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewTreeObserver;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.view.C0292v;
import java.util.List;
import p093d.p099c.p100a.p101a.p114u.InterfaceC1251a;

/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
@Deprecated
public abstract class ExpandableBehavior extends CoordinatorLayout.AbstractC0221c<View> {

    /* JADX INFO: renamed from: a */
    private int f7481a;

    /* JADX INFO: renamed from: com.google.android.material.transformation.ExpandableBehavior$a */
    class ViewTreeObserverOnPreDrawListenerC1165a implements ViewTreeObserver.OnPreDrawListener {

        /* JADX INFO: renamed from: b */
        final /* synthetic */ View f7482b;

        /* JADX INFO: renamed from: c */
        final /* synthetic */ int f7483c;

        /* JADX INFO: renamed from: d */
        final /* synthetic */ InterfaceC1251a f7484d;

        ViewTreeObserverOnPreDrawListenerC1165a(View view, int i, InterfaceC1251a interfaceC1251a) {
            this.f7482b = view;
            this.f7483c = i;
            this.f7484d = interfaceC1251a;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // android.view.ViewTreeObserver.OnPreDrawListener
        public boolean onPreDraw() {
            this.f7482b.getViewTreeObserver().removeOnPreDrawListener(this);
            if (ExpandableBehavior.this.f7481a == this.f7483c) {
                ExpandableBehavior expandableBehavior = ExpandableBehavior.this;
                InterfaceC1251a interfaceC1251a = this.f7484d;
                expandableBehavior.mo9003H((View) interfaceC1251a, this.f7482b, interfaceC1251a.mo8520a(), false);
            }
            return false;
        }
    }

    public ExpandableBehavior() {
        this.f7481a = 0;
    }

    /* JADX INFO: renamed from: F */
    private boolean m9001F(boolean z) {
        if (!z) {
            return this.f7481a == 1;
        }
        int i = this.f7481a;
        return i == 0 || i == 2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX INFO: renamed from: G */
    protected InterfaceC1251a m9002G(CoordinatorLayout coordinatorLayout, View view) {
        List<View> listM1563r = coordinatorLayout.m1563r(view);
        int size = listM1563r.size();
        for (int i = 0; i < size; i++) {
            View view2 = listM1563r.get(i);
            if (mo1577e(coordinatorLayout, view, view2)) {
                return (InterfaceC1251a) view2;
            }
        }
        return null;
    }

    /* JADX INFO: renamed from: H */
    protected abstract boolean mo9003H(View view, View view2, boolean z, boolean z2);

    /* JADX WARN: Multi-variable type inference failed */
    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.AbstractC0221c
    /* JADX INFO: renamed from: h */
    public boolean mo1580h(CoordinatorLayout coordinatorLayout, View view, View view2) {
        InterfaceC1251a interfaceC1251a = (InterfaceC1251a) view2;
        if (!m9001F(interfaceC1251a.mo8520a())) {
            return false;
        }
        this.f7481a = interfaceC1251a.mo8520a() ? 1 : 2;
        return mo9003H((View) interfaceC1251a, view, interfaceC1251a.mo8520a(), true);
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.AbstractC0221c
    /* JADX INFO: renamed from: l */
    public boolean mo1584l(CoordinatorLayout coordinatorLayout, View view, int i) {
        InterfaceC1251a interfaceC1251aM9002G;
        if (C0292v.m2069T(view) || (interfaceC1251aM9002G = m9002G(coordinatorLayout, view)) == null || !m9001F(interfaceC1251aM9002G.mo8520a())) {
            return false;
        }
        int i2 = interfaceC1251aM9002G.mo8520a() ? 1 : 2;
        this.f7481a = i2;
        view.getViewTreeObserver().addOnPreDrawListener(new ViewTreeObserverOnPreDrawListenerC1165a(view, i2, interfaceC1251aM9002G));
        return false;
    }

    public ExpandableBehavior(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f7481a = 0;
    }
}
