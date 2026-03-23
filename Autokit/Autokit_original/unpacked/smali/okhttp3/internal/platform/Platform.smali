.class public Lokhttp3/internal/platform/Platform;
.super Ljava/lang/Object;
.source "SourceFile"

.field public final static INFO:I = 4

.field private final static PLATFORM:Lokhttp3/internal/platform/Platform;

.field public final static WARN:I = 5

.field private final static logger:Ljava/util/logging/Logger;

.method static constructor <clinit>()V
  .registers 1
  .line 1
    invoke-static { }, Lokhttp3/internal/platform/Platform;->findPlatform()Lokhttp3/internal/platform/Platform;
    move-result-object v0
    sput-object v0, Lokhttp3/internal/platform/Platform;->PLATFORM:Lokhttp3/internal/platform/Platform;
  .line 2
    const-class v0, Lokhttp3/OkHttpClient;
    invoke-virtual { v0 }, Ljava/lang/Class;->getName()Ljava/lang/String;
    move-result-object v0
    invoke-static { v0 }, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;
    move-result-object v0
    sput-object v0, Lokhttp3/internal/platform/Platform;->logger:Ljava/util/logging/Logger;
    return-void
.end method

.method public constructor <init>()V
  .registers 1
  .line 1
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public static alpnProtocolNames(Ljava/util/List;)Ljava/util/List;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(",
      "Ljava/util/List<",
      "Lokhttp3/Protocol;",
      ">;)",
      "Ljava/util/List<",
      "Ljava/lang/String;",
      ">;"
    }
  .end annotation
  .registers 6
  .line 1
    new-instance v0, Ljava/util/ArrayList;
    invoke-interface { p0 }, Ljava/util/List;->size()I
    move-result v1
    invoke-direct { v0, v1 }, Ljava/util/ArrayList;-><init>(I)V
  .line 2
    invoke-interface { p0 }, Ljava/util/List;->size()I
    move-result v1
    const/4 v2, 0
  :L0
    if-ge v2, v1, :L3
  .line 3
    invoke-interface { p0, v2 }, Ljava/util/List;->get(I)Ljava/lang/Object;
    move-result-object v3
    check-cast v3, Lokhttp3/Protocol;
  .line 4
    sget-object v4, Lokhttp3/Protocol;->HTTP_1_0:Lokhttp3/Protocol;
    if-ne v3, v4, :L1
    goto :L2
  :L1
  .line 5
    invoke-virtual { v3 }, Lokhttp3/Protocol;->toString()Ljava/lang/String;
    move-result-object v3
    invoke-interface { v0, v3 }, Ljava/util/List;->add(Ljava/lang/Object;)Z
  :L2
    add-int/lit8 v2, v2, 1
    goto :L0
  :L3
    return-object v0
.end method

.method static concatLengthPrefixed(Ljava/util/List;)[B
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(",
      "Ljava/util/List<",
      "Lokhttp3/Protocol;",
      ">;)[B"
    }
  .end annotation
  .registers 6
  .line 1
    new-instance v0, Lokio/Buffer;
    invoke-direct { v0 }, Lokio/Buffer;-><init>()V
  .line 2
    invoke-interface { p0 }, Ljava/util/List;->size()I
    move-result v1
    const/4 v2, 0
  :L0
    if-ge v2, v1, :L3
  .line 3
    invoke-interface { p0, v2 }, Ljava/util/List;->get(I)Ljava/lang/Object;
    move-result-object v3
    check-cast v3, Lokhttp3/Protocol;
  .line 4
    sget-object v4, Lokhttp3/Protocol;->HTTP_1_0:Lokhttp3/Protocol;
    if-ne v3, v4, :L1
    goto :L2
  :L1
  .line 5
    invoke-virtual { v3 }, Lokhttp3/Protocol;->toString()Ljava/lang/String;
    move-result-object v4
    invoke-virtual { v4 }, Ljava/lang/String;->length()I
    move-result v4
    invoke-virtual { v0, v4 }, Lokio/Buffer;->writeByte(I)Lokio/Buffer;
  .line 6
    invoke-virtual { v3 }, Lokhttp3/Protocol;->toString()Ljava/lang/String;
    move-result-object v3
    invoke-virtual { v0, v3 }, Lokio/Buffer;->writeUtf8(Ljava/lang/String;)Lokio/Buffer;
  :L2
    add-int/lit8 v2, v2, 1
    goto :L0
  :L3
  .line 7
    invoke-virtual { v0 }, Lokio/Buffer;->readByteArray()[B
    move-result-object p0
    return-object p0
.end method

.method private static findPlatform()Lokhttp3/internal/platform/Platform;
  .registers 3
  .line 1
    invoke-static { }, Lokhttp3/internal/platform/AndroidPlatform;->buildIfSupported()Lokhttp3/internal/platform/Platform;
    move-result-object v0
    if-eqz v0, :L0
    return-object v0
  :L0
  .line 2
    invoke-static { }, Lokhttp3/internal/platform/Platform;->isConscryptPreferred()Z
    move-result v0
    if-eqz v0, :L1
  .line 3
    invoke-static { }, Lokhttp3/internal/platform/ConscryptPlatform;->buildIfSupported()Lokhttp3/internal/platform/ConscryptPlatform;
    move-result-object v0
    if-eqz v0, :L1
    return-object v0
  :L1
  .line 4
    invoke-static { }, Lokhttp3/internal/platform/Jdk9Platform;->buildIfSupported()Lokhttp3/internal/platform/Jdk9Platform;
    move-result-object v0
    if-eqz v0, :L2
    return-object v0
  :L2
  .line 5
    invoke-static { }, Lokhttp3/internal/platform/JdkWithJettyBootPlatform;->buildIfSupported()Lokhttp3/internal/platform/Platform;
    move-result-object v0
    if-eqz v0, :L3
    return-object v0
  :L3
  .line 6
    new-instance v0, Lokhttp3/internal/platform/Platform;
    invoke-direct { v0 }, Lokhttp3/internal/platform/Platform;-><init>()V
    return-object v0
.end method

.method public static get()Lokhttp3/internal/platform/Platform;
  .registers 1
  .line 1
    sget-object v0, Lokhttp3/internal/platform/Platform;->PLATFORM:Lokhttp3/internal/platform/Platform;
    return-object v0
.end method

.method public static isConscryptPreferred()Z
  .registers 3
    const-string v0, "okhttp.platform"
  .line 1
    invoke-static { v0 }, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v0
    const-string v1, "conscrypt"
    invoke-virtual { v1, v0 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :L0
    const/4 v0, 1
    return v0
  :L0
  .line 2
    invoke-static { }, Ljava/security/Security;->getProviders()[Ljava/security/Provider;
    move-result-object v0
    const/4 v1, 0
    aget-object v0, v0, v1
    invoke-virtual { v0 }, Ljava/security/Provider;->getName()Ljava/lang/String;
    move-result-object v0
    const-string v1, "Conscrypt"
  .line 3
    invoke-virtual { v1, v0 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v0
    return v0
.end method

.method static readFieldOrNull(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "<T:",
      "Ljava/lang/Object;",
      ">(",
      "Ljava/lang/Object;",
      "Ljava/lang/Class<",
      "TT;>;",
      "Ljava/lang/String;",
      ")TT;"
    }
  .end annotation
  .annotation runtime Ljavax/annotation/Nullable;
  .end annotation
  .catch Ljava/lang/NoSuchFieldException; { :L1 .. :L3 } :L6
  .catch Ljava/lang/IllegalAccessException; { :L1 .. :L3 } :L5
  .registers 8
  .line 1
    const-class v0, Ljava/lang/Object;
    invoke-virtual { p0 }, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    move-result-object v1
  :L0
    const/4 v2, 0
    if-eq v1, v0, :L7
  :L1
  .line 2
    invoke-virtual { v1, p2 }, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;
    move-result-object v3
    const/4 v4, 1
  .line 3
    invoke-virtual { v3, v4 }, Ljava/lang/reflect/Field;->setAccessible(Z)V
  .line 4
    invoke-virtual { v3, p0 }, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object v3
    if-eqz v3, :L4
  .line 5
    invoke-virtual { p1, v3 }, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z
    move-result v4
    if-nez v4, :L2
    goto :L4
  :L2
  .line 6
    invoke-virtual { p1, v3 }, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object p0
  :L3
    return-object p0
  :L4
    return-object v2
  :L5
  .line 7
    new-instance p0, Ljava/lang/AssertionError;
    invoke-direct { p0 }, Ljava/lang/AssertionError;-><init>()V
    throw p0
  :L6
  .line 8
    invoke-virtual { v1 }, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;
    move-result-object v1
    goto :L0
  :L7
    const-string v1, "delegate"
  .line 9
    invoke-virtual { p2, v1 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v3
    if-nez v3, :L8
  .line 10
    invoke-static { p0, v0, v1 }, Lokhttp3/internal/platform/Platform;->readFieldOrNull(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;
    move-result-object p0
    if-eqz p0, :L8
  .line 11
    invoke-static { p0, p1, p2 }, Lokhttp3/internal/platform/Platform;->readFieldOrNull(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;
    move-result-object p0
    return-object p0
  :L8
    return-object v2
.end method

.method public afterHandshake(Ljavax/net/ssl/SSLSocket;)V
  .registers 2
    return-void
.end method

.method public buildCertificateChainCleaner(Ljavax/net/ssl/SSLSocketFactory;)Lokhttp3/internal/tls/CertificateChainCleaner;
  .registers 5
  .line 2
    invoke-virtual { p0, p1 }, Lokhttp3/internal/platform/Platform;->trustManager(Ljavax/net/ssl/SSLSocketFactory;)Ljavax/net/ssl/X509TrustManager;
    move-result-object v0
    if-eqz v0, :L0
  .line 3
    invoke-virtual { p0, v0 }, Lokhttp3/internal/platform/Platform;->buildCertificateChainCleaner(Ljavax/net/ssl/X509TrustManager;)Lokhttp3/internal/tls/CertificateChainCleaner;
    move-result-object p1
    return-object p1
  :L0
  .line 4
    new-instance v0, Ljava/lang/IllegalStateException;
    new-instance v1, Ljava/lang/StringBuilder;
    invoke-direct { v1 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v2, "Unable to extract the trust manager on "
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
  .line 5
    invoke-static { }, Lokhttp3/internal/platform/Platform;->get()Lokhttp3/internal/platform/Platform;
    move-result-object v2
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    const-string v2, ", sslSocketFactory is "
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
  .line 6
    invoke-virtual { p1 }, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    move-result-object p1
    invoke-virtual { v1, p1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    invoke-virtual { v1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p1
    invoke-direct { v0, p1 }, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
    throw v0
.end method

.method public buildCertificateChainCleaner(Ljavax/net/ssl/X509TrustManager;)Lokhttp3/internal/tls/CertificateChainCleaner;
  .registers 3
  .line 1
    new-instance v0, Lokhttp3/internal/tls/BasicCertificateChainCleaner;
    invoke-virtual { p0, p1 }, Lokhttp3/internal/platform/Platform;->buildTrustRootIndex(Ljavax/net/ssl/X509TrustManager;)Lokhttp3/internal/tls/TrustRootIndex;
    move-result-object p1
    invoke-direct { v0, p1 }, Lokhttp3/internal/tls/BasicCertificateChainCleaner;-><init>(Lokhttp3/internal/tls/TrustRootIndex;)V
    return-object v0
.end method

.method public buildTrustRootIndex(Ljavax/net/ssl/X509TrustManager;)Lokhttp3/internal/tls/TrustRootIndex;
  .registers 3
  .line 1
    new-instance v0, Lokhttp3/internal/tls/BasicTrustRootIndex;
    invoke-interface { p1 }, Ljavax/net/ssl/X509TrustManager;->getAcceptedIssuers()[Ljava/security/cert/X509Certificate;
    move-result-object p1
    invoke-direct { v0, p1 }, Lokhttp3/internal/tls/BasicTrustRootIndex;-><init>([Ljava/security/cert/X509Certificate;)V
    return-object v0
.end method

.method public configureSslSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V
  .registers 2
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
  .parameter # Ljavax/net/ssl/SSLSocket;
  .parameter # Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
  .end parameter
  .registers 4
    return-void
.end method

.method public connectSocket(Ljava/net/Socket;Ljava/net/InetSocketAddress;I)V
  .registers 4
  .line 1
    invoke-virtual { p1, p2, p3 }, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V
    return-void
.end method

.method public getPrefix()Ljava/lang/String;
  .registers 2
    const-string v0, "OkHttp"
    return-object v0
.end method

.method public getSSLContext()Ljavax/net/ssl/SSLContext;
  .catch Ljava/security/NoSuchAlgorithmException; { :L0 .. :L1 } :L2
  .catch Ljava/security/NoSuchAlgorithmException; { :L2 .. :L3 } :L4
  .registers 4
    const-string v0, "java.specification.version"
  .line 1
    invoke-static { v0 }, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v0
    const-string v1, "1.7"
  .line 2
    invoke-virtual { v1, v0 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :L2
  :L0
    const-string v0, "TLSv1.2"
  .line 3
    invoke-static { v0 }, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;
    move-result-object v0
  :L1
    return-object v0
  :L2
    const-string v0, "TLS"
  .line 4
    invoke-static { v0 }, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;
    move-result-object v0
  :L3
    return-object v0
  :L4
    move-exception v0
  .line 5
    new-instance v1, Ljava/lang/IllegalStateException;
    const-string v2, "No TLS provider"
    invoke-direct { v1, v2, v0 }, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    throw v1
.end method

.method public getSelectedProtocol(Ljavax/net/ssl/SSLSocket;)Ljava/lang/String;
  .annotation runtime Ljavax/annotation/Nullable;
  .end annotation
  .registers 2
    const/4 p1, 0
    return-object p1
.end method

.method public getStackTraceForCloseable(Ljava/lang/String;)Ljava/lang/Object;
  .registers 4
  .line 1
    sget-object v0, Lokhttp3/internal/platform/Platform;->logger:Ljava/util/logging/Logger;
    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;
    invoke-virtual { v0, v1 }, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z
    move-result v0
    if-eqz v0, :L0
  .line 2
    new-instance v0, Ljava/lang/Throwable;
    invoke-direct { v0, p1 }, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V
    return-object v0
  :L0
    const/4 p1, 0
    return-object p1
.end method

.method public isCleartextTrafficPermitted(Ljava/lang/String;)Z
  .registers 2
    const/4 p1, 1
    return p1
.end method

.method public log(ILjava/lang/String;Ljava/lang/Throwable;)V
  .parameter # I
  .parameter # Ljava/lang/String;
  .parameter # Ljava/lang/Throwable;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
  .end parameter
  .registers 5
    const/4 v0, 5
    if-ne p1, v0, :L0
  .line 1
    sget-object p1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;
    goto :L1
  :L0
    sget-object p1, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;
  :L1
  .line 2
    sget-object v0, Lokhttp3/internal/platform/Platform;->logger:Ljava/util/logging/Logger;
    invoke-virtual { v0, p1, p2, p3 }, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
    return-void
.end method

.method public logCloseableLeak(Ljava/lang/String;Ljava/lang/Object;)V
  .registers 4
    if-nez p2, :L0
  .line 1
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual { v0, p1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string p1, " To see where this was allocated, set the OkHttpClient logger level to FINE: Logger.getLogger(OkHttpClient.class.getName()).setLevel(Level.FINE);"
    invoke-virtual { v0, p1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p1
  :L0
    const/4 v0, 5
  .line 2
    check-cast p2, Ljava/lang/Throwable;
    invoke-virtual { p0, v0, p1, p2 }, Lokhttp3/internal/platform/Platform;->log(ILjava/lang/String;Ljava/lang/Throwable;)V
    return-void
.end method

.method public toString()Ljava/lang/String;
  .registers 2
  .line 1
    invoke-virtual { p0 }, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    move-result-object v0
    invoke-virtual { v0 }, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;
    move-result-object v0
    return-object v0
.end method

.method protected trustManager(Ljavax/net/ssl/SSLSocketFactory;)Ljavax/net/ssl/X509TrustManager;
  .annotation runtime Ljavax/annotation/Nullable;
  .end annotation
  .catch Ljava/lang/ClassNotFoundException; { :L0 .. :L2 } :L3
  .registers 5
    const/4 v0, 0
  :L0
    const-string v1, "sun.security.ssl.SSLContextImpl"
  .line 1
    invoke-static { v1 }, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    move-result-object v1
    const-string v2, "context"
  .line 2
    invoke-static { p1, v1, v2 }, Lokhttp3/internal/platform/Platform;->readFieldOrNull(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;
    move-result-object p1
    if-nez p1, :L1
    return-object v0
  :L1
  .line 3
    const-class v1, Ljavax/net/ssl/X509TrustManager;
    const-string v2, "trustManager"
    invoke-static { p1, v1, v2 }, Lokhttp3/internal/platform/Platform;->readFieldOrNull(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;
    move-result-object p1
    check-cast p1, Ljavax/net/ssl/X509TrustManager;
  :L2
    return-object p1
  :L3
    return-object v0
.end method
