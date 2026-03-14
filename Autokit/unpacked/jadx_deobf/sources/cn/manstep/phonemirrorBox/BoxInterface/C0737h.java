package cn.manstep.phonemirrorBox.BoxInterface;

import java.util.Vector;

/* JADX INFO: renamed from: cn.manstep.phonemirrorBox.BoxInterface.h */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class C0737h {

    /* JADX INFO: renamed from: a */
    public final Vector<byte[]> f4538a;

    /* JADX INFO: renamed from: b */
    public final Vector<Long> f4539b;

    public C0737h(int i) {
        this.f4538a = new Vector<>(i);
        this.f4539b = new Vector<>(i);
    }

    /* JADX INFO: renamed from: a */
    public void m5800a(byte[] bArr, long j) {
        this.f4538a.add(bArr);
        this.f4539b.add(Long.valueOf(j));
    }

    /* JADX INFO: renamed from: b */
    public void m5801b() {
        this.f4538a.clear();
        this.f4539b.clear();
    }

    /* JADX INFO: renamed from: c */
    public byte[] m5802c() {
        byte[] bArrFirstElement = this.f4538a.firstElement();
        this.f4538a.remove(0);
        return bArrFirstElement;
    }

    /* JADX INFO: renamed from: d */
    public long m5803d() {
        long jLongValue = this.f4539b.firstElement().longValue();
        this.f4539b.remove(0);
        return jLongValue;
    }

    /* JADX INFO: renamed from: e */
    public boolean m5804e() {
        return this.f4538a.isEmpty();
    }

    /* JADX INFO: renamed from: f */
    public int m5805f() {
        return this.f4538a.size();
    }
}
