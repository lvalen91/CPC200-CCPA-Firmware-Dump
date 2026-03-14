package cn.manstep.phonemirrorBox.p091x0;

import androidx.lifecycle.AbstractC0408v;
import androidx.lifecycle.C0401o;
import cn.manstep.phonemirrorBox.C0795b0;
import cn.manstep.phonemirrorBox.C0925p;
import cn.manstep.phonemirrorBox.MyApplication;
import cn.manstep.phonemirrorBox.util.C0964c0;

/* JADX INFO: renamed from: cn.manstep.phonemirrorBox.x0.f */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class C1008f extends AbstractC0408v {

    /* JADX INFO: renamed from: c */
    private String[] f6302c;

    /* JADX INFO: renamed from: d */
    private String[] f6303d;

    /* JADX INFO: renamed from: e */
    private String[] f6304e;

    /* JADX INFO: renamed from: f */
    private String[] f6305f;

    /* JADX INFO: renamed from: g */
    public C0401o<String> f6306g;

    /* JADX INFO: renamed from: h */
    public C0401o<String> f6307h;

    /* JADX INFO: renamed from: i */
    public C0401o<Boolean> f6308i;

    /* JADX INFO: renamed from: j */
    private C0401o<Integer> f6309j;

    /* JADX INFO: renamed from: k */
    private C0401o<String> f6310k;

    /* JADX INFO: renamed from: l */
    private C0401o<Boolean> f6311l;

    /* JADX INFO: renamed from: m */
    private C0401o<String> f6312m;

    public C1008f() {
        C0925p.f5872i = C0795b0.m6071i().m6093o("IsTextureView", C0964c0.m7193q());
        new C0401o(Boolean.valueOf(C0925p.f5872i));
        this.f6306g = new C0401o<>();
        this.f6308i = new C0401o<>(Boolean.valueOf(C0795b0.m6071i().m6093o("IsLeftDrive", true)));
        this.f6307h = new C0401o<>();
        this.f6309j = new C0401o<>(Integer.valueOf(C0795b0.m6071i().m6091m("DecodeMethod", !C0925p.f5870g ? 1 : 0)));
        this.f6310k = new C0401o<>();
        this.f6311l = new C0401o<>(Boolean.valueOf(C0795b0.m6071i().m6093o("AudioTransferMode", false)));
        this.f6312m = new C0401o<>();
        m7608i();
    }

    /* JADX INFO: renamed from: i */
    public void m7608i() {
        this.f6302c = new String[]{MyApplication.m5997b().getResources().getString(2131689499), MyApplication.m5997b().getResources().getString(2131689895)};
        this.f6305f = new String[]{MyApplication.m5997b().getString(2131689640), MyApplication.m5997b().getString(2131689611)};
        this.f6304e = new String[]{MyApplication.m5997b().getString(2131689690), MyApplication.m5997b().getString(2131689689)};
        this.f6303d = new String[]{MyApplication.m5997b().getResources().getString(2131689793), MyApplication.m5997b().getResources().getString(2131689941)};
        this.f6306g.mo2965k(this.f6302c[C0925p.f5872i ? 1 : 0]);
        this.f6307h.mo2965k(this.f6308i.m2959e().booleanValue() ? this.f6303d[0] : this.f6303d[1]);
        this.f6310k.mo2965k(this.f6304e[this.f6309j.m2959e().intValue()]);
        this.f6312m.mo2965k(this.f6311l.m2959e().booleanValue() ? this.f6305f[0] : this.f6305f[1]);
    }
}
