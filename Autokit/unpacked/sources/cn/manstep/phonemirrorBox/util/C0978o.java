package cn.manstep.phonemirrorBox.util;

import java.util.List;

/* JADX INFO: renamed from: cn.manstep.phonemirrorBox.util.o */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class C0978o {

    /* JADX INFO: renamed from: a */
    private String f6101a;

    /* JADX INFO: renamed from: b */
    private boolean f6102b = false;

    /* JADX INFO: renamed from: c */
    private List<C0976m> f6103c;

    public C0978o(String str, List<C0976m> list) {
        this.f6101a = str;
        this.f6103c = list;
    }

    /* JADX INFO: renamed from: a */
    public List<C0976m> m7324a() {
        return this.f6103c;
    }

    /* JADX INFO: renamed from: b */
    public String m7325b() {
        return this.f6101a;
    }

    /* JADX INFO: renamed from: c */
    public boolean m7326c() {
        return this.f6102b;
    }

    /* JADX INFO: renamed from: d */
    public void m7327d(boolean z) {
        this.f6102b = z;
    }
}
