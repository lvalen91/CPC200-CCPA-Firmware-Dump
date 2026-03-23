package p093d.p099c.p100a.p101a.p110q;

import android.content.Context;
import android.graphics.Color;
import android.util.TypedValue;
import android.view.View;
import p016c.p041g.p042d.C0588a;
import p093d.p099c.p100a.p101a.p117x.C1256b;

/* JADX INFO: renamed from: d.c.a.a.q.a */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class C1247a {
    /* JADX INFO: renamed from: a */
    public static int m9426a(Context context, int i, int i2) {
        TypedValue typedValueM9450a = C1256b.m9450a(context, i);
        return typedValueM9450a != null ? typedValueM9450a.data : i2;
    }

    /* JADX INFO: renamed from: b */
    public static int m9427b(Context context, int i, String str) {
        return C1256b.m9452c(context, i, str);
    }

    /* JADX INFO: renamed from: c */
    public static int m9428c(View view, int i) {
        return C1256b.m9453d(view, i);
    }

    /* JADX INFO: renamed from: d */
    public static int m9429d(View view, int i, int i2) {
        return m9426a(view.getContext(), i, i2);
    }

    /* JADX INFO: renamed from: e */
    public static int m9430e(int i, int i2) {
        return C0588a.m4669b(i2, i);
    }

    /* JADX INFO: renamed from: f */
    public static int m9431f(int i, int i2, float f) {
        return m9430e(i, C0588a.m4671d(i2, Math.round(Color.alpha(i2) * f)));
    }

    /* JADX INFO: renamed from: g */
    public static int m9432g(View view, int i, int i2, float f) {
        return m9431f(m9428c(view, i), m9428c(view, i2), f);
    }
}
