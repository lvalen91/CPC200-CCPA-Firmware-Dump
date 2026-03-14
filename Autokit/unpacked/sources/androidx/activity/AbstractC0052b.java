package androidx.activity;

import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;

/* JADX INFO: renamed from: androidx.activity.b */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public abstract class AbstractC0052b {

    /* JADX INFO: renamed from: a */
    private boolean f178a;

    /* JADX INFO: renamed from: b */
    private CopyOnWriteArrayList<InterfaceC0051a> f179b = new CopyOnWriteArrayList<>();

    public AbstractC0052b(boolean z) {
        this.f178a = z;
    }

    /* JADX INFO: renamed from: a */
    void m309a(InterfaceC0051a interfaceC0051a) {
        this.f179b.add(interfaceC0051a);
    }

    /* JADX INFO: renamed from: b */
    public abstract void mo310b();

    /* JADX INFO: renamed from: c */
    public final boolean m311c() {
        return this.f178a;
    }

    /* JADX INFO: renamed from: d */
    public final void m312d() {
        Iterator<InterfaceC0051a> it = this.f179b.iterator();
        while (it.hasNext()) {
            it.next().cancel();
        }
    }

    /* JADX INFO: renamed from: e */
    void m313e(InterfaceC0051a interfaceC0051a) {
        this.f179b.remove(interfaceC0051a);
    }

    /* JADX INFO: renamed from: f */
    public final void m314f(boolean z) {
        this.f178a = z;
    }
}
