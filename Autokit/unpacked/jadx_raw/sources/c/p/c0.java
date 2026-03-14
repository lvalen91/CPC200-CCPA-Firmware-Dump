package c.p;

import android.graphics.Matrix;
import android.graphics.Rect;
import android.os.Build;
import android.util.Property;
import android.view.View;

/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
class c0 {
    private static final i0 a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    static final Property<View, Float> f1280b;

    static class a extends Property<View, Float> {
        a(Class cls, String str) {
            super(cls, str);
        }

        @Override // android.util.Property
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public Float get(View view) {
            return Float.valueOf(c0.c(view));
        }

        @Override // android.util.Property
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public void set(View view, Float f) {
            c0.g(view, f.floatValue());
        }
    }

    static class b extends Property<View, Rect> {
        b(Class cls, String str) {
            super(cls, str);
        }

        @Override // android.util.Property
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public Rect get(View view) {
            return androidx.core.view.v.u(view);
        }

        @Override // android.util.Property
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public void set(View view, Rect rect) {
            androidx.core.view.v.u0(view, rect);
        }
    }

    static {
        int i = Build.VERSION.SDK_INT;
        if (i >= 29) {
            a = new h0();
        } else if (i >= 23) {
            a = new g0();
        } else if (i >= 22) {
            a = new f0();
        } else if (i >= 21) {
            a = new e0();
        } else if (i >= 19) {
            a = new d0();
        } else {
            a = new i0();
        }
        f1280b = new a(Float.class, "translationAlpha");
        new b(Rect.class, "clipBounds");
    }

    static void a(View view) {
        a.a(view);
    }

    static b0 b(View view) {
        return Build.VERSION.SDK_INT >= 18 ? new a0(view) : z.e(view);
    }

    static float c(View view) {
        return a.c(view);
    }

    static m0 d(View view) {
        return Build.VERSION.SDK_INT >= 18 ? new l0(view) : new k0(view.getWindowToken());
    }

    static void e(View view) {
        a.d(view);
    }

    static void f(View view, int i, int i2, int i3, int i4) {
        a.e(view, i, i2, i3, i4);
    }

    static void g(View view, float f) {
        a.f(view, f);
    }

    static void h(View view, int i) {
        a.g(view, i);
    }

    static void i(View view, Matrix matrix) {
        a.h(view, matrix);
    }

    static void j(View view, Matrix matrix) {
        a.i(view, matrix);
    }
}
