.class public final Ld/c/b/e/c/c;
.super Ljava/lang/Object;
.source "SourceFile"

.field private final static a:[I

.method static constructor <clinit>()V
  .registers 3
    const/16 v0, 96
    new-array v0, v0, [I
  .line 1
    fill-array-data v0, :L0
    sput-object v0, Ld/c/b/e/c/c;->a:[I
    return-void
  :L0
  .array-data 4
    -1t -1t -1t -1t
    -1t -1t -1t -1t
    -1t -1t -1t -1t
    -1t -1t -1t -1t
    -1t -1t -1t -1t
    -1t -1t -1t -1t
    -1t -1t -1t -1t
    -1t -1t -1t -1t
    -1t -1t -1t -1t
    -1t -1t -1t -1t
    -1t -1t -1t -1t
    -1t -1t -1t -1t
    -1t -1t -1t -1t
    -1t -1t -1t -1t
    -1t -1t -1t -1t
    -1t -1t -1t -1t
    -1t -1t -1t -1t
    -1t -1t -1t -1t
    -1t -1t -1t -1t
    -1t -1t -1t -1t
    -1t -1t -1t -1t
    -1t -1t -1t -1t
    -1t -1t -1t -1t
    -1t -1t -1t -1t
    -1t -1t -1t -1t
    -1t -1t -1t -1t
    -1t -1t -1t -1t
    -1t -1t -1t -1t
    -1t -1t -1t -1t
    -1t -1t -1t -1t
    -1t -1t -1t -1t
    -1t -1t -1t -1t
    36t 0t 0t 0t
    -1t -1t -1t -1t
    -1t -1t -1t -1t
    -1t -1t -1t -1t
    37t 0t 0t 0t
    38t 0t 0t 0t
    -1t -1t -1t -1t
    -1t -1t -1t -1t
    -1t -1t -1t -1t
    -1t -1t -1t -1t
    39t 0t 0t 0t
    40t 0t 0t 0t
    -1t -1t -1t -1t
    41t 0t 0t 0t
    42t 0t 0t 0t
    43t 0t 0t 0t
    0t 0t 0t 0t
    1t 0t 0t 0t
    2t 0t 0t 0t
    3t 0t 0t 0t
    4t 0t 0t 0t
    5t 0t 0t 0t
    6t 0t 0t 0t
    7t 0t 0t 0t
    8t 0t 0t 0t
    9t 0t 0t 0t
    44t 0t 0t 0t
    -1t -1t -1t -1t
    -1t -1t -1t -1t
    -1t -1t -1t -1t
    -1t -1t -1t -1t
    -1t -1t -1t -1t
    -1t -1t -1t -1t
    10t 0t 0t 0t
    11t 0t 0t 0t
    12t 0t 0t 0t
    13t 0t 0t 0t
    14t 0t 0t 0t
    15t 0t 0t 0t
    16t 0t 0t 0t
    17t 0t 0t 0t
    18t 0t 0t 0t
    19t 0t 0t 0t
    20t 0t 0t 0t
    21t 0t 0t 0t
    22t 0t 0t 0t
    23t 0t 0t 0t
    24t 0t 0t 0t
    25t 0t 0t 0t
    26t 0t 0t 0t
    27t 0t 0t 0t
    28t 0t 0t 0t
    29t 0t 0t 0t
    30t 0t 0t 0t
    31t 0t 0t 0t
    32t 0t 0t 0t
    33t 0t 0t 0t
    34t 0t 0t 0t
    35t 0t 0t 0t
    -1t -1t -1t -1t
    -1t -1t -1t -1t
    -1t -1t -1t -1t
    -1t -1t -1t -1t
    -1t -1t -1t -1t
  .end array-data
.end method

.method public constructor <init>()V
  .registers 2
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method static a(Ljava/lang/String;Ld/c/b/d/a;Ljava/lang/String;)V
  .catch Ljava/io/UnsupportedEncodingException; { :L0 .. :L1 } :L4
  .registers 6
  :L0
  .line 1
    invoke-virtual { p0, p2 }, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    move-result-object p0
  :L1
  .line 2
    array-length p2, p0
    const/4 v0, 0
  :L2
    if-ge v0, p2, :L3
    aget-byte v1, p0, v0
    const/16 v2, 8
  .line 3
    invoke-virtual { p1, v1, v2 }, Ld/c/b/d/a;->c(II)V
    add-int/lit8 v0, v0, 1
    goto :L2
  :L3
    return-void
  :L4
    move-exception p0
  .line 4
    new-instance p1, Ld/c/b/c;
    invoke-direct { p1, p0 }, Ld/c/b/c;-><init>(Ljava/lang/Throwable;)V
    goto :L6
  :L5
    throw p1
  :L6
    goto :L5
.end method

.method static b(Ljava/lang/CharSequence;Ld/c/b/d/a;)V
  .registers 7
  .line 1
    invoke-interface { p0 }, Ljava/lang/CharSequence;->length()I
    move-result v0
    const/4 v1, 0
  :L0
    if-ge v1, v0, :L4
  .line 2
    invoke-interface { p0, v1 }, Ljava/lang/CharSequence;->charAt(I)C
    move-result v2
    invoke-static { v2 }, Ld/c/b/e/c/c;->p(I)I
    move-result v2
    const/4 v3, -1
    if-eq v2, v3, :L3
    add-int/lit8 v4, v1, 1
    if-ge v4, v0, :L2
  .line 3
    invoke-interface { p0, v4 }, Ljava/lang/CharSequence;->charAt(I)C
    move-result v4
    invoke-static { v4 }, Ld/c/b/e/c/c;->p(I)I
    move-result v4
    if-eq v4, v3, :L1
    mul-int/lit8 v2, v2, 45
    add-int/2addr v2, v4
    const/16 v3, 11
  .line 4
    invoke-virtual { p1, v2, v3 }, Ld/c/b/d/a;->c(II)V
    add-int/lit8 v1, v1, 2
    goto :L0
  :L1
  .line 5
    new-instance p0, Ld/c/b/c;
    invoke-direct { p0 }, Ld/c/b/c;-><init>()V
    throw p0
  :L2
    const/4 v1, 6
  .line 6
    invoke-virtual { p1, v2, v1 }, Ld/c/b/d/a;->c(II)V
    move v1, v4
    goto :L0
  :L3
  .line 7
    new-instance p0, Ld/c/b/c;
    invoke-direct { p0 }, Ld/c/b/c;-><init>()V
    throw p0
  :L4
    return-void
.end method

.method static c(Ljava/lang/String;Ld/c/b/e/b/b;Ld/c/b/d/a;Ljava/lang/String;)V
  .registers 6
  .line 1
    sget-object v0, Ld/c/b/e/c/c$a;->a:[I
    invoke-virtual { p1 }, Ljava/lang/Enum;->ordinal()I
    move-result v1
    aget v0, v0, v1
    const/4 v1, 1
    if-eq v0, v1, :L3
    const/4 v1, 2
    if-eq v0, v1, :L2
    const/4 v1, 3
    if-eq v0, v1, :L1
    const/4 p3, 4
    if-ne v0, p3, :L0
  .line 2
    invoke-static { p0, p2 }, Ld/c/b/e/c/c;->e(Ljava/lang/String;Ld/c/b/d/a;)V
    return-void
  :L0
  .line 3
    new-instance p0, Ld/c/b/c;
    new-instance p2, Ljava/lang/StringBuilder;
    const-string p3, "Invalid mode: "
    invoke-direct { p2, p3 }, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
    invoke-virtual { p2, p1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    invoke-virtual { p2 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p1
    invoke-direct { p0, p1 }, Ld/c/b/c;-><init>(Ljava/lang/String;)V
    throw p0
  :L1
  .line 4
    invoke-static { p0, p2, p3 }, Ld/c/b/e/c/c;->a(Ljava/lang/String;Ld/c/b/d/a;Ljava/lang/String;)V
    return-void
  :L2
  .line 5
    invoke-static { p0, p2 }, Ld/c/b/e/c/c;->b(Ljava/lang/CharSequence;Ld/c/b/d/a;)V
    return-void
  :L3
  .line 6
    invoke-static { p0, p2 }, Ld/c/b/e/c/c;->h(Ljava/lang/CharSequence;Ld/c/b/d/a;)V
    return-void
.end method

.method private static d(Ld/c/b/d/c;Ld/c/b/d/a;)V
  .registers 4
  .line 1
    sget-object v0, Ld/c/b/e/b/b;->i:Ld/c/b/e/b/b;
    invoke-virtual { v0 }, Ld/c/b/e/b/b;->a()I
    move-result v0
    const/4 v1, 4
    invoke-virtual { p1, v0, v1 }, Ld/c/b/d/a;->c(II)V
  .line 2
    invoke-virtual { p0 }, Ld/c/b/d/c;->b()I
    move-result p0
    const/16 v0, 8
    invoke-virtual { p1, p0, v0 }, Ld/c/b/d/a;->c(II)V
    return-void
.end method

.method static e(Ljava/lang/String;Ld/c/b/d/a;)V
  .catch Ljava/io/UnsupportedEncodingException; { :L0 .. :L1 } :L9
  .registers 8
  :L0
    const-string v0, "Shift_JIS"
  .line 1
    invoke-virtual { p0, v0 }, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    move-result-object p0
  :L1
  .line 2
    array-length v0, p0
    const/4 v1, 0
  :L2
    if-ge v1, v0, :L8
  .line 3
    aget-byte v2, p0, v1
    and-int/lit16 v2, v2, 255
    add-int/lit8 v3, v1, 1
  .line 4
    aget-byte v3, p0, v3
    and-int/lit16 v3, v3, 255
    shl-int/lit8 v2, v2, 8
    or-int/2addr v2, v3
    const v3, 33088
    const/4 v4, -1
    if-lt v2, v3, :L4
    const v5, 40956
    if-gt v2, v5, :L4
  :L3
    sub-int/2addr v2, v3
    goto :L6
  :L4
    const v3, 57408
    if-lt v2, v3, :L5
    const v3, 60351
    if-gt v2, v3, :L5
    const v3, 49472
    goto :L3
  :L5
    const/4 v2, -1
  :L6
    if-eq v2, v4, :L7
    shr-int/lit8 v3, v2, 8
    mul-int/lit16 v3, v3, 192
    and-int/lit16 v2, v2, 255
    add-int/2addr v3, v2
    const/16 v2, 13
  .line 5
    invoke-virtual { p1, v3, v2 }, Ld/c/b/d/a;->c(II)V
    add-int/lit8 v1, v1, 2
    goto :L2
  :L7
  .line 6
    new-instance p0, Ld/c/b/c;
    const-string p1, "Invalid byte sequence"
    invoke-direct { p0, p1 }, Ld/c/b/c;-><init>(Ljava/lang/String;)V
    throw p0
  :L8
    return-void
  :L9
    move-exception p0
  .line 7
    new-instance p1, Ld/c/b/c;
    invoke-direct { p1, p0 }, Ld/c/b/c;-><init>(Ljava/lang/Throwable;)V
    goto :L11
  :L10
    throw p1
  :L11
    goto :L10
.end method

.method static f(ILd/c/b/e/b/c;Ld/c/b/e/b/b;Ld/c/b/d/a;)V
  .registers 5
  .line 1
    invoke-virtual { p2, p1 }, Ld/c/b/e/b/b;->b(Ld/c/b/e/b/c;)I
    move-result p1
    const/4 p2, 1
    shl-int v0, p2, p1
    if-ge p0, v0, :L0
  .line 2
    invoke-virtual { p3, p0, p1 }, Ld/c/b/d/a;->c(II)V
    return-void
  :L0
  .line 3
    new-instance p1, Ld/c/b/c;
    new-instance p3, Ljava/lang/StringBuilder;
    invoke-direct { p3 }, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual { p3, p0 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    const-string p0, " is bigger than "
    invoke-virtual { p3, p0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    sub-int/2addr v0, p2
    invoke-virtual { p3, v0 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { p3 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p0
    invoke-direct { p1, p0 }, Ld/c/b/c;-><init>(Ljava/lang/String;)V
    throw p1
.end method

.method static g(Ld/c/b/e/b/b;Ld/c/b/d/a;)V
  .registers 3
  .line 1
    invoke-virtual { p0 }, Ld/c/b/e/b/b;->a()I
    move-result p0
    const/4 v0, 4
    invoke-virtual { p1, p0, v0 }, Ld/c/b/d/a;->c(II)V
    return-void
.end method

.method static h(Ljava/lang/CharSequence;Ld/c/b/d/a;)V
  .registers 8
  .line 1
    invoke-interface { p0 }, Ljava/lang/CharSequence;->length()I
    move-result v0
    const/4 v1, 0
  :L0
    if-ge v1, v0, :L3
  .line 2
    invoke-interface { p0, v1 }, Ljava/lang/CharSequence;->charAt(I)C
    move-result v2
    add-int/lit8 v2, v2, -48
    add-int/lit8 v3, v1, 2
    if-ge v3, v0, :L1
    add-int/lit8 v4, v1, 1
  .line 3
    invoke-interface { p0, v4 }, Ljava/lang/CharSequence;->charAt(I)C
    move-result v4
    add-int/lit8 v4, v4, -48
  .line 4
    invoke-interface { p0, v3 }, Ljava/lang/CharSequence;->charAt(I)C
    move-result v3
    add-int/lit8 v3, v3, -48
    mul-int/lit8 v2, v2, 100
    const/16 v5, 10
    mul-int/lit8 v4, v4, 10
    add-int/2addr v2, v4
    add-int/2addr v2, v3
  .line 5
    invoke-virtual { p1, v2, v5 }, Ld/c/b/d/a;->c(II)V
    add-int/lit8 v1, v1, 3
    goto :L0
  :L1
    add-int/lit8 v1, v1, 1
    if-ge v1, v0, :L2
  .line 6
    invoke-interface { p0, v1 }, Ljava/lang/CharSequence;->charAt(I)C
    move-result v1
    add-int/lit8 v1, v1, -48
    mul-int/lit8 v2, v2, 10
    add-int/2addr v2, v1
    const/4 v1, 7
  .line 7
    invoke-virtual { p1, v2, v1 }, Ld/c/b/d/a;->c(II)V
    move v1, v3
    goto :L0
  :L2
    const/4 v3, 4
  .line 8
    invoke-virtual { p1, v2, v3 }, Ld/c/b/d/a;->c(II)V
    goto :L0
  :L3
    return-void
.end method

.method private static i(Ld/c/b/e/b/b;Ld/c/b/d/a;Ld/c/b/d/a;Ld/c/b/e/b/c;)I
  .registers 4
  .line 1
    invoke-virtual { p1 }, Ld/c/b/d/a;->g()I
    move-result p1
    invoke-virtual { p0, p3 }, Ld/c/b/e/b/b;->b(Ld/c/b/e/b/c;)I
    move-result p0
    add-int/2addr p1, p0
    invoke-virtual { p2 }, Ld/c/b/d/a;->g()I
    move-result p0
    add-int/2addr p1, p0
    return p1
.end method

.method private static j(Ld/c/b/e/c/b;)I
  .registers 3
  .line 1
    invoke-static { p0 }, Ld/c/b/e/c/d;->a(Ld/c/b/e/c/b;)I
    move-result v0
  .line 2
    invoke-static { p0 }, Ld/c/b/e/c/d;->c(Ld/c/b/e/c/b;)I
    move-result v1
    add-int/2addr v0, v1
  .line 3
    invoke-static { p0 }, Ld/c/b/e/c/d;->d(Ld/c/b/e/c/b;)I
    move-result v1
    add-int/2addr v0, v1
  .line 4
    invoke-static { p0 }, Ld/c/b/e/c/d;->e(Ld/c/b/e/c/b;)I
    move-result p0
    add-int/2addr v0, p0
    return v0
.end method

.method private static k(Ld/c/b/d/a;Ld/c/b/e/b/a;Ld/c/b/e/b/c;Ld/c/b/e/c/b;)I
  .registers 8
    const v0, 2147483647
    const/4 v1, -1
    const/4 v2, 0
  :L0
    const/16 v3, 8
    if-ge v2, v3, :L2
  .line 1
    invoke-static { p0, p1, p2, v2, p3 }, Ld/c/b/e/c/e;->a(Ld/c/b/d/a;Ld/c/b/e/b/a;Ld/c/b/e/b/c;ILd/c/b/e/c/b;)V
  .line 2
    invoke-static { p3 }, Ld/c/b/e/c/c;->j(Ld/c/b/e/c/b;)I
    move-result v3
    if-ge v3, v0, :L1
    move v1, v2
    move v0, v3
  :L1
    add-int/lit8 v2, v2, 1
    goto :L0
  :L2
    return v1
.end method

.method private static l(Ljava/lang/String;Ljava/lang/String;)Ld/c/b/e/b/b;
  .registers 7
    const-string v0, "Shift_JIS"
  .line 1
    invoke-virtual { v0, p1 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result p1
    if-eqz p1, :L0
    invoke-static { p0 }, Ld/c/b/e/c/c;->s(Ljava/lang/String;)Z
    move-result p1
    if-eqz p1, :L0
  .line 2
    sget-object p0, Ld/c/b/e/b/b;->j:Ld/c/b/e/b/b;
    return-object p0
  :L0
    const/4 p1, 0
    const/4 v0, 0
    const/4 v1, 0
  :L1
  .line 3
    invoke-virtual { p0 }, Ljava/lang/String;->length()I
    move-result v2
    if-ge p1, v2, :L5
  .line 4
    invoke-virtual { p0, p1 }, Ljava/lang/String;->charAt(I)C
    move-result v2
    const/16 v3, 48
    const/4 v4, 1
    if-lt v2, v3, :L2
    const/16 v3, 57
    if-gt v2, v3, :L2
    const/4 v1, 1
    goto :L3
  :L2
  .line 5
    invoke-static { v2 }, Ld/c/b/e/c/c;->p(I)I
    move-result v0
    const/4 v2, -1
    if-eq v0, v2, :L4
    const/4 v0, 1
  :L3
    add-int/lit8 p1, p1, 1
    goto :L1
  :L4
  .line 6
    sget-object p0, Ld/c/b/e/b/b;->h:Ld/c/b/e/b/b;
    return-object p0
  :L5
    if-eqz v0, :L6
  .line 7
    sget-object p0, Ld/c/b/e/b/b;->f:Ld/c/b/e/b/b;
    return-object p0
  :L6
    if-eqz v1, :L7
  .line 8
    sget-object p0, Ld/c/b/e/b/b;->e:Ld/c/b/e/b/b;
    return-object p0
  :L7
  .line 9
    sget-object p0, Ld/c/b/e/b/b;->h:Ld/c/b/e/b/b;
    return-object p0
.end method

.method private static m(ILd/c/b/e/b/a;)Ld/c/b/e/b/c;
  .registers 5
    const/4 v0, 1
  :L0
    const/16 v1, 40
    if-gt v0, v1, :L2
  .line 1
    invoke-static { v0 }, Ld/c/b/e/b/c;->e(I)Ld/c/b/e/b/c;
    move-result-object v1
  .line 2
    invoke-static { p0, v1, p1 }, Ld/c/b/e/c/c;->v(ILd/c/b/e/b/c;Ld/c/b/e/b/a;)Z
    move-result v2
    if-eqz v2, :L1
    return-object v1
  :L1
    add-int/lit8 v0, v0, 1
    goto :L0
  :L2
  .line 3
    new-instance p0, Ld/c/b/c;
    const-string p1, "Data too big"
    invoke-direct { p0, p1 }, Ld/c/b/c;-><init>(Ljava/lang/String;)V
    goto :L4
  :L3
    throw p0
  :L4
    goto :L3
.end method

.method public static n(Ljava/lang/String;Ld/c/b/e/b/a;Ljava/util/Map;)Ld/c/b/e/c/f;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(",
      "Ljava/lang/String;",
      "Ld/c/b/e/b/a;",
      "Ljava/util/Map<",
      "Ld/c/b/b;",
      "*>;)",
      "Ld/c/b/e/c/f;"
    }
  .end annotation
  .registers 8
    const-string v0, "ISO-8859-1"
    if-eqz p2, :L0
  .line 1
    sget-object v1, Ld/c/b/b;->c:Ld/c/b/b;
    invoke-interface { p2, v1 }, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z
    move-result v1
    if-eqz v1, :L0
  .line 2
    sget-object v1, Ld/c/b/b;->c:Ld/c/b/b;
    invoke-interface { p2, v1 }, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object v1
    invoke-virtual { v1 }, Ljava/lang/Object;->toString()Ljava/lang/String;
    move-result-object v1
    goto :L1
  :L0
    move-object v1, v0
  :L1
  .line 3
    invoke-static { p0, v1 }, Ld/c/b/e/c/c;->l(Ljava/lang/String;Ljava/lang/String;)Ld/c/b/e/b/b;
    move-result-object v2
  .line 4
    new-instance v3, Ld/c/b/d/a;
    invoke-direct { v3 }, Ld/c/b/d/a;-><init>()V
  .line 5
    sget-object v4, Ld/c/b/e/b/b;->h:Ld/c/b/e/b/b;
    if-ne v2, v4, :L2
    invoke-virtual { v0, v1 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v0
    if-nez v0, :L2
  .line 6
    invoke-static { v1 }, Ld/c/b/d/c;->a(Ljava/lang/String;)Ld/c/b/d/c;
    move-result-object v0
    if-eqz v0, :L2
  .line 7
    invoke-static { v0, v3 }, Ld/c/b/e/c/c;->d(Ld/c/b/d/c;Ld/c/b/d/a;)V
  :L2
  .line 8
    invoke-static { v2, v3 }, Ld/c/b/e/c/c;->g(Ld/c/b/e/b/b;Ld/c/b/d/a;)V
  .line 9
    new-instance v0, Ld/c/b/d/a;
    invoke-direct { v0 }, Ld/c/b/d/a;-><init>()V
  .line 10
    invoke-static { p0, v2, v0, v1 }, Ld/c/b/e/c/c;->c(Ljava/lang/String;Ld/c/b/e/b/b;Ld/c/b/d/a;Ljava/lang/String;)V
    if-eqz p2, :L4
  .line 11
    sget-object v1, Ld/c/b/b;->l:Ld/c/b/b;
    invoke-interface { p2, v1 }, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z
    move-result v1
    if-eqz v1, :L4
  .line 12
    sget-object v1, Ld/c/b/b;->l:Ld/c/b/b;
    invoke-interface { p2, v1 }, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object p2
    invoke-virtual { p2 }, Ljava/lang/Object;->toString()Ljava/lang/String;
    move-result-object p2
    invoke-static { p2 }, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    move-result p2
  .line 13
    invoke-static { p2 }, Ld/c/b/e/b/c;->e(I)Ld/c/b/e/b/c;
    move-result-object p2
  .line 14
    invoke-static { v2, v3, v0, p2 }, Ld/c/b/e/c/c;->i(Ld/c/b/e/b/b;Ld/c/b/d/a;Ld/c/b/d/a;Ld/c/b/e/b/c;)I
    move-result v1
  .line 15
    invoke-static { v1, p2, p1 }, Ld/c/b/e/c/c;->v(ILd/c/b/e/b/c;Ld/c/b/e/b/a;)Z
    move-result v1
    if-eqz v1, :L3
    goto :L5
  :L3
  .line 16
    new-instance p0, Ld/c/b/c;
    const-string p1, "Data too big for requested version"
    invoke-direct { p0, p1 }, Ld/c/b/c;-><init>(Ljava/lang/String;)V
    throw p0
  :L4
  .line 17
    invoke-static { p1, v2, v3, v0 }, Ld/c/b/e/c/c;->t(Ld/c/b/e/b/a;Ld/c/b/e/b/b;Ld/c/b/d/a;Ld/c/b/d/a;)Ld/c/b/e/b/c;
    move-result-object p2
  :L5
  .line 18
    new-instance v1, Ld/c/b/d/a;
    invoke-direct { v1 }, Ld/c/b/d/a;-><init>()V
  .line 19
    invoke-virtual { v1, v3 }, Ld/c/b/d/a;->b(Ld/c/b/d/a;)V
  .line 20
    sget-object v3, Ld/c/b/e/b/b;->h:Ld/c/b/e/b/b;
    if-ne v2, v3, :L6
    invoke-virtual { v0 }, Ld/c/b/d/a;->h()I
    move-result p0
    goto :L7
  :L6
    invoke-virtual { p0 }, Ljava/lang/String;->length()I
    move-result p0
  :L7
  .line 21
    invoke-static { p0, p2, v2, v1 }, Ld/c/b/e/c/c;->f(ILd/c/b/e/b/c;Ld/c/b/e/b/b;Ld/c/b/d/a;)V
  .line 22
    invoke-virtual { v1, v0 }, Ld/c/b/d/a;->b(Ld/c/b/d/a;)V
  .line 23
    invoke-virtual { p2, p1 }, Ld/c/b/e/b/c;->c(Ld/c/b/e/b/a;)Ld/c/b/e/b/c$b;
    move-result-object p0
  .line 24
    invoke-virtual { p2 }, Ld/c/b/e/b/c;->d()I
    move-result v0
    invoke-virtual { p0 }, Ld/c/b/e/b/c$b;->d()I
    move-result v3
    sub-int/2addr v0, v3
  .line 25
    invoke-static { v0, v1 }, Ld/c/b/e/c/c;->u(ILd/c/b/d/a;)V
  .line 26
    invoke-virtual { p2 }, Ld/c/b/e/b/c;->d()I
    move-result v3
  .line 27
    invoke-virtual { p0 }, Ld/c/b/e/b/c$b;->c()I
    move-result p0
  .line 28
    invoke-static { v1, v3, v0, p0 }, Ld/c/b/e/c/c;->r(Ld/c/b/d/a;III)Ld/c/b/d/a;
    move-result-object p0
  .line 29
    new-instance v0, Ld/c/b/e/c/f;
    invoke-direct { v0 }, Ld/c/b/e/c/f;-><init>()V
  .line 30
    invoke-virtual { v0, p1 }, Ld/c/b/e/c/f;->c(Ld/c/b/e/b/a;)V
  .line 31
    invoke-virtual { v0, v2 }, Ld/c/b/e/c/f;->f(Ld/c/b/e/b/b;)V
  .line 32
    invoke-virtual { v0, p2 }, Ld/c/b/e/c/f;->g(Ld/c/b/e/b/c;)V
  .line 33
    invoke-virtual { p2 }, Ld/c/b/e/b/c;->b()I
    move-result v1
  .line 34
    new-instance v2, Ld/c/b/e/c/b;
    invoke-direct { v2, v1, v1 }, Ld/c/b/e/c/b;-><init>(II)V
  .line 35
    invoke-static { p0, p1, p2, v2 }, Ld/c/b/e/c/c;->k(Ld/c/b/d/a;Ld/c/b/e/b/a;Ld/c/b/e/b/c;Ld/c/b/e/c/b;)I
    move-result v1
  .line 36
    invoke-virtual { v0, v1 }, Ld/c/b/e/c/f;->d(I)V
  .line 37
    invoke-static { p0, p1, p2, v1, v2 }, Ld/c/b/e/c/e;->a(Ld/c/b/d/a;Ld/c/b/e/b/a;Ld/c/b/e/b/c;ILd/c/b/e/c/b;)V
  .line 38
    invoke-virtual { v0, v2 }, Ld/c/b/e/c/f;->e(Ld/c/b/e/c/b;)V
    return-object v0
.end method

.method static o([BI)[B
  .registers 7
  .line 1
    array-length v0, p0
    add-int v1, v0, p1
  .line 2
    new-array v1, v1, [I
    const/4 v2, 0
    const/4 v3, 0
  :L0
    if-ge v3, v0, :L1
  .line 3
    aget-byte v4, p0, v3
    and-int/lit16 v4, v4, 255
    aput v4, v1, v3
    add-int/lit8 v3, v3, 1
    goto :L0
  :L1
  .line 4
    new-instance p0, Ld/c/b/d/d/c;
    sget-object v3, Ld/c/b/d/d/a;->h:Ld/c/b/d/d/a;
    invoke-direct { p0, v3 }, Ld/c/b/d/d/c;-><init>(Ld/c/b/d/d/a;)V
    invoke-virtual { p0, v1, p1 }, Ld/c/b/d/d/c;->b([II)V
  .line 5
    new-array p0, p1, [B
  :L2
    if-ge v2, p1, :L3
    add-int v3, v0, v2
  .line 6
    aget v3, v1, v3
    int-to-byte v3, v3
    aput-byte v3, p0, v2
    add-int/lit8 v2, v2, 1
    goto :L2
  :L3
    return-object p0
.end method

.method static p(I)I
  .registers 3
  .line 1
    sget-object v0, Ld/c/b/e/c/c;->a:[I
    array-length v1, v0
    if-ge p0, v1, :L0
  .line 2
    aget p0, v0, p0
    return p0
  :L0
    const/4 p0, -1
    return p0
.end method

.method static q(IIII[I[I)V
  .registers 12
    if-ge p3, p2, :L4
  .line 1
    rem-int v0, p0, p2
    sub-int v1, p2, v0
  .line 2
    div-int v2, p0, p2
    add-int/lit8 v3, v2, 1
  .line 3
    div-int/2addr p1, p2
    add-int/lit8 v4, p1, 1
    sub-int/2addr v2, p1
    sub-int/2addr v3, v4
    if-ne v2, v3, :L3
    add-int v5, v1, v0
    if-ne p2, v5, :L2
    add-int p2, p1, v2
    mul-int p2, p2, v1
    add-int v5, v4, v3
    mul-int v5, v5, v0
    add-int/2addr p2, v5
    if-ne p0, p2, :L1
    const/4 p0, 0
    if-ge p3, v1, :L0
  .line 4
    aput p1, p4, p0
  .line 5
    aput v2, p5, p0
    return-void
  :L0
  .line 6
    aput v4, p4, p0
  .line 7
    aput v3, p5, p0
    return-void
  :L1
  .line 8
    new-instance p0, Ld/c/b/c;
    const-string p1, "Total bytes mismatch"
    invoke-direct { p0, p1 }, Ld/c/b/c;-><init>(Ljava/lang/String;)V
    throw p0
  :L2
  .line 9
    new-instance p0, Ld/c/b/c;
    const-string p1, "RS blocks mismatch"
    invoke-direct { p0, p1 }, Ld/c/b/c;-><init>(Ljava/lang/String;)V
    throw p0
  :L3
  .line 10
    new-instance p0, Ld/c/b/c;
    const-string p1, "EC bytes mismatch"
    invoke-direct { p0, p1 }, Ld/c/b/c;-><init>(Ljava/lang/String;)V
    throw p0
  :L4
  .line 11
    new-instance p0, Ld/c/b/c;
    const-string p1, "Block ID too large"
    invoke-direct { p0, p1 }, Ld/c/b/c;-><init>(Ljava/lang/String;)V
    throw p0
.end method

.method static r(Ld/c/b/d/a;III)Ld/c/b/d/a;
  .registers 21
    move/from16 v6, p1
    move/from16 v7, p2
    move/from16 v8, p3
  .line 1
    invoke-virtual/range { p0 .. p0 }, Ld/c/b/d/a;->h()I
    move-result v0
    if-ne v0, v7, :L11
  .line 2
    new-instance v9, Ljava/util/ArrayList;
    invoke-direct { v9, v8 }, Ljava/util/ArrayList;-><init>(I)V
    const/4 v10, 0
    const/4 v11, 0
    const/4 v12, 0
    const/4 v13, 0
    const/4 v14, 0
  :L0
    if-ge v11, v8, :L1
    const/4 v0, 1
    new-array v15, v0, [I
    new-array v5, v0, [I
    move/from16 v0, p1
    move/from16 v1, p2
    move/from16 v2, p3
    move v3, v11
    move-object v4, v15
    move-object/from16 v16, v5
  .line 3
    invoke-static/range { v0 .. v5 }, Ld/c/b/e/c/c;->q(IIII[I[I)V
  .line 4
    aget v0, v15, v10
  .line 5
    new-array v1, v0, [B
    shl-int/lit8 v2, v12, 3
    move-object/from16 v3, p0
  .line 6
    invoke-virtual { v3, v2, v1, v10, v0 }, Ld/c/b/d/a;->j(I[BII)V
  .line 7
    aget v2, v16, v10
    invoke-static { v1, v2 }, Ld/c/b/e/c/c;->o([BI)[B
    move-result-object v2
  .line 8
    new-instance v4, Ld/c/b/e/c/a;
    invoke-direct { v4, v1, v2 }, Ld/c/b/e/c/a;-><init>([B[B)V
    invoke-interface { v9, v4 }, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
  .line 9
    invoke-static { v13, v0 }, Ljava/lang/Math;->max(II)I
    move-result v13
  .line 10
    array-length v0, v2
    invoke-static { v14, v0 }, Ljava/lang/Math;->max(II)I
    move-result v14
  .line 11
    aget v0, v15, v10
    add-int/2addr v12, v0
    add-int/lit8 v11, v11, 1
    goto :L0
  :L1
    if-ne v7, v12, :L10
  .line 12
    new-instance v0, Ld/c/b/d/a;
    invoke-direct { v0 }, Ld/c/b/d/a;-><init>()V
    const/4 v1, 0
  :L2
    const/16 v2, 8
    if-ge v1, v13, :L5
  .line 13
    invoke-interface { v9 }, Ljava/util/Collection;->iterator()Ljava/util/Iterator;
    move-result-object v3
  :L3
    invoke-interface { v3 }, Ljava/util/Iterator;->hasNext()Z
    move-result v4
    if-eqz v4, :L4
    invoke-interface { v3 }, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object v4
    check-cast v4, Ld/c/b/e/c/a;
  .line 14
    invoke-virtual { v4 }, Ld/c/b/e/c/a;->a()[B
    move-result-object v4
  .line 15
    array-length v5, v4
    if-ge v1, v5, :L3
  .line 16
    aget-byte v4, v4, v1
    invoke-virtual { v0, v4, v2 }, Ld/c/b/d/a;->c(II)V
    goto :L3
  :L4
    add-int/lit8 v1, v1, 1
    goto :L2
  :L5
    if-ge v10, v14, :L8
  .line 17
    invoke-interface { v9 }, Ljava/util/Collection;->iterator()Ljava/util/Iterator;
    move-result-object v1
  :L6
    invoke-interface { v1 }, Ljava/util/Iterator;->hasNext()Z
    move-result v3
    if-eqz v3, :L7
    invoke-interface { v1 }, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object v3
    check-cast v3, Ld/c/b/e/c/a;
  .line 18
    invoke-virtual { v3 }, Ld/c/b/e/c/a;->b()[B
    move-result-object v3
  .line 19
    array-length v4, v3
    if-ge v10, v4, :L6
  .line 20
    aget-byte v3, v3, v10
    invoke-virtual { v0, v3, v2 }, Ld/c/b/d/a;->c(II)V
    goto :L6
  :L7
    add-int/lit8 v10, v10, 1
    goto :L5
  :L8
  .line 21
    invoke-virtual { v0 }, Ld/c/b/d/a;->h()I
    move-result v1
    if-ne v6, v1, :L9
    return-object v0
  :L9
  .line 22
    new-instance v1, Ld/c/b/c;
    new-instance v2, Ljava/lang/StringBuilder;
    const-string v3, "Interleaving error: "
    invoke-direct { v2, v3 }, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
    invoke-virtual { v2, v6 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    const-string v3, " and "
    invoke-virtual { v2, v3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
  .line 23
    invoke-virtual { v0 }, Ld/c/b/d/a;->h()I
    move-result v0
    invoke-virtual { v2, v0 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    const-string v0, " differ."
    invoke-virtual { v2, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v2 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    invoke-direct { v1, v0 }, Ld/c/b/c;-><init>(Ljava/lang/String;)V
    throw v1
  :L10
  .line 24
    new-instance v0, Ld/c/b/c;
    const-string v1, "Data bytes does not match offset"
    invoke-direct { v0, v1 }, Ld/c/b/c;-><init>(Ljava/lang/String;)V
    throw v0
  :L11
  .line 25
    new-instance v0, Ld/c/b/c;
    const-string v1, "Number of bits and data bytes does not match"
    invoke-direct { v0, v1 }, Ld/c/b/c;-><init>(Ljava/lang/String;)V
    goto :L13
  :L12
    throw v0
  :L13
    goto :L12
.end method

.method private static s(Ljava/lang/String;)Z
  .catch Ljava/io/UnsupportedEncodingException; { :L0 .. :L1 } :L8
  .registers 6
    const/4 v0, 0
  :L0
    const-string v1, "Shift_JIS"
  .line 1
    invoke-virtual { p0, v1 }, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    move-result-object p0
  :L1
  .line 2
    array-length v1, p0
  .line 3
    rem-int/lit8 v2, v1, 2
    if-eqz v2, :L2
    return v0
  :L2
    const/4 v2, 0
  :L3
    if-ge v2, v1, :L7
  .line 4
    aget-byte v3, p0, v2
    and-int/lit16 v3, v3, 255
    const/16 v4, 129
    if-lt v3, v4, :L4
    const/16 v4, 159
    if-le v3, v4, :L5
  :L4
    const/16 v4, 224
    if-lt v3, v4, :L6
    const/16 v4, 235
    if-le v3, v4, :L5
    goto :L6
  :L5
    add-int/lit8 v2, v2, 2
    goto :L3
  :L6
    return v0
  :L7
    const/4 p0, 1
    return p0
  :L8
    return v0
.end method

.method private static t(Ld/c/b/e/b/a;Ld/c/b/e/b/b;Ld/c/b/d/a;Ld/c/b/d/a;)Ld/c/b/e/b/c;
  .registers 5
    const/4 v0, 1
  .line 1
    invoke-static { v0 }, Ld/c/b/e/b/c;->e(I)Ld/c/b/e/b/c;
    move-result-object v0
    invoke-static { p1, p2, p3, v0 }, Ld/c/b/e/c/c;->i(Ld/c/b/e/b/b;Ld/c/b/d/a;Ld/c/b/d/a;Ld/c/b/e/b/c;)I
    move-result v0
  .line 2
    invoke-static { v0, p0 }, Ld/c/b/e/c/c;->m(ILd/c/b/e/b/a;)Ld/c/b/e/b/c;
    move-result-object v0
  .line 3
    invoke-static { p1, p2, p3, v0 }, Ld/c/b/e/c/c;->i(Ld/c/b/e/b/b;Ld/c/b/d/a;Ld/c/b/d/a;Ld/c/b/e/b/c;)I
    move-result p1
  .line 4
    invoke-static { p1, p0 }, Ld/c/b/e/c/c;->m(ILd/c/b/e/b/a;)Ld/c/b/e/b/c;
    move-result-object p0
    return-object p0
.end method

.method static u(ILd/c/b/d/a;)V
  .registers 6
    shl-int/lit8 v0, p0, 3
  .line 1
    invoke-virtual { p1 }, Ld/c/b/d/a;->g()I
    move-result v1
    if-gt v1, v0, :L9
    const/4 v1, 0
    const/4 v2, 0
  :L0
    const/4 v3, 4
    if-ge v2, v3, :L1
  .line 2
    invoke-virtual { p1 }, Ld/c/b/d/a;->g()I
    move-result v3
    if-ge v3, v0, :L1
  .line 3
    invoke-virtual { p1, v1 }, Ld/c/b/d/a;->a(Z)V
    add-int/lit8 v2, v2, 1
    goto :L0
  :L1
  .line 4
    invoke-virtual { p1 }, Ld/c/b/d/a;->g()I
    move-result v2
    and-int/lit8 v2, v2, 7
    const/16 v3, 8
    if-lez v2, :L3
  :L2
    if-ge v2, v3, :L3
  .line 5
    invoke-virtual { p1, v1 }, Ld/c/b/d/a;->a(Z)V
    add-int/lit8 v2, v2, 1
    goto :L2
  :L3
  .line 6
    invoke-virtual { p1 }, Ld/c/b/d/a;->h()I
    move-result v2
    sub-int/2addr p0, v2
  :L4
    if-ge v1, p0, :L7
    and-int/lit8 v2, v1, 1
    if-nez v2, :L5
    const/16 v2, 236
    goto :L6
  :L5
    const/16 v2, 17
  :L6
  .line 7
    invoke-virtual { p1, v2, v3 }, Ld/c/b/d/a;->c(II)V
    add-int/lit8 v1, v1, 1
    goto :L4
  :L7
  .line 8
    invoke-virtual { p1 }, Ld/c/b/d/a;->g()I
    move-result p0
    if-ne p0, v0, :L8
    return-void
  :L8
  .line 9
    new-instance p0, Ld/c/b/c;
    const-string p1, "Bits size does not equal capacity"
    invoke-direct { p0, p1 }, Ld/c/b/c;-><init>(Ljava/lang/String;)V
    throw p0
  :L9
  .line 10
    new-instance p0, Ld/c/b/c;
    new-instance v1, Ljava/lang/StringBuilder;
    const-string v2, "data bits cannot fit in the QR Code"
    invoke-direct { v1, v2 }, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
    invoke-virtual { p1 }, Ld/c/b/d/a;->g()I
    move-result p1
    invoke-virtual { v1, p1 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    const-string p1, " > "
    invoke-virtual { v1, p1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v1, v0 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { v1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p1
    invoke-direct { p0, p1 }, Ld/c/b/c;-><init>(Ljava/lang/String;)V
    goto :L11
  :L10
    throw p0
  :L11
    goto :L10
.end method

.method private static v(ILd/c/b/e/b/c;Ld/c/b/e/b/a;)Z
  .registers 4
  .line 1
    invoke-virtual { p1 }, Ld/c/b/e/b/c;->d()I
    move-result v0
  .line 2
    invoke-virtual { p1, p2 }, Ld/c/b/e/b/c;->c(Ld/c/b/e/b/a;)Ld/c/b/e/b/c$b;
    move-result-object p1
  .line 3
    invoke-virtual { p1 }, Ld/c/b/e/b/c$b;->d()I
    move-result p1
    sub-int/2addr v0, p1
    add-int/lit8 p0, p0, 7
  .line 4
    div-int/lit8 p0, p0, 8
    if-lt v0, p0, :L0
    const/4 p0, 1
    return p0
  :L0
    const/4 p0, 0
    return p0
.end method
