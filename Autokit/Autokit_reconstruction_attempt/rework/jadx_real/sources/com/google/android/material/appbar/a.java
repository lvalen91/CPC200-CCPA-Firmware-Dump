package com.google.android.material.appbar;

import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.widget.OverScroller;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.view.v;

/* JADX INFO: loaded from: /Volumes/stuff/macbook/misc/CPC200-CCPA/rework/dumped_real_classes.dex */
abstract class a<V extends View> extends c<V> {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Runnable f2009d;
    OverScroller e;
    private boolean f;
    private int g;
    private int h;
    private int i;
    private VelocityTracker j;

    /* JADX INFO: renamed from: com.google.android.material.appbar.a$a, reason: collision with other inner class name */
    private class RunnableC0107a implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final CoordinatorLayout f2010b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final V f2011c;

        RunnableC0107a(CoordinatorLayout coordinatorLayout, V v) {
            this.f2010b = coordinatorLayout;
            this.f2011c = v;
        }

        @Override // java.lang.Runnable
        public void run() {
            OverScroller overScroller;
            if (this.f2011c == null || (overScroller = a.this.e) == null) {
                return;
            }
            if (!overScroller.computeScrollOffset()) {
                a.this.N(this.f2010b, this.f2011c);
                return;
            }
            a aVar = a.this;
            aVar.P(this.f2010b, this.f2011c, aVar.e.getCurrY());
            v.g0(this.f2011c, this);
        }
    }

    public a() {
        this.g = -1;
        this.i = -1;
    }

    private void I() {
        if (this.j == null) {
            this.j = VelocityTracker.obtain();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:27:0x007b  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x0085  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x008c A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:37:? A[ADDED_TO_REGION, RETURN, SYNTHETIC] */
    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.c
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public boolean D(CoordinatorLayout coordinatorLayout, V v, MotionEvent motionEvent) {
        boolean z;
        VelocityTracker velocityTracker;
        VelocityTracker velocityTracker2;
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 1) {
            VelocityTracker velocityTracker3 = this.j;
            if (velocityTracker3 != null) {
                velocityTracker3.addMovement(motionEvent);
                this.j.computeCurrentVelocity(1000);
                J(coordinatorLayout, v, -L(v), 0, this.j.getYVelocity(this.g));
                z = true;
            }
            this.f = false;
            this.g = -1;
            velocityTracker = this.j;
            if (velocityTracker != null) {
                velocityTracker.recycle();
                this.j = null;
            }
            velocityTracker2 = this.j;
            if (velocityTracker2 != null) {
            }
            if (this.f) {
                return true;
            }
        }
        if (actionMasked == 2) {
            int iFindPointerIndex = motionEvent.findPointerIndex(this.g);
            if (iFindPointerIndex == -1) {
                return false;
            }
            int y = (int) motionEvent.getY(iFindPointerIndex);
            int i = this.h - y;
            this.h = y;
            O(coordinatorLayout, v, i, K(v), 0);
        } else if (actionMasked != 3) {
            if (actionMasked == 6) {
                int i2 = motionEvent.getActionIndex() == 0 ? 1 : 0;
                this.g = motionEvent.getPointerId(i2);
                this.h = (int) (motionEvent.getY(i2) + 0.5f);
            }
        }
        z = false;
        velocityTracker2 = this.j;
        if (velocityTracker2 != null) {
            velocityTracker2.addMovement(motionEvent);
        }
        return !this.f || z;
        z = false;
        this.f = false;
        this.g = -1;
        velocityTracker = this.j;
        if (velocityTracker != null) {
        }
        velocityTracker2 = this.j;
        if (velocityTracker2 != null) {
        }
        if (this.f) {
        }
    }

    abstract boolean H(V v);

    final boolean J(CoordinatorLayout coordinatorLayout, V v, int i, int i2, float f) {
        Runnable runnable = this.f2009d;
        if (runnable != null) {
            v.removeCallbacks(runnable);
            this.f2009d = null;
        }
        if (this.e == null) {
            this.e = new OverScroller(v.getContext());
        }
        this.e.fling(0, E(), 0, Math.round(f), 0, 0, i, i2);
        if (!this.e.computeScrollOffset()) {
            N(coordinatorLayout, v);
            return false;
        }
        RunnableC0107a runnableC0107a = new RunnableC0107a(coordinatorLayout, v);
        this.f2009d = runnableC0107a;
        v.g0(v, runnableC0107a);
        return true;
    }

    abstract int K(V v);

    abstract int L(V v);

    abstract int M();

    abstract void N(CoordinatorLayout coordinatorLayout, V v);

    final int O(CoordinatorLayout coordinatorLayout, V v, int i, int i2, int i3) {
        return Q(coordinatorLayout, v, M() - i, i2, i3);
    }

    int P(CoordinatorLayout coordinatorLayout, V v, int i) {
        return Q(coordinatorLayout, v, i, Integer.MIN_VALUE, Integer.MAX_VALUE);
    }

    abstract int Q(CoordinatorLayout coordinatorLayout, V v, int i, int i2, int i3);

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.c
    public boolean k(CoordinatorLayout coordinatorLayout, V v, MotionEvent motionEvent) {
        int iFindPointerIndex;
        if (this.i < 0) {
            this.i = ViewConfiguration.get(coordinatorLayout.getContext()).getScaledTouchSlop();
        }
        if (motionEvent.getActionMasked() == 2 && this.f) {
            int i = this.g;
            if (i == -1 || (iFindPointerIndex = motionEvent.findPointerIndex(i)) == -1) {
                return false;
            }
            int y = (int) motionEvent.getY(iFindPointerIndex);
            if (Math.abs(y - this.h) > this.i) {
                this.h = y;
                return true;
            }
        }
        if (motionEvent.getActionMasked() == 0) {
            this.g = -1;
            int x = (int) motionEvent.getX();
            int y2 = (int) motionEvent.getY();
            boolean z = H(v) && coordinatorLayout.B(v, x, y2);
            this.f = z;
            if (z) {
                this.h = y2;
                this.g = motionEvent.getPointerId(0);
                I();
                OverScroller overScroller = this.e;
                if (overScroller != null && !overScroller.isFinished()) {
                    this.e.abortAnimation();
                    return true;
                }
            }
        }
        VelocityTracker velocityTracker = this.j;
        if (velocityTracker != null) {
            velocityTracker.addMovement(motionEvent);
        }
        return false;
    }

    public a(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.g = -1;
        this.i = -1;
    }
}
