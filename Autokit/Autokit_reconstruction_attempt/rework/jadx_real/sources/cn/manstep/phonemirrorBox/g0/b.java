package cn.manstep.phonemirrorBox.g0;

import com.yalantis.ucrop.BuildConfig;

/* JADX INFO: loaded from: /Volumes/stuff/macbook/misc/CPC200-CCPA/rework/dumped_real_classes.dex */
public class b {
    private String a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private String f1653b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f1654c;

    public b(String str, String str2) {
        this.a = BuildConfig.FLAVOR;
        this.f1653b = BuildConfig.FLAVOR;
        this.f1654c = false;
        this.a = str;
        this.f1653b = str2;
        this.f1654c = false;
    }

    public String a() {
        return this.f1653b;
    }

    public String b() {
        return this.a;
    }

    public boolean c() {
        return this.f1654c;
    }

    public void d(boolean z) {
        this.f1654c = z;
    }
}
