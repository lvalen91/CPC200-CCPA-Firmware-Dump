.class final Lokhttp3/internal/platform/Jdk9Platform;
.super Lokhttp3/internal/platform/Platform;
.source "SourceFile"

.field final getProtocolMethod:Ljava/lang/reflect/Method;

.field final setProtocolMethod:Ljava/lang/reflect/Method;

.method constructor <init>(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V
  .registers 3
  .line 1
    invoke-direct { p0 }, Lokhttp3/internal/platform/Platform;-><init>()V
  .line 2
    iput-object p1, p0, Lokhttp3/internal/platform/Jdk9Platform;->setProtocolMethod:Ljava/lang/reflect/Method;
  .line 3
    iput-object p2, p0, Lokhttp3/internal/platform/Jdk9Platform;->getProtocolMethod:Ljava/lang/reflect/Method;
    return-void
.end method

.method public static buildIfSupported()Lokhttp3/internal/platform/Jdk9Platform;
  .catch Ljava/lang/NoSuchMethodException; { :L0 .. :L1 } :L2
  .registers 5
  :L0
  .line 1
    const-class v0, Ljavax/net/ssl/SSLParameters;
    const-string v1, "setApplicationProtocols"
    const/4 v2, 1
    new-array v2, v2, [Ljava/lang/Class;
    const-class v3, [Ljava/lang/String;
    const/4 v4, 0
    aput-object v3, v2, v4
  .line 2
    invoke-virtual { v0, v1, v2 }, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    move-result-object v0
  .line 3
    const-class v1, Ljavax/net/ssl/SSLSocket;
    const-string v2, "getApplicationProtocol"
    new-array v3, v4, [Ljava/lang/Class;
    invoke-virtual { v1, v2, v3 }, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    move-result-object v1
  .line 4
    new-instance v2, Lokhttp3/internal/platform/Jdk9Platform;
    invoke-direct { v2, v0, v1 }, Lokhttp3/internal/platform/Jdk9Platform;-><init>(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V
  :L1
    return-object v2
  :L2
    const/4 v0, 0
    return-object v0
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
  .catch Ljava/lang/IllegalAccessException; { :L0 .. :L1 } :L3
  .catch Ljava/lang/reflect/InvocationTargetException; { :L0 .. :L1 } :L2
  .registers 8
  :L0
  .line 1
    invoke-virtual { p1 }, Ljavax/net/ssl/SSLSocket;->getSSLParameters()Ljavax/net/ssl/SSLParameters;
    move-result-object p2
  .line 2
    invoke-static { p3 }, Lokhttp3/internal/platform/Platform;->alpnProtocolNames(Ljava/util/List;)Ljava/util/List;
    move-result-object p3
  .line 3
    iget-object v0, p0, Lokhttp3/internal/platform/Jdk9Platform;->setProtocolMethod:Ljava/lang/reflect/Method;
    const/4 v1, 1
    new-array v1, v1, [Ljava/lang/Object;
    const/4 v2, 0
  .line 4
    invoke-interface { p3 }, Ljava/util/List;->size()I
    move-result v3
    new-array v3, v3, [Ljava/lang/String;
    invoke-interface { p3, v3 }, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    move-result-object p3
    aput-object p3, v1, v2
  .line 5
    invoke-virtual { v0, p2, v1 }, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
  .line 6
    invoke-virtual { p1, p2 }, Ljavax/net/ssl/SSLSocket;->setSSLParameters(Ljavax/net/ssl/SSLParameters;)V
  :L1
    return-void
  :L2
    move-exception p1
    goto :L4
  :L3
    move-exception p1
  :L4
    const-string p2, "unable to set ssl parameters"
  .line 7
    invoke-static { p2, p1 }, Lokhttp3/internal/Util;->assertionError(Ljava/lang/String;Ljava/lang/Exception;)Ljava/lang/AssertionError;
    move-result-object p1
    throw p1
.end method

.method public getSelectedProtocol(Ljavax/net/ssl/SSLSocket;)Ljava/lang/String;
  .annotation runtime Ljavax/annotation/Nullable;
  .end annotation
  .catch Ljava/lang/IllegalAccessException; { :L0 .. :L1 } :L5
  .catch Ljava/lang/reflect/InvocationTargetException; { :L0 .. :L1 } :L4
  .registers 4
  :L0
  .line 1
    iget-object v0, p0, Lokhttp3/internal/platform/Jdk9Platform;->getProtocolMethod:Ljava/lang/reflect/Method;
    const/4 v1, 0
    new-array v1, v1, [Ljava/lang/Object;
    invoke-virtual { v0, p1, v1 }, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object p1
    check-cast p1, Ljava/lang/String;
    if-eqz p1, :L3
    const-string v0, ""
  .line 2
    invoke-virtual { p1, v0 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v0
  :L1
    if-eqz v0, :L2
    goto :L3
  :L2
    return-object p1
  :L3
    const/4 p1, 0
    return-object p1
  :L4
    move-exception p1
    goto :L6
  :L5
    move-exception p1
  :L6
    const-string v0, "unable to get selected protocols"
  .line 3
    invoke-static { v0, p1 }, Lokhttp3/internal/Util;->assertionError(Ljava/lang/String;Ljava/lang/Exception;)Ljava/lang/AssertionError;
    move-result-object p1
    throw p1
.end method

.method public trustManager(Ljavax/net/ssl/SSLSocketFactory;)Ljavax/net/ssl/X509TrustManager;
  .registers 3
  .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;
    const-string v0, "clientBuilder.sslSocketFactory(SSLSocketFactory) not supported on JDK 9+"
    invoke-direct { p1, v0 }, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V
    throw p1
.end method
