package androidx.fragment.app;

import java.io.Writer;

/* JADX INFO: renamed from: androidx.fragment.app.b0 */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
final class C0351b0 extends Writer {

    /* JADX INFO: renamed from: b */
    private final String f2156b;

    /* JADX INFO: renamed from: c */
    private StringBuilder f2157c = new StringBuilder(128);

    C0351b0(String str) {
        this.f2156b = str;
    }

    /* JADX INFO: renamed from: a */
    private void m2549a() {
        if (this.f2157c.length() > 0) {
            this.f2157c.toString();
            StringBuilder sb = this.f2157c;
            sb.delete(0, sb.length());
        }
    }

    @Override // java.io.Writer, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        m2549a();
    }

    @Override // java.io.Writer, java.io.Flushable
    public void flush() {
        m2549a();
    }

    @Override // java.io.Writer
    public void write(char[] cArr, int i, int i2) {
        for (int i3 = 0; i3 < i2; i3++) {
            char c2 = cArr[i + i3];
            if (c2 == '\n') {
                m2549a();
            } else {
                this.f2157c.append(c2);
            }
        }
    }
}
