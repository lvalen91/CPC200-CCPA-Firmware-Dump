/**
 * Size.java
 * Deobfuscated from: cn.manstep.phonemirrorBox.util.x
 *
 * Parcelable width x height container. Used throughout the app to represent
 * display dimensions, video resolution, etc.
 */
package cn.manstep.autokit.util;

import android.os.Parcel;
import android.os.Parcelable;

public class Size implements Parcelable {

    public static final Parcelable.Creator<Size> CREATOR = new SizeCreator();

    /** Width dimension. /* was: 'f1934b' (renamed from 'b') */ */
    public int width /* was: 'f1934b' */;

    /** Height dimension. /* was: 'f1935c' (renamed from 'c') */ */
    public int height /* was: 'f1935c' */;

    /**
     * Parcelable.Creator implementation.
     * /* was: inner class 'a' */
     */
    static class SizeCreator /* was: 'a' */ implements Parcelable.Creator<Size> {
        SizeCreator() {
        }

        @Override
        public Size createFromParcel(Parcel parcel) {
            return new Size(parcel);
        }

        @Override
        public Size[] newArray(int size) {
            return new Size[size];
        }
    }

    public Size() {
        set(0, 0);
    }

    /**
     * Parse a size string in "WxH", "W*H", "W_H", or "W,H" format.
     * /* was: 'l' */
     */
    public static Size parse(/* was: 'l' */ String str) {
        int[] separators = {42, 120, 95, 44}; // '*', 'x', '_', ','
        int separatorIndex = -1;
        for (int i = 0; i < 4; i++) {
            separatorIndex = str.indexOf(separators[i]);
            if (separatorIndex >= 0) {
                break;
            }
        }
        if (separatorIndex < 0) {
            return new Size();
        }
        try {
            return new Size(
                    Integer.parseInt(str.substring(0, separatorIndex)),
                    Integer.parseInt(str.substring(separatorIndex + 1)));
        } catch (NumberFormatException unused) {
            return new Size();
        }
    }

    @Override
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        if (this == obj) {
            return true;
        }
        if (obj instanceof Size) {
            Size other = (Size) obj;
            return this.width == other.width && this.height == other.height;
        }
        if (!(obj instanceof String)) {
            return false;
        }
        Size parsed = parse((String) obj);
        return this.width == parsed.width && this.height == parsed.height;
    }

    public int hashCode() {
        int h = this.height;
        int w = this.width;
        return h ^ ((w >>> 16) | (w << 16));
    }

    /**
     * Check if the given width and height match this Size.
     * /* was: 'j' */
     */
    public boolean equals(/* was: 'j' */ int w, int h) {
        return w == this.width && h == this.height;
    }

    /**
     * Returns true if either dimension is zero or negative.
     * /* was: 'k' */
     */
    public boolean isEmpty(/* was: 'k' */) {
        return this.width <= 0 || this.height <= 0;
    }

    /**
     * Set width and height.
     * /* was: 'm' */
     */
    public void set(/* was: 'm' */ int w, int h) {
        this.width = w;
        this.height = h;
    }

    /**
     * Copy dimensions from another Size.
     * /* was: 'n' */
     */
    public void copyFrom(/* was: 'n' */ Size other) {
        this.width = other.width;
        this.height = other.height;
    }

    public String toString() {
        return this.width + "x" + this.height;
    }

    @Override
    public void writeToParcel(Parcel parcel, int flags) {
        parcel.writeInt(this.width);
        parcel.writeInt(this.height);
    }

    public Size(int w, int h) {
        set(w, h);
    }

    public Size(Size other) {
        set(other.width, other.height);
    }

    protected Size(Parcel parcel) {
        this.width = parcel.readInt();
        this.height = parcel.readInt();
    }
}
