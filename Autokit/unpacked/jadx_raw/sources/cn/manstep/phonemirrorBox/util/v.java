package cn.manstep.phonemirrorBox.util;

import android.graphics.Bitmap;
import android.text.TextUtils;
import java.util.Hashtable;

/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class v {
    public static Bitmap a(String str, int i, int i2) {
        return b(str, i, i2, "UTF-8", "L", "0", -16777216, -1);
    }

    public static Bitmap b(String str, int i, int i2, String str2, String str3, String str4, int i3, int i4) {
        if (!TextUtils.isEmpty(str) && i >= 0 && i2 >= 0) {
            try {
                Hashtable hashtable = new Hashtable();
                if (!TextUtils.isEmpty(str2)) {
                    hashtable.put(d.c.b.b.CHARACTER_SET, str2);
                }
                if (!TextUtils.isEmpty(str3)) {
                    hashtable.put(d.c.b.b.ERROR_CORRECTION, str3);
                }
                if (!TextUtils.isEmpty(str4)) {
                    hashtable.put(d.c.b.b.MARGIN, str4);
                }
                int iC = c(str, i, hashtable) * 2;
                int i5 = (i - iC) - 0;
                int i6 = (i2 - iC) + 0;
                d.c.b.d.b bVarA = new d.c.b.e.a().a(str, d.c.b.a.QR_CODE, i5, i6, hashtable);
                int[] iArr = new int[i5 * i6];
                for (int i7 = 0; i7 < i6; i7++) {
                    for (int i8 = 0; i8 < i5; i8++) {
                        if (bVarA.c(i8, i7)) {
                            iArr[(i7 * i5) + i8] = i3;
                        } else {
                            iArr[(i7 * i5) + i8] = i4;
                        }
                    }
                }
                if (i5 > 0 && i6 > 0) {
                    Bitmap bitmapCreateBitmap = Bitmap.createBitmap(i5, i6, Bitmap.Config.ARGB_8888);
                    bitmapCreateBitmap.setPixels(iArr, 0, i5, 0, 0, i5, i6);
                    return bitmapCreateBitmap;
                }
                return null;
            } catch (d.c.b.c e) {
                e.printStackTrace();
            }
        }
        return null;
    }

    private static int c(String str, int i, Hashtable<d.c.b.b, String> hashtable) {
        try {
            d.c.b.e.c.b bVarA = d.c.b.e.c.c.n(str, d.c.b.e.b.a.L, hashtable).a();
            if (bVarA == null) {
                throw new IllegalStateException();
            }
            int iE = bVarA.e();
            int iMax = Math.max(i, iE);
            return (iMax - (iE * (iMax / iE))) / 2;
        } catch (d.c.b.c e) {
            e.printStackTrace();
            return 0;
        }
    }
}
