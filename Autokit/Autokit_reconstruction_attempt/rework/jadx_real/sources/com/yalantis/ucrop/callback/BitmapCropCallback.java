package com.yalantis.ucrop.callback;

import android.net.Uri;

/* JADX INFO: loaded from: /Volumes/stuff/macbook/misc/CPC200-CCPA/rework/dumped_real_classes.dex */
public interface BitmapCropCallback {
    void onBitmapCropped(Uri uri, int i, int i2);

    void onCropFailure(Throwable th);
}
