package android.support.v4.media;

import android.media.Rating;
import android.os.Build;
import android.os.Parcel;
import android.os.Parcelable;
import com.yalantis.ucrop.view.CropImageView;

/* JADX INFO: loaded from: /Volumes/stuff/macbook/misc/CPC200-CCPA/rework/dumped_real_classes.dex */
public final class RatingCompat implements Parcelable {
    public static final Parcelable.Creator<RatingCompat> CREATOR = new a();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int f14b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final float f15c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Object f16d;

    static class a implements Parcelable.Creator<RatingCompat> {
        a() {
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
        this.f14b = i;
        this.f15c = f;
    }

    public static RatingCompat j(Object obj) {
        RatingCompat ratingCompatO = null;
        if (obj != null && Build.VERSION.SDK_INT >= 19) {
            Rating rating = (Rating) obj;
            int ratingStyle = rating.getRatingStyle();
            if (rating.isRated()) {
                switch (ratingStyle) {
                    case 1:
                        ratingCompatO = k(rating.hasHeart());
                        break;
                    case 2:
                        ratingCompatO = n(rating.isThumbUp());
                        break;
                    case 3:
                    case 4:
                    case 5:
                        ratingCompatO = m(ratingStyle, rating.getStarRating());
                        break;
                    case 6:
                        ratingCompatO = l(rating.getPercentRating());
                        break;
                    default:
                        return null;
                }
            } else {
                ratingCompatO = o(ratingStyle);
            }
            ratingCompatO.f16d = obj;
        }
        return ratingCompatO;
    }

    public static RatingCompat k(boolean z) {
        return new RatingCompat(1, z ? 1.0f : CropImageView.DEFAULT_ASPECT_RATIO);
    }

    public static RatingCompat l(float f) {
        if (f < CropImageView.DEFAULT_ASPECT_RATIO || f > 100.0f) {
            return null;
        }
        return new RatingCompat(6, f);
    }

    public static RatingCompat m(int i, float f) {
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

    public static RatingCompat n(boolean z) {
        return new RatingCompat(2, z ? 1.0f : CropImageView.DEFAULT_ASPECT_RATIO);
    }

    public static RatingCompat o(int i) {
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
        return this.f14b;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("Rating:style=");
        sb.append(this.f14b);
        sb.append(" rating=");
        float f = this.f15c;
        sb.append(f < CropImageView.DEFAULT_ASPECT_RATIO ? "unrated" : String.valueOf(f));
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.f14b);
        parcel.writeFloat(this.f15c);
    }
}
