package android.support.v4.media;

import android.graphics.Bitmap;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.support.v4.media.session.MediaSessionCompat;
import p016c.p032d.C0534a;

/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public final class MediaMetadataCompat implements Parcelable {
    public static final Parcelable.Creator<MediaMetadataCompat> CREATOR;

    /* JADX INFO: renamed from: d */
    static final C0534a<String, Integer> f27d;

    /* JADX INFO: renamed from: b */
    final Bundle f28b;

    /* JADX INFO: renamed from: c */
    private Object f29c;

    /* JADX INFO: renamed from: android.support.v4.media.MediaMetadataCompat$a */
    static class C0004a implements Parcelable.Creator<MediaMetadataCompat> {
        C0004a() {
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
        C0534a<String, Integer> c0534a = new C0534a<>();
        f27d = c0534a;
        c0534a.put("android.media.metadata.TITLE", 1);
        f27d.put("android.media.metadata.ARTIST", 1);
        f27d.put("android.media.metadata.DURATION", 0);
        f27d.put("android.media.metadata.ALBUM", 1);
        f27d.put("android.media.metadata.AUTHOR", 1);
        f27d.put("android.media.metadata.WRITER", 1);
        f27d.put("android.media.metadata.COMPOSER", 1);
        f27d.put("android.media.metadata.COMPILATION", 1);
        f27d.put("android.media.metadata.DATE", 1);
        f27d.put("android.media.metadata.YEAR", 0);
        f27d.put("android.media.metadata.GENRE", 1);
        f27d.put("android.media.metadata.TRACK_NUMBER", 0);
        f27d.put("android.media.metadata.NUM_TRACKS", 0);
        f27d.put("android.media.metadata.DISC_NUMBER", 0);
        f27d.put("android.media.metadata.ALBUM_ARTIST", 1);
        f27d.put("android.media.metadata.ART", 2);
        f27d.put("android.media.metadata.ART_URI", 1);
        f27d.put("android.media.metadata.ALBUM_ART", 2);
        f27d.put("android.media.metadata.ALBUM_ART_URI", 1);
        f27d.put("android.media.metadata.USER_RATING", 3);
        f27d.put("android.media.metadata.RATING", 3);
        f27d.put("android.media.metadata.DISPLAY_TITLE", 1);
        f27d.put("android.media.metadata.DISPLAY_SUBTITLE", 1);
        f27d.put("android.media.metadata.DISPLAY_DESCRIPTION", 1);
        f27d.put("android.media.metadata.DISPLAY_ICON", 2);
        f27d.put("android.media.metadata.DISPLAY_ICON_URI", 1);
        f27d.put("android.media.metadata.MEDIA_ID", 1);
        f27d.put("android.media.metadata.BT_FOLDER_TYPE", 0);
        f27d.put("android.media.metadata.MEDIA_URI", 1);
        f27d.put("android.media.metadata.ADVERTISEMENT", 0);
        f27d.put("android.media.metadata.DOWNLOAD_STATUS", 0);
        CREATOR = new C0004a();
    }

    MediaMetadataCompat(Bundle bundle) {
        Bundle bundle2 = new Bundle(bundle);
        this.f28b = bundle2;
        MediaSessionCompat.m95a(bundle2);
    }

    /* JADX INFO: renamed from: k */
    public static MediaMetadataCompat m17k(Object obj) {
        if (obj == null || Build.VERSION.SDK_INT < 21) {
            return null;
        }
        Parcel parcelObtain = Parcel.obtain();
        C0012f.m61a(obj, parcelObtain, 0);
        parcelObtain.setDataPosition(0);
        MediaMetadataCompat mediaMetadataCompatCreateFromParcel = CREATOR.createFromParcel(parcelObtain);
        parcelObtain.recycle();
        mediaMetadataCompatCreateFromParcel.f29c = obj;
        return mediaMetadataCompatCreateFromParcel;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    /* JADX INFO: renamed from: j */
    public boolean m18j(String str) {
        return this.f28b.containsKey(str);
    }

    /* JADX INFO: renamed from: l */
    public Bundle m19l() {
        return new Bundle(this.f28b);
    }

    /* JADX INFO: renamed from: m */
    public long m20m(String str) {
        return this.f28b.getLong(str, 0L);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeBundle(this.f28b);
    }

    /* JADX INFO: renamed from: android.support.v4.media.MediaMetadataCompat$b */
    public static final class C0005b {

        /* JADX INFO: renamed from: a */
        private final Bundle f30a;

        public C0005b(MediaMetadataCompat mediaMetadataCompat) {
            Bundle bundle = new Bundle(mediaMetadataCompat.f28b);
            this.f30a = bundle;
            MediaSessionCompat.m95a(bundle);
        }

        /* JADX INFO: renamed from: c */
        private Bitmap m23c(Bitmap bitmap, int i) {
            float f = i;
            float fMin = Math.min(f / bitmap.getWidth(), f / bitmap.getHeight());
            return Bitmap.createScaledBitmap(bitmap, (int) (bitmap.getWidth() * fMin), (int) (bitmap.getHeight() * fMin), true);
        }

        /* JADX INFO: renamed from: a */
        public MediaMetadataCompat m24a() {
            return new MediaMetadataCompat(this.f30a);
        }

        /* JADX INFO: renamed from: b */
        public C0005b m25b(String str, Bitmap bitmap) {
            if (!MediaMetadataCompat.f27d.containsKey(str) || MediaMetadataCompat.f27d.get(str).intValue() == 2) {
                this.f30a.putParcelable(str, bitmap);
                return this;
            }
            throw new IllegalArgumentException("The " + str + " key cannot be used to put a Bitmap");
        }

        public C0005b(MediaMetadataCompat mediaMetadataCompat, int i) {
            this(mediaMetadataCompat);
            for (String str : this.f30a.keySet()) {
                Object obj = this.f30a.get(str);
                if (obj instanceof Bitmap) {
                    Bitmap bitmap = (Bitmap) obj;
                    if (bitmap.getHeight() > i || bitmap.getWidth() > i) {
                        m25b(str, m23c(bitmap, i));
                    }
                }
            }
        }
    }

    MediaMetadataCompat(Parcel parcel) {
        this.f28b = parcel.readBundle(MediaSessionCompat.class.getClassLoader());
    }
}
