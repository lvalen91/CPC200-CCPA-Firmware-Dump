package androidx.core.graphics.drawable;

import android.content.res.ColorStateList;
import android.os.Parcelable;

/* JADX INFO: loaded from: /Volumes/stuff/macbook/misc/CPC200-CCPA/rework/dumped_real_classes.dex */
public class IconCompatParcelizer {
    public static IconCompat read(androidx.versionedparcelable.a aVar) {
        IconCompat iconCompat = new IconCompat();
        iconCompat.a = aVar.p(iconCompat.a, 1);
        iconCompat.f547c = aVar.j(iconCompat.f547c, 2);
        iconCompat.f548d = aVar.r(iconCompat.f548d, 3);
        iconCompat.e = aVar.p(iconCompat.e, 4);
        iconCompat.f = aVar.p(iconCompat.f, 5);
        iconCompat.g = (ColorStateList) aVar.r(iconCompat.g, 6);
        iconCompat.i = aVar.t(iconCompat.i, 7);
        iconCompat.j = aVar.t(iconCompat.j, 8);
        iconCompat.c();
        return iconCompat;
    }

    public static void write(IconCompat iconCompat, androidx.versionedparcelable.a aVar) {
        aVar.x(true, true);
        iconCompat.d(aVar.f());
        int i = iconCompat.a;
        if (-1 != i) {
            aVar.F(i, 1);
        }
        byte[] bArr = iconCompat.f547c;
        if (bArr != null) {
            aVar.B(bArr, 2);
        }
        Parcelable parcelable = iconCompat.f548d;
        if (parcelable != null) {
            aVar.H(parcelable, 3);
        }
        int i2 = iconCompat.e;
        if (i2 != 0) {
            aVar.F(i2, 4);
        }
        int i3 = iconCompat.f;
        if (i3 != 0) {
            aVar.F(i3, 5);
        }
        ColorStateList colorStateList = iconCompat.g;
        if (colorStateList != null) {
            aVar.H(colorStateList, 6);
        }
        String str = iconCompat.i;
        if (str != null) {
            aVar.J(str, 7);
        }
        String str2 = iconCompat.j;
        if (str2 != null) {
            aVar.J(str2, 8);
        }
    }
}
