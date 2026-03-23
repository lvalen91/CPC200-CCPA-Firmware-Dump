/**
 * BoxConnection.java
 *
 * JNI wrapper for native USB "connection" library.
 * Provides low-level bulk USB transfer and device enumeration via native code.
 *
 * Original: BoxInterface/BoxConnection.java (already named, kept as-is)
 */
package cn.manstep.autokit.protocol;

import android.text.TextUtils;
import cn.manstep.phonemirrorBox.util.s;

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

    /**
     * Parses a "vid,pid" comma-separated string into an int[2] array.
     */
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
