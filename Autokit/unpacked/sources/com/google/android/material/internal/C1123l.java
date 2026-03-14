package com.google.android.material.internal;

import android.content.Context;
import android.graphics.PorterDuff;
import android.util.TypedValue;
import android.view.View;
import android.view.ViewParent;
import androidx.core.view.C0265d0;
import androidx.core.view.C0292v;
import androidx.core.view.InterfaceC0287q;
import com.yalantis.ucrop.view.CropImageView;

/* JADX INFO: renamed from: com.google.android.material.internal.l */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class C1123l {

    /* JADX INFO: renamed from: com.google.android.material.internal.l$a */
    static class a implements InterfaceC0287q {

        /* JADX INFO: renamed from: a */
        final /* synthetic */ c f7200a;

        /* JADX INFO: renamed from: b */
        final /* synthetic */ d f7201b;

        a(c cVar, d dVar) {
            this.f7200a = cVar;
            this.f7201b = dVar;
        }

        @Override // androidx.core.view.InterfaceC0287q
        /* JADX INFO: renamed from: a */
        public C0265d0 mo527a(View view, C0265d0 c0265d0) {
            this.f7200a.mo8062a(view, c0265d0, new d(this.f7201b));
            return c0265d0;
        }
    }

    /* JADX INFO: renamed from: com.google.android.material.internal.l$b */
    static class b implements View.OnAttachStateChangeListener {
        b() {
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewAttachedToWindow(View view) {
            view.removeOnAttachStateChangeListener(this);
            C0292v.m2099l0(view);
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewDetachedFromWindow(View view) {
        }
    }

    /* JADX INFO: renamed from: com.google.android.material.internal.l$c */
    public interface c {
        /* JADX INFO: renamed from: a */
        C0265d0 mo8062a(View view, C0265d0 c0265d0, d dVar);
    }

    /* JADX INFO: renamed from: a */
    public static void m8731a(View view, c cVar) {
        C0292v.m2127z0(view, new a(cVar, new d(C0292v.m2058I(view), view.getPaddingTop(), C0292v.m2056H(view), view.getPaddingBottom())));
        m8736f(view);
    }

    /* JADX INFO: renamed from: b */
    public static float m8732b(Context context, int i) {
        return TypedValue.applyDimension(1, i, context.getResources().getDisplayMetrics());
    }

    /* JADX INFO: renamed from: c */
    public static float m8733c(View view) {
        float fM2120w = CropImageView.DEFAULT_ASPECT_RATIO;
        for (ViewParent parent = view.getParent(); parent instanceof View; parent = parent.getParent()) {
            fM2120w += C0292v.m2120w((View) parent);
        }
        return fM2120w;
    }

    /* JADX INFO: renamed from: d */
    public static boolean m8734d(View view) {
        return C0292v.m2046C(view) == 1;
    }

    /* JADX INFO: renamed from: e */
    public static PorterDuff.Mode m8735e(int i, PorterDuff.Mode mode) {
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

    /* JADX INFO: renamed from: f */
    public static void m8736f(View view) {
        if (C0292v.m2068S(view)) {
            C0292v.m2099l0(view);
        } else {
            view.addOnAttachStateChangeListener(new b());
        }
    }

    /* JADX INFO: renamed from: com.google.android.material.internal.l$d */
    public static class d {

        /* JADX INFO: renamed from: a */
        public int f7202a;

        /* JADX INFO: renamed from: b */
        public int f7203b;

        /* JADX INFO: renamed from: c */
        public int f7204c;

        /* JADX INFO: renamed from: d */
        public int f7205d;

        public d(int i, int i2, int i3, int i4) {
            this.f7202a = i;
            this.f7203b = i2;
            this.f7204c = i3;
            this.f7205d = i4;
        }

        public d(d dVar) {
            this.f7202a = dVar.f7202a;
            this.f7203b = dVar.f7203b;
            this.f7204c = dVar.f7204c;
            this.f7205d = dVar.f7205d;
        }
    }
}
