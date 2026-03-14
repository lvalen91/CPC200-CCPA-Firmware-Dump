package androidx.core.graphics.drawable;

import android.content.res.ColorStateList;
import android.graphics.Bitmap;
import android.graphics.PorterDuff;
import android.graphics.drawable.Icon;
import android.os.Build;
import android.os.Parcelable;
import androidx.versionedparcelable.CustomVersionedParcelable;
import com.yalantis.ucrop.util.ImageHeaderParser;
import java.io.ByteArrayOutputStream;
import java.lang.reflect.InvocationTargetException;
import java.nio.charset.Charset;

/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class IconCompat extends CustomVersionedParcelable {

    /* JADX INFO: renamed from: k */
    static final PorterDuff.Mode f1777k = PorterDuff.Mode.SRC_IN;

    /* JADX INFO: renamed from: b */
    Object f1779b;

    /* JADX INFO: renamed from: j */
    public String f1787j;

    /* JADX INFO: renamed from: a */
    public int f1778a = -1;

    /* JADX INFO: renamed from: c */
    public byte[] f1780c = null;

    /* JADX INFO: renamed from: d */
    public Parcelable f1781d = null;

    /* JADX INFO: renamed from: e */
    public int f1782e = 0;

    /* JADX INFO: renamed from: f */
    public int f1783f = 0;

    /* JADX INFO: renamed from: g */
    public ColorStateList f1784g = null;

    /* JADX INFO: renamed from: h */
    PorterDuff.Mode f1785h = f1777k;

    /* JADX INFO: renamed from: i */
    public String f1786i = null;

    /* JADX INFO: renamed from: b */
    private static int m1775b(Icon icon) {
        if (Build.VERSION.SDK_INT >= 28) {
            return icon.getResId();
        }
        try {
            return ((Integer) icon.getClass().getMethod("getResId", new Class[0]).invoke(icon, new Object[0])).intValue();
        } catch (IllegalAccessException | NoSuchMethodException | InvocationTargetException unused) {
            return 0;
        }
    }

    /* JADX INFO: renamed from: e */
    private static String m1776e(int i) {
        switch (i) {
            case 1:
                return "BITMAP";
            case 2:
                return "RESOURCE";
            case 3:
                return "DATA";
            case 4:
                return "URI";
            case 5:
                return "BITMAP_MASKABLE";
            case 6:
                return "URI_MASKABLE";
            default:
                return "UNKNOWN";
        }
    }

    /* JADX INFO: renamed from: a */
    public int m1777a() {
        if (this.f1778a == -1 && Build.VERSION.SDK_INT >= 23) {
            return m1775b((Icon) this.f1779b);
        }
        if (this.f1778a == 2) {
            return this.f1782e;
        }
        throw new IllegalStateException("called getResId() on " + this);
    }

    /* JADX INFO: renamed from: c */
    public void m1778c() {
        this.f1785h = PorterDuff.Mode.valueOf(this.f1786i);
        switch (this.f1778a) {
            case ImageHeaderParser.UNKNOWN_ORIENTATION /* -1 */:
                Parcelable parcelable = this.f1781d;
                if (parcelable == null) {
                    throw new IllegalArgumentException("Invalid icon");
                }
                this.f1779b = parcelable;
                return;
            case 0:
            default:
                return;
            case 1:
            case 5:
                Parcelable parcelable2 = this.f1781d;
                if (parcelable2 != null) {
                    this.f1779b = parcelable2;
                    return;
                }
                byte[] bArr = this.f1780c;
                this.f1779b = bArr;
                this.f1778a = 3;
                this.f1782e = 0;
                this.f1783f = bArr.length;
                return;
            case 2:
            case 4:
            case 6:
                String str = new String(this.f1780c, Charset.forName("UTF-16"));
                this.f1779b = str;
                if (this.f1778a == 2 && this.f1787j == null) {
                    this.f1787j = str.split(":", -1)[0];
                    return;
                }
                return;
            case 3:
                this.f1779b = this.f1780c;
                return;
        }
    }

    /* JADX INFO: renamed from: d */
    public void m1779d(boolean z) {
        this.f1786i = this.f1785h.name();
        switch (this.f1778a) {
            case ImageHeaderParser.UNKNOWN_ORIENTATION /* -1 */:
                if (z) {
                    throw new IllegalArgumentException("Can't serialize Icon created with IconCompat#createFromIcon");
                }
                this.f1781d = (Parcelable) this.f1779b;
                return;
            case 0:
            default:
                return;
            case 1:
            case 5:
                if (!z) {
                    this.f1781d = (Parcelable) this.f1779b;
                    return;
                }
                Bitmap bitmap = (Bitmap) this.f1779b;
                ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                bitmap.compress(Bitmap.CompressFormat.PNG, 90, byteArrayOutputStream);
                this.f1780c = byteArrayOutputStream.toByteArray();
                return;
            case 2:
                this.f1780c = ((String) this.f1779b).getBytes(Charset.forName("UTF-16"));
                return;
            case 3:
                this.f1780c = (byte[]) this.f1779b;
                return;
            case 4:
            case 6:
                this.f1780c = this.f1779b.toString().getBytes(Charset.forName("UTF-16"));
                return;
        }
    }

    public String toString() {
        if (this.f1778a == -1) {
            return String.valueOf(this.f1779b);
        }
        StringBuilder sb = new StringBuilder("Icon(typ=");
        sb.append(m1776e(this.f1778a));
        switch (this.f1778a) {
            case 1:
            case 5:
                sb.append(" size=");
                sb.append(((Bitmap) this.f1779b).getWidth());
                sb.append("x");
                sb.append(((Bitmap) this.f1779b).getHeight());
                break;
            case 2:
                sb.append(" pkg=");
                sb.append(this.f1787j);
                sb.append(" id=");
                sb.append(String.format("0x%08x", Integer.valueOf(m1777a())));
                break;
            case 3:
                sb.append(" len=");
                sb.append(this.f1782e);
                if (this.f1783f != 0) {
                    sb.append(" off=");
                    sb.append(this.f1783f);
                }
                break;
            case 4:
            case 6:
                sb.append(" uri=");
                sb.append(this.f1779b);
                break;
        }
        if (this.f1784g != null) {
            sb.append(" tint=");
            sb.append(this.f1784g);
        }
        if (this.f1785h != f1777k) {
            sb.append(" mode=");
            sb.append(this.f1785h);
        }
        sb.append(")");
        return sb.toString();
    }
}
