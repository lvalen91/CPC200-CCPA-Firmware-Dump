package p016c.p065p;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.view.View;
import android.view.ViewGroup;
import p016c.p065p.AbstractC0676m;
import p016c.p065p.C0652a;

/* JADX INFO: renamed from: c.p.j0 */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public abstract class AbstractC0671j0 extends AbstractC0676m {

    /* JADX INFO: renamed from: L */
    private static final String[] f3972L = {"android:visibility:visibility", "android:visibility:parent"};

    /* JADX INFO: renamed from: K */
    private int f3973K = 3;

    /* JADX INFO: renamed from: c.p.j0$a */
    class a extends C0678n {

        /* JADX INFO: renamed from: a */
        final /* synthetic */ ViewGroup f3974a;

        /* JADX INFO: renamed from: b */
        final /* synthetic */ View f3975b;

        /* JADX INFO: renamed from: c */
        final /* synthetic */ View f3976c;

        a(ViewGroup viewGroup, View view, View view2) {
            this.f3974a = viewGroup;
            this.f3975b = view;
            this.f3976c = view2;
        }

        @Override // p016c.p065p.C0678n, p016c.p065p.AbstractC0676m.f
        /* JADX INFO: renamed from: a */
        public void mo5051a(AbstractC0676m abstractC0676m) {
            C0688x.m5179a(this.f3974a).mo5178c(this.f3975b);
        }

        @Override // p016c.p065p.C0678n, p016c.p065p.AbstractC0676m.f
        /* JADX INFO: renamed from: b */
        public void mo5052b(AbstractC0676m abstractC0676m) {
            if (this.f3975b.getParent() == null) {
                C0688x.m5179a(this.f3974a).mo5177a(this.f3975b);
            } else {
                AbstractC0671j0.this.cancel();
            }
        }

        @Override // p016c.p065p.AbstractC0676m.f
        /* JADX INFO: renamed from: e */
        public void mo5054e(AbstractC0676m abstractC0676m) {
            this.f3976c.setTag(C0670j.save_overlay_view, null);
            C0688x.m5179a(this.f3974a).mo5178c(this.f3975b);
            abstractC0676m.mo5121O(this);
        }
    }

    /* JADX INFO: renamed from: c.p.j0$b */
    private static class b extends AnimatorListenerAdapter implements AbstractC0676m.f, C0652a.a {

        /* JADX INFO: renamed from: a */
        private final View f3978a;

        /* JADX INFO: renamed from: b */
        private final int f3979b;

        /* JADX INFO: renamed from: c */
        private final ViewGroup f3980c;

        /* JADX INFO: renamed from: d */
        private final boolean f3981d;

        /* JADX INFO: renamed from: e */
        private boolean f3982e;

        /* JADX INFO: renamed from: f */
        boolean f3983f = false;

        b(View view, int i, boolean z) {
            this.f3978a = view;
            this.f3979b = i;
            this.f3980c = (ViewGroup) view.getParent();
            this.f3981d = z;
            m5099g(true);
        }

        /* JADX INFO: renamed from: f */
        private void m5098f() {
            if (!this.f3983f) {
                C0657c0.m5065h(this.f3978a, this.f3979b);
                ViewGroup viewGroup = this.f3980c;
                if (viewGroup != null) {
                    viewGroup.invalidate();
                }
            }
            m5099g(false);
        }

        /* JADX INFO: renamed from: g */
        private void m5099g(boolean z) {
            ViewGroup viewGroup;
            if (!this.f3981d || this.f3982e == z || (viewGroup = this.f3980c) == null) {
                return;
            }
            this.f3982e = z;
            C0688x.m5181c(viewGroup, z);
        }

        @Override // p016c.p065p.AbstractC0676m.f
        /* JADX INFO: renamed from: a */
        public void mo5051a(AbstractC0676m abstractC0676m) {
            m5099g(false);
        }

        @Override // p016c.p065p.AbstractC0676m.f
        /* JADX INFO: renamed from: b */
        public void mo5052b(AbstractC0676m abstractC0676m) {
            m5099g(true);
        }

        @Override // p016c.p065p.AbstractC0676m.f
        /* JADX INFO: renamed from: c */
        public void mo5081c(AbstractC0676m abstractC0676m) {
        }

        @Override // p016c.p065p.AbstractC0676m.f
        /* JADX INFO: renamed from: d */
        public void mo5053d(AbstractC0676m abstractC0676m) {
        }

        @Override // p016c.p065p.AbstractC0676m.f
        /* JADX INFO: renamed from: e */
        public void mo5054e(AbstractC0676m abstractC0676m) {
            m5098f();
            abstractC0676m.mo5121O(this);
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationCancel(Animator animator) {
            this.f3983f = true;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            m5098f();
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorPauseListener, p016c.p065p.C0652a.a
        public void onAnimationPause(Animator animator) {
            if (this.f3983f) {
                return;
            }
            C0657c0.m5065h(this.f3978a, this.f3979b);
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationRepeat(Animator animator) {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorPauseListener, p016c.p065p.C0652a.a
        public void onAnimationResume(Animator animator) {
            if (this.f3983f) {
                return;
            }
            C0657c0.m5065h(this.f3978a, 0);
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
        }
    }

    /* JADX INFO: renamed from: c.p.j0$c */
    private static class c {

        /* JADX INFO: renamed from: a */
        boolean f3984a;

        /* JADX INFO: renamed from: b */
        boolean f3985b;

        /* JADX INFO: renamed from: c */
        int f3986c;

        /* JADX INFO: renamed from: d */
        int f3987d;

        /* JADX INFO: renamed from: e */
        ViewGroup f3988e;

        /* JADX INFO: renamed from: f */
        ViewGroup f3989f;

        c() {
        }
    }

    /* JADX INFO: renamed from: b0 */
    private void m5092b0(C0683s c0683s) {
        c0683s.f4055a.put("android:visibility:visibility", Integer.valueOf(c0683s.f4056b.getVisibility()));
        c0683s.f4055a.put("android:visibility:parent", c0683s.f4056b.getParent());
        int[] iArr = new int[2];
        c0683s.f4056b.getLocationOnScreen(iArr);
        c0683s.f4055a.put("android:visibility:screenLocation", iArr);
    }

    /* JADX INFO: renamed from: c0 */
    private c m5093c0(C0683s c0683s, C0683s c0683s2) {
        c cVar = new c();
        cVar.f3984a = false;
        cVar.f3985b = false;
        if (c0683s == null || !c0683s.f4055a.containsKey("android:visibility:visibility")) {
            cVar.f3986c = -1;
            cVar.f3988e = null;
        } else {
            cVar.f3986c = ((Integer) c0683s.f4055a.get("android:visibility:visibility")).intValue();
            cVar.f3988e = (ViewGroup) c0683s.f4055a.get("android:visibility:parent");
        }
        if (c0683s2 == null || !c0683s2.f4055a.containsKey("android:visibility:visibility")) {
            cVar.f3987d = -1;
            cVar.f3989f = null;
        } else {
            cVar.f3987d = ((Integer) c0683s2.f4055a.get("android:visibility:visibility")).intValue();
            cVar.f3989f = (ViewGroup) c0683s2.f4055a.get("android:visibility:parent");
        }
        if (c0683s == null || c0683s2 == null) {
            if (c0683s == null && cVar.f3987d == 0) {
                cVar.f3985b = true;
                cVar.f3984a = true;
            } else if (c0683s2 == null && cVar.f3986c == 0) {
                cVar.f3985b = false;
                cVar.f3984a = true;
            }
        } else {
            if (cVar.f3986c == cVar.f3987d && cVar.f3988e == cVar.f3989f) {
                return cVar;
            }
            int i = cVar.f3986c;
            int i2 = cVar.f3987d;
            if (i != i2) {
                if (i == 0) {
                    cVar.f3985b = false;
                    cVar.f3984a = true;
                } else if (i2 == 0) {
                    cVar.f3985b = true;
                    cVar.f3984a = true;
                }
            } else if (cVar.f3989f == null) {
                cVar.f3985b = false;
                cVar.f3984a = true;
            } else if (cVar.f3988e == null) {
                cVar.f3985b = true;
                cVar.f3984a = true;
            }
        }
        return cVar;
    }

    @Override // p016c.p065p.AbstractC0676m
    /* JADX INFO: renamed from: C */
    public String[] mo5035C() {
        return f3972L;
    }

    @Override // p016c.p065p.AbstractC0676m
    /* JADX INFO: renamed from: E */
    public boolean mo5094E(C0683s c0683s, C0683s c0683s2) {
        if (c0683s == null && c0683s2 == null) {
            return false;
        }
        if (c0683s != null && c0683s2 != null && c0683s2.f4055a.containsKey("android:visibility:visibility") != c0683s.f4055a.containsKey("android:visibility:visibility")) {
            return false;
        }
        c cVarM5093c0 = m5093c0(c0683s, c0683s2);
        if (cVarM5093c0.f3984a) {
            return cVarM5093c0.f3986c == 0 || cVarM5093c0.f3987d == 0;
        }
        return false;
    }

    /* JADX INFO: renamed from: d0 */
    public abstract Animator mo5074d0(ViewGroup viewGroup, View view, C0683s c0683s, C0683s c0683s2);

    /* JADX INFO: renamed from: e0 */
    public Animator m5095e0(ViewGroup viewGroup, C0683s c0683s, int i, C0683s c0683s2, int i2) {
        if ((this.f3973K & 1) != 1 || c0683s2 == null) {
            return null;
        }
        if (c0683s == null) {
            View view = (View) c0683s2.f4056b.getParent();
            if (m5093c0(m5145s(view, false), m5117D(view, false)).f3984a) {
                return null;
            }
        }
        return mo5074d0(viewGroup, c0683s2.f4056b, c0683s, c0683s2);
    }

    @Override // p016c.p065p.AbstractC0676m
    /* JADX INFO: renamed from: f */
    public void mo5036f(C0683s c0683s) {
        m5092b0(c0683s);
    }

    /* JADX INFO: renamed from: f0 */
    public abstract Animator mo5075f0(ViewGroup viewGroup, View view, C0683s c0683s, C0683s c0683s2);

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
    /* JADX INFO: renamed from: g0 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public Animator m5096g0(ViewGroup viewGroup, C0683s c0683s, int i, C0683s c0683s2, int i2) {
        View view;
        boolean z;
        boolean z2;
        View view2;
        if ((this.f3973K & 2) != 2 || c0683s == null) {
            return null;
        }
        View view3 = c0683s.f4056b;
        View viewM5173a = c0683s2 != null ? c0683s2.f4056b : null;
        View view4 = (View) view3.getTag(C0670j.save_overlay_view);
        if (view4 != null) {
            view2 = null;
            z2 = true;
        } else if (viewM5173a == null || viewM5173a.getParent() == null) {
            if (viewM5173a != null) {
                view = null;
                z = false;
            } else {
                viewM5173a = null;
                view = null;
                z = true;
            }
            if (z) {
                if (view3.getParent() != null) {
                    if (view3.getParent() instanceof View) {
                        View view5 = (View) view3.getParent();
                        if (m5093c0(m5117D(view5, true), m5145s(view5, true)).f3984a) {
                            int id = view5.getId();
                            if (view5.getParent() != null || id == -1 || viewGroup.findViewById(id) == null || !this.f4026w) {
                            }
                        } else {
                            viewM5173a = C0682r.m5173a(viewGroup, view3, view5);
                        }
                    }
                    z2 = false;
                    View view6 = view;
                    view4 = viewM5173a;
                    view2 = view6;
                }
                view2 = view;
                z2 = false;
                view4 = view3;
            } else {
                z2 = false;
                View view62 = view;
                view4 = viewM5173a;
                view2 = view62;
            }
        } else {
            if (i2 == 4 || view3 == viewM5173a) {
                view = viewM5173a;
                z = false;
                viewM5173a = null;
            }
            if (z) {
            }
        }
        if (view4 == null) {
            if (view2 == null) {
                return null;
            }
            int visibility = view2.getVisibility();
            C0657c0.m5065h(view2, 0);
            Animator animatorMo5075f0 = mo5075f0(viewGroup, view2, c0683s, c0683s2);
            if (animatorMo5075f0 != null) {
                b bVar = new b(view2, i2, true);
                animatorMo5075f0.addListener(bVar);
                C0652a.m5027a(animatorMo5075f0, bVar);
                mo5132a(bVar);
            } else {
                C0657c0.m5065h(view2, visibility);
            }
            return animatorMo5075f0;
        }
        if (!z2) {
            int[] iArr = (int[]) c0683s.f4055a.get("android:visibility:screenLocation");
            int i3 = iArr[0];
            int i4 = iArr[1];
            int[] iArr2 = new int[2];
            viewGroup.getLocationOnScreen(iArr2);
            view4.offsetLeftAndRight((i3 - iArr2[0]) - view4.getLeft());
            view4.offsetTopAndBottom((i4 - iArr2[1]) - view4.getTop());
            C0688x.m5179a(viewGroup).mo5177a(view4);
        }
        Animator animatorMo5075f02 = mo5075f0(viewGroup, view4, c0683s, c0683s2);
        if (!z2) {
            if (animatorMo5075f02 == null) {
                C0688x.m5179a(viewGroup).mo5178c(view4);
            } else {
                view3.setTag(C0670j.save_overlay_view, view4);
                mo5132a(new a(viewGroup, view4, view3));
            }
        }
        return animatorMo5075f02;
    }

    /* JADX INFO: renamed from: h0 */
    public void m5097h0(int i) {
        if ((i & (-4)) != 0) {
            throw new IllegalArgumentException("Only MODE_IN and MODE_OUT flags are allowed");
        }
        this.f3973K = i;
    }

    @Override // p016c.p065p.AbstractC0676m
    /* JADX INFO: renamed from: i */
    public void mo5037i(C0683s c0683s) {
        m5092b0(c0683s);
    }

    @Override // p016c.p065p.AbstractC0676m
    /* JADX INFO: renamed from: m */
    public Animator mo5038m(ViewGroup viewGroup, C0683s c0683s, C0683s c0683s2) {
        c cVarM5093c0 = m5093c0(c0683s, c0683s2);
        if (!cVarM5093c0.f3984a) {
            return null;
        }
        if (cVarM5093c0.f3988e == null && cVarM5093c0.f3989f == null) {
            return null;
        }
        return cVarM5093c0.f3985b ? m5095e0(viewGroup, c0683s, cVarM5093c0.f3986c, c0683s2, cVarM5093c0.f3987d) : m5096g0(viewGroup, c0683s, cVarM5093c0.f3986c, c0683s2, cVarM5093c0.f3987d);
    }
}
