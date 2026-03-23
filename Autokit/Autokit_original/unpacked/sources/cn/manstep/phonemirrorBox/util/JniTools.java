package cn.manstep.phonemirrorBox.util;

import android.util.Log;

/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class JniTools {
    static {
        try {
            System.loadLibrary("tools2.1");
        } catch (Error | Exception e) {
            e.printStackTrace();
            C0982s.m7375e("JniTools: \n" + Log.getStackTraceString(e));
        }
    }

    public static native void amplifyPcmData(byte[] bArr, int i, int i2, int i3);

    public static native boolean box(String str);

    public static native int check();

    public static native boolean checkSignature(String str);

    public static native void mono2Stereo(byte[] bArr, int i, int i2, byte[] bArr2);

    public static native boolean open(String str);

    public static native void test();
}
