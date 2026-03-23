package cn.manstep.phonemirrorBox.p073g0;

import com.yalantis.ucrop.BuildConfig;

/* JADX INFO: renamed from: cn.manstep.phonemirrorBox.g0.b */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class C0847b {

    /* JADX INFO: renamed from: a */
    private String f4989a;

    /* JADX INFO: renamed from: b */
    private String f4990b;

    /* JADX INFO: renamed from: c */
    private boolean f4991c;

    public C0847b(String str, String str2) {
        this.f4989a = BuildConfig.FLAVOR;
        this.f4990b = BuildConfig.FLAVOR;
        this.f4991c = false;
        this.f4989a = str;
        this.f4990b = str2;
        this.f4991c = false;
    }

    /* JADX INFO: renamed from: a */
    public String m6324a() {
        return this.f4990b;
    }

    /* JADX INFO: renamed from: b */
    public String m6325b() {
        return this.f4989a;
    }

    /* JADX INFO: renamed from: c */
    public boolean m6326c() {
        return this.f4991c;
    }

    /* JADX INFO: renamed from: d */
    public void m6327d(boolean z) {
        this.f4991c = z;
    }
}
