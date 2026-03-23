package cn.manstep.phonemirrorBox.p079m0.p080a;

import android.view.View;

/* JADX INFO: renamed from: cn.manstep.phonemirrorBox.m0.a.c */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public final class ViewOnLongClickListenerC0920c implements View.OnLongClickListener {

    /* JADX INFO: renamed from: b */
    final a f5787b;

    /* JADX INFO: renamed from: c */
    final int f5788c;

    /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.m0.a.c$a */
    public interface a {
        /* JADX INFO: renamed from: a */
        boolean mo6447a(int i, View view);
    }

    public ViewOnLongClickListenerC0920c(a aVar, int i) {
        this.f5787b = aVar;
        this.f5788c = i;
    }

    @Override // android.view.View.OnLongClickListener
    public boolean onLongClick(View view) {
        return this.f5787b.mo6447a(this.f5788c, view);
    }
}
