package androidx.media;

import java.util.Arrays;

/* JADX INFO: loaded from: /Volumes/stuff/macbook/misc/CPC200-CCPA/rework/dumped_real_classes.dex */
class AudioAttributesImplBase implements AudioAttributesImpl {
    int a = 0;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    int f847b = 0;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    int f848c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    int f849d = -1;

    AudioAttributesImplBase() {
    }

    public int a() {
        return this.f847b;
    }

    public int b() {
        int i = this.f848c;
        int iC = c();
        if (iC == 6) {
            i |= 4;
        } else if (iC == 7) {
            i |= 1;
        }
        return i & 273;
    }

    public int c() {
        int i = this.f849d;
        return i != -1 ? i : AudioAttributesCompat.a(false, this.f848c, this.a);
    }

    public int d() {
        return this.a;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof AudioAttributesImplBase)) {
            return false;
        }
        AudioAttributesImplBase audioAttributesImplBase = (AudioAttributesImplBase) obj;
        return this.f847b == audioAttributesImplBase.a() && this.f848c == audioAttributesImplBase.b() && this.a == audioAttributesImplBase.d() && this.f849d == audioAttributesImplBase.f849d;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{Integer.valueOf(this.f847b), Integer.valueOf(this.f848c), Integer.valueOf(this.a), Integer.valueOf(this.f849d)});
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("AudioAttributesCompat:");
        if (this.f849d != -1) {
            sb.append(" stream=");
            sb.append(this.f849d);
            sb.append(" derived");
        }
        sb.append(" usage=");
        sb.append(AudioAttributesCompat.b(this.a));
        sb.append(" content=");
        sb.append(this.f847b);
        sb.append(" flags=0x");
        sb.append(Integer.toHexString(this.f848c).toUpperCase());
        return sb.toString();
    }
}
