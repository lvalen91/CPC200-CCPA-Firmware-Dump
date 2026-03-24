package cn.manstep.phonemirrorBox;

import android.util.Log;

/* JADX INFO: loaded from: /Volumes/stuff/macbook/misc/CPC200-CCPA/rework/dumped_real_classes.dex */
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
