package com.yalantis.ucrop.model;

import android.graphics.RectF;

/* JADX INFO: loaded from: /Volumes/stuff/macbook/misc/CPC200-CCPA/rework/dumped_real_classes.dex */
public class ImageState {
    private RectF mCropRect;
    private float mCurrentAngle;
    private RectF mCurrentImageRect;
    private float mCurrentScale;

    public ImageState(RectF rectF, RectF rectF2, float f, float f2) {
        this.mCropRect = rectF;
        this.mCurrentImageRect = rectF2;
        this.mCurrentScale = f;
        this.mCurrentAngle = f2;
    }

    public RectF getCropRect() {
        return this.mCropRect;
    }

    public float getCurrentAngle() {
        return this.mCurrentAngle;
    }

    public RectF getCurrentImageRect() {
        return this.mCurrentImageRect;
    }

    public float getCurrentScale() {
        return this.mCurrentScale;
    }
}
