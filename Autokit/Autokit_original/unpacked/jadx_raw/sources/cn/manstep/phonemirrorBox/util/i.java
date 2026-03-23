package cn.manstep.phonemirrorBox.util;

import java.util.Vector;

/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class i {
    private Vector<byte[]> a = new Vector<>(320);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Vector<byte[]> f1883b = new Vector<>(320);

    public void a(byte[] bArr) {
        this.f1883b.add(bArr);
    }

    public void b() {
        while (!e()) {
            f(0);
        }
    }

    public byte[] c() {
        if (e()) {
            return null;
        }
        return this.f1883b.firstElement();
    }

    public byte[] d(int i) {
        if (!this.a.isEmpty()) {
            for (int i2 = 0; i2 < this.a.size(); i2++) {
                byte[] bArr = this.a.get(i2);
                if (bArr.length == i) {
                    this.a.remove(i2);
                    return bArr;
                }
            }
            this.a.remove(0);
        }
        return new byte[i];
    }

    public boolean e() {
        return this.f1883b.isEmpty();
    }

    public void f(int i) {
        this.a.add(this.f1883b.elementAt(i));
        this.f1883b.remove(i);
    }

    public int g() {
        return this.f1883b.size();
    }
}
