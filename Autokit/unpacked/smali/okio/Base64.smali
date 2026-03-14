.class final Lokio/Base64;
.super Ljava/lang/Object;
.source "SourceFile"

.field private final static MAP:[B

.field private final static URL_MAP:[B

.method static constructor <clinit>()V
  .registers 3
    const/16 v0, 64
    new-array v1, v0, [B
  .line 1
    fill-array-data v1, :L0
    sput-object v1, Lokio/Base64;->MAP:[B
    new-array v0, v0, [B
  .line 2
    fill-array-data v0, :L1
    sput-object v0, Lokio/Base64;->URL_MAP:[B
    return-void
  :L0
  .array-data 1
    65t
    66t
    67t
    68t
    69t
    70t
    71t
    72t
    73t
    74t
    75t
    76t
    77t
    78t
    79t
    80t
    81t
    82t
    83t
    84t
    85t
    86t
    87t
    88t
    89t
    90t
    97t
    98t
    99t
    100t
    101t
    102t
    103t
    104t
    105t
    106t
    107t
    108t
    109t
    110t
    111t
    112t
    113t
    114t
    115t
    116t
    117t
    118t
    119t
    120t
    121t
    122t
    48t
    49t
    50t
    51t
    52t
    53t
    54t
    55t
    56t
    57t
    43t
    47t
  .end array-data
  :L1
  .array-data 1
    65t
    66t
    67t
    68t
    69t
    70t
    71t
    72t
    73t
    74t
    75t
    76t
    77t
    78t
    79t
    80t
    81t
    82t
    83t
    84t
    85t
    86t
    87t
    88t
    89t
    90t
    97t
    98t
    99t
    100t
    101t
    102t
    103t
    104t
    105t
    106t
    107t
    108t
    109t
    110t
    111t
    112t
    113t
    114t
    115t
    116t
    117t
    118t
    119t
    120t
    121t
    122t
    48t
    49t
    50t
    51t
    52t
    53t
    54t
    55t
    56t
    57t
    45t
    95t
  .end array-data
.end method

.method private constructor <init>()V
  .registers 1
  .line 1
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public static decode(Ljava/lang/String;)[B
  .registers 16
  .line 1
    invoke-virtual { p0 }, Ljava/lang/String;->length()I
    move-result v0
  :L0
    const/16 v1, 9
    const/16 v2, 32
    const/16 v3, 13
    const/16 v4, 10
    if-lez v0, :L2
    add-int/lit8 v5, v0, -1
  .line 2
    invoke-virtual { p0, v5 }, Ljava/lang/String;->charAt(I)C
    move-result v5
    const/16 v6, 61
    if-eq v5, v6, :L1
    if-eq v5, v4, :L1
    if-eq v5, v3, :L1
    if-eq v5, v2, :L1
    if-eq v5, v1, :L1
    goto :L2
  :L1
    add-int/lit8 v0, v0, -1
    goto :L0
  :L2
    int-to-long v5, v0
    const-wide/16 v7, 6
    mul-long v5, v5, v7
    const-wide/16 v7, 8
  .line 3
    div-long/2addr v5, v7
    long-to-int v6, v5
    new-array v5, v6, [B
    const/4 v7, 0
    const/4 v8, 0
    const/4 v9, 0
    const/4 v10, 0
    const/4 v11, 0
  :L3
    const/4 v12, 0
    if-ge v8, v0, :L14
  .line 4
    invoke-virtual { p0, v8 }, Ljava/lang/String;->charAt(I)C
    move-result v13
    const/16 v14, 65
    if-lt v13, v14, :L4
    const/16 v14, 90
    if-gt v13, v14, :L4
    add-int/lit8 v13, v13, -65
    goto :L12
  :L4
    const/16 v14, 97
    if-lt v13, v14, :L5
    const/16 v14, 122
    if-gt v13, v14, :L5
    add-int/lit8 v13, v13, -71
    goto :L12
  :L5
    const/16 v14, 48
    if-lt v13, v14, :L6
    const/16 v14, 57
    if-gt v13, v14, :L6
    add-int/lit8 v13, v13, 4
    goto :L12
  :L6
    const/16 v14, 43
    if-eq v13, v14, :L11
    const/16 v14, 45
    if-ne v13, v14, :L7
    goto :L11
  :L7
    const/16 v14, 47
    if-eq v13, v14, :L10
    const/16 v14, 95
    if-ne v13, v14, :L8
    goto :L10
  :L8
    if-eq v13, v4, :L13
    if-eq v13, v3, :L13
    if-eq v13, v2, :L13
    if-ne v13, v1, :L9
    goto :L13
  :L9
    return-object v12
  :L10
    const/16 v13, 63
    goto :L12
  :L11
    const/16 v13, 62
  :L12
    shl-int/lit8 v10, v10, 6
    int-to-byte v12, v13
    or-int/2addr v10, v12
    add-int/lit8 v9, v9, 1
  .line 5
    rem-int/lit8 v12, v9, 4
    if-nez v12, :L13
    add-int/lit8 v12, v11, 1
    shr-int/lit8 v13, v10, 16
    int-to-byte v13, v13
  .line 6
    aput-byte v13, v5, v11
    add-int/lit8 v11, v12, 1
    shr-int/lit8 v13, v10, 8
    int-to-byte v13, v13
  .line 7
    aput-byte v13, v5, v12
    add-int/lit8 v12, v11, 1
    int-to-byte v13, v10
  .line 8
    aput-byte v13, v5, v11
    move v11, v12
  :L13
    add-int/lit8 v8, v8, 1
    goto :L3
  :L14
  .line 9
    rem-int/lit8 v9, v9, 4
    const/4 p0, 1
    if-ne v9, p0, :L15
    return-object v12
  :L15
    const/4 p0, 2
    if-ne v9, p0, :L16
    shl-int/lit8 p0, v10, 12
    add-int/lit8 v0, v11, 1
    shr-int/lit8 p0, p0, 16
    int-to-byte p0, p0
  .line 10
    aput-byte p0, v5, v11
    move v11, v0
    goto :L17
  :L16
    const/4 p0, 3
    if-ne v9, p0, :L17
    shl-int/lit8 p0, v10, 6
    add-int/lit8 v0, v11, 1
    shr-int/lit8 v1, p0, 16
    int-to-byte v1, v1
  .line 11
    aput-byte v1, v5, v11
    add-int/lit8 v11, v0, 1
    shr-int/lit8 p0, p0, 8
    int-to-byte p0, p0
  .line 12
    aput-byte p0, v5, v0
  :L17
    if-ne v11, v6, :L18
    return-object v5
  :L18
  .line 13
    new-array p0, v11, [B
  .line 14
    invoke-static { v5, v7, p0, v7, v11 }, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    return-object p0
.end method

.method public static encode([B)Ljava/lang/String;
  .registers 2
  .line 1
    sget-object v0, Lokio/Base64;->MAP:[B
    invoke-static { p0, v0 }, Lokio/Base64;->encode([B[B)Ljava/lang/String;
    move-result-object p0
    return-object p0
.end method

.method private static encode([B[B)Ljava/lang/String;
  .catch Ljava/io/UnsupportedEncodingException; { :L4 .. :L5 } :L6
  .registers 11
  .line 2
    array-length v0, p0
    const/4 v1, 2
    add-int/2addr v0, v1
    div-int/lit8 v0, v0, 3
    mul-int/lit8 v0, v0, 4
  .line 3
    new-array v0, v0, [B
  .line 4
    array-length v2, p0
    array-length v3, p0
    rem-int/lit8 v3, v3, 3
    sub-int/2addr v2, v3
    const/4 v3, 0
    const/4 v4, 0
  :L0
    if-ge v3, v2, :L1
    add-int/lit8 v5, v4, 1
  .line 5
    aget-byte v6, p0, v3
    and-int/lit16 v6, v6, 255
    shr-int/2addr v6, v1
    aget-byte v6, p1, v6
    aput-byte v6, v0, v4
    add-int/lit8 v4, v5, 1
  .line 6
    aget-byte v6, p0, v3
    and-int/lit8 v6, v6, 3
    shl-int/lit8 v6, v6, 4
    add-int/lit8 v7, v3, 1
    aget-byte v8, p0, v7
    and-int/lit16 v8, v8, 255
    shr-int/lit8 v8, v8, 4
    or-int/2addr v6, v8
    aget-byte v6, p1, v6
    aput-byte v6, v0, v5
    add-int/lit8 v5, v4, 1
  .line 7
    aget-byte v6, p0, v7
    and-int/lit8 v6, v6, 15
    shl-int/2addr v6, v1
    add-int/lit8 v7, v3, 2
    aget-byte v8, p0, v7
    and-int/lit16 v8, v8, 255
    shr-int/lit8 v8, v8, 6
    or-int/2addr v6, v8
    aget-byte v6, p1, v6
    aput-byte v6, v0, v4
    add-int/lit8 v4, v5, 1
  .line 8
    aget-byte v6, p0, v7
    and-int/lit8 v6, v6, 63
    aget-byte v6, p1, v6
    aput-byte v6, v0, v5
    add-int/lit8 v3, v3, 3
    goto :L0
  :L1
  .line 9
    array-length v3, p0
    rem-int/lit8 v3, v3, 3
    const/16 v5, 61
    const/4 v6, 1
    if-eq v3, v6, :L3
    if-eq v3, v1, :L2
    goto :L4
  :L2
    add-int/lit8 v3, v4, 1
  .line 10
    aget-byte v7, p0, v2
    and-int/lit16 v7, v7, 255
    shr-int/2addr v7, v1
    aget-byte v7, p1, v7
    aput-byte v7, v0, v4
    add-int/lit8 v4, v3, 1
  .line 11
    aget-byte v7, p0, v2
    and-int/lit8 v7, v7, 3
    shl-int/lit8 v7, v7, 4
    add-int/2addr v2, v6
    aget-byte v6, p0, v2
    and-int/lit16 v6, v6, 255
    shr-int/lit8 v6, v6, 4
    or-int/2addr v6, v7
    aget-byte v6, p1, v6
    aput-byte v6, v0, v3
    add-int/lit8 v3, v4, 1
  .line 12
    aget-byte p0, p0, v2
    and-int/lit8 p0, p0, 15
    shl-int/2addr p0, v1
    aget-byte p0, p1, p0
    aput-byte p0, v0, v4
  .line 13
    aput-byte v5, v0, v3
    goto :L4
  :L3
    add-int/lit8 v3, v4, 1
  .line 14
    aget-byte v6, p0, v2
    and-int/lit16 v6, v6, 255
    shr-int/lit8 v1, v6, 2
    aget-byte v1, p1, v1
    aput-byte v1, v0, v4
    add-int/lit8 v1, v3, 1
  .line 15
    aget-byte p0, p0, v2
    and-int/lit8 p0, p0, 3
    shl-int/lit8 p0, p0, 4
    aget-byte p0, p1, p0
    aput-byte p0, v0, v3
    add-int/lit8 p0, v1, 1
  .line 16
    aput-byte v5, v0, v1
  .line 17
    aput-byte v5, v0, p0
  :L4
  .line 18
    new-instance p0, Ljava/lang/String;
    const-string p1, "US-ASCII"
    invoke-direct { p0, v0, p1 }, Ljava/lang/String;-><init>([BLjava/lang/String;)V
  :L5
    return-object p0
  :L6
    move-exception p0
  .line 19
    new-instance p1, Ljava/lang/AssertionError;
    invoke-direct { p1, p0 }, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V
    goto :L8
  :L7
    throw p1
  :L8
    goto :L7
.end method

.method public static encodeUrl([B)Ljava/lang/String;
  .registers 2
  .line 1
    sget-object v0, Lokio/Base64;->URL_MAP:[B
    invoke-static { p0, v0 }, Lokio/Base64;->encode([B[B)Ljava/lang/String;
    move-result-object p0
    return-object p0
.end method
