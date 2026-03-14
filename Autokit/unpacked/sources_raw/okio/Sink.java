package okio;

import java.io.Closeable;
import java.io.Flushable;

/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public interface Sink extends Closeable, Flushable {
    @Override // java.io.Closeable, java.lang.AutoCloseable
    void close();

    void flush();

    Timeout timeout();

    void write(Buffer buffer, long j);
}
