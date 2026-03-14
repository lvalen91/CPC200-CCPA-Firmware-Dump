package cn.manstep.phonemirrorBox.p089v0;

import android.content.Context;
import android.content.Intent;
import com.yalantis.ucrop.BuildConfig;

/* JADX INFO: renamed from: cn.manstep.phonemirrorBox.v0.c */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class C0993c implements InterfaceC0994d {

    /* JADX INFO: renamed from: a */
    private Context f6177a;

    /* JADX INFO: renamed from: b */
    private String f6178b = BuildConfig.FLAVOR;

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0040  */
    @Override // cn.manstep.phonemirrorBox.p089v0.InterfaceC0994d
    /* JADX INFO: renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void mo7137a() {
        byte b2;
        String str = this.f6178b;
        switch (str.hashCode()) {
            case -2076963576:
                b2 = !str.equals("CarPlay") ? (byte) -1 : (byte) 1;
                break;
            case -1690148706:
                if (str.equals("AndroidAuto")) {
                    b2 = 0;
                    break;
                }
                break;
            case -402854162:
                if (str.equals("AndroidMirror")) {
                    b2 = 3;
                    break;
                }
                break;
            case 69689075:
                if (str.equals("HiCar")) {
                    b2 = 2;
                    break;
                }
                break;
            case 1104135844:
                if (str.equals("iPhoneMirror")) {
                    b2 = 4;
                    break;
                }
                break;
        }
        if (b2 == 0) {
            m7427r(1);
            return;
        }
        if (b2 == 1) {
            m7427r(5);
            return;
        }
        if (b2 == 2) {
            m7427r(22);
        } else if (b2 == 3) {
            m7427r(15);
        } else {
            if (b2 != 4) {
                return;
            }
            m7427r(17);
        }
    }

    @Override // cn.manstep.phonemirrorBox.p089v0.InterfaceC0994d
    /* JADX INFO: renamed from: b */
    public void mo7138b() {
        m7427r(6);
    }

    @Override // cn.manstep.phonemirrorBox.p089v0.InterfaceC0994d
    /* JADX INFO: renamed from: c */
    public void mo7139c(String str, boolean z) {
        this.f6178b = str;
        m7427r(11);
    }

    @Override // cn.manstep.phonemirrorBox.p089v0.InterfaceC0994d
    /* JADX INFO: renamed from: d */
    public void mo7140d() {
        m7427r(7);
    }

    @Override // cn.manstep.phonemirrorBox.p089v0.InterfaceC0994d
    /* JADX INFO: renamed from: e */
    public void mo7141e() {
    }

    @Override // cn.manstep.phonemirrorBox.p089v0.InterfaceC0994d
    /* JADX INFO: renamed from: f */
    public void mo7142f() {
        m7427r(4);
    }

    @Override // cn.manstep.phonemirrorBox.p089v0.InterfaceC0994d
    /* JADX INFO: renamed from: g */
    public void mo7143g() {
        m7427r(19);
    }

    @Override // cn.manstep.phonemirrorBox.p089v0.InterfaceC0994d
    /* JADX INFO: renamed from: h */
    public void mo7144h() {
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0040  */
    @Override // cn.manstep.phonemirrorBox.p089v0.InterfaceC0994d
    /* JADX INFO: renamed from: i */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void mo7145i() {
        byte b2;
        String str = this.f6178b;
        switch (str.hashCode()) {
            case -2076963576:
                b2 = !str.equals("CarPlay") ? (byte) -1 : (byte) 1;
                break;
            case -1690148706:
                if (str.equals("AndroidAuto")) {
                    b2 = 0;
                    break;
                }
                break;
            case -402854162:
                if (str.equals("AndroidMirror")) {
                    b2 = 3;
                    break;
                }
                break;
            case 69689075:
                if (str.equals("HiCar")) {
                    b2 = 2;
                    break;
                }
                break;
            case 1104135844:
                if (str.equals("iPhoneMirror")) {
                    b2 = 4;
                    break;
                }
                break;
        }
        if (b2 == 0 || b2 == 1) {
            m7427r(2);
            return;
        }
        if (b2 == 2) {
            m7427r(23);
        } else if (b2 == 3) {
            m7427r(16);
        } else {
            if (b2 != 4) {
                return;
            }
            m7427r(18);
        }
    }

    @Override // cn.manstep.phonemirrorBox.p089v0.InterfaceC0994d
    /* JADX INFO: renamed from: j */
    public void mo7146j() {
        m7427r(8);
    }

    @Override // cn.manstep.phonemirrorBox.p089v0.InterfaceC0994d
    /* JADX INFO: renamed from: k */
    public void mo7147k() {
        m7427r(3);
    }

    @Override // cn.manstep.phonemirrorBox.p089v0.InterfaceC0994d
    /* JADX INFO: renamed from: l */
    public void mo7148l() {
    }

    @Override // cn.manstep.phonemirrorBox.p089v0.InterfaceC0994d
    /* JADX INFO: renamed from: m */
    public void mo7149m() {
        m7427r(20);
    }

    @Override // cn.manstep.phonemirrorBox.p089v0.InterfaceC0994d
    /* JADX INFO: renamed from: n */
    public void mo7150n() {
        m7427r(9);
        m7427r(10);
    }

    @Override // cn.manstep.phonemirrorBox.p089v0.InterfaceC0994d
    /* JADX INFO: renamed from: o */
    public void mo7151o() {
    }

    @Override // cn.manstep.phonemirrorBox.p089v0.InterfaceC0994d
    /* JADX INFO: renamed from: p */
    public void mo7152p() {
        m7427r(12);
    }

    @Override // cn.manstep.phonemirrorBox.p089v0.InterfaceC0994d
    /* JADX INFO: renamed from: q */
    public void mo7153q(Context context) {
        this.f6177a = context;
    }

    /* JADX INFO: renamed from: r */
    public void m7427r(int i) {
        if (this.f6177a != null) {
            Intent intent = new Intent("cn.manstep.phonemirrorBox.AUTO_BOX_MODE_CHANGE_EVT");
            intent.putExtra("cn.manstep.phonemirrorBox.AUTO_BOX_MODE_CHANGE_DATA", i);
            this.f6177a.sendBroadcast(intent);
        }
    }
}
