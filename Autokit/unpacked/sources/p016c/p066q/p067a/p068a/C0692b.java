package p016c.p066q.p067a.p068a;

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
import androidx.core.content.p003c.C0250g;
import androidx.core.graphics.drawable.C0251a;
import java.io.IOException;
import java.util.ArrayList;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
import p016c.p032d.C0534a;

/* JADX INFO: renamed from: c.q.a.a.b */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class C0692b extends AbstractC0697g implements Animatable {

    /* JADX INFO: renamed from: c */
    private b f4087c;

    /* JADX INFO: renamed from: d */
    private Context f4088d;

    /* JADX INFO: renamed from: e */
    private ArgbEvaluator f4089e;

    /* JADX INFO: renamed from: f */
    final Drawable.Callback f4090f;

    /* JADX INFO: renamed from: c.q.a.a.b$a */
    class a implements Drawable.Callback {
        a() {
        }

        @Override // android.graphics.drawable.Drawable.Callback
        public void invalidateDrawable(Drawable drawable) {
            C0692b.this.invalidateSelf();
        }

        @Override // android.graphics.drawable.Drawable.Callback
        public void scheduleDrawable(Drawable drawable, Runnable runnable, long j) {
            C0692b.this.scheduleSelf(runnable, j);
        }

        @Override // android.graphics.drawable.Drawable.Callback
        public void unscheduleDrawable(Drawable drawable, Runnable runnable) {
            C0692b.this.unscheduleSelf(runnable);
        }
    }

    /* JADX INFO: renamed from: c.q.a.a.b$b */
    private static class b extends Drawable.ConstantState {

        /* JADX INFO: renamed from: a */
        int f4092a;

        /* JADX INFO: renamed from: b */
        C0698h f4093b;

        /* JADX INFO: renamed from: c */
        AnimatorSet f4094c;

        /* JADX INFO: renamed from: d */
        ArrayList<Animator> f4095d;

        /* JADX INFO: renamed from: e */
        C0534a<Animator, String> f4096e;

        public b(Context context, b bVar, Drawable.Callback callback, Resources resources) {
            if (bVar != null) {
                this.f4092a = bVar.f4092a;
                C0698h c0698h = bVar.f4093b;
                if (c0698h != null) {
                    Drawable.ConstantState constantState = c0698h.getConstantState();
                    if (resources != null) {
                        this.f4093b = (C0698h) constantState.newDrawable(resources);
                    } else {
                        this.f4093b = (C0698h) constantState.newDrawable();
                    }
                    C0698h c0698h2 = this.f4093b;
                    c0698h2.mutate();
                    C0698h c0698h3 = c0698h2;
                    this.f4093b = c0698h3;
                    c0698h3.setCallback(callback);
                    this.f4093b.setBounds(bVar.f4093b.getBounds());
                    this.f4093b.m5232h(false);
                }
                ArrayList<Animator> arrayList = bVar.f4095d;
                if (arrayList != null) {
                    int size = arrayList.size();
                    this.f4095d = new ArrayList<>(size);
                    this.f4096e = new C0534a<>(size);
                    for (int i = 0; i < size; i++) {
                        Animator animator = bVar.f4095d.get(i);
                        Animator animatorClone = animator.clone();
                        String str = bVar.f4096e.get(animator);
                        animatorClone.setTarget(this.f4093b.m5231d(str));
                        this.f4095d.add(animatorClone);
                        this.f4096e.put(animatorClone, str);
                    }
                    m5196a();
                }
            }
        }

        /* JADX INFO: renamed from: a */
        public void m5196a() {
            if (this.f4094c == null) {
                this.f4094c = new AnimatorSet();
            }
            this.f4094c.playTogether(this.f4095d);
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public int getChangingConfigurations() {
            return this.f4092a;
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

    C0692b() {
        this(null, null, null);
    }

    /* JADX INFO: renamed from: a */
    public static C0692b m5193a(Context context, Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) throws XmlPullParserException, IOException {
        C0692b c0692b = new C0692b(context);
        c0692b.inflate(resources, xmlPullParser, attributeSet, theme);
        return c0692b;
    }

    /* JADX INFO: renamed from: b */
    private void m5194b(String str, Animator animator) {
        animator.setTarget(this.f4087c.f4093b.m5231d(str));
        if (Build.VERSION.SDK_INT < 21) {
            m5195c(animator);
        }
        b bVar = this.f4087c;
        if (bVar.f4095d == null) {
            bVar.f4095d = new ArrayList<>();
            this.f4087c.f4096e = new C0534a<>();
        }
        this.f4087c.f4095d.add(animator);
        this.f4087c.f4096e.put(animator, str);
    }

    /* JADX INFO: renamed from: c */
    private void m5195c(Animator animator) {
        ArrayList<Animator> childAnimations;
        if ((animator instanceof AnimatorSet) && (childAnimations = ((AnimatorSet) animator).getChildAnimations()) != null) {
            for (int i = 0; i < childAnimations.size(); i++) {
                m5195c(childAnimations.get(i));
            }
        }
        if (animator instanceof ObjectAnimator) {
            ObjectAnimator objectAnimator = (ObjectAnimator) animator;
            String propertyName = objectAnimator.getPropertyName();
            if ("fillColor".equals(propertyName) || "strokeColor".equals(propertyName)) {
                if (this.f4089e == null) {
                    this.f4089e = new ArgbEvaluator();
                }
                objectAnimator.setEvaluator(this.f4089e);
            }
        }
    }

    @Override // p016c.p066q.p067a.p068a.AbstractC0697g, android.graphics.drawable.Drawable
    public void applyTheme(Resources.Theme theme) {
        Drawable drawable = this.f4102b;
        if (drawable != null) {
            C0251a.m1780a(drawable, theme);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public boolean canApplyTheme() {
        Drawable drawable = this.f4102b;
        if (drawable != null) {
            return C0251a.m1781b(drawable);
        }
        return false;
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        Drawable drawable = this.f4102b;
        if (drawable != null) {
            drawable.draw(canvas);
            return;
        }
        this.f4087c.f4093b.draw(canvas);
        if (this.f4087c.f4094c.isStarted()) {
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public int getAlpha() {
        Drawable drawable = this.f4102b;
        return drawable != null ? C0251a.m1783d(drawable) : this.f4087c.f4093b.getAlpha();
    }

    @Override // android.graphics.drawable.Drawable
    public int getChangingConfigurations() {
        Drawable drawable = this.f4102b;
        return drawable != null ? drawable.getChangingConfigurations() : super.getChangingConfigurations() | this.f4087c.f4092a;
    }

    @Override // android.graphics.drawable.Drawable
    public ColorFilter getColorFilter() {
        Drawable drawable = this.f4102b;
        return drawable != null ? C0251a.m1784e(drawable) : this.f4087c.f4093b.getColorFilter();
    }

    @Override // android.graphics.drawable.Drawable
    public Drawable.ConstantState getConstantState() {
        if (this.f4102b == null || Build.VERSION.SDK_INT < 24) {
            return null;
        }
        return new c(this.f4102b.getConstantState());
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        Drawable drawable = this.f4102b;
        return drawable != null ? drawable.getIntrinsicHeight() : this.f4087c.f4093b.getIntrinsicHeight();
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        Drawable drawable = this.f4102b;
        return drawable != null ? drawable.getIntrinsicWidth() : this.f4087c.f4093b.getIntrinsicWidth();
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        Drawable drawable = this.f4102b;
        return drawable != null ? drawable.getOpacity() : this.f4087c.f4093b.getOpacity();
    }

    @Override // android.graphics.drawable.Drawable
    public void inflate(Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) throws XmlPullParserException, IOException {
        Drawable drawable = this.f4102b;
        if (drawable != null) {
            C0251a.m1786g(drawable, resources, xmlPullParser, attributeSet, theme);
            return;
        }
        int eventType = xmlPullParser.getEventType();
        int depth = xmlPullParser.getDepth() + 1;
        while (eventType != 1 && (xmlPullParser.getDepth() >= depth || eventType != 3)) {
            if (eventType == 2) {
                String name = xmlPullParser.getName();
                if ("animated-vector".equals(name)) {
                    TypedArray typedArrayM1773k = C0250g.m1773k(resources, theme, attributeSet, C0691a.f4079e);
                    int resourceId = typedArrayM1773k.getResourceId(0, 0);
                    if (resourceId != 0) {
                        C0698h c0698hM5225b = C0698h.m5225b(resources, resourceId, theme);
                        c0698hM5225b.m5232h(false);
                        c0698hM5225b.setCallback(this.f4090f);
                        C0698h c0698h = this.f4087c.f4093b;
                        if (c0698h != null) {
                            c0698h.setCallback(null);
                        }
                        this.f4087c.f4093b = c0698hM5225b;
                    }
                    typedArrayM1773k.recycle();
                } else if ("target".equals(name)) {
                    TypedArray typedArrayObtainAttributes = resources.obtainAttributes(attributeSet, C0691a.f4080f);
                    String string = typedArrayObtainAttributes.getString(0);
                    int resourceId2 = typedArrayObtainAttributes.getResourceId(1, 0);
                    if (resourceId2 != 0) {
                        Context context = this.f4088d;
                        if (context == null) {
                            typedArrayObtainAttributes.recycle();
                            throw new IllegalStateException("Context can't be null when inflating animators");
                        }
                        m5194b(string, C0694d.m5207i(context, resourceId2));
                    }
                    typedArrayObtainAttributes.recycle();
                } else {
                    continue;
                }
            }
            eventType = xmlPullParser.next();
        }
        this.f4087c.m5196a();
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isAutoMirrored() {
        Drawable drawable = this.f4102b;
        return drawable != null ? C0251a.m1787h(drawable) : this.f4087c.f4093b.isAutoMirrored();
    }

    @Override // android.graphics.drawable.Animatable
    public boolean isRunning() {
        Drawable drawable = this.f4102b;
        return drawable != null ? ((AnimatedVectorDrawable) drawable).isRunning() : this.f4087c.f4094c.isRunning();
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isStateful() {
        Drawable drawable = this.f4102b;
        return drawable != null ? drawable.isStateful() : this.f4087c.f4093b.isStateful();
    }

    @Override // android.graphics.drawable.Drawable
    public Drawable mutate() {
        Drawable drawable = this.f4102b;
        if (drawable != null) {
            drawable.mutate();
        }
        return this;
    }

    @Override // android.graphics.drawable.Drawable
    protected void onBoundsChange(Rect rect) {
        Drawable drawable = this.f4102b;
        if (drawable != null) {
            drawable.setBounds(rect);
        } else {
            this.f4087c.f4093b.setBounds(rect);
        }
    }

    @Override // p016c.p066q.p067a.p068a.AbstractC0697g, android.graphics.drawable.Drawable
    protected boolean onLevelChange(int i) {
        Drawable drawable = this.f4102b;
        return drawable != null ? drawable.setLevel(i) : this.f4087c.f4093b.setLevel(i);
    }

    @Override // android.graphics.drawable.Drawable
    protected boolean onStateChange(int[] iArr) {
        Drawable drawable = this.f4102b;
        return drawable != null ? drawable.setState(iArr) : this.f4087c.f4093b.setState(iArr);
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i) {
        Drawable drawable = this.f4102b;
        if (drawable != null) {
            drawable.setAlpha(i);
        } else {
            this.f4087c.f4093b.setAlpha(i);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setAutoMirrored(boolean z) {
        Drawable drawable = this.f4102b;
        if (drawable != null) {
            C0251a.m1789j(drawable, z);
        } else {
            this.f4087c.f4093b.setAutoMirrored(z);
        }
    }

    @Override // android.graphics.drawable.Drawable, androidx.core.graphics.drawable.InterfaceC0252b
    public void setTint(int i) {
        Drawable drawable = this.f4102b;
        if (drawable != null) {
            C0251a.m1793n(drawable, i);
        } else {
            this.f4087c.f4093b.setTint(i);
        }
    }

    @Override // android.graphics.drawable.Drawable, androidx.core.graphics.drawable.InterfaceC0252b
    public void setTintList(ColorStateList colorStateList) {
        Drawable drawable = this.f4102b;
        if (drawable != null) {
            C0251a.m1794o(drawable, colorStateList);
        } else {
            this.f4087c.f4093b.setTintList(colorStateList);
        }
    }

    @Override // android.graphics.drawable.Drawable, androidx.core.graphics.drawable.InterfaceC0252b
    public void setTintMode(PorterDuff.Mode mode) {
        Drawable drawable = this.f4102b;
        if (drawable != null) {
            C0251a.m1795p(drawable, mode);
        } else {
            this.f4087c.f4093b.setTintMode(mode);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public boolean setVisible(boolean z, boolean z2) {
        Drawable drawable = this.f4102b;
        if (drawable != null) {
            return drawable.setVisible(z, z2);
        }
        this.f4087c.f4093b.setVisible(z, z2);
        return super.setVisible(z, z2);
    }

    @Override // android.graphics.drawable.Animatable
    public void start() {
        Drawable drawable = this.f4102b;
        if (drawable != null) {
            ((AnimatedVectorDrawable) drawable).start();
        } else {
            if (this.f4087c.f4094c.isStarted()) {
                return;
            }
            this.f4087c.f4094c.start();
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Animatable
    public void stop() {
        Drawable drawable = this.f4102b;
        if (drawable != null) {
            ((AnimatedVectorDrawable) drawable).stop();
        } else {
            this.f4087c.f4094c.end();
        }
    }

    private C0692b(Context context) {
        this(context, null, null);
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        Drawable drawable = this.f4102b;
        if (drawable != null) {
            drawable.setColorFilter(colorFilter);
        } else {
            this.f4087c.f4093b.setColorFilter(colorFilter);
        }
    }

    /* JADX INFO: renamed from: c.q.a.a.b$c */
    private static class c extends Drawable.ConstantState {

        /* JADX INFO: renamed from: a */
        private final Drawable.ConstantState f4097a;

        public c(Drawable.ConstantState constantState) {
            this.f4097a = constantState;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public boolean canApplyTheme() {
            return this.f4097a.canApplyTheme();
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public int getChangingConfigurations() {
            return this.f4097a.getChangingConfigurations();
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public Drawable newDrawable() {
            C0692b c0692b = new C0692b();
            Drawable drawableNewDrawable = this.f4097a.newDrawable();
            c0692b.f4102b = drawableNewDrawable;
            drawableNewDrawable.setCallback(c0692b.f4090f);
            return c0692b;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public Drawable newDrawable(Resources resources) {
            C0692b c0692b = new C0692b();
            Drawable drawableNewDrawable = this.f4097a.newDrawable(resources);
            c0692b.f4102b = drawableNewDrawable;
            drawableNewDrawable.setCallback(c0692b.f4090f);
            return c0692b;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public Drawable newDrawable(Resources resources, Resources.Theme theme) {
            C0692b c0692b = new C0692b();
            Drawable drawableNewDrawable = this.f4097a.newDrawable(resources, theme);
            c0692b.f4102b = drawableNewDrawable;
            drawableNewDrawable.setCallback(c0692b.f4090f);
            return c0692b;
        }
    }

    private C0692b(Context context, b bVar, Resources resources) {
        this.f4089e = null;
        this.f4090f = new a();
        this.f4088d = context;
        if (bVar != null) {
            this.f4087c = bVar;
        } else {
            this.f4087c = new b(context, bVar, this.f4090f, resources);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void inflate(Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet) throws XmlPullParserException, IOException {
        inflate(resources, xmlPullParser, attributeSet, null);
    }
}
