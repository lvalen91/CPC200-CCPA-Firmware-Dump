package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.text.Editable;
import android.util.AttributeSet;
import android.view.ActionMode;
import android.view.DragEvent;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import android.view.textclassifier.TextClassifier;
import android.widget.EditText;
import androidx.core.view.C0262c;
import androidx.core.view.C0292v;
import androidx.core.view.InterfaceC0289s;
import androidx.core.view.InterfaceC0291u;
import androidx.core.view.p005f0.C0274a;
import androidx.core.view.p005f0.C0275b;
import androidx.core.widget.C0308i;
import androidx.core.widget.C0309j;
import p016c.p017a.C0493a;

/* JADX INFO: renamed from: androidx.appcompat.widget.j */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class C0172j extends EditText implements InterfaceC0291u, InterfaceC0289s {

    /* JADX INFO: renamed from: b */
    private final C0162e f1175b;

    /* JADX INFO: renamed from: c */
    private final C0198w f1176c;

    /* JADX INFO: renamed from: d */
    private final C0196v f1177d;

    /* JADX INFO: renamed from: e */
    private final C0309j f1178e;

    public C0172j(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, C0493a.editTextStyle);
    }

    @Override // androidx.core.view.InterfaceC0289s
    /* JADX INFO: renamed from: a */
    public C0262c mo1189a(C0262c c0262c) {
        return this.f1178e.mo2039a(this, c0262c);
    }

    @Override // android.widget.TextView, android.view.View
    protected void drawableStateChanged() {
        super.drawableStateChanged();
        C0162e c0162e = this.f1175b;
        if (c0162e != null) {
            c0162e.m1091b();
        }
        C0198w c0198w = this.f1176c;
        if (c0198w != null) {
            c0198w.m1364b();
        }
    }

    @Override // androidx.core.view.InterfaceC0291u
    public ColorStateList getSupportBackgroundTintList() {
        C0162e c0162e = this.f1175b;
        if (c0162e != null) {
            return c0162e.m1092c();
        }
        return null;
    }

    @Override // androidx.core.view.InterfaceC0291u
    public PorterDuff.Mode getSupportBackgroundTintMode() {
        C0162e c0162e = this.f1175b;
        if (c0162e != null) {
            return c0162e.m1093d();
        }
        return null;
    }

    @Override // android.widget.TextView
    public TextClassifier getTextClassifier() {
        C0196v c0196v;
        return (Build.VERSION.SDK_INT >= 28 || (c0196v = this.f1177d) == null) ? super.getTextClassifier() : c0196v.m1342a();
    }

    @Override // android.widget.TextView, android.view.View
    public InputConnection onCreateInputConnection(EditorInfo editorInfo) {
        InputConnection inputConnectionOnCreateInputConnection = super.onCreateInputConnection(editorInfo);
        this.f1176c.m1379r(this, inputConnectionOnCreateInputConnection, editorInfo);
        C0174k.m1194a(inputConnectionOnCreateInputConnection, editorInfo, this);
        String[] strArrM2052F = C0292v.m2052F(this);
        if (inputConnectionOnCreateInputConnection == null || strArrM2052F == null) {
            return inputConnectionOnCreateInputConnection;
        }
        C0274a.m1986d(editorInfo, strArrM2052F);
        return C0275b.m1992a(inputConnectionOnCreateInputConnection, editorInfo, C0190s.m1287a(this));
    }

    @Override // android.widget.TextView, android.view.View
    public boolean onDragEvent(DragEvent dragEvent) {
        if (C0190s.m1288b(this, dragEvent)) {
            return true;
        }
        return super.onDragEvent(dragEvent);
    }

    @Override // android.widget.EditText, android.widget.TextView
    public boolean onTextContextMenuItem(int i) {
        if (C0190s.m1289c(this, i)) {
            return true;
        }
        return super.onTextContextMenuItem(i);
    }

    @Override // android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
        super.setBackgroundDrawable(drawable);
        C0162e c0162e = this.f1175b;
        if (c0162e != null) {
            c0162e.m1095f(drawable);
        }
    }

    @Override // android.view.View
    public void setBackgroundResource(int i) {
        super.setBackgroundResource(i);
        C0162e c0162e = this.f1175b;
        if (c0162e != null) {
            c0162e.m1096g(i);
        }
    }

    @Override // android.widget.TextView
    public void setCustomSelectionActionModeCallback(ActionMode.Callback callback) {
        super.setCustomSelectionActionModeCallback(C0308i.m2291p(this, callback));
    }

    @Override // androidx.core.view.InterfaceC0291u
    public void setSupportBackgroundTintList(ColorStateList colorStateList) {
        C0162e c0162e = this.f1175b;
        if (c0162e != null) {
            c0162e.m1098i(colorStateList);
        }
    }

    @Override // androidx.core.view.InterfaceC0291u
    public void setSupportBackgroundTintMode(PorterDuff.Mode mode) {
        C0162e c0162e = this.f1175b;
        if (c0162e != null) {
            c0162e.m1099j(mode);
        }
    }

    @Override // android.widget.TextView
    public void setTextAppearance(Context context, int i) {
        super.setTextAppearance(context, i);
        C0198w c0198w = this.f1176c;
        if (c0198w != null) {
            c0198w.m1378q(context, i);
        }
    }

    @Override // android.widget.TextView
    public void setTextClassifier(TextClassifier textClassifier) {
        C0196v c0196v;
        if (Build.VERSION.SDK_INT >= 28 || (c0196v = this.f1177d) == null) {
            super.setTextClassifier(textClassifier);
        } else {
            c0196v.m1343b(textClassifier);
        }
    }

    public C0172j(Context context, AttributeSet attributeSet, int i) {
        super(C0189r0.m1286b(context), attributeSet, i);
        C0185p0.m1279a(this, getContext());
        C0162e c0162e = new C0162e(this);
        this.f1175b = c0162e;
        c0162e.m1094e(attributeSet, i);
        C0198w c0198w = new C0198w(this);
        this.f1176c = c0198w;
        c0198w.m1374m(attributeSet, i);
        this.f1176c.m1364b();
        this.f1177d = new C0196v(this);
        this.f1178e = new C0309j();
    }

    @Override // android.widget.EditText, android.widget.TextView
    public Editable getText() {
        return Build.VERSION.SDK_INT >= 28 ? super.getText() : super.getEditableText();
    }
}
