.class final Lokhttp3/CertificatePinner$Pin;
.super Ljava/lang/Object;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Lokhttp3/CertificatePinner;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 24
  name = "Pin"
.end annotation

.field private final static WILDCARD:Ljava/lang/String; = "*."

.field final canonicalHostname:Ljava/lang/String;

.field final hash:Lokio/ByteString;

.field final hashAlgorithm:Ljava/lang/String;

.field final pattern:Ljava/lang/String;

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
  .registers 5
  .line 1
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
  .line 2
    iput-object p1, p0, Lokhttp3/CertificatePinner$Pin;->pattern:Ljava/lang/String;
    const-string v0, "*."
  .line 3
    invoke-virtual { p1, v0 }, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    move-result v0
    const-string v1, "http://"
    if-eqz v0, :L0
  .line 4
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const/4 v1, 2
    invoke-virtual { p1, v1 }, Ljava/lang/String;->substring(I)Ljava/lang/String;
    move-result-object p1
    invoke-virtual { v0, p1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p1
    invoke-static { p1 }, Lokhttp3/HttpUrl;->get(Ljava/lang/String;)Lokhttp3/HttpUrl;
    move-result-object p1
    invoke-virtual { p1 }, Lokhttp3/HttpUrl;->host()Ljava/lang/String;
    move-result-object p1
    goto :L1
  :L0
  .line 5
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0, p1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p1
    invoke-static { p1 }, Lokhttp3/HttpUrl;->get(Ljava/lang/String;)Lokhttp3/HttpUrl;
    move-result-object p1
    invoke-virtual { p1 }, Lokhttp3/HttpUrl;->host()Ljava/lang/String;
    move-result-object p1
  :L1
    iput-object p1, p0, Lokhttp3/CertificatePinner$Pin;->canonicalHostname:Ljava/lang/String;
    const-string p1, "sha1/"
  .line 6
    invoke-virtual { p2, p1 }, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    move-result v0
    if-eqz v0, :L2
  .line 7
    iput-object p1, p0, Lokhttp3/CertificatePinner$Pin;->hashAlgorithm:Ljava/lang/String;
    const/4 p1, 5
  .line 8
    invoke-virtual { p2, p1 }, Ljava/lang/String;->substring(I)Ljava/lang/String;
    move-result-object p1
    invoke-static { p1 }, Lokio/ByteString;->decodeBase64(Ljava/lang/String;)Lokio/ByteString;
    move-result-object p1
    iput-object p1, p0, Lokhttp3/CertificatePinner$Pin;->hash:Lokio/ByteString;
    goto :L3
  :L2
    const-string p1, "sha256/"
  .line 9
    invoke-virtual { p2, p1 }, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    move-result v0
    if-eqz v0, :L5
  .line 10
    iput-object p1, p0, Lokhttp3/CertificatePinner$Pin;->hashAlgorithm:Ljava/lang/String;
    const/4 p1, 7
  .line 11
    invoke-virtual { p2, p1 }, Ljava/lang/String;->substring(I)Ljava/lang/String;
    move-result-object p1
    invoke-static { p1 }, Lokio/ByteString;->decodeBase64(Ljava/lang/String;)Lokio/ByteString;
    move-result-object p1
    iput-object p1, p0, Lokhttp3/CertificatePinner$Pin;->hash:Lokio/ByteString;
  :L3
  .line 12
    iget-object p1, p0, Lokhttp3/CertificatePinner$Pin;->hash:Lokio/ByteString;
    if-eqz p1, :L4
    return-void
  :L4
  .line 13
    new-instance p1, Ljava/lang/IllegalArgumentException;
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "pins must be base64: "
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0, p2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p2
    invoke-direct { p1, p2 }, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
    throw p1
  :L5
  .line 14
    new-instance p1, Ljava/lang/IllegalArgumentException;
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "pins must start with 'sha256/' or 'sha1/': "
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0, p2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p2
    invoke-direct { p1, p2 }, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
    throw p1
.end method

.method public equals(Ljava/lang/Object;)Z
  .registers 4
  .line 1
    instance-of v0, p1, Lokhttp3/CertificatePinner$Pin;
    if-eqz v0, :L0
    iget-object v0, p0, Lokhttp3/CertificatePinner$Pin;->pattern:Ljava/lang/String;
    check-cast p1, Lokhttp3/CertificatePinner$Pin;
    iget-object v1, p1, Lokhttp3/CertificatePinner$Pin;->pattern:Ljava/lang/String;
  .line 2
    invoke-virtual { v0, v1 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :L0
    iget-object v0, p0, Lokhttp3/CertificatePinner$Pin;->hashAlgorithm:Ljava/lang/String;
    iget-object v1, p1, Lokhttp3/CertificatePinner$Pin;->hashAlgorithm:Ljava/lang/String;
  .line 3
    invoke-virtual { v0, v1 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :L0
    iget-object v0, p0, Lokhttp3/CertificatePinner$Pin;->hash:Lokio/ByteString;
    iget-object p1, p1, Lokhttp3/CertificatePinner$Pin;->hash:Lokio/ByteString;
  .line 4
    invoke-virtual { v0, p1 }, Lokio/ByteString;->equals(Ljava/lang/Object;)Z
    move-result p1
    if-eqz p1, :L0
    const/4 p1, 1
    goto :L1
  :L0
    const/4 p1, 0
  :L1
    return p1
.end method

.method public hashCode()I
  .registers 3
  .line 1
    iget-object v0, p0, Lokhttp3/CertificatePinner$Pin;->pattern:Ljava/lang/String;
    invoke-virtual { v0 }, Ljava/lang/String;->hashCode()I
    move-result v0
    const/16 v1, 527
    add-int/2addr v1, v0
    mul-int/lit8 v1, v1, 31
  .line 2
    iget-object v0, p0, Lokhttp3/CertificatePinner$Pin;->hashAlgorithm:Ljava/lang/String;
    invoke-virtual { v0 }, Ljava/lang/String;->hashCode()I
    move-result v0
    add-int/2addr v1, v0
    mul-int/lit8 v1, v1, 31
  .line 3
    iget-object v0, p0, Lokhttp3/CertificatePinner$Pin;->hash:Lokio/ByteString;
    invoke-virtual { v0 }, Lokio/ByteString;->hashCode()I
    move-result v0
    add-int/2addr v1, v0
    return v1
.end method

.method matches(Ljava/lang/String;)Z
  .registers 12
  .line 1
    iget-object v0, p0, Lokhttp3/CertificatePinner$Pin;->pattern:Ljava/lang/String;
    const-string v1, "*."
    invoke-virtual { v0, v1 }, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    move-result v0
    if-eqz v0, :L2
    const/16 v0, 46
  .line 2
    invoke-virtual { p1, v0 }, Ljava/lang/String;->indexOf(I)I
    move-result v0
  .line 3
    invoke-virtual { p1 }, Ljava/lang/String;->length()I
    move-result v1
    sub-int/2addr v1, v0
    const/4 v2, 1
    sub-int/2addr v1, v2
    iget-object v3, p0, Lokhttp3/CertificatePinner$Pin;->canonicalHostname:Ljava/lang/String;
    invoke-virtual { v3 }, Ljava/lang/String;->length()I
    move-result v3
    if-ne v1, v3, :L0
    const/4 v5, 0
    add-int/lit8 v6, v0, 1
    iget-object v7, p0, Lokhttp3/CertificatePinner$Pin;->canonicalHostname:Ljava/lang/String;
    const/4 v8, 0
  .line 4
    invoke-virtual { v7 }, Ljava/lang/String;->length()I
    move-result v9
    move-object v4, p1
  .line 5
    invoke-virtual/range { v4 .. v9 }, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z
    move-result p1
    if-eqz p1, :L0
    goto :L1
  :L0
    const/4 v2, 0
  :L1
    return v2
  :L2
  .line 6
    iget-object v0, p0, Lokhttp3/CertificatePinner$Pin;->canonicalHostname:Ljava/lang/String;
    invoke-virtual { p1, v0 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result p1
    return p1
.end method

.method public toString()Ljava/lang/String;
  .registers 3
  .line 1
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    iget-object v1, p0, Lokhttp3/CertificatePinner$Pin;->hashAlgorithm:Ljava/lang/String;
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget-object v1, p0, Lokhttp3/CertificatePinner$Pin;->hash:Lokio/ByteString;
    invoke-virtual { v1 }, Lokio/ByteString;->base64()Ljava/lang/String;
    move-result-object v1
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    return-object v0
.end method
