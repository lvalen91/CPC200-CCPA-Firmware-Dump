package c.p;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.view.View;
import android.view.ViewGroup;
import c.p.a;
import c.p.m;

/* JADX INFO: loaded from: /Volumes/stuff/macbook/misc/CPC200-CCPA/rework/dumped_real_classes.dex */
public abstract class j0 extends m {
    private static final String[] L = {"android:visibility:visibility", "android:visibility:parent"};
    private int K = 3;

    class a extends n {
        final /* synthetic */ ViewGroup a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ View f1292b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ View f1293c;

        a(ViewGroup viewGroup, View view, View view2) {
            this.a = viewGroup;
            this.f1292b = view;
            this.f1293c = view2;
        }

        @Override // c.p.n, c.p.m.f
        public void a(m mVar) {
            x.a(this.a).c(this.f1292b);
        }

        @Override // c.p.n, c.p.m.f
        public void b(m mVar) {
            if (this.f1292b.getParent() == null) {
                x.a(this.a).a(this.f1292b);
            } else {
                j0.this.cancel();
            }
        }

        @Override // c.p.m.f
        public void e(m mVar) {
            this.f1293c.setTag(j.save_overlay_view, null);
            x.a(this.a).c(this.f1292b);
            mVar.O(this);
        }
    }

    private static class b extends AnimatorListenerAdapter implements m.f, a.InterfaceC0065a {
        private final View a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final int f1295b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final ViewGroup f1296c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final boolean f1297d;
        private boolean e;
        boolean f = false;

        b(View view, int i, boolean z) {
            this.a = view;
            this.f1295b = i;
            this.f1296c = (ViewGroup) view.getParent();
            this.f1297d = z;
            g(true);
        }

        private void f() {
            if (!this.f) {
                c0.h(this.a, this.f1295b);
                ViewGroup viewGroup = this.f1296c;
                if (viewGroup != null) {
                    viewGroup.invalidate();
                }
            }
            g(false);
        }

        private void g(boolean z) {
            ViewGroup viewGroup;
            if (!this.f1297d || this.e == z || (viewGroup = this.f1296c) == null) {
                return;
            }
            this.e = z;
            x.c(viewGroup, z);
        }

        @Override // c.p.m.f
        public void a(m mVar) {
            g(false);
        }

        @Override // c.p.m.f
        public void b(m mVar) {
            g(true);
        }

        @Override // c.p.m.f
        public void c(m mVar) {
        }

        @Override // c.p.m.f
        public void d(m mVar) {
        }

        @Override // c.p.m.f
        public void e(m mVar) {
            f();
            mVar.O(this);
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationCancel(Animator animator) {
            this.f = true;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            f();
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorPauseListener, c.p.a.InterfaceC0065a
        public void onAnimationPause(Animator animator) {
            if (this.f) {
                return;
            }
            c0.h(this.a, this.f1295b);
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationRepeat(Animator animator) {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorPauseListener, c.p.a.InterfaceC0065a
        public void onAnimationResume(Animator animator) {
            if (this.f) {
                return;
            }
            c0.h(this.a, 0);
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
        }
    }

    private static class c {
        boolean a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        boolean f1298b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        int f1299c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        int f1300d;
        ViewGroup e;
        ViewGroup f;

        c() {
        }
    }

    private void b0(s sVar) {
        sVar.a.put("android:visibility:visibility", Integer.valueOf(sVar.f1316b.getVisibility()));
        sVar.a.put("android:visibility:parent", sVar.f1316b.getParent());
        int[] iArr = new int[2];
        sVar.f1316b.getLocationOnScreen(iArr);
        sVar.a.put("android:visibility:screenLocation", iArr);
    }

    private c c0(s sVar, s sVar2) {
        c cVar = new c();
        cVar.a = false;
        cVar.f1298b = false;
        if (sVar == null || !sVar.a.containsKey("android:visibility:visibility")) {
            cVar.f1299c = -1;
            cVar.e = null;
        } else {
            cVar.f1299c = ((Integer) sVar.a.get("android:visibility:visibility")).intValue();
            cVar.e = (ViewGroup) sVar.a.get("android:visibility:parent");
        }
        if (sVar2 == null || !sVar2.a.containsKey("android:visibility:visibility")) {
            cVar.f1300d = -1;
            cVar.f = null;
        } else {
            cVar.f1300d = ((Integer) sVar2.a.get("android:visibility:visibility")).intValue();
            cVar.f = (ViewGroup) sVar2.a.get("android:visibility:parent");
        }
        if (sVar == null || sVar2 == null) {
            if (sVar == null && cVar.f1300d == 0) {
                cVar.f1298b = true;
                cVar.a = true;
            } else if (sVar2 == null && cVar.f1299c == 0) {
                cVar.f1298b = false;
                cVar.a = true;
            }
        } else {
            if (cVar.f1299c == cVar.f1300d && cVar.e == cVar.f) {
                return cVar;
            }
            int i = cVar.f1299c;
            int i2 = cVar.f1300d;
            if (i != i2) {
                if (i == 0) {
                    cVar.f1298b = false;
                    cVar.a = true;
                } else if (i2 == 0) {
                    cVar.f1298b = true;
                    cVar.a = true;
                }
            } else if (cVar.f == null) {
                cVar.f1298b = false;
                cVar.a = true;
            } else if (cVar.e == null) {
                cVar.f1298b = true;
                cVar.a = true;
            }
        }
        return cVar;
    }

    @Override // c.p.m
    public String[] C() {
        return L;
    }

    @Override // c.p.m
    public boolean E(s sVar, s sVar2) {
        if (sVar == null && sVar2 == null) {
            return false;
        }
        if (sVar != null && sVar2 != null && sVar2.a.containsKey("android:visibility:visibility") != sVar.a.containsKey("android:visibility:visibility")) {
            return false;
        }
        c cVarC0 = c0(sVar, sVar2);
        if (cVarC0.a) {
            return cVarC0.f1299c == 0 || cVarC0.f1300d == 0;
        }
        return false;
    }

    public abstract Animator d0(ViewGroup viewGroup, View view, s sVar, s sVar2);

    public Animator e0(ViewGroup viewGroup, s sVar, int i, s sVar2, int i2) {
        if ((this.K & 1) != 1 || sVar2 == null) {
            return null;
        }
        if (sVar == null) {
            View view = (View) sVar2.f1316b.getParent();
            if (c0(s(view, false), D(view, false)).a) {
                return null;
            }
        }
        return d0(viewGroup, sVar2.f1316b, sVar, sVar2);
    }

    @Override // c.p.m
    public void f(s sVar) {
        b0(sVar);
    }

    public abstract Animator f0(ViewGroup viewGroup, View view, s sVar, s sVar2);

    /* JADX WARN: Removed duplicated region for block: B:25:0x003b  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x0040  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x0085 A[PHI: r2
      0x0085: PHI (r2v3 android.view.View) = 
      (r2v2 android.view.View)
      (r2v2 android.view.View)
      (r2v2 android.view.View)
      (r2v2 android.view.View)
      (r2v2 android.view.View)
      (r2v2 android.view.View)
      (r2v6 android.view.View)
     binds: [B:26:0x003e, B:31:0x004d, B:36:0x0072, B:38:0x0075, B:40:0x007b, B:42:0x007f, B:34:0x0065] A[DONT_GENERATE, DONT_INLINE]] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public Animator g0(ViewGroup viewGroup, s sVar, int i, s sVar2, int i2) {
        View view;
        boolean z;
        boolean z2;
        View view2;
        if ((this.K & 2) != 2 || sVar == null) {
            return null;
        }
        View view3 = sVar.f1316b;
        View viewA = sVar2 != null ? sVar2.f1316b : null;
        View view4 = (View) view3.getTag(j.save_overlay_view);
        if (view4 != null) {
            view2 = null;
            z2 = true;
        } else if (viewA == null || viewA.getParent() == null) {
            if (viewA != null) {
                view = null;
                z = false;
            } else {
                viewA = null;
                view = null;
                z = true;
            }
            if (z) {
                if (view3.getParent() != null) {
                    if (view3.getParent() instanceof View) {
                        View view5 = (View) view3.getParent();
                        if (c0(D(view5, true), s(view5, true)).a) {
                            int id = view5.getId();
                            if (view5.getParent() != null || id == -1 || viewGroup.findViewById(id) == null || !this.w) {
                            }
                        } else {
                            viewA = r.a(viewGroup, view3, view5);
                        }
                    }
                    z2 = false;
                    View view6 = view;
                    view4 = viewA;
                    view2 = view6;
                }
                view2 = view;
                z2 = false;
                view4 = view3;
            } else {
                z2 = false;
                View view62 = view;
                view4 = viewA;
                view2 = view62;
            }
        } else {
            if (i2 == 4 || view3 == viewA) {
                view = viewA;
                z = false;
                viewA = null;
            }
            if (z) {
            }
        }
        if (view4 == null) {
            if (view2 == null) {
                return null;
            }
            int visibility = view2.getVisibility();
            c0.h(view2, 0);
            Animator animatorF0 = f0(viewGroup, view2, sVar, sVar2);
            if (animatorF0 != null) {
                b bVar = new b(view2, i2, true);
                animatorF0.addListener(bVar);
                c.p.a.a(animatorF0, bVar);
                a(bVar);
            } else {
                c0.h(view2, visibility);
            }
            return animatorF0;
        }
        if (!z2) {
            int[] iArr = (int[]) sVar.a.get("android:visibility:screenLocation");
            int i3 = iArr[0];
            int i4 = iArr[1];
            int[] iArr2 = new int[2];
            viewGroup.getLocationOnScreen(iArr2);
            view4.offsetLeftAndRight((i3 - iArr2[0]) - view4.getLeft());
            view4.offsetTopAndBottom((i4 - iArr2[1]) - view4.getTop());
            x.a(viewGroup).a(view4);
        }
        Animator animatorF02 = f0(viewGroup, view4, sVar, sVar2);
        if (!z2) {
            if (animatorF02 == null) {
                x.a(viewGroup).c(view4);
            } else {
                view3.setTag(j.save_overlay_view, view4);
                a(new a(viewGroup, view4, view3));
            }
        }
        return animatorF02;
    }

    public void h0(int i) {
        if ((i & (-4)) != 0) {
            throw new IllegalArgumentException("Only MODE_IN and MODE_OUT flags are allowed");
        }
        this.K = i;
    }

    @Override // c.p.m
    public void i(s sVar) {
        b0(sVar);
    }

    @Override // c.p.m
    public Animator m(ViewGroup viewGroup, s sVar, s sVar2) {
        c cVarC0 = c0(sVar, sVar2);
        if (!cVarC0.a) {
            return null;
        }
        if (cVarC0.e == null && cVarC0.f == null) {
            return null;
        }
        return cVarC0.f1298b ? e0(viewGroup, sVar, cVarC0.f1299c, sVar2, cVarC0.f1300d) : g0(viewGroup, sVar, cVarC0.f1299c, sVar2, cVarC0.f1300d);
    }
}
