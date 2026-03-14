package androidx.core.view;

import android.content.ClipData;
import android.net.Uri;
import android.os.Bundle;
import p016c.p041g.p049j.C0626h;

/* JADX INFO: renamed from: androidx.core.view.c */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public final class C0262c {

    /* JADX INFO: renamed from: a */
    final ClipData f1810a;

    /* JADX INFO: renamed from: b */
    final int f1811b;

    /* JADX INFO: renamed from: c */
    final int f1812c;

    /* JADX INFO: renamed from: d */
    final Uri f1813d;

    /* JADX INFO: renamed from: e */
    final Bundle f1814e;

    /* JADX INFO: renamed from: androidx.core.view.c$a */
    public static final class a {

        /* JADX INFO: renamed from: a */
        ClipData f1815a;

        /* JADX INFO: renamed from: b */
        int f1816b;

        /* JADX INFO: renamed from: c */
        int f1817c;

        /* JADX INFO: renamed from: d */
        Uri f1818d;

        /* JADX INFO: renamed from: e */
        Bundle f1819e;

        public a(ClipData clipData, int i) {
            this.f1815a = clipData;
            this.f1816b = i;
        }

        /* JADX INFO: renamed from: a */
        public C0262c m1826a() {
            return new C0262c(this);
        }

        /* JADX INFO: renamed from: b */
        public a m1827b(Bundle bundle) {
            this.f1819e = bundle;
            return this;
        }

        /* JADX INFO: renamed from: c */
        public a m1828c(int i) {
            this.f1817c = i;
            return this;
        }

        /* JADX INFO: renamed from: d */
        public a m1829d(Uri uri) {
            this.f1818d = uri;
            return this;
        }
    }

    C0262c(a aVar) {
        ClipData clipData = aVar.f1815a;
        C0626h.m4855e(clipData);
        this.f1810a = clipData;
        int i = aVar.f1816b;
        C0626h.m4852b(i, 0, 3, "source");
        this.f1811b = i;
        int i2 = aVar.f1817c;
        C0626h.m4854d(i2, 1);
        this.f1812c = i2;
        this.f1813d = aVar.f1818d;
        this.f1814e = aVar.f1819e;
    }

    /* JADX INFO: renamed from: a */
    static String m1821a(int i) {
        return (i & 1) != 0 ? "FLAG_CONVERT_TO_PLAIN_TEXT" : String.valueOf(i);
    }

    /* JADX INFO: renamed from: e */
    static String m1822e(int i) {
        return i != 0 ? i != 1 ? i != 2 ? i != 3 ? String.valueOf(i) : "SOURCE_DRAG_AND_DROP" : "SOURCE_INPUT_METHOD" : "SOURCE_CLIPBOARD" : "SOURCE_APP";
    }

    /* JADX INFO: renamed from: b */
    public ClipData m1823b() {
        return this.f1810a;
    }

    /* JADX INFO: renamed from: c */
    public int m1824c() {
        return this.f1812c;
    }

    /* JADX INFO: renamed from: d */
    public int m1825d() {
        return this.f1811b;
    }

    public String toString() {
        return "ContentInfoCompat{clip=" + this.f1810a + ", source=" + m1822e(this.f1811b) + ", flags=" + m1821a(this.f1812c) + ", linkUri=" + this.f1813d + ", extras=" + this.f1814e + "}";
    }
}
