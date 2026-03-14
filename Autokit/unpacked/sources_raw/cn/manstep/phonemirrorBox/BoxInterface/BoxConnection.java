package cn.manstep.phonemirrorBox.BoxInterface;

import android.text.TextUtils;
import cn.manstep.phonemirrorBox.util.s;

/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class BoxConnection {
    static {
        try {
            System.loadLibrary("connection");
        } catch (Error | Exception e) {
            s.e("JniTools: \n" + s.g(e));
        }
    }

    public BoxConnection() {
        init();
    }

    public static native String getError(int i);

    public static int[] getVidPid(String str) {
        int[] iArr = {0, 0};
        if (!TextUtils.isEmpty(str)) {
            String[] strArrSplit = str.split(",");
            if (strArrSplit.length == 2) {
                iArr[0] = Integer.parseInt(strArrSplit[0]);
                iArr[1] = Integer.parseInt(strArrSplit[1]);
            }
        }
        return iArr;
    }

    public native int bulkTransferIn(byte[] bArr, int i, int i2);

    public native int bulkTransferOut(byte[] bArr, int i, int i2);

    public native int getDeviceList(String[] strArr);

    public native int init();

    public native int openDevice(int i, int i2);

    public int reinit() {
        release();
        return init();
    }

    public native void release();
}
