.class public final Lokhttp3/internal/tls/BasicTrustRootIndex;
.super Ljava/lang/Object;
.implements Lokhttp3/internal/tls/TrustRootIndex;
.source "SourceFile"

.field private final subjectToCaCerts:Ljava/util/Map;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "Ljava/util/Map<",
      "Ljavax/security/auth/x500/X500Principal;",
      "Ljava/util/Set<",
      "Ljava/security/cert/X509Certificate;",
      ">;>;"
    }
  .end annotation
.end field

.method public varargs constructor <init>([Ljava/security/cert/X509Certificate;)V
  .registers 8
  .line 1
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
  .line 2
    new-instance v0, Ljava/util/LinkedHashMap;
    invoke-direct { v0 }, Ljava/util/LinkedHashMap;-><init>()V
    iput-object v0, p0, Lokhttp3/internal/tls/BasicTrustRootIndex;->subjectToCaCerts:Ljava/util/Map;
  .line 3
    array-length v0, p1
    const/4 v1, 0
  :L0
    if-ge v1, v0, :L2
    aget-object v2, p1, v1
  .line 4
    invoke-virtual { v2 }, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;
    move-result-object v3
  .line 5
    iget-object v4, p0, Lokhttp3/internal/tls/BasicTrustRootIndex;->subjectToCaCerts:Ljava/util/Map;
    invoke-interface { v4, v3 }, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object v4
    check-cast v4, Ljava/util/Set;
    if-nez v4, :L1
  .line 6
    new-instance v4, Ljava/util/LinkedHashSet;
    const/4 v5, 1
    invoke-direct { v4, v5 }, Ljava/util/LinkedHashSet;-><init>(I)V
  .line 7
    iget-object v5, p0, Lokhttp3/internal/tls/BasicTrustRootIndex;->subjectToCaCerts:Ljava/util/Map;
    invoke-interface { v5, v3, v4 }, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
  :L1
  .line 8
    invoke-interface { v4, v2 }, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    add-int/lit8 v1, v1, 1
    goto :L0
  :L2
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
  .registers 4
    const/4 v0, 1
    if-ne p1, p0, :L0
    return v0
  :L0
  .line 1
    instance-of v1, p1, Lokhttp3/internal/tls/BasicTrustRootIndex;
    if-eqz v1, :L1
    check-cast p1, Lokhttp3/internal/tls/BasicTrustRootIndex;
    iget-object p1, p1, Lokhttp3/internal/tls/BasicTrustRootIndex;->subjectToCaCerts:Ljava/util/Map;
    iget-object v1, p0, Lokhttp3/internal/tls/BasicTrustRootIndex;->subjectToCaCerts:Ljava/util/Map;
  .line 2
    invoke-interface { p1, v1 }, Ljava/util/Map;->equals(Ljava/lang/Object;)Z
    move-result p1
    if-eqz p1, :L1
    goto :L2
  :L1
    const/4 v0, 0
  :L2
    return v0
.end method

.method public findByIssuerAndSignature(Ljava/security/cert/X509Certificate;)Ljava/security/cert/X509Certificate;
  .catch Ljava/lang/Exception; { :L2 .. :L3 } :L4
  .registers 6
  .line 1
    invoke-virtual { p1 }, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;
    move-result-object v0
  .line 2
    iget-object v1, p0, Lokhttp3/internal/tls/BasicTrustRootIndex;->subjectToCaCerts:Ljava/util/Map;
    invoke-interface { v1, v0 }, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Ljava/util/Set;
    const/4 v1, 0
    if-nez v0, :L0
    return-object v1
  :L0
  .line 3
    invoke-interface { v0 }, Ljava/util/Set;->iterator()Ljava/util/Iterator;
    move-result-object v0
  :L1
    invoke-interface { v0 }, Ljava/util/Iterator;->hasNext()Z
    move-result v2
    if-eqz v2, :L5
    invoke-interface { v0 }, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object v2
    check-cast v2, Ljava/security/cert/X509Certificate;
  .line 4
    invoke-virtual { v2 }, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;
    move-result-object v3
  :L2
  .line 5
    invoke-virtual { p1, v3 }, Ljava/security/cert/X509Certificate;->verify(Ljava/security/PublicKey;)V
  :L3
    return-object v2
  :L4
    nop
    goto :L1
  :L5
    return-object v1
.end method

.method public hashCode()I
  .registers 2
  .line 1
    iget-object v0, p0, Lokhttp3/internal/tls/BasicTrustRootIndex;->subjectToCaCerts:Ljava/util/Map;
    invoke-interface { v0 }, Ljava/util/Map;->hashCode()I
    move-result v0
    return v0
.end method
