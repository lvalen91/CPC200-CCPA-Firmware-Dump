package androidx.core.view.e0;

import android.os.Bundle;
import android.text.style.ClickableSpan;
import android.view.View;

/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public final class a extends ClickableSpan {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int f578b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final c f579c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final int f580d;

    public a(int i, c cVar, int i2) {
        this.f578b = i;
        this.f579c = cVar;
        this.f580d = i2;
    }

    @Override // android.text.style.ClickableSpan
    public void onClick(View view) {
        Bundle bundle = new Bundle();
        bundle.putInt("ACCESSIBILITY_CLICKABLE_SPAN_ID", this.f578b);
        this.f579c.N(this.f580d, bundle);
    }
}
