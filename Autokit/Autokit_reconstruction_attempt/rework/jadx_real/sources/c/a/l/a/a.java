package c.a.l.a;

import android.animation.ObjectAnimator;
import android.animation.TimeInterpolator;
import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.drawable.Animatable;
import android.graphics.drawable.AnimationDrawable;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.AttributeSet;
import android.util.StateSet;
import androidx.appcompat.widget.k0;
import c.a.l.a.b;
import c.a.l.a.d;
import c.d.h;
import com.yalantis.ucrop.view.CropImageView;
import java.io.IOException;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* JADX INFO: loaded from: /Volumes/stuff/macbook/misc/CPC200-CCPA/rework/dumped_real_classes.dex */
@SuppressLint({"RestrictedAPI"})
public class a extends c.a.l.a.d implements androidx.core.graphics.drawable.b {
    private c p;
    private g q;
    private int r;
    private int s;
    private boolean t;

    /* JADX INFO: renamed from: c.a.l.a.a$a, reason: collision with other inner class name */
    static /* synthetic */ class C0045a {
    }

    private static class b extends g {
        private final Animatable a;

        b(Animatable animatable) {
            super(null);
            this.a = animatable;
        }

        @Override // c.a.l.a.a.g
        public void c() {
            this.a.start();
        }

        @Override // c.a.l.a.a.g
        public void d() {
            this.a.stop();
        }
    }

    static class c extends d.a {
        c.d.d<Long> K;
        h<Integer> L;

        c(c cVar, a aVar, Resources resources) {
            super(cVar, aVar, resources);
            if (cVar != null) {
                this.K = cVar.K;
                this.L = cVar.L;
            } else {
                this.K = new c.d.d<>();
                this.L = new h<>();
            }
        }

        private static long D(int i, int i2) {
            return ((long) i2) | (((long) i) << 32);
        }

        int B(int[] iArr, Drawable drawable, int i) {
            int iZ = super.z(iArr, drawable);
            this.L.i(iZ, Integer.valueOf(i));
            return iZ;
        }

        int C(int i, int i2, Drawable drawable, boolean z) {
            int iA = super.a(drawable);
            long jD = D(i, i2);
            long j = z ? 8589934592L : 0L;
            long j2 = iA;
            this.K.a(jD, Long.valueOf(j2 | j));
            if (z) {
                this.K.a(D(i2, i), Long.valueOf(4294967296L | j2 | j));
            }
            return iA;
        }

        int E(int i) {
            if (i < 0) {
                return 0;
            }
            return this.L.f(i, 0).intValue();
        }

        int F(int[] iArr) {
            int iA = super.A(iArr);
            return iA >= 0 ? iA : super.A(StateSet.WILD_CARD);
        }

        int G(int i, int i2) {
            return (int) this.K.f(D(i, i2), -1L).longValue();
        }

        boolean H(int i, int i2) {
            return (this.K.f(D(i, i2), -1L).longValue() & 4294967296L) != 0;
        }

        boolean I(int i, int i2) {
            return (this.K.f(D(i, i2), -1L).longValue() & 8589934592L) != 0;
        }

        @Override // c.a.l.a.d.a, android.graphics.drawable.Drawable.ConstantState
        public Drawable newDrawable() {
            return new a(this, null);
        }

        @Override // c.a.l.a.d.a, c.a.l.a.b.d
        void r() {
            this.K = this.K.clone();
            this.L = this.L.clone();
        }

        @Override // c.a.l.a.d.a, android.graphics.drawable.Drawable.ConstantState
        public Drawable newDrawable(Resources resources) {
            return new a(this, resources);
        }
    }

    private static class d extends g {
        private final c.q.a.a.b a;

        d(c.q.a.a.b bVar) {
            super(null);
            this.a = bVar;
        }

        @Override // c.a.l.a.a.g
        public void c() {
            this.a.start();
        }

        @Override // c.a.l.a.a.g
        public void d() {
            this.a.stop();
        }
    }

    private static class e extends g {
        private final ObjectAnimator a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final boolean f1010b;

        e(AnimationDrawable animationDrawable, boolean z, boolean z2) {
            super(null);
            int numberOfFrames = animationDrawable.getNumberOfFrames();
            int i = z ? numberOfFrames - 1 : 0;
            int i2 = z ? 0 : numberOfFrames - 1;
            f fVar = new f(animationDrawable, z);
            ObjectAnimator objectAnimatorOfInt = ObjectAnimator.ofInt(animationDrawable, "currentIndex", i, i2);
            if (Build.VERSION.SDK_INT >= 18) {
                objectAnimatorOfInt.setAutoCancel(true);
            }
            objectAnimatorOfInt.setDuration(fVar.a());
            objectAnimatorOfInt.setInterpolator(fVar);
            this.f1010b = z2;
            this.a = objectAnimatorOfInt;
        }

        @Override // c.a.l.a.a.g
        public boolean a() {
            return this.f1010b;
        }

        @Override // c.a.l.a.a.g
        public void b() {
            this.a.reverse();
        }

        @Override // c.a.l.a.a.g
        public void c() {
            this.a.start();
        }

        @Override // c.a.l.a.a.g
        public void d() {
            this.a.cancel();
        }
    }

    private static class f implements TimeInterpolator {
        private int[] a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private int f1011b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private int f1012c;

        f(AnimationDrawable animationDrawable, boolean z) {
            b(animationDrawable, z);
        }

        int a() {
            return this.f1012c;
        }

        int b(AnimationDrawable animationDrawable, boolean z) {
            int numberOfFrames = animationDrawable.getNumberOfFrames();
            this.f1011b = numberOfFrames;
            int[] iArr = this.a;
            if (iArr == null || iArr.length < numberOfFrames) {
                this.a = new int[numberOfFrames];
            }
            int[] iArr2 = this.a;
            int i = 0;
            for (int i2 = 0; i2 < numberOfFrames; i2++) {
                int duration = animationDrawable.getDuration(z ? (numberOfFrames - i2) - 1 : i2);
                iArr2[i2] = duration;
                i += duration;
            }
            this.f1012c = i;
            return i;
        }

        @Override // android.animation.TimeInterpolator
        public float getInterpolation(float f) {
            int i = (int) ((f * this.f1012c) + 0.5f);
            int i2 = this.f1011b;
            int[] iArr = this.a;
            int i3 = 0;
            while (i3 < i2 && i >= iArr[i3]) {
                i -= iArr[i3];
                i3++;
            }
            return (i3 / i2) + (i3 < i2 ? i / this.f1012c : CropImageView.DEFAULT_ASPECT_RATIO);
        }
    }

    private static abstract class g {
        private g() {
        }

        public boolean a() {
            return false;
        }

        public void b() {
        }

        public abstract void c();

        public abstract void d();

        /* synthetic */ g(C0045a c0045a) {
            this();
        }
    }

    public a() {
        this(null, null);
    }

    public static a m(Context context, Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) throws XmlPullParserException, IOException {
        String name = xmlPullParser.getName();
        if (name.equals("animated-selector")) {
            a aVar = new a();
            aVar.n(context, resources, xmlPullParser, attributeSet, theme);
            return aVar;
        }
        throw new XmlPullParserException(xmlPullParser.getPositionDescription() + ": invalid animated-selector tag " + name);
    }

    private void o(Context context, Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) throws XmlPullParserException, IOException {
        int depth = xmlPullParser.getDepth() + 1;
        while (true) {
            int next = xmlPullParser.next();
            if (next == 1) {
                return;
            }
            int depth2 = xmlPullParser.getDepth();
            if (depth2 < depth && next == 3) {
                return;
            }
            if (next == 2 && depth2 <= depth) {
                if (xmlPullParser.getName().equals("item")) {
                    q(context, resources, xmlPullParser, attributeSet, theme);
                } else if (xmlPullParser.getName().equals("transition")) {
                    r(context, resources, xmlPullParser, attributeSet, theme);
                }
            }
        }
    }

    private void p() {
        onStateChange(getState());
    }

    private int q(Context context, Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) throws XmlPullParserException, IOException {
        int next;
        TypedArray typedArrayK = androidx.core.content.c.g.k(resources, theme, attributeSet, c.a.m.b.AnimatedStateListDrawableItem);
        int resourceId = typedArrayK.getResourceId(c.a.m.b.AnimatedStateListDrawableItem_android_id, 0);
        int resourceId2 = typedArrayK.getResourceId(c.a.m.b.AnimatedStateListDrawableItem_android_drawable, -1);
        Drawable drawableJ = resourceId2 > 0 ? k0.h().j(context, resourceId2) : null;
        typedArrayK.recycle();
        int[] iArrK = k(attributeSet);
        if (drawableJ == null) {
            do {
                next = xmlPullParser.next();
            } while (next == 4);
            if (next != 2) {
                throw new XmlPullParserException(xmlPullParser.getPositionDescription() + ": <item> tag requires a 'drawable' attribute or child tag defining a drawable");
            }
            drawableJ = xmlPullParser.getName().equals("vector") ? c.q.a.a.h.c(resources, xmlPullParser, attributeSet, theme) : Build.VERSION.SDK_INT >= 21 ? Drawable.createFromXmlInner(resources, xmlPullParser, attributeSet, theme) : Drawable.createFromXmlInner(resources, xmlPullParser, attributeSet);
        }
        if (drawableJ != null) {
            return this.p.B(iArrK, drawableJ, resourceId);
        }
        throw new XmlPullParserException(xmlPullParser.getPositionDescription() + ": <item> tag requires a 'drawable' attribute or child tag defining a drawable");
    }

    private int r(Context context, Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) throws XmlPullParserException, IOException {
        int next;
        TypedArray typedArrayK = androidx.core.content.c.g.k(resources, theme, attributeSet, c.a.m.b.AnimatedStateListDrawableTransition);
        int resourceId = typedArrayK.getResourceId(c.a.m.b.AnimatedStateListDrawableTransition_android_fromId, -1);
        int resourceId2 = typedArrayK.getResourceId(c.a.m.b.AnimatedStateListDrawableTransition_android_toId, -1);
        int resourceId3 = typedArrayK.getResourceId(c.a.m.b.AnimatedStateListDrawableTransition_android_drawable, -1);
        Drawable drawableJ = resourceId3 > 0 ? k0.h().j(context, resourceId3) : null;
        boolean z = typedArrayK.getBoolean(c.a.m.b.AnimatedStateListDrawableTransition_android_reversible, false);
        typedArrayK.recycle();
        if (drawableJ == null) {
            do {
                next = xmlPullParser.next();
            } while (next == 4);
            if (next != 2) {
                throw new XmlPullParserException(xmlPullParser.getPositionDescription() + ": <transition> tag requires a 'drawable' attribute or child tag defining a drawable");
            }
            drawableJ = xmlPullParser.getName().equals("animated-vector") ? c.q.a.a.b.a(context, resources, xmlPullParser, attributeSet, theme) : Build.VERSION.SDK_INT >= 21 ? Drawable.createFromXmlInner(resources, xmlPullParser, attributeSet, theme) : Drawable.createFromXmlInner(resources, xmlPullParser, attributeSet);
        }
        if (drawableJ == null) {
            throw new XmlPullParserException(xmlPullParser.getPositionDescription() + ": <transition> tag requires a 'drawable' attribute or child tag defining a drawable");
        }
        if (resourceId != -1 && resourceId2 != -1) {
            return this.p.C(resourceId, resourceId2, drawableJ, z);
        }
        throw new XmlPullParserException(xmlPullParser.getPositionDescription() + ": <transition> tag requires 'fromId' & 'toId' attributes");
    }

    private boolean s(int i) {
        int iC;
        int iG;
        g bVar;
        g gVar = this.q;
        if (gVar == null) {
            iC = c();
        } else {
            if (i == this.r) {
                return true;
            }
            if (i == this.s && gVar.a()) {
                gVar.b();
                this.r = this.s;
                this.s = i;
                return true;
            }
            iC = this.r;
            gVar.d();
        }
        this.q = null;
        this.s = -1;
        this.r = -1;
        c cVar = this.p;
        int iE = cVar.E(iC);
        int iE2 = cVar.E(i);
        if (iE2 == 0 || iE == 0 || (iG = cVar.G(iE, iE2)) < 0) {
            return false;
        }
        boolean zI = cVar.I(iE, iE2);
        g(iG);
        Object current = getCurrent();
        if (current instanceof AnimationDrawable) {
            bVar = new e((AnimationDrawable) current, cVar.H(iE, iE2), zI);
        } else {
            if (!(current instanceof c.q.a.a.b)) {
                if (current instanceof Animatable) {
                    bVar = new b((Animatable) current);
                }
                return false;
            }
            bVar = new d((c.q.a.a.b) current);
        }
        bVar.c();
        this.q = bVar;
        this.s = iC;
        this.r = i;
        return true;
    }

    private void t(TypedArray typedArray) {
        c cVar = this.p;
        if (Build.VERSION.SDK_INT >= 21) {
            cVar.f1020d |= typedArray.getChangingConfigurations();
        }
        cVar.x(typedArray.getBoolean(c.a.m.b.AnimatedStateListDrawableCompat_android_variablePadding, cVar.i));
        cVar.t(typedArray.getBoolean(c.a.m.b.AnimatedStateListDrawableCompat_android_constantSize, cVar.l));
        cVar.u(typedArray.getInt(c.a.m.b.AnimatedStateListDrawableCompat_android_enterFadeDuration, cVar.A));
        cVar.v(typedArray.getInt(c.a.m.b.AnimatedStateListDrawableCompat_android_exitFadeDuration, cVar.B));
        setDither(typedArray.getBoolean(c.a.m.b.AnimatedStateListDrawableCompat_android_dither, cVar.x));
    }

    @Override // c.a.l.a.d, c.a.l.a.b
    void h(b.d dVar) {
        super.h(dVar);
        if (dVar instanceof c) {
            this.p = (c) dVar;
        }
    }

    @Override // c.a.l.a.d, android.graphics.drawable.Drawable
    public boolean isStateful() {
        return true;
    }

    @Override // c.a.l.a.b, android.graphics.drawable.Drawable
    public void jumpToCurrentState() {
        super.jumpToCurrentState();
        g gVar = this.q;
        if (gVar != null) {
            gVar.d();
            this.q = null;
            g(this.r);
            this.r = -1;
            this.s = -1;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // c.a.l.a.d
    /* JADX INFO: renamed from: l, reason: merged with bridge method [inline-methods] */
    public c b() {
        return new c(this.p, this, null);
    }

    @Override // c.a.l.a.d, c.a.l.a.b, android.graphics.drawable.Drawable
    public Drawable mutate() {
        if (!this.t) {
            super.mutate();
            if (this == this) {
                this.p.r();
                this.t = true;
            }
        }
        return this;
    }

    public void n(Context context, Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) throws XmlPullParserException, IOException {
        TypedArray typedArrayK = androidx.core.content.c.g.k(resources, theme, attributeSet, c.a.m.b.AnimatedStateListDrawableCompat);
        setVisible(typedArrayK.getBoolean(c.a.m.b.AnimatedStateListDrawableCompat_android_visible, true), true);
        t(typedArrayK);
        i(resources);
        typedArrayK.recycle();
        o(context, resources, xmlPullParser, attributeSet, theme);
        p();
    }

    @Override // c.a.l.a.d, c.a.l.a.b, android.graphics.drawable.Drawable
    protected boolean onStateChange(int[] iArr) {
        int iF = this.p.F(iArr);
        boolean z = iF != c() && (s(iF) || g(iF));
        Drawable current = getCurrent();
        return current != null ? z | current.setState(iArr) : z;
    }

    @Override // c.a.l.a.b, android.graphics.drawable.Drawable
    public boolean setVisible(boolean z, boolean z2) {
        boolean visible = super.setVisible(z, z2);
        if (this.q != null && (visible || z2)) {
            if (z) {
                this.q.c();
            } else {
                jumpToCurrentState();
            }
        }
        return visible;
    }

    a(c cVar, Resources resources) {
        super(null);
        this.r = -1;
        this.s = -1;
        h(new c(cVar, this, resources));
        onStateChange(getState());
        jumpToCurrentState();
    }
}
