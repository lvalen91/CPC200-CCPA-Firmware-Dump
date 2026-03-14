package c.l.a;

import androidx.lifecycle.j;
import androidx.lifecycle.y;
import java.io.FileDescriptor;
import java.io.PrintWriter;

/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public abstract class a {
    public static <T extends j & y> a b(T t) {
        return new b(t, t.getViewModelStore());
    }

    @Deprecated
    public abstract void a(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr);

    public abstract void c();
}
