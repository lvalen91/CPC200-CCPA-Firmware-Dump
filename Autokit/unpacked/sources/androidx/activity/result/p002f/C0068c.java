package androidx.activity.result.p002f;

import android.content.Context;
import android.content.Intent;
import androidx.activity.result.p002f.AbstractC0066a;
import androidx.core.content.C0242a;

/* JADX INFO: renamed from: androidx.activity.result.f.c */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public final class C0068c extends AbstractC0066a<String, Boolean> {
    @Override // androidx.activity.result.p002f.AbstractC0066a
    /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
    public Intent mo352a(Context context, String str) {
        return C0067b.m356e(new String[]{str});
    }

    @Override // androidx.activity.result.p002f.AbstractC0066a
    /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
    public AbstractC0066a.a<Boolean> mo353b(Context context, String str) {
        if (str == null) {
            return new AbstractC0066a.a<>(Boolean.FALSE);
        }
        if (C0242a.m1696a(context, str) == 0) {
            return new AbstractC0066a.a<>(Boolean.TRUE);
        }
        return null;
    }

    @Override // androidx.activity.result.p002f.AbstractC0066a
    /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
    public Boolean mo354c(int i, Intent intent) {
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
