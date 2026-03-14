.class final Lokhttp3/internal/tls/DistinguishedNameParser;
.super Ljava/lang/Object;
.source "SourceFile"

.field private beg:I

.field private chars:[C

.field private cur:I

.field private final dn:Ljava/lang/String;

.field private end:I

.field private final length:I

.field private pos:I

.method constructor <init>(Ljavax/security/auth/x500/X500Principal;)V
  .registers 3
  .line 1
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    const-string v0, "RFC2253"
  .line 2
    invoke-virtual { p1, v0 }, Ljavax/security/auth/x500/X500Principal;->getName(Ljava/lang/String;)Ljava/lang/String;
    move-result-object p1
    iput-object p1, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->dn:Ljava/lang/String;
  .line 3
    invoke-virtual { p1 }, Ljava/lang/String;->length()I
    move-result p1
    iput p1, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->length:I
    return-void
.end method

.method private escapedAV()Ljava/lang/String;
  .registers 9
  .line 1
    iget v0, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->pos:I
    iput v0, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->beg:I
  .line 2
    iput v0, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->end:I
  :L0
  .line 3
    iget v0, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->pos:I
    iget v1, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->length:I
    if-lt v0, v1, :L1
  .line 4
    new-instance v0, Ljava/lang/String;
    iget-object v1, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->chars:[C
    iget v2, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->beg:I
    iget v3, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->end:I
    sub-int/2addr v3, v2
    invoke-direct { v0, v1, v2, v3 }, Ljava/lang/String;-><init>([CII)V
    return-object v0
  :L1
  .line 5
    iget-object v1, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->chars:[C
    aget-char v2, v1, v0
    const/16 v3, 44
    const/16 v4, 43
    const/16 v5, 59
    const/16 v6, 32
    if-eq v2, v6, :L4
    if-eq v2, v5, :L3
    const/16 v5, 92
    if-eq v2, v5, :L2
    if-eq v2, v4, :L3
    if-eq v2, v3, :L3
  .line 6
    iget v2, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->end:I
    add-int/lit8 v3, v2, 1
    iput v3, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->end:I
    aget-char v3, v1, v0
    aput-char v3, v1, v2
    add-int/lit8 v0, v0, 1
  .line 7
    iput v0, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->pos:I
    goto :L0
  :L2
  .line 8
    iget v0, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->end:I
    add-int/lit8 v2, v0, 1
    iput v2, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->end:I
    invoke-direct { p0 }, Lokhttp3/internal/tls/DistinguishedNameParser;->getEscaped()C
    move-result v2
    aput-char v2, v1, v0
  .line 9
    iget v0, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->pos:I
    add-int/lit8 v0, v0, 1
    iput v0, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->pos:I
    goto :L0
  :L3
  .line 10
    new-instance v0, Ljava/lang/String;
    iget-object v1, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->chars:[C
    iget v2, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->beg:I
    iget v3, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->end:I
    sub-int/2addr v3, v2
    invoke-direct { v0, v1, v2, v3 }, Ljava/lang/String;-><init>([CII)V
    return-object v0
  :L4
  .line 11
    iget v2, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->end:I
    iput v2, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->cur:I
    add-int/lit8 v0, v0, 1
  .line 12
    iput v0, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->pos:I
    add-int/lit8 v0, v2, 1
  .line 13
    iput v0, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->end:I
    aput-char v6, v1, v2
  :L5
  .line 14
    iget v0, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->pos:I
    iget v1, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->length:I
    if-ge v0, v1, :L6
    iget-object v1, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->chars:[C
    aget-char v2, v1, v0
    if-ne v2, v6, :L6
  .line 15
    iget v2, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->end:I
    add-int/lit8 v7, v2, 1
    iput v7, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->end:I
    aput-char v6, v1, v2
    add-int/lit8 v0, v0, 1
  .line 16
    iput v0, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->pos:I
    goto :L5
  :L6
  .line 17
    iget v0, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->pos:I
    iget v1, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->length:I
    if-eq v0, v1, :L7
    iget-object v1, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->chars:[C
    aget-char v2, v1, v0
    if-eq v2, v3, :L7
    aget-char v2, v1, v0
    if-eq v2, v4, :L7
    aget-char v0, v1, v0
    if-ne v0, v5, :L0
  :L7
  .line 18
    new-instance v0, Ljava/lang/String;
    iget-object v1, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->chars:[C
    iget v2, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->beg:I
    iget v3, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->cur:I
    sub-int/2addr v3, v2
    invoke-direct { v0, v1, v2, v3 }, Ljava/lang/String;-><init>([CII)V
    return-object v0
.end method

.method private getByte(I)I
  .registers 11
    add-int/lit8 v0, p1, 1
  .line 1
    iget v1, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->length:I
    const-string v2, "Malformed DN: "
    if-ge v0, v1, :L8
  .line 2
    iget-object v1, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->chars:[C
    aget-char p1, v1, p1
    const/16 v1, 70
    const/16 v3, 102
    const/16 v4, 65
    const/16 v5, 57
    const/16 v6, 97
    const/16 v7, 48
    if-lt p1, v7, :L0
    if-gt p1, v5, :L0
    sub-int/2addr p1, v7
    goto :L2
  :L0
    if-lt p1, v6, :L1
    if-gt p1, v3, :L1
    add-int/lit8 p1, p1, -87
    goto :L2
  :L1
    if-lt p1, v4, :L7
    if-gt p1, v1, :L7
    add-int/lit8 p1, p1, -55
  :L2
  .line 3
    iget-object v8, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->chars:[C
    aget-char v0, v8, v0
    if-lt v0, v7, :L3
    if-gt v0, v5, :L3
    sub-int/2addr v0, v7
    goto :L5
  :L3
    if-lt v0, v6, :L4
    if-gt v0, v3, :L4
    add-int/lit8 v0, v0, -87
    goto :L5
  :L4
    if-lt v0, v4, :L6
    if-gt v0, v1, :L6
    add-int/lit8 v0, v0, -55
  :L5
    shl-int/lit8 p1, p1, 4
    add-int/2addr p1, v0
    return p1
  :L6
  .line 4
    new-instance p1, Ljava/lang/IllegalStateException;
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual { v0, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget-object v1, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->dn:Ljava/lang/String;
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    invoke-direct { p1, v0 }, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
    throw p1
  :L7
  .line 5
    new-instance p1, Ljava/lang/IllegalStateException;
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual { v0, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget-object v1, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->dn:Ljava/lang/String;
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    invoke-direct { p1, v0 }, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
    throw p1
  :L8
  .line 6
    new-instance p1, Ljava/lang/IllegalStateException;
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual { v0, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget-object v1, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->dn:Ljava/lang/String;
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    invoke-direct { p1, v0 }, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
    throw p1
.end method

.method private getEscaped()C
  .registers 4
  .line 1
    iget v0, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->pos:I
    add-int/lit8 v0, v0, 1
    iput v0, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->pos:I
  .line 2
    iget v1, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->length:I
    if-eq v0, v1, :L1
  .line 3
    iget-object v1, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->chars:[C
    aget-char v0, v1, v0
    const/16 v1, 32
    if-eq v0, v1, :L0
    const/16 v1, 37
    if-eq v0, v1, :L0
    const/16 v1, 92
    if-eq v0, v1, :L0
    const/16 v1, 95
    if-eq v0, v1, :L0
    const/16 v1, 34
    if-eq v0, v1, :L0
    const/16 v1, 35
    if-eq v0, v1, :L0
    packed-switch v0, :L2
    packed-switch v0, :L3
  .line 4
    invoke-direct { p0 }, Lokhttp3/internal/tls/DistinguishedNameParser;->getUTF8()C
    move-result v0
    return v0
  :L0
  .line 5
    iget-object v0, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->chars:[C
    iget v1, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->pos:I
    aget-char v0, v0, v1
    return v0
  :L1
  .line 6
    new-instance v0, Ljava/lang/IllegalStateException;
    new-instance v1, Ljava/lang/StringBuilder;
    invoke-direct { v1 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v2, "Unexpected end of DN: "
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget-object v2, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->dn:Ljava/lang/String;
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v1
    invoke-direct { v0, v1 }, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
    throw v0
  :L2
  .packed-switch 42
    :L0
    :L0
    :L0
  .end packed-switch
  :L3
  .packed-switch 59
    :L0
    :L0
    :L0
    :L0
  .end packed-switch
.end method

.method private getUTF8()C
  .registers 10
  .line 1
    iget v0, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->pos:I
    invoke-direct { p0, v0 }, Lokhttp3/internal/tls/DistinguishedNameParser;->getByte(I)I
    move-result v0
  .line 2
    iget v1, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->pos:I
    const/4 v2, 1
    add-int/2addr v1, v2
    iput v1, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->pos:I
    const/16 v1, 128
    if-ge v0, v1, :L0
    int-to-char v0, v0
    return v0
  :L0
    const/16 v3, 192
    const/16 v4, 63
    if-lt v0, v3, :L9
    const/16 v3, 247
    if-gt v0, v3, :L9
    const/16 v3, 223
    if-gt v0, v3, :L1
    and-int/lit8 v0, v0, 31
    const/4 v3, 1
    goto :L3
  :L1
    const/16 v3, 239
    if-gt v0, v3, :L2
    const/4 v3, 2
    and-int/lit8 v0, v0, 15
    goto :L3
  :L2
    const/4 v3, 3
    and-int/lit8 v0, v0, 7
  :L3
    const/4 v5, 0
  :L4
    if-ge v5, v3, :L8
  .line 3
    iget v6, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->pos:I
    add-int/2addr v6, v2
    iput v6, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->pos:I
  .line 4
    iget v7, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->length:I
    if-eq v6, v7, :L7
    iget-object v7, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->chars:[C
    aget-char v7, v7, v6
    const/16 v8, 92
    if-eq v7, v8, :L5
    goto :L7
  :L5
    add-int/lit8 v6, v6, 1
  .line 5
    iput v6, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->pos:I
  .line 6
    invoke-direct { p0, v6 }, Lokhttp3/internal/tls/DistinguishedNameParser;->getByte(I)I
    move-result v6
  .line 7
    iget v7, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->pos:I
    add-int/2addr v7, v2
    iput v7, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->pos:I
    and-int/lit16 v7, v6, 192
    if-eq v7, v1, :L6
    return v4
  :L6
    shl-int/lit8 v0, v0, 6
    and-int/lit8 v6, v6, 63
    add-int/2addr v0, v6
    add-int/lit8 v5, v5, 1
    goto :L4
  :L7
    return v4
  :L8
    int-to-char v0, v0
    return v0
  :L9
    return v4
.end method

.method private hexAV()Ljava/lang/String;
  .registers 7
  .line 1
    iget v0, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->pos:I
    add-int/lit8 v1, v0, 4
    iget v2, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->length:I
    const-string v3, "Unexpected end of DN: "
    if-ge v1, v2, :L10
  .line 2
    iput v0, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->beg:I
    add-int/lit8 v0, v0, 1
  .line 3
    iput v0, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->pos:I
  :L0
  .line 4
    iget v0, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->pos:I
    iget v1, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->length:I
    if-eq v0, v1, :L5
    iget-object v1, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->chars:[C
    aget-char v2, v1, v0
    const/16 v4, 43
    if-eq v2, v4, :L5
    aget-char v2, v1, v0
    const/16 v4, 44
    if-eq v2, v4, :L5
    aget-char v2, v1, v0
    const/16 v4, 59
    if-ne v2, v4, :L1
    goto :L5
  :L1
  .line 5
    aget-char v2, v1, v0
    const/16 v4, 32
    if-ne v2, v4, :L3
  .line 6
    iput v0, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->end:I
    add-int/lit8 v0, v0, 1
  .line 7
    iput v0, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->pos:I
  :L2
  .line 8
    iget v0, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->pos:I
    iget v1, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->length:I
    if-ge v0, v1, :L6
    iget-object v1, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->chars:[C
    aget-char v1, v1, v0
    if-ne v1, v4, :L6
    add-int/lit8 v0, v0, 1
    iput v0, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->pos:I
    goto :L2
  :L3
  .line 9
    aget-char v2, v1, v0
    const/16 v5, 65
    if-lt v2, v5, :L4
    aget-char v2, v1, v0
    const/16 v5, 70
    if-gt v2, v5, :L4
  .line 10
    aget-char v2, v1, v0
    add-int/2addr v2, v4
    int-to-char v2, v2
    aput-char v2, v1, v0
  :L4
  .line 11
    iget v0, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->pos:I
    add-int/lit8 v0, v0, 1
    iput v0, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->pos:I
    goto :L0
  :L5
  .line 12
    iget v0, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->pos:I
    iput v0, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->end:I
  :L6
  .line 13
    iget v0, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->end:I
    iget v1, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->beg:I
    sub-int/2addr v0, v1
    const/4 v2, 5
    if-lt v0, v2, :L9
    and-int/lit8 v2, v0, 1
    if-eqz v2, :L9
  .line 14
    div-int/lit8 v2, v0, 2
    new-array v3, v2, [B
    const/4 v4, 0
    add-int/lit8 v1, v1, 1
  :L7
    if-ge v4, v2, :L8
  .line 15
    invoke-direct { p0, v1 }, Lokhttp3/internal/tls/DistinguishedNameParser;->getByte(I)I
    move-result v5
    int-to-byte v5, v5
    aput-byte v5, v3, v4
    add-int/lit8 v1, v1, 2
    add-int/lit8 v4, v4, 1
    goto :L7
  :L8
  .line 16
    new-instance v1, Ljava/lang/String;
    iget-object v2, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->chars:[C
    iget v3, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->beg:I
    invoke-direct { v1, v2, v3, v0 }, Ljava/lang/String;-><init>([CII)V
    return-object v1
  :L9
  .line 17
    new-instance v0, Ljava/lang/IllegalStateException;
    new-instance v1, Ljava/lang/StringBuilder;
    invoke-direct { v1 }, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual { v1, v3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget-object v2, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->dn:Ljava/lang/String;
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v1
    invoke-direct { v0, v1 }, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
    throw v0
  :L10
  .line 18
    new-instance v0, Ljava/lang/IllegalStateException;
    new-instance v1, Ljava/lang/StringBuilder;
    invoke-direct { v1 }, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual { v1, v3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget-object v2, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->dn:Ljava/lang/String;
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v1
    invoke-direct { v0, v1 }, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
    goto :L12
  :L11
    throw v0
  :L12
    goto :L11
.end method

.method private nextAT()Ljava/lang/String;
  .registers 7
  :L0
  .line 1
    iget v0, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->pos:I
    iget v1, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->length:I
    const/16 v2, 32
    if-ge v0, v1, :L1
    iget-object v1, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->chars:[C
    aget-char v1, v1, v0
    if-ne v1, v2, :L1
    add-int/lit8 v0, v0, 1
    iput v0, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->pos:I
    goto :L0
  :L1
  .line 2
    iget v0, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->pos:I
    iget v1, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->length:I
    if-ne v0, v1, :L2
    const/4 v0, 0
    return-object v0
  :L2
  .line 3
    iput v0, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->beg:I
    add-int/lit8 v0, v0, 1
  .line 4
    iput v0, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->pos:I
  :L3
  .line 5
    iget v0, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->pos:I
    iget v1, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->length:I
    const/16 v3, 61
    if-ge v0, v1, :L4
    iget-object v1, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->chars:[C
    aget-char v4, v1, v0
    if-eq v4, v3, :L4
    aget-char v1, v1, v0
    if-eq v1, v2, :L4
    add-int/lit8 v0, v0, 1
    iput v0, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->pos:I
    goto :L3
  :L4
  .line 6
    iget v0, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->pos:I
    iget v1, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->length:I
    const-string v4, "Unexpected end of DN: "
    if-ge v0, v1, :L15
  .line 7
    iput v0, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->end:I
  .line 8
    iget-object v1, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->chars:[C
    aget-char v0, v1, v0
    if-ne v0, v2, :L8
  :L5
  .line 9
    iget v0, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->pos:I
    iget v1, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->length:I
    if-ge v0, v1, :L6
    iget-object v1, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->chars:[C
    aget-char v5, v1, v0
    if-eq v5, v3, :L6
    aget-char v1, v1, v0
    if-ne v1, v2, :L6
    add-int/lit8 v0, v0, 1
    iput v0, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->pos:I
    goto :L5
  :L6
  .line 10
    iget-object v0, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->chars:[C
    iget v1, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->pos:I
    aget-char v0, v0, v1
    if-ne v0, v3, :L7
    iget v0, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->length:I
    if-eq v1, v0, :L7
    goto :L8
  :L7
  .line 11
    new-instance v0, Ljava/lang/IllegalStateException;
    new-instance v1, Ljava/lang/StringBuilder;
    invoke-direct { v1 }, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual { v1, v4 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget-object v2, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->dn:Ljava/lang/String;
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v1
    invoke-direct { v0, v1 }, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
    throw v0
  :L8
  .line 12
    iget v0, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->pos:I
    add-int/lit8 v0, v0, 1
    iput v0, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->pos:I
  :L9
  .line 13
    iget v0, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->pos:I
    iget v1, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->length:I
    if-ge v0, v1, :L10
    iget-object v1, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->chars:[C
    aget-char v1, v1, v0
    if-ne v1, v2, :L10
    add-int/lit8 v0, v0, 1
    iput v0, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->pos:I
    goto :L9
  :L10
  .line 14
    iget v0, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->end:I
    iget v1, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->beg:I
    sub-int/2addr v0, v1
    const/4 v2, 4
    if-le v0, v2, :L14
    iget-object v0, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->chars:[C
    add-int/lit8 v3, v1, 3
    aget-char v3, v0, v3
    const/16 v4, 46
    if-ne v3, v4, :L14
    aget-char v3, v0, v1
    const/16 v4, 79
    if-eq v3, v4, :L11
    aget-char v0, v0, v1
    const/16 v1, 111
    if-ne v0, v1, :L14
  :L11
    iget-object v0, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->chars:[C
    iget v1, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->beg:I
    add-int/lit8 v3, v1, 1
    aget-char v3, v0, v3
    const/16 v4, 73
    if-eq v3, v4, :L12
    add-int/lit8 v1, v1, 1
    aget-char v0, v0, v1
    const/16 v1, 105
    if-ne v0, v1, :L14
  :L12
    iget-object v0, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->chars:[C
    iget v1, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->beg:I
    add-int/lit8 v3, v1, 2
    aget-char v3, v0, v3
    const/16 v4, 68
    if-eq v3, v4, :L13
    add-int/lit8 v1, v1, 2
    aget-char v0, v0, v1
    const/16 v1, 100
    if-ne v0, v1, :L14
  :L13
  .line 15
    iget v0, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->beg:I
    add-int/2addr v0, v2
    iput v0, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->beg:I
  :L14
  .line 16
    new-instance v0, Ljava/lang/String;
    iget-object v1, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->chars:[C
    iget v2, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->beg:I
    iget v3, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->end:I
    sub-int/2addr v3, v2
    invoke-direct { v0, v1, v2, v3 }, Ljava/lang/String;-><init>([CII)V
    return-object v0
  :L15
  .line 17
    new-instance v0, Ljava/lang/IllegalStateException;
    new-instance v1, Ljava/lang/StringBuilder;
    invoke-direct { v1 }, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual { v1, v4 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget-object v2, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->dn:Ljava/lang/String;
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v1
    invoke-direct { v0, v1 }, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
    goto :L17
  :L16
    throw v0
  :L17
    goto :L16
.end method

.method private quotedAV()Ljava/lang/String;
  .registers 5
  .line 1
    iget v0, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->pos:I
    add-int/lit8 v0, v0, 1
    iput v0, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->pos:I
  .line 2
    iput v0, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->beg:I
  .line 3
    iput v0, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->end:I
  :L0
  .line 4
    iget v0, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->pos:I
    iget v1, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->length:I
    if-eq v0, v1, :L6
  .line 5
    iget-object v1, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->chars:[C
    aget-char v2, v1, v0
    const/16 v3, 34
    if-ne v2, v3, :L3
    add-int/lit8 v0, v0, 1
  .line 6
    iput v0, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->pos:I
  :L1
  .line 7
    iget v0, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->pos:I
    iget v1, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->length:I
    if-ge v0, v1, :L2
    iget-object v1, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->chars:[C
    aget-char v1, v1, v0
    const/16 v2, 32
    if-ne v1, v2, :L2
    add-int/lit8 v0, v0, 1
    iput v0, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->pos:I
    goto :L1
  :L2
  .line 8
    new-instance v0, Ljava/lang/String;
    iget-object v1, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->chars:[C
    iget v2, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->beg:I
    iget v3, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->end:I
    sub-int/2addr v3, v2
    invoke-direct { v0, v1, v2, v3 }, Ljava/lang/String;-><init>([CII)V
    return-object v0
  :L3
  .line 9
    aget-char v2, v1, v0
    const/16 v3, 92
    if-ne v2, v3, :L4
  .line 10
    iget v0, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->end:I
    invoke-direct { p0 }, Lokhttp3/internal/tls/DistinguishedNameParser;->getEscaped()C
    move-result v2
    aput-char v2, v1, v0
    goto :L5
  :L4
  .line 11
    iget v2, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->end:I
    aget-char v0, v1, v0
    aput-char v0, v1, v2
  :L5
  .line 12
    iget v0, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->pos:I
    add-int/lit8 v0, v0, 1
    iput v0, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->pos:I
  .line 13
    iget v0, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->end:I
    add-int/lit8 v0, v0, 1
    iput v0, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->end:I
    goto :L0
  :L6
  .line 14
    new-instance v0, Ljava/lang/IllegalStateException;
    new-instance v1, Ljava/lang/StringBuilder;
    invoke-direct { v1 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v2, "Unexpected end of DN: "
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget-object v2, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->dn:Ljava/lang/String;
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v1
    invoke-direct { v0, v1 }, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
    goto :L8
  :L7
    throw v0
  :L8
    goto :L7
.end method

.method public findMostSpecific(Ljava/lang/String;)Ljava/lang/String;
  .registers 10
    const/4 v0, 0
  .line 1
    iput v0, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->pos:I
  .line 2
    iput v0, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->beg:I
  .line 3
    iput v0, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->end:I
  .line 4
    iput v0, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->cur:I
  .line 5
    iget-object v0, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->dn:Ljava/lang/String;
    invoke-virtual { v0 }, Ljava/lang/String;->toCharArray()[C
    move-result-object v0
    iput-object v0, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->chars:[C
  .line 6
    invoke-direct { p0 }, Lokhttp3/internal/tls/DistinguishedNameParser;->nextAT()Ljava/lang/String;
    move-result-object v0
    const/4 v1, 0
    if-nez v0, :L0
    return-object v1
  :L0
  .line 7
    iget v2, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->pos:I
    iget v3, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->length:I
    if-ne v2, v3, :L1
    return-object v1
  :L1
  .line 8
    iget-object v3, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->chars:[C
    aget-char v2, v3, v2
    const/16 v3, 34
    const/16 v4, 59
    const/16 v5, 44
    const/16 v6, 43
    if-eq v2, v3, :L4
    const/16 v3, 35
    if-eq v2, v3, :L3
    if-eq v2, v6, :L2
    if-eq v2, v5, :L2
    if-eq v2, v4, :L2
  .line 9
    invoke-direct { p0 }, Lokhttp3/internal/tls/DistinguishedNameParser;->escapedAV()Ljava/lang/String;
    move-result-object v2
    goto :L5
  :L2
    const-string v2, ""
    goto :L5
  :L3
  .line 10
    invoke-direct { p0 }, Lokhttp3/internal/tls/DistinguishedNameParser;->hexAV()Ljava/lang/String;
    move-result-object v2
    goto :L5
  :L4
  .line 11
    invoke-direct { p0 }, Lokhttp3/internal/tls/DistinguishedNameParser;->quotedAV()Ljava/lang/String;
    move-result-object v2
  :L5
  .line 12
    invoke-virtual { p1, v0 }, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    move-result v0
    if-eqz v0, :L6
    return-object v2
  :L6
  .line 13
    iget v0, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->pos:I
    iget v2, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->length:I
    if-lt v0, v2, :L7
    return-object v1
  :L7
  .line 14
    iget-object v2, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->chars:[C
    aget-char v3, v2, v0
    const-string v7, "Malformed DN: "
    if-eq v3, v5, :L10
    aget-char v3, v2, v0
    if-ne v3, v4, :L8
    goto :L10
  :L8
  .line 15
    aget-char v0, v2, v0
    if-ne v0, v6, :L9
    goto :L10
  :L9
  .line 16
    new-instance p1, Ljava/lang/IllegalStateException;
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual { v0, v7 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget-object v1, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->dn:Ljava/lang/String;
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    invoke-direct { p1, v0 }, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
    throw p1
  :L10
  .line 17
    iget v0, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->pos:I
    add-int/lit8 v0, v0, 1
    iput v0, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->pos:I
  .line 18
    invoke-direct { p0 }, Lokhttp3/internal/tls/DistinguishedNameParser;->nextAT()Ljava/lang/String;
    move-result-object v0
    if-eqz v0, :L11
    goto :L0
  :L11
  .line 19
    new-instance p1, Ljava/lang/IllegalStateException;
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual { v0, v7 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget-object v1, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->dn:Ljava/lang/String;
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    invoke-direct { p1, v0 }, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
    goto :L13
  :L12
    throw p1
  :L13
    goto :L12
.end method
