package androidx.activity.p001d;

import android.content.Context;
import java.util.Iterator;
import java.util.Set;
import java.util.concurrent.CopyOnWriteArraySet;

/* JADX INFO: renamed from: androidx.activity.d.a */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public final class C0054a {

    /* JADX INFO: renamed from: a */
    private final Set<InterfaceC0055b> f180a = new CopyOnWriteArraySet();

    /* JADX INFO: renamed from: b */
    private volatile Context f181b;

    /* JADX INFO: renamed from: a */
    public void m315a(InterfaceC0055b interfaceC0055b) {
        if (this.f181b != null) {
            interfaceC0055b.mo320a(this.f181b);
        }
        this.f180a.add(interfaceC0055b);
    }

    /* JADX INFO: renamed from: b */
    public void m316b() {
        this.f181b = null;
    }

    /* JADX INFO: renamed from: c */
    public void m317c(Context context) {
        this.f181b = context;
        Iterator<InterfaceC0055b> it = this.f180a.iterator();
        while (it.hasNext()) {
            it.next().mo320a(context);
        }
    }

    /* JADX INFO: renamed from: d */
    public Context m318d() {
        return this.f181b;
    }

    /* JADX INFO: renamed from: e */
    public void m319e(InterfaceC0055b interfaceC0055b) {
        this.f180a.remove(interfaceC0055b);
    }
}
