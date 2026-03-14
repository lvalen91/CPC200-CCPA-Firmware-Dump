package cn.manstep.phonemirrorBox.p072f0;

import android.media.AudioManager;
import p093d.p097b.p098a.C1199b;

/* JADX INFO: renamed from: cn.manstep.phonemirrorBox.f0.a */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public abstract class AbstractC0825a {

    /* JADX INFO: renamed from: a */
    protected int f4880a = 0;

    /* JADX INFO: renamed from: b */
    protected int f4881b = 0;

    /* JADX INFO: renamed from: c */
    protected boolean f4882c;

    /* JADX INFO: renamed from: d */
    protected C1199b f4883d;

    /* JADX INFO: renamed from: e */
    protected AudioManager f4884e;

    /* JADX INFO: renamed from: a */
    public int m6207a() {
        return this.f4881b;
    }

    /* JADX INFO: renamed from: b */
    public int m6208b() {
        C1199b c1199b = this.f4883d;
        if (c1199b != null) {
            return c1199b.m9105C();
        }
        return -255;
    }

    /* JADX INFO: renamed from: c */
    public int m6209c() {
        return this.f4880a;
    }

    /* JADX INFO: renamed from: d */
    public int m6210d() {
        return -1;
    }

    /* JADX INFO: renamed from: e */
    public boolean m6211e() {
        return this.f4882c;
    }

    /* JADX INFO: renamed from: f */
    public void m6212f(C1199b c1199b) {
        this.f4883d = c1199b;
    }
}
