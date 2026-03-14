package androidx.databinding;

/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class a {
    private transient i a;

    public void d(int i) {
        synchronized (this) {
            if (this.a == null) {
                return;
            }
            this.a.a(this, i, null);
        }
    }
}
