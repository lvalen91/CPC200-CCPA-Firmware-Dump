package cn.manstep.phonemirrorBox.util;

/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class z<T> {
    private T a;

    public synchronized T a() {
        return this.a;
    }

    public synchronized T b(T t) {
        this.a = t;
        return t;
    }
}
