package p016c.p065p;

import android.graphics.drawable.Drawable;
import android.view.View;
import android.view.ViewOverlay;

/* JADX INFO: renamed from: c.p.a0 */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
class C0653a0 implements InterfaceC0655b0 {

    /* JADX INFO: renamed from: a */
    private final ViewOverlay f3909a;

    C0653a0(View view) {
        this.f3909a = view.getOverlay();
    }

    @Override // p016c.p065p.InterfaceC0655b0
    /* JADX INFO: renamed from: b */
    public void mo5030b(Drawable drawable) {
        this.f3909a.add(drawable);
    }

    @Override // p016c.p065p.InterfaceC0655b0
    /* JADX INFO: renamed from: d */
    public void mo5031d(Drawable drawable) {
        this.f3909a.remove(drawable);
    }
}
