package android.support.v4.media;

import android.graphics.Bitmap;
import android.media.MediaDescription;
import android.net.Uri;
import android.os.Bundle;
import android.os.Parcel;

/* JADX INFO: loaded from: /Volumes/stuff/macbook/misc/CPC200-CCPA/rework/dumped_real_classes.dex */
class d {

    static class a {
        public static Object a(Object obj) {
            return ((MediaDescription.Builder) obj).build();
        }

        public static Object b() {
            return new MediaDescription.Builder();
        }

        public static void c(Object obj, CharSequence charSequence) {
            ((MediaDescription.Builder) obj).setDescription(charSequence);
        }

        public static void d(Object obj, Bundle bundle) {
            ((MediaDescription.Builder) obj).setExtras(bundle);
        }

        public static void e(Object obj, Bitmap bitmap) {
            ((MediaDescription.Builder) obj).setIconBitmap(bitmap);
        }

        public static void f(Object obj, Uri uri) {
            ((MediaDescription.Builder) obj).setIconUri(uri);
        }

        public static void g(Object obj, String str) {
            ((MediaDescription.Builder) obj).setMediaId(str);
        }

        public static void h(Object obj, CharSequence charSequence) {
            ((MediaDescription.Builder) obj).setSubtitle(charSequence);
        }

        public static void i(Object obj, CharSequence charSequence) {
            ((MediaDescription.Builder) obj).setTitle(charSequence);
        }
    }

    public static Object a(Parcel parcel) {
        return MediaDescription.CREATOR.createFromParcel(parcel);
    }

    public static CharSequence b(Object obj) {
        return ((MediaDescription) obj).getDescription();
    }

    public static Bundle c(Object obj) {
        return ((MediaDescription) obj).getExtras();
    }

    public static Bitmap d(Object obj) {
        return ((MediaDescription) obj).getIconBitmap();
    }

    public static Uri e(Object obj) {
        return ((MediaDescription) obj).getIconUri();
    }

    public static String f(Object obj) {
        return ((MediaDescription) obj).getMediaId();
    }

    public static CharSequence g(Object obj) {
        return ((MediaDescription) obj).getSubtitle();
    }

    public static CharSequence h(Object obj) {
        return ((MediaDescription) obj).getTitle();
    }

    public static void i(Object obj, Parcel parcel, int i) {
        ((MediaDescription) obj).writeToParcel(parcel, i);
    }
}
