.class Lokhttp3/internal/platform/AndroidPlatform;
.super Lokhttp3/internal/platform/Platform;
.source "SourceFile"

.annotation system Ldalvik/annotation/MemberClasses;
  value = {
    Lokhttp3/internal/platform/AndroidPlatform$AndroidTrustRootIndex;,
    Lokhttp3/internal/platform/AndroidPlatform$CloseGuard;,
    Lokhttp3/internal/platform/AndroidPlatform$AndroidCertificateChainCleaner;
  }
.end annotation

.field private final static MAX_LOG_LENGTH:I = 4000

.field private final closeGuard:Lokhttp3/internal/platform/AndroidPlatform$CloseGuard;

.field private final getAlpnSelectedProtocol:Lokhttp3/internal/platform/OptionalMethod;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "Lokhttp3/internal/platform/OptionalMethod<",
      "Ljava/net/Socket;",
      ">;"
    }
  .end annotation
.end field

.field private final setAlpnProtocols:Lokhttp3/internal/platform/OptionalMethod;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "Lokhttp3/internal/platform/OptionalMethod<",
      "Ljava/net/Socket;",
      ">;"
    }
  .end annotation
.end field

.field private final setHostname:Lokhttp3/internal/platform/OptionalMethod;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "Lokhttp3/internal/platform/OptionalMethod<",
      "Ljava/net/Socket;",
      ">;"
    }
  .end annotation
.end field

.field private final setUseSessionTickets:Lokhttp3/internal/platform/OptionalMethod;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "Lokhttp3/internal/platform/OptionalMethod<",
      "Ljava/net/Socket;",
      ">;"
    }
  .end annotation
.end field

.field private final sslParametersClass:Ljava/lang/Class;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "Ljava/lang/Class<",
      "*>;"
    }
  .end annotation
.end field

.method constructor <init>(Ljava/lang/Class;Lokhttp3/internal/platform/OptionalMethod;Lokhttp3/internal/platform/OptionalMethod;Lokhttp3/internal/platform/OptionalMethod;Lokhttp3/internal/platform/OptionalMethod;)V
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(",
      "Ljava/lang/Class<",
      "*>;",
      "Lokhttp3/internal/platform/OptionalMethod<",
      "Ljava/net/Socket;",
      ">;",
      "Lokhttp3/internal/platform/OptionalMethod<",
      "Ljava/net/Socket;",
      ">;",
      "Lokhttp3/internal/platform/OptionalMethod<",
      "Ljava/net/Socket;",
      ">;",
      "Lokhttp3/internal/platform/OptionalMethod<",
      "Ljava/net/Socket;",
      ">;)V"
    }
  .end annotation
  .registers 7
  .line 1
    invoke-direct { p0 }, Lokhttp3/internal/platform/Platform;-><init>()V
  .line 2
    invoke-static { }, Lokhttp3/internal/platform/AndroidPlatform$CloseGuard;->get()Lokhttp3/internal/platform/AndroidPlatform$CloseGuard;
    move-result-object v0
    iput-object v0, p0, Lokhttp3/internal/platform/AndroidPlatform;->closeGuard:Lokhttp3/internal/platform/AndroidPlatform$CloseGuard;
  .line 3
    iput-object p1, p0, Lokhttp3/internal/platform/AndroidPlatform;->sslParametersClass:Ljava/lang/Class;
  .line 4
    iput-object p2, p0, Lokhttp3/internal/platform/AndroidPlatform;->setUseSessionTickets:Lokhttp3/internal/platform/OptionalMethod;
  .line 5
    iput-object p3, p0, Lokhttp3/internal/platform/AndroidPlatform;->setHostname:Lokhttp3/internal/platform/OptionalMethod;
  .line 6
    iput-object p4, p0, Lokhttp3/internal/platform/AndroidPlatform;->getAlpnSelectedProtocol:Lokhttp3/internal/platform/OptionalMethod;
  .line 7
    iput-object p5, p0, Lokhttp3/internal/platform/AndroidPlatform;->setAlpnProtocols:Lokhttp3/internal/platform/OptionalMethod;
    return-void
.end method

.method private api23IsCleartextTrafficPermitted(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Z
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(",
      "Ljava/lang/String;",
      "Ljava/lang/Class<",
      "*>;",
      "Ljava/lang/Object;",
      ")Z"
    }
  .end annotation
  .catch Ljava/lang/NoSuchMethodException; { :L0 .. :L1 } :L2
  .registers 7
  :L0
    const-string v0, "isCleartextTrafficPermitted"
    const/4 v1, 0
    new-array v2, v1, [Ljava/lang/Class;
  .line 1
    invoke-virtual { p2, v0, v2 }, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    move-result-object p2
    new-array v0, v1, [Ljava/lang/Object;
  .line 2
    invoke-virtual { p2, p3, v0 }, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object p2
    check-cast p2, Ljava/lang/Boolean;
    invoke-virtual { p2 }, Ljava/lang/Boolean;->booleanValue()Z
    move-result p1
  :L1
    return p1
  :L2
  .line 3
    invoke-super { p0, p1 }, Lokhttp3/internal/platform/Platform;->isCleartextTrafficPermitted(Ljava/lang/String;)Z
    move-result p1
    return p1
.end method

.method private api24IsCleartextTrafficPermitted(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Z
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(",
      "Ljava/lang/String;",
      "Ljava/lang/Class<",
      "*>;",
      "Ljava/lang/Object;",
      ")Z"
    }
  .end annotation
  .catch Ljava/lang/NoSuchMethodException; { :L0 .. :L1 } :L2
  .registers 9
  :L0
    const-string v0, "isCleartextTrafficPermitted"
    const/4 v1, 1
    new-array v2, v1, [Ljava/lang/Class;
  .line 1
    const-class v3, Ljava/lang/String;
    const/4 v4, 0
    aput-object v3, v2, v4
  .line 2
    invoke-virtual { p2, v0, v2 }, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    move-result-object v0
    new-array v1, v1, [Ljava/lang/Object;
    aput-object p1, v1, v4
  .line 3
    invoke-virtual { v0, p3, v1 }, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Ljava/lang/Boolean;
    invoke-virtual { v0 }, Ljava/lang/Boolean;->booleanValue()Z
    move-result p1
  :L1
    return p1
  :L2
  .line 4
    invoke-direct { p0, p1, p2, p3 }, Lokhttp3/internal/platform/AndroidPlatform;->api23IsCleartextTrafficPermitted(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Z
    move-result p1
    return p1
.end method

.method public static buildIfSupported()Lokhttp3/internal/platform/Platform;
  .catch Ljava/lang/ClassNotFoundException; { :L0 .. :L1 } :L2
  .catch Ljava/lang/ClassNotFoundException; { :L2 .. :L6 } :L7
  .registers 10
  .line 1
    const-class v0, [B
    const/4 v1, 0
  :L0
    const-string v2, "com.android.org.conscrypt.SSLParametersImpl"
    invoke-static { v2 }, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    move-result-object v2
  :L1
    move-object v4, v2
    goto :L3
  :L2
    const-string v2, "org.apache.harmony.xnet.provider.jsse.SSLParametersImpl"
  .line 2
    invoke-static { v2 }, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    move-result-object v2
    goto :L1
  :L3
  .line 3
    new-instance v5, Lokhttp3/internal/platform/OptionalMethod;
    const-string v2, "setUseSessionTickets"
    const/4 v3, 1
    new-array v6, v3, [Ljava/lang/Class;
    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;
    const/4 v8, 0
    aput-object v7, v6, v8
    invoke-direct { v5, v1, v2, v6 }, Lokhttp3/internal/platform/OptionalMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V
  .line 4
    new-instance v6, Lokhttp3/internal/platform/OptionalMethod;
    const-string v2, "setHostname"
    new-array v7, v3, [Ljava/lang/Class;
    const-class v9, Ljava/lang/String;
    aput-object v9, v7, v8
    invoke-direct { v6, v1, v2, v7 }, Lokhttp3/internal/platform/OptionalMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V
  .line 5
    invoke-static { }, Lokhttp3/internal/platform/AndroidPlatform;->supportsAlpn()Z
    move-result v2
    if-eqz v2, :L4
  .line 6
    new-instance v2, Lokhttp3/internal/platform/OptionalMethod;
    const-string v7, "getAlpnSelectedProtocol"
    new-array v9, v8, [Ljava/lang/Class;
    invoke-direct { v2, v0, v7, v9 }, Lokhttp3/internal/platform/OptionalMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V
  .line 7
    new-instance v7, Lokhttp3/internal/platform/OptionalMethod;
    const-string v9, "setAlpnProtocols"
    new-array v3, v3, [Ljava/lang/Class;
    aput-object v0, v3, v8
    invoke-direct { v7, v1, v9, v3 }, Lokhttp3/internal/platform/OptionalMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V
    move-object v8, v7
    move-object v7, v2
    goto :L5
  :L4
    move-object v7, v1
    move-object v8, v7
  :L5
  .line 8
    new-instance v0, Lokhttp3/internal/platform/AndroidPlatform;
    move-object v3, v0
    invoke-direct/range { v3 .. v8 }, Lokhttp3/internal/platform/AndroidPlatform;-><init>(Ljava/lang/Class;Lokhttp3/internal/platform/OptionalMethod;Lokhttp3/internal/platform/OptionalMethod;Lokhttp3/internal/platform/OptionalMethod;Lokhttp3/internal/platform/OptionalMethod;)V
  :L6
    return-object v0
  :L7
    return-object v1
.end method

.method private static supportsAlpn()Z
  .catch Ljava/lang/ClassNotFoundException; { :L0 .. :L1 } :L2
  .registers 3
    const-string v0, "GMSCore_OpenSSL"
  .line 1
    invoke-static { v0 }, Ljava/security/Security;->getProvider(Ljava/lang/String;)Ljava/security/Provider;
    move-result-object v0
    const/4 v1, 1
    if-eqz v0, :L0
    return v1
  :L0
    const-string v0, "android.net.Network"
  .line 2
    invoke-static { v0 }, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
  :L1
    return v1
  :L2
    const/4 v0, 0
    return v0
.end method

.method public buildCertificateChainCleaner(Ljavax/net/ssl/X509TrustManager;)Lokhttp3/internal/tls/CertificateChainCleaner;
  .catch Ljava/lang/Exception; { :L0 .. :L1 } :L2
  .registers 10
  .line 1
    const-class v0, Ljava/lang/String;
  :L0
    const-string v1, "android.net.http.X509TrustManagerExtensions"
    invoke-static { v1 }, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    move-result-object v1
    const/4 v2, 1
    new-array v3, v2, [Ljava/lang/Class;
  .line 2
    const-class v4, Ljavax/net/ssl/X509TrustManager;
    const/4 v5, 0
    aput-object v4, v3, v5
    invoke-virtual { v1, v3 }, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    move-result-object v3
    new-array v4, v2, [Ljava/lang/Object;
    aput-object p1, v4, v5
  .line 3
    invoke-virtual { v3, v4 }, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object v3
    const-string v4, "checkServerTrusted"
    const/4 v6, 3
    new-array v6, v6, [Ljava/lang/Class;
  .line 4
    const-class v7, [Ljava/security/cert/X509Certificate;
    aput-object v7, v6, v5
    aput-object v0, v6, v2
    const/4 v2, 2
    aput-object v0, v6, v2
    invoke-virtual { v1, v4, v6 }, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    move-result-object v0
  .line 5
    new-instance v1, Lokhttp3/internal/platform/AndroidPlatform$AndroidCertificateChainCleaner;
    invoke-direct { v1, v3, v0 }, Lokhttp3/internal/platform/AndroidPlatform$AndroidCertificateChainCleaner;-><init>(Ljava/lang/Object;Ljava/lang/reflect/Method;)V
  :L1
    return-object v1
  :L2
  .line 6
    invoke-super { p0, p1 }, Lokhttp3/internal/platform/Platform;->buildCertificateChainCleaner(Ljavax/net/ssl/X509TrustManager;)Lokhttp3/internal/tls/CertificateChainCleaner;
    move-result-object p1
    return-object p1
.end method

.method public buildTrustRootIndex(Ljavax/net/ssl/X509TrustManager;)Lokhttp3/internal/tls/TrustRootIndex;
  .catch Ljava/lang/NoSuchMethodException; { :L0 .. :L1 } :L2
  .registers 8
  :L0
  .line 1
    invoke-virtual { p1 }, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    move-result-object v0
    const-string v1, "findTrustAnchorByIssuerAndSignature"
    const/4 v2, 1
    new-array v3, v2, [Ljava/lang/Class;
    const/4 v4, 0
    const-class v5, Ljava/security/cert/X509Certificate;
    aput-object v5, v3, v4
    invoke-virtual { v0, v1, v3 }, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    move-result-object v0
  .line 2
    invoke-virtual { v0, v2 }, Ljava/lang/reflect/Method;->setAccessible(Z)V
  .line 3
    new-instance v1, Lokhttp3/internal/platform/AndroidPlatform$AndroidTrustRootIndex;
    invoke-direct { v1, p1, v0 }, Lokhttp3/internal/platform/AndroidPlatform$AndroidTrustRootIndex;-><init>(Ljavax/net/ssl/X509TrustManager;Ljava/lang/reflect/Method;)V
  :L1
    return-object v1
  :L2
  .line 4
    invoke-super { p0, p1 }, Lokhttp3/internal/platform/Platform;->buildTrustRootIndex(Ljavax/net/ssl/X509TrustManager;)Lokhttp3/internal/tls/TrustRootIndex;
    move-result-object p1
    return-object p1
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
  .registers 9
    const/4 v0, 0
    const/4 v1, 1
    if-eqz p2, :L0
  .line 1
    iget-object v2, p0, Lokhttp3/internal/platform/AndroidPlatform;->setUseSessionTickets:Lokhttp3/internal/platform/OptionalMethod;
    new-array v3, v1, [Ljava/lang/Object;
    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;
    aput-object v4, v3, v0
    invoke-virtual { v2, p1, v3 }, Lokhttp3/internal/platform/OptionalMethod;->invokeOptionalWithoutCheckedException(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
  .line 2
    iget-object v2, p0, Lokhttp3/internal/platform/AndroidPlatform;->setHostname:Lokhttp3/internal/platform/OptionalMethod;
    new-array v3, v1, [Ljava/lang/Object;
    aput-object p2, v3, v0
    invoke-virtual { v2, p1, v3 }, Lokhttp3/internal/platform/OptionalMethod;->invokeOptionalWithoutCheckedException(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
  :L0
  .line 3
    iget-object p2, p0, Lokhttp3/internal/platform/AndroidPlatform;->setAlpnProtocols:Lokhttp3/internal/platform/OptionalMethod;
    if-eqz p2, :L1
    invoke-virtual { p2, p1 }, Lokhttp3/internal/platform/OptionalMethod;->isSupported(Ljava/lang/Object;)Z
    move-result p2
    if-eqz p2, :L1
    new-array p2, v1, [Ljava/lang/Object;
  .line 4
    invoke-static { p3 }, Lokhttp3/internal/platform/Platform;->concatLengthPrefixed(Ljava/util/List;)[B
    move-result-object p3
    aput-object p3, p2, v0
  .line 5
    iget-object p3, p0, Lokhttp3/internal/platform/AndroidPlatform;->setAlpnProtocols:Lokhttp3/internal/platform/OptionalMethod;
    invoke-virtual { p3, p1, p2 }, Lokhttp3/internal/platform/OptionalMethod;->invokeWithoutCheckedException(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
  :L1
    return-void
.end method

.method public connectSocket(Ljava/net/Socket;Ljava/net/InetSocketAddress;I)V
  .catch Ljava/lang/AssertionError; { :L0 .. :L1 } :L5
  .catch Ljava/lang/SecurityException; { :L0 .. :L1 } :L4
  .catch Ljava/lang/ClassCastException; { :L0 .. :L1 } :L2
  .registers 5
    const-string v0, "Exception in connect"
  :L0
  .line 1
    invoke-virtual { p1, p2, p3 }, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V
  :L1
    return-void
  :L2
    move-exception p1
  .line 2
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 p3, 26
    if-ne p2, p3, :L3
  .line 3
    new-instance p2, Ljava/io/IOException;
    invoke-direct { p2, v0 }, Ljava/io/IOException;-><init>(Ljava/lang/String;)V
  .line 4
    invoke-virtual { p2, p1 }, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;
  .line 5
    throw p2
  :L3
  .line 6
    throw p1
  :L4
    move-exception p1
  .line 7
    new-instance p2, Ljava/io/IOException;
    invoke-direct { p2, v0 }, Ljava/io/IOException;-><init>(Ljava/lang/String;)V
  .line 8
    invoke-virtual { p2, p1 }, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;
  .line 9
    throw p2
  :L5
    move-exception p1
  .line 10
    invoke-static { p1 }, Lokhttp3/internal/Util;->isAndroidGetsocknameError(Ljava/lang/AssertionError;)Z
    move-result p2
    if-eqz p2, :L6
    new-instance p2, Ljava/io/IOException;
    invoke-direct { p2, p1 }, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V
    throw p2
  :L6
  .line 11
    throw p1
.end method

.method public getSSLContext()Ljavax/net/ssl/SSLContext;
  .catch Ljava/lang/NoClassDefFoundError; { :L0 .. :L1 } :L3
  .catch Ljava/security/NoSuchAlgorithmException; { :L5 .. :L6 } :L7
  .catch Ljava/security/NoSuchAlgorithmException; { :L7 .. :L8 } :L9
  .registers 4
    const/4 v0, 1
  :L0
  .line 1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v2, 16
    if-lt v1, v2, :L2
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I
  :L1
    const/16 v2, 22
    if-ge v1, v2, :L2
    goto :L4
  :L2
    const/4 v0, 0
    goto :L4
  :L3
    nop
  :L4
    if-eqz v0, :L7
  :L5
    const-string v0, "TLSv1.2"
  .line 2
    invoke-static { v0 }, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;
    move-result-object v0
  :L6
    return-object v0
  :L7
    const-string v0, "TLS"
  .line 3
    invoke-static { v0 }, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;
    move-result-object v0
  :L8
    return-object v0
  :L9
    move-exception v0
  .line 4
    new-instance v1, Ljava/lang/IllegalStateException;
    const-string v2, "No TLS provider"
    invoke-direct { v1, v2, v0 }, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    throw v1
.end method

.method public getSelectedProtocol(Ljavax/net/ssl/SSLSocket;)Ljava/lang/String;
  .annotation runtime Ljavax/annotation/Nullable;
  .end annotation
  .registers 5
  .line 1
    iget-object v0, p0, Lokhttp3/internal/platform/AndroidPlatform;->getAlpnSelectedProtocol:Lokhttp3/internal/platform/OptionalMethod;
    const/4 v1, 0
    if-nez v0, :L0
    return-object v1
  :L0
  .line 2
    invoke-virtual { v0, p1 }, Lokhttp3/internal/platform/OptionalMethod;->isSupported(Ljava/lang/Object;)Z
    move-result v0
    if-nez v0, :L1
    return-object v1
  :L1
  .line 3
    iget-object v0, p0, Lokhttp3/internal/platform/AndroidPlatform;->getAlpnSelectedProtocol:Lokhttp3/internal/platform/OptionalMethod;
    const/4 v2, 0
    new-array v2, v2, [Ljava/lang/Object;
    invoke-virtual { v0, p1, v2 }, Lokhttp3/internal/platform/OptionalMethod;->invokeWithoutCheckedException(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object p1
    check-cast p1, [B
    if-eqz p1, :L2
  .line 4
    new-instance v1, Ljava/lang/String;
    sget-object v0, Lokhttp3/internal/Util;->UTF_8:Ljava/nio/charset/Charset;
    invoke-direct { v1, p1, v0 }, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V
  :L2
    return-object v1
.end method

.method public getStackTraceForCloseable(Ljava/lang/String;)Ljava/lang/Object;
  .registers 3
  .line 1
    iget-object v0, p0, Lokhttp3/internal/platform/AndroidPlatform;->closeGuard:Lokhttp3/internal/platform/AndroidPlatform$CloseGuard;
    invoke-virtual { v0, p1 }, Lokhttp3/internal/platform/AndroidPlatform$CloseGuard;->createAndOpen(Ljava/lang/String;)Ljava/lang/Object;
    move-result-object p1
    return-object p1
.end method

.method public isCleartextTrafficPermitted(Ljava/lang/String;)Z
  .catch Ljava/lang/ClassNotFoundException; { :L0 .. :L1 } :L6
  .catch Ljava/lang/NoSuchMethodException; { :L0 .. :L1 } :L6
  .catch Ljava/lang/IllegalAccessException; { :L0 .. :L1 } :L4
  .catch Ljava/lang/IllegalArgumentException; { :L0 .. :L1 } :L3
  .catch Ljava/lang/reflect/InvocationTargetException; { :L0 .. :L1 } :L2
  .registers 6
  :L0
    const-string v0, "android.security.NetworkSecurityPolicy"
  .line 1
    invoke-static { v0 }, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    move-result-object v0
    const-string v1, "getInstance"
    const/4 v2, 0
    new-array v3, v2, [Ljava/lang/Class;
  .line 2
    invoke-virtual { v0, v1, v3 }, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    move-result-object v1
    const/4 v3, 0
    new-array v2, v2, [Ljava/lang/Object;
  .line 3
    invoke-virtual { v1, v3, v2 }, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object v1
  .line 4
    invoke-direct { p0, p1, v0, v1 }, Lokhttp3/internal/platform/AndroidPlatform;->api24IsCleartextTrafficPermitted(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Z
    move-result p1
  :L1
    return p1
  :L2
    move-exception p1
    goto :L5
  :L3
    move-exception p1
    goto :L5
  :L4
    move-exception p1
  :L5
    const-string v0, "unable to determine cleartext support"
  .line 5
    invoke-static { v0, p1 }, Lokhttp3/internal/Util;->assertionError(Ljava/lang/String;Ljava/lang/Exception;)Ljava/lang/AssertionError;
    move-result-object p1
    throw p1
  :L6
  .line 6
    invoke-super { p0, p1 }, Lokhttp3/internal/platform/Platform;->isCleartextTrafficPermitted(Ljava/lang/String;)Z
    move-result p1
    return p1
.end method

.method public log(ILjava/lang/String;Ljava/lang/Throwable;)V
  .parameter # I
  .parameter # Ljava/lang/String;
  .parameter # Ljava/lang/Throwable;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
  .end parameter
  .registers 9
    const/4 v0, 5
    if-ne p1, v0, :L0
    goto :L1
  :L0
    const/4 v0, 3
  :L1
    const/16 p1, 10
    if-eqz p3, :L2
  .line 1
    new-instance v1, Ljava/lang/StringBuilder;
    invoke-direct { v1 }, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual { v1, p2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v1, p1 }, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    invoke-static { p3 }, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;
    move-result-object p2
    invoke-virtual { v1, p2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p2
  :L2
    const/4 p3, 0
  .line 2
    invoke-virtual { p2 }, Ljava/lang/String;->length()I
    move-result v1
  :L3
    if-ge p3, v1, :L7
  .line 3
    invoke-virtual { p2, p1, p3 }, Ljava/lang/String;->indexOf(II)I
    move-result v2
    const/4 v3, -1
    if-eq v2, v3, :L4
    goto :L5
  :L4
    move v2, v1
  :L5
    add-int/lit16 v3, p3, 4000
  .line 4
    invoke-static { v2, v3 }, Ljava/lang/Math;->min(II)I
    move-result v3
  .line 5
    invoke-virtual { p2, p3, v3 }, Ljava/lang/String;->substring(II)Ljava/lang/String;
    move-result-object p3
    const-string v4, "OkHttp"
    invoke-static { v0, v4, p3 }, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I
    if-lt v3, v2, :L6
    add-int/lit8 p3, v3, 1
    goto :L3
  :L6
    move p3, v3
    goto :L5
  :L7
    return-void
.end method

.method public logCloseableLeak(Ljava/lang/String;Ljava/lang/Object;)V
  .registers 4
  .line 1
    iget-object v0, p0, Lokhttp3/internal/platform/AndroidPlatform;->closeGuard:Lokhttp3/internal/platform/AndroidPlatform$CloseGuard;
    invoke-virtual { v0, p2 }, Lokhttp3/internal/platform/AndroidPlatform$CloseGuard;->warnIfOpen(Ljava/lang/Object;)Z
    move-result p2
    if-nez p2, :L0
    const/4 p2, 5
    const/4 v0, 0
  .line 2
    invoke-virtual { p0, p2, p1, v0 }, Lokhttp3/internal/platform/AndroidPlatform;->log(ILjava/lang/String;Ljava/lang/Throwable;)V
  :L0
    return-void
.end method

.method protected trustManager(Ljavax/net/ssl/SSLSocketFactory;)Ljavax/net/ssl/X509TrustManager;
  .annotation runtime Ljavax/annotation/Nullable;
  .end annotation
  .catch Ljava/lang/ClassNotFoundException; { :L0 .. :L1 } :L2
  .registers 6
  .line 1
    iget-object v0, p0, Lokhttp3/internal/platform/AndroidPlatform;->sslParametersClass:Ljava/lang/Class;
    const-string v1, "sslParameters"
    invoke-static { p1, v0, v1 }, Lokhttp3/internal/platform/Platform;->readFieldOrNull(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;
    move-result-object v0
    if-nez v0, :L3
  :L0
    const-string v0, "com.google.android.gms.org.conscrypt.SSLParametersImpl"
    const/4 v2, 0
  .line 2
    invoke-virtual { p1 }, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    move-result-object v3
    invoke-virtual { v3 }, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;
    move-result-object v3
  .line 3
    invoke-static { v0, v2, v3 }, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
    move-result-object v0
  .line 4
    invoke-static { p1, v0, v1 }, Lokhttp3/internal/platform/Platform;->readFieldOrNull(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;
    move-result-object v0
  :L1
    goto :L3
  :L2
  .line 5
    invoke-super { p0, p1 }, Lokhttp3/internal/platform/Platform;->trustManager(Ljavax/net/ssl/SSLSocketFactory;)Ljavax/net/ssl/X509TrustManager;
    move-result-object p1
    return-object p1
  :L3
  .line 6
    const-class p1, Ljavax/net/ssl/X509TrustManager;
    const-string v1, "x509TrustManager"
    invoke-static { v0, p1, v1 }, Lokhttp3/internal/platform/Platform;->readFieldOrNull(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;
    move-result-object p1
    check-cast p1, Ljavax/net/ssl/X509TrustManager;
    if-eqz p1, :L4
    return-object p1
  :L4
  .line 7
    const-class p1, Ljavax/net/ssl/X509TrustManager;
    const-string v1, "trustManager"
    invoke-static { v0, p1, v1 }, Lokhttp3/internal/platform/Platform;->readFieldOrNull(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;
    move-result-object p1
    check-cast p1, Ljavax/net/ssl/X509TrustManager;
    return-object p1
.end method
