package androidx.appcompat.widget;

import android.R;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import android.widget.MultiAutoCompleteTextView;

/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class n extends MultiAutoCompleteTextView implements androidx.core.view.u {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final int[] f357d = {R.attr.popupBackground};

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final e f358b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final w f359c;

    public n(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, c.a.a.autoCompleteTextViewStyle);
    }

    @Override // android.widget.TextView, android.view.View
    protected void drawableStateChanged() {
        super.drawableStateChanged();
        e eVar = this.f358b;
        if (eVar != null) {
            eVar.b();
        }
        w wVar = this.f359c;
        if (wVar != null) {
            wVar.b();
        }
    }

    @Override // androidx.core.view.u
    public ColorStateList getSupportBackgroundTintList() {
        e eVar = this.f358b;
        if (eVar != null) {
            return eVar.c();
        }
        return null;
    }

    @Override // androidx.core.view.u
    public PorterDuff.Mode getSupportBackgroundTintMode() {
        e eVar = this.f358b;
        if (eVar != null) {
            return eVar.d();
        }
        return null;
    }

    @Override // android.widget.TextView, android.view.View
    public InputConnection onCreateInputConnection(EditorInfo editorInfo) {
        InputConnection inputConnectionOnCreateInputConnection = super.onCreateInputConnection(editorInfo);
        k.a(inputConnectionOnCreateInputConnection, editorInfo, this);
        return inputConnectionOnCreateInputConnection;
    }

    @Override // android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
        super.setBackgroundDrawable(drawable);
        e eVar = this.f358b;
        if (eVar != null) {
            eVar.f(drawable);
        }
    }

    @Override // android.view.View
    public void setBackgroundResource(int i) {
        super.setBackgroundResource(i);
        e eVar = this.f358b;
        if (eVar != null) {
            eVar.g(i);
        }
    }

    @Override // android.widget.AutoCompleteTextView
    public void setDropDownBackgroundResource(int i) {
        setDropDownBackgroundDrawable(c.a.k.a.a.d(getContext(), i));
    }

    @Override // androidx.core.view.u
    public void setSupportBackgroundTintList(ColorStateList colorStateList) {
        e eVar = this.f358b;
        if (eVar != null) {
            eVar.i(colorStateList);
        }
    }

    @Override // androidx.core.view.u
    public void setSupportBackgroundTintMode(PorterDuff.Mode mode) {
        e eVar = this.f358b;
        if (eVar != null) {
            eVar.j(mode);
        }
    }

    @Override // android.widget.TextView
    public void setTextAppearance(Context context, int i) {
        super.setTextAppearance(context, i);
        w wVar = this.f359c;
        if (wVar != null) {
            wVar.q(context, i);
        }
    }

    public n(Context context, AttributeSet attributeSet, int i) {
        super(r0.b(context), attributeSet, i);
        p0.a(this, getContext());
        u0 u0VarV = u0.v(getContext(), attributeSet, f357d, i, 0);
        if (u0VarV.s(0)) {
            setDropDownBackgroundDrawable(u0VarV.g(0));
        }
        u0VarV.w();
        e eVar = new e(this);
        this.f358b = eVar;
        eVar.e(attributeSet, i);
        w wVar = new w(this);
        this.f359c = wVar;
        wVar.m(attributeSet, i);
        this.f359c.b();
    }
}
