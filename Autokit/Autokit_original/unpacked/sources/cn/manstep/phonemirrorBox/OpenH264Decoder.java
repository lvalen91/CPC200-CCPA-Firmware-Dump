package cn.manstep.phonemirrorBox;

import cn.manstep.phonemirrorBox.util.C0982s;
import p093d.p126d.p127a.C1285b;

/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class OpenH264Decoder {

    /* JADX INFO: renamed from: a */
    private int f4702a;

    /* JADX INFO: renamed from: b */
    private int f4703b;

    /* JADX INFO: renamed from: c */
    private int f4704c;

    /* JADX INFO: renamed from: d */
    private C1285b f4705d = null;

    /* JADX INFO: renamed from: e */
    private int f4706e;

    /* JADX INFO: renamed from: f */
    public byte[] f4707f;

    static {
        try {
            System.loadLibrary("openH264decoder");
        } catch (UnsatisfiedLinkError e) {
            C0925p.f5870g = false;
            C0982s.m7376f("OpenH264Decoder", "static initializer: " + C0982s.m7377g(e));
        }
    }

    private native void nativeDestroy();

    private native void nativeInit();

    /* JADX INFO: renamed from: a */
    public void m6008a() {
        C1285b c1285b = this.f4705d;
        if (c1285b != null) {
            c1285b.m9602a();
            this.f4705d = null;
        }
        nativeDestroy();
    }

    /* JADX INFO: renamed from: b */
    public void m6009b() {
        this.f4707f = new byte[4392000];
        this.f4704c = 0;
        this.f4703b = 0;
        this.f4702a = 0;
        this.f4705d = AutoBoxMirrorSoftView.getSoftH264Render();
        this.f4706e = 0;
        nativeInit();
    }

    /* JADX INFO: renamed from: c */
    public void m6010c(byte[] bArr, int i, int i2) {
        C1285b c1285b;
        byte[] bArr2 = this.f4707f;
        int iDecodeFrameOffset = decodeFrameOffset(bArr, i, i2, bArr2, bArr2.length);
        this.f4706e++;
        if (this.f4702a != getWidth() || this.f4703b != getHeight()) {
            int width = getWidth();
            int height = getHeight();
            this.f4704c = width;
            this.f4702a = width;
            this.f4703b = height;
            if (this.f4707f.length < ((width * height) * 3) / 2) {
                this.f4707f = new byte[((width * height) * 3) / 2];
            }
            C0982s.m7375e("mShowWidth = " + this.f4704c);
            C1285b c1285b2 = this.f4705d;
            if (c1285b2 != null) {
                c1285b2.m9603b(this.f4704c, this.f4703b);
            }
        }
        if (iDecodeFrameOffset <= 0 || (c1285b = this.f4705d) == null || this.f4706e <= 0) {
            return;
        }
        c1285b.m9604c(this.f4707f);
    }

    public native int decodeFrameOffset(byte[] bArr, int i, int i2, byte[] bArr2, int i3);

    public native int getHeight();

    public native int getWidth();
}
