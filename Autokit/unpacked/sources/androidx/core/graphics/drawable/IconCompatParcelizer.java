package androidx.core.graphics.drawable;

import android.content.res.ColorStateList;
import android.os.Parcelable;
import androidx.versionedparcelable.AbstractC0486a;

/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class IconCompatParcelizer {
    public static IconCompat read(AbstractC0486a abstractC0486a) {
        IconCompat iconCompat = new IconCompat();
        iconCompat.f1778a = abstractC0486a.m4025p(iconCompat.f1778a, 1);
        iconCompat.f1780c = abstractC0486a.m4019j(iconCompat.f1780c, 2);
        iconCompat.f1781d = abstractC0486a.m4027r(iconCompat.f1781d, 3);
        iconCompat.f1782e = abstractC0486a.m4025p(iconCompat.f1782e, 4);
        iconCompat.f1783f = abstractC0486a.m4025p(iconCompat.f1783f, 5);
        iconCompat.f1784g = (ColorStateList) abstractC0486a.m4027r(iconCompat.f1784g, 6);
        iconCompat.f1786i = abstractC0486a.m4029t(iconCompat.f1786i, 7);
        iconCompat.f1787j = abstractC0486a.m4029t(iconCompat.f1787j, 8);
        iconCompat.m1778c();
        return iconCompat;
    }

    public static void write(IconCompat iconCompat, AbstractC0486a abstractC0486a) {
        abstractC0486a.m4033x(true, true);
        iconCompat.m1779d(abstractC0486a.m4015f());
        int i = iconCompat.f1778a;
        if (-1 != i) {
            abstractC0486a.m4005F(i, 1);
        }
        byte[] bArr = iconCompat.f1780c;
        if (bArr != null) {
            abstractC0486a.m4001B(bArr, 2);
        }
        Parcelable parcelable = iconCompat.f1781d;
        if (parcelable != null) {
            abstractC0486a.m4007H(parcelable, 3);
        }
        int i2 = iconCompat.f1782e;
        if (i2 != 0) {
            abstractC0486a.m4005F(i2, 4);
        }
        int i3 = iconCompat.f1783f;
        if (i3 != 0) {
            abstractC0486a.m4005F(i3, 5);
        }
        ColorStateList colorStateList = iconCompat.f1784g;
        if (colorStateList != null) {
            abstractC0486a.m4007H(colorStateList, 6);
        }
        String str = iconCompat.f1786i;
        if (str != null) {
            abstractC0486a.m4009J(str, 7);
        }
        String str2 = iconCompat.f1787j;
        if (str2 != null) {
            abstractC0486a.m4009J(str2, 8);
        }
    }
}
