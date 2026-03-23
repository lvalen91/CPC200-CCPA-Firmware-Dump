package com.google.android.material.internal;

import android.graphics.Matrix;
import android.graphics.Rect;
import android.graphics.RectF;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;

/* JADX INFO: renamed from: com.google.android.material.internal.b */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class C1113b {

    /* JADX INFO: renamed from: a */
    private static final ThreadLocal<Matrix> f7155a = new ThreadLocal<>();

    /* JADX INFO: renamed from: b */
    private static final ThreadLocal<RectF> f7156b = new ThreadLocal<>();

    /* JADX INFO: renamed from: a */
    public static void m8687a(ViewGroup viewGroup, View view, Rect rect) {
        rect.set(0, 0, view.getWidth(), view.getHeight());
        m8689c(viewGroup, view, rect);
    }

    /* JADX INFO: renamed from: b */
    private static void m8688b(ViewParent viewParent, View view, Matrix matrix) {
        Object parent = view.getParent();
        if ((parent instanceof View) && parent != viewParent) {
            m8688b(viewParent, (View) parent, matrix);
            matrix.preTranslate(-r0.getScrollX(), -r0.getScrollY());
        }
        matrix.preTranslate(view.getLeft(), view.getTop());
        if (view.getMatrix().isIdentity()) {
            return;
        }
        matrix.preConcat(view.getMatrix());
    }

    /* JADX INFO: renamed from: c */
    public static void m8689c(ViewGroup viewGroup, View view, Rect rect) {
        Matrix matrix = f7155a.get();
        if (matrix == null) {
            matrix = new Matrix();
            f7155a.set(matrix);
        } else {
            matrix.reset();
        }
        m8688b(viewGroup, view, matrix);
        RectF rectF = f7156b.get();
        if (rectF == null) {
            rectF = new RectF();
            f7156b.set(rectF);
        }
        rectF.set(rect);
        matrix.mapRect(rectF);
        rect.set((int) (rectF.left + 0.5f), (int) (rectF.top + 0.5f), (int) (rectF.right + 0.5f), (int) (rectF.bottom + 0.5f));
    }
}
