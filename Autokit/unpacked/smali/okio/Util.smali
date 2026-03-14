.class final Lokio/Util;
.super Ljava/lang/Object;
.source "SourceFile"

.field public final static UTF_8:Ljava/nio/charset/Charset;

.method static constructor <clinit>()V
  .registers 3
    const-string v0, "UTF-8"
  .line 1
    invoke-static { v0 }, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;
    move-result-object v0
    sput-object v0, Lokio/Util;->UTF_8:Ljava/nio/charset/Charset;
    return-void
.end method

.method private constructor <init>()V
  .registers 1
  .line 1
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public static arrayRangeEquals([BI[BII)Z
  .registers 9
    const/4 v0, 0
    const/4 v1, 0
  :L0
    if-ge v1, p4, :L2
    add-int v2, v1, p1
  .line 1
    aget-byte v2, p0, v2
    add-int v3, v1, p3
    aget-byte v3, p2, v3
    if-eq v2, v3, :L1
    return v0
  :L1
    add-int/lit8 v1, v1, 1
    goto :L0
  :L2
    const/4 p0, 1
    return p0
.end method

.method public static checkOffsetAndCount(JJJ)V
  .registers 11
    or-long v0, p2, p4
    const-wide/16 v2, 0
    cmp-long v4, v0, v2
    if-ltz v4, :L0
    cmp-long v0, p2, p0
    if-gtz v0, :L0
    sub-long v0, p0, p2
    cmp-long v2, v0, p4
    if-ltz v2, :L0
    return-void
  :L0
  .line 1
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;
    const/4 v1, 3
    new-array v1, v1, [Ljava/lang/Object;
    const/4 v2, 0
  .line 2
    invoke-static { p0, p1 }, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    move-result-object p0
    aput-object p0, v1, v2
    const/4 p0, 1
    invoke-static { p2, p3 }, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    move-result-object p1
    aput-object p1, v1, p0
    const/4 p0, 2
    invoke-static { p4, p5 }, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    move-result-object p1
    aput-object p1, v1, p0
    const-string p0, "size=%s offset=%s byteCount=%s"
    invoke-static { p0, v1 }, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    move-result-object p0
    invoke-direct { v0, p0 }, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V
    throw v0
.end method

.method public static reverseBytesInt(I)I
  .registers 3
    const/high16 v0, -256
    and-int/2addr v0, p0
    ushr-int/lit8 v0, v0, 24
    const/high16 v1, 255
    and-int/2addr v1, p0
    ushr-int/lit8 v1, v1, 8
    or-int/2addr v0, v1
    const v1, 65280
    and-int/2addr v1, p0
    shl-int/lit8 v1, v1, 8
    or-int/2addr v0, v1
    and-int/lit16 p0, p0, 255
    shl-int/lit8 p0, p0, 24
    or-int/2addr p0, v0
    return p0
.end method

.method public static reverseBytesLong(J)J
  .registers 10
    const-wide/high16 v0, -256
    and-long/2addr v0, p0
    const/16 v2, 56
    ushr-long/2addr v0, v2
    const-wide/high16 v3, 255
    and-long/2addr v3, p0
    const/16 v5, 40
    ushr-long/2addr v3, v5
    or-long/2addr v0, v3
    const-wide v3, 280375465082880L
    and-long/2addr v3, p0
    const/16 v6, 24
    ushr-long/2addr v3, v6
    or-long/2addr v0, v3
    const-wide v3, 1095216660480L
    and-long/2addr v3, p0
    const/16 v7, 8
    ushr-long/2addr v3, v7
    or-long/2addr v0, v3
    const-wide v3, 4278190080L
    and-long/2addr v3, p0
    shl-long/2addr v3, v7
    or-long/2addr v0, v3
    const-wide/32 v3, 16711680
    and-long/2addr v3, p0
    shl-long/2addr v3, v6
    or-long/2addr v0, v3
    const-wide/32 v3, 65280
    and-long/2addr v3, p0
    shl-long/2addr v3, v5
    or-long/2addr v0, v3
    const-wide/16 v3, 255
    and-long/2addr p0, v3
    shl-long/2addr p0, v2
    or-long/2addr p0, v0
    return-wide p0
.end method

.method public static reverseBytesShort(S)S
  .registers 2
    const v0, 65535
    and-int/2addr p0, v0
    const v0, 65280
    and-int/2addr v0, p0
    ushr-int/lit8 v0, v0, 8
    and-int/lit16 p0, p0, 255
    shl-int/lit8 p0, p0, 8
    or-int/2addr p0, v0
    int-to-short p0, p0
    return p0
.end method

.method public static sneakyRethrow(Ljava/lang/Throwable;)V
  .registers 1
  .line 1
    invoke-static { p0 }, Lokio/Util;->sneakyThrow2(Ljava/lang/Throwable;)V
    return-void
.end method

.method private static sneakyThrow2(Ljava/lang/Throwable;)V
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "<T:",
      "Ljava/lang/Throwable;",
      ">(",
      "Ljava/lang/Throwable;",
      ")V^TT;"
    }
  .end annotation
  .registers 1
  .line 1
    throw p0
.end method
