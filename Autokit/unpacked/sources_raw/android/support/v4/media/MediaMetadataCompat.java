package android.support.v4.media;

import android.graphics.Bitmap;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.support.v4.media.session.MediaSessionCompat;

/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public final class MediaMetadataCompat implements Parcelable {
    public static final Parcelable.Creator<MediaMetadataCompat> CREATOR;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    static final c.d.a<String, Integer> f11d;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final Bundle f12b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Object f13c;

    static class a implements Parcelable.Creator<MediaMetadataCompat> {
        a() {
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public MediaMetadataCompat createFromParcel(Parcel parcel) {
            return new MediaMetadataCompat(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public MediaMetadataCompat[] newArray(int i) {
            return new MediaMetadataCompat[i];
        }
    }

    static {
        c.d.a<String, Integer> aVar = new c.d.a<>();
        f11d = aVar;
        aVar.put("android.media.metadata.TITLE", 1);
        f11d.put("android.media.metadata.ARTIST", 1);
        f11d.put("android.media.metadata.DURATION", 0);
        f11d.put("android.media.metadata.ALBUM", 1);
        f11d.put("android.media.metadata.AUTHOR", 1);
        f11d.put("android.media.metadata.WRITER", 1);
        f11d.put("android.media.metadata.COMPOSER", 1);
        f11d.put("android.media.metadata.COMPILATION", 1);
        f11d.put("android.media.metadata.DATE", 1);
        f11d.put("android.media.metadata.YEAR", 0);
        f11d.put("android.media.metadata.GENRE", 1);
        f11d.put("android.media.metadata.TRACK_NUMBER", 0);
        f11d.put("android.media.metadata.NUM_TRACKS", 0);
        f11d.put("android.media.metadata.DISC_NUMBER", 0);
        f11d.put("android.media.metadata.ALBUM_ARTIST", 1);
        f11d.put("android.media.metadata.ART", 2);
        f11d.put("android.media.metadata.ART_URI", 1);
        f11d.put("android.media.metadata.ALBUM_ART", 2);
        f11d.put("android.media.metadata.ALBUM_ART_URI", 1);
        f11d.put("android.media.metadata.USER_RATING", 3);
        f11d.put("android.media.metadata.RATING", 3);
        f11d.put("android.media.metadata.DISPLAY_TITLE", 1);
        f11d.put("android.media.metadata.DISPLAY_SUBTITLE", 1);
        f11d.put("android.media.metadata.DISPLAY_DESCRIPTION", 1);
        f11d.put("android.media.metadata.DISPLAY_ICON", 2);
        f11d.put("android.media.metadata.DISPLAY_ICON_URI", 1);
        f11d.put("android.media.metadata.MEDIA_ID", 1);
        f11d.put("android.media.metadata.BT_FOLDER_TYPE", 0);
        f11d.put("android.media.metadata.MEDIA_URI", 1);
        f11d.put("android.media.metadata.ADVERTISEMENT", 0);
        f11d.put("android.media.metadata.DOWNLOAD_STATUS", 0);
        CREATOR = new a();
    }

    MediaMetadataCompat(Bundle bundle) {
        Bundle bundle2 = new Bundle(bundle);
        this.f12b = bundle2;
        MediaSessionCompat.a(bundle2);
    }

    public static MediaMetadataCompat k(Object obj) {
        if (obj == null || Build.VERSION.SDK_INT < 21) {
            return null;
        }
        Parcel parcelObtain = Parcel.obtain();
        f.a(obj, parcelObtain, 0);
        parcelObtain.setDataPosition(0);
        MediaMetadataCompat mediaMetadataCompatCreateFromParcel = CREATOR.createFromParcel(parcelObtain);
        parcelObtain.recycle();
        mediaMetadataCompatCreateFromParcel.f13c = obj;
        return mediaMetadataCompatCreateFromParcel;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean j(String str) {
        return this.f12b.containsKey(str);
    }

    public Bundle l() {
        return new Bundle(this.f12b);
    }

    public long m(String str) {
        return this.f12b.getLong(str, 0L);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeBundle(this.f12b);
    }

    public static final class b {
        private final Bundle a;

        public b(MediaMetadataCompat mediaMetadataCompat) {
            Bundle bundle = new Bundle(mediaMetadataCompat.f12b);
            this.a = bundle;
            MediaSessionCompat.a(bundle);
        }

        private Bitmap c(Bitmap bitmap, int i) {
            float f = i;
            float fMin = Math.min(f / bitmap.getWidth(), f / bitmap.getHeight());
            return Bitmap.createScaledBitmap(bitmap, (int) (bitmap.getWidth() * fMin), (int) (bitmap.getHeight() * fMin), true);
        }

        public MediaMetadataCompat a() {
            return new MediaMetadataCompat(this.a);
        }

        public b b(String str, Bitmap bitmap) {
            if (!MediaMetadataCompat.f11d.containsKey(str) || MediaMetadataCompat.f11d.get(str).intValue() == 2) {
                this.a.putParcelable(str, bitmap);
                return this;
            }
            throw new IllegalArgumentException("The " + str + " key cannot be used to put a Bitmap");
        }

        public b(MediaMetadataCompat mediaMetadataCompat, int i) {
            this(mediaMetadataCompat);
            for (String str : this.a.keySet()) {
                Object obj = this.a.get(str);
                if (obj instanceof Bitmap) {
                    Bitmap bitmap = (Bitmap) obj;
                    if (bitmap.getHeight() > i || bitmap.getWidth() > i) {
                        b(str, c(bitmap, i));
                    }
                }
            }
        }
    }

    MediaMetadataCompat(Parcel parcel) {
        this.f12b = parcel.readBundle(MediaSessionCompat.class.getClassLoader());
    }
}
