package android.support.v4.media;

import android.media.MediaDescription;
import android.net.Uri;

/* JADX INFO: renamed from: android.support.v4.media.e */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
class C0011e {

    /* JADX INFO: renamed from: android.support.v4.media.e$a */
    static class a {
        /* JADX INFO: renamed from: a */
        public static void m60a(Object obj, Uri uri) {
            ((MediaDescription.Builder) obj).setMediaUri(uri);
        }
    }

    /* JADX INFO: renamed from: a */
    public static Uri m59a(Object obj) {
        return ((MediaDescription) obj).getMediaUri();
    }
}
