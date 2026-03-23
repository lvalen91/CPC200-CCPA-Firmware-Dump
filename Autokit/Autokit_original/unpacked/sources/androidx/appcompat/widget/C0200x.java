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
import androidx.core.view.InterfaceC0291u;
import androidx.core.widget.C0308i;
import androidx.core.widget.InterfaceC0301b;
import androidx.core.widget.InterfaceC0311l;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;
import p016c.p017a.p018k.p019a.C0503a;
import p016c.p041g.p042d.C0591d;
import p016c.p041g.p048i.C0615c;

/* JADX INFO: renamed from: androidx.appcompat.widget.x */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class C0200x extends TextView implements InterfaceC0291u, InterfaceC0311l, InterfaceC0301b {

    /* JADX INFO: renamed from: b */
    private final C0162e f1358b;

    /* JADX INFO: renamed from: c */
    private final C0198w f1359c;

    /* JADX INFO: renamed from: d */
    private final C0196v f1360d;

    /* JADX INFO: renamed from: e */
    private boolean f1361e;

    /* JADX INFO: renamed from: f */
    private Future<C0615c> f1362f;

    public C0200x(Context context) {
        this(context, null);
    }

    /* JADX INFO: renamed from: g */
    private void m1389g() {
        Future<C0615c> future = this.f1362f;
        if (future != null) {
            try {
                this.f1362f = null;
                C0308i.m2288m(this, future.get());
            } catch (InterruptedException | ExecutionException unused) {
            }
        }
    }

    @Override // android.widget.TextView, android.view.View
    protected void drawableStateChanged() {
        super.drawableStateChanged();
        C0162e c0162e = this.f1358b;
        if (c0162e != null) {
            c0162e.m1091b();
        }
        C0198w c0198w = this.f1359c;
        if (c0198w != null) {
            c0198w.m1364b();
        }
    }

    @Override // android.widget.TextView
    public int getAutoSizeMaxTextSize() {
        if (InterfaceC0301b.f1991a) {
            return super.getAutoSizeMaxTextSize();
        }
        C0198w c0198w = this.f1359c;
        if (c0198w != null) {
            return c0198w.m1366e();
        }
        return -1;
    }

    @Override // android.widget.TextView
    public int getAutoSizeMinTextSize() {
        if (InterfaceC0301b.f1991a) {
            return super.getAutoSizeMinTextSize();
        }
        C0198w c0198w = this.f1359c;
        if (c0198w != null) {
            return c0198w.m1367f();
        }
        return -1;
    }

    @Override // android.widget.TextView
    public int getAutoSizeStepGranularity() {
        if (InterfaceC0301b.f1991a) {
            return super.getAutoSizeStepGranularity();
        }
        C0198w c0198w = this.f1359c;
        if (c0198w != null) {
            return c0198w.m1368g();
        }
        return -1;
    }

    @Override // android.widget.TextView
    public int[] getAutoSizeTextAvailableSizes() {
        if (InterfaceC0301b.f1991a) {
            return super.getAutoSizeTextAvailableSizes();
        }
        C0198w c0198w = this.f1359c;
        return c0198w != null ? c0198w.m1369h() : new int[0];
    }

    @Override // android.widget.TextView
    @SuppressLint({"WrongConstant"})
    public int getAutoSizeTextType() {
        if (InterfaceC0301b.f1991a) {
            return super.getAutoSizeTextType() == 1 ? 1 : 0;
        }
        C0198w c0198w = this.f1359c;
        if (c0198w != null) {
            return c0198w.m1370i();
        }
        return 0;
    }

    @Override // android.widget.TextView
    public int getFirstBaselineToTopHeight() {
        return C0308i.m2277b(this);
    }

    @Override // android.widget.TextView
    public int getLastBaselineToBottomHeight() {
        return C0308i.m2278c(this);
    }

    @Override // androidx.core.view.InterfaceC0291u
    public ColorStateList getSupportBackgroundTintList() {
        C0162e c0162e = this.f1358b;
        if (c0162e != null) {
            return c0162e.m1092c();
        }
        return null;
    }

    @Override // androidx.core.view.InterfaceC0291u
    public PorterDuff.Mode getSupportBackgroundTintMode() {
        C0162e c0162e = this.f1358b;
        if (c0162e != null) {
            return c0162e.m1093d();
        }
        return null;
    }

    public ColorStateList getSupportCompoundDrawablesTintList() {
        return this.f1359c.m1371j();
    }

    public PorterDuff.Mode getSupportCompoundDrawablesTintMode() {
        return this.f1359c.m1372k();
    }

    @Override // android.widget.TextView
    public CharSequence getText() {
        m1389g();
        return super.getText();
    }

    @Override // android.widget.TextView
    public TextClassifier getTextClassifier() {
        C0196v c0196v;
        return (Build.VERSION.SDK_INT >= 28 || (c0196v = this.f1360d) == null) ? super.getTextClassifier() : c0196v.m1342a();
    }

    public C0615c.a getTextMetricsParamsCompat() {
        return C0308i.m2281f(this);
    }

    @Override // android.widget.TextView, android.view.View
    public InputConnection onCreateInputConnection(EditorInfo editorInfo) {
        InputConnection inputConnectionOnCreateInputConnection = super.onCreateInputConnection(editorInfo);
        this.f1359c.m1379r(this, inputConnectionOnCreateInputConnection, editorInfo);
        C0174k.m1194a(inputConnectionOnCreateInputConnection, editorInfo, this);
        return inputConnectionOnCreateInputConnection;
    }

    @Override // android.widget.TextView, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        C0198w c0198w = this.f1359c;
        if (c0198w != null) {
            c0198w.m1376o(z, i, i2, i3, i4);
        }
    }

    @Override // android.widget.TextView, android.view.View
    protected void onMeasure(int i, int i2) {
        m1389g();
        super.onMeasure(i, i2);
    }

    @Override // android.widget.TextView
    protected void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        super.onTextChanged(charSequence, i, i2, i3);
        C0198w c0198w = this.f1359c;
        if (c0198w == null || InterfaceC0301b.f1991a || !c0198w.m1373l()) {
            return;
        }
        this.f1359c.m1365c();
    }

    @Override // android.widget.TextView
    public void setAutoSizeTextTypeUniformWithConfiguration(int i, int i2, int i3, int i4) {
        if (InterfaceC0301b.f1991a) {
            super.setAutoSizeTextTypeUniformWithConfiguration(i, i2, i3, i4);
            return;
        }
        C0198w c0198w = this.f1359c;
        if (c0198w != null) {
            c0198w.m1381t(i, i2, i3, i4);
        }
    }

    @Override // android.widget.TextView
    public void setAutoSizeTextTypeUniformWithPresetSizes(int[] iArr, int i) {
        if (InterfaceC0301b.f1991a) {
            super.setAutoSizeTextTypeUniformWithPresetSizes(iArr, i);
            return;
        }
        C0198w c0198w = this.f1359c;
        if (c0198w != null) {
            c0198w.m1382u(iArr, i);
        }
    }

    @Override // android.widget.TextView
    public void setAutoSizeTextTypeWithDefaults(int i) {
        if (InterfaceC0301b.f1991a) {
            super.setAutoSizeTextTypeWithDefaults(i);
            return;
        }
        C0198w c0198w = this.f1359c;
        if (c0198w != null) {
            c0198w.m1383v(i);
        }
    }

    @Override // android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
        super.setBackgroundDrawable(drawable);
        C0162e c0162e = this.f1358b;
        if (c0162e != null) {
            c0162e.m1095f(drawable);
        }
    }

    @Override // android.view.View
    public void setBackgroundResource(int i) {
        super.setBackgroundResource(i);
        C0162e c0162e = this.f1358b;
        if (c0162e != null) {
            c0162e.m1096g(i);
        }
    }

    @Override // android.widget.TextView
    public void setCompoundDrawables(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        super.setCompoundDrawables(drawable, drawable2, drawable3, drawable4);
        C0198w c0198w = this.f1359c;
        if (c0198w != null) {
            c0198w.m1377p();
        }
    }

    @Override // android.widget.TextView
    public void setCompoundDrawablesRelative(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        super.setCompoundDrawablesRelative(drawable, drawable2, drawable3, drawable4);
        C0198w c0198w = this.f1359c;
        if (c0198w != null) {
            c0198w.m1377p();
        }
    }

    @Override // android.widget.TextView
    public void setCompoundDrawablesRelativeWithIntrinsicBounds(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        super.setCompoundDrawablesRelativeWithIntrinsicBounds(drawable, drawable2, drawable3, drawable4);
        C0198w c0198w = this.f1359c;
        if (c0198w != null) {
            c0198w.m1377p();
        }
    }

    @Override // android.widget.TextView
    public void setCompoundDrawablesWithIntrinsicBounds(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        super.setCompoundDrawablesWithIntrinsicBounds(drawable, drawable2, drawable3, drawable4);
        C0198w c0198w = this.f1359c;
        if (c0198w != null) {
            c0198w.m1377p();
        }
    }

    @Override // android.widget.TextView
    public void setCustomSelectionActionModeCallback(ActionMode.Callback callback) {
        super.setCustomSelectionActionModeCallback(C0308i.m2291p(this, callback));
    }

    @Override // android.widget.TextView
    public void setFirstBaselineToTopHeight(int i) {
        if (Build.VERSION.SDK_INT >= 28) {
            super.setFirstBaselineToTopHeight(i);
        } else {
            C0308i.m2285j(this, i);
        }
    }

    @Override // android.widget.TextView
    public void setLastBaselineToBottomHeight(int i) {
        if (Build.VERSION.SDK_INT >= 28) {
            super.setLastBaselineToBottomHeight(i);
        } else {
            C0308i.m2286k(this, i);
        }
    }

    @Override // android.widget.TextView
    public void setLineHeight(int i) {
        C0308i.m2287l(this, i);
    }

    public void setPrecomputedText(C0615c c0615c) {
        C0308i.m2288m(this, c0615c);
    }

    @Override // androidx.core.view.InterfaceC0291u
    public void setSupportBackgroundTintList(ColorStateList colorStateList) {
        C0162e c0162e = this.f1358b;
        if (c0162e != null) {
            c0162e.m1098i(colorStateList);
        }
    }

    @Override // androidx.core.view.InterfaceC0291u
    public void setSupportBackgroundTintMode(PorterDuff.Mode mode) {
        C0162e c0162e = this.f1358b;
        if (c0162e != null) {
            c0162e.m1099j(mode);
        }
    }

    @Override // androidx.core.widget.InterfaceC0311l
    public void setSupportCompoundDrawablesTintList(ColorStateList colorStateList) {
        this.f1359c.m1384w(colorStateList);
        this.f1359c.m1364b();
    }

    @Override // androidx.core.widget.InterfaceC0311l
    public void setSupportCompoundDrawablesTintMode(PorterDuff.Mode mode) {
        this.f1359c.m1385x(mode);
        this.f1359c.m1364b();
    }

    @Override // android.widget.TextView
    public void setTextAppearance(Context context, int i) {
        super.setTextAppearance(context, i);
        C0198w c0198w = this.f1359c;
        if (c0198w != null) {
            c0198w.m1378q(context, i);
        }
    }

    @Override // android.widget.TextView
    public void setTextClassifier(TextClassifier textClassifier) {
        C0196v c0196v;
        if (Build.VERSION.SDK_INT >= 28 || (c0196v = this.f1360d) == null) {
            super.setTextClassifier(textClassifier);
        } else {
            c0196v.m1343b(textClassifier);
        }
    }

    public void setTextFuture(Future<C0615c> future) {
        this.f1362f = future;
        if (future != null) {
            requestLayout();
        }
    }

    public void setTextMetricsParamsCompat(C0615c.a aVar) {
        C0308i.m2290o(this, aVar);
    }

    @Override // android.widget.TextView
    public void setTextSize(int i, float f) {
        if (InterfaceC0301b.f1991a) {
            super.setTextSize(i, f);
            return;
        }
        C0198w c0198w = this.f1359c;
        if (c0198w != null) {
            c0198w.m1363A(i, f);
        }
    }

    @Override // android.widget.TextView
    public void setTypeface(Typeface typeface, int i) {
        if (this.f1361e) {
            return;
        }
        Typeface typefaceM4692a = null;
        if (typeface != null && i > 0) {
            typefaceM4692a = C0591d.m4692a(getContext(), typeface, i);
        }
        this.f1361e = true;
        if (typefaceM4692a != null) {
            typeface = typefaceM4692a;
        }
        try {
            super.setTypeface(typeface, i);
        } finally {
            this.f1361e = false;
        }
    }

    public C0200x(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.textViewStyle);
    }

    public C0200x(Context context, AttributeSet attributeSet, int i) {
        super(C0189r0.m1286b(context), attributeSet, i);
        this.f1361e = false;
        C0185p0.m1279a(this, getContext());
        C0162e c0162e = new C0162e(this);
        this.f1358b = c0162e;
        c0162e.m1094e(attributeSet, i);
        C0198w c0198w = new C0198w(this);
        this.f1359c = c0198w;
        c0198w.m1374m(attributeSet, i);
        this.f1359c.m1364b();
        this.f1360d = new C0196v(this);
    }

    @Override // android.widget.TextView
    public void setCompoundDrawablesRelativeWithIntrinsicBounds(int i, int i2, int i3, int i4) {
        Context context = getContext();
        setCompoundDrawablesRelativeWithIntrinsicBounds(i != 0 ? C0503a.m4047d(context, i) : null, i2 != 0 ? C0503a.m4047d(context, i2) : null, i3 != 0 ? C0503a.m4047d(context, i3) : null, i4 != 0 ? C0503a.m4047d(context, i4) : null);
        C0198w c0198w = this.f1359c;
        if (c0198w != null) {
            c0198w.m1377p();
        }
    }

    @Override // android.widget.TextView
    public void setCompoundDrawablesWithIntrinsicBounds(int i, int i2, int i3, int i4) {
        Context context = getContext();
        setCompoundDrawablesWithIntrinsicBounds(i != 0 ? C0503a.m4047d(context, i) : null, i2 != 0 ? C0503a.m4047d(context, i2) : null, i3 != 0 ? C0503a.m4047d(context, i3) : null, i4 != 0 ? C0503a.m4047d(context, i4) : null);
        C0198w c0198w = this.f1359c;
        if (c0198w != null) {
            c0198w.m1377p();
        }
    }
}
