package android.support.v4.media;

import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.support.v4.media.C0010d;
import android.support.v4.media.C0011e;
import android.support.v4.media.session.MediaSessionCompat;
import android.text.TextUtils;

/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public final class MediaDescriptionCompat implements Parcelable {
    public static final Parcelable.Creator<MediaDescriptionCompat> CREATOR = new C0002a();

    /* JADX INFO: renamed from: b */
    private final String f10b;

    /* JADX INFO: renamed from: c */
    private final CharSequence f11c;

    /* JADX INFO: renamed from: d */
    private final CharSequence f12d;

    /* JADX INFO: renamed from: e */
    private final CharSequence f13e;

    /* JADX INFO: renamed from: f */
    private final Bitmap f14f;

    /* JADX INFO: renamed from: g */
    private final Uri f15g;

    /* JADX INFO: renamed from: h */
    private final Bundle f16h;

    /* JADX INFO: renamed from: i */
    private final Uri f17i;

    /* JADX INFO: renamed from: j */
    private Object f18j;

    /* JADX INFO: renamed from: android.support.v4.media.MediaDescriptionCompat$a */
    static class C0002a implements Parcelable.Creator<MediaDescriptionCompat> {
        C0002a() {
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public MediaDescriptionCompat createFromParcel(Parcel parcel) {
            return Build.VERSION.SDK_INT < 21 ? new MediaDescriptionCompat(parcel) : MediaDescriptionCompat.m4j(C0010d.m41a(parcel));
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public MediaDescriptionCompat[] newArray(int i) {
            return new MediaDescriptionCompat[i];
        }
    }

    /* JADX INFO: renamed from: android.support.v4.media.MediaDescriptionCompat$b */
    public static final class C0003b {

        /* JADX INFO: renamed from: a */
        private String f19a;

        /* JADX INFO: renamed from: b */
        private CharSequence f20b;

        /* JADX INFO: renamed from: c */
        private CharSequence f21c;

        /* JADX INFO: renamed from: d */
        private CharSequence f22d;

        /* JADX INFO: renamed from: e */
        private Bitmap f23e;

        /* JADX INFO: renamed from: f */
        private Uri f24f;

        /* JADX INFO: renamed from: g */
        private Bundle f25g;

        /* JADX INFO: renamed from: h */
        private Uri f26h;

        /* JADX INFO: renamed from: a */
        public MediaDescriptionCompat m8a() {
            return new MediaDescriptionCompat(this.f19a, this.f20b, this.f21c, this.f22d, this.f23e, this.f24f, this.f25g, this.f26h);
        }

        /* JADX INFO: renamed from: b */
        public C0003b m9b(CharSequence charSequence) {
            this.f22d = charSequence;
            return this;
        }

        /* JADX INFO: renamed from: c */
        public C0003b m10c(Bundle bundle) {
            this.f25g = bundle;
            return this;
        }

        /* JADX INFO: renamed from: d */
        public C0003b m11d(Bitmap bitmap) {
            this.f23e = bitmap;
            return this;
        }

        /* JADX INFO: renamed from: e */
        public C0003b m12e(Uri uri) {
            this.f24f = uri;
            return this;
        }

        /* JADX INFO: renamed from: f */
        public C0003b m13f(String str) {
            this.f19a = str;
            return this;
        }

        /* JADX INFO: renamed from: g */
        public C0003b m14g(Uri uri) {
            this.f26h = uri;
            return this;
        }

        /* JADX INFO: renamed from: h */
        public C0003b m15h(CharSequence charSequence) {
            this.f21c = charSequence;
            return this;
        }

        /* JADX INFO: renamed from: i */
        public C0003b m16i(CharSequence charSequence) {
            this.f20b = charSequence;
            return this;
        }
    }

    MediaDescriptionCompat(String str, CharSequence charSequence, CharSequence charSequence2, CharSequence charSequence3, Bitmap bitmap, Uri uri, Bundle bundle, Uri uri2) {
        this.f10b = str;
        this.f11c = charSequence;
        this.f12d = charSequence2;
        this.f13e = charSequence3;
        this.f14f = bitmap;
        this.f15g = uri;
        this.f16h = bundle;
        this.f17i = uri2;
    }

    /* JADX INFO: renamed from: j */
    public static MediaDescriptionCompat m4j(Object obj) {
        Uri uri;
        Bundle bundle = null;
        if (obj == null || Build.VERSION.SDK_INT < 21) {
            return null;
        }
        C0003b c0003b = new C0003b();
        c0003b.m13f(C0010d.m46f(obj));
        c0003b.m16i(C0010d.m48h(obj));
        c0003b.m15h(C0010d.m47g(obj));
        c0003b.m9b(C0010d.m42b(obj));
        c0003b.m11d(C0010d.m44d(obj));
        c0003b.m12e(C0010d.m45e(obj));
        Bundle bundleM43c = C0010d.m43c(obj);
        if (bundleM43c != null) {
            MediaSessionCompat.m95a(bundleM43c);
            uri = (Uri) bundleM43c.getParcelable("android.support.v4.media.description.MEDIA_URI");
        } else {
            uri = null;
        }
        if (uri == null) {
            bundle = bundleM43c;
        } else if (!bundleM43c.containsKey("android.support.v4.media.description.NULL_BUNDLE_FLAG") || bundleM43c.size() != 2) {
            bundleM43c.remove("android.support.v4.media.description.MEDIA_URI");
            bundleM43c.remove("android.support.v4.media.description.NULL_BUNDLE_FLAG");
            bundle = bundleM43c;
        }
        c0003b.m10c(bundle);
        if (uri != null) {
            c0003b.m14g(uri);
        } else if (Build.VERSION.SDK_INT >= 23) {
            c0003b.m14g(C0011e.m59a(obj));
        }
        MediaDescriptionCompat mediaDescriptionCompatM8a = c0003b.m8a();
        mediaDescriptionCompatM8a.f18j = obj;
        return mediaDescriptionCompatM8a;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    /* JADX INFO: renamed from: k */
    public Object m5k() {
        if (this.f18j != null || Build.VERSION.SDK_INT < 21) {
            return this.f18j;
        }
        Object objM51b = C0010d.a.m51b();
        C0010d.a.m56g(objM51b, this.f10b);
        C0010d.a.m58i(objM51b, this.f11c);
        C0010d.a.m57h(objM51b, this.f12d);
        C0010d.a.m52c(objM51b, this.f13e);
        C0010d.a.m54e(objM51b, this.f14f);
        C0010d.a.m55f(objM51b, this.f15g);
        Bundle bundle = this.f16h;
        if (Build.VERSION.SDK_INT < 23 && this.f17i != null) {
            if (bundle == null) {
                bundle = new Bundle();
                bundle.putBoolean("android.support.v4.media.description.NULL_BUNDLE_FLAG", true);
            }
            bundle.putParcelable("android.support.v4.media.description.MEDIA_URI", this.f17i);
        }
        C0010d.a.m53d(objM51b, bundle);
        if (Build.VERSION.SDK_INT >= 23) {
            C0011e.a.m60a(objM51b, this.f17i);
        }
        Object objM50a = C0010d.a.m50a(objM51b);
        this.f18j = objM50a;
        return objM50a;
    }

    public String toString() {
        return ((Object) this.f11c) + ", " + ((Object) this.f12d) + ", " + ((Object) this.f13e);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        if (Build.VERSION.SDK_INT >= 21) {
            C0010d.m49i(m5k(), parcel, i);
            return;
        }
        parcel.writeString(this.f10b);
        TextUtils.writeToParcel(this.f11c, parcel, i);
        TextUtils.writeToParcel(this.f12d, parcel, i);
        TextUtils.writeToParcel(this.f13e, parcel, i);
        parcel.writeParcelable(this.f14f, i);
        parcel.writeParcelable(this.f15g, i);
        parcel.writeBundle(this.f16h);
        parcel.writeParcelable(this.f17i, i);
    }

    MediaDescriptionCompat(Parcel parcel) {
        this.f10b = parcel.readString();
        this.f11c = (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel);
        this.f12d = (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel);
        this.f13e = (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel);
        ClassLoader classLoader = MediaDescriptionCompat.class.getClassLoader();
        this.f14f = (Bitmap) parcel.readParcelable(classLoader);
        this.f15g = (Uri) parcel.readParcelable(classLoader);
        this.f16h = parcel.readBundle(classLoader);
        this.f17i = (Uri) parcel.readParcelable(classLoader);
    }
}
