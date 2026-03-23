package p093d.p099c.p100a.p101a.p104l;

import android.animation.TimeInterpolator;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.LinearInterpolator;
import p016c.p056k.p057a.p058a.C0637a;
import p016c.p056k.p057a.p058a.C0638b;
import p016c.p056k.p057a.p058a.C0639c;

/* JADX INFO: renamed from: d.c.a.a.l.a */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class C1227a {

    /* JADX INFO: renamed from: a */
    public static final TimeInterpolator f7754a = new LinearInterpolator();

    /* JADX INFO: renamed from: b */
    public static final TimeInterpolator f7755b = new C0638b();

    /* JADX INFO: renamed from: c */
    public static final TimeInterpolator f7756c = new C0637a();

    /* JADX INFO: renamed from: d */
    public static final TimeInterpolator f7757d = new C0639c();

    /* JADX INFO: renamed from: e */
    public static final TimeInterpolator f7758e = new DecelerateInterpolator();

    /* JADX INFO: renamed from: a */
    public static float m9335a(float f, float f2, float f3) {
        return f + (f3 * (f2 - f));
    }

    /* JADX INFO: renamed from: b */
    public static float m9336b(float f, float f2, float f3, float f4, float f5) {
        return f5 < f3 ? f : f5 > f4 ? f2 : m9335a(f, f2, (f5 - f3) / (f4 - f3));
    }
}
