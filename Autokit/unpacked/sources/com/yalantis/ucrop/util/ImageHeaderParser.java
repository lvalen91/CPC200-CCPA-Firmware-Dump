package com.yalantis.ucrop.util;

import android.media.ExifInterface;
import android.text.TextUtils;
import android.util.Log;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.charset.Charset;

/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class ImageHeaderParser {
    private static final int EXIF_MAGIC_NUMBER = 65496;
    private static final int EXIF_SEGMENT_TYPE = 225;
    private static final int INTEL_TIFF_MAGIC_NUMBER = 18761;
    private static final int MARKER_EOI = 217;
    private static final int MOTOROLA_TIFF_MAGIC_NUMBER = 19789;
    private static final int ORIENTATION_TAG_TYPE = 274;
    private static final int SEGMENT_SOS = 218;
    private static final int SEGMENT_START_ID = 255;
    private static final String TAG = "ImageHeaderParser";
    public static final int UNKNOWN_ORIENTATION = -1;
    private final Reader reader;
    private static final String JPEG_EXIF_SEGMENT_PREAMBLE = "Exif\u0000\u0000";
    private static final byte[] JPEG_EXIF_SEGMENT_PREAMBLE_BYTES = JPEG_EXIF_SEGMENT_PREAMBLE.getBytes(Charset.forName("UTF-8"));
    private static final int[] BYTES_PER_FORMAT = {0, 1, 1, 2, 4, 8, 1, 1, 2, 4, 8, 4, 8};

    private static class RandomAccessReader {
        private final ByteBuffer data;

        public RandomAccessReader(byte[] bArr, int i) {
            this.data = (ByteBuffer) ByteBuffer.wrap(bArr).order(ByteOrder.BIG_ENDIAN).limit(i);
        }

        public short getInt16(int i) {
            return this.data.getShort(i);
        }

        public int getInt32(int i) {
            return this.data.getInt(i);
        }

        public int length() {
            return this.data.remaining();
        }

        public void order(ByteOrder byteOrder) {
            this.data.order(byteOrder);
        }
    }

    private interface Reader {
        int getUInt16();

        short getUInt8();

        int read(byte[] bArr, int i);

        long skip(long j);
    }

    private static class StreamReader implements Reader {

        /* JADX INFO: renamed from: is */
        private final InputStream f7509is;

        public StreamReader(InputStream inputStream) {
            this.f7509is = inputStream;
        }

        @Override // com.yalantis.ucrop.util.ImageHeaderParser.Reader
        public int getUInt16() {
            return ((this.f7509is.read() << 8) & 65280) | (this.f7509is.read() & ImageHeaderParser.SEGMENT_START_ID);
        }

        @Override // com.yalantis.ucrop.util.ImageHeaderParser.Reader
        public short getUInt8() {
            return (short) (this.f7509is.read() & ImageHeaderParser.SEGMENT_START_ID);
        }

        @Override // com.yalantis.ucrop.util.ImageHeaderParser.Reader
        public int read(byte[] bArr, int i) throws IOException {
            int i2 = i;
            while (i2 > 0) {
                int i3 = this.f7509is.read(bArr, i - i2, i2);
                if (i3 == -1) {
                    break;
                }
                i2 -= i3;
            }
            return i - i2;
        }

        @Override // com.yalantis.ucrop.util.ImageHeaderParser.Reader
        public long skip(long j) throws IOException {
            if (j < 0) {
                return 0L;
            }
            long j2 = j;
            while (j2 > 0) {
                long jSkip = this.f7509is.skip(j2);
                if (jSkip <= 0) {
                    if (this.f7509is.read() == -1) {
                        break;
                    }
                    jSkip = 1;
                }
                j2 -= jSkip;
            }
            return j - j2;
        }
    }

    public ImageHeaderParser(InputStream inputStream) {
        this.reader = new StreamReader(inputStream);
    }

    private static int calcTagOffset(int i, int i2) {
        return i + 2 + (i2 * 12);
    }

    public static void copyExif(ExifInterface exifInterface, int i, int i2, String str) {
        String[] strArr = {"FNumber", "DateTime", "DateTimeDigitized", "ExposureTime", "Flash", "FocalLength", "GPSAltitude", "GPSAltitudeRef", "GPSDateStamp", "GPSLatitude", "GPSLatitudeRef", "GPSLongitude", "GPSLongitudeRef", "GPSProcessingMethod", "GPSTimeStamp", "ISOSpeedRatings", "Make", "Model", "SubSecTime", "SubSecTimeDigitized", "SubSecTimeOriginal", "WhiteBalance"};
        try {
            ExifInterface exifInterface2 = new ExifInterface(str);
            for (int i3 = 0; i3 < 22; i3++) {
                String str2 = strArr[i3];
                String attribute = exifInterface.getAttribute(str2);
                if (!TextUtils.isEmpty(attribute)) {
                    exifInterface2.setAttribute(str2, attribute);
                }
            }
            exifInterface2.setAttribute("ImageWidth", String.valueOf(i));
            exifInterface2.setAttribute("ImageLength", String.valueOf(i2));
            exifInterface2.setAttribute("Orientation", "0");
            exifInterface2.saveAttributes();
        } catch (IOException e) {
            e.getMessage();
        }
    }

    private static boolean handles(int i) {
        return (i & EXIF_MAGIC_NUMBER) == EXIF_MAGIC_NUMBER || i == MOTOROLA_TIFF_MAGIC_NUMBER || i == INTEL_TIFF_MAGIC_NUMBER;
    }

    private boolean hasJpegExifPreamble(byte[] bArr, int i) {
        boolean z = bArr != null && i > JPEG_EXIF_SEGMENT_PREAMBLE_BYTES.length;
        if (z) {
            int i2 = 0;
            while (true) {
                byte[] bArr2 = JPEG_EXIF_SEGMENT_PREAMBLE_BYTES;
                if (i2 >= bArr2.length) {
                    break;
                }
                if (bArr[i2] != bArr2[i2]) {
                    return false;
                }
                i2++;
            }
        }
        return z;
    }

    private int moveToExifSegmentAndGetLength() {
        short uInt8;
        int uInt16;
        long j;
        long jSkip;
        do {
            short uInt82 = this.reader.getUInt8();
            if (uInt82 != SEGMENT_START_ID) {
                if (Log.isLoggable(TAG, 3)) {
                    String str = "Unknown segmentId=" + ((int) uInt82);
                }
                return -1;
            }
            uInt8 = this.reader.getUInt8();
            if (uInt8 == SEGMENT_SOS) {
                return -1;
            }
            if (uInt8 == MARKER_EOI) {
                Log.isLoggable(TAG, 3);
                return -1;
            }
            uInt16 = this.reader.getUInt16() - 2;
            if (uInt8 == EXIF_SEGMENT_TYPE) {
                return uInt16;
            }
            j = uInt16;
            jSkip = this.reader.skip(j);
        } while (jSkip == j);
        if (Log.isLoggable(TAG, 3)) {
            String str2 = "Unable to skip enough data, type: " + ((int) uInt8) + ", wanted to skip: " + uInt16 + ", but actually skipped: " + jSkip;
        }
        return -1;
    }

    private int parseExifSegment(byte[] bArr, int i) {
        int i2 = this.reader.read(bArr, i);
        if (i2 == i) {
            if (hasJpegExifPreamble(bArr, i)) {
                return parseExifSegment(new RandomAccessReader(bArr, i));
            }
            Log.isLoggable(TAG, 3);
            return -1;
        }
        if (Log.isLoggable(TAG, 3)) {
            String str = "Unable to read exif segment data, length: " + i + ", actually read: " + i2;
        }
        return -1;
    }

    public int getOrientation() {
        int uInt16 = this.reader.getUInt16();
        if (handles(uInt16)) {
            int iMoveToExifSegmentAndGetLength = moveToExifSegmentAndGetLength();
            if (iMoveToExifSegmentAndGetLength != -1) {
                return parseExifSegment(new byte[iMoveToExifSegmentAndGetLength], iMoveToExifSegmentAndGetLength);
            }
            Log.isLoggable(TAG, 3);
            return -1;
        }
        if (Log.isLoggable(TAG, 3)) {
            String str = "Parser doesn't handle magic number: " + uInt16;
        }
        return -1;
    }

    private static int parseExifSegment(RandomAccessReader randomAccessReader) {
        ByteOrder byteOrder;
        short int16 = randomAccessReader.getInt16(6);
        if (int16 == MOTOROLA_TIFF_MAGIC_NUMBER) {
            byteOrder = ByteOrder.BIG_ENDIAN;
        } else if (int16 == INTEL_TIFF_MAGIC_NUMBER) {
            byteOrder = ByteOrder.LITTLE_ENDIAN;
        } else {
            if (Log.isLoggable(TAG, 3)) {
                String str = "Unknown endianness = " + ((int) int16);
            }
            byteOrder = ByteOrder.BIG_ENDIAN;
        }
        randomAccessReader.order(byteOrder);
        int int32 = randomAccessReader.getInt32(10) + 6;
        short int162 = randomAccessReader.getInt16(int32);
        for (int i = 0; i < int162; i++) {
            int iCalcTagOffset = calcTagOffset(int32, i);
            short int163 = randomAccessReader.getInt16(iCalcTagOffset);
            if (int163 == ORIENTATION_TAG_TYPE) {
                short int164 = randomAccessReader.getInt16(iCalcTagOffset + 2);
                if (int164 >= 1 && int164 <= 12) {
                    int int322 = randomAccessReader.getInt32(iCalcTagOffset + 4);
                    if (int322 < 0) {
                        Log.isLoggable(TAG, 3);
                    } else {
                        if (Log.isLoggable(TAG, 3)) {
                            String str2 = "Got tagIndex=" + i + " tagType=" + ((int) int163) + " formatCode=" + ((int) int164) + " componentCount=" + int322;
                        }
                        int i2 = int322 + BYTES_PER_FORMAT[int164];
                        if (i2 > 4) {
                            if (Log.isLoggable(TAG, 3)) {
                                String str3 = "Got byte count > 4, not orientation, continuing, formatCode=" + ((int) int164);
                            }
                        } else {
                            int i3 = iCalcTagOffset + 8;
                            if (i3 >= 0 && i3 <= randomAccessReader.length()) {
                                if (i2 >= 0 && i2 + i3 <= randomAccessReader.length()) {
                                    return randomAccessReader.getInt16(i3);
                                }
                                if (Log.isLoggable(TAG, 3)) {
                                    String str4 = "Illegal number of bytes for TI tag data tagType=" + ((int) int163);
                                }
                            } else if (Log.isLoggable(TAG, 3)) {
                                String str5 = "Illegal tagValueOffset=" + i3 + " tagType=" + ((int) int163);
                            }
                        }
                    }
                } else if (Log.isLoggable(TAG, 3)) {
                    String str6 = "Got invalid format code = " + ((int) int164);
                }
            }
        }
        return -1;
    }
}
