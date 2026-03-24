package androidx.core.view;

import android.content.ClipData;
import android.net.Uri;
import android.os.Bundle;

/* JADX INFO: loaded from: /Volumes/stuff/macbook/misc/CPC200-CCPA/rework/dumped_real_classes.dex */
public final class c {
    final ClipData a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final int f561b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final int f562c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    final Uri f563d;
    final Bundle e;

    public static final class a {
        ClipData a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        int f564b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        int f565c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        Uri f566d;
        Bundle e;

        public a(ClipData clipData, int i) {
            this.a = clipData;
            this.f564b = i;
        }

        public c a() {
            return new c(this);
        }

        public a b(Bundle bundle) {
            this.e = bundle;
            return this;
        }

        public a c(int i) {
            this.f565c = i;
            return this;
        }

        public a d(Uri uri) {
            this.f566d = uri;
            return this;
        }
    }

    c(a aVar) {
        ClipData clipData = aVar.a;
        c.g.j.h.e(clipData);
        this.a = clipData;
        int i = aVar.f564b;
        c.g.j.h.b(i, 0, 3, "source");
        this.f561b = i;
        int i2 = aVar.f565c;
        c.g.j.h.d(i2, 1);
        this.f562c = i2;
        this.f563d = aVar.f566d;
        this.e = aVar.e;
    }

    static String a(int i) {
        return (i & 1) != 0 ? "FLAG_CONVERT_TO_PLAIN_TEXT" : String.valueOf(i);
    }

    static String e(int i) {
        return i != 0 ? i != 1 ? i != 2 ? i != 3 ? String.valueOf(i) : "SOURCE_DRAG_AND_DROP" : "SOURCE_INPUT_METHOD" : "SOURCE_CLIPBOARD" : "SOURCE_APP";
    }

    public ClipData b() {
        return this.a;
    }

    public int c() {
        return this.f562c;
    }

    public int d() {
        return this.f561b;
    }

    public String toString() {
        return "ContentInfoCompat{clip=" + this.a + ", source=" + e(this.f561b) + ", flags=" + a(this.f562c) + ", linkUri=" + this.f563d + ", extras=" + this.e + "}";
    }
}
