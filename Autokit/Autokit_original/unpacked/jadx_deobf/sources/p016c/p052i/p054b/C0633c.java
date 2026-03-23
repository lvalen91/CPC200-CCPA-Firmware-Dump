package p016c.p052i.p054b;

import android.content.Context;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.animation.Interpolator;
import android.widget.OverScroller;
import androidx.core.view.C0292v;
import com.yalantis.ucrop.view.CropImageView;
import java.util.Arrays;

/* JADX INFO: renamed from: c.i.b.c */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class C0633c {

    /* JADX INFO: renamed from: w */
    private static final Interpolator f3851w = new a();

    /* JADX INFO: renamed from: a */
    private int f3852a;

    /* JADX INFO: renamed from: b */
    private int f3853b;

    /* JADX INFO: renamed from: d */
    private float[] f3855d;

    /* JADX INFO: renamed from: e */
    private float[] f3856e;

    /* JADX INFO: renamed from: f */
    private float[] f3857f;

    /* JADX INFO: renamed from: g */
    private float[] f3858g;

    /* JADX INFO: renamed from: h */
    private int[] f3859h;

    /* JADX INFO: renamed from: i */
    private int[] f3860i;

    /* JADX INFO: renamed from: j */
    private int[] f3861j;

    /* JADX INFO: renamed from: k */
    private int f3862k;

    /* JADX INFO: renamed from: l */
    private VelocityTracker f3863l;

    /* JADX INFO: renamed from: m */
    private float f3864m;

    /* JADX INFO: renamed from: n */
    private float f3865n;

    /* JADX INFO: renamed from: o */
    private int f3866o;

    /* JADX INFO: renamed from: p */
    private int f3867p;

    /* JADX INFO: renamed from: q */
    private OverScroller f3868q;

    /* JADX INFO: renamed from: r */
    private final c f3869r;

    /* JADX INFO: renamed from: s */
    private View f3870s;

    /* JADX INFO: renamed from: t */
    private boolean f3871t;

    /* JADX INFO: renamed from: u */
    private final ViewGroup f3872u;

    /* JADX INFO: renamed from: c */
    private int f3854c = -1;

    /* JADX INFO: renamed from: v */
    private final Runnable f3873v = new b();

    /* JADX INFO: renamed from: c.i.b.c$a */
    static class a implements Interpolator {
        a() {
        }

        @Override // android.animation.TimeInterpolator
        public float getInterpolation(float f) {
            float f2 = f - 1.0f;
            return (f2 * f2 * f2 * f2 * f2) + 1.0f;
        }
    }

    /* JADX INFO: renamed from: c.i.b.c$b */
    class b implements Runnable {
        b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            C0633c.this.m4943E(0);
        }
    }

    /* JADX INFO: renamed from: c.i.b.c$c */
    public static abstract class c {
        /* JADX INFO: renamed from: a */
        public abstract int mo4957a(View view, int i, int i2);

        /* JADX INFO: renamed from: b */
        public abstract int mo4958b(View view, int i, int i2);

        /* JADX INFO: renamed from: c */
        public int m4959c(int i) {
            return i;
        }

        /* JADX INFO: renamed from: d */
        public int mo4960d(View view) {
            return 0;
        }

        /* JADX INFO: renamed from: e */
        public int mo4961e(View view) {
            return 0;
        }

        /* JADX INFO: renamed from: f */
        public void m4962f(int i, int i2) {
        }

        /* JADX INFO: renamed from: g */
        public boolean m4963g(int i) {
            return false;
        }

        /* JADX INFO: renamed from: h */
        public void m4964h(int i, int i2) {
        }

        /* JADX INFO: renamed from: i */
        public void mo4965i(View view, int i) {
        }

        /* JADX INFO: renamed from: j */
        public abstract void mo4966j(int i);

        /* JADX INFO: renamed from: k */
        public abstract void mo4967k(View view, int i, int i2, int i3, int i4);

        /* JADX INFO: renamed from: l */
        public abstract void mo4968l(View view, float f, float f2);

        /* JADX INFO: renamed from: m */
        public abstract boolean mo4969m(View view, int i);
    }

    private C0633c(Context context, ViewGroup viewGroup, c cVar) {
        if (viewGroup == null) {
            throw new IllegalArgumentException("Parent view may not be null");
        }
        if (cVar == null) {
            throw new IllegalArgumentException("Callback may not be null");
        }
        this.f3872u = viewGroup;
        this.f3869r = cVar;
        ViewConfiguration viewConfiguration = ViewConfiguration.get(context);
        this.f3866o = (int) ((context.getResources().getDisplayMetrics().density * 20.0f) + 0.5f);
        this.f3853b = viewConfiguration.getScaledTouchSlop();
        this.f3864m = viewConfiguration.getScaledMaximumFlingVelocity();
        this.f3865n = viewConfiguration.getScaledMinimumFlingVelocity();
        this.f3868q = new OverScroller(context, f3851w);
    }

    /* JADX INFO: renamed from: A */
    private void m4922A() {
        this.f3863l.computeCurrentVelocity(1000, this.f3864m);
        m4936n(m4928e(this.f3863l.getXVelocity(this.f3854c), this.f3865n, this.f3864m), m4928e(this.f3863l.getYVelocity(this.f3854c), this.f3865n, this.f3864m));
    }

    /* JADX INFO: renamed from: B */
    private void m4923B(float f, float f2, int i) {
        int i2 = m4926c(f, f2, i, 1) ? 1 : 0;
        if (m4926c(f2, f, i, 4)) {
            i2 |= 4;
        }
        if (m4926c(f, f2, i, 2)) {
            i2 |= 2;
        }
        if (m4926c(f2, f, i, 8)) {
            i2 |= 8;
        }
        if (i2 != 0) {
            int[] iArr = this.f3860i;
            iArr[i] = iArr[i] | i2;
            this.f3869r.m4962f(i2, i);
        }
    }

    /* JADX INFO: renamed from: C */
    private void m4924C(float f, float f2, int i) {
        m4939q(i);
        float[] fArr = this.f3855d;
        this.f3857f[i] = f;
        fArr[i] = f;
        float[] fArr2 = this.f3856e;
        this.f3858g[i] = f2;
        fArr2[i] = f2;
        this.f3859h[i] = m4941t((int) f, (int) f2);
        this.f3862k |= 1 << i;
    }

    /* JADX INFO: renamed from: D */
    private void m4925D(MotionEvent motionEvent) {
        int pointerCount = motionEvent.getPointerCount();
        for (int i = 0; i < pointerCount; i++) {
            int pointerId = motionEvent.getPointerId(i);
            if (m4942x(pointerId)) {
                float x = motionEvent.getX(i);
                float y = motionEvent.getY(i);
                this.f3857f[pointerId] = x;
                this.f3858g[pointerId] = y;
            }
        }
    }

    /* JADX INFO: renamed from: c */
    private boolean m4926c(float f, float f2, int i, int i2) {
        float fAbs = Math.abs(f);
        float fAbs2 = Math.abs(f2);
        if ((this.f3859h[i] & i2) != i2 || (this.f3867p & i2) == 0 || (this.f3861j[i] & i2) == i2 || (this.f3860i[i] & i2) == i2) {
            return false;
        }
        int i3 = this.f3853b;
        if (fAbs <= i3 && fAbs2 <= i3) {
            return false;
        }
        if (fAbs >= fAbs2 * 0.5f || !this.f3869r.m4963g(i2)) {
            return (this.f3860i[i] & i2) == 0 && fAbs > ((float) this.f3853b);
        }
        int[] iArr = this.f3861j;
        iArr[i] = iArr[i] | i2;
        return false;
    }

    /* JADX INFO: renamed from: d */
    private boolean m4927d(View view, float f, float f2) {
        if (view == null) {
            return false;
        }
        boolean z = this.f3869r.mo4960d(view) > 0;
        boolean z2 = this.f3869r.mo4961e(view) > 0;
        if (!z || !z2) {
            return z ? Math.abs(f) > ((float) this.f3853b) : z2 && Math.abs(f2) > ((float) this.f3853b);
        }
        float f3 = (f * f) + (f2 * f2);
        int i = this.f3853b;
        return f3 > ((float) (i * i));
    }

    /* JADX INFO: renamed from: e */
    private float m4928e(float f, float f2, float f3) {
        float fAbs = Math.abs(f);
        return fAbs < f2 ? CropImageView.DEFAULT_ASPECT_RATIO : fAbs > f3 ? f > CropImageView.DEFAULT_ASPECT_RATIO ? f3 : -f3 : f;
    }

    /* JADX INFO: renamed from: f */
    private int m4929f(int i, int i2, int i3) {
        int iAbs = Math.abs(i);
        if (iAbs < i2) {
            return 0;
        }
        return iAbs > i3 ? i > 0 ? i3 : -i3 : i;
    }

    /* JADX INFO: renamed from: g */
    private void m4930g() {
        float[] fArr = this.f3855d;
        if (fArr == null) {
            return;
        }
        Arrays.fill(fArr, CropImageView.DEFAULT_ASPECT_RATIO);
        Arrays.fill(this.f3856e, CropImageView.DEFAULT_ASPECT_RATIO);
        Arrays.fill(this.f3857f, CropImageView.DEFAULT_ASPECT_RATIO);
        Arrays.fill(this.f3858g, CropImageView.DEFAULT_ASPECT_RATIO);
        Arrays.fill(this.f3859h, 0);
        Arrays.fill(this.f3860i, 0);
        Arrays.fill(this.f3861j, 0);
        this.f3862k = 0;
    }

    /* JADX INFO: renamed from: h */
    private void m4931h(int i) {
        if (this.f3855d == null || !m4954w(i)) {
            return;
        }
        this.f3855d[i] = 0.0f;
        this.f3856e[i] = 0.0f;
        this.f3857f[i] = 0.0f;
        this.f3858g[i] = 0.0f;
        this.f3859h[i] = 0;
        this.f3860i[i] = 0;
        this.f3861j[i] = 0;
        this.f3862k = ((1 << i) ^ (-1)) & this.f3862k;
    }

    /* JADX INFO: renamed from: i */
    private int m4932i(int i, int i2, int i3) {
        if (i == 0) {
            return 0;
        }
        int width = this.f3872u.getWidth();
        float f = width / 2;
        float fM4937o = f + (m4937o(Math.min(1.0f, Math.abs(i) / width)) * f);
        int iAbs = Math.abs(i2);
        return Math.min(iAbs > 0 ? Math.round(Math.abs(fM4937o / iAbs) * 1000.0f) * 4 : (int) (((Math.abs(i) / i3) + 1.0f) * 256.0f), 600);
    }

    /* JADX INFO: renamed from: j */
    private int m4933j(View view, int i, int i2, int i3, int i4) {
        float f;
        float f2;
        float f3;
        float f4;
        int iM4929f = m4929f(i3, (int) this.f3865n, (int) this.f3864m);
        int iM4929f2 = m4929f(i4, (int) this.f3865n, (int) this.f3864m);
        int iAbs = Math.abs(i);
        int iAbs2 = Math.abs(i2);
        int iAbs3 = Math.abs(iM4929f);
        int iAbs4 = Math.abs(iM4929f2);
        int i5 = iAbs3 + iAbs4;
        int i6 = iAbs + iAbs2;
        if (iM4929f != 0) {
            f = iAbs3;
            f2 = i5;
        } else {
            f = iAbs;
            f2 = i6;
        }
        float f5 = f / f2;
        if (iM4929f2 != 0) {
            f3 = iAbs4;
            f4 = i5;
        } else {
            f3 = iAbs2;
            f4 = i6;
        }
        return (int) ((m4932i(i, iM4929f, this.f3869r.mo4960d(view)) * f5) + (m4932i(i2, iM4929f2, this.f3869r.mo4961e(view)) * (f3 / f4)));
    }

    /* JADX INFO: renamed from: l */
    public static C0633c m4934l(ViewGroup viewGroup, float f, c cVar) {
        C0633c c0633cM4935m = m4935m(viewGroup, cVar);
        c0633cM4935m.f3853b = (int) (c0633cM4935m.f3853b * (1.0f / f));
        return c0633cM4935m;
    }

    /* JADX INFO: renamed from: m */
    public static C0633c m4935m(ViewGroup viewGroup, c cVar) {
        return new C0633c(viewGroup.getContext(), viewGroup, cVar);
    }

    /* JADX INFO: renamed from: n */
    private void m4936n(float f, float f2) {
        this.f3871t = true;
        this.f3869r.mo4968l(this.f3870s, f, f2);
        this.f3871t = false;
        if (this.f3852a == 1) {
            m4943E(0);
        }
    }

    /* JADX INFO: renamed from: o */
    private float m4937o(float f) {
        return (float) Math.sin((f - 0.5f) * 0.47123894f);
    }

    /* JADX INFO: renamed from: p */
    private void m4938p(int i, int i2, int i3, int i4) {
        int left = this.f3870s.getLeft();
        int top = this.f3870s.getTop();
        if (i3 != 0) {
            i = this.f3869r.mo4957a(this.f3870s, i, i3);
            C0292v.m2074Y(this.f3870s, i - left);
        }
        int i5 = i;
        if (i4 != 0) {
            i2 = this.f3869r.mo4958b(this.f3870s, i2, i4);
            C0292v.m2075Z(this.f3870s, i2 - top);
        }
        int i6 = i2;
        if (i3 == 0 && i4 == 0) {
            return;
        }
        this.f3869r.mo4967k(this.f3870s, i5, i6, i5 - left, i6 - top);
    }

    /* JADX INFO: renamed from: q */
    private void m4939q(int i) {
        float[] fArr = this.f3855d;
        if (fArr == null || fArr.length <= i) {
            int i2 = i + 1;
            float[] fArr2 = new float[i2];
            float[] fArr3 = new float[i2];
            float[] fArr4 = new float[i2];
            float[] fArr5 = new float[i2];
            int[] iArr = new int[i2];
            int[] iArr2 = new int[i2];
            int[] iArr3 = new int[i2];
            float[] fArr6 = this.f3855d;
            if (fArr6 != null) {
                System.arraycopy(fArr6, 0, fArr2, 0, fArr6.length);
                float[] fArr7 = this.f3856e;
                System.arraycopy(fArr7, 0, fArr3, 0, fArr7.length);
                float[] fArr8 = this.f3857f;
                System.arraycopy(fArr8, 0, fArr4, 0, fArr8.length);
                float[] fArr9 = this.f3858g;
                System.arraycopy(fArr9, 0, fArr5, 0, fArr9.length);
                int[] iArr4 = this.f3859h;
                System.arraycopy(iArr4, 0, iArr, 0, iArr4.length);
                int[] iArr5 = this.f3860i;
                System.arraycopy(iArr5, 0, iArr2, 0, iArr5.length);
                int[] iArr6 = this.f3861j;
                System.arraycopy(iArr6, 0, iArr3, 0, iArr6.length);
            }
            this.f3855d = fArr2;
            this.f3856e = fArr3;
            this.f3857f = fArr4;
            this.f3858g = fArr5;
            this.f3859h = iArr;
            this.f3860i = iArr2;
            this.f3861j = iArr3;
        }
    }

    /* JADX INFO: renamed from: s */
    private boolean m4940s(int i, int i2, int i3, int i4) {
        int left = this.f3870s.getLeft();
        int top = this.f3870s.getTop();
        int i5 = i - left;
        int i6 = i2 - top;
        if (i5 == 0 && i6 == 0) {
            this.f3868q.abortAnimation();
            m4943E(0);
            return false;
        }
        this.f3868q.startScroll(left, top, i5, i6, m4933j(this.f3870s, i5, i6, i3, i4));
        m4943E(2);
        return true;
    }

    /* JADX INFO: renamed from: t */
    private int m4941t(int i, int i2) {
        int i3 = i < this.f3872u.getLeft() + this.f3866o ? 1 : 0;
        if (i2 < this.f3872u.getTop() + this.f3866o) {
            i3 |= 4;
        }
        if (i > this.f3872u.getRight() - this.f3866o) {
            i3 |= 2;
        }
        return i2 > this.f3872u.getBottom() - this.f3866o ? i3 | 8 : i3;
    }

    /* JADX INFO: renamed from: x */
    private boolean m4942x(int i) {
        if (m4954w(i)) {
            return true;
        }
        String str = "Ignoring pointerId=" + i + " because ACTION_DOWN was not received for this pointer before ACTION_MOVE. It likely happened because  ViewDragHelper did not receive all the events in the event stream.";
        return false;
    }

    /* JADX INFO: renamed from: E */
    void m4943E(int i) {
        this.f3872u.removeCallbacks(this.f3873v);
        if (this.f3852a != i) {
            this.f3852a = i;
            this.f3869r.mo4966j(i);
            if (this.f3852a == 0) {
                this.f3870s = null;
            }
        }
    }

    /* JADX INFO: renamed from: F */
    public boolean m4944F(int i, int i2) {
        if (this.f3871t) {
            return m4940s(i, i2, (int) this.f3863l.getXVelocity(this.f3854c), (int) this.f3863l.getYVelocity(this.f3854c));
        }
        throw new IllegalStateException("Cannot settleCapturedViewAt outside of a call to Callback#onViewReleased");
    }

    /* JADX WARN: Removed duplicated region for block: B:54:0x00e6  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x00ff  */
    /* JADX INFO: renamed from: G */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public boolean m4945G(MotionEvent motionEvent) {
        boolean z;
        View viewM4951r;
        int actionMasked = motionEvent.getActionMasked();
        int actionIndex = motionEvent.getActionIndex();
        if (actionMasked == 0) {
            m4948a();
        }
        if (this.f3863l == null) {
            this.f3863l = VelocityTracker.obtain();
        }
        this.f3863l.addMovement(motionEvent);
        if (actionMasked == 0) {
            float x = motionEvent.getX();
            float y = motionEvent.getY();
            z = false;
            int pointerId = motionEvent.getPointerId(0);
            m4924C(x, y, pointerId);
            View viewM4951r2 = m4951r((int) x, (int) y);
            if (viewM4951r2 == this.f3870s && this.f3852a == 2) {
                m4947I(viewM4951r2, pointerId);
            }
            int i = this.f3859h[pointerId];
            int i2 = this.f3867p;
            if ((i & i2) != 0) {
                this.f3869r.m4964h(i & i2, pointerId);
            }
        } else if (actionMasked == 1) {
            m4948a();
            z = false;
        } else {
            if (actionMasked != 2) {
                if (actionMasked != 3) {
                    if (actionMasked == 5) {
                        int pointerId2 = motionEvent.getPointerId(actionIndex);
                        float x2 = motionEvent.getX(actionIndex);
                        float y2 = motionEvent.getY(actionIndex);
                        m4924C(x2, y2, pointerId2);
                        int i3 = this.f3852a;
                        if (i3 == 0) {
                            int i4 = this.f3859h[pointerId2];
                            int i5 = this.f3867p;
                            if ((i4 & i5) != 0) {
                                this.f3869r.m4964h(i4 & i5, pointerId2);
                            }
                        } else if (i3 == 2 && (viewM4951r = m4951r((int) x2, (int) y2)) == this.f3870s) {
                            m4947I(viewM4951r, pointerId2);
                        }
                    } else if (actionMasked == 6) {
                        m4931h(motionEvent.getPointerId(actionIndex));
                    }
                }
            } else if (this.f3855d != null && this.f3856e != null) {
                int pointerCount = motionEvent.getPointerCount();
                for (int i6 = 0; i6 < pointerCount; i6++) {
                    int pointerId3 = motionEvent.getPointerId(i6);
                    if (m4942x(pointerId3)) {
                        float x3 = motionEvent.getX(i6);
                        float y3 = motionEvent.getY(i6);
                        float f = x3 - this.f3855d[pointerId3];
                        float f2 = y3 - this.f3856e[pointerId3];
                        View viewM4951r3 = m4951r((int) x3, (int) y3);
                        boolean z2 = viewM4951r3 != null && m4927d(viewM4951r3, f, f2);
                        if (z2) {
                            int left = viewM4951r3.getLeft();
                            int i7 = (int) f;
                            int iMo4957a = this.f3869r.mo4957a(viewM4951r3, left + i7, i7);
                            int top = viewM4951r3.getTop();
                            int i8 = (int) f2;
                            int iMo4958b = this.f3869r.mo4958b(viewM4951r3, top + i8, i8);
                            int iMo4960d = this.f3869r.mo4960d(viewM4951r3);
                            int iMo4961e = this.f3869r.mo4961e(viewM4951r3);
                            if ((iMo4960d == 0 || (iMo4960d > 0 && iMo4957a == left)) && (iMo4961e == 0 || (iMo4961e > 0 && iMo4958b == top))) {
                                break;
                            }
                            m4923B(f, f2, pointerId3);
                            if (this.f3852a == 1 || (z2 && m4947I(viewM4951r3, pointerId3))) {
                                break;
                            }
                        }
                    }
                }
                m4925D(motionEvent);
            }
            z = false;
        }
        if (this.f3852a == 1) {
            return true;
        }
        return z;
    }

    /* JADX INFO: renamed from: H */
    public boolean m4946H(View view, int i, int i2) {
        this.f3870s = view;
        this.f3854c = -1;
        boolean zM4940s = m4940s(i, i2, 0, 0);
        if (!zM4940s && this.f3852a == 0 && this.f3870s != null) {
            this.f3870s = null;
        }
        return zM4940s;
    }

    /* JADX INFO: renamed from: I */
    boolean m4947I(View view, int i) {
        if (view == this.f3870s && this.f3854c == i) {
            return true;
        }
        if (view == null || !this.f3869r.mo4969m(view, i)) {
            return false;
        }
        this.f3854c = i;
        m4949b(view, i);
        return true;
    }

    /* JADX INFO: renamed from: a */
    public void m4948a() {
        this.f3854c = -1;
        m4930g();
        VelocityTracker velocityTracker = this.f3863l;
        if (velocityTracker != null) {
            velocityTracker.recycle();
            this.f3863l = null;
        }
    }

    /* JADX INFO: renamed from: b */
    public void m4949b(View view, int i) {
        if (view.getParent() == this.f3872u) {
            this.f3870s = view;
            this.f3854c = i;
            this.f3869r.mo4965i(view, i);
            m4943E(1);
            return;
        }
        throw new IllegalArgumentException("captureChildView: parameter must be a descendant of the ViewDragHelper's tracked parent view (" + this.f3872u + ")");
    }

    /* JADX INFO: renamed from: k */
    public boolean m4950k(boolean z) {
        if (this.f3852a == 2) {
            boolean zComputeScrollOffset = this.f3868q.computeScrollOffset();
            int currX = this.f3868q.getCurrX();
            int currY = this.f3868q.getCurrY();
            int left = currX - this.f3870s.getLeft();
            int top = currY - this.f3870s.getTop();
            if (left != 0) {
                C0292v.m2074Y(this.f3870s, left);
            }
            if (top != 0) {
                C0292v.m2075Z(this.f3870s, top);
            }
            if (left != 0 || top != 0) {
                this.f3869r.mo4967k(this.f3870s, currX, currY, left, top);
            }
            if (zComputeScrollOffset && currX == this.f3868q.getFinalX() && currY == this.f3868q.getFinalY()) {
                this.f3868q.abortAnimation();
                zComputeScrollOffset = false;
            }
            if (!zComputeScrollOffset) {
                if (z) {
                    this.f3872u.post(this.f3873v);
                } else {
                    m4943E(0);
                }
            }
        }
        return this.f3852a == 2;
    }

    /* JADX INFO: renamed from: r */
    public View m4951r(int i, int i2) {
        for (int childCount = this.f3872u.getChildCount() - 1; childCount >= 0; childCount--) {
            ViewGroup viewGroup = this.f3872u;
            this.f3869r.m4959c(childCount);
            View childAt = viewGroup.getChildAt(childCount);
            if (i >= childAt.getLeft() && i < childAt.getRight() && i2 >= childAt.getTop() && i2 < childAt.getBottom()) {
                return childAt;
            }
        }
        return null;
    }

    /* JADX INFO: renamed from: u */
    public int m4952u() {
        return this.f3853b;
    }

    /* JADX INFO: renamed from: v */
    public boolean m4953v(int i, int i2) {
        return m4955y(this.f3870s, i, i2);
    }

    /* JADX INFO: renamed from: w */
    public boolean m4954w(int i) {
        return ((1 << i) & this.f3862k) != 0;
    }

    /* JADX INFO: renamed from: y */
    public boolean m4955y(View view, int i, int i2) {
        return view != null && i >= view.getLeft() && i < view.getRight() && i2 >= view.getTop() && i2 < view.getBottom();
    }

    /* JADX INFO: renamed from: z */
    public void m4956z(MotionEvent motionEvent) {
        int i;
        int actionMasked = motionEvent.getActionMasked();
        int actionIndex = motionEvent.getActionIndex();
        if (actionMasked == 0) {
            m4948a();
        }
        if (this.f3863l == null) {
            this.f3863l = VelocityTracker.obtain();
        }
        this.f3863l.addMovement(motionEvent);
        int i2 = 0;
        if (actionMasked == 0) {
            float x = motionEvent.getX();
            float y = motionEvent.getY();
            int pointerId = motionEvent.getPointerId(0);
            View viewM4951r = m4951r((int) x, (int) y);
            m4924C(x, y, pointerId);
            m4947I(viewM4951r, pointerId);
            int i3 = this.f3859h[pointerId];
            int i4 = this.f3867p;
            if ((i3 & i4) != 0) {
                this.f3869r.m4964h(i3 & i4, pointerId);
                return;
            }
            return;
        }
        if (actionMasked == 1) {
            if (this.f3852a == 1) {
                m4922A();
            }
            m4948a();
            return;
        }
        if (actionMasked == 2) {
            if (this.f3852a == 1) {
                if (m4942x(this.f3854c)) {
                    int iFindPointerIndex = motionEvent.findPointerIndex(this.f3854c);
                    float x2 = motionEvent.getX(iFindPointerIndex);
                    float y2 = motionEvent.getY(iFindPointerIndex);
                    float[] fArr = this.f3857f;
                    int i5 = this.f3854c;
                    int i6 = (int) (x2 - fArr[i5]);
                    int i7 = (int) (y2 - this.f3858g[i5]);
                    m4938p(this.f3870s.getLeft() + i6, this.f3870s.getTop() + i7, i6, i7);
                    m4925D(motionEvent);
                    return;
                }
                return;
            }
            int pointerCount = motionEvent.getPointerCount();
            while (i2 < pointerCount) {
                int pointerId2 = motionEvent.getPointerId(i2);
                if (m4942x(pointerId2)) {
                    float x3 = motionEvent.getX(i2);
                    float y3 = motionEvent.getY(i2);
                    float f = x3 - this.f3855d[pointerId2];
                    float f2 = y3 - this.f3856e[pointerId2];
                    m4923B(f, f2, pointerId2);
                    if (this.f3852a != 1) {
                        View viewM4951r2 = m4951r((int) x3, (int) y3);
                        if (m4927d(viewM4951r2, f, f2) && m4947I(viewM4951r2, pointerId2)) {
                            break;
                        }
                    } else {
                        break;
                    }
                }
                i2++;
            }
            m4925D(motionEvent);
            return;
        }
        if (actionMasked == 3) {
            if (this.f3852a == 1) {
                m4936n(CropImageView.DEFAULT_ASPECT_RATIO, CropImageView.DEFAULT_ASPECT_RATIO);
            }
            m4948a();
            return;
        }
        if (actionMasked == 5) {
            int pointerId3 = motionEvent.getPointerId(actionIndex);
            float x4 = motionEvent.getX(actionIndex);
            float y4 = motionEvent.getY(actionIndex);
            m4924C(x4, y4, pointerId3);
            if (this.f3852a != 0) {
                if (m4953v((int) x4, (int) y4)) {
                    m4947I(this.f3870s, pointerId3);
                    return;
                }
                return;
            } else {
                m4947I(m4951r((int) x4, (int) y4), pointerId3);
                int i8 = this.f3859h[pointerId3];
                int i9 = this.f3867p;
                if ((i8 & i9) != 0) {
                    this.f3869r.m4964h(i8 & i9, pointerId3);
                    return;
                }
                return;
            }
        }
        if (actionMasked != 6) {
            return;
        }
        int pointerId4 = motionEvent.getPointerId(actionIndex);
        if (this.f3852a == 1 && pointerId4 == this.f3854c) {
            int pointerCount2 = motionEvent.getPointerCount();
            while (true) {
                if (i2 >= pointerCount2) {
                    i = -1;
                    break;
                }
                int pointerId5 = motionEvent.getPointerId(i2);
                if (pointerId5 != this.f3854c) {
                    View viewM4951r3 = m4951r((int) motionEvent.getX(i2), (int) motionEvent.getY(i2));
                    View view = this.f3870s;
                    if (viewM4951r3 == view && m4947I(view, pointerId5)) {
                        i = this.f3854c;
                        break;
                    }
                }
                i2++;
            }
            if (i == -1) {
                m4922A();
            }
        }
        m4931h(pointerId4);
    }
}
