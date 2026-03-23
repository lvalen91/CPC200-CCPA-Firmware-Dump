.class public Lcom/yalantis/ucrop/util/ImageHeaderParser;
.super Ljava/lang/Object;
.source "SourceFile"

.annotation system Ldalvik/annotation/MemberClasses;
  value = {
    Lcom/yalantis/ucrop/util/ImageHeaderParser$StreamReader;,
    Lcom/yalantis/ucrop/util/ImageHeaderParser$Reader;,
    Lcom/yalantis/ucrop/util/ImageHeaderParser$RandomAccessReader;
  }
.end annotation

.field private final static BYTES_PER_FORMAT:[I

.field private final static EXIF_MAGIC_NUMBER:I = 65496

.field private final static EXIF_SEGMENT_TYPE:I = 225

.field private final static INTEL_TIFF_MAGIC_NUMBER:I = 18761

.field private final static JPEG_EXIF_SEGMENT_PREAMBLE:Ljava/lang/String; = "Exif\u0000\u0000"

.field private final static JPEG_EXIF_SEGMENT_PREAMBLE_BYTES:[B

.field private final static MARKER_EOI:I = 217

.field private final static MOTOROLA_TIFF_MAGIC_NUMBER:I = 19789

.field private final static ORIENTATION_TAG_TYPE:I = 274

.field private final static SEGMENT_SOS:I = 218

.field private final static SEGMENT_START_ID:I = 255

.field private final static TAG:Ljava/lang/String; = "ImageHeaderParser"

.field public final static UNKNOWN_ORIENTATION:I = -1

.field private final reader:Lcom/yalantis/ucrop/util/ImageHeaderParser$Reader;

.method static constructor <clinit>()V
  .registers 4
    const-string v0, "UTF-8"
  .line 1
    invoke-static { v0 }, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;
    move-result-object v0
    const-string v1, "Exif\u0000\u0000"
    invoke-virtual { v1, v0 }, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B
    move-result-object v0
    sput-object v0, Lcom/yalantis/ucrop/util/ImageHeaderParser;->JPEG_EXIF_SEGMENT_PREAMBLE_BYTES:[B
    const/16 v0, 13
    new-array v0, v0, [I
  .line 2
    fill-array-data v0, :L0
    sput-object v0, Lcom/yalantis/ucrop/util/ImageHeaderParser;->BYTES_PER_FORMAT:[I
    return-void
  :L0
  .array-data 4
    0t 0t 0t 0t
    1t 0t 0t 0t
    1t 0t 0t 0t
    2t 0t 0t 0t
    4t 0t 0t 0t
    8t 0t 0t 0t
    1t 0t 0t 0t
    1t 0t 0t 0t
    2t 0t 0t 0t
    4t 0t 0t 0t
    8t 0t 0t 0t
    4t 0t 0t 0t
    8t 0t 0t 0t
  .end array-data
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
  .registers 3
  .line 1
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
  .line 2
    new-instance v0, Lcom/yalantis/ucrop/util/ImageHeaderParser$StreamReader;
    invoke-direct { v0, p1 }, Lcom/yalantis/ucrop/util/ImageHeaderParser$StreamReader;-><init>(Ljava/io/InputStream;)V
    iput-object v0, p0, Lcom/yalantis/ucrop/util/ImageHeaderParser;->reader:Lcom/yalantis/ucrop/util/ImageHeaderParser$Reader;
    return-void
.end method

.method private static calcTagOffset(II)I
  .registers 2
    add-int/lit8 p0, p0, 2
    mul-int/lit8 p1, p1, 12
    add-int/2addr p0, p1
    return p0
.end method

.method public static copyExif(Landroid/media/ExifInterface;IILjava/lang/String;)V
  .catch Ljava/io/IOException; { :L0 .. :L4 } :L5
  .registers 10
    const/16 v0, 22
    new-array v1, v0, [Ljava/lang/String;
    const-string v2, "FNumber"
    const/4 v3, 0
    aput-object v2, v1, v3
    const-string v2, "DateTime"
    const/4 v4, 1
    aput-object v2, v1, v4
    const/4 v2, 2
    const-string v4, "DateTimeDigitized"
    aput-object v4, v1, v2
    const/4 v2, 3
    const-string v4, "ExposureTime"
    aput-object v4, v1, v2
    const/4 v2, 4
    const-string v4, "Flash"
    aput-object v4, v1, v2
    const/4 v2, 5
    const-string v4, "FocalLength"
    aput-object v4, v1, v2
    const/4 v2, 6
    const-string v4, "GPSAltitude"
    aput-object v4, v1, v2
    const/4 v2, 7
    const-string v4, "GPSAltitudeRef"
    aput-object v4, v1, v2
    const/16 v2, 8
    const-string v4, "GPSDateStamp"
    aput-object v4, v1, v2
    const/16 v2, 9
    const-string v4, "GPSLatitude"
    aput-object v4, v1, v2
    const/16 v2, 10
    const-string v4, "GPSLatitudeRef"
    aput-object v4, v1, v2
    const/16 v2, 11
    const-string v4, "GPSLongitude"
    aput-object v4, v1, v2
    const/16 v2, 12
    const-string v4, "GPSLongitudeRef"
    aput-object v4, v1, v2
    const/16 v2, 13
    const-string v4, "GPSProcessingMethod"
    aput-object v4, v1, v2
    const/16 v2, 14
    const-string v4, "GPSTimeStamp"
    aput-object v4, v1, v2
    const/16 v2, 15
    const-string v4, "ISOSpeedRatings"
    aput-object v4, v1, v2
    const/16 v2, 16
    const-string v4, "Make"
    aput-object v4, v1, v2
    const/16 v2, 17
    const-string v4, "Model"
    aput-object v4, v1, v2
    const/16 v2, 18
    const-string v4, "SubSecTime"
    aput-object v4, v1, v2
    const/16 v2, 19
    const-string v4, "SubSecTimeDigitized"
    aput-object v4, v1, v2
    const/16 v2, 20
    const-string v4, "SubSecTimeOriginal"
    aput-object v4, v1, v2
    const/16 v2, 21
    const-string v4, "WhiteBalance"
    aput-object v4, v1, v2
  :L0
  .line 1
    new-instance v2, Landroid/media/ExifInterface;
    invoke-direct { v2, p3 }, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V
  :L1
    if-ge v3, v0, :L3
  .line 2
    aget-object p3, v1, v3
  .line 3
    invoke-virtual { p0, p3 }, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v4
  .line 4
    invoke-static { v4 }, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    move-result v5
    if-nez v5, :L2
  .line 5
    invoke-virtual { v2, p3, v4 }, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V
  :L2
    add-int/lit8 v3, v3, 1
    goto :L1
  :L3
    const-string p0, "ImageWidth"
  .line 6
    invoke-static { p1 }, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
    move-result-object p1
    invoke-virtual { v2, p0, p1 }, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V
    const-string p0, "ImageLength"
  .line 7
    invoke-static { p2 }, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
    move-result-object p1
    invoke-virtual { v2, p0, p1 }, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V
    const-string p0, "Orientation"
    const-string p1, "0"
  .line 8
    invoke-virtual { v2, p0, p1 }, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V
  .line 9
    invoke-virtual { v2 }, Landroid/media/ExifInterface;->saveAttributes()V
  :L4
    goto :L6
  :L5
    move-exception p0
  .line 10
    invoke-virtual { p0 }, Ljava/io/IOException;->getMessage()Ljava/lang/String;
  :L6
    return-void
.end method

.method private static handles(I)Z
  .registers 3
    const v0, 65496
    and-int v1, p0, v0
    if-eq v1, v0, :L1
    const/16 v0, 19789
    if-eq p0, v0, :L1
    const/16 v0, 18761
    if-ne p0, v0, :L0
    goto :L1
  :L0
    const/4 p0, 0
    goto :L2
  :L1
    const/4 p0, 1
  :L2
    return p0
.end method

.method private hasJpegExifPreamble([BI)Z
  .registers 7
    const/4 v0, 0
    if-eqz p1, :L0
  .line 1
    sget-object v1, Lcom/yalantis/ucrop/util/ImageHeaderParser;->JPEG_EXIF_SEGMENT_PREAMBLE_BYTES:[B
    array-length v1, v1
    if-le p2, v1, :L0
    const/4 p2, 1
    goto :L1
  :L0
    const/4 p2, 0
  :L1
    if-eqz p2, :L4
    const/4 v1, 0
  :L2
  .line 2
    sget-object v2, Lcom/yalantis/ucrop/util/ImageHeaderParser;->JPEG_EXIF_SEGMENT_PREAMBLE_BYTES:[B
    array-length v3, v2
    if-ge v1, v3, :L4
  .line 3
    aget-byte v3, p1, v1
    aget-byte v2, v2, v1
    if-eq v3, v2, :L3
    goto :L5
  :L3
    add-int/lit8 v1, v1, 1
    goto :L2
  :L4
    move v0, p2
  :L5
    return v0
.end method

.method private moveToExifSegmentAndGetLength()I
  .registers 11
  :L0
  .line 1
    iget-object v0, p0, Lcom/yalantis/ucrop/util/ImageHeaderParser;->reader:Lcom/yalantis/ucrop/util/ImageHeaderParser$Reader;
    invoke-interface { v0 }, Lcom/yalantis/ucrop/util/ImageHeaderParser$Reader;->getUInt8()S
    move-result v0
    const/16 v1, 255
    const/4 v2, 3
    const-string v3, "ImageHeaderParser"
    const/4 v4, -1
    if-eq v0, v1, :L2
  .line 2
    invoke-static { v3, v2 }, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z
    move-result v1
    if-eqz v1, :L1
  .line 3
    new-instance v1, Ljava/lang/StringBuilder;
    invoke-direct { v1 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v2, "Unknown segmentId="
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v1, v0 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { v1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
  :L1
    return v4
  :L2
  .line 4
    iget-object v0, p0, Lcom/yalantis/ucrop/util/ImageHeaderParser;->reader:Lcom/yalantis/ucrop/util/ImageHeaderParser$Reader;
    invoke-interface { v0 }, Lcom/yalantis/ucrop/util/ImageHeaderParser$Reader;->getUInt8()S
    move-result v0
    const/16 v1, 218
    if-ne v0, v1, :L3
    return v4
  :L3
    const/16 v1, 217
    if-ne v0, v1, :L4
  .line 5
    invoke-static { v3, v2 }, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z
    move-result v0
    return v4
  :L4
  .line 6
    iget-object v1, p0, Lcom/yalantis/ucrop/util/ImageHeaderParser;->reader:Lcom/yalantis/ucrop/util/ImageHeaderParser$Reader;
    invoke-interface { v1 }, Lcom/yalantis/ucrop/util/ImageHeaderParser$Reader;->getUInt16()I
    move-result v1
    add-int/lit8 v1, v1, -2
    const/16 v5, 225
    if-eq v0, v5, :L6
  .line 7
    iget-object v5, p0, Lcom/yalantis/ucrop/util/ImageHeaderParser;->reader:Lcom/yalantis/ucrop/util/ImageHeaderParser$Reader;
    int-to-long v6, v1
    invoke-interface { v5, v6, v7 }, Lcom/yalantis/ucrop/util/ImageHeaderParser$Reader;->skip(J)J
    move-result-wide v8
    cmp-long v5, v8, v6
    if-eqz v5, :L0
  .line 8
    invoke-static { v3, v2 }, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z
    move-result v2
    if-eqz v2, :L5
  .line 9
    new-instance v2, Ljava/lang/StringBuilder;
    invoke-direct { v2 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v3, "Unable to skip enough data, type: "
    invoke-virtual { v2, v3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v2, v0 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    const-string v0, ", wanted to skip: "
    invoke-virtual { v2, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v2, v1 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    const-string v0, ", but actually skipped: "
    invoke-virtual { v2, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v2, v8, v9 }, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
    invoke-virtual { v2 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
  :L5
    return v4
  :L6
    return v1
.end method

.method private static parseExifSegment(Lcom/yalantis/ucrop/util/ImageHeaderParser$RandomAccessReader;)I
  .registers 13
    const/4 v0, 6
  .line 7
    invoke-virtual { p0, v0 }, Lcom/yalantis/ucrop/util/ImageHeaderParser$RandomAccessReader;->getInt16(I)S
    move-result v1
    const/4 v2, 3
    const-string v3, "ImageHeaderParser"
    const/16 v4, 19789
    if-ne v1, v4, :L0
  .line 8
    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;
    goto :L3
  :L0
    const/16 v4, 18761
    if-ne v1, v4, :L1
  .line 9
    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;
    goto :L3
  :L1
  .line 10
    invoke-static { v3, v2 }, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z
    move-result v4
    if-eqz v4, :L2
  .line 11
    new-instance v4, Ljava/lang/StringBuilder;
    invoke-direct { v4 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v5, "Unknown endianness = "
    invoke-virtual { v4, v5 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v4, v1 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { v4 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
  :L2
  .line 12
    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;
  :L3
  .line 13
    invoke-virtual { p0, v1 }, Lcom/yalantis/ucrop/util/ImageHeaderParser$RandomAccessReader;->order(Ljava/nio/ByteOrder;)V
    const/16 v1, 10
  .line 14
    invoke-virtual { p0, v1 }, Lcom/yalantis/ucrop/util/ImageHeaderParser$RandomAccessReader;->getInt32(I)I
    move-result v1
    add-int/2addr v1, v0
  .line 15
    invoke-virtual { p0, v1 }, Lcom/yalantis/ucrop/util/ImageHeaderParser$RandomAccessReader;->getInt16(I)S
    move-result v0
    const/4 v4, 0
  :L4
    if-ge v4, v0, :L16
  .line 16
    invoke-static { v1, v4 }, Lcom/yalantis/ucrop/util/ImageHeaderParser;->calcTagOffset(II)I
    move-result v5
  .line 17
    invoke-virtual { p0, v5 }, Lcom/yalantis/ucrop/util/ImageHeaderParser$RandomAccessReader;->getInt16(I)S
    move-result v6
    const/16 v7, 274
    if-eq v6, v7, :L5
    goto/16 :L15
  :L5
    add-int/lit8 v7, v5, 2
  .line 18
    invoke-virtual { p0, v7 }, Lcom/yalantis/ucrop/util/ImageHeaderParser$RandomAccessReader;->getInt16(I)S
    move-result v7
    const/4 v8, 1
    if-lt v7, v8, :L14
    const/16 v8, 12
    if-le v7, v8, :L6
    goto/16 :L14
  :L6
    add-int/lit8 v8, v5, 4
  .line 19
    invoke-virtual { p0, v8 }, Lcom/yalantis/ucrop/util/ImageHeaderParser$RandomAccessReader;->getInt32(I)I
    move-result v8
    if-gez v8, :L7
  .line 20
    invoke-static { v3, v2 }, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z
    move-result v5
    goto/16 :L15
  :L7
  .line 21
    invoke-static { v3, v2 }, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z
    move-result v9
    const-string v10, " tagType="
    if-eqz v9, :L8
  .line 22
    new-instance v9, Ljava/lang/StringBuilder;
    invoke-direct { v9 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v11, "Got tagIndex="
    invoke-virtual { v9, v11 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v9, v4 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { v9, v10 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v9, v6 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    const-string v11, " formatCode="
    invoke-virtual { v9, v11 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v9, v7 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    const-string v11, " componentCount="
    invoke-virtual { v9, v11 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v9, v8 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { v9 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
  :L8
  .line 23
    sget-object v9, Lcom/yalantis/ucrop/util/ImageHeaderParser;->BYTES_PER_FORMAT:[I
    aget v9, v9, v7
    add-int/2addr v8, v9
    const/4 v9, 4
    if-le v8, v9, :L9
  .line 24
    invoke-static { v3, v2 }, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z
    move-result v5
    if-eqz v5, :L15
  .line 25
    new-instance v5, Ljava/lang/StringBuilder;
    invoke-direct { v5 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v6, "Got byte count > 4, not orientation, continuing, formatCode="
    invoke-virtual { v5, v6 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v5, v7 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { v5 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    goto :L15
  :L9
    add-int/lit8 v5, v5, 8
    if-ltz v5, :L13
  .line 26
    invoke-virtual { p0 }, Lcom/yalantis/ucrop/util/ImageHeaderParser$RandomAccessReader;->length()I
    move-result v7
    if-le v5, v7, :L10
    goto :L13
  :L10
    if-ltz v8, :L12
    add-int/2addr v8, v5
  .line 27
    invoke-virtual { p0 }, Lcom/yalantis/ucrop/util/ImageHeaderParser$RandomAccessReader;->length()I
    move-result v7
    if-le v8, v7, :L11
    goto :L12
  :L11
  .line 28
    invoke-virtual { p0, v5 }, Lcom/yalantis/ucrop/util/ImageHeaderParser$RandomAccessReader;->getInt16(I)S
    move-result p0
    return p0
  :L12
  .line 29
    invoke-static { v3, v2 }, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z
    move-result v5
    if-eqz v5, :L15
  .line 30
    new-instance v5, Ljava/lang/StringBuilder;
    invoke-direct { v5 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v7, "Illegal number of bytes for TI tag data tagType="
    invoke-virtual { v5, v7 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v5, v6 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { v5 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    goto :L15
  :L13
  .line 31
    invoke-static { v3, v2 }, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z
    move-result v7
    if-eqz v7, :L15
  .line 32
    new-instance v7, Ljava/lang/StringBuilder;
    invoke-direct { v7 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v8, "Illegal tagValueOffset="
    invoke-virtual { v7, v8 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v7, v5 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { v7, v10 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v7, v6 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { v7 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    goto :L15
  :L14
  .line 33
    invoke-static { v3, v2 }, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z
    move-result v5
    if-eqz v5, :L15
  .line 34
    new-instance v5, Ljava/lang/StringBuilder;
    invoke-direct { v5 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v6, "Got invalid format code = "
    invoke-virtual { v5, v6 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v5, v7 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { v5 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
  :L15
    add-int/lit8 v4, v4, 1
    goto/16 :L4
  :L16
    const/4 p0, -1
    return p0
.end method

.method private parseExifSegment([BI)I
  .registers 7
  .line 1
    iget-object v0, p0, Lcom/yalantis/ucrop/util/ImageHeaderParser;->reader:Lcom/yalantis/ucrop/util/ImageHeaderParser$Reader;
    invoke-interface { v0, p1, p2 }, Lcom/yalantis/ucrop/util/ImageHeaderParser$Reader;->read([BI)I
    move-result v0
    const/4 v1, -1
    const/4 v2, 3
    const-string v3, "ImageHeaderParser"
    if-eq v0, p2, :L1
  .line 2
    invoke-static { v3, v2 }, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z
    move-result p1
    if-eqz p1, :L0
  .line 3
    new-instance p1, Ljava/lang/StringBuilder;
    invoke-direct { p1 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v2, "Unable to read exif segment data, length: "
    invoke-virtual { p1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { p1, p2 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    const-string p2, ", actually read: "
    invoke-virtual { p1, p2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { p1, v0 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { p1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
  :L0
    return v1
  :L1
  .line 4
    invoke-direct { p0, p1, p2 }, Lcom/yalantis/ucrop/util/ImageHeaderParser;->hasJpegExifPreamble([BI)Z
    move-result v0
    if-eqz v0, :L2
  .line 5
    new-instance v0, Lcom/yalantis/ucrop/util/ImageHeaderParser$RandomAccessReader;
    invoke-direct { v0, p1, p2 }, Lcom/yalantis/ucrop/util/ImageHeaderParser$RandomAccessReader;-><init>([BI)V
    invoke-static { v0 }, Lcom/yalantis/ucrop/util/ImageHeaderParser;->parseExifSegment(Lcom/yalantis/ucrop/util/ImageHeaderParser$RandomAccessReader;)I
    move-result p1
    return p1
  :L2
  .line 6
    invoke-static { v3, v2 }, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z
    move-result p1
    return v1
.end method

.method public getOrientation()I
  .registers 6
  .line 1
    iget-object v0, p0, Lcom/yalantis/ucrop/util/ImageHeaderParser;->reader:Lcom/yalantis/ucrop/util/ImageHeaderParser$Reader;
    invoke-interface { v0 }, Lcom/yalantis/ucrop/util/ImageHeaderParser$Reader;->getUInt16()I
    move-result v0
  .line 2
    invoke-static { v0 }, Lcom/yalantis/ucrop/util/ImageHeaderParser;->handles(I)Z
    move-result v1
    const/4 v2, 3
    const-string v3, "ImageHeaderParser"
    const/4 v4, -1
    if-nez v1, :L1
  .line 3
    invoke-static { v3, v2 }, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z
    move-result v1
    if-eqz v1, :L0
  .line 4
    new-instance v1, Ljava/lang/StringBuilder;
    invoke-direct { v1 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v2, "Parser doesn't handle magic number: "
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v1, v0 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { v1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
  :L0
    return v4
  :L1
  .line 5
    invoke-direct { p0 }, Lcom/yalantis/ucrop/util/ImageHeaderParser;->moveToExifSegmentAndGetLength()I
    move-result v0
    if-ne v0, v4, :L2
  .line 6
    invoke-static { v3, v2 }, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z
    move-result v0
    return v4
  :L2
  .line 7
    new-array v1, v0, [B
  .line 8
    invoke-direct { p0, v1, v0 }, Lcom/yalantis/ucrop/util/ImageHeaderParser;->parseExifSegment([BI)I
    move-result v0
    return v0
.end method
