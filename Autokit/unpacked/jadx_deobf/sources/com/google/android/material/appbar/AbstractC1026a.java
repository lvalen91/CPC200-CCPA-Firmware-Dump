package com.google.android.material.appbar;

import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.widget.OverScroller;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.view.C0292v;

/* JADX INFO: renamed from: com.google.android.material.appbar.a */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
abstract class AbstractC1026a<V extends View> extends C1028c<V> {

    /* JADX INFO: renamed from: d */
    private Runnable f6529d;

    /* JADX INFO: renamed from: e */
    OverScroller f6530e;

    /* JADX INFO: renamed from: f */
    private boolean f6531f;

    /* JADX INFO: renamed from: g */
    private int f6532g;

    /* JADX INFO: renamed from: h */
    private int f6533h;

    /* JADX INFO: renamed from: i */
    private int f6534i;

    /* JADX INFO: renamed from: j */
    private VelocityTracker f6535j;

    /* JADX INFO: renamed from: com.google.android.material.appbar.a$a */
    private class a implements Runnable {

        /* JADX INFO: renamed from: b */
        private final CoordinatorLayout f6536b;

        /* JADX INFO: renamed from: c */
        private final V f6537c;

        a(CoordinatorLayout coordinatorLayout, V v) {
            this.f6536b = coordinatorLayout;
            this.f6537c = v;
        }

        @Override // java.lang.Runnable
        public void run() {
            OverScroller overScroller;
            if (this.f6537c == null || (overScroller = AbstractC1026a.this.f6530e) == null) {
                return;
            }
            if (!overScroller.computeScrollOffset()) {
                AbstractC1026a.this.mo7878N(this.f6536b, this.f6537c);
                return;
            }
            AbstractC1026a abstractC1026a = AbstractC1026a.this;
            abstractC1026a.m7916P(this.f6536b, this.f6537c, abstractC1026a.f6530e.getCurrY());
            C0292v.m2089g0(this.f6537c, this);
        }
    }

    public AbstractC1026a() {
        this.f6532g = -1;
        this.f6534i = -1;
    }

    /* JADX INFO: renamed from: I */
    private void m7913I() {
        if (this.f6535j == null) {
            this.f6535j = VelocityTracker.obtain();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:27:0x007b  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x0085  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x008c A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:37:? A[ADDED_TO_REGION, RETURN, SYNTHETIC] */
    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.AbstractC0221c
    /* JADX INFO: renamed from: D */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public boolean mo1572D(CoordinatorLayout coordinatorLayout, V v, MotionEvent motionEvent) {
        boolean z;
        VelocityTracker velocityTracker;
        VelocityTracker velocityTracker2;
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 1) {
            VelocityTracker velocityTracker3 = this.f6535j;
            if (velocityTracker3 != null) {
                velocityTracker3.addMovement(motionEvent);
                this.f6535j.computeCurrentVelocity(1000);
                m7914J(coordinatorLayout, v, -mo7876L(v), 0, this.f6535j.getYVelocity(this.f6532g));
                z = true;
            }
            this.f6531f = false;
            this.f6532g = -1;
            velocityTracker = this.f6535j;
            if (velocityTracker != null) {
                velocityTracker.recycle();
                this.f6535j = null;
            }
            velocityTracker2 = this.f6535j;
            if (velocityTracker2 != null) {
            }
            if (this.f6531f) {
                return true;
            }
        }
        if (actionMasked == 2) {
            int iFindPointerIndex = motionEvent.findPointerIndex(this.f6532g);
            if (iFindPointerIndex == -1) {
                return false;
            }
            int y = (int) motionEvent.getY(iFindPointerIndex);
            int i = this.f6533h - y;
            this.f6533h = y;
            m7915O(coordinatorLayout, v, i, mo7875K(v), 0);
        } else if (actionMasked != 3) {
            if (actionMasked == 6) {
                int i2 = motionEvent.getActionIndex() == 0 ? 1 : 0;
                this.f6532g = motionEvent.getPointerId(i2);
                this.f6533h = (int) (motionEvent.getY(i2) + 0.5f);
            }
        }
        z = false;
        velocityTracker2 = this.f6535j;
        if (velocityTracker2 != null) {
            velocityTracker2.addMovement(motionEvent);
        }
        return !this.f6531f || z;
        z = false;
        this.f6531f = false;
        this.f6532g = -1;
        velocityTracker = this.f6535j;
        if (velocityTracker != null) {
        }
        velocityTracker2 = this.f6535j;
        if (velocityTracker2 != null) {
        }
        if (this.f6531f) {
        }
    }

    /* JADX INFO: renamed from: H */
    abstract boolean mo7874H(V v);

    /* JADX INFO: renamed from: J */
    final boolean m7914J(CoordinatorLayout coordinatorLayout, V v, int i, int i2, float f) {
        Runnable runnable = this.f6529d;
        if (runnable != null) {
            v.removeCallbacks(runnable);
            this.f6529d = null;
        }
        if (this.f6530e == null) {
            this.f6530e = new OverScroller(v.getContext());
        }
        this.f6530e.fling(0, m7924E(), 0, Math.round(f), 0, 0, i, i2);
        if (!this.f6530e.computeScrollOffset()) {
            mo7878N(coordinatorLayout, v);
            return false;
        }
        a aVar = new a(coordinatorLayout, v);
        this.f6529d = aVar;
        C0292v.m2089g0(v, aVar);
        return true;
    }

    /* JADX INFO: renamed from: K */
    abstract int mo7875K(V v);

    /* JADX INFO: renamed from: L */
    abstract int mo7876L(V v);

    /* JADX INFO: renamed from: M */
    abstract int mo7877M();

    /* JADX INFO: renamed from: N */
    abstract void mo7878N(CoordinatorLayout coordinatorLayout, V v);

    /* JADX INFO: renamed from: O */
    final int m7915O(CoordinatorLayout coordinatorLayout, V v, int i, int i2, int i3) {
        return mo7879Q(coordinatorLayout, v, mo7877M() - i, i2, i3);
    }

    /* JADX INFO: renamed from: P */
    int m7916P(CoordinatorLayout coordinatorLayout, V v, int i) {
        return mo7879Q(coordinatorLayout, v, i, Integer.MIN_VALUE, Integer.MAX_VALUE);
    }

    /* JADX INFO: renamed from: Q */
    abstract int mo7879Q(CoordinatorLayout coordinatorLayout, V v, int i, int i2, int i3);

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.AbstractC0221c
    /* JADX INFO: renamed from: k */
    public boolean mo1583k(CoordinatorLayout coordinatorLayout, V v, MotionEvent motionEvent) {
        int iFindPointerIndex;
        if (this.f6534i < 0) {
            this.f6534i = ViewConfiguration.get(coordinatorLayout.getContext()).getScaledTouchSlop();
        }
        if (motionEvent.getActionMasked() == 2 && this.f6531f) {
            int i = this.f6532g;
            if (i == -1 || (iFindPointerIndex = motionEvent.findPointerIndex(i)) == -1) {
                return false;
            }
            int y = (int) motionEvent.getY(iFindPointerIndex);
            if (Math.abs(y - this.f6533h) > this.f6534i) {
                this.f6533h = y;
                return true;
            }
        }
        if (motionEvent.getActionMasked() == 0) {
            this.f6532g = -1;
            int x = (int) motionEvent.getX();
            int y2 = (int) motionEvent.getY();
            boolean z = mo7874H(v) && coordinatorLayout.m1548B(v, x, y2);
            this.f6531f = z;
            if (z) {
                this.f6533h = y2;
                this.f6532g = motionEvent.getPointerId(0);
                m7913I();
                OverScroller overScroller = this.f6530e;
                if (overScroller != null && !overScroller.isFinished()) {
                    this.f6530e.abortAnimation();
                    return true;
                }
            }
        }
        VelocityTracker velocityTracker = this.f6535j;
        if (velocityTracker != null) {
            velocityTracker.addMovement(motionEvent);
        }
        return false;
    }

    public AbstractC1026a(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f6532g = -1;
        this.f6534i = -1;
    }
}
