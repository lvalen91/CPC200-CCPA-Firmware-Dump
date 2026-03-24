package androidx.appcompat.widget;

import android.R;
import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.AttributeSet;
import android.view.ActionMode;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import android.view.textclassifier.TextClassifier;
import android.widget.TextView;
import c.g.i.c;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;

/* JADX INFO: loaded from: /Volumes/stuff/macbook/misc/CPC200-CCPA/rework/dumped_real_classes.dex */
public class x extends TextView implements androidx.core.view.u, androidx.core.widget.l, androidx.core.widget.b {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final e f424b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final w f425c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final v f426d;
    private boolean e;
    private Future<c.g.i.c> f;

    public x(Context context) {
        this(context, null);
    }

    private void g() {
        Future<c.g.i.c> future = this.f;
        if (future != null) {
            try {
                this.f = null;
                androidx.core.widget.i.m(this, future.get());
            } catch (InterruptedException | ExecutionException unused) {
            }
        }
    }

    @Override // android.widget.TextView, android.view.View
    protected void drawableStateChanged() {
        super.drawableStateChanged();
        e eVar = this.f424b;
        if (eVar != null) {
            eVar.b();
        }
        w wVar = this.f425c;
        if (wVar != null) {
            wVar.b();
        }
    }

    @Override // android.widget.TextView
    public int getAutoSizeMaxTextSize() {
        if (androidx.core.widget.b.a) {
            return super.getAutoSizeMaxTextSize();
        }
        w wVar = this.f425c;
        if (wVar != null) {
            return wVar.e();
        }
        return -1;
    }

    @Override // android.widget.TextView
    public int getAutoSizeMinTextSize() {
        if (androidx.core.widget.b.a) {
            return super.getAutoSizeMinTextSize();
        }
        w wVar = this.f425c;
        if (wVar != null) {
            return wVar.f();
        }
        return -1;
    }

    @Override // android.widget.TextView
    public int getAutoSizeStepGranularity() {
        if (androidx.core.widget.b.a) {
            return super.getAutoSizeStepGranularity();
        }
        w wVar = this.f425c;
        if (wVar != null) {
            return wVar.g();
        }
        return -1;
    }

    @Override // android.widget.TextView
    public int[] getAutoSizeTextAvailableSizes() {
        if (androidx.core.widget.b.a) {
            return super.getAutoSizeTextAvailableSizes();
        }
        w wVar = this.f425c;
        return wVar != null ? wVar.h() : new int[0];
    }

    @Override // android.widget.TextView
    @SuppressLint({"WrongConstant"})
    public int getAutoSizeTextType() {
        if (androidx.core.widget.b.a) {
            return super.getAutoSizeTextType() == 1 ? 1 : 0;
        }
        w wVar = this.f425c;
        if (wVar != null) {
            return wVar.i();
        }
        return 0;
    }

    @Override // android.widget.TextView
    public int getFirstBaselineToTopHeight() {
        return androidx.core.widget.i.b(this);
    }

    @Override // android.widget.TextView
    public int getLastBaselineToBottomHeight() {
        return androidx.core.widget.i.c(this);
    }

    @Override // androidx.core.view.u
    public ColorStateList getSupportBackgroundTintList() {
        e eVar = this.f424b;
        if (eVar != null) {
            return eVar.c();
        }
        return null;
    }

    @Override // androidx.core.view.u
    public PorterDuff.Mode getSupportBackgroundTintMode() {
        e eVar = this.f424b;
        if (eVar != null) {
            return eVar.d();
        }
        return null;
    }

    public ColorStateList getSupportCompoundDrawablesTintList() {
        return this.f425c.j();
    }

    public PorterDuff.Mode getSupportCompoundDrawablesTintMode() {
        return this.f425c.k();
    }

    @Override // android.widget.TextView
    public CharSequence getText() {
        g();
        return super.getText();
    }

    @Override // android.widget.TextView
    public TextClassifier getTextClassifier() {
        v vVar;
        return (Build.VERSION.SDK_INT >= 28 || (vVar = this.f426d) == null) ? super.getTextClassifier() : vVar.a();
    }

    public c.a getTextMetricsParamsCompat() {
        return androidx.core.widget.i.f(this);
    }

    @Override // android.widget.TextView, android.view.View
    public InputConnection onCreateInputConnection(EditorInfo editorInfo) {
        InputConnection inputConnectionOnCreateInputConnection = super.onCreateInputConnection(editorInfo);
        this.f425c.r(this, inputConnectionOnCreateInputConnection, editorInfo);
        k.a(inputConnectionOnCreateInputConnection, editorInfo, this);
        return inputConnectionOnCreateInputConnection;
    }

    @Override // android.widget.TextView, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        w wVar = this.f425c;
        if (wVar != null) {
            wVar.o(z, i, i2, i3, i4);
        }
    }

    @Override // android.widget.TextView, android.view.View
    protected void onMeasure(int i, int i2) {
        g();
        super.onMeasure(i, i2);
    }

    @Override // android.widget.TextView
    protected void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        super.onTextChanged(charSequence, i, i2, i3);
        w wVar = this.f425c;
        if (wVar == null || androidx.core.widget.b.a || !wVar.l()) {
            return;
        }
        this.f425c.c();
    }

    @Override // android.widget.TextView
    public void setAutoSizeTextTypeUniformWithConfiguration(int i, int i2, int i3, int i4) {
        if (androidx.core.widget.b.a) {
            super.setAutoSizeTextTypeUniformWithConfiguration(i, i2, i3, i4);
            return;
        }
        w wVar = this.f425c;
        if (wVar != null) {
            wVar.t(i, i2, i3, i4);
        }
    }

    @Override // android.widget.TextView
    public void setAutoSizeTextTypeUniformWithPresetSizes(int[] iArr, int i) {
        if (androidx.core.widget.b.a) {
            super.setAutoSizeTextTypeUniformWithPresetSizes(iArr, i);
            return;
        }
        w wVar = this.f425c;
        if (wVar != null) {
            wVar.u(iArr, i);
        }
    }

    @Override // android.widget.TextView
    public void setAutoSizeTextTypeWithDefaults(int i) {
        if (androidx.core.widget.b.a) {
            super.setAutoSizeTextTypeWithDefaults(i);
            return;
        }
        w wVar = this.f425c;
        if (wVar != null) {
            wVar.v(i);
        }
    }

    @Override // android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
        super.setBackgroundDrawable(drawable);
        e eVar = this.f424b;
        if (eVar != null) {
            eVar.f(drawable);
        }
    }

    @Override // android.view.View
    public void setBackgroundResource(int i) {
        super.setBackgroundResource(i);
        e eVar = this.f424b;
        if (eVar != null) {
            eVar.g(i);
        }
    }

    @Override // android.widget.TextView
    public void setCompoundDrawables(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        super.setCompoundDrawables(drawable, drawable2, drawable3, drawable4);
        w wVar = this.f425c;
        if (wVar != null) {
            wVar.p();
        }
    }

    @Override // android.widget.TextView
    public void setCompoundDrawablesRelative(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        super.setCompoundDrawablesRelative(drawable, drawable2, drawable3, drawable4);
        w wVar = this.f425c;
        if (wVar != null) {
            wVar.p();
        }
    }

    @Override // android.widget.TextView
    public void setCompoundDrawablesRelativeWithIntrinsicBounds(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        super.setCompoundDrawablesRelativeWithIntrinsicBounds(drawable, drawable2, drawable3, drawable4);
        w wVar = this.f425c;
        if (wVar != null) {
            wVar.p();
        }
    }

    @Override // android.widget.TextView
    public void setCompoundDrawablesWithIntrinsicBounds(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        super.setCompoundDrawablesWithIntrinsicBounds(drawable, drawable2, drawable3, drawable4);
        w wVar = this.f425c;
        if (wVar != null) {
            wVar.p();
        }
    }

    @Override // android.widget.TextView
    public void setCustomSelectionActionModeCallback(ActionMode.Callback callback) {
        super.setCustomSelectionActionModeCallback(androidx.core.widget.i.p(this, callback));
    }

    @Override // android.widget.TextView
    public void setFirstBaselineToTopHeight(int i) {
        if (Build.VERSION.SDK_INT >= 28) {
            super.setFirstBaselineToTopHeight(i);
        } else {
            androidx.core.widget.i.j(this, i);
        }
    }

    @Override // android.widget.TextView
    public void setLastBaselineToBottomHeight(int i) {
        if (Build.VERSION.SDK_INT >= 28) {
            super.setLastBaselineToBottomHeight(i);
        } else {
            androidx.core.widget.i.k(this, i);
        }
    }

    @Override // android.widget.TextView
    public void setLineHeight(int i) {
        androidx.core.widget.i.l(this, i);
    }

    public void setPrecomputedText(c.g.i.c cVar) {
        androidx.core.widget.i.m(this, cVar);
    }

    @Override // androidx.core.view.u
    public void setSupportBackgroundTintList(ColorStateList colorStateList) {
        e eVar = this.f424b;
        if (eVar != null) {
            eVar.i(colorStateList);
        }
    }

    @Override // androidx.core.view.u
    public void setSupportBackgroundTintMode(PorterDuff.Mode mode) {
        e eVar = this.f424b;
        if (eVar != null) {
            eVar.j(mode);
        }
    }

    @Override // androidx.core.widget.l
    public void setSupportCompoundDrawablesTintList(ColorStateList colorStateList) {
        this.f425c.w(colorStateList);
        this.f425c.b();
    }

    @Override // androidx.core.widget.l
    public void setSupportCompoundDrawablesTintMode(PorterDuff.Mode mode) {
        this.f425c.x(mode);
        this.f425c.b();
    }

    @Override // android.widget.TextView
    public void setTextAppearance(Context context, int i) {
        super.setTextAppearance(context, i);
        w wVar = this.f425c;
        if (wVar != null) {
            wVar.q(context, i);
        }
    }

    @Override // android.widget.TextView
    public void setTextClassifier(TextClassifier textClassifier) {
        v vVar;
        if (Build.VERSION.SDK_INT >= 28 || (vVar = this.f426d) == null) {
            super.setTextClassifier(textClassifier);
        } else {
            vVar.b(textClassifier);
        }
    }

    public void setTextFuture(Future<c.g.i.c> future) {
        this.f = future;
        if (future != null) {
            requestLayout();
        }
    }

    public void setTextMetricsParamsCompat(c.a aVar) {
        androidx.core.widget.i.o(this, aVar);
    }

    @Override // android.widget.TextView
    public void setTextSize(int i, float f) {
        if (androidx.core.widget.b.a) {
            super.setTextSize(i, f);
            return;
        }
        w wVar = this.f425c;
        if (wVar != null) {
            wVar.A(i, f);
        }
    }

    @Override // android.widget.TextView
    public void setTypeface(Typeface typeface, int i) {
        if (this.e) {
            return;
        }
        Typeface typefaceA = null;
        if (typeface != null && i > 0) {
            typefaceA = c.g.d.d.a(getContext(), typeface, i);
        }
        this.e = true;
        if (typefaceA != null) {
            typeface = typefaceA;
        }
        try {
            super.setTypeface(typeface, i);
        } finally {
            this.e = false;
        }
    }

    public x(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.textViewStyle);
    }

    public x(Context context, AttributeSet attributeSet, int i) {
        super(r0.b(context), attributeSet, i);
        this.e = false;
        p0.a(this, getContext());
        e eVar = new e(this);
        this.f424b = eVar;
        eVar.e(attributeSet, i);
        w wVar = new w(this);
        this.f425c = wVar;
        wVar.m(attributeSet, i);
        this.f425c.b();
        this.f426d = new v(this);
    }

    @Override // android.widget.TextView
    public void setCompoundDrawablesRelativeWithIntrinsicBounds(int i, int i2, int i3, int i4) {
        Context context = getContext();
        setCompoundDrawablesRelativeWithIntrinsicBounds(i != 0 ? c.a.k.a.a.d(context, i) : null, i2 != 0 ? c.a.k.a.a.d(context, i2) : null, i3 != 0 ? c.a.k.a.a.d(context, i3) : null, i4 != 0 ? c.a.k.a.a.d(context, i4) : null);
        w wVar = this.f425c;
        if (wVar != null) {
            wVar.p();
        }
    }

    @Override // android.widget.TextView
    public void setCompoundDrawablesWithIntrinsicBounds(int i, int i2, int i3, int i4) {
        Context context = getContext();
        setCompoundDrawablesWithIntrinsicBounds(i != 0 ? c.a.k.a.a.d(context, i) : null, i2 != 0 ? c.a.k.a.a.d(context, i2) : null, i3 != 0 ? c.a.k.a.a.d(context, i3) : null, i4 != 0 ? c.a.k.a.a.d(context, i4) : null);
        w wVar = this.f425c;
        if (wVar != null) {
            wVar.p();
        }
    }
}
