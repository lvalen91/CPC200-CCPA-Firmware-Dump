package cn.manstep.phonemirrorBox.x0;

import android.app.Application;
import androidx.lifecycle.o;

/* JADX INFO: loaded from: /Volumes/stuff/macbook/misc/CPC200-CCPA/rework/dumped_real_classes.dex */
public class h extends androidx.lifecycle.a {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private o<String> f1974d;
    private o<String> e;

    public h(Application application) {
        super(application);
        this.f1974d = new o<>();
        this.e = new o<>();
    }

    public o<String> j() {
        return this.e;
    }

    public o<String> k() {
        return this.f1974d;
    }

    public void l(String str) {
        this.e.k(str);
    }

    public void m(String str) {
        this.f1974d.k(str);
    }
}
