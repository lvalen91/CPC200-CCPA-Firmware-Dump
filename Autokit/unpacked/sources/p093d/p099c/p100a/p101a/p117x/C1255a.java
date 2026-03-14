package p093d.p099c.p100a.p101a.p117x;

import android.graphics.Typeface;

/* JADX INFO: renamed from: d.c.a.a.x.a */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public final class C1255a extends AbstractC1260f {

    /* JADX INFO: renamed from: a */
    private final Typeface f7812a;

    /* JADX INFO: renamed from: b */
    private final a f7813b;

    /* JADX INFO: renamed from: c */
    private boolean f7814c;

    /* JADX INFO: renamed from: d.c.a.a.x.a$a */
    public interface a {
        /* JADX INFO: renamed from: a */
        void mo8686a(Typeface typeface);
    }

    public C1255a(a aVar, Typeface typeface) {
        this.f7812a = typeface;
        this.f7813b = aVar;
    }

    /* JADX INFO: renamed from: d */
    private void m9448d(Typeface typeface) {
        if (this.f7814c) {
            return;
        }
        this.f7813b.mo8686a(typeface);
    }

    @Override // p093d.p099c.p100a.p101a.p117x.AbstractC1260f
    /* JADX INFO: renamed from: a */
    public void mo8184a(int i) {
        m9448d(this.f7812a);
    }

    @Override // p093d.p099c.p100a.p101a.p117x.AbstractC1260f
    /* JADX INFO: renamed from: b */
    public void mo8185b(Typeface typeface, boolean z) {
        m9448d(typeface);
    }

    /* JADX INFO: renamed from: c */
    public void m9449c() {
        this.f7814c = true;
    }
}
