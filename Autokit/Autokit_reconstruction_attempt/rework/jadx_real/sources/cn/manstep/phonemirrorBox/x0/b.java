package cn.manstep.phonemirrorBox.x0;

import androidx.lifecycle.o;
import androidx.lifecycle.v;
import cn.manstep.phonemirrorBox.MyApplication;
import cn.manstep.phonemirrorBox.b0;

/* JADX INFO: loaded from: /Volumes/stuff/macbook/misc/CPC200-CCPA/rework/dumped_real_classes.dex */
public class b extends v {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private String[] f1962c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private o<Integer> f1963d;

    public b() {
        int iM = b0.i().m("MicType", 0);
        o<Integer> oVar = new o<>();
        this.f1963d = oVar;
        oVar.k(Integer.valueOf(iM));
        new o();
        i();
    }

    public void i() {
        this.f1962c = new String[]{MyApplication.b().getResources().getString(2131689639), MyApplication.b().getResources().getString(2131689906), MyApplication.b().getResources().getString(2131689611)};
        new o(this.f1962c[this.f1963d.e().intValue()]);
    }
}
