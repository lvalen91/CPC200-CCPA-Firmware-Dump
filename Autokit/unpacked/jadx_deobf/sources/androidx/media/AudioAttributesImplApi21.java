package androidx.media;

import android.annotation.TargetApi;
import android.media.AudioAttributes;

/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
@TargetApi(21)
class AudioAttributesImplApi21 implements AudioAttributesImpl {

    /* JADX INFO: renamed from: a */
    AudioAttributes f2564a;

    /* JADX INFO: renamed from: b */
    int f2565b = -1;

    AudioAttributesImplApi21() {
    }

    public boolean equals(Object obj) {
        if (obj instanceof AudioAttributesImplApi21) {
            return this.f2564a.equals(((AudioAttributesImplApi21) obj).f2564a);
        }
        return false;
    }

    public int hashCode() {
        return this.f2564a.hashCode();
    }

    public String toString() {
        return "AudioAttributesCompat: audioattributes=" + this.f2564a;
    }
}
