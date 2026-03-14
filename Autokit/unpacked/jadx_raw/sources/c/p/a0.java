package c.p;

import android.graphics.drawable.Drawable;
import android.view.View;
import android.view.ViewOverlay;

/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
class a0 implements b0 {
    private final ViewOverlay a;

    a0(View view) {
        this.a = view.getOverlay();
    }

    @Override // c.p.b0
    public void b(Drawable drawable) {
        this.a.add(drawable);
    }

    @Override // c.p.b0
    public void d(Drawable drawable) {
        this.a.remove(drawable);
    }
}
