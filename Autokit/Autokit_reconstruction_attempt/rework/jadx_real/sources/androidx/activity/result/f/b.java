package androidx.activity.result.f;

import android.content.Context;
import android.content.Intent;
import androidx.activity.result.f.a;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: /Volumes/stuff/macbook/misc/CPC200-CCPA/rework/dumped_real_classes.dex */
public final class b extends a<String[], Map<String, Boolean>> {
    static Intent e(String[] strArr) {
        return new Intent("androidx.activity.result.contract.action.REQUEST_PERMISSIONS").putExtra("androidx.activity.result.contract.extra.PERMISSIONS", strArr);
    }

    @Override // androidx.activity.result.f.a
    /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
    public Intent a(Context context, String[] strArr) {
        return e(strArr);
    }

    @Override // androidx.activity.result.f.a
    /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
    public a.C0008a<Map<String, Boolean>> b(Context context, String[] strArr) {
        if (strArr == null || strArr.length == 0) {
            return new a.C0008a<>(Collections.emptyMap());
        }
        c.d.a aVar = new c.d.a();
        boolean z = true;
        for (String str : strArr) {
            boolean z2 = androidx.core.content.a.a(context, str) == 0;
            aVar.put(str, Boolean.valueOf(z2));
            if (!z2) {
                z = false;
            }
        }
        if (z) {
            return new a.C0008a<>(aVar);
        }
        return null;
    }

    @Override // androidx.activity.result.f.a
    /* JADX INFO: renamed from: g, reason: merged with bridge method [inline-methods] */
    public Map<String, Boolean> c(int i, Intent intent) {
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
