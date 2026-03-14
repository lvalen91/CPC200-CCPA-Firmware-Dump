package p016c.p065p;

import android.annotation.SuppressLint;
import android.graphics.Matrix;
import android.view.View;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

/* JADX INFO: renamed from: c.p.i0 */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
class C0669i0 {

    /* JADX INFO: renamed from: a */
    private static Method f3968a;

    /* JADX INFO: renamed from: b */
    private static boolean f3969b;

    /* JADX INFO: renamed from: c */
    private static Field f3970c;

    /* JADX INFO: renamed from: d */
    private static boolean f3971d;

    C0669i0() {
    }

    @SuppressLint({"PrivateApi"})
    /* JADX INFO: renamed from: b */
    private void m5091b() {
        if (f3969b) {
            return;
        }
        try {
            Method declaredMethod = View.class.getDeclaredMethod("setFrame", Integer.TYPE, Integer.TYPE, Integer.TYPE, Integer.TYPE);
            f3968a = declaredMethod;
            declaredMethod.setAccessible(true);
        } catch (NoSuchMethodException unused) {
        }
        f3969b = true;
    }

    /* JADX INFO: renamed from: a */
    public void mo5076a(View view) {
        if (view.getVisibility() == 0) {
            view.setTag(C0670j.save_non_transition_alpha, null);
        }
    }

    /* JADX INFO: renamed from: c */
    public float mo5077c(View view) {
        Float f = (Float) view.getTag(C0670j.save_non_transition_alpha);
        return f != null ? view.getAlpha() / f.floatValue() : view.getAlpha();
    }

    /* JADX INFO: renamed from: d */
    public void mo5078d(View view) {
        if (view.getTag(C0670j.save_non_transition_alpha) == null) {
            view.setTag(C0670j.save_non_transition_alpha, Float.valueOf(view.getAlpha()));
        }
    }

    /* JADX INFO: renamed from: e */
    public void mo5085e(View view, int i, int i2, int i3, int i4) {
        m5091b();
        Method method = f3968a;
        if (method != null) {
            try {
                method.invoke(view, Integer.valueOf(i), Integer.valueOf(i2), Integer.valueOf(i3), Integer.valueOf(i4));
            } catch (IllegalAccessException unused) {
            } catch (InvocationTargetException e) {
                throw new RuntimeException(e.getCause());
            }
        }
    }

    /* JADX INFO: renamed from: f */
    public void mo5079f(View view, float f) {
        Float f2 = (Float) view.getTag(C0670j.save_non_transition_alpha);
        if (f2 != null) {
            view.setAlpha(f2.floatValue() * f);
        } else {
            view.setAlpha(f);
        }
    }

    /* JADX INFO: renamed from: g */
    public void mo5087g(View view, int i) {
        if (!f3971d) {
            try {
                Field declaredField = View.class.getDeclaredField("mViewFlags");
                f3970c = declaredField;
                declaredField.setAccessible(true);
            } catch (NoSuchFieldException unused) {
            }
            f3971d = true;
        }
        Field field = f3970c;
        if (field != null) {
            try {
                f3970c.setInt(view, i | (field.getInt(view) & (-13)));
            } catch (IllegalAccessException unused2) {
            }
        }
    }

    /* JADX INFO: renamed from: h */
    public void mo5082h(View view, Matrix matrix) {
        Object parent = view.getParent();
        if (parent instanceof View) {
            mo5082h((View) parent, matrix);
            matrix.preTranslate(-r0.getScrollX(), -r0.getScrollY());
        }
        matrix.preTranslate(view.getLeft(), view.getTop());
        Matrix matrix2 = view.getMatrix();
        if (matrix2.isIdentity()) {
            return;
        }
        matrix.preConcat(matrix2);
    }

    /* JADX INFO: renamed from: i */
    public void mo5083i(View view, Matrix matrix) {
        Object parent = view.getParent();
        if (parent instanceof View) {
            mo5083i((View) parent, matrix);
            matrix.postTranslate(r0.getScrollX(), r0.getScrollY());
        }
        matrix.postTranslate(-view.getLeft(), -view.getTop());
        Matrix matrix2 = view.getMatrix();
        if (matrix2.isIdentity()) {
            return;
        }
        Matrix matrix3 = new Matrix();
        if (matrix2.invert(matrix3)) {
            matrix.postConcat(matrix3);
        }
    }
}
