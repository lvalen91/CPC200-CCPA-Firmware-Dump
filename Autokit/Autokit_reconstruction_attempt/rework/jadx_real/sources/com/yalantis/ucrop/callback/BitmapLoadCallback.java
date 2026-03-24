package com.yalantis.ucrop.callback;

import android.graphics.Bitmap;
import com.yalantis.ucrop.model.ExifInfo;

/* JADX INFO: loaded from: /Volumes/stuff/macbook/misc/CPC200-CCPA/rework/dumped_real_classes.dex */
public interface BitmapLoadCallback {
    void onBitmapLoaded(Bitmap bitmap, ExifInfo exifInfo, String str, String str2);

    void onFailure(Exception exc);
}
