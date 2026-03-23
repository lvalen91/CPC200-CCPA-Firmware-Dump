package android.support.v4.media;

import android.media.Rating;
import android.os.Build;
import android.os.Parcel;
import android.os.Parcelable;
import com.yalantis.ucrop.view.CropImageView;

/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public final class RatingCompat implements Parcelable {
    public static final Parcelable.Creator<RatingCompat> CREATOR = new C0006a();

    /* JADX INFO: renamed from: b */
    private final int f31b;

    /* JADX INFO: renamed from: c */
    private final float f32c;

    /* JADX INFO: renamed from: d */
    private Object f33d;

    /* JADX INFO: renamed from: android.support.v4.media.RatingCompat$a */
    static class C0006a implements Parcelable.Creator<RatingCompat> {
        C0006a() {
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public RatingCompat createFromParcel(Parcel parcel) {
            return new RatingCompat(parcel.readInt(), parcel.readFloat());
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public RatingCompat[] newArray(int i) {
            return new RatingCompat[i];
        }
    }

    RatingCompat(int i, float f) {
        this.f31b = i;
        this.f32c = f;
    }

    /* JADX INFO: renamed from: j */
    public static RatingCompat m26j(Object obj) {
        RatingCompat ratingCompatM31o = null;
        if (obj != null && Build.VERSION.SDK_INT >= 19) {
            Rating rating = (Rating) obj;
            int ratingStyle = rating.getRatingStyle();
            if (rating.isRated()) {
                switch (ratingStyle) {
                    case 1:
                        ratingCompatM31o = m27k(rating.hasHeart());
                        break;
                    case 2:
                        ratingCompatM31o = m30n(rating.isThumbUp());
                        break;
                    case 3:
                    case 4:
                    case 5:
                        ratingCompatM31o = m29m(ratingStyle, rating.getStarRating());
                        break;
                    case 6:
                        ratingCompatM31o = m28l(rating.getPercentRating());
                        break;
                    default:
                        return null;
                }
            } else {
                ratingCompatM31o = m31o(ratingStyle);
            }
            ratingCompatM31o.f33d = obj;
        }
        return ratingCompatM31o;
    }

    /* JADX INFO: renamed from: k */
    public static RatingCompat m27k(boolean z) {
        return new RatingCompat(1, z ? 1.0f : CropImageView.DEFAULT_ASPECT_RATIO);
    }

    /* JADX INFO: renamed from: l */
    public static RatingCompat m28l(float f) {
        if (f < CropImageView.DEFAULT_ASPECT_RATIO || f > 100.0f) {
            return null;
        }
        return new RatingCompat(6, f);
    }

    /* JADX INFO: renamed from: m */
    public static RatingCompat m29m(int i, float f) {
        float f2;
        if (i == 3) {
            f2 = 3.0f;
        } else if (i == 4) {
            f2 = 4.0f;
        } else {
            if (i != 5) {
                String str = "Invalid rating style (" + i + ") for a star rating";
                return null;
            }
            f2 = 5.0f;
        }
        if (f < CropImageView.DEFAULT_ASPECT_RATIO || f > f2) {
            return null;
        }
        return new RatingCompat(i, f);
    }

    /* JADX INFO: renamed from: n */
    public static RatingCompat m30n(boolean z) {
        return new RatingCompat(2, z ? 1.0f : CropImageView.DEFAULT_ASPECT_RATIO);
    }

    /* JADX INFO: renamed from: o */
    public static RatingCompat m31o(int i) {
        switch (i) {
            case 1:
            case 2:
            case 3:
            case 4:
            case 5:
            case 6:
                return new RatingCompat(i, -1.0f);
            default:
                return null;
        }
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return this.f31b;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("Rating:style=");
        sb.append(this.f31b);
        sb.append(" rating=");
        float f = this.f32c;
        sb.append(f < CropImageView.DEFAULT_ASPECT_RATIO ? "unrated" : String.valueOf(f));
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.f31b);
        parcel.writeFloat(this.f32c);
    }
}
