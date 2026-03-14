.class public final Lokio/Utf8;
.super Ljava/lang/Object;
.source "SourceFile"

.method private constructor <init>()V
  .registers 1
  .line 1
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public static size(Ljava/lang/String;)J
  .registers 3
  .line 1
    invoke-virtual { p0 }, Ljava/lang/String;->length()I
    move-result v0
    const/4 v1, 0
    invoke-static { p0, v1, v0 }, Lokio/Utf8;->size(Ljava/lang/String;II)J
    move-result-wide v0
    return-wide v0
.end method

.method public static size(Ljava/lang/String;II)J
  .registers 12
    if-eqz p0, :L15
    if-ltz p1, :L14
    if-lt p2, p1, :L13
  .line 2
    invoke-virtual { p0 }, Ljava/lang/String;->length()I
    move-result v0
    if-gt p2, v0, :L12
    const-wide/16 v0, 0
  :L0
    if-ge p1, p2, :L11
  .line 3
    invoke-virtual { p0, p1 }, Ljava/lang/String;->charAt(I)C
    move-result v2
    const/16 v3, 128
    const-wide/16 v4, 1
    if-ge v2, v3, :L2
    add-long/2addr v0, v4
  :L1
    add-int/lit8 p1, p1, 1
    goto :L0
  :L2
    const/16 v3, 2048
    if-ge v2, v3, :L4
    const-wide/16 v2, 2
  :L3
    add-long/2addr v0, v2
    goto :L1
  :L4
    const v3, 55296
    if-lt v2, v3, :L10
    const v3, 57343
    if-le v2, v3, :L5
    goto :L10
  :L5
    add-int/lit8 v6, p1, 1
    if-ge v6, p2, :L6
  .line 4
    invoke-virtual { p0, v6 }, Ljava/lang/String;->charAt(I)C
    move-result v7
    goto :L7
  :L6
    const/4 v7, 0
  :L7
    const v8, 56319
    if-gt v2, v8, :L9
    const v2, 56320
    if-lt v7, v2, :L9
    if-le v7, v3, :L8
    goto :L9
  :L8
    const-wide/16 v2, 4
    add-long/2addr v0, v2
    add-int/lit8 p1, p1, 2
    goto :L0
  :L9
    add-long/2addr v0, v4
    move p1, v6
    goto :L0
  :L10
    const-wide/16 v2, 3
    goto :L3
  :L11
    return-wide v0
  :L12
  .line 5
    new-instance p1, Ljava/lang/IllegalArgumentException;
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "endIndex > string.length: "
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0, p2 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    const-string p2, " > "
    invoke-virtual { v0, p2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
  .line 6
    invoke-virtual { p0 }, Ljava/lang/String;->length()I
    move-result p0
    invoke-virtual { v0, p0 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p0
    invoke-direct { p1, p0 }, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
    throw p1
  :L13
  .line 7
    new-instance p0, Ljava/lang/IllegalArgumentException;
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "endIndex < beginIndex: "
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0, p2 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    const-string p2, " < "
    invoke-virtual { v0, p2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0, p1 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p1
    invoke-direct { p0, p1 }, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
    throw p0
  :L14
  .line 8
    new-instance p0, Ljava/lang/IllegalArgumentException;
    new-instance p2, Ljava/lang/StringBuilder;
    invoke-direct { p2 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v0, "beginIndex < 0: "
    invoke-virtual { p2, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { p2, p1 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { p2 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p1
    invoke-direct { p0, p1 }, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
    throw p0
  :L15
  .line 9
    new-instance p0, Ljava/lang/IllegalArgumentException;
    const-string p1, "string == null"
    invoke-direct { p0, p1 }, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
    goto :L17
  :L16
    throw p0
  :L17
    goto :L16
.end method
