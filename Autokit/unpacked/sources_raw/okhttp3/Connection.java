package okhttp3;

import java.net.Socket;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public interface Connection {
    @Nullable
    Handshake handshake();

    Protocol protocol();

    Route route();

    Socket socket();
}
