package c.a.l.a;

import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Outline;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.SystemClock;
import android.util.SparseArray;

/* JADX INFO: loaded from: /Volumes/stuff/macbook/misc/CPC200-CCPA/rework/dumped_real_classes.dex */
class b extends Drawable implements Drawable.Callback {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private d f1013b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Rect f1014c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Drawable f1015d;
    private Drawable e;
    private boolean g;
    private boolean i;
    private Runnable j;
    private long k;
    private long l;
    private c m;
    private int f = 255;
    private int h = -1;

    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            b.this.a(true);
            b.this.invalidateSelf();
        }
    }

    /* JADX INFO: renamed from: c.a.l.a.b$b, reason: collision with other inner class name */
    private static class C0046b {
        public static boolean a(Drawable.ConstantState constantState) {
            return constantState.canApplyTheme();
        }

        public static void b(Drawable drawable, Outline outline) {
            drawable.getOutline(outline);
        }

        public static Resources c(Resources.Theme theme) {
            return theme.getResources();
        }
    }

    static class c implements Drawable.Callback {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private Drawable.Callback f1017b;

        c() {
        }

        public Drawable.Callback a() {
            Drawable.Callback callback = this.f1017b;
            this.f1017b = null;
            return callback;
        }

        public c b(Drawable.Callback callback) {
            this.f1017b = callback;
            return this;
        }

        @Override // android.graphics.drawable.Drawable.Callback
        public void invalidateDrawable(Drawable drawable) {
        }

        @Override // android.graphics.drawable.Drawable.Callback
        public void scheduleDrawable(Drawable drawable, Runnable runnable, long j) {
            Drawable.Callback callback = this.f1017b;
            if (callback != null) {
                callback.scheduleDrawable(drawable, runnable, j);
            }
        }

        @Override // android.graphics.drawable.Drawable.Callback
        public void unscheduleDrawable(Drawable drawable, Runnable runnable) {
            Drawable.Callback callback = this.f1017b;
            if (callback != null) {
                callback.unscheduleDrawable(drawable, runnable);
            }
        }
    }

    static abstract class d extends Drawable.ConstantState {
        int A;
        int B;
        boolean C;
        ColorFilter D;
        boolean E;
        ColorStateList F;
        PorterDuff.Mode G;
        boolean H;
        boolean I;
        final b a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        Resources f1018b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        int f1019c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        int f1020d;
        int e;
        SparseArray<Drawable.ConstantState> f;
        Drawable[] g;
        int h;
        boolean i;
        boolean j;
        Rect k;
        boolean l;
        boolean m;
        int n;
        int o;
        int p;
        int q;
        boolean r;
        int s;
        boolean t;
        boolean u;
        boolean v;
        boolean w;
        boolean x;
        boolean y;
        int z;

        d(d dVar, b bVar, Resources resources) {
            this.i = false;
            this.l = false;
            this.x = true;
            this.A = 0;
            this.B = 0;
            this.a = bVar;
            this.f1018b = resources != null ? resources : dVar != null ? dVar.f1018b : null;
            int iF = b.f(resources, dVar != null ? dVar.f1019c : 0);
            this.f1019c = iF;
            if (dVar == null) {
                this.g = new Drawable[10];
                this.h = 0;
                return;
            }
            this.f1020d = dVar.f1020d;
            this.e = dVar.e;
            this.v = true;
            this.w = true;
            this.i = dVar.i;
            this.l = dVar.l;
            this.x = dVar.x;
            this.y = dVar.y;
            this.z = dVar.z;
            this.A = dVar.A;
            this.B = dVar.B;
            this.C = dVar.C;
            this.D = dVar.D;
            this.E = dVar.E;
            this.F = dVar.F;
            this.G = dVar.G;
            this.H = dVar.H;
            this.I = dVar.I;
            if (dVar.f1019c == iF) {
                if (dVar.j) {
                    this.k = dVar.k != null ? new Rect(dVar.k) : null;
                    this.j = true;
                }
                if (dVar.m) {
                    this.n = dVar.n;
                    this.o = dVar.o;
                    this.p = dVar.p;
                    this.q = dVar.q;
                    this.m = true;
                }
            }
            if (dVar.r) {
                this.s = dVar.s;
                this.r = true;
            }
            if (dVar.t) {
                this.u = dVar.u;
                this.t = true;
            }
            Drawable[] drawableArr = dVar.g;
            this.g = new Drawable[drawableArr.length];
            this.h = dVar.h;
            SparseArray<Drawable.ConstantState> sparseArray = dVar.f;
            if (sparseArray != null) {
                this.f = sparseArray.clone();
            } else {
                this.f = new SparseArray<>(this.h);
            }
            int i = this.h;
            for (int i2 = 0; i2 < i; i2++) {
                if (drawableArr[i2] != null) {
                    Drawable.ConstantState constantState = drawableArr[i2].getConstantState();
                    if (constantState != null) {
                        this.f.put(i2, constantState);
                    } else {
                        this.g[i2] = drawableArr[i2];
                    }
                }
            }
        }

        private void e() {
            SparseArray<Drawable.ConstantState> sparseArray = this.f;
            if (sparseArray != null) {
                int size = sparseArray.size();
                for (int i = 0; i < size; i++) {
                    this.g[this.f.keyAt(i)] = s(this.f.valueAt(i).newDrawable(this.f1018b));
                }
                this.f = null;
            }
        }

        private Drawable s(Drawable drawable) {
            if (Build.VERSION.SDK_INT >= 23) {
                androidx.core.graphics.drawable.a.m(drawable, this.z);
            }
            Drawable drawableMutate = drawable.mutate();
            drawableMutate.setCallback(this.a);
            return drawableMutate;
        }

        public final int a(Drawable drawable) {
            int i = this.h;
            if (i >= this.g.length) {
                o(i, i + 10);
            }
            drawable.mutate();
            drawable.setVisible(false, true);
            drawable.setCallback(this.a);
            this.g[i] = drawable;
            this.h++;
            this.e = drawable.getChangingConfigurations() | this.e;
            p();
            this.k = null;
            this.j = false;
            this.m = false;
            this.v = false;
            return i;
        }

        final void b(Resources.Theme theme) {
            if (theme != null) {
                e();
                int i = this.h;
                Drawable[] drawableArr = this.g;
                for (int i2 = 0; i2 < i; i2++) {
                    if (drawableArr[i2] != null && androidx.core.graphics.drawable.a.b(drawableArr[i2])) {
                        androidx.core.graphics.drawable.a.a(drawableArr[i2], theme);
                        this.e |= drawableArr[i2].getChangingConfigurations();
                    }
                }
                y(C0046b.c(theme));
            }
        }

        public boolean c() {
            if (this.v) {
                return this.w;
            }
            e();
            this.v = true;
            int i = this.h;
            Drawable[] drawableArr = this.g;
            for (int i2 = 0; i2 < i; i2++) {
                if (drawableArr[i2].getConstantState() == null) {
                    this.w = false;
                    return false;
                }
            }
            this.w = true;
            return true;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public boolean canApplyTheme() {
            int i = this.h;
            Drawable[] drawableArr = this.g;
            for (int i2 = 0; i2 < i; i2++) {
                Drawable drawable = drawableArr[i2];
                if (drawable == null) {
                    Drawable.ConstantState constantState = this.f.get(i2);
                    if (constantState != null && C0046b.a(constantState)) {
                        return true;
                    }
                } else if (androidx.core.graphics.drawable.a.b(drawable)) {
                    return true;
                }
            }
            return false;
        }

        protected void d() {
            this.m = true;
            e();
            int i = this.h;
            Drawable[] drawableArr = this.g;
            this.o = -1;
            this.n = -1;
            this.q = 0;
            this.p = 0;
            for (int i2 = 0; i2 < i; i2++) {
                Drawable drawable = drawableArr[i2];
                int intrinsicWidth = drawable.getIntrinsicWidth();
                if (intrinsicWidth > this.n) {
                    this.n = intrinsicWidth;
                }
                int intrinsicHeight = drawable.getIntrinsicHeight();
                if (intrinsicHeight > this.o) {
                    this.o = intrinsicHeight;
                }
                int minimumWidth = drawable.getMinimumWidth();
                if (minimumWidth > this.p) {
                    this.p = minimumWidth;
                }
                int minimumHeight = drawable.getMinimumHeight();
                if (minimumHeight > this.q) {
                    this.q = minimumHeight;
                }
            }
        }

        final int f() {
            return this.g.length;
        }

        public final Drawable g(int i) {
            int iIndexOfKey;
            Drawable drawable = this.g[i];
            if (drawable != null) {
                return drawable;
            }
            SparseArray<Drawable.ConstantState> sparseArray = this.f;
            if (sparseArray == null || (iIndexOfKey = sparseArray.indexOfKey(i)) < 0) {
                return null;
            }
            Drawable drawableS = s(this.f.valueAt(iIndexOfKey).newDrawable(this.f1018b));
            this.g[i] = drawableS;
            this.f.removeAt(iIndexOfKey);
            if (this.f.size() == 0) {
                this.f = null;
            }
            return drawableS;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public int getChangingConfigurations() {
            return this.f1020d | this.e;
        }

        public final int h() {
            return this.h;
        }

        public final int i() {
            if (!this.m) {
                d();
            }
            return this.o;
        }

        public final int j() {
            if (!this.m) {
                d();
            }
            return this.q;
        }

        public final int k() {
            if (!this.m) {
                d();
            }
            return this.p;
        }

        public final Rect l() {
            Rect rect = null;
            if (this.i) {
                return null;
            }
            if (this.k != null || this.j) {
                return this.k;
            }
            e();
            Rect rect2 = new Rect();
            int i = this.h;
            Drawable[] drawableArr = this.g;
            for (int i2 = 0; i2 < i; i2++) {
                if (drawableArr[i2].getPadding(rect2)) {
                    if (rect == null) {
                        rect = new Rect(0, 0, 0, 0);
                    }
                    int i3 = rect2.left;
                    if (i3 > rect.left) {
                        rect.left = i3;
                    }
                    int i4 = rect2.top;
                    if (i4 > rect.top) {
                        rect.top = i4;
                    }
                    int i5 = rect2.right;
                    if (i5 > rect.right) {
                        rect.right = i5;
                    }
                    int i6 = rect2.bottom;
                    if (i6 > rect.bottom) {
                        rect.bottom = i6;
                    }
                }
            }
            this.j = true;
            this.k = rect;
            return rect;
        }

        public final int m() {
            if (!this.m) {
                d();
            }
            return this.n;
        }

        public final int n() {
            if (this.r) {
                return this.s;
            }
            e();
            int i = this.h;
            Drawable[] drawableArr = this.g;
            int opacity = i > 0 ? drawableArr[0].getOpacity() : -2;
            for (int i2 = 1; i2 < i; i2++) {
                opacity = Drawable.resolveOpacity(opacity, drawableArr[i2].getOpacity());
            }
            this.s = opacity;
            this.r = true;
            return opacity;
        }

        public void o(int i, int i2) {
            Drawable[] drawableArr = new Drawable[i2];
            Drawable[] drawableArr2 = this.g;
            if (drawableArr2 != null) {
                System.arraycopy(drawableArr2, 0, drawableArr, 0, i);
            }
            this.g = drawableArr;
        }

        void p() {
            this.r = false;
            this.t = false;
        }

        public final boolean q() {
            return this.l;
        }

        abstract void r();

        public final void t(boolean z) {
            this.l = z;
        }

        public final void u(int i) {
            this.A = i;
        }

        public final void v(int i) {
            this.B = i;
        }

        final boolean w(int i, int i2) {
            int i3 = this.h;
            Drawable[] drawableArr = this.g;
            boolean z = false;
            for (int i4 = 0; i4 < i3; i4++) {
                if (drawableArr[i4] != null) {
                    boolean zM = Build.VERSION.SDK_INT >= 23 ? androidx.core.graphics.drawable.a.m(drawableArr[i4], i) : false;
                    if (i4 == i2) {
                        z = zM;
                    }
                }
            }
            this.z = i;
            return z;
        }

        public final void x(boolean z) {
            this.i = z;
        }

        final void y(Resources resources) {
            if (resources != null) {
                this.f1018b = resources;
                int iF = b.f(resources, this.f1019c);
                int i = this.f1019c;
                this.f1019c = iF;
                if (i != iF) {
                    this.m = false;
                    this.j = false;
                }
            }
        }
    }

    b() {
    }

    private void d(Drawable drawable) {
        if (this.m == null) {
            this.m = new c();
        }
        c cVar = this.m;
        cVar.b(drawable.getCallback());
        drawable.setCallback(cVar);
        try {
            if (this.f1013b.A <= 0 && this.g) {
                drawable.setAlpha(this.f);
            }
            if (this.f1013b.E) {
                drawable.setColorFilter(this.f1013b.D);
            } else {
                if (this.f1013b.H) {
                    androidx.core.graphics.drawable.a.o(drawable, this.f1013b.F);
                }
                if (this.f1013b.I) {
                    androidx.core.graphics.drawable.a.p(drawable, this.f1013b.G);
                }
            }
            drawable.setVisible(isVisible(), true);
            drawable.setDither(this.f1013b.x);
            drawable.setState(getState());
            drawable.setLevel(getLevel());
            drawable.setBounds(getBounds());
            if (Build.VERSION.SDK_INT >= 23) {
                androidx.core.graphics.drawable.a.m(drawable, androidx.core.graphics.drawable.a.f(this));
            }
            if (Build.VERSION.SDK_INT >= 19) {
                androidx.core.graphics.drawable.a.j(drawable, this.f1013b.C);
            }
            Rect rect = this.f1014c;
            if (Build.VERSION.SDK_INT >= 21 && rect != null) {
                androidx.core.graphics.drawable.a.l(drawable, rect.left, rect.top, rect.right, rect.bottom);
            }
        } finally {
            drawable.setCallback(this.m.a());
        }
    }

    private boolean e() {
        return isAutoMirrored() && androidx.core.graphics.drawable.a.f(this) == 1;
    }

    static int f(Resources resources, int i) {
        if (resources != null) {
            i = resources.getDisplayMetrics().densityDpi;
        }
        if (i == 0) {
            return 160;
        }
        return i;
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x003f  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0065  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x006a A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:26:? A[ADDED_TO_REGION, RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    void a(boolean z) {
        boolean z2;
        Drawable drawable;
        boolean z3 = true;
        this.g = true;
        long jUptimeMillis = SystemClock.uptimeMillis();
        Drawable drawable2 = this.f1015d;
        if (drawable2 != null) {
            long j = this.k;
            if (j != 0) {
                if (j <= jUptimeMillis) {
                    drawable2.setAlpha(this.f);
                    this.k = 0L;
                } else {
                    drawable2.setAlpha(((255 - (((int) ((j - jUptimeMillis) * 255)) / this.f1013b.A)) * this.f) / 255);
                    z2 = true;
                }
            }
            drawable = this.e;
            if (drawable == null) {
                long j2 = this.l;
                if (j2 != 0) {
                    if (j2 <= jUptimeMillis) {
                        drawable.setVisible(false, false);
                        this.e = null;
                        this.l = 0L;
                    } else {
                        drawable.setAlpha(((((int) ((j2 - jUptimeMillis) * 255)) / this.f1013b.B) * this.f) / 255);
                    }
                }
                if (z && z3) {
                    scheduleSelf(this.j, jUptimeMillis + 16);
                    return;
                }
                return;
            }
            this.l = 0L;
            z3 = z2;
            if (z) {
                return;
            } else {
                return;
            }
        }
        this.k = 0L;
        z2 = false;
        drawable = this.e;
        if (drawable == null) {
        }
        z3 = z2;
        if (z) {
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void applyTheme(Resources.Theme theme) {
        this.f1013b.b(theme);
    }

    d b() {
        throw null;
    }

    int c() {
        return this.h;
    }

    @Override // android.graphics.drawable.Drawable
    public boolean canApplyTheme() {
        return this.f1013b.canApplyTheme();
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        Drawable drawable = this.f1015d;
        if (drawable != null) {
            drawable.draw(canvas);
        }
        Drawable drawable2 = this.e;
        if (drawable2 != null) {
            drawable2.draw(canvas);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:26:0x0055  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    boolean g(int i) {
        if (i == this.h) {
            return false;
        }
        long jUptimeMillis = SystemClock.uptimeMillis();
        if (this.f1013b.B > 0) {
            Drawable drawable = this.e;
            if (drawable != null) {
                drawable.setVisible(false, false);
            }
            Drawable drawable2 = this.f1015d;
            if (drawable2 != null) {
                this.e = drawable2;
                this.l = ((long) this.f1013b.B) + jUptimeMillis;
            } else {
                this.e = null;
                this.l = 0L;
            }
        } else {
            Drawable drawable3 = this.f1015d;
            if (drawable3 != null) {
                drawable3.setVisible(false, false);
            }
        }
        if (i >= 0) {
            d dVar = this.f1013b;
            if (i < dVar.h) {
                Drawable drawableG = dVar.g(i);
                this.f1015d = drawableG;
                this.h = i;
                if (drawableG != null) {
                    int i2 = this.f1013b.A;
                    if (i2 > 0) {
                        this.k = jUptimeMillis + ((long) i2);
                    }
                    d(drawableG);
                }
            } else {
                this.f1015d = null;
                this.h = -1;
            }
        }
        if (this.k != 0 || this.l != 0) {
            Runnable runnable = this.j;
            if (runnable == null) {
                this.j = new a();
            } else {
                unscheduleSelf(runnable);
            }
            a(true);
        }
        invalidateSelf();
        return true;
    }

    @Override // android.graphics.drawable.Drawable
    public int getAlpha() {
        return this.f;
    }

    @Override // android.graphics.drawable.Drawable
    public int getChangingConfigurations() {
        return super.getChangingConfigurations() | this.f1013b.getChangingConfigurations();
    }

    @Override // android.graphics.drawable.Drawable
    public final Drawable.ConstantState getConstantState() {
        if (!this.f1013b.c()) {
            return null;
        }
        this.f1013b.f1020d = getChangingConfigurations();
        return this.f1013b;
    }

    @Override // android.graphics.drawable.Drawable
    public Drawable getCurrent() {
        return this.f1015d;
    }

    @Override // android.graphics.drawable.Drawable
    public void getHotspotBounds(Rect rect) {
        Rect rect2 = this.f1014c;
        if (rect2 != null) {
            rect.set(rect2);
        } else {
            super.getHotspotBounds(rect);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        if (this.f1013b.q()) {
            return this.f1013b.i();
        }
        Drawable drawable = this.f1015d;
        if (drawable != null) {
            return drawable.getIntrinsicHeight();
        }
        return -1;
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        if (this.f1013b.q()) {
            return this.f1013b.m();
        }
        Drawable drawable = this.f1015d;
        if (drawable != null) {
            return drawable.getIntrinsicWidth();
        }
        return -1;
    }

    @Override // android.graphics.drawable.Drawable
    public int getMinimumHeight() {
        if (this.f1013b.q()) {
            return this.f1013b.j();
        }
        Drawable drawable = this.f1015d;
        if (drawable != null) {
            return drawable.getMinimumHeight();
        }
        return 0;
    }

    @Override // android.graphics.drawable.Drawable
    public int getMinimumWidth() {
        if (this.f1013b.q()) {
            return this.f1013b.k();
        }
        Drawable drawable = this.f1015d;
        if (drawable != null) {
            return drawable.getMinimumWidth();
        }
        return 0;
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        Drawable drawable = this.f1015d;
        if (drawable == null || !drawable.isVisible()) {
            return -2;
        }
        return this.f1013b.n();
    }

    @Override // android.graphics.drawable.Drawable
    public void getOutline(Outline outline) {
        Drawable drawable = this.f1015d;
        if (drawable != null) {
            C0046b.b(drawable, outline);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public boolean getPadding(Rect rect) {
        boolean padding;
        Rect rectL = this.f1013b.l();
        if (rectL != null) {
            rect.set(rectL);
            padding = (rectL.right | ((rectL.left | rectL.top) | rectL.bottom)) != 0;
        } else {
            Drawable drawable = this.f1015d;
            padding = drawable != null ? drawable.getPadding(rect) : super.getPadding(rect);
        }
        if (e()) {
            int i = rect.left;
            rect.left = rect.right;
            rect.right = i;
        }
        return padding;
    }

    void h(d dVar) {
        this.f1013b = dVar;
        int i = this.h;
        if (i >= 0) {
            Drawable drawableG = dVar.g(i);
            this.f1015d = drawableG;
            if (drawableG != null) {
                d(drawableG);
            }
        }
        this.e = null;
    }

    final void i(Resources resources) {
        this.f1013b.y(resources);
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public void invalidateDrawable(Drawable drawable) {
        d dVar = this.f1013b;
        if (dVar != null) {
            dVar.p();
        }
        if (drawable != this.f1015d || getCallback() == null) {
            return;
        }
        getCallback().invalidateDrawable(this);
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isAutoMirrored() {
        return this.f1013b.C;
    }

    @Override // android.graphics.drawable.Drawable
    public void jumpToCurrentState() {
        boolean z;
        Drawable drawable = this.e;
        boolean z2 = true;
        if (drawable != null) {
            drawable.jumpToCurrentState();
            this.e = null;
            z = true;
        } else {
            z = false;
        }
        Drawable drawable2 = this.f1015d;
        if (drawable2 != null) {
            drawable2.jumpToCurrentState();
            if (this.g) {
                this.f1015d.setAlpha(this.f);
            }
        }
        if (this.l != 0) {
            this.l = 0L;
            z = true;
        }
        if (this.k != 0) {
            this.k = 0L;
        } else {
            z2 = z;
        }
        if (z2) {
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public Drawable mutate() {
        if (!this.i && super.mutate() == this) {
            d dVarB = b();
            dVarB.r();
            h(dVarB);
            this.i = true;
        }
        return this;
    }

    @Override // android.graphics.drawable.Drawable
    protected void onBoundsChange(Rect rect) {
        Drawable drawable = this.e;
        if (drawable != null) {
            drawable.setBounds(rect);
        }
        Drawable drawable2 = this.f1015d;
        if (drawable2 != null) {
            drawable2.setBounds(rect);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public boolean onLayoutDirectionChanged(int i) {
        return this.f1013b.w(i, c());
    }

    @Override // android.graphics.drawable.Drawable
    protected boolean onLevelChange(int i) {
        Drawable drawable = this.e;
        if (drawable != null) {
            return drawable.setLevel(i);
        }
        Drawable drawable2 = this.f1015d;
        if (drawable2 != null) {
            return drawable2.setLevel(i);
        }
        return false;
    }

    @Override // android.graphics.drawable.Drawable
    protected boolean onStateChange(int[] iArr) {
        Drawable drawable = this.e;
        if (drawable != null) {
            return drawable.setState(iArr);
        }
        Drawable drawable2 = this.f1015d;
        if (drawable2 != null) {
            return drawable2.setState(iArr);
        }
        return false;
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public void scheduleDrawable(Drawable drawable, Runnable runnable, long j) {
        if (drawable != this.f1015d || getCallback() == null) {
            return;
        }
        getCallback().scheduleDrawable(this, runnable, j);
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i) {
        if (this.g && this.f == i) {
            return;
        }
        this.g = true;
        this.f = i;
        Drawable drawable = this.f1015d;
        if (drawable != null) {
            if (this.k == 0) {
                drawable.setAlpha(i);
            } else {
                a(false);
            }
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setAutoMirrored(boolean z) {
        d dVar = this.f1013b;
        if (dVar.C != z) {
            dVar.C = z;
            Drawable drawable = this.f1015d;
            if (drawable != null) {
                androidx.core.graphics.drawable.a.j(drawable, z);
            }
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        d dVar = this.f1013b;
        dVar.E = true;
        if (dVar.D != colorFilter) {
            dVar.D = colorFilter;
            Drawable drawable = this.f1015d;
            if (drawable != null) {
                drawable.setColorFilter(colorFilter);
            }
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setDither(boolean z) {
        d dVar = this.f1013b;
        if (dVar.x != z) {
            dVar.x = z;
            Drawable drawable = this.f1015d;
            if (drawable != null) {
                drawable.setDither(z);
            }
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setHotspot(float f, float f2) {
        Drawable drawable = this.f1015d;
        if (drawable != null) {
            androidx.core.graphics.drawable.a.k(drawable, f, f2);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setHotspotBounds(int i, int i2, int i3, int i4) {
        Rect rect = this.f1014c;
        if (rect == null) {
            this.f1014c = new Rect(i, i2, i3, i4);
        } else {
            rect.set(i, i2, i3, i4);
        }
        Drawable drawable = this.f1015d;
        if (drawable != null) {
            androidx.core.graphics.drawable.a.l(drawable, i, i2, i3, i4);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setTintList(ColorStateList colorStateList) {
        d dVar = this.f1013b;
        dVar.H = true;
        if (dVar.F != colorStateList) {
            dVar.F = colorStateList;
            androidx.core.graphics.drawable.a.o(this.f1015d, colorStateList);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setTintMode(PorterDuff.Mode mode) {
        d dVar = this.f1013b;
        dVar.I = true;
        if (dVar.G != mode) {
            dVar.G = mode;
            androidx.core.graphics.drawable.a.p(this.f1015d, mode);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public boolean setVisible(boolean z, boolean z2) {
        boolean visible = super.setVisible(z, z2);
        Drawable drawable = this.e;
        if (drawable != null) {
            drawable.setVisible(z, z2);
        }
        Drawable drawable2 = this.f1015d;
        if (drawable2 != null) {
            drawable2.setVisible(z, z2);
        }
        return visible;
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public void unscheduleDrawable(Drawable drawable, Runnable runnable) {
        if (drawable != this.f1015d || getCallback() == null) {
            return;
        }
        getCallback().unscheduleDrawable(this, runnable);
    }
}
