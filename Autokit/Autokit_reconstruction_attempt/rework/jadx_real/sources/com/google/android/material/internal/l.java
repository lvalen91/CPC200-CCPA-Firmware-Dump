package com.google.android.material.internal;

import android.content.Context;
import android.graphics.PorterDuff;
import android.util.TypedValue;
import android.view.View;
import android.view.ViewParent;
import androidx.core.view.d0;
import androidx.core.view.q;
import androidx.core.view.v;
import com.yalantis.ucrop.view.CropImageView;

/* JADX INFO: loaded from: /Volumes/stuff/macbook/misc/CPC200-CCPA/rework/dumped_real_classes.dex */
public class l {

    static class a implements q {
        final /* synthetic */ c a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ d f2168b;

        a(c cVar, d dVar) {
            this.a = cVar;
            this.f2168b = dVar;
        }

        @Override // androidx.core.view.q
        public d0 a(View view, d0 d0Var) {
            this.a.a(view, d0Var, new d(this.f2168b));
            return d0Var;
        }
    }

    static class b implements View.OnAttachStateChangeListener {
        b() {
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewAttachedToWindow(View view) {
            view.removeOnAttachStateChangeListener(this);
            v.l0(view);
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewDetachedFromWindow(View view) {
        }
    }

    public interface c {
        d0 a(View view, d0 d0Var, d dVar);
    }

    public static void a(View view, c cVar) {
        v.z0(view, new a(cVar, new d(v.I(view), view.getPaddingTop(), v.H(view), view.getPaddingBottom())));
        f(view);
    }

    public static float b(Context context, int i) {
        return TypedValue.applyDimension(1, i, context.getResources().getDisplayMetrics());
    }

    public static float c(View view) {
        float fW = CropImageView.DEFAULT_ASPECT_RATIO;
        for (ViewParent parent = view.getParent(); parent instanceof View; parent = parent.getParent()) {
            fW += v.w((View) parent);
        }
        return fW;
    }

    public static boolean d(View view) {
        return v.C(view) == 1;
    }

    public static PorterDuff.Mode e(int i, PorterDuff.Mode mode) {
        if (i == 3) {
            return PorterDuff.Mode.SRC_OVER;
        }
        if (i == 5) {
            return PorterDuff.Mode.SRC_IN;
        }
        if (i == 9) {
            return PorterDuff.Mode.SRC_ATOP;
        }
        switch (i) {
            case 14:
                return PorterDuff.Mode.MULTIPLY;
            case 15:
                return PorterDuff.Mode.SCREEN;
            case 16:
                return PorterDuff.Mode.ADD;
            default:
                return mode;
        }
    }

    public static void f(View view) {
        if (v.S(view)) {
            v.l0(view);
        } else {
            view.addOnAttachStateChangeListener(new b());
        }
    }

    public static class d {
        public int a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f2169b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public int f2170c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public int f2171d;

        public d(int i, int i2, int i3, int i4) {
            this.a = i;
            this.f2169b = i2;
            this.f2170c = i3;
            this.f2171d = i4;
        }

        public d(d dVar) {
            this.a = dVar.a;
            this.f2169b = dVar.f2169b;
            this.f2170c = dVar.f2170c;
            this.f2171d = dVar.f2171d;
        }
    }
}
