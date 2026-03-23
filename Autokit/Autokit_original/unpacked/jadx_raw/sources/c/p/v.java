package c.p;

import android.graphics.drawable.Drawable;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewGroupOverlay;

/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
class v implements w {
    private final ViewGroupOverlay a;

    v(ViewGroup viewGroup) {
        this.a = viewGroup.getOverlay();
    }

    @Override // c.p.w
    public void a(View view) {
        this.a.add(view);
    }

    @Override // c.p.b0
    public void b(Drawable drawable) {
        this.a.add(drawable);
    }

    @Override // c.p.w
    public void c(View view) {
        this.a.remove(view);
    }

    @Override // c.p.b0
    public void d(Drawable drawable) {
        this.a.remove(drawable);
    }
}
