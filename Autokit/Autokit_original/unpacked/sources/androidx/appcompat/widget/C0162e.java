package androidx.appcompat.widget;

import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.AttributeSet;
import android.view.View;
import androidx.core.view.C0292v;
import p016c.p017a.C0502j;

/* JADX INFO: renamed from: androidx.appcompat.widget.e */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
class C0162e {

    /* JADX INFO: renamed from: a */
    private final View f1083a;

    /* JADX INFO: renamed from: d */
    private C0191s0 f1086d;

    /* JADX INFO: renamed from: e */
    private C0191s0 f1087e;

    /* JADX INFO: renamed from: f */
    private C0191s0 f1088f;

    /* JADX INFO: renamed from: c */
    private int f1085c = -1;

    /* JADX INFO: renamed from: b */
    private final C0170i f1084b = C0170i.m1168b();

    C0162e(View view) {
        this.f1083a = view;
    }

    /* JADX INFO: renamed from: a */
    private boolean m1089a(Drawable drawable) {
        if (this.f1088f == null) {
            this.f1088f = new C0191s0();
        }
        C0191s0 c0191s0 = this.f1088f;
        c0191s0.m1294a();
        ColorStateList colorStateListM2112s = C0292v.m2112s(this.f1083a);
        if (colorStateListM2112s != null) {
            c0191s0.f1275d = true;
            c0191s0.f1272a = colorStateListM2112s;
        }
        PorterDuff.Mode modeM2114t = C0292v.m2114t(this.f1083a);
        if (modeM2114t != null) {
            c0191s0.f1274c = true;
            c0191s0.f1273b = modeM2114t;
        }
        if (!c0191s0.f1275d && !c0191s0.f1274c) {
            return false;
        }
        C0170i.m1171i(drawable, c0191s0, this.f1083a.getDrawableState());
        return true;
    }

    /* JADX INFO: renamed from: k */
    private boolean m1090k() {
        int i = Build.VERSION.SDK_INT;
        return i > 21 ? this.f1086d != null : i == 21;
    }

    /* JADX INFO: renamed from: b */
    void m1091b() {
        Drawable background = this.f1083a.getBackground();
        if (background != null) {
            if (m1090k() && m1089a(background)) {
                return;
            }
            C0191s0 c0191s0 = this.f1087e;
            if (c0191s0 != null) {
                C0170i.m1171i(background, c0191s0, this.f1083a.getDrawableState());
                return;
            }
            C0191s0 c0191s02 = this.f1086d;
            if (c0191s02 != null) {
                C0170i.m1171i(background, c0191s02, this.f1083a.getDrawableState());
            }
        }
    }

    /* JADX INFO: renamed from: c */
    ColorStateList m1092c() {
        C0191s0 c0191s0 = this.f1087e;
        if (c0191s0 != null) {
            return c0191s0.f1272a;
        }
        return null;
    }

    /* JADX INFO: renamed from: d */
    PorterDuff.Mode m1093d() {
        C0191s0 c0191s0 = this.f1087e;
        if (c0191s0 != null) {
            return c0191s0.f1273b;
        }
        return null;
    }

    /* JADX INFO: renamed from: e */
    void m1094e(AttributeSet attributeSet, int i) {
        C0195u0 c0195u0M1321v = C0195u0.m1321v(this.f1083a.getContext(), attributeSet, C0502j.ViewBackgroundHelper, i, 0);
        View view = this.f1083a;
        C0292v.m2101m0(view, view.getContext(), C0502j.ViewBackgroundHelper, attributeSet, c0195u0M1321v.m1339r(), i, 0);
        try {
            if (c0195u0M1321v.m1340s(C0502j.ViewBackgroundHelper_android_background)) {
                this.f1085c = c0195u0M1321v.m1335n(C0502j.ViewBackgroundHelper_android_background, -1);
                ColorStateList colorStateListM1174f = this.f1084b.m1174f(this.f1083a.getContext(), this.f1085c);
                if (colorStateListM1174f != null) {
                    m1097h(colorStateListM1174f);
                }
            }
            if (c0195u0M1321v.m1340s(C0502j.ViewBackgroundHelper_backgroundTint)) {
                C0292v.m2113s0(this.f1083a, c0195u0M1321v.m1324c(C0502j.ViewBackgroundHelper_backgroundTint));
            }
            if (c0195u0M1321v.m1340s(C0502j.ViewBackgroundHelper_backgroundTintMode)) {
                C0292v.m2115t0(this.f1083a, C0159c0.m1074e(c0195u0M1321v.m1332k(C0502j.ViewBackgroundHelper_backgroundTintMode, -1), null));
            }
        } finally {
            c0195u0M1321v.m1341w();
        }
    }

    /* JADX INFO: renamed from: f */
    void m1095f(Drawable drawable) {
        this.f1085c = -1;
        m1097h(null);
        m1091b();
    }

    /* JADX INFO: renamed from: g */
    void m1096g(int i) {
        this.f1085c = i;
        C0170i c0170i = this.f1084b;
        m1097h(c0170i != null ? c0170i.m1174f(this.f1083a.getContext(), i) : null);
        m1091b();
    }

    /* JADX INFO: renamed from: h */
    void m1097h(ColorStateList colorStateList) {
        if (colorStateList != null) {
            if (this.f1086d == null) {
                this.f1086d = new C0191s0();
            }
            C0191s0 c0191s0 = this.f1086d;
            c0191s0.f1272a = colorStateList;
            c0191s0.f1275d = true;
        } else {
            this.f1086d = null;
        }
        m1091b();
    }

    /* JADX INFO: renamed from: i */
    void m1098i(ColorStateList colorStateList) {
        if (this.f1087e == null) {
            this.f1087e = new C0191s0();
        }
        C0191s0 c0191s0 = this.f1087e;
        c0191s0.f1272a = colorStateList;
        c0191s0.f1275d = true;
        m1091b();
    }

    /* JADX INFO: renamed from: j */
    void m1099j(PorterDuff.Mode mode) {
        if (this.f1087e == null) {
            this.f1087e = new C0191s0();
        }
        C0191s0 c0191s0 = this.f1087e;
        c0191s0.f1273b = mode;
        c0191s0.f1274c = true;
        m1091b();
    }
}
