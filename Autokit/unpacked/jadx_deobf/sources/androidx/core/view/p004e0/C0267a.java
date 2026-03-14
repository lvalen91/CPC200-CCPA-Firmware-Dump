package androidx.core.view.p004e0;

import android.os.Bundle;
import android.text.style.ClickableSpan;
import android.view.View;

/* JADX INFO: renamed from: androidx.core.view.e0.a */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public final class C0267a extends ClickableSpan {

    /* JADX INFO: renamed from: b */
    private final int f1852b;

    /* JADX INFO: renamed from: c */
    private final C0269c f1853c;

    /* JADX INFO: renamed from: d */
    private final int f1854d;

    public C0267a(int i, C0269c c0269c, int i2) {
        this.f1852b = i;
        this.f1853c = c0269c;
        this.f1854d = i2;
    }

    @Override // android.text.style.ClickableSpan
    public void onClick(View view) {
        Bundle bundle = new Bundle();
        bundle.putInt("ACCESSIBILITY_CLICKABLE_SPAN_ID", this.f1852b);
        this.f1853c.m1912N(this.f1854d, bundle);
    }
}
