package c.i.b;

import android.content.Context;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.animation.Interpolator;
import android.widget.OverScroller;
import androidx.core.view.v;
import com.yalantis.ucrop.view.CropImageView;
import java.util.Arrays;

/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class c {
    private static final Interpolator w = new a();
    private int a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f1250b;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private float[] f1252d;
    private float[] e;
    private float[] f;
    private float[] g;
    private int[] h;
    private int[] i;
    private int[] j;
    private int k;
    private VelocityTracker l;
    private float m;
    private float n;
    private int o;
    private int p;
    private OverScroller q;
    private final AbstractC0060c r;
    private View s;
    private boolean t;
    private final ViewGroup u;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f1251c = -1;
    private final Runnable v = new b();

    static class a implements Interpolator {
        a() {
        }

        @Override // android.animation.TimeInterpolator
        public float getInterpolation(float f) {
            float f2 = f - 1.0f;
            return (f2 * f2 * f2 * f2 * f2) + 1.0f;
        }
    }

    class b implements Runnable {
        b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            c.this.E(0);
        }
    }

    /* JADX INFO: renamed from: c.i.b.c$c, reason: collision with other inner class name */
    public static abstract class AbstractC0060c {
        public abstract int a(View view, int i, int i2);

        public abstract int b(View view, int i, int i2);

        public int c(int i) {
            return i;
        }

        public int d(View view) {
            return 0;
        }

        public int e(View view) {
            return 0;
        }

        public void f(int i, int i2) {
        }

        public boolean g(int i) {
            return false;
        }

        public void h(int i, int i2) {
        }

        public void i(View view, int i) {
        }

        public abstract void j(int i);

        public abstract void k(View view, int i, int i2, int i3, int i4);

        public abstract void l(View view, float f, float f2);

        public abstract boolean m(View view, int i);
    }

    private c(Context context, ViewGroup viewGroup, AbstractC0060c abstractC0060c) {
        if (viewGroup == null) {
            throw new IllegalArgumentException("Parent view may not be null");
        }
        if (abstractC0060c == null) {
            throw new IllegalArgumentException("Callback may not be null");
        }
        this.u = viewGroup;
        this.r = abstractC0060c;
        ViewConfiguration viewConfiguration = ViewConfiguration.get(context);
        this.o = (int) ((context.getResources().getDisplayMetrics().density * 20.0f) + 0.5f);
        this.f1250b = viewConfiguration.getScaledTouchSlop();
        this.m = viewConfiguration.getScaledMaximumFlingVelocity();
        this.n = viewConfiguration.getScaledMinimumFlingVelocity();
        this.q = new OverScroller(context, w);
    }

    private void A() {
        this.l.computeCurrentVelocity(1000, this.m);
        n(e(this.l.getXVelocity(this.f1251c), this.n, this.m), e(this.l.getYVelocity(this.f1251c), this.n, this.m));
    }

    private void B(float f, float f2, int i) {
        int i2 = c(f, f2, i, 1) ? 1 : 0;
        if (c(f2, f, i, 4)) {
            i2 |= 4;
        }
        if (c(f, f2, i, 2)) {
            i2 |= 2;
        }
        if (c(f2, f, i, 8)) {
            i2 |= 8;
        }
        if (i2 != 0) {
            int[] iArr = this.i;
            iArr[i] = iArr[i] | i2;
            this.r.f(i2, i);
        }
    }

    private void C(float f, float f2, int i) {
        q(i);
        float[] fArr = this.f1252d;
        this.f[i] = f;
        fArr[i] = f;
        float[] fArr2 = this.e;
        this.g[i] = f2;
        fArr2[i] = f2;
        this.h[i] = t((int) f, (int) f2);
        this.k |= 1 << i;
    }

    private void D(MotionEvent motionEvent) {
        int pointerCount = motionEvent.getPointerCount();
        for (int i = 0; i < pointerCount; i++) {
            int pointerId = motionEvent.getPointerId(i);
            if (x(pointerId)) {
                float x = motionEvent.getX(i);
                float y = motionEvent.getY(i);
                this.f[pointerId] = x;
                this.g[pointerId] = y;
            }
        }
    }

    private boolean c(float f, float f2, int i, int i2) {
        float fAbs = Math.abs(f);
        float fAbs2 = Math.abs(f2);
        if ((this.h[i] & i2) != i2 || (this.p & i2) == 0 || (this.j[i] & i2) == i2 || (this.i[i] & i2) == i2) {
            return false;
        }
        int i3 = this.f1250b;
        if (fAbs <= i3 && fAbs2 <= i3) {
            return false;
        }
        if (fAbs >= fAbs2 * 0.5f || !this.r.g(i2)) {
            return (this.i[i] & i2) == 0 && fAbs > ((float) this.f1250b);
        }
        int[] iArr = this.j;
        iArr[i] = iArr[i] | i2;
        return false;
    }

    private boolean d(View view, float f, float f2) {
        if (view == null) {
            return false;
        }
        boolean z = this.r.d(view) > 0;
        boolean z2 = this.r.e(view) > 0;
        if (!z || !z2) {
            return z ? Math.abs(f) > ((float) this.f1250b) : z2 && Math.abs(f2) > ((float) this.f1250b);
        }
        float f3 = (f * f) + (f2 * f2);
        int i = this.f1250b;
        return f3 > ((float) (i * i));
    }

    private float e(float f, float f2, float f3) {
        float fAbs = Math.abs(f);
        return fAbs < f2 ? CropImageView.DEFAULT_ASPECT_RATIO : fAbs > f3 ? f > CropImageView.DEFAULT_ASPECT_RATIO ? f3 : -f3 : f;
    }

    private int f(int i, int i2, int i3) {
        int iAbs = Math.abs(i);
        if (iAbs < i2) {
            return 0;
        }
        return iAbs > i3 ? i > 0 ? i3 : -i3 : i;
    }

    private void g() {
        float[] fArr = this.f1252d;
        if (fArr == null) {
            return;
        }
        Arrays.fill(fArr, CropImageView.DEFAULT_ASPECT_RATIO);
        Arrays.fill(this.e, CropImageView.DEFAULT_ASPECT_RATIO);
        Arrays.fill(this.f, CropImageView.DEFAULT_ASPECT_RATIO);
        Arrays.fill(this.g, CropImageView.DEFAULT_ASPECT_RATIO);
        Arrays.fill(this.h, 0);
        Arrays.fill(this.i, 0);
        Arrays.fill(this.j, 0);
        this.k = 0;
    }

    private void h(int i) {
        if (this.f1252d == null || !w(i)) {
            return;
        }
        this.f1252d[i] = 0.0f;
        this.e[i] = 0.0f;
        this.f[i] = 0.0f;
        this.g[i] = 0.0f;
        this.h[i] = 0;
        this.i[i] = 0;
        this.j[i] = 0;
        this.k = ((1 << i) ^ (-1)) & this.k;
    }

    private int i(int i, int i2, int i3) {
        if (i == 0) {
            return 0;
        }
        int width = this.u.getWidth();
        float f = width / 2;
        float fO = f + (o(Math.min(1.0f, Math.abs(i) / width)) * f);
        int iAbs = Math.abs(i2);
        return Math.min(iAbs > 0 ? Math.round(Math.abs(fO / iAbs) * 1000.0f) * 4 : (int) (((Math.abs(i) / i3) + 1.0f) * 256.0f), 600);
    }

    private int j(View view, int i, int i2, int i3, int i4) {
        float f;
        float f2;
        float f3;
        float f4;
        int iF = f(i3, (int) this.n, (int) this.m);
        int iF2 = f(i4, (int) this.n, (int) this.m);
        int iAbs = Math.abs(i);
        int iAbs2 = Math.abs(i2);
        int iAbs3 = Math.abs(iF);
        int iAbs4 = Math.abs(iF2);
        int i5 = iAbs3 + iAbs4;
        int i6 = iAbs + iAbs2;
        if (iF != 0) {
            f = iAbs3;
            f2 = i5;
        } else {
            f = iAbs;
            f2 = i6;
        }
        float f5 = f / f2;
        if (iF2 != 0) {
            f3 = iAbs4;
            f4 = i5;
        } else {
            f3 = iAbs2;
            f4 = i6;
        }
        return (int) ((i(i, iF, this.r.d(view)) * f5) + (i(i2, iF2, this.r.e(view)) * (f3 / f4)));
    }

    public static c l(ViewGroup viewGroup, float f, AbstractC0060c abstractC0060c) {
        c cVarM = m(viewGroup, abstractC0060c);
        cVarM.f1250b = (int) (cVarM.f1250b * (1.0f / f));
        return cVarM;
    }

    public static c m(ViewGroup viewGroup, AbstractC0060c abstractC0060c) {
        return new c(viewGroup.getContext(), viewGroup, abstractC0060c);
    }

    private void n(float f, float f2) {
        this.t = true;
        this.r.l(this.s, f, f2);
        this.t = false;
        if (this.a == 1) {
            E(0);
        }
    }

    private float o(float f) {
        return (float) Math.sin((f - 0.5f) * 0.47123894f);
    }

    private void p(int i, int i2, int i3, int i4) {
        int left = this.s.getLeft();
        int top = this.s.getTop();
        if (i3 != 0) {
            i = this.r.a(this.s, i, i3);
            v.Y(this.s, i - left);
        }
        int i5 = i;
        if (i4 != 0) {
            i2 = this.r.b(this.s, i2, i4);
            v.Z(this.s, i2 - top);
        }
        int i6 = i2;
        if (i3 == 0 && i4 == 0) {
            return;
        }
        this.r.k(this.s, i5, i6, i5 - left, i6 - top);
    }

    private void q(int i) {
        float[] fArr = this.f1252d;
        if (fArr == null || fArr.length <= i) {
            int i2 = i + 1;
            float[] fArr2 = new float[i2];
            float[] fArr3 = new float[i2];
            float[] fArr4 = new float[i2];
            float[] fArr5 = new float[i2];
            int[] iArr = new int[i2];
            int[] iArr2 = new int[i2];
            int[] iArr3 = new int[i2];
            float[] fArr6 = this.f1252d;
            if (fArr6 != null) {
                System.arraycopy(fArr6, 0, fArr2, 0, fArr6.length);
                float[] fArr7 = this.e;
                System.arraycopy(fArr7, 0, fArr3, 0, fArr7.length);
                float[] fArr8 = this.f;
                System.arraycopy(fArr8, 0, fArr4, 0, fArr8.length);
                float[] fArr9 = this.g;
                System.arraycopy(fArr9, 0, fArr5, 0, fArr9.length);
                int[] iArr4 = this.h;
                System.arraycopy(iArr4, 0, iArr, 0, iArr4.length);
                int[] iArr5 = this.i;
                System.arraycopy(iArr5, 0, iArr2, 0, iArr5.length);
                int[] iArr6 = this.j;
                System.arraycopy(iArr6, 0, iArr3, 0, iArr6.length);
            }
            this.f1252d = fArr2;
            this.e = fArr3;
            this.f = fArr4;
            this.g = fArr5;
            this.h = iArr;
            this.i = iArr2;
            this.j = iArr3;
        }
    }

    private boolean s(int i, int i2, int i3, int i4) {
        int left = this.s.getLeft();
        int top = this.s.getTop();
        int i5 = i - left;
        int i6 = i2 - top;
        if (i5 == 0 && i6 == 0) {
            this.q.abortAnimation();
            E(0);
            return false;
        }
        this.q.startScroll(left, top, i5, i6, j(this.s, i5, i6, i3, i4));
        E(2);
        return true;
    }

    private int t(int i, int i2) {
        int i3 = i < this.u.getLeft() + this.o ? 1 : 0;
        if (i2 < this.u.getTop() + this.o) {
            i3 |= 4;
        }
        if (i > this.u.getRight() - this.o) {
            i3 |= 2;
        }
        return i2 > this.u.getBottom() - this.o ? i3 | 8 : i3;
    }

    private boolean x(int i) {
        if (w(i)) {
            return true;
        }
        String str = "Ignoring pointerId=" + i + " because ACTION_DOWN was not received for this pointer before ACTION_MOVE. It likely happened because  ViewDragHelper did not receive all the events in the event stream.";
        return false;
    }

    void E(int i) {
        this.u.removeCallbacks(this.v);
        if (this.a != i) {
            this.a = i;
            this.r.j(i);
            if (this.a == 0) {
                this.s = null;
            }
        }
    }

    public boolean F(int i, int i2) {
        if (this.t) {
            return s(i, i2, (int) this.l.getXVelocity(this.f1251c), (int) this.l.getYVelocity(this.f1251c));
        }
        throw new IllegalStateException("Cannot settleCapturedViewAt outside of a call to Callback#onViewReleased");
    }

    /* JADX WARN: Removed duplicated region for block: B:54:0x00e6  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x00ff  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public boolean G(MotionEvent motionEvent) {
        boolean z;
        View viewR;
        int actionMasked = motionEvent.getActionMasked();
        int actionIndex = motionEvent.getActionIndex();
        if (actionMasked == 0) {
            a();
        }
        if (this.l == null) {
            this.l = VelocityTracker.obtain();
        }
        this.l.addMovement(motionEvent);
        if (actionMasked == 0) {
            float x = motionEvent.getX();
            float y = motionEvent.getY();
            z = false;
            int pointerId = motionEvent.getPointerId(0);
            C(x, y, pointerId);
            View viewR2 = r((int) x, (int) y);
            if (viewR2 == this.s && this.a == 2) {
                I(viewR2, pointerId);
            }
            int i = this.h[pointerId];
            int i2 = this.p;
            if ((i & i2) != 0) {
                this.r.h(i & i2, pointerId);
            }
        } else if (actionMasked == 1) {
            a();
            z = false;
        } else {
            if (actionMasked != 2) {
                if (actionMasked != 3) {
                    if (actionMasked == 5) {
                        int pointerId2 = motionEvent.getPointerId(actionIndex);
                        float x2 = motionEvent.getX(actionIndex);
                        float y2 = motionEvent.getY(actionIndex);
                        C(x2, y2, pointerId2);
                        int i3 = this.a;
                        if (i3 == 0) {
                            int i4 = this.h[pointerId2];
                            int i5 = this.p;
                            if ((i4 & i5) != 0) {
                                this.r.h(i4 & i5, pointerId2);
                            }
                        } else if (i3 == 2 && (viewR = r((int) x2, (int) y2)) == this.s) {
                            I(viewR, pointerId2);
                        }
                    } else if (actionMasked == 6) {
                        h(motionEvent.getPointerId(actionIndex));
                    }
                }
            } else if (this.f1252d != null && this.e != null) {
                int pointerCount = motionEvent.getPointerCount();
                for (int i6 = 0; i6 < pointerCount; i6++) {
                    int pointerId3 = motionEvent.getPointerId(i6);
                    if (x(pointerId3)) {
                        float x3 = motionEvent.getX(i6);
                        float y3 = motionEvent.getY(i6);
                        float f = x3 - this.f1252d[pointerId3];
                        float f2 = y3 - this.e[pointerId3];
                        View viewR3 = r((int) x3, (int) y3);
                        boolean z2 = viewR3 != null && d(viewR3, f, f2);
                        if (z2) {
                            int left = viewR3.getLeft();
                            int i7 = (int) f;
                            int iA = this.r.a(viewR3, left + i7, i7);
                            int top = viewR3.getTop();
                            int i8 = (int) f2;
                            int iB = this.r.b(viewR3, top + i8, i8);
                            int iD = this.r.d(viewR3);
                            int iE = this.r.e(viewR3);
                            if ((iD == 0 || (iD > 0 && iA == left)) && (iE == 0 || (iE > 0 && iB == top))) {
                                break;
                            }
                            B(f, f2, pointerId3);
                            if (this.a == 1 || (z2 && I(viewR3, pointerId3))) {
                                break;
                            }
                        }
                    }
                }
                D(motionEvent);
            }
            z = false;
        }
        if (this.a == 1) {
            return true;
        }
        return z;
    }

    public boolean H(View view, int i, int i2) {
        this.s = view;
        this.f1251c = -1;
        boolean zS = s(i, i2, 0, 0);
        if (!zS && this.a == 0 && this.s != null) {
            this.s = null;
        }
        return zS;
    }

    boolean I(View view, int i) {
        if (view == this.s && this.f1251c == i) {
            return true;
        }
        if (view == null || !this.r.m(view, i)) {
            return false;
        }
        this.f1251c = i;
        b(view, i);
        return true;
    }

    public void a() {
        this.f1251c = -1;
        g();
        VelocityTracker velocityTracker = this.l;
        if (velocityTracker != null) {
            velocityTracker.recycle();
            this.l = null;
        }
    }

    public void b(View view, int i) {
        if (view.getParent() == this.u) {
            this.s = view;
            this.f1251c = i;
            this.r.i(view, i);
            E(1);
            return;
        }
        throw new IllegalArgumentException("captureChildView: parameter must be a descendant of the ViewDragHelper's tracked parent view (" + this.u + ")");
    }

    public boolean k(boolean z) {
        if (this.a == 2) {
            boolean zComputeScrollOffset = this.q.computeScrollOffset();
            int currX = this.q.getCurrX();
            int currY = this.q.getCurrY();
            int left = currX - this.s.getLeft();
            int top = currY - this.s.getTop();
            if (left != 0) {
                v.Y(this.s, left);
            }
            if (top != 0) {
                v.Z(this.s, top);
            }
            if (left != 0 || top != 0) {
                this.r.k(this.s, currX, currY, left, top);
            }
            if (zComputeScrollOffset && currX == this.q.getFinalX() && currY == this.q.getFinalY()) {
                this.q.abortAnimation();
                zComputeScrollOffset = false;
            }
            if (!zComputeScrollOffset) {
                if (z) {
                    this.u.post(this.v);
                } else {
                    E(0);
                }
            }
        }
        return this.a == 2;
    }

    public View r(int i, int i2) {
        for (int childCount = this.u.getChildCount() - 1; childCount >= 0; childCount--) {
            ViewGroup viewGroup = this.u;
            this.r.c(childCount);
            View childAt = viewGroup.getChildAt(childCount);
            if (i >= childAt.getLeft() && i < childAt.getRight() && i2 >= childAt.getTop() && i2 < childAt.getBottom()) {
                return childAt;
            }
        }
        return null;
    }

    public int u() {
        return this.f1250b;
    }

    public boolean v(int i, int i2) {
        return y(this.s, i, i2);
    }

    public boolean w(int i) {
        return ((1 << i) & this.k) != 0;
    }

    public boolean y(View view, int i, int i2) {
        return view != null && i >= view.getLeft() && i < view.getRight() && i2 >= view.getTop() && i2 < view.getBottom();
    }

    public void z(MotionEvent motionEvent) {
        int i;
        int actionMasked = motionEvent.getActionMasked();
        int actionIndex = motionEvent.getActionIndex();
        if (actionMasked == 0) {
            a();
        }
        if (this.l == null) {
            this.l = VelocityTracker.obtain();
        }
        this.l.addMovement(motionEvent);
        int i2 = 0;
        if (actionMasked == 0) {
            float x = motionEvent.getX();
            float y = motionEvent.getY();
            int pointerId = motionEvent.getPointerId(0);
            View viewR = r((int) x, (int) y);
            C(x, y, pointerId);
            I(viewR, pointerId);
            int i3 = this.h[pointerId];
            int i4 = this.p;
            if ((i3 & i4) != 0) {
                this.r.h(i3 & i4, pointerId);
                return;
            }
            return;
        }
        if (actionMasked == 1) {
            if (this.a == 1) {
                A();
            }
            a();
            return;
        }
        if (actionMasked == 2) {
            if (this.a == 1) {
                if (x(this.f1251c)) {
                    int iFindPointerIndex = motionEvent.findPointerIndex(this.f1251c);
                    float x2 = motionEvent.getX(iFindPointerIndex);
                    float y2 = motionEvent.getY(iFindPointerIndex);
                    float[] fArr = this.f;
                    int i5 = this.f1251c;
                    int i6 = (int) (x2 - fArr[i5]);
                    int i7 = (int) (y2 - this.g[i5]);
                    p(this.s.getLeft() + i6, this.s.getTop() + i7, i6, i7);
                    D(motionEvent);
                    return;
                }
                return;
            }
            int pointerCount = motionEvent.getPointerCount();
            while (i2 < pointerCount) {
                int pointerId2 = motionEvent.getPointerId(i2);
                if (x(pointerId2)) {
                    float x3 = motionEvent.getX(i2);
                    float y3 = motionEvent.getY(i2);
                    float f = x3 - this.f1252d[pointerId2];
                    float f2 = y3 - this.e[pointerId2];
                    B(f, f2, pointerId2);
                    if (this.a != 1) {
                        View viewR2 = r((int) x3, (int) y3);
                        if (d(viewR2, f, f2) && I(viewR2, pointerId2)) {
                            break;
                        }
                    } else {
                        break;
                    }
                }
                i2++;
            }
            D(motionEvent);
            return;
        }
        if (actionMasked == 3) {
            if (this.a == 1) {
                n(CropImageView.DEFAULT_ASPECT_RATIO, CropImageView.DEFAULT_ASPECT_RATIO);
            }
            a();
            return;
        }
        if (actionMasked == 5) {
            int pointerId3 = motionEvent.getPointerId(actionIndex);
            float x4 = motionEvent.getX(actionIndex);
            float y4 = motionEvent.getY(actionIndex);
            C(x4, y4, pointerId3);
            if (this.a != 0) {
                if (v((int) x4, (int) y4)) {
                    I(this.s, pointerId3);
                    return;
                }
                return;
            } else {
                I(r((int) x4, (int) y4), pointerId3);
                int i8 = this.h[pointerId3];
                int i9 = this.p;
                if ((i8 & i9) != 0) {
                    this.r.h(i8 & i9, pointerId3);
                    return;
                }
                return;
            }
        }
        if (actionMasked != 6) {
            return;
        }
        int pointerId4 = motionEvent.getPointerId(actionIndex);
        if (this.a == 1 && pointerId4 == this.f1251c) {
            int pointerCount2 = motionEvent.getPointerCount();
            while (true) {
                if (i2 >= pointerCount2) {
                    i = -1;
                    break;
                }
                int pointerId5 = motionEvent.getPointerId(i2);
                if (pointerId5 != this.f1251c) {
                    View viewR3 = r((int) motionEvent.getX(i2), (int) motionEvent.getY(i2));
                    View view = this.s;
                    if (viewR3 == view && I(view, pointerId5)) {
                        i = this.f1251c;
                        break;
                    }
                }
                i2++;
            }
            if (i == -1) {
                A();
            }
        }
        h(pointerId4);
    }
}
