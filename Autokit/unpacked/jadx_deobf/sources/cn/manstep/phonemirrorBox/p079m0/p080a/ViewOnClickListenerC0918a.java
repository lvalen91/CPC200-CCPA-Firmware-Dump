package cn.manstep.phonemirrorBox.p079m0.p080a;

import android.view.View;

/* JADX INFO: renamed from: cn.manstep.phonemirrorBox.m0.a.a */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public final class ViewOnClickListenerC0918a implements View.OnClickListener {

    /* JADX INFO: renamed from: b */
    final a f5783b;

    /* JADX INFO: renamed from: c */
    final int f5784c;

    /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.m0.a.a$a */
    public interface a {
        /* JADX INFO: renamed from: b */
        void mo6367b(int i, View view);
    }

    public ViewOnClickListenerC0918a(a aVar, int i) {
        this.f5783b = aVar;
        this.f5784c = i;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        this.f5783b.mo6367b(this.f5784c, view);
    }
}
