package android.support.v4.media;

import android.graphics.Bitmap;
import android.media.MediaDescription;
import android.net.Uri;
import android.os.Bundle;
import android.os.Parcel;

/* JADX INFO: renamed from: android.support.v4.media.d */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
class C0010d {

    /* JADX INFO: renamed from: android.support.v4.media.d$a */
    static class a {
        /* JADX INFO: renamed from: a */
        public static Object m50a(Object obj) {
            return ((MediaDescription.Builder) obj).build();
        }

        /* JADX INFO: renamed from: b */
        public static Object m51b() {
            return new MediaDescription.Builder();
        }

        /* JADX INFO: renamed from: c */
        public static void m52c(Object obj, CharSequence charSequence) {
            ((MediaDescription.Builder) obj).setDescription(charSequence);
        }

        /* JADX INFO: renamed from: d */
        public static void m53d(Object obj, Bundle bundle) {
            ((MediaDescription.Builder) obj).setExtras(bundle);
        }

        /* JADX INFO: renamed from: e */
        public static void m54e(Object obj, Bitmap bitmap) {
            ((MediaDescription.Builder) obj).setIconBitmap(bitmap);
        }

        /* JADX INFO: renamed from: f */
        public static void m55f(Object obj, Uri uri) {
            ((MediaDescription.Builder) obj).setIconUri(uri);
        }

        /* JADX INFO: renamed from: g */
        public static void m56g(Object obj, String str) {
            ((MediaDescription.Builder) obj).setMediaId(str);
        }

        /* JADX INFO: renamed from: h */
        public static void m57h(Object obj, CharSequence charSequence) {
            ((MediaDescription.Builder) obj).setSubtitle(charSequence);
        }

        /* JADX INFO: renamed from: i */
        public static void m58i(Object obj, CharSequence charSequence) {
            ((MediaDescription.Builder) obj).setTitle(charSequence);
        }
    }

    /* JADX INFO: renamed from: a */
    public static Object m41a(Parcel parcel) {
        return MediaDescription.CREATOR.createFromParcel(parcel);
    }

    /* JADX INFO: renamed from: b */
    public static CharSequence m42b(Object obj) {
        return ((MediaDescription) obj).getDescription();
    }

    /* JADX INFO: renamed from: c */
    public static Bundle m43c(Object obj) {
        return ((MediaDescription) obj).getExtras();
    }

    /* JADX INFO: renamed from: d */
    public static Bitmap m44d(Object obj) {
        return ((MediaDescription) obj).getIconBitmap();
    }

    /* JADX INFO: renamed from: e */
    public static Uri m45e(Object obj) {
        return ((MediaDescription) obj).getIconUri();
    }

    /* JADX INFO: renamed from: f */
    public static String m46f(Object obj) {
        return ((MediaDescription) obj).getMediaId();
    }

    /* JADX INFO: renamed from: g */
    public static CharSequence m47g(Object obj) {
        return ((MediaDescription) obj).getSubtitle();
    }

    /* JADX INFO: renamed from: h */
    public static CharSequence m48h(Object obj) {
        return ((MediaDescription) obj).getTitle();
    }

    /* JADX INFO: renamed from: i */
    public static void m49i(Object obj, Parcel parcel, int i) {
        ((MediaDescription) obj).writeToParcel(parcel, i);
    }
}
