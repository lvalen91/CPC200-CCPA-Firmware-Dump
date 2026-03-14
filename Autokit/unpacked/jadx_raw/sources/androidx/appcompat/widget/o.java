package androidx.appcompat.widget;

import android.content.Context;
import android.os.Build;
import android.util.AttributeSet;
import android.view.View;
import android.widget.PopupWindow;

/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
class o extends PopupWindow {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final boolean f370b;
    private boolean a;

    static {
        f370b = Build.VERSION.SDK_INT < 21;
    }

    public o(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        a(context, attributeSet, i, i2);
    }

    private void a(Context context, AttributeSet attributeSet, int i, int i2) {
        u0 u0VarV = u0.v(context, attributeSet, c.a.j.PopupWindow, i, i2);
        if (u0VarV.s(c.a.j.PopupWindow_overlapAnchor)) {
            b(u0VarV.a(c.a.j.PopupWindow_overlapAnchor, false));
        }
        setBackgroundDrawable(u0VarV.g(c.a.j.PopupWindow_android_popupBackground));
        u0VarV.w();
    }

    private void b(boolean z) {
        if (f370b) {
            this.a = z;
        } else {
            androidx.core.widget.h.a(this, z);
        }
    }

    @Override // android.widget.PopupWindow
    public void showAsDropDown(View view, int i, int i2) {
        if (f370b && this.a) {
            i2 -= view.getHeight();
        }
        super.showAsDropDown(view, i, i2);
    }

    @Override // android.widget.PopupWindow
    public void update(View view, int i, int i2, int i3, int i4) {
        if (f370b && this.a) {
            i2 -= view.getHeight();
        }
        super.update(view, i, i2, i3, i4);
    }

    @Override // android.widget.PopupWindow
    public void showAsDropDown(View view, int i, int i2, int i3) {
        if (f370b && this.a) {
            i2 -= view.getHeight();
        }
        super.showAsDropDown(view, i, i2, i3);
    }
}
