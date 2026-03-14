.class public final Lokhttp3/CertificatePinner;
.super Ljava/lang/Object;
.source "SourceFile"

.annotation system Ldalvik/annotation/MemberClasses;
  value = {
    Lokhttp3/CertificatePinner$Builder;,
    Lokhttp3/CertificatePinner$Pin;
  }
.end annotation

.field public final static DEFAULT:Lokhttp3/CertificatePinner;

.field private final certificateChainCleaner:Lokhttp3/internal/tls/CertificateChainCleaner;
  .annotation runtime Ljavax/annotation/Nullable;
  .end annotation
.end field

.field private final pins:Ljava/util/Set;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "Ljava/util/Set<",
      "Lokhttp3/CertificatePinner$Pin;",
      ">;"
    }
  .end annotation
.end field

.method static constructor <clinit>()V
  .registers 3
  .line 1
    new-instance v0, Lokhttp3/CertificatePinner$Builder;
    invoke-direct { v0 }, Lokhttp3/CertificatePinner$Builder;-><init>()V
    invoke-virtual { v0 }, Lokhttp3/CertificatePinner$Builder;->build()Lokhttp3/CertificatePinner;
    move-result-object v0
    sput-object v0, Lokhttp3/CertificatePinner;->DEFAULT:Lokhttp3/CertificatePinner;
    return-void
.end method

.method constructor <init>(Ljava/util/Set;Lokhttp3/internal/tls/CertificateChainCleaner;)V
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(",
      "Ljava/util/Set<",
      "Lokhttp3/CertificatePinner$Pin;",
      ">;",
      "Lokhttp3/internal/tls/CertificateChainCleaner;",
      ")V"
    }
  .end annotation
  .parameter # Ljava/util/Set;
  .parameter # Lokhttp3/internal/tls/CertificateChainCleaner;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
  .end parameter
  .registers 3
  .line 1
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
  .line 2
    iput-object p1, p0, Lokhttp3/CertificatePinner;->pins:Ljava/util/Set;
  .line 3
    iput-object p2, p0, Lokhttp3/CertificatePinner;->certificateChainCleaner:Lokhttp3/internal/tls/CertificateChainCleaner;
    return-void
.end method

.method public static pin(Ljava/security/cert/Certificate;)Ljava/lang/String;
  .registers 3
  .line 1
    instance-of v0, p0, Ljava/security/cert/X509Certificate;
    if-eqz v0, :L0
  .line 2
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "sha256/"
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    check-cast p0, Ljava/security/cert/X509Certificate;
    invoke-static { p0 }, Lokhttp3/CertificatePinner;->sha256(Ljava/security/cert/X509Certificate;)Lokio/ByteString;
    move-result-object p0
    invoke-virtual { p0 }, Lokio/ByteString;->base64()Ljava/lang/String;
    move-result-object p0
    invoke-virtual { v0, p0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p0
    return-object p0
  :L0
  .line 3
    new-instance p0, Ljava/lang/IllegalArgumentException;
    const-string v0, "Certificate pinning requires X509 certificates"
    invoke-direct { p0, v0 }, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
    throw p0
.end method

.method static sha1(Ljava/security/cert/X509Certificate;)Lokio/ByteString;
  .registers 1
  .line 1
    invoke-virtual { p0 }, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;
    move-result-object p0
    invoke-interface { p0 }, Ljava/security/PublicKey;->getEncoded()[B
    move-result-object p0
    invoke-static { p0 }, Lokio/ByteString;->of([B)Lokio/ByteString;
    move-result-object p0
    invoke-virtual { p0 }, Lokio/ByteString;->sha1()Lokio/ByteString;
    move-result-object p0
    return-object p0
.end method

.method static sha256(Ljava/security/cert/X509Certificate;)Lokio/ByteString;
  .registers 1
  .line 1
    invoke-virtual { p0 }, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;
    move-result-object p0
    invoke-interface { p0 }, Ljava/security/PublicKey;->getEncoded()[B
    move-result-object p0
    invoke-static { p0 }, Lokio/ByteString;->of([B)Lokio/ByteString;
    move-result-object p0
    invoke-virtual { p0 }, Lokio/ByteString;->sha256()Lokio/ByteString;
    move-result-object p0
    return-object p0
.end method

.method public check(Ljava/lang/String;Ljava/util/List;)V
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(",
      "Ljava/lang/String;",
      "Ljava/util/List<",
      "Ljava/security/cert/Certificate;",
      ">;)V"
    }
  .end annotation
  .registers 15
  .line 1
    invoke-virtual { p0, p1 }, Lokhttp3/CertificatePinner;->findMatchingPins(Ljava/lang/String;)Ljava/util/List;
    move-result-object v0
  .line 2
    invoke-interface { v0 }, Ljava/util/List;->isEmpty()Z
    move-result v1
    if-eqz v1, :L0
    return-void
  :L0
  .line 3
    iget-object v1, p0, Lokhttp3/CertificatePinner;->certificateChainCleaner:Lokhttp3/internal/tls/CertificateChainCleaner;
    if-eqz v1, :L1
  .line 4
    invoke-virtual { v1, p2, p1 }, Lokhttp3/internal/tls/CertificateChainCleaner;->clean(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;
    move-result-object p2
  :L1
  .line 5
    invoke-interface { p2 }, Ljava/util/List;->size()I
    move-result v1
    const/4 v2, 0
    const/4 v3, 0
  :L2
    if-ge v3, v1, :L10
  .line 6
    invoke-interface { p2, v3 }, Ljava/util/List;->get(I)Ljava/lang/Object;
    move-result-object v4
    check-cast v4, Ljava/security/cert/X509Certificate;
  .line 7
    invoke-interface { v0 }, Ljava/util/List;->size()I
    move-result v5
    const/4 v6, 0
    move-object v7, v6
    const/4 v8, 0
  :L3
    if-ge v8, v5, :L9
  .line 8
    invoke-interface { v0, v8 }, Ljava/util/List;->get(I)Ljava/lang/Object;
    move-result-object v9
    check-cast v9, Lokhttp3/CertificatePinner$Pin;
  .line 9
    iget-object v10, v9, Lokhttp3/CertificatePinner$Pin;->hashAlgorithm:Ljava/lang/String;
    const-string v11, "sha256/"
    invoke-virtual { v10, v11 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v10
    if-eqz v10, :L5
    if-nez v6, :L4
  .line 10
    invoke-static { v4 }, Lokhttp3/CertificatePinner;->sha256(Ljava/security/cert/X509Certificate;)Lokio/ByteString;
    move-result-object v6
  :L4
  .line 11
    iget-object v9, v9, Lokhttp3/CertificatePinner$Pin;->hash:Lokio/ByteString;
    invoke-virtual { v9, v6 }, Lokio/ByteString;->equals(Ljava/lang/Object;)Z
    move-result v9
    if-eqz v9, :L7
    return-void
  :L5
  .line 12
    iget-object v10, v9, Lokhttp3/CertificatePinner$Pin;->hashAlgorithm:Ljava/lang/String;
    const-string v11, "sha1/"
    invoke-virtual { v10, v11 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v10
    if-eqz v10, :L8
    if-nez v7, :L6
  .line 13
    invoke-static { v4 }, Lokhttp3/CertificatePinner;->sha1(Ljava/security/cert/X509Certificate;)Lokio/ByteString;
    move-result-object v7
  :L6
  .line 14
    iget-object v9, v9, Lokhttp3/CertificatePinner$Pin;->hash:Lokio/ByteString;
    invoke-virtual { v9, v7 }, Lokio/ByteString;->equals(Ljava/lang/Object;)Z
    move-result v9
    if-eqz v9, :L7
    return-void
  :L7
    add-int/lit8 v8, v8, 1
    goto :L3
  :L8
  .line 15
    new-instance p1, Ljava/lang/AssertionError;
    new-instance p2, Ljava/lang/StringBuilder;
    invoke-direct { p2 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v0, "unsupported hashAlgorithm: "
    invoke-virtual { p2, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget-object v0, v9, Lokhttp3/CertificatePinner$Pin;->hashAlgorithm:Ljava/lang/String;
    invoke-virtual { p2, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { p2 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p2
    invoke-direct { p1, p2 }, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V
    throw p1
  :L9
    add-int/lit8 v3, v3, 1
    goto :L2
  :L10
  .line 16
    new-instance v1, Ljava/lang/StringBuilder;
    invoke-direct { v1 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v3, "Certificate pinning failure!"
  .line 17
    invoke-virtual { v1, v3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string v3, "\n  Peer certificate chain:"
  .line 18
    invoke-virtual { v1, v3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
  .line 19
    invoke-interface { p2 }, Ljava/util/List;->size()I
    move-result v3
    const/4 v4, 0
  :L11
    const-string v5, "\n    "
    if-ge v4, v3, :L12
  .line 20
    invoke-interface { p2, v4 }, Ljava/util/List;->get(I)Ljava/lang/Object;
    move-result-object v6
    check-cast v6, Ljava/security/cert/X509Certificate;
  .line 21
    invoke-virtual { v1, v5 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-static { v6 }, Lokhttp3/CertificatePinner;->pin(Ljava/security/cert/Certificate;)Ljava/lang/String;
    move-result-object v5
    invoke-virtual { v1, v5 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string v5, ": "
  .line 22
    invoke-virtual { v1, v5 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v6 }, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;
    move-result-object v5
    invoke-interface { v5 }, Ljava/security/Principal;->getName()Ljava/lang/String;
    move-result-object v5
    invoke-virtual { v1, v5 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    add-int/lit8 v4, v4, 1
    goto :L11
  :L12
    const-string p2, "\n  Pinned certificates for "
  .line 23
    invoke-virtual { v1, p2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v1, p1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string p1, ":"
    invoke-virtual { v1, p1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
  .line 24
    invoke-interface { v0 }, Ljava/util/List;->size()I
    move-result p1
  :L13
    if-ge v2, p1, :L14
  .line 25
    invoke-interface { v0, v2 }, Ljava/util/List;->get(I)Ljava/lang/Object;
    move-result-object p2
    check-cast p2, Lokhttp3/CertificatePinner$Pin;
  .line 26
    invoke-virtual { v1, v5 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v1, p2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    add-int/lit8 v2, v2, 1
    goto :L13
  :L14
  .line 27
    new-instance p1, Ljavax/net/ssl/SSLPeerUnverifiedException;
    invoke-virtual { v1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p2
    invoke-direct { p1, p2 }, Ljavax/net/ssl/SSLPeerUnverifiedException;-><init>(Ljava/lang/String;)V
    goto :L16
  :L15
    throw p1
  :L16
    goto :L15
.end method

.method public varargs check(Ljava/lang/String;[Ljava/security/cert/Certificate;)V
  .registers 3
  .line 28
    invoke-static { p2 }, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;
    move-result-object p2
    invoke-virtual { p0, p1, p2 }, Lokhttp3/CertificatePinner;->check(Ljava/lang/String;Ljava/util/List;)V
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
  .parameter # Ljava/lang/Object;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
  .end parameter
  .registers 5
    const/4 v0, 1
    if-ne p1, p0, :L0
    return v0
  :L0
  .line 1
    instance-of v1, p1, Lokhttp3/CertificatePinner;
    if-eqz v1, :L1
    iget-object v1, p0, Lokhttp3/CertificatePinner;->certificateChainCleaner:Lokhttp3/internal/tls/CertificateChainCleaner;
    check-cast p1, Lokhttp3/CertificatePinner;
    iget-object v2, p1, Lokhttp3/CertificatePinner;->certificateChainCleaner:Lokhttp3/internal/tls/CertificateChainCleaner;
  .line 2
    invoke-static { v1, v2 }, Lokhttp3/internal/Util;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z
    move-result v1
    if-eqz v1, :L1
    iget-object v1, p0, Lokhttp3/CertificatePinner;->pins:Ljava/util/Set;
    iget-object p1, p1, Lokhttp3/CertificatePinner;->pins:Ljava/util/Set;
  .line 3
    invoke-interface { v1, p1 }, Ljava/util/Set;->equals(Ljava/lang/Object;)Z
    move-result p1
    if-eqz p1, :L1
    goto :L2
  :L1
    const/4 v0, 0
  :L2
    return v0
.end method

.method findMatchingPins(Ljava/lang/String;)Ljava/util/List;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(",
      "Ljava/lang/String;",
      ")",
      "Ljava/util/List<",
      "Lokhttp3/CertificatePinner$Pin;",
      ">;"
    }
  .end annotation
  .registers 6
  .line 1
    invoke-static { }, Ljava/util/Collections;->emptyList()Ljava/util/List;
    move-result-object v0
  .line 2
    iget-object v1, p0, Lokhttp3/CertificatePinner;->pins:Ljava/util/Set;
    invoke-interface { v1 }, Ljava/util/Set;->iterator()Ljava/util/Iterator;
    move-result-object v1
  :L0
    invoke-interface { v1 }, Ljava/util/Iterator;->hasNext()Z
    move-result v2
    if-eqz v2, :L2
    invoke-interface { v1 }, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object v2
    check-cast v2, Lokhttp3/CertificatePinner$Pin;
  .line 3
    invoke-virtual { v2, p1 }, Lokhttp3/CertificatePinner$Pin;->matches(Ljava/lang/String;)Z
    move-result v3
    if-eqz v3, :L0
  .line 4
    invoke-interface { v0 }, Ljava/util/List;->isEmpty()Z
    move-result v3
    if-eqz v3, :L1
    new-instance v0, Ljava/util/ArrayList;
    invoke-direct { v0 }, Ljava/util/ArrayList;-><init>()V
  :L1
  .line 5
    invoke-interface { v0, v2 }, Ljava/util/List;->add(Ljava/lang/Object;)Z
    goto :L0
  :L2
    return-object v0
.end method

.method public hashCode()I
  .registers 3
  .line 1
    iget-object v0, p0, Lokhttp3/CertificatePinner;->certificateChainCleaner:Lokhttp3/internal/tls/CertificateChainCleaner;
    if-eqz v0, :L0
    invoke-virtual { v0 }, Ljava/lang/Object;->hashCode()I
    move-result v0
    goto :L1
  :L0
    const/4 v0, 0
  :L1
    mul-int/lit8 v0, v0, 31
  .line 2
    iget-object v1, p0, Lokhttp3/CertificatePinner;->pins:Ljava/util/Set;
    invoke-interface { v1 }, Ljava/util/Set;->hashCode()I
    move-result v1
    add-int/2addr v0, v1
    return v0
.end method

.method withCertificateChainCleaner(Lokhttp3/internal/tls/CertificateChainCleaner;)Lokhttp3/CertificatePinner;
  .parameter # Lokhttp3/internal/tls/CertificateChainCleaner;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
  .end parameter
  .registers 4
  .line 1
    iget-object v0, p0, Lokhttp3/CertificatePinner;->certificateChainCleaner:Lokhttp3/internal/tls/CertificateChainCleaner;
    invoke-static { v0, p1 }, Lokhttp3/internal/Util;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :L0
    move-object v0, p0
    goto :L1
  :L0
  .line 2
    new-instance v0, Lokhttp3/CertificatePinner;
    iget-object v1, p0, Lokhttp3/CertificatePinner;->pins:Ljava/util/Set;
    invoke-direct { v0, v1, p1 }, Lokhttp3/CertificatePinner;-><init>(Ljava/util/Set;Lokhttp3/internal/tls/CertificateChainCleaner;)V
  :L1
    return-object v0
.end method
