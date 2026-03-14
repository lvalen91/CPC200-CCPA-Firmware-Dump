.class public final Lokhttp3/Handshake;
.super Ljava/lang/Object;
.source "SourceFile"

.field private final cipherSuite:Lokhttp3/CipherSuite;

.field private final localCertificates:Ljava/util/List;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "Ljava/util/List<",
      "Ljava/security/cert/Certificate;",
      ">;"
    }
  .end annotation
.end field

.field private final peerCertificates:Ljava/util/List;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "Ljava/util/List<",
      "Ljava/security/cert/Certificate;",
      ">;"
    }
  .end annotation
.end field

.field private final tlsVersion:Lokhttp3/TlsVersion;

.method private constructor <init>(Lokhttp3/TlsVersion;Lokhttp3/CipherSuite;Ljava/util/List;Ljava/util/List;)V
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(",
      "Lokhttp3/TlsVersion;",
      "Lokhttp3/CipherSuite;",
      "Ljava/util/List<",
      "Ljava/security/cert/Certificate;",
      ">;",
      "Ljava/util/List<",
      "Ljava/security/cert/Certificate;",
      ">;)V"
    }
  .end annotation
  .registers 5
  .line 1
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
  .line 2
    iput-object p1, p0, Lokhttp3/Handshake;->tlsVersion:Lokhttp3/TlsVersion;
  .line 3
    iput-object p2, p0, Lokhttp3/Handshake;->cipherSuite:Lokhttp3/CipherSuite;
  .line 4
    iput-object p3, p0, Lokhttp3/Handshake;->peerCertificates:Ljava/util/List;
  .line 5
    iput-object p4, p0, Lokhttp3/Handshake;->localCertificates:Ljava/util/List;
    return-void
.end method

.method public static get(Ljavax/net/ssl/SSLSession;)Lokhttp3/Handshake;
  .catch Ljavax/net/ssl/SSLPeerUnverifiedException; { :L0 .. :L1 } :L2
  .registers 5
  .line 1
    invoke-interface { p0 }, Ljavax/net/ssl/SSLSession;->getCipherSuite()Ljava/lang/String;
    move-result-object v0
    if-eqz v0, :L11
    const-string v1, "SSL_NULL_WITH_NULL_NULL"
  .line 2
    invoke-virtual { v1, v0 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v1
    if-nez v1, :L10
  .line 3
    invoke-static { v0 }, Lokhttp3/CipherSuite;->forJavaName(Ljava/lang/String;)Lokhttp3/CipherSuite;
    move-result-object v0
  .line 4
    invoke-interface { p0 }, Ljavax/net/ssl/SSLSession;->getProtocol()Ljava/lang/String;
    move-result-object v1
    if-eqz v1, :L9
    const-string v2, "NONE"
  .line 5
    invoke-virtual { v2, v1 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v2
    if-nez v2, :L8
  .line 6
    invoke-static { v1 }, Lokhttp3/TlsVersion;->forJavaName(Ljava/lang/String;)Lokhttp3/TlsVersion;
    move-result-object v1
  :L0
  .line 7
    invoke-interface { p0 }, Ljavax/net/ssl/SSLSession;->getPeerCertificates()[Ljava/security/cert/Certificate;
    move-result-object v2
  :L1
    goto :L3
  :L2
    const/4 v2, 0
  :L3
    if-eqz v2, :L4
  .line 8
    invoke-static { v2 }, Lokhttp3/internal/Util;->immutableList([Ljava/lang/Object;)Ljava/util/List;
    move-result-object v2
    goto :L5
  :L4
  .line 9
    invoke-static { }, Ljava/util/Collections;->emptyList()Ljava/util/List;
    move-result-object v2
  :L5
  .line 10
    invoke-interface { p0 }, Ljavax/net/ssl/SSLSession;->getLocalCertificates()[Ljava/security/cert/Certificate;
    move-result-object p0
    if-eqz p0, :L6
  .line 11
    invoke-static { p0 }, Lokhttp3/internal/Util;->immutableList([Ljava/lang/Object;)Ljava/util/List;
    move-result-object p0
    goto :L7
  :L6
  .line 12
    invoke-static { }, Ljava/util/Collections;->emptyList()Ljava/util/List;
    move-result-object p0
  :L7
  .line 13
    new-instance v3, Lokhttp3/Handshake;
    invoke-direct { v3, v1, v0, v2, p0 }, Lokhttp3/Handshake;-><init>(Lokhttp3/TlsVersion;Lokhttp3/CipherSuite;Ljava/util/List;Ljava/util/List;)V
    return-object v3
  :L8
  .line 14
    new-instance p0, Ljava/io/IOException;
    const-string v0, "tlsVersion == NONE"
    invoke-direct { p0, v0 }, Ljava/io/IOException;-><init>(Ljava/lang/String;)V
    throw p0
  :L9
  .line 15
    new-instance p0, Ljava/lang/IllegalStateException;
    const-string v0, "tlsVersion == null"
    invoke-direct { p0, v0 }, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
    throw p0
  :L10
  .line 16
    new-instance p0, Ljava/io/IOException;
    const-string v0, "cipherSuite == SSL_NULL_WITH_NULL_NULL"
    invoke-direct { p0, v0 }, Ljava/io/IOException;-><init>(Ljava/lang/String;)V
    throw p0
  :L11
  .line 17
    new-instance p0, Ljava/lang/IllegalStateException;
    const-string v0, "cipherSuite == null"
    invoke-direct { p0, v0 }, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
    throw p0
.end method

.method public static get(Lokhttp3/TlsVersion;Lokhttp3/CipherSuite;Ljava/util/List;Ljava/util/List;)Lokhttp3/Handshake;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(",
      "Lokhttp3/TlsVersion;",
      "Lokhttp3/CipherSuite;",
      "Ljava/util/List<",
      "Ljava/security/cert/Certificate;",
      ">;",
      "Ljava/util/List<",
      "Ljava/security/cert/Certificate;",
      ">;)",
      "Lokhttp3/Handshake;"
    }
  .end annotation
  .registers 5
    if-eqz p0, :L1
    if-eqz p1, :L0
  .line 18
    new-instance v0, Lokhttp3/Handshake;
    invoke-static { p2 }, Lokhttp3/internal/Util;->immutableList(Ljava/util/List;)Ljava/util/List;
    move-result-object p2
  .line 19
    invoke-static { p3 }, Lokhttp3/internal/Util;->immutableList(Ljava/util/List;)Ljava/util/List;
    move-result-object p3
    invoke-direct { v0, p0, p1, p2, p3 }, Lokhttp3/Handshake;-><init>(Lokhttp3/TlsVersion;Lokhttp3/CipherSuite;Ljava/util/List;Ljava/util/List;)V
    return-object v0
  :L0
  .line 20
    new-instance p0, Ljava/lang/NullPointerException;
    const-string p1, "cipherSuite == null"
    invoke-direct { p0, p1 }, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V
    throw p0
  :L1
  .line 21
    new-instance p0, Ljava/lang/NullPointerException;
    const-string p1, "tlsVersion == null"
    invoke-direct { p0, p1 }, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V
    throw p0
.end method

.method public cipherSuite()Lokhttp3/CipherSuite;
  .registers 2
  .line 1
    iget-object v0, p0, Lokhttp3/Handshake;->cipherSuite:Lokhttp3/CipherSuite;
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
  .parameter # Ljava/lang/Object;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
  .end parameter
  .registers 5
  .line 1
    instance-of v0, p1, Lokhttp3/Handshake;
    const/4 v1, 0
    if-nez v0, :L0
    return v1
  :L0
  .line 2
    check-cast p1, Lokhttp3/Handshake;
  .line 3
    iget-object v0, p0, Lokhttp3/Handshake;->tlsVersion:Lokhttp3/TlsVersion;
    iget-object v2, p1, Lokhttp3/Handshake;->tlsVersion:Lokhttp3/TlsVersion;
    invoke-virtual { v0, v2 }, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :L1
    iget-object v0, p0, Lokhttp3/Handshake;->cipherSuite:Lokhttp3/CipherSuite;
    iget-object v2, p1, Lokhttp3/Handshake;->cipherSuite:Lokhttp3/CipherSuite;
  .line 4
    invoke-virtual { v0, v2 }, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :L1
    iget-object v0, p0, Lokhttp3/Handshake;->peerCertificates:Ljava/util/List;
    iget-object v2, p1, Lokhttp3/Handshake;->peerCertificates:Ljava/util/List;
  .line 5
    invoke-interface { v0, v2 }, Ljava/util/List;->equals(Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :L1
    iget-object v0, p0, Lokhttp3/Handshake;->localCertificates:Ljava/util/List;
    iget-object p1, p1, Lokhttp3/Handshake;->localCertificates:Ljava/util/List;
  .line 6
    invoke-interface { v0, p1 }, Ljava/util/List;->equals(Ljava/lang/Object;)Z
    move-result p1
    if-eqz p1, :L1
    const/4 v1, 1
  :L1
    return v1
.end method

.method public hashCode()I
  .registers 3
  .line 1
    iget-object v0, p0, Lokhttp3/Handshake;->tlsVersion:Lokhttp3/TlsVersion;
    invoke-virtual { v0 }, Ljava/lang/Enum;->hashCode()I
    move-result v0
    const/16 v1, 527
    add-int/2addr v1, v0
    mul-int/lit8 v1, v1, 31
  .line 2
    iget-object v0, p0, Lokhttp3/Handshake;->cipherSuite:Lokhttp3/CipherSuite;
    invoke-virtual { v0 }, Ljava/lang/Object;->hashCode()I
    move-result v0
    add-int/2addr v1, v0
    mul-int/lit8 v1, v1, 31
  .line 3
    iget-object v0, p0, Lokhttp3/Handshake;->peerCertificates:Ljava/util/List;
    invoke-interface { v0 }, Ljava/util/List;->hashCode()I
    move-result v0
    add-int/2addr v1, v0
    mul-int/lit8 v1, v1, 31
  .line 4
    iget-object v0, p0, Lokhttp3/Handshake;->localCertificates:Ljava/util/List;
    invoke-interface { v0 }, Ljava/util/List;->hashCode()I
    move-result v0
    add-int/2addr v1, v0
    return v1
.end method

.method public localCertificates()Ljava/util/List;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "()",
      "Ljava/util/List<",
      "Ljava/security/cert/Certificate;",
      ">;"
    }
  .end annotation
  .registers 2
  .line 1
    iget-object v0, p0, Lokhttp3/Handshake;->localCertificates:Ljava/util/List;
    return-object v0
.end method

.method public localPrincipal()Ljava/security/Principal;
  .annotation runtime Ljavax/annotation/Nullable;
  .end annotation
  .registers 3
  .line 1
    iget-object v0, p0, Lokhttp3/Handshake;->localCertificates:Ljava/util/List;
    invoke-interface { v0 }, Ljava/util/List;->isEmpty()Z
    move-result v0
    if-nez v0, :L0
  .line 2
    iget-object v0, p0, Lokhttp3/Handshake;->localCertificates:Ljava/util/List;
    const/4 v1, 0
    invoke-interface { v0, v1 }, Ljava/util/List;->get(I)Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Ljava/security/cert/X509Certificate;
    invoke-virtual { v0 }, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;
    move-result-object v0
    goto :L1
  :L0
    const/4 v0, 0
  :L1
    return-object v0
.end method

.method public peerCertificates()Ljava/util/List;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "()",
      "Ljava/util/List<",
      "Ljava/security/cert/Certificate;",
      ">;"
    }
  .end annotation
  .registers 2
  .line 1
    iget-object v0, p0, Lokhttp3/Handshake;->peerCertificates:Ljava/util/List;
    return-object v0
.end method

.method public peerPrincipal()Ljava/security/Principal;
  .annotation runtime Ljavax/annotation/Nullable;
  .end annotation
  .registers 3
  .line 1
    iget-object v0, p0, Lokhttp3/Handshake;->peerCertificates:Ljava/util/List;
    invoke-interface { v0 }, Ljava/util/List;->isEmpty()Z
    move-result v0
    if-nez v0, :L0
  .line 2
    iget-object v0, p0, Lokhttp3/Handshake;->peerCertificates:Ljava/util/List;
    const/4 v1, 0
    invoke-interface { v0, v1 }, Ljava/util/List;->get(I)Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Ljava/security/cert/X509Certificate;
    invoke-virtual { v0 }, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;
    move-result-object v0
    goto :L1
  :L0
    const/4 v0, 0
  :L1
    return-object v0
.end method

.method public tlsVersion()Lokhttp3/TlsVersion;
  .registers 2
  .line 1
    iget-object v0, p0, Lokhttp3/Handshake;->tlsVersion:Lokhttp3/TlsVersion;
    return-object v0
.end method
