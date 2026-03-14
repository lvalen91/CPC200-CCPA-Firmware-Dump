package com.google.android.material.behavior;

import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.view.C0292v;
import androidx.core.view.p004e0.C0269c;
import androidx.core.view.p004e0.InterfaceC0272f;
import com.yalantis.ucrop.view.CropImageView;
import p016c.p052i.p054b.C0633c;

/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class SwipeDismissBehavior<V extends View> extends CoordinatorLayout.AbstractC0221c<V> {

    /* JADX INFO: renamed from: a */
    C0633c f6558a;

    /* JADX INFO: renamed from: b */
    InterfaceC1034c f6559b;

    /* JADX INFO: renamed from: c */
    private boolean f6560c;

    /* JADX INFO: renamed from: e */
    private boolean f6562e;

    /* JADX INFO: renamed from: d */
    private float f6561d = CropImageView.DEFAULT_ASPECT_RATIO;

    /* JADX INFO: renamed from: f */
    int f6563f = 2;

    /* JADX INFO: renamed from: g */
    float f6564g = 0.5f;

    /* JADX INFO: renamed from: h */
    float f6565h = CropImageView.DEFAULT_ASPECT_RATIO;

    /* JADX INFO: renamed from: i */
    float f6566i = 0.5f;

    /* JADX INFO: renamed from: j */
    private final C0633c.c f6567j = new C1032a();

    /* JADX INFO: renamed from: com.google.android.material.behavior.SwipeDismissBehavior$a */
    class C1032a extends C0633c.c {

        /* JADX INFO: renamed from: a */
        private int f6568a;

        /* JADX INFO: renamed from: b */
        private int f6569b = -1;

        C1032a() {
        }

        /* JADX INFO: renamed from: n */
        private boolean m7946n(View view, float f) {
            if (f == CropImageView.DEFAULT_ASPECT_RATIO) {
                return Math.abs(view.getLeft() - this.f6568a) >= Math.round(((float) view.getWidth()) * SwipeDismissBehavior.this.f6564g);
            }
            boolean z = C0292v.m2046C(view) == 1;
            int i = SwipeDismissBehavior.this.f6563f;
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

        @Override // p016c.p052i.p054b.C0633c.c
        /* JADX INFO: renamed from: a */
        public int mo4957a(View view, int i, int i2) {
            int width;
            int width2;
            int width3;
            boolean z = C0292v.m2046C(view) == 1;
            int i3 = SwipeDismissBehavior.this.f6563f;
            if (i3 == 0) {
                if (z) {
                    width = this.f6568a - view.getWidth();
                    width2 = this.f6568a;
                } else {
                    width = this.f6568a;
                    width3 = view.getWidth();
                    width2 = width3 + width;
                }
            } else if (i3 != 1) {
                width = this.f6568a - view.getWidth();
                width2 = view.getWidth() + this.f6568a;
            } else if (z) {
                width = this.f6568a;
                width3 = view.getWidth();
                width2 = width3 + width;
            } else {
                width = this.f6568a - view.getWidth();
                width2 = this.f6568a;
            }
            return SwipeDismissBehavior.m7938G(width, i, width2);
        }

        @Override // p016c.p052i.p054b.C0633c.c
        /* JADX INFO: renamed from: b */
        public int mo4958b(View view, int i, int i2) {
            return view.getTop();
        }

        @Override // p016c.p052i.p054b.C0633c.c
        /* JADX INFO: renamed from: d */
        public int mo4960d(View view) {
            return view.getWidth();
        }

        @Override // p016c.p052i.p054b.C0633c.c
        /* JADX INFO: renamed from: i */
        public void mo4965i(View view, int i) {
            this.f6569b = i;
            this.f6568a = view.getLeft();
            ViewParent parent = view.getParent();
            if (parent != null) {
                parent.requestDisallowInterceptTouchEvent(true);
            }
        }

        @Override // p016c.p052i.p054b.C0633c.c
        /* JADX INFO: renamed from: j */
        public void mo4966j(int i) {
            InterfaceC1034c interfaceC1034c = SwipeDismissBehavior.this.f6559b;
            if (interfaceC1034c != null) {
                interfaceC1034c.m7948b(i);
            }
        }

        @Override // p016c.p052i.p054b.C0633c.c
        /* JADX INFO: renamed from: k */
        public void mo4967k(View view, int i, int i2, int i3, int i4) {
            float width = this.f6568a + (view.getWidth() * SwipeDismissBehavior.this.f6565h);
            float width2 = this.f6568a + (view.getWidth() * SwipeDismissBehavior.this.f6566i);
            float f = i;
            if (f <= width) {
                view.setAlpha(1.0f);
            } else if (f >= width2) {
                view.setAlpha(CropImageView.DEFAULT_ASPECT_RATIO);
            } else {
                view.setAlpha(SwipeDismissBehavior.m7937F(CropImageView.DEFAULT_ASPECT_RATIO, 1.0f - SwipeDismissBehavior.m7940I(width, width2, f), 1.0f));
            }
        }

        @Override // p016c.p052i.p054b.C0633c.c
        /* JADX INFO: renamed from: l */
        public void mo4968l(View view, float f, float f2) {
            int i;
            boolean z;
            InterfaceC1034c interfaceC1034c;
            this.f6569b = -1;
            int width = view.getWidth();
            if (m7946n(view, f)) {
                int left = view.getLeft();
                int i2 = this.f6568a;
                i = left < i2 ? i2 - width : i2 + width;
                z = true;
            } else {
                i = this.f6568a;
                z = false;
            }
            if (SwipeDismissBehavior.this.f6558a.m4944F(i, view.getTop())) {
                C0292v.m2089g0(view, new RunnableC1035d(view, z));
            } else {
                if (!z || (interfaceC1034c = SwipeDismissBehavior.this.f6559b) == null) {
                    return;
                }
                interfaceC1034c.m7947a(view);
            }
        }

        @Override // p016c.p052i.p054b.C0633c.c
        /* JADX INFO: renamed from: m */
        public boolean mo4969m(View view, int i) {
            int i2 = this.f6569b;
            return (i2 == -1 || i2 == i) && SwipeDismissBehavior.this.mo7942E(view);
        }
    }

    /* JADX INFO: renamed from: com.google.android.material.behavior.SwipeDismissBehavior$b */
    class C1033b implements InterfaceC0272f {
        C1033b() {
        }

        @Override // androidx.core.view.p004e0.InterfaceC0272f
        /* JADX INFO: renamed from: a */
        public boolean mo1975a(View view, InterfaceC0272f.a aVar) {
            boolean z = false;
            if (!SwipeDismissBehavior.this.mo7942E(view)) {
                return false;
            }
            boolean z2 = C0292v.m2046C(view) == 1;
            if ((SwipeDismissBehavior.this.f6563f == 0 && z2) || (SwipeDismissBehavior.this.f6563f == 1 && !z2)) {
                z = true;
            }
            int width = view.getWidth();
            if (z) {
                width = -width;
            }
            C0292v.m2074Y(view, width);
            view.setAlpha(CropImageView.DEFAULT_ASPECT_RATIO);
            InterfaceC1034c interfaceC1034c = SwipeDismissBehavior.this.f6559b;
            if (interfaceC1034c != null) {
                interfaceC1034c.m7947a(view);
            }
            return true;
        }
    }

    /* JADX INFO: renamed from: com.google.android.material.behavior.SwipeDismissBehavior$c */
    public interface InterfaceC1034c {
        /* JADX INFO: renamed from: a */
        void m7947a(View view);

        /* JADX INFO: renamed from: b */
        void m7948b(int i);
    }

    /* JADX INFO: renamed from: com.google.android.material.behavior.SwipeDismissBehavior$d */
    private class RunnableC1035d implements Runnable {

        /* JADX INFO: renamed from: b */
        private final View f6572b;

        /* JADX INFO: renamed from: c */
        private final boolean f6573c;

        RunnableC1035d(View view, boolean z) {
            this.f6572b = view;
            this.f6573c = z;
        }

        @Override // java.lang.Runnable
        public void run() {
            InterfaceC1034c interfaceC1034c;
            C0633c c0633c = SwipeDismissBehavior.this.f6558a;
            if (c0633c != null && c0633c.m4950k(true)) {
                C0292v.m2089g0(this.f6572b, this);
            } else {
                if (!this.f6573c || (interfaceC1034c = SwipeDismissBehavior.this.f6559b) == null) {
                    return;
                }
                interfaceC1034c.m7947a(this.f6572b);
            }
        }
    }

    /* JADX INFO: renamed from: F */
    static float m7937F(float f, float f2, float f3) {
        return Math.min(Math.max(f, f2), f3);
    }

    /* JADX INFO: renamed from: G */
    static int m7938G(int i, int i2, int i3) {
        return Math.min(Math.max(i, i2), i3);
    }

    /* JADX INFO: renamed from: H */
    private void m7939H(ViewGroup viewGroup) {
        if (this.f6558a == null) {
            this.f6558a = this.f6562e ? C0633c.m4934l(viewGroup, this.f6561d, this.f6567j) : C0633c.m4935m(viewGroup, this.f6567j);
        }
    }

    /* JADX INFO: renamed from: I */
    static float m7940I(float f, float f2, float f3) {
        return (f3 - f) / (f2 - f);
    }

    /* JADX INFO: renamed from: M */
    private void m7941M(View view) {
        C0292v.m2093i0(view, 1048576);
        if (mo7942E(view)) {
            C0292v.m2097k0(view, C0269c.a.f1864j, null, new C1033b());
        }
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.AbstractC0221c
    /* JADX INFO: renamed from: D */
    public boolean mo1572D(CoordinatorLayout coordinatorLayout, V v, MotionEvent motionEvent) {
        C0633c c0633c = this.f6558a;
        if (c0633c == null) {
            return false;
        }
        c0633c.m4956z(motionEvent);
        return true;
    }

    /* JADX INFO: renamed from: E */
    public boolean mo7942E(View view) {
        return true;
    }

    /* JADX INFO: renamed from: J */
    public void m7943J(float f) {
        this.f6566i = m7937F(CropImageView.DEFAULT_ASPECT_RATIO, f, 1.0f);
    }

    /* JADX INFO: renamed from: K */
    public void m7944K(float f) {
        this.f6565h = m7937F(CropImageView.DEFAULT_ASPECT_RATIO, f, 1.0f);
    }

    /* JADX INFO: renamed from: L */
    public void m7945L(int i) {
        this.f6563f = i;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.AbstractC0221c
    /* JADX INFO: renamed from: k */
    public boolean mo1583k(CoordinatorLayout coordinatorLayout, V v, MotionEvent motionEvent) {
        boolean zM1548B = this.f6560c;
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            zM1548B = coordinatorLayout.m1548B(v, (int) motionEvent.getX(), (int) motionEvent.getY());
            this.f6560c = zM1548B;
        } else if (actionMasked == 1 || actionMasked == 3) {
            this.f6560c = false;
        }
        if (!zM1548B) {
            return false;
        }
        m7939H(coordinatorLayout);
        return this.f6558a.m4945G(motionEvent);
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.AbstractC0221c
    /* JADX INFO: renamed from: l */
    public boolean mo1584l(CoordinatorLayout coordinatorLayout, V v, int i) {
        boolean zMo1584l = super.mo1584l(coordinatorLayout, v, i);
        if (C0292v.m2042A(v) == 0) {
            C0292v.m2123x0(v, 1);
            m7941M(v);
        }
        return zMo1584l;
    }
}
