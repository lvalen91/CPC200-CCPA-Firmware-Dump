package p016c.p065p;

import android.graphics.Matrix;
import android.graphics.Rect;
import android.os.Build;
import android.util.Property;
import android.view.View;
import androidx.core.view.C0292v;

/* JADX INFO: renamed from: c.p.c0 */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
class C0657c0 {

    /* JADX INFO: renamed from: a */
    private static final C0669i0 f3943a;

    /* JADX INFO: renamed from: b */
    static final Property<View, Float> f3944b;

    /* JADX INFO: renamed from: c.p.c0$a */
    static class a extends Property<View, Float> {
        a(Class cls, String str) {
            super(cls, str);
        }

        @Override // android.util.Property
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public Float get(View view) {
            return Float.valueOf(C0657c0.m5060c(view));
        }

        @Override // android.util.Property
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public void set(View view, Float f) {
            C0657c0.m5064g(view, f.floatValue());
        }
    }

    /* JADX INFO: renamed from: c.p.c0$b */
    static class b extends Property<View, Rect> {
        b(Class cls, String str) {
            super(cls, str);
        }

        @Override // android.util.Property
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public Rect get(View view) {
            return C0292v.m2116u(view);
        }

        @Override // android.util.Property
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public void set(View view, Rect rect) {
            C0292v.m2117u0(view, rect);
        }
    }

    static {
        int i = Build.VERSION.SDK_INT;
        if (i >= 29) {
            f3943a = new C0667h0();
        } else if (i >= 23) {
            f3943a = new C0665g0();
        } else if (i >= 22) {
            f3943a = new C0663f0();
        } else if (i >= 21) {
            f3943a = new C0661e0();
        } else if (i >= 19) {
            f3943a = new C0659d0();
        } else {
            f3943a = new C0669i0();
        }
        f3944b = new a(Float.class, "translationAlpha");
        new b(Rect.class, "clipBounds");
    }

    /* JADX INFO: renamed from: a */
    static void m5058a(View view) {
        f3943a.mo5076a(view);
    }

    /* JADX INFO: renamed from: b */
    static InterfaceC0655b0 m5059b(View view) {
        return Build.VERSION.SDK_INT >= 18 ? new C0653a0(view) : C0690z.m5184e(view);
    }

    /* JADX INFO: renamed from: c */
    static float m5060c(View view) {
        return f3943a.mo5077c(view);
    }

    /* JADX INFO: renamed from: d */
    static InterfaceC0677m0 m5061d(View view) {
        return Build.VERSION.SDK_INT >= 18 ? new C0675l0(view) : new C0673k0(view.getWindowToken());
    }

    /* JADX INFO: renamed from: e */
    static void m5062e(View view) {
        f3943a.mo5078d(view);
    }

    /* JADX INFO: renamed from: f */
    static void m5063f(View view, int i, int i2, int i3, int i4) {
        f3943a.mo5085e(view, i, i2, i3, i4);
    }

    /* JADX INFO: renamed from: g */
    static void m5064g(View view, float f) {
        f3943a.mo5079f(view, f);
    }

    /* JADX INFO: renamed from: h */
    static void m5065h(View view, int i) {
        f3943a.mo5087g(view, i);
    }

    /* JADX INFO: renamed from: i */
    static void m5066i(View view, Matrix matrix) {
        f3943a.mo5082h(view, matrix);
    }

    /* JADX INFO: renamed from: j */
    static void m5067j(View view, Matrix matrix) {
        f3943a.mo5083i(view, matrix);
    }
}
