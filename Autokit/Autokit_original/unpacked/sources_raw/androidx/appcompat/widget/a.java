package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.ContextThemeWrapper;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import com.yalantis.ucrop.view.CropImageView;

/* JADX INFO: Access modifiers changed from: package-private */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public abstract class a extends ViewGroup {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    protected final C0012a f292b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    protected final Context f293c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    protected ActionMenuView f294d;
    protected c e;
    protected int f;
    protected androidx.core.view.z g;
    private boolean h;
    private boolean i;

    /* JADX INFO: renamed from: androidx.appcompat.widget.a$a, reason: collision with other inner class name */
    protected class C0012a implements androidx.core.view.a0 {
        private boolean a = false;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        int f295b;

        protected C0012a() {
        }

        @Override // androidx.core.view.a0
        public void a(View view) {
            if (this.a) {
                return;
            }
            a aVar = a.this;
            aVar.g = null;
            a.super.setVisibility(this.f295b);
        }

        @Override // androidx.core.view.a0
        public void b(View view) {
            a.super.setVisibility(0);
            this.a = false;
        }

        @Override // androidx.core.view.a0
        public void c(View view) {
            this.a = true;
        }

        public C0012a d(androidx.core.view.z zVar, int i) {
            a.this.g = zVar;
            this.f295b = i;
            return this;
        }
    }

    a(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    protected static int d(int i, int i2, boolean z) {
        return z ? i - i2 : i + i2;
    }

    protected int c(View view, int i, int i2, int i3) {
        view.measure(View.MeasureSpec.makeMeasureSpec(i, Integer.MIN_VALUE), i2);
        return Math.max(0, (i - view.getMeasuredWidth()) - i3);
    }

    protected int e(View view, int i, int i2, int i3, boolean z) {
        int measuredWidth = view.getMeasuredWidth();
        int measuredHeight = view.getMeasuredHeight();
        int i4 = i2 + ((i3 - measuredHeight) / 2);
        if (z) {
            view.layout(i - measuredWidth, i4, i, measuredHeight + i4);
        } else {
            view.layout(i, i4, i + measuredWidth, measuredHeight + i4);
        }
        return z ? -measuredWidth : measuredWidth;
    }

    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:593)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    public androidx.core.view.z f(int i, long j) {
        androidx.core.view.z zVar = this.g;
        if (zVar != null) {
            zVar.b();
        }
        if (i != 0) {
            androidx.core.view.z zVarD = androidx.core.view.v.d(this);
            zVarD.a(CropImageView.DEFAULT_ASPECT_RATIO);
            zVarD.d(j);
            C0012a c0012a = this.f292b;
            c0012a.d(zVarD, i);
            zVarD.f(c0012a);
            return zVarD;
        }
        if (getVisibility() != 0) {
            setAlpha(CropImageView.DEFAULT_ASPECT_RATIO);
        }
        androidx.core.view.z zVarD2 = androidx.core.view.v.d(this);
        zVarD2.a(1.0f);
        zVarD2.d(j);
        C0012a c0012a2 = this.f292b;
        c0012a2.d(zVarD2, i);
        zVarD2.f(c0012a2);
        return zVarD2;
    }

    public int getAnimatedVisibility() {
        return this.g != null ? this.f292b.f295b : getVisibility();
    }

    public int getContentHeight() {
        return this.f;
    }

    @Override // android.view.View
    protected void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        TypedArray typedArrayObtainStyledAttributes = getContext().obtainStyledAttributes(null, c.a.j.ActionBar, c.a.a.actionBarStyle, 0);
        setContentHeight(typedArrayObtainStyledAttributes.getLayoutDimension(c.a.j.ActionBar_height, 0));
        typedArrayObtainStyledAttributes.recycle();
        c cVar = this.e;
        if (cVar != null) {
            cVar.F(configuration);
        }
    }

    @Override // android.view.View
    public boolean onHoverEvent(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 9) {
            this.i = false;
        }
        if (!this.i) {
            boolean zOnHoverEvent = super.onHoverEvent(motionEvent);
            if (actionMasked == 9 && !zOnHoverEvent) {
                this.i = true;
            }
        }
        if (actionMasked == 10 || actionMasked == 3) {
            this.i = false;
        }
        return true;
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            this.h = false;
        }
        if (!this.h) {
            boolean zOnTouchEvent = super.onTouchEvent(motionEvent);
            if (actionMasked == 0 && !zOnTouchEvent) {
                this.h = true;
            }
        }
        if (actionMasked == 1 || actionMasked == 3) {
            this.h = false;
        }
        return true;
    }

    public abstract void setContentHeight(int i);

    @Override // android.view.View
    public void setVisibility(int i) {
        if (i != getVisibility()) {
            androidx.core.view.z zVar = this.g;
            if (zVar != null) {
                zVar.b();
            }
            super.setVisibility(i);
        }
    }

    a(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f292b = new C0012a();
        TypedValue typedValue = new TypedValue();
        if (!context.getTheme().resolveAttribute(c.a.a.actionBarPopupTheme, typedValue, true) || typedValue.resourceId == 0) {
            this.f293c = context;
        } else {
            this.f293c = new ContextThemeWrapper(context, typedValue.resourceId);
        }
    }
}
