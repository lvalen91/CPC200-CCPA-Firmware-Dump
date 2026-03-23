package androidx.activity.result.f;

import android.content.Context;
import android.content.Intent;
import androidx.activity.result.f.a;

/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public final class c extends a<String, Boolean> {
    @Override // androidx.activity.result.f.a
    /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
    public Intent a(Context context, String str) {
        return b.e(new String[]{str});
    }

    @Override // androidx.activity.result.f.a
    /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
    public a.C0008a<Boolean> b(Context context, String str) {
        if (str == null) {
            return new a.C0008a<>(Boolean.FALSE);
        }
        if (androidx.core.content.a.a(context, str) == 0) {
            return new a.C0008a<>(Boolean.TRUE);
        }
        return null;
    }

    @Override // androidx.activity.result.f.a
    /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
    public Boolean c(int i, Intent intent) {
        if (intent == null || i != -1) {
            return Boolean.FALSE;
        }
        int[] intArrayExtra = intent.getIntArrayExtra("androidx.activity.result.contract.extra.PERMISSION_GRANT_RESULTS");
        if (intArrayExtra == null || intArrayExtra.length == 0) {
            return Boolean.FALSE;
        }
        return Boolean.valueOf(intArrayExtra[0] == 0);
    }
}
