.class final Lokhttp3/internal/platform/AndroidPlatform$AndroidTrustRootIndex;
.super Ljava/lang/Object;
.implements Lokhttp3/internal/tls/TrustRootIndex;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Lokhttp3/internal/platform/AndroidPlatform;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 24
  name = "AndroidTrustRootIndex"
.end annotation

.field private final findByIssuerAndSignatureMethod:Ljava/lang/reflect/Method;

.field private final trustManager:Ljavax/net/ssl/X509TrustManager;

.method constructor <init>(Ljavax/net/ssl/X509TrustManager;Ljava/lang/reflect/Method;)V
  .registers 3
  .line 1
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
  .line 2
    iput-object p2, p0, Lokhttp3/internal/platform/AndroidPlatform$AndroidTrustRootIndex;->findByIssuerAndSignatureMethod:Ljava/lang/reflect/Method;
  .line 3
    iput-object p1, p0, Lokhttp3/internal/platform/AndroidPlatform$AndroidTrustRootIndex;->trustManager:Ljavax/net/ssl/X509TrustManager;
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
  .registers 6
    const/4 v0, 1
    if-ne p1, p0, :L0
    return v0
  :L0
  .line 1
    instance-of v1, p1, Lokhttp3/internal/platform/AndroidPlatform$AndroidTrustRootIndex;
    const/4 v2, 0
    if-nez v1, :L1
    return v2
  :L1
  .line 2
    check-cast p1, Lokhttp3/internal/platform/AndroidPlatform$AndroidTrustRootIndex;
  .line 3
    iget-object v1, p0, Lokhttp3/internal/platform/AndroidPlatform$AndroidTrustRootIndex;->trustManager:Ljavax/net/ssl/X509TrustManager;
    iget-object v3, p1, Lokhttp3/internal/platform/AndroidPlatform$AndroidTrustRootIndex;->trustManager:Ljavax/net/ssl/X509TrustManager;
    invoke-virtual { v1, v3 }, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    move-result v1
    if-eqz v1, :L2
    iget-object v1, p0, Lokhttp3/internal/platform/AndroidPlatform$AndroidTrustRootIndex;->findByIssuerAndSignatureMethod:Ljava/lang/reflect/Method;
    iget-object p1, p1, Lokhttp3/internal/platform/AndroidPlatform$AndroidTrustRootIndex;->findByIssuerAndSignatureMethod:Ljava/lang/reflect/Method;
  .line 4
    invoke-virtual { v1, p1 }, Ljava/lang/reflect/Method;->equals(Ljava/lang/Object;)Z
    move-result p1
    if-eqz p1, :L2
    goto :L3
  :L2
    const/4 v0, 0
  :L3
    return v0
.end method

.method public findByIssuerAndSignature(Ljava/security/cert/X509Certificate;)Ljava/security/cert/X509Certificate;
  .catch Ljava/lang/IllegalAccessException; { :L0 .. :L1 } :L2
  .catch Ljava/lang/reflect/InvocationTargetException; { :L0 .. :L1 } :L1
  .registers 7
    const/4 v0, 0
  :L0
  .line 1
    iget-object v1, p0, Lokhttp3/internal/platform/AndroidPlatform$AndroidTrustRootIndex;->findByIssuerAndSignatureMethod:Ljava/lang/reflect/Method;
    iget-object v2, p0, Lokhttp3/internal/platform/AndroidPlatform$AndroidTrustRootIndex;->trustManager:Ljavax/net/ssl/X509TrustManager;
    const/4 v3, 1
    new-array v3, v3, [Ljava/lang/Object;
    const/4 v4, 0
    aput-object p1, v3, v4
    invoke-virtual { v1, v2, v3 }, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object p1
    check-cast p1, Ljava/security/cert/TrustAnchor;
    if-eqz p1, :L1
  .line 2
    invoke-virtual { p1 }, Ljava/security/cert/TrustAnchor;->getTrustedCert()Ljava/security/cert/X509Certificate;
    move-result-object v0
  :L1
    return-object v0
  :L2
    move-exception p1
    const-string v0, "unable to get issues and signature"
  .line 3
    invoke-static { v0, p1 }, Lokhttp3/internal/Util;->assertionError(Ljava/lang/String;Ljava/lang/Exception;)Ljava/lang/AssertionError;
    move-result-object p1
    throw p1
.end method

.method public hashCode()I
  .registers 3
  .line 1
    iget-object v0, p0, Lokhttp3/internal/platform/AndroidPlatform$AndroidTrustRootIndex;->trustManager:Ljavax/net/ssl/X509TrustManager;
    invoke-virtual { v0 }, Ljava/lang/Object;->hashCode()I
    move-result v0
    iget-object v1, p0, Lokhttp3/internal/platform/AndroidPlatform$AndroidTrustRootIndex;->findByIssuerAndSignatureMethod:Ljava/lang/reflect/Method;
    invoke-virtual { v1 }, Ljava/lang/reflect/Method;->hashCode()I
    move-result v1
    mul-int/lit8 v1, v1, 31
    add-int/2addr v0, v1
    return v0
.end method
