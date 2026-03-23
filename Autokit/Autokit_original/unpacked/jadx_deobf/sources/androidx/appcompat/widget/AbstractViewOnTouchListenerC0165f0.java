package androidx.appcompat.widget;

import android.os.SystemClock;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewParent;
import androidx.appcompat.view.menu.InterfaceC0110p;
import com.yalantis.ucrop.view.CropImageView;

/* JADX INFO: renamed from: androidx.appcompat.widget.f0 */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public abstract class AbstractViewOnTouchListenerC0165f0 implements View.OnTouchListener, View.OnAttachStateChangeListener {

    /* JADX INFO: renamed from: b */
    private final float f1092b;

    /* JADX INFO: renamed from: c */
    private final int f1093c;

    /* JADX INFO: renamed from: d */
    private final int f1094d;

    /* JADX INFO: renamed from: e */
    final View f1095e;

    /* JADX INFO: renamed from: f */
    private Runnable f1096f;

    /* JADX INFO: renamed from: g */
    private Runnable f1097g;

    /* JADX INFO: renamed from: h */
    private boolean f1098h;

    /* JADX INFO: renamed from: i */
    private int f1099i;

    /* JADX INFO: renamed from: j */
    private final int[] f1100j = new int[2];

    /* JADX INFO: renamed from: androidx.appcompat.widget.f0$a */
    private class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ViewParent parent = AbstractViewOnTouchListenerC0165f0.this.f1095e.getParent();
            if (parent != null) {
                parent.requestDisallowInterceptTouchEvent(true);
            }
        }
    }

    /* JADX INFO: renamed from: androidx.appcompat.widget.f0$b */
    private class b implements Runnable {
        b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            AbstractViewOnTouchListenerC0165f0.this.m1106e();
        }
    }

    public AbstractViewOnTouchListenerC0165f0(View view) {
        this.f1095e = view;
        view.setLongClickable(true);
        view.addOnAttachStateChangeListener(this);
        this.f1092b = ViewConfiguration.get(view.getContext()).getScaledTouchSlop();
        int tapTimeout = ViewConfiguration.getTapTimeout();
        this.f1093c = tapTimeout;
        this.f1094d = (tapTimeout + ViewConfiguration.getLongPressTimeout()) / 2;
    }

    /* JADX INFO: renamed from: a */
    private void m1100a() {
        Runnable runnable = this.f1097g;
        if (runnable != null) {
            this.f1095e.removeCallbacks(runnable);
        }
        Runnable runnable2 = this.f1096f;
        if (runnable2 != null) {
            this.f1095e.removeCallbacks(runnable2);
        }
    }

    /* JADX INFO: renamed from: f */
    private boolean m1101f(MotionEvent motionEvent) {
        C0161d0 c0161d0;
        View view = this.f1095e;
        InterfaceC0110p interfaceC0110pMo649b = mo649b();
        if (interfaceC0110pMo649b == null || !interfaceC0110pMo649b.mo694b() || (c0161d0 = (C0161d0) interfaceC0110pMo649b.mo698l()) == null || !c0161d0.isShown()) {
            return false;
        }
        MotionEvent motionEventObtainNoHistory = MotionEvent.obtainNoHistory(motionEvent);
        m1104i(view, motionEventObtainNoHistory);
        m1105j(c0161d0, motionEventObtainNoHistory);
        boolean zM1085e = c0161d0.m1085e(motionEventObtainNoHistory, this.f1099i);
        motionEventObtainNoHistory.recycle();
        int actionMasked = motionEvent.getActionMasked();
        return zM1085e && (actionMasked != 1 && actionMasked != 3);
    }

    /* JADX WARN: Removed duplicated region for block: B:20:0x003d  */
    /* JADX INFO: renamed from: g */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private boolean m1102g(MotionEvent motionEvent) {
        View view = this.f1095e;
        if (!view.isEnabled()) {
            return false;
        }
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            this.f1099i = motionEvent.getPointerId(0);
            if (this.f1096f == null) {
                this.f1096f = new a();
            }
            view.postDelayed(this.f1096f, this.f1093c);
            if (this.f1097g == null) {
                this.f1097g = new b();
            }
            view.postDelayed(this.f1097g, this.f1094d);
        } else if (actionMasked == 1) {
            m1100a();
        } else if (actionMasked == 2) {
            int iFindPointerIndex = motionEvent.findPointerIndex(this.f1099i);
            if (iFindPointerIndex >= 0 && !m1103h(view, motionEvent.getX(iFindPointerIndex), motionEvent.getY(iFindPointerIndex), this.f1092b)) {
                m1100a();
                view.getParent().requestDisallowInterceptTouchEvent(true);
                return true;
            }
        } else if (actionMasked == 3) {
        }
        return false;
    }

    /* JADX INFO: renamed from: h */
    private static boolean m1103h(View view, float f, float f2, float f3) {
        float f4 = -f3;
        return f >= f4 && f2 >= f4 && f < ((float) (view.getRight() - view.getLeft())) + f3 && f2 < ((float) (view.getBottom() - view.getTop())) + f3;
    }

    /* JADX INFO: renamed from: i */
    private boolean m1104i(View view, MotionEvent motionEvent) {
        view.getLocationOnScreen(this.f1100j);
        motionEvent.offsetLocation(r0[0], r0[1]);
        return true;
    }

    /* JADX INFO: renamed from: j */
    private boolean m1105j(View view, MotionEvent motionEvent) {
        view.getLocationOnScreen(this.f1100j);
        motionEvent.offsetLocation(-r0[0], -r0[1]);
        return true;
    }

    /* JADX INFO: renamed from: b */
    public abstract InterfaceC0110p mo649b();

    /* JADX INFO: renamed from: c */
    protected abstract boolean mo650c();

    /* JADX INFO: renamed from: d */
    protected boolean mo1069d() {
        InterfaceC0110p interfaceC0110pMo649b = mo649b();
        if (interfaceC0110pMo649b == null || !interfaceC0110pMo649b.mo694b()) {
            return true;
        }
        interfaceC0110pMo649b.dismiss();
        return true;
    }

    /* JADX INFO: renamed from: e */
    void m1106e() {
        m1100a();
        View view = this.f1095e;
        if (view.isEnabled() && !view.isLongClickable() && mo650c()) {
            view.getParent().requestDisallowInterceptTouchEvent(true);
            long jUptimeMillis = SystemClock.uptimeMillis();
            MotionEvent motionEventObtain = MotionEvent.obtain(jUptimeMillis, jUptimeMillis, 3, CropImageView.DEFAULT_ASPECT_RATIO, CropImageView.DEFAULT_ASPECT_RATIO, 0);
            view.onTouchEvent(motionEventObtain);
            motionEventObtain.recycle();
            this.f1098h = true;
        }
    }

    @Override // android.view.View.OnTouchListener
    public boolean onTouch(View view, MotionEvent motionEvent) {
        boolean z;
        boolean z2 = this.f1098h;
        if (z2) {
            z = m1101f(motionEvent) || !mo1069d();
        } else {
            z = m1102g(motionEvent) && mo650c();
            if (z) {
                long jUptimeMillis = SystemClock.uptimeMillis();
                MotionEvent motionEventObtain = MotionEvent.obtain(jUptimeMillis, jUptimeMillis, 3, CropImageView.DEFAULT_ASPECT_RATIO, CropImageView.DEFAULT_ASPECT_RATIO, 0);
                this.f1095e.onTouchEvent(motionEventObtain);
                motionEventObtain.recycle();
            }
        }
        this.f1098h = z;
        return z || z2;
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public void onViewAttachedToWindow(View view) {
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public void onViewDetachedFromWindow(View view) {
        this.f1098h = false;
        this.f1099i = -1;
        Runnable runnable = this.f1096f;
        if (runnable != null) {
            this.f1095e.removeCallbacks(runnable);
        }
    }
}
