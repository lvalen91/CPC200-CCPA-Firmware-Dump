package p016c.p017a.p020l.p021a;

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
import androidx.core.graphics.drawable.C0251a;

/* JADX INFO: renamed from: c.a.l.a.b */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
class C0505b extends Drawable implements Drawable.Callback {

    /* JADX INFO: renamed from: b */
    private d f3106b;

    /* JADX INFO: renamed from: c */
    private Rect f3107c;

    /* JADX INFO: renamed from: d */
    private Drawable f3108d;

    /* JADX INFO: renamed from: e */
    private Drawable f3109e;

    /* JADX INFO: renamed from: g */
    private boolean f3111g;

    /* JADX INFO: renamed from: i */
    private boolean f3113i;

    /* JADX INFO: renamed from: j */
    private Runnable f3114j;

    /* JADX INFO: renamed from: k */
    private long f3115k;

    /* JADX INFO: renamed from: l */
    private long f3116l;

    /* JADX INFO: renamed from: m */
    private c f3117m;

    /* JADX INFO: renamed from: f */
    private int f3110f = 255;

    /* JADX INFO: renamed from: h */
    private int f3112h = -1;

    /* JADX INFO: renamed from: c.a.l.a.b$a */
    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            C0505b.this.m4081a(true);
            C0505b.this.invalidateSelf();
        }
    }

    /* JADX INFO: renamed from: c.a.l.a.b$b */
    private static class b {
        /* JADX INFO: renamed from: a */
        public static boolean m4085a(Drawable.ConstantState constantState) {
            return constantState.canApplyTheme();
        }

        /* JADX INFO: renamed from: b */
        public static void m4086b(Drawable drawable, Outline outline) {
            drawable.getOutline(outline);
        }

        /* JADX INFO: renamed from: c */
        public static Resources m4087c(Resources.Theme theme) {
            return theme.getResources();
        }
    }

    /* JADX INFO: renamed from: c.a.l.a.b$c */
    static class c implements Drawable.Callback {

        /* JADX INFO: renamed from: b */
        private Drawable.Callback f3119b;

        c() {
        }

        /* JADX INFO: renamed from: a */
        public Drawable.Callback m4088a() {
            Drawable.Callback callback = this.f3119b;
            this.f3119b = null;
            return callback;
        }

        /* JADX INFO: renamed from: b */
        public c m4089b(Drawable.Callback callback) {
            this.f3119b = callback;
            return this;
        }

        @Override // android.graphics.drawable.Drawable.Callback
        public void invalidateDrawable(Drawable drawable) {
        }

        @Override // android.graphics.drawable.Drawable.Callback
        public void scheduleDrawable(Drawable drawable, Runnable runnable, long j) {
            Drawable.Callback callback = this.f3119b;
            if (callback != null) {
                callback.scheduleDrawable(drawable, runnable, j);
            }
        }

        @Override // android.graphics.drawable.Drawable.Callback
        public void unscheduleDrawable(Drawable drawable, Runnable runnable) {
            Drawable.Callback callback = this.f3119b;
            if (callback != null) {
                callback.unscheduleDrawable(drawable, runnable);
            }
        }
    }

    /* JADX INFO: renamed from: c.a.l.a.b$d */
    static abstract class d extends Drawable.ConstantState {

        /* JADX INFO: renamed from: A */
        int f3120A;

        /* JADX INFO: renamed from: B */
        int f3121B;

        /* JADX INFO: renamed from: C */
        boolean f3122C;

        /* JADX INFO: renamed from: D */
        ColorFilter f3123D;

        /* JADX INFO: renamed from: E */
        boolean f3124E;

        /* JADX INFO: renamed from: F */
        ColorStateList f3125F;

        /* JADX INFO: renamed from: G */
        PorterDuff.Mode f3126G;

        /* JADX INFO: renamed from: H */
        boolean f3127H;

        /* JADX INFO: renamed from: I */
        boolean f3128I;

        /* JADX INFO: renamed from: a */
        final C0505b f3129a;

        /* JADX INFO: renamed from: b */
        Resources f3130b;

        /* JADX INFO: renamed from: c */
        int f3131c;

        /* JADX INFO: renamed from: d */
        int f3132d;

        /* JADX INFO: renamed from: e */
        int f3133e;

        /* JADX INFO: renamed from: f */
        SparseArray<Drawable.ConstantState> f3134f;

        /* JADX INFO: renamed from: g */
        Drawable[] f3135g;

        /* JADX INFO: renamed from: h */
        int f3136h;

        /* JADX INFO: renamed from: i */
        boolean f3137i;

        /* JADX INFO: renamed from: j */
        boolean f3138j;

        /* JADX INFO: renamed from: k */
        Rect f3139k;

        /* JADX INFO: renamed from: l */
        boolean f3140l;

        /* JADX INFO: renamed from: m */
        boolean f3141m;

        /* JADX INFO: renamed from: n */
        int f3142n;

        /* JADX INFO: renamed from: o */
        int f3143o;

        /* JADX INFO: renamed from: p */
        int f3144p;

        /* JADX INFO: renamed from: q */
        int f3145q;

        /* JADX INFO: renamed from: r */
        boolean f3146r;

        /* JADX INFO: renamed from: s */
        int f3147s;

        /* JADX INFO: renamed from: t */
        boolean f3148t;

        /* JADX INFO: renamed from: u */
        boolean f3149u;

        /* JADX INFO: renamed from: v */
        boolean f3150v;

        /* JADX INFO: renamed from: w */
        boolean f3151w;

        /* JADX INFO: renamed from: x */
        boolean f3152x;

        /* JADX INFO: renamed from: y */
        boolean f3153y;

        /* JADX INFO: renamed from: z */
        int f3154z;

        d(d dVar, C0505b c0505b, Resources resources) {
            this.f3137i = false;
            this.f3140l = false;
            this.f3152x = true;
            this.f3120A = 0;
            this.f3121B = 0;
            this.f3129a = c0505b;
            this.f3130b = resources != null ? resources : dVar != null ? dVar.f3130b : null;
            int iM4080f = C0505b.m4080f(resources, dVar != null ? dVar.f3131c : 0);
            this.f3131c = iM4080f;
            if (dVar == null) {
                this.f3135g = new Drawable[10];
                this.f3136h = 0;
                return;
            }
            this.f3132d = dVar.f3132d;
            this.f3133e = dVar.f3133e;
            this.f3150v = true;
            this.f3151w = true;
            this.f3137i = dVar.f3137i;
            this.f3140l = dVar.f3140l;
            this.f3152x = dVar.f3152x;
            this.f3153y = dVar.f3153y;
            this.f3154z = dVar.f3154z;
            this.f3120A = dVar.f3120A;
            this.f3121B = dVar.f3121B;
            this.f3122C = dVar.f3122C;
            this.f3123D = dVar.f3123D;
            this.f3124E = dVar.f3124E;
            this.f3125F = dVar.f3125F;
            this.f3126G = dVar.f3126G;
            this.f3127H = dVar.f3127H;
            this.f3128I = dVar.f3128I;
            if (dVar.f3131c == iM4080f) {
                if (dVar.f3138j) {
                    this.f3139k = dVar.f3139k != null ? new Rect(dVar.f3139k) : null;
                    this.f3138j = true;
                }
                if (dVar.f3141m) {
                    this.f3142n = dVar.f3142n;
                    this.f3143o = dVar.f3143o;
                    this.f3144p = dVar.f3144p;
                    this.f3145q = dVar.f3145q;
                    this.f3141m = true;
                }
            }
            if (dVar.f3146r) {
                this.f3147s = dVar.f3147s;
                this.f3146r = true;
            }
            if (dVar.f3148t) {
                this.f3149u = dVar.f3149u;
                this.f3148t = true;
            }
            Drawable[] drawableArr = dVar.f3135g;
            this.f3135g = new Drawable[drawableArr.length];
            this.f3136h = dVar.f3136h;
            SparseArray<Drawable.ConstantState> sparseArray = dVar.f3134f;
            if (sparseArray != null) {
                this.f3134f = sparseArray.clone();
            } else {
                this.f3134f = new SparseArray<>(this.f3136h);
            }
            int i = this.f3136h;
            for (int i2 = 0; i2 < i; i2++) {
                if (drawableArr[i2] != null) {
                    Drawable.ConstantState constantState = drawableArr[i2].getConstantState();
                    if (constantState != null) {
                        this.f3134f.put(i2, constantState);
                    } else {
                        this.f3135g[i2] = drawableArr[i2];
                    }
                }
            }
        }

        /* JADX INFO: renamed from: e */
        private void m4090e() {
            SparseArray<Drawable.ConstantState> sparseArray = this.f3134f;
            if (sparseArray != null) {
                int size = sparseArray.size();
                for (int i = 0; i < size; i++) {
                    this.f3135g[this.f3134f.keyAt(i)] = m4091s(this.f3134f.valueAt(i).newDrawable(this.f3130b));
                }
                this.f3134f = null;
            }
        }

        /* JADX INFO: renamed from: s */
        private Drawable m4091s(Drawable drawable) {
            if (Build.VERSION.SDK_INT >= 23) {
                C0251a.m1792m(drawable, this.f3154z);
            }
            Drawable drawableMutate = drawable.mutate();
            drawableMutate.setCallback(this.f3129a);
            return drawableMutate;
        }

        /* JADX INFO: renamed from: a */
        public final int m4092a(Drawable drawable) {
            int i = this.f3136h;
            if (i >= this.f3135g.length) {
                mo4105o(i, i + 10);
            }
            drawable.mutate();
            drawable.setVisible(false, true);
            drawable.setCallback(this.f3129a);
            this.f3135g[i] = drawable;
            this.f3136h++;
            this.f3133e = drawable.getChangingConfigurations() | this.f3133e;
            m4106p();
            this.f3139k = null;
            this.f3138j = false;
            this.f3141m = false;
            this.f3150v = false;
            return i;
        }

        /* JADX INFO: renamed from: b */
        final void m4093b(Resources.Theme theme) {
            if (theme != null) {
                m4090e();
                int i = this.f3136h;
                Drawable[] drawableArr = this.f3135g;
                for (int i2 = 0; i2 < i; i2++) {
                    if (drawableArr[i2] != null && C0251a.m1781b(drawableArr[i2])) {
                        C0251a.m1780a(drawableArr[i2], theme);
                        this.f3133e |= drawableArr[i2].getChangingConfigurations();
                    }
                }
                m4113y(b.m4087c(theme));
            }
        }

        /* JADX INFO: renamed from: c */
        public boolean m4094c() {
            if (this.f3150v) {
                return this.f3151w;
            }
            m4090e();
            this.f3150v = true;
            int i = this.f3136h;
            Drawable[] drawableArr = this.f3135g;
            for (int i2 = 0; i2 < i; i2++) {
                if (drawableArr[i2].getConstantState() == null) {
                    this.f3151w = false;
                    return false;
                }
            }
            this.f3151w = true;
            return true;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public boolean canApplyTheme() {
            int i = this.f3136h;
            Drawable[] drawableArr = this.f3135g;
            for (int i2 = 0; i2 < i; i2++) {
                Drawable drawable = drawableArr[i2];
                if (drawable == null) {
                    Drawable.ConstantState constantState = this.f3134f.get(i2);
                    if (constantState != null && b.m4085a(constantState)) {
                        return true;
                    }
                } else if (C0251a.m1781b(drawable)) {
                    return true;
                }
            }
            return false;
        }

        /* JADX INFO: renamed from: d */
        protected void m4095d() {
            this.f3141m = true;
            m4090e();
            int i = this.f3136h;
            Drawable[] drawableArr = this.f3135g;
            this.f3143o = -1;
            this.f3142n = -1;
            this.f3145q = 0;
            this.f3144p = 0;
            for (int i2 = 0; i2 < i; i2++) {
                Drawable drawable = drawableArr[i2];
                int intrinsicWidth = drawable.getIntrinsicWidth();
                if (intrinsicWidth > this.f3142n) {
                    this.f3142n = intrinsicWidth;
                }
                int intrinsicHeight = drawable.getIntrinsicHeight();
                if (intrinsicHeight > this.f3143o) {
                    this.f3143o = intrinsicHeight;
                }
                int minimumWidth = drawable.getMinimumWidth();
                if (minimumWidth > this.f3144p) {
                    this.f3144p = minimumWidth;
                }
                int minimumHeight = drawable.getMinimumHeight();
                if (minimumHeight > this.f3145q) {
                    this.f3145q = minimumHeight;
                }
            }
        }

        /* JADX INFO: renamed from: f */
        final int m4096f() {
            return this.f3135g.length;
        }

        /* JADX INFO: renamed from: g */
        public final Drawable m4097g(int i) {
            int iIndexOfKey;
            Drawable drawable = this.f3135g[i];
            if (drawable != null) {
                return drawable;
            }
            SparseArray<Drawable.ConstantState> sparseArray = this.f3134f;
            if (sparseArray == null || (iIndexOfKey = sparseArray.indexOfKey(i)) < 0) {
                return null;
            }
            Drawable drawableM4091s = m4091s(this.f3134f.valueAt(iIndexOfKey).newDrawable(this.f3130b));
            this.f3135g[i] = drawableM4091s;
            this.f3134f.removeAt(iIndexOfKey);
            if (this.f3134f.size() == 0) {
                this.f3134f = null;
            }
            return drawableM4091s;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public int getChangingConfigurations() {
            return this.f3132d | this.f3133e;
        }

        /* JADX INFO: renamed from: h */
        public final int m4098h() {
            return this.f3136h;
        }

        /* JADX INFO: renamed from: i */
        public final int m4099i() {
            if (!this.f3141m) {
                m4095d();
            }
            return this.f3143o;
        }

        /* JADX INFO: renamed from: j */
        public final int m4100j() {
            if (!this.f3141m) {
                m4095d();
            }
            return this.f3145q;
        }

        /* JADX INFO: renamed from: k */
        public final int m4101k() {
            if (!this.f3141m) {
                m4095d();
            }
            return this.f3144p;
        }

        /* JADX INFO: renamed from: l */
        public final Rect m4102l() {
            Rect rect = null;
            if (this.f3137i) {
                return null;
            }
            if (this.f3139k != null || this.f3138j) {
                return this.f3139k;
            }
            m4090e();
            Rect rect2 = new Rect();
            int i = this.f3136h;
            Drawable[] drawableArr = this.f3135g;
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
            this.f3138j = true;
            this.f3139k = rect;
            return rect;
        }

        /* JADX INFO: renamed from: m */
        public final int m4103m() {
            if (!this.f3141m) {
                m4095d();
            }
            return this.f3142n;
        }

        /* JADX INFO: renamed from: n */
        public final int m4104n() {
            if (this.f3146r) {
                return this.f3147s;
            }
            m4090e();
            int i = this.f3136h;
            Drawable[] drawableArr = this.f3135g;
            int opacity = i > 0 ? drawableArr[0].getOpacity() : -2;
            for (int i2 = 1; i2 < i; i2++) {
                opacity = Drawable.resolveOpacity(opacity, drawableArr[i2].getOpacity());
            }
            this.f3147s = opacity;
            this.f3146r = true;
            return opacity;
        }

        /* JADX INFO: renamed from: o */
        public void mo4105o(int i, int i2) {
            Drawable[] drawableArr = new Drawable[i2];
            Drawable[] drawableArr2 = this.f3135g;
            if (drawableArr2 != null) {
                System.arraycopy(drawableArr2, 0, drawableArr, 0, i);
            }
            this.f3135g = drawableArr;
        }

        /* JADX INFO: renamed from: p */
        void m4106p() {
            this.f3146r = false;
            this.f3148t = false;
        }

        /* JADX INFO: renamed from: q */
        public final boolean m4107q() {
            return this.f3140l;
        }

        /* JADX INFO: renamed from: r */
        abstract void mo4073r();

        /* JADX INFO: renamed from: t */
        public final void m4108t(boolean z) {
            this.f3140l = z;
        }

        /* JADX INFO: renamed from: u */
        public final void m4109u(int i) {
            this.f3120A = i;
        }

        /* JADX INFO: renamed from: v */
        public final void m4110v(int i) {
            this.f3121B = i;
        }

        /* JADX INFO: renamed from: w */
        final boolean m4111w(int i, int i2) {
            int i3 = this.f3136h;
            Drawable[] drawableArr = this.f3135g;
            boolean z = false;
            for (int i4 = 0; i4 < i3; i4++) {
                if (drawableArr[i4] != null) {
                    boolean zM1792m = Build.VERSION.SDK_INT >= 23 ? C0251a.m1792m(drawableArr[i4], i) : false;
                    if (i4 == i2) {
                        z = zM1792m;
                    }
                }
            }
            this.f3154z = i;
            return z;
        }

        /* JADX INFO: renamed from: x */
        public final void m4112x(boolean z) {
            this.f3137i = z;
        }

        /* JADX INFO: renamed from: y */
        final void m4113y(Resources resources) {
            if (resources != null) {
                this.f3130b = resources;
                int iM4080f = C0505b.m4080f(resources, this.f3131c);
                int i = this.f3131c;
                this.f3131c = iM4080f;
                if (i != iM4080f) {
                    this.f3141m = false;
                    this.f3138j = false;
                }
            }
        }
    }

    C0505b() {
    }

    /* JADX INFO: renamed from: d */
    private void m4078d(Drawable drawable) {
        if (this.f3117m == null) {
            this.f3117m = new c();
        }
        c cVar = this.f3117m;
        cVar.m4089b(drawable.getCallback());
        drawable.setCallback(cVar);
        try {
            if (this.f3106b.f3120A <= 0 && this.f3111g) {
                drawable.setAlpha(this.f3110f);
            }
            if (this.f3106b.f3124E) {
                drawable.setColorFilter(this.f3106b.f3123D);
            } else {
                if (this.f3106b.f3127H) {
                    C0251a.m1794o(drawable, this.f3106b.f3125F);
                }
                if (this.f3106b.f3128I) {
                    C0251a.m1795p(drawable, this.f3106b.f3126G);
                }
            }
            drawable.setVisible(isVisible(), true);
            drawable.setDither(this.f3106b.f3152x);
            drawable.setState(getState());
            drawable.setLevel(getLevel());
            drawable.setBounds(getBounds());
            if (Build.VERSION.SDK_INT >= 23) {
                C0251a.m1792m(drawable, C0251a.m1785f(this));
            }
            if (Build.VERSION.SDK_INT >= 19) {
                C0251a.m1789j(drawable, this.f3106b.f3122C);
            }
            Rect rect = this.f3107c;
            if (Build.VERSION.SDK_INT >= 21 && rect != null) {
                C0251a.m1791l(drawable, rect.left, rect.top, rect.right, rect.bottom);
            }
        } finally {
            drawable.setCallback(this.f3117m.m4088a());
        }
    }

    /* JADX INFO: renamed from: e */
    private boolean m4079e() {
        return isAutoMirrored() && C0251a.m1785f(this) == 1;
    }

    /* JADX INFO: renamed from: f */
    static int m4080f(Resources resources, int i) {
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
    /* JADX INFO: renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    void m4081a(boolean z) {
        boolean z2;
        Drawable drawable;
        boolean z3 = true;
        this.f3111g = true;
        long jUptimeMillis = SystemClock.uptimeMillis();
        Drawable drawable2 = this.f3108d;
        if (drawable2 != null) {
            long j = this.f3115k;
            if (j != 0) {
                if (j <= jUptimeMillis) {
                    drawable2.setAlpha(this.f3110f);
                    this.f3115k = 0L;
                } else {
                    drawable2.setAlpha(((255 - (((int) ((j - jUptimeMillis) * 255)) / this.f3106b.f3120A)) * this.f3110f) / 255);
                    z2 = true;
                }
            }
            drawable = this.f3109e;
            if (drawable == null) {
                long j2 = this.f3116l;
                if (j2 != 0) {
                    if (j2 <= jUptimeMillis) {
                        drawable.setVisible(false, false);
                        this.f3109e = null;
                        this.f3116l = 0L;
                    } else {
                        drawable.setAlpha(((((int) ((j2 - jUptimeMillis) * 255)) / this.f3106b.f3121B) * this.f3110f) / 255);
                    }
                }
                if (z && z3) {
                    scheduleSelf(this.f3114j, jUptimeMillis + 16);
                    return;
                }
                return;
            }
            this.f3116l = 0L;
            z3 = z2;
            if (z) {
                return;
            } else {
                return;
            }
        }
        this.f3115k = 0L;
        z2 = false;
        drawable = this.f3109e;
        if (drawable == null) {
        }
        z3 = z2;
        if (z) {
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void applyTheme(Resources.Theme theme) {
        this.f3106b.m4093b(theme);
    }

    /* JADX INFO: renamed from: b */
    d mo4058b() {
        throw null;
    }

    /* JADX INFO: renamed from: c */
    int m4082c() {
        return this.f3112h;
    }

    @Override // android.graphics.drawable.Drawable
    public boolean canApplyTheme() {
        return this.f3106b.canApplyTheme();
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        Drawable drawable = this.f3108d;
        if (drawable != null) {
            drawable.draw(canvas);
        }
        Drawable drawable2 = this.f3109e;
        if (drawable2 != null) {
            drawable2.draw(canvas);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:26:0x0055  */
    /* JADX INFO: renamed from: g */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    boolean m4083g(int i) {
        if (i == this.f3112h) {
            return false;
        }
        long jUptimeMillis = SystemClock.uptimeMillis();
        if (this.f3106b.f3121B > 0) {
            Drawable drawable = this.f3109e;
            if (drawable != null) {
                drawable.setVisible(false, false);
            }
            Drawable drawable2 = this.f3108d;
            if (drawable2 != null) {
                this.f3109e = drawable2;
                this.f3116l = ((long) this.f3106b.f3121B) + jUptimeMillis;
            } else {
                this.f3109e = null;
                this.f3116l = 0L;
            }
        } else {
            Drawable drawable3 = this.f3108d;
            if (drawable3 != null) {
                drawable3.setVisible(false, false);
            }
        }
        if (i >= 0) {
            d dVar = this.f3106b;
            if (i < dVar.f3136h) {
                Drawable drawableM4097g = dVar.m4097g(i);
                this.f3108d = drawableM4097g;
                this.f3112h = i;
                if (drawableM4097g != null) {
                    int i2 = this.f3106b.f3120A;
                    if (i2 > 0) {
                        this.f3115k = jUptimeMillis + ((long) i2);
                    }
                    m4078d(drawableM4097g);
                }
            } else {
                this.f3108d = null;
                this.f3112h = -1;
            }
        }
        if (this.f3115k != 0 || this.f3116l != 0) {
            Runnable runnable = this.f3114j;
            if (runnable == null) {
                this.f3114j = new a();
            } else {
                unscheduleSelf(runnable);
            }
            m4081a(true);
        }
        invalidateSelf();
        return true;
    }

    @Override // android.graphics.drawable.Drawable
    public int getAlpha() {
        return this.f3110f;
    }

    @Override // android.graphics.drawable.Drawable
    public int getChangingConfigurations() {
        return super.getChangingConfigurations() | this.f3106b.getChangingConfigurations();
    }

    @Override // android.graphics.drawable.Drawable
    public final Drawable.ConstantState getConstantState() {
        if (!this.f3106b.m4094c()) {
            return null;
        }
        this.f3106b.f3132d = getChangingConfigurations();
        return this.f3106b;
    }

    @Override // android.graphics.drawable.Drawable
    public Drawable getCurrent() {
        return this.f3108d;
    }

    @Override // android.graphics.drawable.Drawable
    public void getHotspotBounds(Rect rect) {
        Rect rect2 = this.f3107c;
        if (rect2 != null) {
            rect.set(rect2);
        } else {
            super.getHotspotBounds(rect);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        if (this.f3106b.m4107q()) {
            return this.f3106b.m4099i();
        }
        Drawable drawable = this.f3108d;
        if (drawable != null) {
            return drawable.getIntrinsicHeight();
        }
        return -1;
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        if (this.f3106b.m4107q()) {
            return this.f3106b.m4103m();
        }
        Drawable drawable = this.f3108d;
        if (drawable != null) {
            return drawable.getIntrinsicWidth();
        }
        return -1;
    }

    @Override // android.graphics.drawable.Drawable
    public int getMinimumHeight() {
        if (this.f3106b.m4107q()) {
            return this.f3106b.m4100j();
        }
        Drawable drawable = this.f3108d;
        if (drawable != null) {
            return drawable.getMinimumHeight();
        }
        return 0;
    }

    @Override // android.graphics.drawable.Drawable
    public int getMinimumWidth() {
        if (this.f3106b.m4107q()) {
            return this.f3106b.m4101k();
        }
        Drawable drawable = this.f3108d;
        if (drawable != null) {
            return drawable.getMinimumWidth();
        }
        return 0;
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        Drawable drawable = this.f3108d;
        if (drawable == null || !drawable.isVisible()) {
            return -2;
        }
        return this.f3106b.m4104n();
    }

    @Override // android.graphics.drawable.Drawable
    public void getOutline(Outline outline) {
        Drawable drawable = this.f3108d;
        if (drawable != null) {
            b.m4086b(drawable, outline);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public boolean getPadding(Rect rect) {
        boolean padding;
        Rect rectM4102l = this.f3106b.m4102l();
        if (rectM4102l != null) {
            rect.set(rectM4102l);
            padding = (rectM4102l.right | ((rectM4102l.left | rectM4102l.top) | rectM4102l.bottom)) != 0;
        } else {
            Drawable drawable = this.f3108d;
            padding = drawable != null ? drawable.getPadding(rect) : super.getPadding(rect);
        }
        if (m4079e()) {
            int i = rect.left;
            rect.left = rect.right;
            rect.right = i;
        }
        return padding;
    }

    /* JADX INFO: renamed from: h */
    void mo4059h(d dVar) {
        this.f3106b = dVar;
        int i = this.f3112h;
        if (i >= 0) {
            Drawable drawableM4097g = dVar.m4097g(i);
            this.f3108d = drawableM4097g;
            if (drawableM4097g != null) {
                m4078d(drawableM4097g);
            }
        }
        this.f3109e = null;
    }

    /* JADX INFO: renamed from: i */
    final void m4084i(Resources resources) {
        this.f3106b.m4113y(resources);
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public void invalidateDrawable(Drawable drawable) {
        d dVar = this.f3106b;
        if (dVar != null) {
            dVar.m4106p();
        }
        if (drawable != this.f3108d || getCallback() == null) {
            return;
        }
        getCallback().invalidateDrawable(this);
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isAutoMirrored() {
        return this.f3106b.f3122C;
    }

    @Override // android.graphics.drawable.Drawable
    public void jumpToCurrentState() {
        boolean z;
        Drawable drawable = this.f3109e;
        boolean z2 = true;
        if (drawable != null) {
            drawable.jumpToCurrentState();
            this.f3109e = null;
            z = true;
        } else {
            z = false;
        }
        Drawable drawable2 = this.f3108d;
        if (drawable2 != null) {
            drawable2.jumpToCurrentState();
            if (this.f3111g) {
                this.f3108d.setAlpha(this.f3110f);
            }
        }
        if (this.f3116l != 0) {
            this.f3116l = 0L;
            z = true;
        }
        if (this.f3115k != 0) {
            this.f3115k = 0L;
        } else {
            z2 = z;
        }
        if (z2) {
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public Drawable mutate() {
        if (!this.f3113i && super.mutate() == this) {
            d dVarMo4058b = mo4058b();
            dVarMo4058b.mo4073r();
            mo4059h(dVarMo4058b);
            this.f3113i = true;
        }
        return this;
    }

    @Override // android.graphics.drawable.Drawable
    protected void onBoundsChange(Rect rect) {
        Drawable drawable = this.f3109e;
        if (drawable != null) {
            drawable.setBounds(rect);
        }
        Drawable drawable2 = this.f3108d;
        if (drawable2 != null) {
            drawable2.setBounds(rect);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public boolean onLayoutDirectionChanged(int i) {
        return this.f3106b.m4111w(i, m4082c());
    }

    @Override // android.graphics.drawable.Drawable
    protected boolean onLevelChange(int i) {
        Drawable drawable = this.f3109e;
        if (drawable != null) {
            return drawable.setLevel(i);
        }
        Drawable drawable2 = this.f3108d;
        if (drawable2 != null) {
            return drawable2.setLevel(i);
        }
        return false;
    }

    @Override // android.graphics.drawable.Drawable
    protected boolean onStateChange(int[] iArr) {
        Drawable drawable = this.f3109e;
        if (drawable != null) {
            return drawable.setState(iArr);
        }
        Drawable drawable2 = this.f3108d;
        if (drawable2 != null) {
            return drawable2.setState(iArr);
        }
        return false;
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public void scheduleDrawable(Drawable drawable, Runnable runnable, long j) {
        if (drawable != this.f3108d || getCallback() == null) {
            return;
        }
        getCallback().scheduleDrawable(this, runnable, j);
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i) {
        if (this.f3111g && this.f3110f == i) {
            return;
        }
        this.f3111g = true;
        this.f3110f = i;
        Drawable drawable = this.f3108d;
        if (drawable != null) {
            if (this.f3115k == 0) {
                drawable.setAlpha(i);
            } else {
                m4081a(false);
            }
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setAutoMirrored(boolean z) {
        d dVar = this.f3106b;
        if (dVar.f3122C != z) {
            dVar.f3122C = z;
            Drawable drawable = this.f3108d;
            if (drawable != null) {
                C0251a.m1789j(drawable, z);
            }
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        d dVar = this.f3106b;
        dVar.f3124E = true;
        if (dVar.f3123D != colorFilter) {
            dVar.f3123D = colorFilter;
            Drawable drawable = this.f3108d;
            if (drawable != null) {
                drawable.setColorFilter(colorFilter);
            }
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setDither(boolean z) {
        d dVar = this.f3106b;
        if (dVar.f3152x != z) {
            dVar.f3152x = z;
            Drawable drawable = this.f3108d;
            if (drawable != null) {
                drawable.setDither(z);
            }
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setHotspot(float f, float f2) {
        Drawable drawable = this.f3108d;
        if (drawable != null) {
            C0251a.m1790k(drawable, f, f2);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setHotspotBounds(int i, int i2, int i3, int i4) {
        Rect rect = this.f3107c;
        if (rect == null) {
            this.f3107c = new Rect(i, i2, i3, i4);
        } else {
            rect.set(i, i2, i3, i4);
        }
        Drawable drawable = this.f3108d;
        if (drawable != null) {
            C0251a.m1791l(drawable, i, i2, i3, i4);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setTintList(ColorStateList colorStateList) {
        d dVar = this.f3106b;
        dVar.f3127H = true;
        if (dVar.f3125F != colorStateList) {
            dVar.f3125F = colorStateList;
            C0251a.m1794o(this.f3108d, colorStateList);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setTintMode(PorterDuff.Mode mode) {
        d dVar = this.f3106b;
        dVar.f3128I = true;
        if (dVar.f3126G != mode) {
            dVar.f3126G = mode;
            C0251a.m1795p(this.f3108d, mode);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public boolean setVisible(boolean z, boolean z2) {
        boolean visible = super.setVisible(z, z2);
        Drawable drawable = this.f3109e;
        if (drawable != null) {
            drawable.setVisible(z, z2);
        }
        Drawable drawable2 = this.f3108d;
        if (drawable2 != null) {
            drawable2.setVisible(z, z2);
        }
        return visible;
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public void unscheduleDrawable(Drawable drawable, Runnable runnable) {
        if (drawable != this.f3108d || getCallback() == null) {
            return;
        }
        getCallback().unscheduleDrawable(this, runnable);
    }
}
