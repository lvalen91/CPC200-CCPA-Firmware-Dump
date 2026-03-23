package androidx.appcompat.widget;

import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.AttributeSet;
import android.widget.CompoundButton;
import androidx.core.graphics.drawable.C0251a;
import androidx.core.view.C0292v;
import androidx.core.widget.C0302c;
import p016c.p017a.C0502j;
import p016c.p017a.p018k.p019a.C0503a;

/* JADX INFO: renamed from: androidx.appcompat.widget.h */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
class C0168h {

    /* JADX INFO: renamed from: a */
    private final CompoundButton f1120a;

    /* JADX INFO: renamed from: b */
    private ColorStateList f1121b = null;

    /* JADX INFO: renamed from: c */
    private PorterDuff.Mode f1122c = null;

    /* JADX INFO: renamed from: d */
    private boolean f1123d = false;

    /* JADX INFO: renamed from: e */
    private boolean f1124e = false;

    /* JADX INFO: renamed from: f */
    private boolean f1125f;

    C0168h(CompoundButton compoundButton) {
        this.f1120a = compoundButton;
    }

    /* JADX INFO: renamed from: a */
    void m1125a() {
        Drawable drawableM2263a = C0302c.m2263a(this.f1120a);
        if (drawableM2263a != null) {
            if (this.f1123d || this.f1124e) {
                Drawable drawableMutate = C0251a.m1797r(drawableM2263a).mutate();
                if (this.f1123d) {
                    C0251a.m1794o(drawableMutate, this.f1121b);
                }
                if (this.f1124e) {
                    C0251a.m1795p(drawableMutate, this.f1122c);
                }
                if (drawableMutate.isStateful()) {
                    drawableMutate.setState(this.f1120a.getDrawableState());
                }
                this.f1120a.setButtonDrawable(drawableMutate);
            }
        }
    }

    /* JADX INFO: renamed from: b */
    int m1126b(int i) {
        Drawable drawableM2263a;
        return (Build.VERSION.SDK_INT >= 17 || (drawableM2263a = C0302c.m2263a(this.f1120a)) == null) ? i : i + drawableM2263a.getIntrinsicWidth();
    }

    /* JADX INFO: renamed from: c */
    ColorStateList m1127c() {
        return this.f1121b;
    }

    /* JADX INFO: renamed from: d */
    PorterDuff.Mode m1128d() {
        return this.f1122c;
    }

    /* JADX INFO: renamed from: e */
    void m1129e(AttributeSet attributeSet, int i) {
        boolean z;
        int iM1335n;
        int iM1335n2;
        C0195u0 c0195u0M1321v = C0195u0.m1321v(this.f1120a.getContext(), attributeSet, C0502j.CompoundButton, i, 0);
        CompoundButton compoundButton = this.f1120a;
        C0292v.m2101m0(compoundButton, compoundButton.getContext(), C0502j.CompoundButton, attributeSet, c0195u0M1321v.m1339r(), i, 0);
        try {
            if (!c0195u0M1321v.m1340s(C0502j.CompoundButton_buttonCompat) || (iM1335n2 = c0195u0M1321v.m1335n(C0502j.CompoundButton_buttonCompat, 0)) == 0) {
                z = false;
            } else {
                try {
                    this.f1120a.setButtonDrawable(C0503a.m4047d(this.f1120a.getContext(), iM1335n2));
                    z = true;
                } catch (Resources.NotFoundException unused) {
                    z = false;
                }
            }
            if (!z && c0195u0M1321v.m1340s(C0502j.CompoundButton_android_button) && (iM1335n = c0195u0M1321v.m1335n(C0502j.CompoundButton_android_button, 0)) != 0) {
                this.f1120a.setButtonDrawable(C0503a.m4047d(this.f1120a.getContext(), iM1335n));
            }
            if (c0195u0M1321v.m1340s(C0502j.CompoundButton_buttonTint)) {
                C0302c.m2265c(this.f1120a, c0195u0M1321v.m1324c(C0502j.CompoundButton_buttonTint));
            }
            if (c0195u0M1321v.m1340s(C0502j.CompoundButton_buttonTintMode)) {
                C0302c.m2266d(this.f1120a, C0159c0.m1074e(c0195u0M1321v.m1332k(C0502j.CompoundButton_buttonTintMode, -1), null));
            }
        } finally {
            c0195u0M1321v.m1341w();
        }
    }

    /* JADX INFO: renamed from: f */
    void m1130f() {
        if (this.f1125f) {
            this.f1125f = false;
        } else {
            this.f1125f = true;
            m1125a();
        }
    }

    /* JADX INFO: renamed from: g */
    void m1131g(ColorStateList colorStateList) {
        this.f1121b = colorStateList;
        this.f1123d = true;
        m1125a();
    }

    /* JADX INFO: renamed from: h */
    void m1132h(PorterDuff.Mode mode) {
        this.f1122c = mode;
        this.f1124e = true;
        m1125a();
    }
}
