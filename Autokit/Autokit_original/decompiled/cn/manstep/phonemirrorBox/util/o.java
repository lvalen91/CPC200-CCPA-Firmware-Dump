package cn.manstep.phonemirrorBox.util;

import java.util.List;

/* JADX INFO: loaded from: /tmp/autokit_analysis/dumped_dex/dex_47.dex */
public class o {
    private String a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private boolean f1904b = false;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private List<m> f1905c;

    public o(String str, List<m> list) {
        this.a = str;
        this.f1905c = list;
    }

    public List<m> a() {
        return this.f1905c;
    }

    public String b() {
        return this.a;
    }

    public boolean c() {
        return this.f1904b;
    }

    public void d(boolean z) {
        this.f1904b = z;
    }
}
