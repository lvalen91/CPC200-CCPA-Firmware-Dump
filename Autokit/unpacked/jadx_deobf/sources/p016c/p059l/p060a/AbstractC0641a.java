package p016c.p059l.p060a;

import androidx.lifecycle.InterfaceC0396j;
import androidx.lifecycle.InterfaceC0411y;
import java.io.FileDescriptor;
import java.io.PrintWriter;

/* JADX INFO: renamed from: c.l.a.a */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public abstract class AbstractC0641a {
    /* JADX INFO: renamed from: b */
    public static <T extends InterfaceC0396j & InterfaceC0411y> AbstractC0641a m4970b(T t) {
        return new C0642b(t, t.getViewModelStore());
    }

    @Deprecated
    /* JADX INFO: renamed from: a */
    public abstract void mo4971a(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr);

    /* JADX INFO: renamed from: c */
    public abstract void mo4972c();
}
