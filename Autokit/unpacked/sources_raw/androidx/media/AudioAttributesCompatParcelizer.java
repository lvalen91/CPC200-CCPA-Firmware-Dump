package androidx.media;

/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public final class AudioAttributesCompatParcelizer {
    public static AudioAttributesCompat read(androidx.versionedparcelable.a aVar) {
        AudioAttributesCompat audioAttributesCompat = new AudioAttributesCompat();
        audioAttributesCompat.a = (AudioAttributesImpl) aVar.v(audioAttributesCompat.a, 1);
        return audioAttributesCompat;
    }

    public static void write(AudioAttributesCompat audioAttributesCompat, androidx.versionedparcelable.a aVar) {
        aVar.x(false, false);
        aVar.M(audioAttributesCompat.a, 1);
    }
}
