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

/* JADX INFO: loaded from: /Volumes/stuff/macbook/misc/CPC200-CCPA/rework/dumped_real_classes.dex */
public class j extends EditText implements androidx.core.view.u, androidx.core.view.s {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final e f343b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final w f344c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final v f345d;
    private final androidx.core.widget.j e;

    public j(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, c.a.a.editTextStyle);
    }

    @Override // androidx.core.view.s
    public androidx.core.view.c a(androidx.core.view.c cVar) {
        return this.e.a(this, cVar);
    }

    @Override // android.widget.TextView, android.view.View
    protected void drawableStateChanged() {
        super.drawableStateChanged();
        e eVar = this.f343b;
        if (eVar != null) {
            eVar.b();
        }
        w wVar = this.f344c;
        if (wVar != null) {
            wVar.b();
        }
    }

    @Override // androidx.core.view.u
    public ColorStateList getSupportBackgroundTintList() {
        e eVar = this.f343b;
        if (eVar != null) {
            return eVar.c();
        }
        return null;
    }

    @Override // androidx.core.view.u
    public PorterDuff.Mode getSupportBackgroundTintMode() {
        e eVar = this.f343b;
        if (eVar != null) {
            return eVar.d();
        }
        return null;
    }

    @Override // android.widget.TextView
    public TextClassifier getTextClassifier() {
        v vVar;
        return (Build.VERSION.SDK_INT >= 28 || (vVar = this.f345d) == null) ? super.getTextClassifier() : vVar.a();
    }

    @Override // android.widget.TextView, android.view.View
    public InputConnection onCreateInputConnection(EditorInfo editorInfo) {
        InputConnection inputConnectionOnCreateInputConnection = super.onCreateInputConnection(editorInfo);
        this.f344c.r(this, inputConnectionOnCreateInputConnection, editorInfo);
        k.a(inputConnectionOnCreateInputConnection, editorInfo, this);
        String[] strArrF = androidx.core.view.v.F(this);
        if (inputConnectionOnCreateInputConnection == null || strArrF == null) {
            return inputConnectionOnCreateInputConnection;
        }
        androidx.core.view.f0.a.d(editorInfo, strArrF);
        return androidx.core.view.f0.b.a(inputConnectionOnCreateInputConnection, editorInfo, s.a(this));
    }

    @Override // android.widget.TextView, android.view.View
    public boolean onDragEvent(DragEvent dragEvent) {
        if (s.b(this, dragEvent)) {
            return true;
        }
        return super.onDragEvent(dragEvent);
    }

    @Override // android.widget.EditText, android.widget.TextView
    public boolean onTextContextMenuItem(int i) {
        if (s.c(this, i)) {
            return true;
        }
        return super.onTextContextMenuItem(i);
    }

    @Override // android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
        super.setBackgroundDrawable(drawable);
        e eVar = this.f343b;
        if (eVar != null) {
            eVar.f(drawable);
        }
    }

    @Override // android.view.View
    public void setBackgroundResource(int i) {
        super.setBackgroundResource(i);
        e eVar = this.f343b;
        if (eVar != null) {
            eVar.g(i);
        }
    }

    @Override // android.widget.TextView
    public void setCustomSelectionActionModeCallback(ActionMode.Callback callback) {
        super.setCustomSelectionActionModeCallback(androidx.core.widget.i.p(this, callback));
    }

    @Override // androidx.core.view.u
    public void setSupportBackgroundTintList(ColorStateList colorStateList) {
        e eVar = this.f343b;
        if (eVar != null) {
            eVar.i(colorStateList);
        }
    }

    @Override // androidx.core.view.u
    public void setSupportBackgroundTintMode(PorterDuff.Mode mode) {
        e eVar = this.f343b;
        if (eVar != null) {
            eVar.j(mode);
        }
    }

    @Override // android.widget.TextView
    public void setTextAppearance(Context context, int i) {
        super.setTextAppearance(context, i);
        w wVar = this.f344c;
        if (wVar != null) {
            wVar.q(context, i);
        }
    }

    @Override // android.widget.TextView
    public void setTextClassifier(TextClassifier textClassifier) {
        v vVar;
        if (Build.VERSION.SDK_INT >= 28 || (vVar = this.f345d) == null) {
            super.setTextClassifier(textClassifier);
        } else {
            vVar.b(textClassifier);
        }
    }

    public j(Context context, AttributeSet attributeSet, int i) {
        super(r0.b(context), attributeSet, i);
        p0.a(this, getContext());
        e eVar = new e(this);
        this.f343b = eVar;
        eVar.e(attributeSet, i);
        w wVar = new w(this);
        this.f344c = wVar;
        wVar.m(attributeSet, i);
        this.f344c.b();
        this.f345d = new v(this);
        this.e = new androidx.core.widget.j();
    }

    @Override // android.widget.EditText, android.widget.TextView
    public Editable getText() {
        return Build.VERSION.SDK_INT >= 28 ? super.getText() : super.getEditableText();
    }
}
