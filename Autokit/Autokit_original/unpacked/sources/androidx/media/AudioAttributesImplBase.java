package androidx.media;

import java.util.Arrays;

/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
class AudioAttributesImplBase implements AudioAttributesImpl {

    /* JADX INFO: renamed from: a */
    int f2566a = 0;

    /* JADX INFO: renamed from: b */
    int f2567b = 0;

    /* JADX INFO: renamed from: c */
    int f2568c = 0;

    /* JADX INFO: renamed from: d */
    int f2569d = -1;

    AudioAttributesImplBase() {
    }

    /* JADX INFO: renamed from: a */
    public int m3064a() {
        return this.f2567b;
    }

    /* JADX INFO: renamed from: b */
    public int m3065b() {
        int i = this.f2568c;
        int iM3066c = m3066c();
        if (iM3066c == 6) {
            i |= 4;
        } else if (iM3066c == 7) {
            i |= 1;
        }
        return i & 273;
    }

    /* JADX INFO: renamed from: c */
    public int m3066c() {
        int i = this.f2569d;
        return i != -1 ? i : AudioAttributesCompat.m3062a(false, this.f2568c, this.f2566a);
    }

    /* JADX INFO: renamed from: d */
    public int m3067d() {
        return this.f2566a;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof AudioAttributesImplBase)) {
            return false;
        }
        AudioAttributesImplBase audioAttributesImplBase = (AudioAttributesImplBase) obj;
        return this.f2567b == audioAttributesImplBase.m3064a() && this.f2568c == audioAttributesImplBase.m3065b() && this.f2566a == audioAttributesImplBase.m3067d() && this.f2569d == audioAttributesImplBase.f2569d;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{Integer.valueOf(this.f2567b), Integer.valueOf(this.f2568c), Integer.valueOf(this.f2566a), Integer.valueOf(this.f2569d)});
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("AudioAttributesCompat:");
        if (this.f2569d != -1) {
            sb.append(" stream=");
            sb.append(this.f2569d);
            sb.append(" derived");
        }
        sb.append(" usage=");
        sb.append(AudioAttributesCompat.m3063b(this.f2566a));
        sb.append(" content=");
        sb.append(this.f2567b);
        sb.append(" flags=0x");
        sb.append(Integer.toHexString(this.f2568c).toUpperCase());
        return sb.toString();
    }
}
