package cn.manstep.phonemirrorBox.v0;

import android.content.Context;
import android.content.Intent;
import com.yalantis.ucrop.BuildConfig;

/* JADX INFO: loaded from: /Volumes/stuff/macbook/misc/CPC200-CCPA/rework/dumped_real_classes.dex */
public class c implements d {
    private Context a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private String f1942b = BuildConfig.FLAVOR;

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0040  */
    @Override // cn.manstep.phonemirrorBox.v0.d
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void a() {
        byte b2;
        String str = this.f1942b;
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
            r(1);
            return;
        }
        if (b2 == 1) {
            r(5);
            return;
        }
        if (b2 == 2) {
            r(22);
        } else if (b2 == 3) {
            r(15);
        } else {
            if (b2 != 4) {
                return;
            }
            r(17);
        }
    }

    @Override // cn.manstep.phonemirrorBox.v0.d
    public void b() {
        r(6);
    }

    @Override // cn.manstep.phonemirrorBox.v0.d
    public void c(String str, boolean z) {
        this.f1942b = str;
        r(11);
    }

    @Override // cn.manstep.phonemirrorBox.v0.d
    public void d() {
        r(7);
    }

    @Override // cn.manstep.phonemirrorBox.v0.d
    public void e() {
    }

    @Override // cn.manstep.phonemirrorBox.v0.d
    public void f() {
        r(4);
    }

    @Override // cn.manstep.phonemirrorBox.v0.d
    public void g() {
        r(19);
    }

    @Override // cn.manstep.phonemirrorBox.v0.d
    public void h() {
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0040  */
    @Override // cn.manstep.phonemirrorBox.v0.d
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void i() {
        byte b2;
        String str = this.f1942b;
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
            r(2);
            return;
        }
        if (b2 == 2) {
            r(23);
        } else if (b2 == 3) {
            r(16);
        } else {
            if (b2 != 4) {
                return;
            }
            r(18);
        }
    }

    @Override // cn.manstep.phonemirrorBox.v0.d
    public void j() {
        r(8);
    }

    @Override // cn.manstep.phonemirrorBox.v0.d
    public void k() {
        r(3);
    }

    @Override // cn.manstep.phonemirrorBox.v0.d
    public void l() {
    }

    @Override // cn.manstep.phonemirrorBox.v0.d
    public void m() {
        r(20);
    }

    @Override // cn.manstep.phonemirrorBox.v0.d
    public void n() {
        r(9);
        r(10);
    }

    @Override // cn.manstep.phonemirrorBox.v0.d
    public void o() {
    }

    @Override // cn.manstep.phonemirrorBox.v0.d
    public void p() {
        r(12);
    }

    @Override // cn.manstep.phonemirrorBox.v0.d
    public void q(Context context) {
        this.a = context;
    }

    public void r(int i) {
        if (this.a != null) {
            Intent intent = new Intent("cn.manstep.phonemirrorBox.AUTO_BOX_MODE_CHANGE_EVT");
            intent.putExtra("cn.manstep.phonemirrorBox.AUTO_BOX_MODE_CHANGE_DATA", i);
            this.a.sendBroadcast(intent);
        }
    }
}
