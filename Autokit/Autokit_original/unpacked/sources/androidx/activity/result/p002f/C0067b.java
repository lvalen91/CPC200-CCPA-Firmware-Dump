package androidx.activity.result.p002f;

import android.content.Context;
import android.content.Intent;
import androidx.activity.result.p002f.AbstractC0066a;
import androidx.core.content.C0242a;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import p016c.p032d.C0534a;

/* JADX INFO: renamed from: androidx.activity.result.f.b */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public final class C0067b extends AbstractC0066a<String[], Map<String, Boolean>> {
    /* JADX INFO: renamed from: e */
    static Intent m356e(String[] strArr) {
        return new Intent("androidx.activity.result.contract.action.REQUEST_PERMISSIONS").putExtra("androidx.activity.result.contract.extra.PERMISSIONS", strArr);
    }

    @Override // androidx.activity.result.p002f.AbstractC0066a
    /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
    public Intent mo352a(Context context, String[] strArr) {
        return m356e(strArr);
    }

    @Override // androidx.activity.result.p002f.AbstractC0066a
    /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
    public AbstractC0066a.a<Map<String, Boolean>> mo353b(Context context, String[] strArr) {
        if (strArr == null || strArr.length == 0) {
            return new AbstractC0066a.a<>(Collections.emptyMap());
        }
        C0534a c0534a = new C0534a();
        boolean z = true;
        for (String str : strArr) {
            boolean z2 = C0242a.m1696a(context, str) == 0;
            c0534a.put(str, Boolean.valueOf(z2));
            if (!z2) {
                z = false;
            }
        }
        if (z) {
            return new AbstractC0066a.a<>(c0534a);
        }
        return null;
    }

    @Override // androidx.activity.result.p002f.AbstractC0066a
    /* JADX INFO: renamed from: g, reason: merged with bridge method [inline-methods] */
    public Map<String, Boolean> mo354c(int i, Intent intent) {
        if (i != -1) {
            return Collections.emptyMap();
        }
        if (intent == null) {
            return Collections.emptyMap();
        }
        String[] stringArrayExtra = intent.getStringArrayExtra("androidx.activity.result.contract.extra.PERMISSIONS");
        int[] intArrayExtra = intent.getIntArrayExtra("androidx.activity.result.contract.extra.PERMISSION_GRANT_RESULTS");
        if (intArrayExtra == null || stringArrayExtra == null) {
            return Collections.emptyMap();
        }
        HashMap map = new HashMap();
        int length = stringArrayExtra.length;
        for (int i2 = 0; i2 < length; i2++) {
            map.put(stringArrayExtra[i2], Boolean.valueOf(intArrayExtra[i2] == 0));
        }
        return map;
    }
}
