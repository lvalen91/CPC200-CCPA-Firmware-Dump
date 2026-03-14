package androidx.appcompat.widget;

import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.RippleDrawable;
import android.os.Build;
import android.util.AttributeSet;
import android.widget.ImageView;
import androidx.core.view.C0292v;
import androidx.core.widget.C0304e;
import p016c.p017a.C0502j;
import p016c.p017a.p018k.p019a.C0503a;

/* JADX INFO: renamed from: androidx.appcompat.widget.m */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class C0178m {

    /* JADX INFO: renamed from: a */
    private final ImageView f1198a;

    /* JADX INFO: renamed from: b */
    private C0191s0 f1199b;

    /* JADX INFO: renamed from: c */
    private C0191s0 f1200c;

    /* JADX INFO: renamed from: d */
    private C0191s0 f1201d;

    public C0178m(ImageView imageView) {
        this.f1198a = imageView;
    }

    /* JADX INFO: renamed from: a */
    private boolean m1223a(Drawable drawable) {
        if (this.f1201d == null) {
            this.f1201d = new C0191s0();
        }
        C0191s0 c0191s0 = this.f1201d;
        c0191s0.m1294a();
        ColorStateList colorStateListM2268a = C0304e.m2268a(this.f1198a);
        if (colorStateListM2268a != null) {
            c0191s0.f1275d = true;
            c0191s0.f1272a = colorStateListM2268a;
        }
        PorterDuff.Mode modeM2269b = C0304e.m2269b(this.f1198a);
        if (modeM2269b != null) {
            c0191s0.f1274c = true;
            c0191s0.f1273b = modeM2269b;
        }
        if (!c0191s0.f1275d && !c0191s0.f1274c) {
            return false;
        }
        C0170i.m1171i(drawable, c0191s0, this.f1198a.getDrawableState());
        return true;
    }

    /* JADX INFO: renamed from: j */
    private boolean m1224j() {
        int i = Build.VERSION.SDK_INT;
        return i > 21 ? this.f1199b != null : i == 21;
    }

    /* JADX INFO: renamed from: b */
    void m1225b() {
        Drawable drawable = this.f1198a.getDrawable();
        if (drawable != null) {
            C0159c0.m1071b(drawable);
        }
        if (drawable != null) {
            if (m1224j() && m1223a(drawable)) {
                return;
            }
            C0191s0 c0191s0 = this.f1200c;
            if (c0191s0 != null) {
                C0170i.m1171i(drawable, c0191s0, this.f1198a.getDrawableState());
                return;
            }
            C0191s0 c0191s02 = this.f1199b;
            if (c0191s02 != null) {
                C0170i.m1171i(drawable, c0191s02, this.f1198a.getDrawableState());
            }
        }
    }

    /* JADX INFO: renamed from: c */
    ColorStateList m1226c() {
        C0191s0 c0191s0 = this.f1200c;
        if (c0191s0 != null) {
            return c0191s0.f1272a;
        }
        return null;
    }

    /* JADX INFO: renamed from: d */
    PorterDuff.Mode m1227d() {
        C0191s0 c0191s0 = this.f1200c;
        if (c0191s0 != null) {
            return c0191s0.f1273b;
        }
        return null;
    }

    /* JADX INFO: renamed from: e */
    boolean m1228e() {
        return Build.VERSION.SDK_INT < 21 || !(this.f1198a.getBackground() instanceof RippleDrawable);
    }

    /* JADX INFO: renamed from: f */
    public void m1229f(AttributeSet attributeSet, int i) {
        int iM1335n;
        C0195u0 c0195u0M1321v = C0195u0.m1321v(this.f1198a.getContext(), attributeSet, C0502j.AppCompatImageView, i, 0);
        ImageView imageView = this.f1198a;
        C0292v.m2101m0(imageView, imageView.getContext(), C0502j.AppCompatImageView, attributeSet, c0195u0M1321v.m1339r(), i, 0);
        try {
            Drawable drawable = this.f1198a.getDrawable();
            if (drawable == null && (iM1335n = c0195u0M1321v.m1335n(C0502j.AppCompatImageView_srcCompat, -1)) != -1 && (drawable = C0503a.m4047d(this.f1198a.getContext(), iM1335n)) != null) {
                this.f1198a.setImageDrawable(drawable);
            }
            if (drawable != null) {
                C0159c0.m1071b(drawable);
            }
            if (c0195u0M1321v.m1340s(C0502j.AppCompatImageView_tint)) {
                C0304e.m2270c(this.f1198a, c0195u0M1321v.m1324c(C0502j.AppCompatImageView_tint));
            }
            if (c0195u0M1321v.m1340s(C0502j.AppCompatImageView_tintMode)) {
                C0304e.m2271d(this.f1198a, C0159c0.m1074e(c0195u0M1321v.m1332k(C0502j.AppCompatImageView_tintMode, -1), null));
            }
        } finally {
            c0195u0M1321v.m1341w();
        }
    }

    /* JADX INFO: renamed from: g */
    public void m1230g(int i) {
        if (i != 0) {
            Drawable drawableM4047d = C0503a.m4047d(this.f1198a.getContext(), i);
            if (drawableM4047d != null) {
                C0159c0.m1071b(drawableM4047d);
            }
            this.f1198a.setImageDrawable(drawableM4047d);
        } else {
            this.f1198a.setImageDrawable(null);
        }
        m1225b();
    }

    /* JADX INFO: renamed from: h */
    void m1231h(ColorStateList colorStateList) {
        if (this.f1200c == null) {
            this.f1200c = new C0191s0();
        }
        C0191s0 c0191s0 = this.f1200c;
        c0191s0.f1272a = colorStateList;
        c0191s0.f1275d = true;
        m1225b();
    }

    /* JADX INFO: renamed from: i */
    void m1232i(PorterDuff.Mode mode) {
        if (this.f1200c == null) {
            this.f1200c = new C0191s0();
        }
        C0191s0 c0191s0 = this.f1200c;
        c0191s0.f1273b = mode;
        c0191s0.f1274c = true;
        m1225b();
    }
}
