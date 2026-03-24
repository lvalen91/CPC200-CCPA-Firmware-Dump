package androidx.appcompat.widget;

import android.text.TextUtils;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.accessibility.AccessibilityManager;

/* JADX INFO: loaded from: /Volumes/stuff/macbook/misc/CPC200-CCPA/rework/dumped_real_classes.dex */
class x0 implements View.OnLongClickListener, View.OnHoverListener, View.OnAttachStateChangeListener {
    private static x0 k;
    private static x0 l;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final View f427b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final CharSequence f428c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final int f429d;
    private final Runnable e = new a();
    private final Runnable f = new b();
    private int g;
    private int h;
    private y0 i;
    private boolean j;

    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            x0.this.g(false);
        }
    }

    class b implements Runnable {
        b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            x0.this.c();
        }
    }

    private x0(View view, CharSequence charSequence) {
        this.f427b = view;
        this.f428c = charSequence;
        this.f429d = androidx.core.view.w.c(ViewConfiguration.get(view.getContext()));
        b();
        this.f427b.setOnLongClickListener(this);
        this.f427b.setOnHoverListener(this);
    }

    private void a() {
        this.f427b.removeCallbacks(this.e);
    }

    private void b() {
        this.g = Integer.MAX_VALUE;
        this.h = Integer.MAX_VALUE;
    }

    private void d() {
        this.f427b.postDelayed(this.e, ViewConfiguration.getLongPressTimeout());
    }

    private static void e(x0 x0Var) {
        x0 x0Var2 = k;
        if (x0Var2 != null) {
            x0Var2.a();
        }
        k = x0Var;
        if (x0Var != null) {
            x0Var.d();
        }
    }

    public static void f(View view, CharSequence charSequence) {
        x0 x0Var = k;
        if (x0Var != null && x0Var.f427b == view) {
            e(null);
        }
        if (!TextUtils.isEmpty(charSequence)) {
            new x0(view, charSequence);
            return;
        }
        x0 x0Var2 = l;
        if (x0Var2 != null && x0Var2.f427b == view) {
            x0Var2.c();
        }
        view.setOnLongClickListener(null);
        view.setLongClickable(false);
        view.setOnHoverListener(null);
    }

    private boolean h(MotionEvent motionEvent) {
        int x = (int) motionEvent.getX();
        int y = (int) motionEvent.getY();
        if (Math.abs(x - this.g) <= this.f429d && Math.abs(y - this.h) <= this.f429d) {
            return false;
        }
        this.g = x;
        this.h = y;
        return true;
    }

    void c() {
        if (l == this) {
            l = null;
            y0 y0Var = this.i;
            if (y0Var != null) {
                y0Var.c();
                this.i = null;
                b();
                this.f427b.removeOnAttachStateChangeListener(this);
            }
        }
        if (k == this) {
            e(null);
        }
        this.f427b.removeCallbacks(this.f);
    }

    void g(boolean z) {
        long j;
        int longPressTimeout;
        long j2;
        if (androidx.core.view.v.S(this.f427b)) {
            e(null);
            x0 x0Var = l;
            if (x0Var != null) {
                x0Var.c();
            }
            l = this;
            this.j = z;
            y0 y0Var = new y0(this.f427b.getContext());
            this.i = y0Var;
            y0Var.e(this.f427b, this.g, this.h, this.j, this.f428c);
            this.f427b.addOnAttachStateChangeListener(this);
            if (this.j) {
                j2 = 2500;
            } else {
                if ((androidx.core.view.v.M(this.f427b) & 1) == 1) {
                    j = 3000;
                    longPressTimeout = ViewConfiguration.getLongPressTimeout();
                } else {
                    j = 15000;
                    longPressTimeout = ViewConfiguration.getLongPressTimeout();
                }
                j2 = j - ((long) longPressTimeout);
            }
            this.f427b.removeCallbacks(this.f);
            this.f427b.postDelayed(this.f, j2);
        }
    }

    @Override // android.view.View.OnHoverListener
    public boolean onHover(View view, MotionEvent motionEvent) {
        if (this.i != null && this.j) {
            return false;
        }
        AccessibilityManager accessibilityManager = (AccessibilityManager) this.f427b.getContext().getSystemService("accessibility");
        if (accessibilityManager.isEnabled() && accessibilityManager.isTouchExplorationEnabled()) {
            return false;
        }
        int action = motionEvent.getAction();
        if (action != 7) {
            if (action == 10) {
                b();
                c();
            }
        } else if (this.f427b.isEnabled() && this.i == null && h(motionEvent)) {
            e(this);
        }
        return false;
    }

    @Override // android.view.View.OnLongClickListener
    public boolean onLongClick(View view) {
        this.g = view.getWidth() / 2;
        this.h = view.getHeight() / 2;
        g(true);
        return true;
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public void onViewAttachedToWindow(View view) {
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public void onViewDetachedFromWindow(View view) {
        c();
    }
}
