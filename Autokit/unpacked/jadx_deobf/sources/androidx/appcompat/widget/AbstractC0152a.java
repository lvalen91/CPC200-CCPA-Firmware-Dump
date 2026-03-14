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
import androidx.core.view.C0292v;
import androidx.core.view.C0296z;
import androidx.core.view.InterfaceC0259a0;
import com.yalantis.ucrop.view.CropImageView;
import p016c.p017a.C0493a;
import p016c.p017a.C0502j;

/* JADX INFO: Access modifiers changed from: package-private */
/* JADX INFO: renamed from: androidx.appcompat.widget.a */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public abstract class AbstractC0152a extends ViewGroup {

    /* JADX INFO: renamed from: b */
    protected final a f1019b;

    /* JADX INFO: renamed from: c */
    protected final Context f1020c;

    /* JADX INFO: renamed from: d */
    protected ActionMenuView f1021d;

    /* JADX INFO: renamed from: e */
    protected C0158c f1022e;

    /* JADX INFO: renamed from: f */
    protected int f1023f;

    /* JADX INFO: renamed from: g */
    protected C0296z f1024g;

    /* JADX INFO: renamed from: h */
    private boolean f1025h;

    /* JADX INFO: renamed from: i */
    private boolean f1026i;

    /* JADX INFO: renamed from: androidx.appcompat.widget.a$a */
    protected class a implements InterfaceC0259a0 {

        /* JADX INFO: renamed from: a */
        private boolean f1027a = false;

        /* JADX INFO: renamed from: b */
        int f1028b;

        protected a() {
        }

        @Override // androidx.core.view.InterfaceC0259a0
        /* JADX INFO: renamed from: a */
        public void mo530a(View view) {
            if (this.f1027a) {
                return;
            }
            AbstractC0152a abstractC0152a = AbstractC0152a.this;
            abstractC0152a.f1024g = null;
            AbstractC0152a.super.setVisibility(this.f1028b);
        }

        @Override // androidx.core.view.InterfaceC0259a0
        /* JADX INFO: renamed from: b */
        public void mo531b(View view) {
            AbstractC0152a.super.setVisibility(0);
            this.f1027a = false;
        }

        @Override // androidx.core.view.InterfaceC0259a0
        /* JADX INFO: renamed from: c */
        public void mo1019c(View view) {
            this.f1027a = true;
        }

        /* JADX INFO: renamed from: d */
        public a m1020d(C0296z c0296z, int i) {
            AbstractC0152a.this.f1024g = c0296z;
            this.f1028b = i;
            return this;
        }
    }

    AbstractC0152a(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    /* JADX INFO: renamed from: d */
    protected static int m1015d(int i, int i2, boolean z) {
        return z ? i - i2 : i + i2;
    }

    /* JADX INFO: renamed from: c */
    protected int m1016c(View view, int i, int i2, int i3) {
        view.measure(View.MeasureSpec.makeMeasureSpec(i, Integer.MIN_VALUE), i2);
        return Math.max(0, (i - view.getMeasuredWidth()) - i3);
    }

    /* JADX INFO: renamed from: e */
    protected int m1017e(View view, int i, int i2, int i3, boolean z) {
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
    /* JADX INFO: renamed from: f */
    public C0296z m1018f(int i, long j) {
        C0296z c0296z = this.f1024g;
        if (c0296z != null) {
            c0296z.m2180b();
        }
        if (i != 0) {
            C0296z c0296zM2082d = C0292v.m2082d(this);
            c0296zM2082d.m2179a(CropImageView.DEFAULT_ASPECT_RATIO);
            c0296zM2082d.m2182d(j);
            a aVar = this.f1019b;
            aVar.m1020d(c0296zM2082d, i);
            c0296zM2082d.m2184f(aVar);
            return c0296zM2082d;
        }
        if (getVisibility() != 0) {
            setAlpha(CropImageView.DEFAULT_ASPECT_RATIO);
        }
        C0296z c0296zM2082d2 = C0292v.m2082d(this);
        c0296zM2082d2.m2179a(1.0f);
        c0296zM2082d2.m2182d(j);
        a aVar2 = this.f1019b;
        aVar2.m1020d(c0296zM2082d2, i);
        c0296zM2082d2.m2184f(aVar2);
        return c0296zM2082d2;
    }

    public int getAnimatedVisibility() {
        return this.f1024g != null ? this.f1019b.f1028b : getVisibility();
    }

    public int getContentHeight() {
        return this.f1023f;
    }

    @Override // android.view.View
    protected void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        TypedArray typedArrayObtainStyledAttributes = getContext().obtainStyledAttributes(null, C0502j.ActionBar, C0493a.actionBarStyle, 0);
        setContentHeight(typedArrayObtainStyledAttributes.getLayoutDimension(C0502j.ActionBar_height, 0));
        typedArrayObtainStyledAttributes.recycle();
        C0158c c0158c = this.f1022e;
        if (c0158c != null) {
            c0158c.m1062F(configuration);
        }
    }

    @Override // android.view.View
    public boolean onHoverEvent(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 9) {
            this.f1026i = false;
        }
        if (!this.f1026i) {
            boolean zOnHoverEvent = super.onHoverEvent(motionEvent);
            if (actionMasked == 9 && !zOnHoverEvent) {
                this.f1026i = true;
            }
        }
        if (actionMasked == 10 || actionMasked == 3) {
            this.f1026i = false;
        }
        return true;
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            this.f1025h = false;
        }
        if (!this.f1025h) {
            boolean zOnTouchEvent = super.onTouchEvent(motionEvent);
            if (actionMasked == 0 && !zOnTouchEvent) {
                this.f1025h = true;
            }
        }
        if (actionMasked == 1 || actionMasked == 3) {
            this.f1025h = false;
        }
        return true;
    }

    public abstract void setContentHeight(int i);

    @Override // android.view.View
    public void setVisibility(int i) {
        if (i != getVisibility()) {
            C0296z c0296z = this.f1024g;
            if (c0296z != null) {
                c0296z.m2180b();
            }
            super.setVisibility(i);
        }
    }

    AbstractC0152a(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f1019b = new a();
        TypedValue typedValue = new TypedValue();
        if (!context.getTheme().resolveAttribute(C0493a.actionBarPopupTheme, typedValue, true) || typedValue.resourceId == 0) {
            this.f1020c = context;
        } else {
            this.f1020c = new ContextThemeWrapper(context, typedValue.resourceId);
        }
    }
}
