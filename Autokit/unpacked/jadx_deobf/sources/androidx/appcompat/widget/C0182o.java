package androidx.appcompat.widget;

import android.content.Context;
import android.os.Build;
import android.util.AttributeSet;
import android.view.View;
import android.widget.PopupWindow;
import androidx.core.widget.C0307h;
import p016c.p017a.C0502j;

/* JADX INFO: renamed from: androidx.appcompat.widget.o */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
class C0182o extends PopupWindow {

    /* JADX INFO: renamed from: b */
    private static final boolean f1232b;

    /* JADX INFO: renamed from: a */
    private boolean f1233a;

    static {
        f1232b = Build.VERSION.SDK_INT < 21;
    }

    public C0182o(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        m1249a(context, attributeSet, i, i2);
    }

    /* JADX INFO: renamed from: a */
    private void m1249a(Context context, AttributeSet attributeSet, int i, int i2) {
        C0195u0 c0195u0M1321v = C0195u0.m1321v(context, attributeSet, C0502j.PopupWindow, i, i2);
        if (c0195u0M1321v.m1340s(C0502j.PopupWindow_overlapAnchor)) {
            m1250b(c0195u0M1321v.m1322a(C0502j.PopupWindow_overlapAnchor, false));
        }
        setBackgroundDrawable(c0195u0M1321v.m1328g(C0502j.PopupWindow_android_popupBackground));
        c0195u0M1321v.m1341w();
    }

    /* JADX INFO: renamed from: b */
    private void m1250b(boolean z) {
        if (f1232b) {
            this.f1233a = z;
        } else {
            C0307h.m2273a(this, z);
        }
    }

    @Override // android.widget.PopupWindow
    public void showAsDropDown(View view, int i, int i2) {
        if (f1232b && this.f1233a) {
            i2 -= view.getHeight();
        }
        super.showAsDropDown(view, i, i2);
    }

    @Override // android.widget.PopupWindow
    public void update(View view, int i, int i2, int i3, int i4) {
        if (f1232b && this.f1233a) {
            i2 -= view.getHeight();
        }
        super.update(view, i, i2, i3, i4);
    }

    @Override // android.widget.PopupWindow
    public void showAsDropDown(View view, int i, int i2, int i3) {
        if (f1232b && this.f1233a) {
            i2 -= view.getHeight();
        }
        super.showAsDropDown(view, i, i2, i3);
    }
}
