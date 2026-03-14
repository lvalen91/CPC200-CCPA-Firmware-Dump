package androidx.media;

import androidx.versionedparcelable.AbstractC0486a;

/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public final class AudioAttributesImplBaseParcelizer {
    public static AudioAttributesImplBase read(AbstractC0486a abstractC0486a) {
        AudioAttributesImplBase audioAttributesImplBase = new AudioAttributesImplBase();
        audioAttributesImplBase.f2566a = abstractC0486a.m4025p(audioAttributesImplBase.f2566a, 1);
        audioAttributesImplBase.f2567b = abstractC0486a.m4025p(audioAttributesImplBase.f2567b, 2);
        audioAttributesImplBase.f2568c = abstractC0486a.m4025p(audioAttributesImplBase.f2568c, 3);
        audioAttributesImplBase.f2569d = abstractC0486a.m4025p(audioAttributesImplBase.f2569d, 4);
        return audioAttributesImplBase;
    }

    public static void write(AudioAttributesImplBase audioAttributesImplBase, AbstractC0486a abstractC0486a) {
        abstractC0486a.m4033x(false, false);
        abstractC0486a.m4005F(audioAttributesImplBase.f2566a, 1);
        abstractC0486a.m4005F(audioAttributesImplBase.f2567b, 2);
        abstractC0486a.m4005F(audioAttributesImplBase.f2568c, 3);
        abstractC0486a.m4005F(audioAttributesImplBase.f2569d, 4);
    }
}
