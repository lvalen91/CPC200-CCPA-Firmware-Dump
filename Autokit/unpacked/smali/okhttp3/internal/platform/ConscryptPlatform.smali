.class public Lokhttp3/internal/platform/ConscryptPlatform;
.super Lokhttp3/internal/platform/Platform;
.source "SourceFile"

.method private constructor <init>()V
  .registers 1
  .line 1
    invoke-direct { p0 }, Lokhttp3/internal/platform/Platform;-><init>()V
    return-void
.end method

.method public static buildIfSupported()Lokhttp3/internal/platform/ConscryptPlatform;
  .catch Ljava/lang/ClassNotFoundException; { :L0 .. :L2 } :L3
  .registers 4
    const/4 v0, 0
  :L0
    const-string v1, "org.conscrypt.Conscrypt"
  .line 1
    invoke-static { v1 }, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
  .line 2
    invoke-static { }, Lorg/conscrypt/Conscrypt;->isAvailable()Z
    move-result v1
    if-nez v1, :L1
    return-object v0
  :L1
  .line 3
    new-instance v1, Lokhttp3/internal/platform/ConscryptPlatform;
    invoke-direct { v1 }, Lokhttp3/internal/platform/ConscryptPlatform;-><init>()V
  :L2
    return-object v1
  :L3
    return-object v0
.end method

.method private getProvider()Ljava/security/Provider;
  .registers 2
  .line 1
    invoke-static { }, Lorg/conscrypt/Conscrypt;->newProviderBuilder()Lorg/conscrypt/Conscrypt$ProviderBuilder;
    move-result-object v0
    invoke-virtual { v0 }, Lorg/conscrypt/Conscrypt$ProviderBuilder;->provideTrustManager()Lorg/conscrypt/Conscrypt$ProviderBuilder;
    move-result-object v0
    invoke-virtual { v0 }, Lorg/conscrypt/Conscrypt$ProviderBuilder;->build()Ljava/security/Provider;
    move-result-object v0
    return-object v0
.end method

.method public configureSslSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V
  .registers 3
  .line 1
    invoke-static { p1 }, Lorg/conscrypt/Conscrypt;->isConscrypt(Ljavax/net/ssl/SSLSocketFactory;)Z
    move-result v0
    if-eqz v0, :L0
    const/4 v0, 1
  .line 2
    invoke-static { p1, v0 }, Lorg/conscrypt/Conscrypt;->setUseEngineSocket(Ljavax/net/ssl/SSLSocketFactory;Z)V
  :L0
    return-void
.end method

.method public configureTlsExtensions(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;Ljava/util/List;)V
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(",
      "Ljavax/net/ssl/SSLSocket;",
      "Ljava/lang/String;",
      "Ljava/util/List<",
      "Lokhttp3/Protocol;",
      ">;)V"
    }
  .end annotation
  .registers 5
  .line 1
    invoke-static { p1 }, Lorg/conscrypt/Conscrypt;->isConscrypt(Ljavax/net/ssl/SSLSocket;)Z
    move-result v0
    if-eqz v0, :L1
    if-eqz p2, :L0
    const/4 v0, 1
  .line 2
    invoke-static { p1, v0 }, Lorg/conscrypt/Conscrypt;->setUseSessionTickets(Ljavax/net/ssl/SSLSocket;Z)V
  .line 3
    invoke-static { p1, p2 }, Lorg/conscrypt/Conscrypt;->setHostname(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;)V
  :L0
  .line 4
    invoke-static { p3 }, Lokhttp3/internal/platform/Platform;->alpnProtocolNames(Ljava/util/List;)Ljava/util/List;
    move-result-object p2
    const/4 p3, 0
    new-array p3, p3, [Ljava/lang/String;
  .line 5
    invoke-interface { p2, p3 }, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    move-result-object p2
    check-cast p2, [Ljava/lang/String;
    invoke-static { p1, p2 }, Lorg/conscrypt/Conscrypt;->setApplicationProtocols(Ljavax/net/ssl/SSLSocket;[Ljava/lang/String;)V
    goto :L2
  :L1
  .line 6
    invoke-super { p0, p1, p2, p3 }, Lokhttp3/internal/platform/Platform;->configureTlsExtensions(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;Ljava/util/List;)V
  :L2
    return-void
.end method

.method public getSSLContext()Ljavax/net/ssl/SSLContext;
  .catch Ljava/security/NoSuchAlgorithmException; { :L0 .. :L1 } :L2
  .catch Ljava/security/NoSuchAlgorithmException; { :L3 .. :L4 } :L5
  .registers 4
  :L0
    const-string v0, "TLSv1.3"
  .line 1
    invoke-direct { p0 }, Lokhttp3/internal/platform/ConscryptPlatform;->getProvider()Ljava/security/Provider;
    move-result-object v1
    invoke-static { v0, v1 }, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/net/ssl/SSLContext;
    move-result-object v0
  :L1
    return-object v0
  :L2
    move-exception v0
  :L3
    const-string v1, "TLS"
  .line 2
    invoke-direct { p0 }, Lokhttp3/internal/platform/ConscryptPlatform;->getProvider()Ljava/security/Provider;
    move-result-object v2
    invoke-static { v1, v2 }, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/net/ssl/SSLContext;
    move-result-object v0
  :L4
    return-object v0
  :L5
  .line 3
    new-instance v1, Ljava/lang/IllegalStateException;
    const-string v2, "No TLS provider"
    invoke-direct { v1, v2, v0 }, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    throw v1
.end method

.method public getSelectedProtocol(Ljavax/net/ssl/SSLSocket;)Ljava/lang/String;
  .annotation runtime Ljavax/annotation/Nullable;
  .end annotation
  .registers 3
  .line 1
    invoke-static { p1 }, Lorg/conscrypt/Conscrypt;->isConscrypt(Ljavax/net/ssl/SSLSocket;)Z
    move-result v0
    if-eqz v0, :L0
  .line 2
    invoke-static { p1 }, Lorg/conscrypt/Conscrypt;->getApplicationProtocol(Ljavax/net/ssl/SSLSocket;)Ljava/lang/String;
    move-result-object p1
    return-object p1
  :L0
  .line 3
    invoke-super { p0, p1 }, Lokhttp3/internal/platform/Platform;->getSelectedProtocol(Ljavax/net/ssl/SSLSocket;)Ljava/lang/String;
    move-result-object p1
    return-object p1
.end method

.method public trustManager(Ljavax/net/ssl/SSLSocketFactory;)Ljavax/net/ssl/X509TrustManager;
  .annotation runtime Ljavax/annotation/Nullable;
  .end annotation
  .catch Ljava/lang/Exception; { :L0 .. :L1 } :L3
  .registers 4
  .line 1
    invoke-static { p1 }, Lorg/conscrypt/Conscrypt;->isConscrypt(Ljavax/net/ssl/SSLSocketFactory;)Z
    move-result v0
    if-nez v0, :L0
  .line 2
    invoke-super { p0, p1 }, Lokhttp3/internal/platform/Platform;->trustManager(Ljavax/net/ssl/SSLSocketFactory;)Ljavax/net/ssl/X509TrustManager;
    move-result-object p1
    return-object p1
  :L0
  .line 3
    const-class v0, Ljava/lang/Object;
    const-string v1, "sslParameters"
  .line 4
    invoke-static { p1, v0, v1 }, Lokhttp3/internal/platform/Platform;->readFieldOrNull(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;
    move-result-object p1
    if-eqz p1, :L2
  .line 5
    const-class v0, Ljavax/net/ssl/X509TrustManager;
    const-string v1, "x509TrustManager"
    invoke-static { p1, v0, v1 }, Lokhttp3/internal/platform/Platform;->readFieldOrNull(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;
    move-result-object p1
    check-cast p1, Ljavax/net/ssl/X509TrustManager;
  :L1
    return-object p1
  :L2
    const/4 p1, 0
    return-object p1
  :L3
    move-exception p1
  .line 6
    new-instance v0, Ljava/lang/UnsupportedOperationException;
    const-string v1, "clientBuilder.sslSocketFactory(SSLSocketFactory) not supported on Conscrypt"
    invoke-direct { v0, v1, p1 }, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    throw v0
.end method
