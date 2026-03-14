package p016c.p065p;

import android.graphics.drawable.Drawable;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewGroupOverlay;

/* JADX INFO: renamed from: c.p.v */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
class C0686v implements InterfaceC0687w {

    /* JADX INFO: renamed from: a */
    private final ViewGroupOverlay f4062a;

    C0686v(ViewGroup viewGroup) {
        this.f4062a = viewGroup.getOverlay();
    }

    @Override // p016c.p065p.InterfaceC0687w
    /* JADX INFO: renamed from: a */
    public void mo5177a(View view) {
        this.f4062a.add(view);
    }

    @Override // p016c.p065p.InterfaceC0655b0
    /* JADX INFO: renamed from: b */
    public void mo5030b(Drawable drawable) {
        this.f4062a.add(drawable);
    }

    @Override // p016c.p065p.InterfaceC0687w
    /* JADX INFO: renamed from: c */
    public void mo5178c(View view) {
        this.f4062a.remove(view);
    }

    @Override // p016c.p065p.InterfaceC0655b0
    /* JADX INFO: renamed from: d */
    public void mo5031d(Drawable drawable) {
        this.f4062a.remove(drawable);
    }
}
