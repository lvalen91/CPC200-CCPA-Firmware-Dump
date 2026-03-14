package com.yalantis.ucrop.callback;

import android.net.Uri;

/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public interface BitmapCropCallback {
    void onBitmapCropped(Uri uri, int i, int i2);

    void onCropFailure(Throwable th);
}
