package androidx.appcompat.widget;

import android.R;
import android.content.Context;
import android.util.AttributeSet;
import android.view.ActionMode;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import android.widget.CheckedTextView;
import androidx.core.widget.C0308i;
import p016c.p017a.p018k.p019a.C0503a;

/* JADX INFO: renamed from: androidx.appcompat.widget.g */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class C0166g extends CheckedTextView {

    /* JADX INFO: renamed from: c */
    private static final int[] f1103c = {R.attr.checkMark};

    /* JADX INFO: renamed from: b */
    private final C0198w f1104b;

    public C0166g(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.checkedTextViewStyle);
    }

    @Override // android.widget.CheckedTextView, android.widget.TextView, android.view.View
    protected void drawableStateChanged() {
        super.drawableStateChanged();
        C0198w c0198w = this.f1104b;
        if (c0198w != null) {
            c0198w.m1364b();
        }
    }

    @Override // android.widget.TextView, android.view.View
    public InputConnection onCreateInputConnection(EditorInfo editorInfo) {
        InputConnection inputConnectionOnCreateInputConnection = super.onCreateInputConnection(editorInfo);
        C0174k.m1194a(inputConnectionOnCreateInputConnection, editorInfo, this);
        return inputConnectionOnCreateInputConnection;
    }

    @Override // android.widget.CheckedTextView
    public void setCheckMarkDrawable(int i) {
        setCheckMarkDrawable(C0503a.m4047d(getContext(), i));
    }

    @Override // android.widget.TextView
    public void setCustomSelectionActionModeCallback(ActionMode.Callback callback) {
        super.setCustomSelectionActionModeCallback(C0308i.m2291p(this, callback));
    }

    @Override // android.widget.TextView
    public void setTextAppearance(Context context, int i) {
        super.setTextAppearance(context, i);
        C0198w c0198w = this.f1104b;
        if (c0198w != null) {
            c0198w.m1378q(context, i);
        }
    }

    public C0166g(Context context, AttributeSet attributeSet, int i) {
        super(C0189r0.m1286b(context), attributeSet, i);
        C0185p0.m1279a(this, getContext());
        C0198w c0198w = new C0198w(this);
        this.f1104b = c0198w;
        c0198w.m1374m(attributeSet, i);
        this.f1104b.m1364b();
        C0195u0 c0195u0M1321v = C0195u0.m1321v(getContext(), attributeSet, f1103c, i, 0);
        setCheckMarkDrawable(c0195u0M1321v.m1328g(0));
        c0195u0M1321v.m1341w();
    }
}
