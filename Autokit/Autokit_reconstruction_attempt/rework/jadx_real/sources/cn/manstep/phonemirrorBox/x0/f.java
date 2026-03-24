package cn.manstep.phonemirrorBox.x0;

import androidx.lifecycle.o;
import androidx.lifecycle.v;
import cn.manstep.phonemirrorBox.MyApplication;
import cn.manstep.phonemirrorBox.b0;
import cn.manstep.phonemirrorBox.p;
import cn.manstep.phonemirrorBox.util.c0;

/* JADX INFO: loaded from: /Volumes/stuff/macbook/misc/CPC200-CCPA/rework/dumped_real_classes.dex */
public class f extends v {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private String[] f1969c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private String[] f1970d;
    private String[] e;
    private String[] f;
    public o<String> g;
    public o<String> h;
    public o<Boolean> i;
    private o<Integer> j;
    private o<String> k;
    private o<Boolean> l;
    private o<String> m;

    public f() {
        p.i = b0.i().o("IsTextureView", c0.q());
        new o(Boolean.valueOf(p.i));
        this.g = new o<>();
        this.i = new o<>(Boolean.valueOf(b0.i().o("IsLeftDrive", true)));
        this.h = new o<>();
        this.j = new o<>(Integer.valueOf(b0.i().m("DecodeMethod", !p.g ? 1 : 0)));
        this.k = new o<>();
        this.l = new o<>(Boolean.valueOf(b0.i().o("AudioTransferMode", false)));
        this.m = new o<>();
        i();
    }

    public void i() {
        this.f1969c = new String[]{MyApplication.b().getResources().getString(2131689499), MyApplication.b().getResources().getString(2131689895)};
        this.f = new String[]{MyApplication.b().getString(2131689640), MyApplication.b().getString(2131689611)};
        this.e = new String[]{MyApplication.b().getString(2131689690), MyApplication.b().getString(2131689689)};
        this.f1970d = new String[]{MyApplication.b().getResources().getString(2131689793), MyApplication.b().getResources().getString(2131689941)};
        this.g.k(this.f1969c[p.i ? 1 : 0]);
        this.h.k(this.i.e().booleanValue() ? this.f1970d[0] : this.f1970d[1]);
        this.k.k(this.e[this.j.e().intValue()]);
        this.m.k(this.l.e().booleanValue() ? this.f[0] : this.f[1]);
    }
}
