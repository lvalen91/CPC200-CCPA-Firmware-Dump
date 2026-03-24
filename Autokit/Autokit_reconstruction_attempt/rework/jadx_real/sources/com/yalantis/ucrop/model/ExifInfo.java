package com.yalantis.ucrop.model;

/* JADX INFO: loaded from: /Volumes/stuff/macbook/misc/CPC200-CCPA/rework/dumped_real_classes.dex */
public class ExifInfo {
    private int mExifDegrees;
    private int mExifOrientation;
    private int mExifTranslation;

    public ExifInfo(int i, int i2, int i3) {
        this.mExifOrientation = i;
        this.mExifDegrees = i2;
        this.mExifTranslation = i3;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || ExifInfo.class != obj.getClass()) {
            return false;
        }
        ExifInfo exifInfo = (ExifInfo) obj;
        return this.mExifOrientation == exifInfo.mExifOrientation && this.mExifDegrees == exifInfo.mExifDegrees && this.mExifTranslation == exifInfo.mExifTranslation;
    }

    public int getExifDegrees() {
        return this.mExifDegrees;
    }

    public int getExifOrientation() {
        return this.mExifOrientation;
    }

    public int getExifTranslation() {
        return this.mExifTranslation;
    }

    public int hashCode() {
        return (((this.mExifOrientation * 31) + this.mExifDegrees) * 31) + this.mExifTranslation;
    }

    public void setExifDegrees(int i) {
        this.mExifDegrees = i;
    }

    public void setExifOrientation(int i) {
        this.mExifOrientation = i;
    }

    public void setExifTranslation(int i) {
        this.mExifTranslation = i;
    }
}
