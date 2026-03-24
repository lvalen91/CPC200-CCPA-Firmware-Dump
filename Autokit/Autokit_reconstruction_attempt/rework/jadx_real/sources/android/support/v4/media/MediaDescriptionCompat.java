package android.support.v4.media;

import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.support.v4.media.d;
import android.support.v4.media.e;
import android.support.v4.media.session.MediaSessionCompat;
import android.text.TextUtils;

/* JADX INFO: loaded from: /Volumes/stuff/macbook/misc/CPC200-CCPA/rework/dumped_real_classes.dex */
public final class MediaDescriptionCompat implements Parcelable {
    public static final Parcelable.Creator<MediaDescriptionCompat> CREATOR = new a();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f5b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final CharSequence f6c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final CharSequence f7d;
    private final CharSequence e;
    private final Bitmap f;
    private final Uri g;
    private final Bundle h;
    private final Uri i;
    private Object j;

    static class a implements Parcelable.Creator<MediaDescriptionCompat> {
        a() {
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public MediaDescriptionCompat createFromParcel(Parcel parcel) {
            return Build.VERSION.SDK_INT < 21 ? new MediaDescriptionCompat(parcel) : MediaDescriptionCompat.j(d.a(parcel));
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public MediaDescriptionCompat[] newArray(int i) {
            return new MediaDescriptionCompat[i];
        }
    }

    public static final class b {
        private String a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private CharSequence f8b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private CharSequence f9c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private CharSequence f10d;
        private Bitmap e;
        private Uri f;
        private Bundle g;
        private Uri h;

        public MediaDescriptionCompat a() {
            return new MediaDescriptionCompat(this.a, this.f8b, this.f9c, this.f10d, this.e, this.f, this.g, this.h);
        }

        public b b(CharSequence charSequence) {
            this.f10d = charSequence;
            return this;
        }

        public b c(Bundle bundle) {
            this.g = bundle;
            return this;
        }

        public b d(Bitmap bitmap) {
            this.e = bitmap;
            return this;
        }

        public b e(Uri uri) {
            this.f = uri;
            return this;
        }

        public b f(String str) {
            this.a = str;
            return this;
        }

        public b g(Uri uri) {
            this.h = uri;
            return this;
        }

        public b h(CharSequence charSequence) {
            this.f9c = charSequence;
            return this;
        }

        public b i(CharSequence charSequence) {
            this.f8b = charSequence;
            return this;
        }
    }

    MediaDescriptionCompat(String str, CharSequence charSequence, CharSequence charSequence2, CharSequence charSequence3, Bitmap bitmap, Uri uri, Bundle bundle, Uri uri2) {
        this.f5b = str;
        this.f6c = charSequence;
        this.f7d = charSequence2;
        this.e = charSequence3;
        this.f = bitmap;
        this.g = uri;
        this.h = bundle;
        this.i = uri2;
    }

    public static MediaDescriptionCompat j(Object obj) {
        Uri uri;
        Bundle bundle = null;
        if (obj == null || Build.VERSION.SDK_INT < 21) {
            return null;
        }
        b bVar = new b();
        bVar.f(d.f(obj));
        bVar.i(d.h(obj));
        bVar.h(d.g(obj));
        bVar.b(d.b(obj));
        bVar.d(d.d(obj));
        bVar.e(d.e(obj));
        Bundle bundleC = d.c(obj);
        if (bundleC != null) {
            MediaSessionCompat.a(bundleC);
            uri = (Uri) bundleC.getParcelable("android.support.v4.media.description.MEDIA_URI");
        } else {
            uri = null;
        }
        if (uri == null) {
            bundle = bundleC;
        } else if (!bundleC.containsKey("android.support.v4.media.description.NULL_BUNDLE_FLAG") || bundleC.size() != 2) {
            bundleC.remove("android.support.v4.media.description.MEDIA_URI");
            bundleC.remove("android.support.v4.media.description.NULL_BUNDLE_FLAG");
            bundle = bundleC;
        }
        bVar.c(bundle);
        if (uri != null) {
            bVar.g(uri);
        } else if (Build.VERSION.SDK_INT >= 23) {
            bVar.g(e.a(obj));
        }
        MediaDescriptionCompat mediaDescriptionCompatA = bVar.a();
        mediaDescriptionCompatA.j = obj;
        return mediaDescriptionCompatA;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public Object k() {
        if (this.j != null || Build.VERSION.SDK_INT < 21) {
            return this.j;
        }
        Object objB = d.a.b();
        d.a.g(objB, this.f5b);
        d.a.i(objB, this.f6c);
        d.a.h(objB, this.f7d);
        d.a.c(objB, this.e);
        d.a.e(objB, this.f);
        d.a.f(objB, this.g);
        Bundle bundle = this.h;
        if (Build.VERSION.SDK_INT < 23 && this.i != null) {
            if (bundle == null) {
                bundle = new Bundle();
                bundle.putBoolean("android.support.v4.media.description.NULL_BUNDLE_FLAG", true);
            }
            bundle.putParcelable("android.support.v4.media.description.MEDIA_URI", this.i);
        }
        d.a.d(objB, bundle);
        if (Build.VERSION.SDK_INT >= 23) {
            e.a.a(objB, this.i);
        }
        Object objA = d.a.a(objB);
        this.j = objA;
        return objA;
    }

    public String toString() {
        return ((Object) this.f6c) + ", " + ((Object) this.f7d) + ", " + ((Object) this.e);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        if (Build.VERSION.SDK_INT >= 21) {
            d.i(k(), parcel, i);
            return;
        }
        parcel.writeString(this.f5b);
        TextUtils.writeToParcel(this.f6c, parcel, i);
        TextUtils.writeToParcel(this.f7d, parcel, i);
        TextUtils.writeToParcel(this.e, parcel, i);
        parcel.writeParcelable(this.f, i);
        parcel.writeParcelable(this.g, i);
        parcel.writeBundle(this.h);
        parcel.writeParcelable(this.i, i);
    }

    MediaDescriptionCompat(Parcel parcel) {
        this.f5b = parcel.readString();
        this.f6c = (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel);
        this.f7d = (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel);
        this.e = (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel);
        ClassLoader classLoader = MediaDescriptionCompat.class.getClassLoader();
        this.f = (Bitmap) parcel.readParcelable(classLoader);
        this.g = (Uri) parcel.readParcelable(classLoader);
        this.h = parcel.readBundle(classLoader);
        this.i = (Uri) parcel.readParcelable(classLoader);
    }
}
