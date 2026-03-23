package androidx.appcompat.widget;

import android.R;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.ActionMode;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import android.widget.AutoCompleteTextView;
import androidx.core.view.InterfaceC0291u;
import androidx.core.widget.C0308i;
import p016c.p017a.C0493a;
import p016c.p017a.p018k.p019a.C0503a;

/* JADX INFO: renamed from: androidx.appcompat.widget.d */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class C0160d extends AutoCompleteTextView implements InterfaceC0291u {

    /* JADX INFO: renamed from: d */
    private static final int[] f1064d = {R.attr.popupBackground};

    /* JADX INFO: renamed from: b */
    private final C0162e f1065b;

    /* JADX INFO: renamed from: c */
    private final C0198w f1066c;

    public C0160d(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, C0493a.autoCompleteTextViewStyle);
    }

    @Override // android.widget.TextView, android.view.View
    protected void drawableStateChanged() {
        super.drawableStateChanged();
        C0162e c0162e = this.f1065b;
        if (c0162e != null) {
            c0162e.m1091b();
        }
        C0198w c0198w = this.f1066c;
        if (c0198w != null) {
            c0198w.m1364b();
        }
    }

    @Override // androidx.core.view.InterfaceC0291u
    public ColorStateList getSupportBackgroundTintList() {
        C0162e c0162e = this.f1065b;
        if (c0162e != null) {
            return c0162e.m1092c();
        }
        return null;
    }

    @Override // androidx.core.view.InterfaceC0291u
    public PorterDuff.Mode getSupportBackgroundTintMode() {
        C0162e c0162e = this.f1065b;
        if (c0162e != null) {
            return c0162e.m1093d();
        }
        return null;
    }

    @Override // android.widget.TextView, android.view.View
    public InputConnection onCreateInputConnection(EditorInfo editorInfo) {
        InputConnection inputConnectionOnCreateInputConnection = super.onCreateInputConnection(editorInfo);
        C0174k.m1194a(inputConnectionOnCreateInputConnection, editorInfo, this);
        return inputConnectionOnCreateInputConnection;
    }

    @Override // android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
        super.setBackgroundDrawable(drawable);
        C0162e c0162e = this.f1065b;
        if (c0162e != null) {
            c0162e.m1095f(drawable);
        }
    }

    @Override // android.view.View
    public void setBackgroundResource(int i) {
        super.setBackgroundResource(i);
        C0162e c0162e = this.f1065b;
        if (c0162e != null) {
            c0162e.m1096g(i);
        }
    }

    @Override // android.widget.TextView
    public void setCustomSelectionActionModeCallback(ActionMode.Callback callback) {
        super.setCustomSelectionActionModeCallback(C0308i.m2291p(this, callback));
    }

    @Override // android.widget.AutoCompleteTextView
    public void setDropDownBackgroundResource(int i) {
        setDropDownBackgroundDrawable(C0503a.m4047d(getContext(), i));
    }

    @Override // androidx.core.view.InterfaceC0291u
    public void setSupportBackgroundTintList(ColorStateList colorStateList) {
        C0162e c0162e = this.f1065b;
        if (c0162e != null) {
            c0162e.m1098i(colorStateList);
        }
    }

    @Override // androidx.core.view.InterfaceC0291u
    public void setSupportBackgroundTintMode(PorterDuff.Mode mode) {
        C0162e c0162e = this.f1065b;
        if (c0162e != null) {
            c0162e.m1099j(mode);
        }
    }

    @Override // android.widget.TextView
    public void setTextAppearance(Context context, int i) {
        super.setTextAppearance(context, i);
        C0198w c0198w = this.f1066c;
        if (c0198w != null) {
            c0198w.m1378q(context, i);
        }
    }

    public C0160d(Context context, AttributeSet attributeSet, int i) {
        super(C0189r0.m1286b(context), attributeSet, i);
        C0185p0.m1279a(this, getContext());
        C0195u0 c0195u0M1321v = C0195u0.m1321v(getContext(), attributeSet, f1064d, i, 0);
        if (c0195u0M1321v.m1340s(0)) {
            setDropDownBackgroundDrawable(c0195u0M1321v.m1328g(0));
        }
        c0195u0M1321v.m1341w();
        C0162e c0162e = new C0162e(this);
        this.f1065b = c0162e;
        c0162e.m1094e(attributeSet, i);
        C0198w c0198w = new C0198w(this);
        this.f1066c = c0198w;
        c0198w.m1374m(attributeSet, i);
        this.f1066c.m1364b();
    }
}
