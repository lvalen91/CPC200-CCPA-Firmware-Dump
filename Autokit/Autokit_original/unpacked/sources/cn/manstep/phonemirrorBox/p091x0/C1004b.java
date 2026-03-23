package cn.manstep.phonemirrorBox.p091x0;

import androidx.lifecycle.AbstractC0408v;
import androidx.lifecycle.C0401o;
import cn.manstep.phonemirrorBox.C0795b0;
import cn.manstep.phonemirrorBox.MyApplication;

/* JADX INFO: renamed from: cn.manstep.phonemirrorBox.x0.b */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class C1004b extends AbstractC0408v {

    /* JADX INFO: renamed from: c */
    private String[] f6270c;

    /* JADX INFO: renamed from: d */
    private C0401o<Integer> f6271d;

    public C1004b() {
        int iM6091m = C0795b0.m6071i().m6091m("MicType", 0);
        C0401o<Integer> c0401o = new C0401o<>();
        this.f6271d = c0401o;
        c0401o.mo2965k(Integer.valueOf(iM6091m));
        new C0401o();
        m7557i();
    }

    /* JADX INFO: renamed from: i */
    public void m7557i() {
        this.f6270c = new String[]{MyApplication.m5997b().getResources().getString(2131689639), MyApplication.m5997b().getResources().getString(2131689906), MyApplication.m5997b().getResources().getString(2131689611)};
        new C0401o(this.f6270c[this.f6271d.m2959e().intValue()]);
    }
}
