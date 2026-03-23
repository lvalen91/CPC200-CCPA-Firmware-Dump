package androidx.appcompat.widget;

import android.text.TextUtils;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.accessibility.AccessibilityManager;
import androidx.core.view.C0292v;
import androidx.core.view.C0293w;

/* JADX INFO: renamed from: androidx.appcompat.widget.x0 */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
class ViewOnLongClickListenerC0201x0 implements View.OnLongClickListener, View.OnHoverListener, View.OnAttachStateChangeListener {

    /* JADX INFO: renamed from: k */
    private static ViewOnLongClickListenerC0201x0 f1363k;

    /* JADX INFO: renamed from: l */
    private static ViewOnLongClickListenerC0201x0 f1364l;

    /* JADX INFO: renamed from: b */
    private final View f1365b;

    /* JADX INFO: renamed from: c */
    private final CharSequence f1366c;

    /* JADX INFO: renamed from: d */
    private final int f1367d;

    /* JADX INFO: renamed from: e */
    private final Runnable f1368e = new a();

    /* JADX INFO: renamed from: f */
    private final Runnable f1369f = new b();

    /* JADX INFO: renamed from: g */
    private int f1370g;

    /* JADX INFO: renamed from: h */
    private int f1371h;

    /* JADX INFO: renamed from: i */
    private C0203y0 f1372i;

    /* JADX INFO: renamed from: j */
    private boolean f1373j;

    /* JADX INFO: renamed from: androidx.appcompat.widget.x0$a */
    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ViewOnLongClickListenerC0201x0.this.m1397g(false);
        }
    }

    /* JADX INFO: renamed from: androidx.appcompat.widget.x0$b */
    class b implements Runnable {
        b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ViewOnLongClickListenerC0201x0.this.m1396c();
        }
    }

    private ViewOnLongClickListenerC0201x0(View view, CharSequence charSequence) {
        this.f1365b = view;
        this.f1366c = charSequence;
        this.f1367d = C0293w.m2166c(ViewConfiguration.get(view.getContext()));
        m1391b();
        this.f1365b.setOnLongClickListener(this);
        this.f1365b.setOnHoverListener(this);
    }

    /* JADX INFO: renamed from: a */
    private void m1390a() {
        this.f1365b.removeCallbacks(this.f1368e);
    }

    /* JADX INFO: renamed from: b */
    private void m1391b() {
        this.f1370g = Integer.MAX_VALUE;
        this.f1371h = Integer.MAX_VALUE;
    }

    /* JADX INFO: renamed from: d */
    private void m1392d() {
        this.f1365b.postDelayed(this.f1368e, ViewConfiguration.getLongPressTimeout());
    }

    /* JADX INFO: renamed from: e */
    private static void m1393e(ViewOnLongClickListenerC0201x0 viewOnLongClickListenerC0201x0) {
        ViewOnLongClickListenerC0201x0 viewOnLongClickListenerC0201x02 = f1363k;
        if (viewOnLongClickListenerC0201x02 != null) {
            viewOnLongClickListenerC0201x02.m1390a();
        }
        f1363k = viewOnLongClickListenerC0201x0;
        if (viewOnLongClickListenerC0201x0 != null) {
            viewOnLongClickListenerC0201x0.m1392d();
        }
    }

    /* JADX INFO: renamed from: f */
    public static void m1394f(View view, CharSequence charSequence) {
        ViewOnLongClickListenerC0201x0 viewOnLongClickListenerC0201x0 = f1363k;
        if (viewOnLongClickListenerC0201x0 != null && viewOnLongClickListenerC0201x0.f1365b == view) {
            m1393e(null);
        }
        if (!TextUtils.isEmpty(charSequence)) {
            new ViewOnLongClickListenerC0201x0(view, charSequence);
            return;
        }
        ViewOnLongClickListenerC0201x0 viewOnLongClickListenerC0201x02 = f1364l;
        if (viewOnLongClickListenerC0201x02 != null && viewOnLongClickListenerC0201x02.f1365b == view) {
            viewOnLongClickListenerC0201x02.m1396c();
        }
        view.setOnLongClickListener(null);
        view.setLongClickable(false);
        view.setOnHoverListener(null);
    }

    /* JADX INFO: renamed from: h */
    private boolean m1395h(MotionEvent motionEvent) {
        int x = (int) motionEvent.getX();
        int y = (int) motionEvent.getY();
        if (Math.abs(x - this.f1370g) <= this.f1367d && Math.abs(y - this.f1371h) <= this.f1367d) {
            return false;
        }
        this.f1370g = x;
        this.f1371h = y;
        return true;
    }

    /* JADX INFO: renamed from: c */
    void m1396c() {
        if (f1364l == this) {
            f1364l = null;
            C0203y0 c0203y0 = this.f1372i;
            if (c0203y0 != null) {
                c0203y0.m1433c();
                this.f1372i = null;
                m1391b();
                this.f1365b.removeOnAttachStateChangeListener(this);
            }
        }
        if (f1363k == this) {
            m1393e(null);
        }
        this.f1365b.removeCallbacks(this.f1369f);
    }

    /* JADX INFO: renamed from: g */
    void m1397g(boolean z) {
        long j;
        int longPressTimeout;
        long j2;
        if (C0292v.m2068S(this.f1365b)) {
            m1393e(null);
            ViewOnLongClickListenerC0201x0 viewOnLongClickListenerC0201x0 = f1364l;
            if (viewOnLongClickListenerC0201x0 != null) {
                viewOnLongClickListenerC0201x0.m1396c();
            }
            f1364l = this;
            this.f1373j = z;
            C0203y0 c0203y0 = new C0203y0(this.f1365b.getContext());
            this.f1372i = c0203y0;
            c0203y0.m1435e(this.f1365b, this.f1370g, this.f1371h, this.f1373j, this.f1366c);
            this.f1365b.addOnAttachStateChangeListener(this);
            if (this.f1373j) {
                j2 = 2500;
            } else {
                if ((C0292v.m2062M(this.f1365b) & 1) == 1) {
                    j = 3000;
                    longPressTimeout = ViewConfiguration.getLongPressTimeout();
                } else {
                    j = 15000;
                    longPressTimeout = ViewConfiguration.getLongPressTimeout();
                }
                j2 = j - ((long) longPressTimeout);
            }
            this.f1365b.removeCallbacks(this.f1369f);
            this.f1365b.postDelayed(this.f1369f, j2);
        }
    }

    @Override // android.view.View.OnHoverListener
    public boolean onHover(View view, MotionEvent motionEvent) {
        if (this.f1372i != null && this.f1373j) {
            return false;
        }
        AccessibilityManager accessibilityManager = (AccessibilityManager) this.f1365b.getContext().getSystemService("accessibility");
        if (accessibilityManager.isEnabled() && accessibilityManager.isTouchExplorationEnabled()) {
            return false;
        }
        int action = motionEvent.getAction();
        if (action != 7) {
            if (action == 10) {
                m1391b();
                m1396c();
            }
        } else if (this.f1365b.isEnabled() && this.f1372i == null && m1395h(motionEvent)) {
            m1393e(this);
        }
        return false;
    }

    @Override // android.view.View.OnLongClickListener
    public boolean onLongClick(View view) {
        this.f1370g = view.getWidth() / 2;
        this.f1371h = view.getHeight() / 2;
        m1397g(true);
        return true;
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public void onViewAttachedToWindow(View view) {
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public void onViewDetachedFromWindow(View view) {
        m1396c();
    }
}
