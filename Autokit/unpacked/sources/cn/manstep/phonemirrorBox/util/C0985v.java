package cn.manstep.phonemirrorBox.util;

import android.graphics.Bitmap;
import android.text.TextUtils;
import java.util.Hashtable;
import p093d.p099c.p120b.C1267c;
import p093d.p099c.p120b.EnumC1265a;
import p093d.p099c.p120b.EnumC1266b;
import p093d.p099c.p120b.p121d.C1269b;
import p093d.p099c.p120b.p123e.C1274a;
import p093d.p099c.p120b.p123e.p124b.EnumC1275a;
import p093d.p099c.p120b.p123e.p125c.C1279b;
import p093d.p099c.p120b.p123e.p125c.C1280c;

/* JADX INFO: renamed from: cn.manstep.phonemirrorBox.util.v */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class C0985v {
    /* JADX INFO: renamed from: a */
    public static Bitmap m7392a(String str, int i, int i2) {
        return m7393b(str, i, i2, "UTF-8", "L", "0", -16777216, -1);
    }

    /* JADX INFO: renamed from: b */
    public static Bitmap m7393b(String str, int i, int i2, String str2, String str3, String str4, int i3, int i4) {
        if (!TextUtils.isEmpty(str) && i >= 0 && i2 >= 0) {
            try {
                Hashtable hashtable = new Hashtable();
                if (!TextUtils.isEmpty(str2)) {
                    hashtable.put(EnumC1266b.CHARACTER_SET, str2);
                }
                if (!TextUtils.isEmpty(str3)) {
                    hashtable.put(EnumC1266b.ERROR_CORRECTION, str3);
                }
                if (!TextUtils.isEmpty(str4)) {
                    hashtable.put(EnumC1266b.MARGIN, str4);
                }
                int iM7394c = m7394c(str, i, hashtable) * 2;
                int i5 = (i - iM7394c) - 0;
                int i6 = (i2 - iM7394c) + 0;
                C1269b c1269bM9520a = new C1274a().m9520a(str, EnumC1265a.QR_CODE, i5, i6, hashtable);
                int[] iArr = new int[i5 * i6];
                for (int i7 = 0; i7 < i6; i7++) {
                    for (int i8 = 0; i8 < i5; i8++) {
                        if (c1269bM9520a.m9496c(i8, i7)) {
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
            } catch (C1267c e) {
                e.printStackTrace();
            }
        }
        return null;
    }

    /* JADX INFO: renamed from: c */
    private static int m7394c(String str, int i, Hashtable<EnumC1266b, String> hashtable) {
        try {
            C1279b c1279bM9595a = C1280c.m9558n(str, EnumC1275a.L, hashtable).m9595a();
            if (c1279bM9595a == null) {
                throw new IllegalStateException();
            }
            int iM9542e = c1279bM9595a.m9542e();
            int iMax = Math.max(i, iM9542e);
            return (iMax - (iM9542e * (iMax / iM9542e))) / 2;
        } catch (C1267c e) {
            e.printStackTrace();
            return 0;
        }
    }
}
