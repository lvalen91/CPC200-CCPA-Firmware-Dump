package androidx.fragment.app;

import java.io.Writer;

/* JADX INFO: loaded from: /Volumes/stuff/macbook/misc/CPC200-CCPA/rework/dumped_real_classes.dex */
final class b0 extends Writer {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f668b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private StringBuilder f669c = new StringBuilder(128);

    b0(String str) {
        this.f668b = str;
    }

    private void a() {
        if (this.f669c.length() > 0) {
            this.f669c.toString();
            StringBuilder sb = this.f669c;
            sb.delete(0, sb.length());
        }
    }

    @Override // java.io.Writer, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        a();
    }

    @Override // java.io.Writer, java.io.Flushable
    public void flush() {
        a();
    }

    @Override // java.io.Writer
    public void write(char[] cArr, int i, int i2) {
        for (int i3 = 0; i3 < i2; i3++) {
            char c2 = cArr[i + i3];
            if (c2 == '\n') {
                a();
            } else {
                this.f669c.append(c2);
            }
        }
    }
}
