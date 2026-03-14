package okhttp3.internal.http2;

import java.io.IOException;

/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public final class StreamResetException extends IOException {
    public final ErrorCode errorCode;

    public StreamResetException(ErrorCode errorCode) {
        super("stream was reset: " + errorCode);
        this.errorCode = errorCode;
    }
}
