package androidx.coordinatorlayout.widget;

import android.graphics.Matrix;
import android.graphics.Rect;
import android.graphics.RectF;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;

/* JADX INFO: renamed from: androidx.coordinatorlayout.widget.b */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class C0229b {

    /* JADX INFO: renamed from: a */
    private static final ThreadLocal<Matrix> f1707a = new ThreadLocal<>();

    /* JADX INFO: renamed from: b */
    private static final ThreadLocal<RectF> f1708b = new ThreadLocal<>();

    /* JADX INFO: renamed from: a */
    public static void m1634a(ViewGroup viewGroup, View view, Rect rect) {
        rect.set(0, 0, view.getWidth(), view.getHeight());
        m1636c(viewGroup, view, rect);
    }

    /* JADX INFO: renamed from: b */
    private static void m1635b(ViewParent viewParent, View view, Matrix matrix) {
        Object parent = view.getParent();
        if ((parent instanceof View) && parent != viewParent) {
            m1635b(viewParent, (View) parent, matrix);
            matrix.preTranslate(-r0.getScrollX(), -r0.getScrollY());
        }
        matrix.preTranslate(view.getLeft(), view.getTop());
        if (view.getMatrix().isIdentity()) {
            return;
        }
        matrix.preConcat(view.getMatrix());
    }

    /* JADX INFO: renamed from: c */
    static void m1636c(ViewGroup viewGroup, View view, Rect rect) {
        Matrix matrix = f1707a.get();
        if (matrix == null) {
            matrix = new Matrix();
            f1707a.set(matrix);
        } else {
            matrix.reset();
        }
        m1635b(viewGroup, view, matrix);
        RectF rectF = f1708b.get();
        if (rectF == null) {
            rectF = new RectF();
            f1708b.set(rectF);
        }
        rectF.set(rect);
        matrix.mapRect(rectF);
        rect.set((int) (rectF.left + 0.5f), (int) (rectF.top + 0.5f), (int) (rectF.right + 0.5f), (int) (rectF.bottom + 0.5f));
    }
}
