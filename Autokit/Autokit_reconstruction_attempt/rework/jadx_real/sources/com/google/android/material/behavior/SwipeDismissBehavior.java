package com.google.android.material.behavior;

import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.view.e0.c;
import androidx.core.view.e0.f;
import androidx.core.view.v;
import c.i.b.c;
import com.yalantis.ucrop.view.CropImageView;

/* JADX INFO: loaded from: /Volumes/stuff/macbook/misc/CPC200-CCPA/rework/dumped_real_classes.dex */
public class SwipeDismissBehavior<V extends View> extends CoordinatorLayout.c<V> {
    c.i.b.c a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    c f2022b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f2023c;
    private boolean e;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private float f2024d = CropImageView.DEFAULT_ASPECT_RATIO;
    int f = 2;
    float g = 0.5f;
    float h = CropImageView.DEFAULT_ASPECT_RATIO;
    float i = 0.5f;
    private final c.AbstractC0060c j = new a();

    class a extends c.AbstractC0060c {
        private int a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private int f2025b = -1;

        a() {
        }

        private boolean n(View view, float f) {
            if (f == CropImageView.DEFAULT_ASPECT_RATIO) {
                return Math.abs(view.getLeft() - this.a) >= Math.round(((float) view.getWidth()) * SwipeDismissBehavior.this.g);
            }
            boolean z = v.C(view) == 1;
            int i = SwipeDismissBehavior.this.f;
            if (i == 2) {
                return true;
            }
            if (i == 0) {
                if (z) {
                    if (f >= CropImageView.DEFAULT_ASPECT_RATIO) {
                        return false;
                    }
                } else if (f <= CropImageView.DEFAULT_ASPECT_RATIO) {
                    return false;
                }
                return true;
            }
            if (i != 1) {
                return false;
            }
            if (z) {
                if (f <= CropImageView.DEFAULT_ASPECT_RATIO) {
                    return false;
                }
            } else if (f >= CropImageView.DEFAULT_ASPECT_RATIO) {
                return false;
            }
            return true;
        }

        @Override // c.i.b.c.AbstractC0060c
        public int a(View view, int i, int i2) {
            int width;
            int width2;
            int width3;
            boolean z = v.C(view) == 1;
            int i3 = SwipeDismissBehavior.this.f;
            if (i3 == 0) {
                if (z) {
                    width = this.a - view.getWidth();
                    width2 = this.a;
                } else {
                    width = this.a;
                    width3 = view.getWidth();
                    width2 = width3 + width;
                }
            } else if (i3 != 1) {
                width = this.a - view.getWidth();
                width2 = view.getWidth() + this.a;
            } else if (z) {
                width = this.a;
                width3 = view.getWidth();
                width2 = width3 + width;
            } else {
                width = this.a - view.getWidth();
                width2 = this.a;
            }
            return SwipeDismissBehavior.G(width, i, width2);
        }

        @Override // c.i.b.c.AbstractC0060c
        public int b(View view, int i, int i2) {
            return view.getTop();
        }

        @Override // c.i.b.c.AbstractC0060c
        public int d(View view) {
            return view.getWidth();
        }

        @Override // c.i.b.c.AbstractC0060c
        public void i(View view, int i) {
            this.f2025b = i;
            this.a = view.getLeft();
            ViewParent parent = view.getParent();
            if (parent != null) {
                parent.requestDisallowInterceptTouchEvent(true);
            }
        }

        @Override // c.i.b.c.AbstractC0060c
        public void j(int i) {
            c cVar = SwipeDismissBehavior.this.f2022b;
            if (cVar != null) {
                cVar.b(i);
            }
        }

        @Override // c.i.b.c.AbstractC0060c
        public void k(View view, int i, int i2, int i3, int i4) {
            float width = this.a + (view.getWidth() * SwipeDismissBehavior.this.h);
            float width2 = this.a + (view.getWidth() * SwipeDismissBehavior.this.i);
            float f = i;
            if (f <= width) {
                view.setAlpha(1.0f);
            } else if (f >= width2) {
                view.setAlpha(CropImageView.DEFAULT_ASPECT_RATIO);
            } else {
                view.setAlpha(SwipeDismissBehavior.F(CropImageView.DEFAULT_ASPECT_RATIO, 1.0f - SwipeDismissBehavior.I(width, width2, f), 1.0f));
            }
        }

        @Override // c.i.b.c.AbstractC0060c
        public void l(View view, float f, float f2) {
            int i;
            boolean z;
            c cVar;
            this.f2025b = -1;
            int width = view.getWidth();
            if (n(view, f)) {
                int left = view.getLeft();
                int i2 = this.a;
                i = left < i2 ? i2 - width : i2 + width;
                z = true;
            } else {
                i = this.a;
                z = false;
            }
            if (SwipeDismissBehavior.this.a.F(i, view.getTop())) {
                v.g0(view, new d(view, z));
            } else {
                if (!z || (cVar = SwipeDismissBehavior.this.f2022b) == null) {
                    return;
                }
                cVar.a(view);
            }
        }

        @Override // c.i.b.c.AbstractC0060c
        public boolean m(View view, int i) {
            int i2 = this.f2025b;
            return (i2 == -1 || i2 == i) && SwipeDismissBehavior.this.E(view);
        }
    }

    class b implements f {
        b() {
        }

        @Override // androidx.core.view.e0.f
        public boolean a(View view, f.a aVar) {
            boolean z = false;
            if (!SwipeDismissBehavior.this.E(view)) {
                return false;
            }
            boolean z2 = v.C(view) == 1;
            if ((SwipeDismissBehavior.this.f == 0 && z2) || (SwipeDismissBehavior.this.f == 1 && !z2)) {
                z = true;
            }
            int width = view.getWidth();
            if (z) {
                width = -width;
            }
            v.Y(view, width);
            view.setAlpha(CropImageView.DEFAULT_ASPECT_RATIO);
            c cVar = SwipeDismissBehavior.this.f2022b;
            if (cVar != null) {
                cVar.a(view);
            }
            return true;
        }
    }

    public interface c {
        void a(View view);

        void b(int i);
    }

    private class d implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final View f2027b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final boolean f2028c;

        d(View view, boolean z) {
            this.f2027b = view;
            this.f2028c = z;
        }

        @Override // java.lang.Runnable
        public void run() {
            c cVar;
            c.i.b.c cVar2 = SwipeDismissBehavior.this.a;
            if (cVar2 != null && cVar2.k(true)) {
                v.g0(this.f2027b, this);
            } else {
                if (!this.f2028c || (cVar = SwipeDismissBehavior.this.f2022b) == null) {
                    return;
                }
                cVar.a(this.f2027b);
            }
        }
    }

    static float F(float f, float f2, float f3) {
        return Math.min(Math.max(f, f2), f3);
    }

    static int G(int i, int i2, int i3) {
        return Math.min(Math.max(i, i2), i3);
    }

    private void H(ViewGroup viewGroup) {
        if (this.a == null) {
            this.a = this.e ? c.i.b.c.l(viewGroup, this.f2024d, this.j) : c.i.b.c.m(viewGroup, this.j);
        }
    }

    static float I(float f, float f2, float f3) {
        return (f3 - f) / (f2 - f);
    }

    private void M(View view) {
        v.i0(view, 1048576);
        if (E(view)) {
            v.k0(view, c.a.j, null, new b());
        }
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.c
    public boolean D(CoordinatorLayout coordinatorLayout, V v, MotionEvent motionEvent) {
        c.i.b.c cVar = this.a;
        if (cVar == null) {
            return false;
        }
        cVar.z(motionEvent);
        return true;
    }

    public boolean E(View view) {
        return true;
    }

    public void J(float f) {
        this.i = F(CropImageView.DEFAULT_ASPECT_RATIO, f, 1.0f);
    }

    public void K(float f) {
        this.h = F(CropImageView.DEFAULT_ASPECT_RATIO, f, 1.0f);
    }

    public void L(int i) {
        this.f = i;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.c
    public boolean k(CoordinatorLayout coordinatorLayout, V v, MotionEvent motionEvent) {
        boolean zB = this.f2023c;
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            zB = coordinatorLayout.B(v, (int) motionEvent.getX(), (int) motionEvent.getY());
            this.f2023c = zB;
        } else if (actionMasked == 1 || actionMasked == 3) {
            this.f2023c = false;
        }
        if (!zB) {
            return false;
        }
        H(coordinatorLayout);
        return this.a.G(motionEvent);
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.c
    public boolean l(CoordinatorLayout coordinatorLayout, V v, int i) {
        boolean zL = super.l(coordinatorLayout, v, i);
        if (v.A(v) == 0) {
            v.x0(v, 1);
            M(v);
        }
        return zL;
    }
}
