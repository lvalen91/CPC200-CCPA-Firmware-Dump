package p016c.p017a.p020l.p021a;

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
import androidx.appcompat.widget.C0175k0;
import androidx.core.content.p003c.C0250g;
import androidx.core.graphics.drawable.InterfaceC0252b;
import com.yalantis.ucrop.view.CropImageView;
import java.io.IOException;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
import p016c.p017a.p020l.p021a.C0505b;
import p016c.p017a.p020l.p021a.C0507d;
import p016c.p017a.p022m.C0509b;
import p016c.p032d.C0537d;
import p016c.p032d.C0541h;
import p016c.p066q.p067a.p068a.C0692b;
import p016c.p066q.p067a.p068a.C0698h;

/* JADX INFO: renamed from: c.a.l.a.a */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
@SuppressLint({"RestrictedAPI"})
public class C0504a extends C0507d implements InterfaceC0252b {

    /* JADX INFO: renamed from: p */
    private c f3092p;

    /* JADX INFO: renamed from: q */
    private g f3093q;

    /* JADX INFO: renamed from: r */
    private int f3094r;

    /* JADX INFO: renamed from: s */
    private int f3095s;

    /* JADX INFO: renamed from: t */
    private boolean f3096t;

    /* JADX INFO: renamed from: c.a.l.a.a$a */
    static /* synthetic */ class a {
    }

    /* JADX INFO: renamed from: c.a.l.a.a$b */
    private static class b extends g {

        /* JADX INFO: renamed from: a */
        private final Animatable f3097a;

        b(Animatable animatable) {
            super(null);
            this.f3097a = animatable;
        }

        @Override // p016c.p017a.p020l.p021a.C0504a.g
        /* JADX INFO: renamed from: c */
        public void mo4063c() {
            this.f3097a.start();
        }

        @Override // p016c.p017a.p020l.p021a.C0504a.g
        /* JADX INFO: renamed from: d */
        public void mo4064d() {
            this.f3097a.stop();
        }
    }

    /* JADX INFO: renamed from: c.a.l.a.a$c */
    static class c extends C0507d.a {

        /* JADX INFO: renamed from: K */
        C0537d<Long> f3098K;

        /* JADX INFO: renamed from: L */
        C0541h<Integer> f3099L;

        c(c cVar, C0504a c0504a, Resources resources) {
            super(cVar, c0504a, resources);
            if (cVar != null) {
                this.f3098K = cVar.f3098K;
                this.f3099L = cVar.f3099L;
            } else {
                this.f3098K = new C0537d<>();
                this.f3099L = new C0541h<>();
            }
        }

        /* JADX INFO: renamed from: D */
        private static long m4065D(int i, int i2) {
            return ((long) i2) | (((long) i) << 32);
        }

        /* JADX INFO: renamed from: B */
        int m4066B(int[] iArr, Drawable drawable, int i) {
            int iM4118z = super.m4118z(iArr, drawable);
            this.f3099L.m4306i(iM4118z, Integer.valueOf(i));
            return iM4118z;
        }

        /* JADX INFO: renamed from: C */
        int m4067C(int i, int i2, Drawable drawable, boolean z) {
            int iM4092a = super.m4092a(drawable);
            long jM4065D = m4065D(i, i2);
            long j = z ? 8589934592L : 0L;
            long j2 = iM4092a;
            this.f3098K.m4255a(jM4065D, Long.valueOf(j2 | j));
            if (z) {
                this.f3098K.m4255a(m4065D(i2, i), Long.valueOf(4294967296L | j2 | j));
            }
            return iM4092a;
        }

        /* JADX INFO: renamed from: E */
        int m4068E(int i) {
            if (i < 0) {
                return 0;
            }
            return this.f3099L.m4303f(i, 0).intValue();
        }

        /* JADX INFO: renamed from: F */
        int m4069F(int[] iArr) {
            int iM4117A = super.m4117A(iArr);
            return iM4117A >= 0 ? iM4117A : super.m4117A(StateSet.WILD_CARD);
        }

        /* JADX INFO: renamed from: G */
        int m4070G(int i, int i2) {
            return (int) this.f3098K.m4259f(m4065D(i, i2), -1L).longValue();
        }

        /* JADX INFO: renamed from: H */
        boolean m4071H(int i, int i2) {
            return (this.f3098K.m4259f(m4065D(i, i2), -1L).longValue() & 4294967296L) != 0;
        }

        /* JADX INFO: renamed from: I */
        boolean m4072I(int i, int i2) {
            return (this.f3098K.m4259f(m4065D(i, i2), -1L).longValue() & 8589934592L) != 0;
        }

        @Override // p016c.p017a.p020l.p021a.C0507d.a, android.graphics.drawable.Drawable.ConstantState
        public Drawable newDrawable() {
            return new C0504a(this, null);
        }

        @Override // p016c.p017a.p020l.p021a.C0507d.a, p016c.p017a.p020l.p021a.C0505b.d
        /* JADX INFO: renamed from: r */
        void mo4073r() {
            this.f3098K = this.f3098K.clone();
            this.f3099L = this.f3099L.clone();
        }

        @Override // p016c.p017a.p020l.p021a.C0507d.a, android.graphics.drawable.Drawable.ConstantState
        public Drawable newDrawable(Resources resources) {
            return new C0504a(this, resources);
        }
    }

    /* JADX INFO: renamed from: c.a.l.a.a$d */
    private static class d extends g {

        /* JADX INFO: renamed from: a */
        private final C0692b f3100a;

        d(C0692b c0692b) {
            super(null);
            this.f3100a = c0692b;
        }

        @Override // p016c.p017a.p020l.p021a.C0504a.g
        /* JADX INFO: renamed from: c */
        public void mo4063c() {
            this.f3100a.start();
        }

        @Override // p016c.p017a.p020l.p021a.C0504a.g
        /* JADX INFO: renamed from: d */
        public void mo4064d() {
            this.f3100a.stop();
        }
    }

    /* JADX INFO: renamed from: c.a.l.a.a$e */
    private static class e extends g {

        /* JADX INFO: renamed from: a */
        private final ObjectAnimator f3101a;

        /* JADX INFO: renamed from: b */
        private final boolean f3102b;

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
            objectAnimatorOfInt.setDuration(fVar.m4076a());
            objectAnimatorOfInt.setInterpolator(fVar);
            this.f3102b = z2;
            this.f3101a = objectAnimatorOfInt;
        }

        @Override // p016c.p017a.p020l.p021a.C0504a.g
        /* JADX INFO: renamed from: a */
        public boolean mo4074a() {
            return this.f3102b;
        }

        @Override // p016c.p017a.p020l.p021a.C0504a.g
        /* JADX INFO: renamed from: b */
        public void mo4075b() {
            this.f3101a.reverse();
        }

        @Override // p016c.p017a.p020l.p021a.C0504a.g
        /* JADX INFO: renamed from: c */
        public void mo4063c() {
            this.f3101a.start();
        }

        @Override // p016c.p017a.p020l.p021a.C0504a.g
        /* JADX INFO: renamed from: d */
        public void mo4064d() {
            this.f3101a.cancel();
        }
    }

    /* JADX INFO: renamed from: c.a.l.a.a$f */
    private static class f implements TimeInterpolator {

        /* JADX INFO: renamed from: a */
        private int[] f3103a;

        /* JADX INFO: renamed from: b */
        private int f3104b;

        /* JADX INFO: renamed from: c */
        private int f3105c;

        f(AnimationDrawable animationDrawable, boolean z) {
            m4077b(animationDrawable, z);
        }

        /* JADX INFO: renamed from: a */
        int m4076a() {
            return this.f3105c;
        }

        /* JADX INFO: renamed from: b */
        int m4077b(AnimationDrawable animationDrawable, boolean z) {
            int numberOfFrames = animationDrawable.getNumberOfFrames();
            this.f3104b = numberOfFrames;
            int[] iArr = this.f3103a;
            if (iArr == null || iArr.length < numberOfFrames) {
                this.f3103a = new int[numberOfFrames];
            }
            int[] iArr2 = this.f3103a;
            int i = 0;
            for (int i2 = 0; i2 < numberOfFrames; i2++) {
                int duration = animationDrawable.getDuration(z ? (numberOfFrames - i2) - 1 : i2);
                iArr2[i2] = duration;
                i += duration;
            }
            this.f3105c = i;
            return i;
        }

        @Override // android.animation.TimeInterpolator
        public float getInterpolation(float f) {
            int i = (int) ((f * this.f3105c) + 0.5f);
            int i2 = this.f3104b;
            int[] iArr = this.f3103a;
            int i3 = 0;
            while (i3 < i2 && i >= iArr[i3]) {
                i -= iArr[i3];
                i3++;
            }
            return (i3 / i2) + (i3 < i2 ? i / this.f3105c : CropImageView.DEFAULT_ASPECT_RATIO);
        }
    }

    /* JADX INFO: renamed from: c.a.l.a.a$g */
    private static abstract class g {
        private g() {
        }

        /* JADX INFO: renamed from: a */
        public boolean mo4074a() {
            return false;
        }

        /* JADX INFO: renamed from: b */
        public void mo4075b() {
        }

        /* JADX INFO: renamed from: c */
        public abstract void mo4063c();

        /* JADX INFO: renamed from: d */
        public abstract void mo4064d();

        /* synthetic */ g(a aVar) {
            this();
        }
    }

    public C0504a() {
        this(null, null);
    }

    /* JADX INFO: renamed from: m */
    public static C0504a m4051m(Context context, Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) throws XmlPullParserException, IOException {
        String name = xmlPullParser.getName();
        if (name.equals("animated-selector")) {
            C0504a c0504a = new C0504a();
            c0504a.m4062n(context, resources, xmlPullParser, attributeSet, theme);
            return c0504a;
        }
        throw new XmlPullParserException(xmlPullParser.getPositionDescription() + ": invalid animated-selector tag " + name);
    }

    /* JADX INFO: renamed from: o */
    private void m4052o(Context context, Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) throws XmlPullParserException, IOException {
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
                    m4054q(context, resources, xmlPullParser, attributeSet, theme);
                } else if (xmlPullParser.getName().equals("transition")) {
                    m4055r(context, resources, xmlPullParser, attributeSet, theme);
                }
            }
        }
    }

    /* JADX INFO: renamed from: p */
    private void m4053p() {
        onStateChange(getState());
    }

    /* JADX INFO: renamed from: q */
    private int m4054q(Context context, Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) throws XmlPullParserException, IOException {
        int next;
        TypedArray typedArrayM1773k = C0250g.m1773k(resources, theme, attributeSet, C0509b.AnimatedStateListDrawableItem);
        int resourceId = typedArrayM1773k.getResourceId(C0509b.AnimatedStateListDrawableItem_android_id, 0);
        int resourceId2 = typedArrayM1773k.getResourceId(C0509b.AnimatedStateListDrawableItem_android_drawable, -1);
        Drawable drawableM1211j = resourceId2 > 0 ? C0175k0.m1202h().m1211j(context, resourceId2) : null;
        typedArrayM1773k.recycle();
        int[] iArrM4116k = m4116k(attributeSet);
        if (drawableM1211j == null) {
            do {
                next = xmlPullParser.next();
            } while (next == 4);
            if (next != 2) {
                throw new XmlPullParserException(xmlPullParser.getPositionDescription() + ": <item> tag requires a 'drawable' attribute or child tag defining a drawable");
            }
            drawableM1211j = xmlPullParser.getName().equals("vector") ? C0698h.m5226c(resources, xmlPullParser, attributeSet, theme) : Build.VERSION.SDK_INT >= 21 ? Drawable.createFromXmlInner(resources, xmlPullParser, attributeSet, theme) : Drawable.createFromXmlInner(resources, xmlPullParser, attributeSet);
        }
        if (drawableM1211j != null) {
            return this.f3092p.m4066B(iArrM4116k, drawableM1211j, resourceId);
        }
        throw new XmlPullParserException(xmlPullParser.getPositionDescription() + ": <item> tag requires a 'drawable' attribute or child tag defining a drawable");
    }

    /* JADX INFO: renamed from: r */
    private int m4055r(Context context, Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) throws XmlPullParserException, IOException {
        int next;
        TypedArray typedArrayM1773k = C0250g.m1773k(resources, theme, attributeSet, C0509b.AnimatedStateListDrawableTransition);
        int resourceId = typedArrayM1773k.getResourceId(C0509b.AnimatedStateListDrawableTransition_android_fromId, -1);
        int resourceId2 = typedArrayM1773k.getResourceId(C0509b.AnimatedStateListDrawableTransition_android_toId, -1);
        int resourceId3 = typedArrayM1773k.getResourceId(C0509b.AnimatedStateListDrawableTransition_android_drawable, -1);
        Drawable drawableM1211j = resourceId3 > 0 ? C0175k0.m1202h().m1211j(context, resourceId3) : null;
        boolean z = typedArrayM1773k.getBoolean(C0509b.AnimatedStateListDrawableTransition_android_reversible, false);
        typedArrayM1773k.recycle();
        if (drawableM1211j == null) {
            do {
                next = xmlPullParser.next();
            } while (next == 4);
            if (next != 2) {
                throw new XmlPullParserException(xmlPullParser.getPositionDescription() + ": <transition> tag requires a 'drawable' attribute or child tag defining a drawable");
            }
            drawableM1211j = xmlPullParser.getName().equals("animated-vector") ? C0692b.m5193a(context, resources, xmlPullParser, attributeSet, theme) : Build.VERSION.SDK_INT >= 21 ? Drawable.createFromXmlInner(resources, xmlPullParser, attributeSet, theme) : Drawable.createFromXmlInner(resources, xmlPullParser, attributeSet);
        }
        if (drawableM1211j == null) {
            throw new XmlPullParserException(xmlPullParser.getPositionDescription() + ": <transition> tag requires a 'drawable' attribute or child tag defining a drawable");
        }
        if (resourceId != -1 && resourceId2 != -1) {
            return this.f3092p.m4067C(resourceId, resourceId2, drawableM1211j, z);
        }
        throw new XmlPullParserException(xmlPullParser.getPositionDescription() + ": <transition> tag requires 'fromId' & 'toId' attributes");
    }

    /* JADX INFO: renamed from: s */
    private boolean m4056s(int i) {
        int iM4082c;
        int iM4070G;
        g bVar;
        g gVar = this.f3093q;
        if (gVar == null) {
            iM4082c = m4082c();
        } else {
            if (i == this.f3094r) {
                return true;
            }
            if (i == this.f3095s && gVar.mo4074a()) {
                gVar.mo4075b();
                this.f3094r = this.f3095s;
                this.f3095s = i;
                return true;
            }
            iM4082c = this.f3094r;
            gVar.mo4064d();
        }
        this.f3093q = null;
        this.f3095s = -1;
        this.f3094r = -1;
        c cVar = this.f3092p;
        int iM4068E = cVar.m4068E(iM4082c);
        int iM4068E2 = cVar.m4068E(i);
        if (iM4068E2 == 0 || iM4068E == 0 || (iM4070G = cVar.m4070G(iM4068E, iM4068E2)) < 0) {
            return false;
        }
        boolean zM4072I = cVar.m4072I(iM4068E, iM4068E2);
        m4083g(iM4070G);
        Object current = getCurrent();
        if (current instanceof AnimationDrawable) {
            bVar = new e((AnimationDrawable) current, cVar.m4071H(iM4068E, iM4068E2), zM4072I);
        } else {
            if (!(current instanceof C0692b)) {
                if (current instanceof Animatable) {
                    bVar = new b((Animatable) current);
                }
                return false;
            }
            bVar = new d((C0692b) current);
        }
        bVar.mo4063c();
        this.f3093q = bVar;
        this.f3095s = iM4082c;
        this.f3094r = i;
        return true;
    }

    /* JADX INFO: renamed from: t */
    private void m4057t(TypedArray typedArray) {
        c cVar = this.f3092p;
        if (Build.VERSION.SDK_INT >= 21) {
            cVar.f3132d |= typedArray.getChangingConfigurations();
        }
        cVar.m4112x(typedArray.getBoolean(C0509b.AnimatedStateListDrawableCompat_android_variablePadding, cVar.f3137i));
        cVar.m4108t(typedArray.getBoolean(C0509b.AnimatedStateListDrawableCompat_android_constantSize, cVar.f3140l));
        cVar.m4109u(typedArray.getInt(C0509b.AnimatedStateListDrawableCompat_android_enterFadeDuration, cVar.f3120A));
        cVar.m4110v(typedArray.getInt(C0509b.AnimatedStateListDrawableCompat_android_exitFadeDuration, cVar.f3121B));
        setDither(typedArray.getBoolean(C0509b.AnimatedStateListDrawableCompat_android_dither, cVar.f3152x));
    }

    @Override // p016c.p017a.p020l.p021a.C0507d, p016c.p017a.p020l.p021a.C0505b
    /* JADX INFO: renamed from: h */
    void mo4059h(C0505b.d dVar) {
        super.mo4059h(dVar);
        if (dVar instanceof c) {
            this.f3092p = (c) dVar;
        }
    }

    @Override // p016c.p017a.p020l.p021a.C0507d, android.graphics.drawable.Drawable
    public boolean isStateful() {
        return true;
    }

    @Override // p016c.p017a.p020l.p021a.C0505b, android.graphics.drawable.Drawable
    public void jumpToCurrentState() {
        super.jumpToCurrentState();
        g gVar = this.f3093q;
        if (gVar != null) {
            gVar.mo4064d();
            this.f3093q = null;
            m4083g(this.f3094r);
            this.f3094r = -1;
            this.f3095s = -1;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // p016c.p017a.p020l.p021a.C0507d
    /* JADX INFO: renamed from: l, reason: merged with bridge method [inline-methods] */
    public c mo4058b() {
        return new c(this.f3092p, this, null);
    }

    @Override // p016c.p017a.p020l.p021a.C0507d, p016c.p017a.p020l.p021a.C0505b, android.graphics.drawable.Drawable
    public Drawable mutate() {
        if (!this.f3096t) {
            super.mutate();
            if (this == this) {
                this.f3092p.mo4073r();
                this.f3096t = true;
            }
        }
        return this;
    }

    /* JADX INFO: renamed from: n */
    public void m4062n(Context context, Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) throws XmlPullParserException, IOException {
        TypedArray typedArrayM1773k = C0250g.m1773k(resources, theme, attributeSet, C0509b.AnimatedStateListDrawableCompat);
        setVisible(typedArrayM1773k.getBoolean(C0509b.AnimatedStateListDrawableCompat_android_visible, true), true);
        m4057t(typedArrayM1773k);
        m4084i(resources);
        typedArrayM1773k.recycle();
        m4052o(context, resources, xmlPullParser, attributeSet, theme);
        m4053p();
    }

    @Override // p016c.p017a.p020l.p021a.C0507d, p016c.p017a.p020l.p021a.C0505b, android.graphics.drawable.Drawable
    protected boolean onStateChange(int[] iArr) {
        int iM4069F = this.f3092p.m4069F(iArr);
        boolean z = iM4069F != m4082c() && (m4056s(iM4069F) || m4083g(iM4069F));
        Drawable current = getCurrent();
        return current != null ? z | current.setState(iArr) : z;
    }

    @Override // p016c.p017a.p020l.p021a.C0505b, android.graphics.drawable.Drawable
    public boolean setVisible(boolean z, boolean z2) {
        boolean visible = super.setVisible(z, z2);
        if (this.f3093q != null && (visible || z2)) {
            if (z) {
                this.f3093q.mo4063c();
            } else {
                jumpToCurrentState();
            }
        }
        return visible;
    }

    C0504a(c cVar, Resources resources) {
        super(null);
        this.f3094r = -1;
        this.f3095s = -1;
        mo4059h(new c(cVar, this, resources));
        onStateChange(getState());
        jumpToCurrentState();
    }
}
