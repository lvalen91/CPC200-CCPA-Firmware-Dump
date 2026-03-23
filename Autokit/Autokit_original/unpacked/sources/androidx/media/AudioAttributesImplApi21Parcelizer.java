package androidx.media;

import android.media.AudioAttributes;
import androidx.versionedparcelable.AbstractC0486a;

/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public final class AudioAttributesImplApi21Parcelizer {
    public static AudioAttributesImplApi21 read(AbstractC0486a abstractC0486a) {
        AudioAttributesImplApi21 audioAttributesImplApi21 = new AudioAttributesImplApi21();
        audioAttributesImplApi21.f2564a = (AudioAttributes) abstractC0486a.m4027r(audioAttributesImplApi21.f2564a, 1);
        audioAttributesImplApi21.f2565b = abstractC0486a.m4025p(audioAttributesImplApi21.f2565b, 2);
        return audioAttributesImplApi21;
    }

    public static void write(AudioAttributesImplApi21 audioAttributesImplApi21, AbstractC0486a abstractC0486a) {
        abstractC0486a.m4033x(false, false);
        abstractC0486a.m4007H(audioAttributesImplApi21.f2564a, 1);
        abstractC0486a.m4005F(audioAttributesImplApi21.f2565b, 2);
    }
}
