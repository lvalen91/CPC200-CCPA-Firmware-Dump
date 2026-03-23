package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import java.lang.ref.WeakReference;

/* JADX INFO: renamed from: androidx.appcompat.widget.t0 */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
class C0193t0 extends C0177l0 {

    /* JADX INFO: renamed from: b */
    private final WeakReference<Context> f1282b;

    public C0193t0(Context context, Resources resources) {
        super(resources);
        this.f1282b = new WeakReference<>(context);
    }

    @Override // androidx.appcompat.widget.C0177l0, android.content.res.Resources
    public Drawable getDrawable(int i) {
        Drawable drawable = super.getDrawable(i);
        Context context = this.f1282b.get();
        if (drawable != null && context != null) {
            C0175k0.m1202h().m1218x(context, i, drawable);
        }
        return drawable;
    }
}
