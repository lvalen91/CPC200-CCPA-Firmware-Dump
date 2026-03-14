package cn.manstep.phonemirrorBox;

import android.util.Log;
import cn.manstep.phonemirrorBox.util.C0982s;

/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class Dtmf {
    static {
        try {
            System.loadLibrary("dtmf");
        } catch (UnsatisfiedLinkError e) {
            e.printStackTrace();
            C0982s.m7373c("dtmf.so load failed!");
            C0982s.m7375e(Log.getStackTraceString(e));
        }
    }

    public native int dtmfDoAec(byte[] bArr);
}
