package cn.manstep.phonemirrorBox.util;

/* JADX INFO: loaded from: /tmp/autokit_analysis/dumped_dex/dex_47.dex */
public class m {
    private String a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private String f1902b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f1903c = false;

    public m(String str, String str2) {
        this.a = str;
        this.f1902b = str2;
    }

    public String a() {
        return this.f1902b;
    }

    public String b() {
        return this.a;
    }

    public boolean c() {
        return this.f1903c;
    }

    public void d(boolean z) {
        this.f1903c = z;
    }
}
