package androidx.activity.result.p002f;

import android.content.Context;
import android.content.Intent;
import androidx.activity.result.C0061a;

/* JADX INFO: renamed from: androidx.activity.result.f.d */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public final class C0069d extends AbstractC0066a<Intent, C0061a> {
    @Override // androidx.activity.result.p002f.AbstractC0066a
    /* JADX INFO: renamed from: a */
    public /* bridge */ /* synthetic */ Intent mo352a(Context context, Intent intent) {
        Intent intent2 = intent;
        m363d(context, intent2);
        return intent2;
    }

    /* JADX INFO: renamed from: d */
    public Intent m363d(Context context, Intent intent) {
        return intent;
    }

    @Override // androidx.activity.result.p002f.AbstractC0066a
    /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
    public C0061a mo354c(int i, Intent intent) {
        return new C0061a(i, intent);
    }
}
