.class public final Lokhttp3/internal/tls/BasicCertificateChainCleaner;
.super Lokhttp3/internal/tls/CertificateChainCleaner;
.source "SourceFile"

.field private final static MAX_SIGNERS:I = 9

.field private final trustRootIndex:Lokhttp3/internal/tls/TrustRootIndex;

.method public constructor <init>(Lokhttp3/internal/tls/TrustRootIndex;)V
  .registers 2
  .line 1
    invoke-direct { p0 }, Lokhttp3/internal/tls/CertificateChainCleaner;-><init>()V
  .line 2
    iput-object p1, p0, Lokhttp3/internal/tls/BasicCertificateChainCleaner;->trustRootIndex:Lokhttp3/internal/tls/TrustRootIndex;
    return-void
.end method

.method private verifySignature(Ljava/security/cert/X509Certificate;Ljava/security/cert/X509Certificate;)Z
  .catch Ljava/security/GeneralSecurityException; { :L0 .. :L1 } :L2
  .registers 5
  .line 1
    invoke-virtual { p1 }, Ljava/security/cert/X509Certificate;->getIssuerDN()Ljava/security/Principal;
    move-result-object v0
    invoke-virtual { p2 }, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;
    move-result-object v1
    invoke-interface { v0, v1 }, Ljava/security/Principal;->equals(Ljava/lang/Object;)Z
    move-result v0
    const/4 v1, 0
    if-nez v0, :L0
    return v1
  :L0
  .line 2
    invoke-virtual { p2 }, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;
    move-result-object p2
    invoke-virtual { p1, p2 }, Ljava/security/cert/X509Certificate;->verify(Ljava/security/PublicKey;)V
  :L1
    const/4 p1, 1
    return p1
  :L2
    return v1
.end method

.method public clean(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(",
      "Ljava/util/List<",
      "Ljava/security/cert/Certificate;",
      ">;",
      "Ljava/lang/String;",
      ")",
      "Ljava/util/List<",
      "Ljava/security/cert/Certificate;",
      ">;"
    }
  .end annotation
  .registers 9
  .line 1
    new-instance p2, Ljava/util/ArrayDeque;
    invoke-direct { p2, p1 }, Ljava/util/ArrayDeque;-><init>(Ljava/util/Collection;)V
  .line 2
    new-instance p1, Ljava/util/ArrayList;
    invoke-direct { p1 }, Ljava/util/ArrayList;-><init>()V
  .line 3
    invoke-interface { p2 }, Ljava/util/Deque;->removeFirst()Ljava/lang/Object;
    move-result-object v0
    invoke-interface { p1, v0 }, Ljava/util/List;->add(Ljava/lang/Object;)Z
    const/4 v0, 0
    const/4 v1, 0
  :L0
    const/16 v2, 9
    if-ge v0, v2, :L9
  .line 4
    invoke-interface { p1 }, Ljava/util/List;->size()I
    move-result v2
    const/4 v3, 1
    sub-int/2addr v2, v3
    invoke-interface { p1, v2 }, Ljava/util/List;->get(I)Ljava/lang/Object;
    move-result-object v2
    check-cast v2, Ljava/security/cert/X509Certificate;
  .line 5
    iget-object v4, p0, Lokhttp3/internal/tls/BasicCertificateChainCleaner;->trustRootIndex:Lokhttp3/internal/tls/TrustRootIndex;
    invoke-interface { v4, v2 }, Lokhttp3/internal/tls/TrustRootIndex;->findByIssuerAndSignature(Ljava/security/cert/X509Certificate;)Ljava/security/cert/X509Certificate;
    move-result-object v4
    if-eqz v4, :L4
  .line 6
    invoke-interface { p1 }, Ljava/util/List;->size()I
    move-result v1
    if-gt v1, v3, :L1
    invoke-virtual { v2, v4 }, Ljava/security/cert/X509Certificate;->equals(Ljava/lang/Object;)Z
    move-result v1
    if-nez v1, :L2
  :L1
  .line 7
    invoke-interface { p1, v4 }, Ljava/util/List;->add(Ljava/lang/Object;)Z
  :L2
  .line 8
    invoke-direct { p0, v4, v4 }, Lokhttp3/internal/tls/BasicCertificateChainCleaner;->verifySignature(Ljava/security/cert/X509Certificate;Ljava/security/cert/X509Certificate;)Z
    move-result v1
    if-eqz v1, :L3
    return-object p1
  :L3
    const/4 v1, 1
    goto :L6
  :L4
  .line 9
    invoke-interface { p2 }, Ljava/util/Deque;->iterator()Ljava/util/Iterator;
    move-result-object v3
  :L5
    invoke-interface { v3 }, Ljava/util/Iterator;->hasNext()Z
    move-result v4
    if-eqz v4, :L7
  .line 10
    invoke-interface { v3 }, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object v4
    check-cast v4, Ljava/security/cert/X509Certificate;
  .line 11
    invoke-direct { p0, v2, v4 }, Lokhttp3/internal/tls/BasicCertificateChainCleaner;->verifySignature(Ljava/security/cert/X509Certificate;Ljava/security/cert/X509Certificate;)Z
    move-result v5
    if-eqz v5, :L5
  .line 12
    invoke-interface { v3 }, Ljava/util/Iterator;->remove()V
  .line 13
    invoke-interface { p1, v4 }, Ljava/util/List;->add(Ljava/lang/Object;)Z
  :L6
    add-int/lit8 v0, v0, 1
    goto :L0
  :L7
    if-eqz v1, :L8
    return-object p1
  :L8
  .line 14
    new-instance p1, Ljavax/net/ssl/SSLPeerUnverifiedException;
    new-instance p2, Ljava/lang/StringBuilder;
    invoke-direct { p2 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v0, "Failed to find a trusted cert that signed "
    invoke-virtual { p2, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { p2, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    invoke-virtual { p2 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p2
    invoke-direct { p1, p2 }, Ljavax/net/ssl/SSLPeerUnverifiedException;-><init>(Ljava/lang/String;)V
    throw p1
  :L9
  .line 15
    new-instance p2, Ljavax/net/ssl/SSLPeerUnverifiedException;
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "Certificate chain too long: "
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0, p1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p1
    invoke-direct { p2, p1 }, Ljavax/net/ssl/SSLPeerUnverifiedException;-><init>(Ljava/lang/String;)V
    goto :L11
  :L10
    throw p2
  :L11
    goto :L10
.end method

.method public equals(Ljava/lang/Object;)Z
  .registers 4
    const/4 v0, 1
    if-ne p1, p0, :L0
    return v0
  :L0
  .line 1
    instance-of v1, p1, Lokhttp3/internal/tls/BasicCertificateChainCleaner;
    if-eqz v1, :L1
    check-cast p1, Lokhttp3/internal/tls/BasicCertificateChainCleaner;
    iget-object p1, p1, Lokhttp3/internal/tls/BasicCertificateChainCleaner;->trustRootIndex:Lokhttp3/internal/tls/TrustRootIndex;
    iget-object v1, p0, Lokhttp3/internal/tls/BasicCertificateChainCleaner;->trustRootIndex:Lokhttp3/internal/tls/TrustRootIndex;
  .line 2
    invoke-virtual { p1, v1 }, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    move-result p1
    if-eqz p1, :L1
    goto :L2
  :L1
    const/4 v0, 0
  :L2
    return v0
.end method

.method public hashCode()I
  .registers 2
  .line 1
    iget-object v0, p0, Lokhttp3/internal/tls/BasicCertificateChainCleaner;->trustRootIndex:Lokhttp3/internal/tls/TrustRootIndex;
    invoke-virtual { v0 }, Ljava/lang/Object;->hashCode()I
    move-result v0
    return v0
.end method
