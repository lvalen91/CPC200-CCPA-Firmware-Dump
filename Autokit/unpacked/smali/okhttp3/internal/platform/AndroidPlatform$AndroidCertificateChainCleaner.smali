.class final Lokhttp3/internal/platform/AndroidPlatform$AndroidCertificateChainCleaner;
.super Lokhttp3/internal/tls/CertificateChainCleaner;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Lokhttp3/internal/platform/AndroidPlatform;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 24
  name = "AndroidCertificateChainCleaner"
.end annotation

.field private final checkServerTrusted:Ljava/lang/reflect/Method;

.field private final x509TrustManagerExtensions:Ljava/lang/Object;

.method constructor <init>(Ljava/lang/Object;Ljava/lang/reflect/Method;)V
  .registers 3
  .line 1
    invoke-direct { p0 }, Lokhttp3/internal/tls/CertificateChainCleaner;-><init>()V
  .line 2
    iput-object p1, p0, Lokhttp3/internal/platform/AndroidPlatform$AndroidCertificateChainCleaner;->x509TrustManagerExtensions:Ljava/lang/Object;
  .line 3
    iput-object p2, p0, Lokhttp3/internal/platform/AndroidPlatform$AndroidCertificateChainCleaner;->checkServerTrusted:Ljava/lang/reflect/Method;
    return-void
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
  .catch Ljava/lang/reflect/InvocationTargetException; { :L0 .. :L1 } :L3
  .catch Ljava/lang/IllegalAccessException; { :L0 .. :L1 } :L2
  .registers 7
  :L0
  .line 1
    invoke-interface { p1 }, Ljava/util/List;->size()I
    move-result v0
    new-array v0, v0, [Ljava/security/cert/X509Certificate;
    invoke-interface { p1, v0 }, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    move-result-object p1
    check-cast p1, [Ljava/security/cert/X509Certificate;
  .line 2
    iget-object v0, p0, Lokhttp3/internal/platform/AndroidPlatform$AndroidCertificateChainCleaner;->checkServerTrusted:Ljava/lang/reflect/Method;
    iget-object v1, p0, Lokhttp3/internal/platform/AndroidPlatform$AndroidCertificateChainCleaner;->x509TrustManagerExtensions:Ljava/lang/Object;
    const/4 v2, 3
    new-array v2, v2, [Ljava/lang/Object;
    const/4 v3, 0
    aput-object p1, v2, v3
    const/4 p1, 1
    const-string v3, "RSA"
    aput-object v3, v2, p1
    const/4 p1, 2
    aput-object p2, v2, p1
    invoke-virtual { v0, v1, v2 }, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object p1
    check-cast p1, Ljava/util/List;
  :L1
    return-object p1
  :L2
    move-exception p1
  .line 3
    new-instance p2, Ljava/lang/AssertionError;
    invoke-direct { p2, p1 }, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V
    throw p2
  :L3
    move-exception p1
  .line 4
    new-instance p2, Ljavax/net/ssl/SSLPeerUnverifiedException;
    invoke-virtual { p1 }, Ljava/lang/reflect/InvocationTargetException;->getMessage()Ljava/lang/String;
    move-result-object v0
    invoke-direct { p2, v0 }, Ljavax/net/ssl/SSLPeerUnverifiedException;-><init>(Ljava/lang/String;)V
  .line 5
    invoke-virtual { p2, p1 }, Ljavax/net/ssl/SSLPeerUnverifiedException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;
  .line 6
    throw p2
.end method

.method public equals(Ljava/lang/Object;)Z
  .registers 2
  .line 1
    instance-of p1, p1, Lokhttp3/internal/platform/AndroidPlatform$AndroidCertificateChainCleaner;
    return p1
.end method

.method public hashCode()I
  .registers 2
    const/4 v0, 0
    return v0
.end method
