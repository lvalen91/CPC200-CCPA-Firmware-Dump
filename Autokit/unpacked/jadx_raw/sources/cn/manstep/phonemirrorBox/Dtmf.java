package cn.manstep.phonemirrorBox;

import android.util.Log;

/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class Dtmf {
    static {
        try {
            System.loadLibrary("dtmf");
        } catch (UnsatisfiedLinkError e) {
            e.printStackTrace();
            cn.manstep.phonemirrorBox.util.s.c("dtmf.so load failed!");
            cn.manstep.phonemirrorBox.util.s.e(Log.getStackTraceString(e));
        }
    }

    public native int dtmfDoAec(byte[] bArr);
}
