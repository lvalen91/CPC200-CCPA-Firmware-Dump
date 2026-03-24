package androidx.media;

/* JADX INFO: loaded from: /Volumes/stuff/macbook/misc/CPC200-CCPA/rework/dumped_real_classes.dex */
public final class AudioAttributesImplBaseParcelizer {
    public static AudioAttributesImplBase read(androidx.versionedparcelable.a aVar) {
        AudioAttributesImplBase audioAttributesImplBase = new AudioAttributesImplBase();
        audioAttributesImplBase.a = aVar.p(audioAttributesImplBase.a, 1);
        audioAttributesImplBase.f847b = aVar.p(audioAttributesImplBase.f847b, 2);
        audioAttributesImplBase.f848c = aVar.p(audioAttributesImplBase.f848c, 3);
        audioAttributesImplBase.f849d = aVar.p(audioAttributesImplBase.f849d, 4);
        return audioAttributesImplBase;
    }

    public static void write(AudioAttributesImplBase audioAttributesImplBase, androidx.versionedparcelable.a aVar) {
        aVar.x(false, false);
        aVar.F(audioAttributesImplBase.a, 1);
        aVar.F(audioAttributesImplBase.f847b, 2);
        aVar.F(audioAttributesImplBase.f848c, 3);
        aVar.F(audioAttributesImplBase.f849d, 4);
    }
}
