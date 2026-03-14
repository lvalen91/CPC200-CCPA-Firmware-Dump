package p093d.p099c.p100a.p101a.p102a0;

import android.graphics.drawable.Drawable;
import android.view.View;
import com.google.android.material.internal.C1123l;

/* JADX INFO: renamed from: d.c.a.a.a0.h */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class C1209h {
    /* JADX INFO: renamed from: a */
    static C1205d m9206a(int i) {
        return i != 0 ? i != 1 ? m9207b() : new C1206e() : new C1211j();
    }

    /* JADX INFO: renamed from: b */
    static C1205d m9207b() {
        return new C1211j();
    }

    /* JADX INFO: renamed from: c */
    static C1207f m9208c() {
        return new C1207f();
    }

    /* JADX INFO: renamed from: d */
    public static void m9209d(View view, float f) {
        Drawable background = view.getBackground();
        if (background instanceof C1208g) {
            ((C1208g) background).m9183V(f);
        }
    }

    /* JADX INFO: renamed from: e */
    public static void m9210e(View view) {
        Drawable background = view.getBackground();
        if (background instanceof C1208g) {
            m9211f(view, (C1208g) background);
        }
    }

    /* JADX INFO: renamed from: f */
    public static void m9211f(View view, C1208g c1208g) {
        if (c1208g.m9179O()) {
            c1208g.m9187Z(C1123l.m8733c(view));
        }
    }
}
