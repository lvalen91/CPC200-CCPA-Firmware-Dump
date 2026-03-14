package cn.manstep.phonemirrorBox.m0.a;

import android.view.View;

/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public final class c implements View.OnLongClickListener {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final a f1784b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final int f1785c;

    public interface a {
        boolean a(int i, View view);
    }

    public c(a aVar, int i) {
        this.f1784b = aVar;
        this.f1785c = i;
    }

    @Override // android.view.View.OnLongClickListener
    public boolean onLongClick(View view) {
        return this.f1784b.a(this.f1785c, view);
    }
}
