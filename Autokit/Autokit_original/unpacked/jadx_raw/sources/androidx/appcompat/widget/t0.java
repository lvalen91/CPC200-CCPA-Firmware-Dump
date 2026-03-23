package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
class t0 extends l0 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final WeakReference<Context> f390b;

    public t0(Context context, Resources resources) {
        super(resources);
        this.f390b = new WeakReference<>(context);
    }

    @Override // androidx.appcompat.widget.l0, android.content.res.Resources
    public Drawable getDrawable(int i) {
        Drawable drawable = super.getDrawable(i);
        Context context = this.f390b.get();
        if (drawable != null && context != null) {
            k0.h().x(context, i, drawable);
        }
        return drawable;
    }
}
