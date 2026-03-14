package p093d.p099c.p100a.p101a.p113t;

import android.content.Context;
import android.graphics.Color;
import com.yalantis.ucrop.view.CropImageView;
import p016c.p041g.p042d.C0588a;
import p093d.p099c.p100a.p101a.C1216b;
import p093d.p099c.p100a.p101a.p110q.C1247a;
import p093d.p099c.p100a.p101a.p117x.C1256b;

/* JADX INFO: renamed from: d.c.a.a.t.a */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class C1250a {

    /* JADX INFO: renamed from: a */
    private final boolean f7804a;

    /* JADX INFO: renamed from: b */
    private final int f7805b;

    /* JADX INFO: renamed from: c */
    private final int f7806c;

    /* JADX INFO: renamed from: d */
    private final float f7807d;

    public C1250a(Context context) {
        this.f7804a = C1256b.m9451b(context, C1216b.elevationOverlayEnabled, false);
        this.f7805b = C1247a.m9426a(context, C1216b.elevationOverlayColor, 0);
        this.f7806c = C1247a.m9426a(context, C1216b.colorSurface, 0);
        this.f7807d = context.getResources().getDisplayMetrics().density;
    }

    /* JADX INFO: renamed from: e */
    private boolean m9434e(int i) {
        return C0588a.m4671d(i, 255) == this.f7806c;
    }

    /* JADX INFO: renamed from: a */
    public float m9435a(float f) {
        return (this.f7807d <= CropImageView.DEFAULT_ASPECT_RATIO || f <= CropImageView.DEFAULT_ASPECT_RATIO) ? CropImageView.DEFAULT_ASPECT_RATIO : Math.min(((((float) Math.log1p(f / r0)) * 4.5f) + 2.0f) / 100.0f, 1.0f);
    }

    /* JADX INFO: renamed from: b */
    public int m9436b(int i, float f) {
        float fM9435a = m9435a(f);
        return C0588a.m4671d(C1247a.m9431f(C0588a.m4671d(i, 255), this.f7805b, fM9435a), Color.alpha(i));
    }

    /* JADX INFO: renamed from: c */
    public int m9437c(int i, float f) {
        return (this.f7804a && m9434e(i)) ? m9436b(i, f) : i;
    }

    /* JADX INFO: renamed from: d */
    public boolean m9438d() {
        return this.f7804a;
    }
}
