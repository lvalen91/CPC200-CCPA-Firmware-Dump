package androidx.media;

import android.media.AudioAttributes;

/* JADX INFO: loaded from: /Volumes/stuff/macbook/misc/CPC200-CCPA/rework/dumped_real_classes.dex */
public final class AudioAttributesImplApi21Parcelizer {
    public static AudioAttributesImplApi21 read(androidx.versionedparcelable.a aVar) {
        AudioAttributesImplApi21 audioAttributesImplApi21 = new AudioAttributesImplApi21();
        audioAttributesImplApi21.a = (AudioAttributes) aVar.r(audioAttributesImplApi21.a, 1);
        audioAttributesImplApi21.f846b = aVar.p(audioAttributesImplApi21.f846b, 2);
        return audioAttributesImplApi21;
    }

    public static void write(AudioAttributesImplApi21 audioAttributesImplApi21, androidx.versionedparcelable.a aVar) {
        aVar.x(false, false);
        aVar.H(audioAttributesImplApi21.a, 1);
        aVar.F(audioAttributesImplApi21.f846b, 2);
    }
}
