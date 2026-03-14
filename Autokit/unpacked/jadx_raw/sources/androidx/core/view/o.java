package androidx.core.view;

import android.view.View;

/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public interface o {
    boolean onNestedFling(View view, float f, float f2, boolean z);

    boolean onNestedPreFling(View view, float f, float f2);

    void onNestedPreScroll(View view, int i, int i2, int[] iArr);

    void onNestedScroll(View view, int i, int i2, int i3, int i4);

    void onNestedScrollAccepted(View view, View view2, int i);

    boolean onStartNestedScroll(View view, View view2, int i);

    void onStopNestedScroll(View view);
}
