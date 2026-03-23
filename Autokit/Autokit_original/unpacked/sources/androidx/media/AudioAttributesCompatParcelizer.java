package androidx.media;

import androidx.versionedparcelable.AbstractC0486a;

/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public final class AudioAttributesCompatParcelizer {
    public static AudioAttributesCompat read(AbstractC0486a abstractC0486a) {
        AudioAttributesCompat audioAttributesCompat = new AudioAttributesCompat();
        audioAttributesCompat.f2563a = (AudioAttributesImpl) abstractC0486a.m4031v(audioAttributesCompat.f2563a, 1);
        return audioAttributesCompat;
    }

    public static void write(AudioAttributesCompat audioAttributesCompat, AbstractC0486a abstractC0486a) {
        abstractC0486a.m4033x(false, false);
        abstractC0486a.m4012M(audioAttributesCompat.f2563a, 1);
    }
}
