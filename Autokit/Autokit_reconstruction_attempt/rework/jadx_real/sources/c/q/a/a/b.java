package c.q.a.a;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.animation.ArgbEvaluator;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.Animatable;
import android.graphics.drawable.AnimatedVectorDrawable;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.AttributeSet;
import java.io.IOException;
import java.util.ArrayList;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* JADX INFO: loaded from: /Volumes/stuff/macbook/misc/CPC200-CCPA/rework/dumped_real_classes.dex */
public class b extends g implements Animatable {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private C0068b f1330c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Context f1331d;
    private ArgbEvaluator e;
    final Drawable.Callback f;

    class a implements Drawable.Callback {
        a() {
        }

        @Override // android.graphics.drawable.Drawable.Callback
        public void invalidateDrawable(Drawable drawable) {
            b.this.invalidateSelf();
        }

        @Override // android.graphics.drawable.Drawable.Callback
        public void scheduleDrawable(Drawable drawable, Runnable runnable, long j) {
            b.this.scheduleSelf(runnable, j);
        }

        @Override // android.graphics.drawable.Drawable.Callback
        public void unscheduleDrawable(Drawable drawable, Runnable runnable) {
            b.this.unscheduleSelf(runnable);
        }
    }

    /* JADX INFO: renamed from: c.q.a.a.b$b, reason: collision with other inner class name */
    private static class C0068b extends Drawable.ConstantState {
        int a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        h f1333b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        AnimatorSet f1334c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        ArrayList<Animator> f1335d;
        c.d.a<Animator, String> e;

        public C0068b(Context context, C0068b c0068b, Drawable.Callback callback, Resources resources) {
            if (c0068b != null) {
                this.a = c0068b.a;
                h hVar = c0068b.f1333b;
                if (hVar != null) {
                    Drawable.ConstantState constantState = hVar.getConstantState();
                    if (resources != null) {
                        this.f1333b = (h) constantState.newDrawable(resources);
                    } else {
                        this.f1333b = (h) constantState.newDrawable();
                    }
                    h hVar2 = this.f1333b;
                    hVar2.mutate();
                    h hVar3 = hVar2;
                    this.f1333b = hVar3;
                    hVar3.setCallback(callback);
                    this.f1333b.setBounds(c0068b.f1333b.getBounds());
                    this.f1333b.h(false);
                }
                ArrayList<Animator> arrayList = c0068b.f1335d;
                if (arrayList != null) {
                    int size = arrayList.size();
                    this.f1335d = new ArrayList<>(size);
                    this.e = new c.d.a<>(size);
                    for (int i = 0; i < size; i++) {
                        Animator animator = c0068b.f1335d.get(i);
                        Animator animatorClone = animator.clone();
                        String str = c0068b.e.get(animator);
                        animatorClone.setTarget(this.f1333b.d(str));
                        this.f1335d.add(animatorClone);
                        this.e.put(animatorClone, str);
                    }
                    a();
                }
            }
        }

        public void a() {
            if (this.f1334c == null) {
                this.f1334c = new AnimatorSet();
            }
            this.f1334c.playTogether(this.f1335d);
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public int getChangingConfigurations() {
            return this.a;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public Drawable newDrawable() {
            throw new IllegalStateException("No constant state support for SDK < 24.");
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public Drawable newDrawable(Resources resources) {
            throw new IllegalStateException("No constant state support for SDK < 24.");
        }
    }

    b() {
        this(null, null, null);
    }

    public static b a(Context context, Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) throws XmlPullParserException, IOException {
        b bVar = new b(context);
        bVar.inflate(resources, xmlPullParser, attributeSet, theme);
        return bVar;
    }

    private void b(String str, Animator animator) {
        animator.setTarget(this.f1330c.f1333b.d(str));
        if (Build.VERSION.SDK_INT < 21) {
            c(animator);
        }
        C0068b c0068b = this.f1330c;
        if (c0068b.f1335d == null) {
            c0068b.f1335d = new ArrayList<>();
            this.f1330c.e = new c.d.a<>();
        }
        this.f1330c.f1335d.add(animator);
        this.f1330c.e.put(animator, str);
    }

    private void c(Animator animator) {
        ArrayList<Animator> childAnimations;
        if ((animator instanceof AnimatorSet) && (childAnimations = ((AnimatorSet) animator).getChildAnimations()) != null) {
            for (int i = 0; i < childAnimations.size(); i++) {
                c(childAnimations.get(i));
            }
        }
        if (animator instanceof ObjectAnimator) {
            ObjectAnimator objectAnimator = (ObjectAnimator) animator;
            String propertyName = objectAnimator.getPropertyName();
            if ("fillColor".equals(propertyName) || "strokeColor".equals(propertyName)) {
                if (this.e == null) {
                    this.e = new ArgbEvaluator();
                }
                objectAnimator.setEvaluator(this.e);
            }
        }
    }

    @Override // c.q.a.a.g, android.graphics.drawable.Drawable
    public void applyTheme(Resources.Theme theme) {
        Drawable drawable = this.f1337b;
        if (drawable != null) {
            androidx.core.graphics.drawable.a.a(drawable, theme);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public boolean canApplyTheme() {
        Drawable drawable = this.f1337b;
        if (drawable != null) {
            return androidx.core.graphics.drawable.a.b(drawable);
        }
        return false;
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        Drawable drawable = this.f1337b;
        if (drawable != null) {
            drawable.draw(canvas);
            return;
        }
        this.f1330c.f1333b.draw(canvas);
        if (this.f1330c.f1334c.isStarted()) {
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public int getAlpha() {
        Drawable drawable = this.f1337b;
        return drawable != null ? androidx.core.graphics.drawable.a.d(drawable) : this.f1330c.f1333b.getAlpha();
    }

    @Override // android.graphics.drawable.Drawable
    public int getChangingConfigurations() {
        Drawable drawable = this.f1337b;
        return drawable != null ? drawable.getChangingConfigurations() : super.getChangingConfigurations() | this.f1330c.a;
    }

    @Override // android.graphics.drawable.Drawable
    public ColorFilter getColorFilter() {
        Drawable drawable = this.f1337b;
        return drawable != null ? androidx.core.graphics.drawable.a.e(drawable) : this.f1330c.f1333b.getColorFilter();
    }

    @Override // android.graphics.drawable.Drawable
    public Drawable.ConstantState getConstantState() {
        if (this.f1337b == null || Build.VERSION.SDK_INT < 24) {
            return null;
        }
        return new c(this.f1337b.getConstantState());
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        Drawable drawable = this.f1337b;
        return drawable != null ? drawable.getIntrinsicHeight() : this.f1330c.f1333b.getIntrinsicHeight();
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        Drawable drawable = this.f1337b;
        return drawable != null ? drawable.getIntrinsicWidth() : this.f1330c.f1333b.getIntrinsicWidth();
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        Drawable drawable = this.f1337b;
        return drawable != null ? drawable.getOpacity() : this.f1330c.f1333b.getOpacity();
    }

    @Override // android.graphics.drawable.Drawable
    public void inflate(Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) throws XmlPullParserException, IOException {
        Drawable drawable = this.f1337b;
        if (drawable != null) {
            androidx.core.graphics.drawable.a.g(drawable, resources, xmlPullParser, attributeSet, theme);
            return;
        }
        int eventType = xmlPullParser.getEventType();
        int depth = xmlPullParser.getDepth() + 1;
        while (eventType != 1 && (xmlPullParser.getDepth() >= depth || eventType != 3)) {
            if (eventType == 2) {
                String name = xmlPullParser.getName();
                if ("animated-vector".equals(name)) {
                    TypedArray typedArrayK = androidx.core.content.c.g.k(resources, theme, attributeSet, c.q.a.a.a.e);
                    int resourceId = typedArrayK.getResourceId(0, 0);
                    if (resourceId != 0) {
                        h hVarB = h.b(resources, resourceId, theme);
                        hVarB.h(false);
                        hVarB.setCallback(this.f);
                        h hVar = this.f1330c.f1333b;
                        if (hVar != null) {
                            hVar.setCallback(null);
                        }
                        this.f1330c.f1333b = hVarB;
                    }
                    typedArrayK.recycle();
                } else if ("target".equals(name)) {
                    TypedArray typedArrayObtainAttributes = resources.obtainAttributes(attributeSet, c.q.a.a.a.f);
                    String string = typedArrayObtainAttributes.getString(0);
                    int resourceId2 = typedArrayObtainAttributes.getResourceId(1, 0);
                    if (resourceId2 != 0) {
                        Context context = this.f1331d;
                        if (context == null) {
                            typedArrayObtainAttributes.recycle();
                            throw new IllegalStateException("Context can't be null when inflating animators");
                        }
                        b(string, d.i(context, resourceId2));
                    }
                    typedArrayObtainAttributes.recycle();
                } else {
                    continue;
                }
            }
            eventType = xmlPullParser.next();
        }
        this.f1330c.a();
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isAutoMirrored() {
        Drawable drawable = this.f1337b;
        return drawable != null ? androidx.core.graphics.drawable.a.h(drawable) : this.f1330c.f1333b.isAutoMirrored();
    }

    @Override // android.graphics.drawable.Animatable
    public boolean isRunning() {
        Drawable drawable = this.f1337b;
        return drawable != null ? ((AnimatedVectorDrawable) drawable).isRunning() : this.f1330c.f1334c.isRunning();
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isStateful() {
        Drawable drawable = this.f1337b;
        return drawable != null ? drawable.isStateful() : this.f1330c.f1333b.isStateful();
    }

    @Override // android.graphics.drawable.Drawable
    public Drawable mutate() {
        Drawable drawable = this.f1337b;
        if (drawable != null) {
            drawable.mutate();
        }
        return this;
    }

    @Override // android.graphics.drawable.Drawable
    protected void onBoundsChange(Rect rect) {
        Drawable drawable = this.f1337b;
        if (drawable != null) {
            drawable.setBounds(rect);
        } else {
            this.f1330c.f1333b.setBounds(rect);
        }
    }

    @Override // c.q.a.a.g, android.graphics.drawable.Drawable
    protected boolean onLevelChange(int i) {
        Drawable drawable = this.f1337b;
        return drawable != null ? drawable.setLevel(i) : this.f1330c.f1333b.setLevel(i);
    }

    @Override // android.graphics.drawable.Drawable
    protected boolean onStateChange(int[] iArr) {
        Drawable drawable = this.f1337b;
        return drawable != null ? drawable.setState(iArr) : this.f1330c.f1333b.setState(iArr);
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i) {
        Drawable drawable = this.f1337b;
        if (drawable != null) {
            drawable.setAlpha(i);
        } else {
            this.f1330c.f1333b.setAlpha(i);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setAutoMirrored(boolean z) {
        Drawable drawable = this.f1337b;
        if (drawable != null) {
            androidx.core.graphics.drawable.a.j(drawable, z);
        } else {
            this.f1330c.f1333b.setAutoMirrored(z);
        }
    }

    @Override // android.graphics.drawable.Drawable, androidx.core.graphics.drawable.b
    public void setTint(int i) {
        Drawable drawable = this.f1337b;
        if (drawable != null) {
            androidx.core.graphics.drawable.a.n(drawable, i);
        } else {
            this.f1330c.f1333b.setTint(i);
        }
    }

    @Override // android.graphics.drawable.Drawable, androidx.core.graphics.drawable.b
    public void setTintList(ColorStateList colorStateList) {
        Drawable drawable = this.f1337b;
        if (drawable != null) {
            androidx.core.graphics.drawable.a.o(drawable, colorStateList);
        } else {
            this.f1330c.f1333b.setTintList(colorStateList);
        }
    }

    @Override // android.graphics.drawable.Drawable, androidx.core.graphics.drawable.b
    public void setTintMode(PorterDuff.Mode mode) {
        Drawable drawable = this.f1337b;
        if (drawable != null) {
            androidx.core.graphics.drawable.a.p(drawable, mode);
        } else {
            this.f1330c.f1333b.setTintMode(mode);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public boolean setVisible(boolean z, boolean z2) {
        Drawable drawable = this.f1337b;
        if (drawable != null) {
            return drawable.setVisible(z, z2);
        }
        this.f1330c.f1333b.setVisible(z, z2);
        return super.setVisible(z, z2);
    }

    @Override // android.graphics.drawable.Animatable
    public void start() {
        Drawable drawable = this.f1337b;
        if (drawable != null) {
            ((AnimatedVectorDrawable) drawable).start();
        } else {
            if (this.f1330c.f1334c.isStarted()) {
                return;
            }
            this.f1330c.f1334c.start();
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Animatable
    public void stop() {
        Drawable drawable = this.f1337b;
        if (drawable != null) {
            ((AnimatedVectorDrawable) drawable).stop();
        } else {
            this.f1330c.f1334c.end();
        }
    }

    private b(Context context) {
        this(context, null, null);
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        Drawable drawable = this.f1337b;
        if (drawable != null) {
            drawable.setColorFilter(colorFilter);
        } else {
            this.f1330c.f1333b.setColorFilter(colorFilter);
        }
    }

    private static class c extends Drawable.ConstantState {
        private final Drawable.ConstantState a;

        public c(Drawable.ConstantState constantState) {
            this.a = constantState;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public boolean canApplyTheme() {
            return this.a.canApplyTheme();
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public int getChangingConfigurations() {
            return this.a.getChangingConfigurations();
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public Drawable newDrawable() {
            b bVar = new b();
            Drawable drawableNewDrawable = this.a.newDrawable();
            bVar.f1337b = drawableNewDrawable;
            drawableNewDrawable.setCallback(bVar.f);
            return bVar;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public Drawable newDrawable(Resources resources) {
            b bVar = new b();
            Drawable drawableNewDrawable = this.a.newDrawable(resources);
            bVar.f1337b = drawableNewDrawable;
            drawableNewDrawable.setCallback(bVar.f);
            return bVar;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public Drawable newDrawable(Resources resources, Resources.Theme theme) {
            b bVar = new b();
            Drawable drawableNewDrawable = this.a.newDrawable(resources, theme);
            bVar.f1337b = drawableNewDrawable;
            drawableNewDrawable.setCallback(bVar.f);
            return bVar;
        }
    }

    private b(Context context, C0068b c0068b, Resources resources) {
        this.e = null;
        this.f = new a();
        this.f1331d = context;
        if (c0068b != null) {
            this.f1330c = c0068b;
        } else {
            this.f1330c = new C0068b(context, c0068b, this.f, resources);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void inflate(Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet) throws XmlPullParserException, IOException {
        inflate(resources, xmlPullParser, attributeSet, null);
    }
}
