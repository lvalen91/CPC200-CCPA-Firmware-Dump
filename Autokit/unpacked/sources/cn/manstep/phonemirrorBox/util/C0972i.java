package cn.manstep.phonemirrorBox.util;

import java.util.Vector;

/* JADX INFO: renamed from: cn.manstep.phonemirrorBox.util.i */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class C0972i {

    /* JADX INFO: renamed from: a */
    private Vector<byte[]> f6061a = new Vector<>(320);

    /* JADX INFO: renamed from: b */
    private Vector<byte[]> f6062b = new Vector<>(320);

    /* JADX INFO: renamed from: a */
    public void m7249a(byte[] bArr) {
        this.f6062b.add(bArr);
    }

    /* JADX INFO: renamed from: b */
    public void m7250b() {
        while (!m7253e()) {
            m7254f(0);
        }
    }

    /* JADX INFO: renamed from: c */
    public byte[] m7251c() {
        if (m7253e()) {
            return null;
        }
        return this.f6062b.firstElement();
    }

    /* JADX INFO: renamed from: d */
    public byte[] m7252d(int i) {
        if (!this.f6061a.isEmpty()) {
            for (int i2 = 0; i2 < this.f6061a.size(); i2++) {
                byte[] bArr = this.f6061a.get(i2);
                if (bArr.length == i) {
                    this.f6061a.remove(i2);
                    return bArr;
                }
            }
            this.f6061a.remove(0);
        }
        return new byte[i];
    }

    /* JADX INFO: renamed from: e */
    public boolean m7253e() {
        return this.f6062b.isEmpty();
    }

    /* JADX INFO: renamed from: f */
    public void m7254f(int i) {
        this.f6061a.add(this.f6062b.elementAt(i));
        this.f6062b.remove(i);
    }

    /* JADX INFO: renamed from: g */
    public int m7255g() {
        return this.f6062b.size();
    }
}
