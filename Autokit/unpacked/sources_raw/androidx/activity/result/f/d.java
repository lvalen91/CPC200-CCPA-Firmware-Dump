package androidx.activity.result.f;

import android.content.Context;
import android.content.Intent;

/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public final class d extends a<Intent, androidx.activity.result.a> {
    @Override // androidx.activity.result.f.a
    public /* bridge */ /* synthetic */ Intent a(Context context, Intent intent) {
        Intent intent2 = intent;
        d(context, intent2);
        return intent2;
    }

    public Intent d(Context context, Intent intent) {
        return intent;
    }

    @Override // androidx.activity.result.f.a
    /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
    public androidx.activity.result.a c(int i, Intent intent) {
        return new androidx.activity.result.a(i, intent);
    }
}
