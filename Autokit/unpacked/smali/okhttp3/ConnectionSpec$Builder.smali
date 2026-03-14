.class public final Lokhttp3/ConnectionSpec$Builder;
.super Ljava/lang/Object;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Lokhttp3/ConnectionSpec;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 25
  name = "Builder"
.end annotation

.field cipherSuites:[Ljava/lang/String;
  .annotation runtime Ljavax/annotation/Nullable;
  .end annotation
.end field

.field supportsTlsExtensions:Z

.field tls:Z

.field tlsVersions:[Ljava/lang/String;
  .annotation runtime Ljavax/annotation/Nullable;
  .end annotation
.end field

.method public constructor <init>(Lokhttp3/ConnectionSpec;)V
  .registers 3
  .line 3
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
  .line 4
    iget-boolean v0, p1, Lokhttp3/ConnectionSpec;->tls:Z
    iput-boolean v0, p0, Lokhttp3/ConnectionSpec$Builder;->tls:Z
  .line 5
    iget-object v0, p1, Lokhttp3/ConnectionSpec;->cipherSuites:[Ljava/lang/String;
    iput-object v0, p0, Lokhttp3/ConnectionSpec$Builder;->cipherSuites:[Ljava/lang/String;
  .line 6
    iget-object v0, p1, Lokhttp3/ConnectionSpec;->tlsVersions:[Ljava/lang/String;
    iput-object v0, p0, Lokhttp3/ConnectionSpec$Builder;->tlsVersions:[Ljava/lang/String;
  .line 7
    iget-boolean p1, p1, Lokhttp3/ConnectionSpec;->supportsTlsExtensions:Z
    iput-boolean p1, p0, Lokhttp3/ConnectionSpec$Builder;->supportsTlsExtensions:Z
    return-void
.end method

.method constructor <init>(Z)V
  .registers 2
  .line 1
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
  .line 2
    iput-boolean p1, p0, Lokhttp3/ConnectionSpec$Builder;->tls:Z
    return-void
.end method

.method public allEnabledCipherSuites()Lokhttp3/ConnectionSpec$Builder;
  .registers 3
  .line 1
    iget-boolean v0, p0, Lokhttp3/ConnectionSpec$Builder;->tls:Z
    if-eqz v0, :L0
    const/4 v0, 0
  .line 2
    iput-object v0, p0, Lokhttp3/ConnectionSpec$Builder;->cipherSuites:[Ljava/lang/String;
    return-object p0
  :L0
  .line 3
    new-instance v0, Ljava/lang/IllegalStateException;
    const-string v1, "no cipher suites for cleartext connections"
    invoke-direct { v0, v1 }, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
    throw v0
.end method

.method public allEnabledTlsVersions()Lokhttp3/ConnectionSpec$Builder;
  .registers 3
  .line 1
    iget-boolean v0, p0, Lokhttp3/ConnectionSpec$Builder;->tls:Z
    if-eqz v0, :L0
    const/4 v0, 0
  .line 2
    iput-object v0, p0, Lokhttp3/ConnectionSpec$Builder;->tlsVersions:[Ljava/lang/String;
    return-object p0
  :L0
  .line 3
    new-instance v0, Ljava/lang/IllegalStateException;
    const-string v1, "no TLS versions for cleartext connections"
    invoke-direct { v0, v1 }, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
    throw v0
.end method

.method public build()Lokhttp3/ConnectionSpec;
  .registers 2
  .line 1
    new-instance v0, Lokhttp3/ConnectionSpec;
    invoke-direct { v0, p0 }, Lokhttp3/ConnectionSpec;-><init>(Lokhttp3/ConnectionSpec$Builder;)V
    return-object v0
.end method

.method public varargs cipherSuites([Ljava/lang/String;)Lokhttp3/ConnectionSpec$Builder;
  .registers 3
  .line 7
    iget-boolean v0, p0, Lokhttp3/ConnectionSpec$Builder;->tls:Z
    if-eqz v0, :L1
  .line 8
    array-length v0, p1
    if-eqz v0, :L0
  .line 9
    invoke-virtual { p1 }, [Ljava/lang/String;->clone()Ljava/lang/Object;
    move-result-object p1
    check-cast p1, [Ljava/lang/String;
    iput-object p1, p0, Lokhttp3/ConnectionSpec$Builder;->cipherSuites:[Ljava/lang/String;
    return-object p0
  :L0
  .line 10
    new-instance p1, Ljava/lang/IllegalArgumentException;
    const-string v0, "At least one cipher suite is required"
    invoke-direct { p1, v0 }, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
    throw p1
  :L1
  .line 11
    new-instance p1, Ljava/lang/IllegalStateException;
    const-string v0, "no cipher suites for cleartext connections"
    invoke-direct { p1, v0 }, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
    throw p1
.end method

.method public varargs cipherSuites([Lokhttp3/CipherSuite;)Lokhttp3/ConnectionSpec$Builder;
  .registers 5
  .line 1
    iget-boolean v0, p0, Lokhttp3/ConnectionSpec$Builder;->tls:Z
    if-eqz v0, :L2
  .line 2
    array-length v0, p1
    new-array v0, v0, [Ljava/lang/String;
    const/4 v1, 0
  :L0
  .line 3
    array-length v2, p1
    if-ge v1, v2, :L1
  .line 4
    aget-object v2, p1, v1
    iget-object v2, v2, Lokhttp3/CipherSuite;->javaName:Ljava/lang/String;
    aput-object v2, v0, v1
    add-int/lit8 v1, v1, 1
    goto :L0
  :L1
  .line 5
    invoke-virtual { p0, v0 }, Lokhttp3/ConnectionSpec$Builder;->cipherSuites([Ljava/lang/String;)Lokhttp3/ConnectionSpec$Builder;
    move-result-object p1
    return-object p1
  :L2
  .line 6
    new-instance p1, Ljava/lang/IllegalStateException;
    const-string v0, "no cipher suites for cleartext connections"
    invoke-direct { p1, v0 }, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
    goto :L4
  :L3
    throw p1
  :L4
    goto :L3
.end method

.method public supportsTlsExtensions(Z)Lokhttp3/ConnectionSpec$Builder;
  .registers 3
  .line 1
    iget-boolean v0, p0, Lokhttp3/ConnectionSpec$Builder;->tls:Z
    if-eqz v0, :L0
  .line 2
    iput-boolean p1, p0, Lokhttp3/ConnectionSpec$Builder;->supportsTlsExtensions:Z
    return-object p0
  :L0
  .line 3
    new-instance p1, Ljava/lang/IllegalStateException;
    const-string v0, "no TLS extensions for cleartext connections"
    invoke-direct { p1, v0 }, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
    throw p1
.end method

.method public varargs tlsVersions([Ljava/lang/String;)Lokhttp3/ConnectionSpec$Builder;
  .registers 3
  .line 7
    iget-boolean v0, p0, Lokhttp3/ConnectionSpec$Builder;->tls:Z
    if-eqz v0, :L1
  .line 8
    array-length v0, p1
    if-eqz v0, :L0
  .line 9
    invoke-virtual { p1 }, [Ljava/lang/String;->clone()Ljava/lang/Object;
    move-result-object p1
    check-cast p1, [Ljava/lang/String;
    iput-object p1, p0, Lokhttp3/ConnectionSpec$Builder;->tlsVersions:[Ljava/lang/String;
    return-object p0
  :L0
  .line 10
    new-instance p1, Ljava/lang/IllegalArgumentException;
    const-string v0, "At least one TLS version is required"
    invoke-direct { p1, v0 }, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
    throw p1
  :L1
  .line 11
    new-instance p1, Ljava/lang/IllegalStateException;
    const-string v0, "no TLS versions for cleartext connections"
    invoke-direct { p1, v0 }, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
    throw p1
.end method

.method public varargs tlsVersions([Lokhttp3/TlsVersion;)Lokhttp3/ConnectionSpec$Builder;
  .registers 5
  .line 1
    iget-boolean v0, p0, Lokhttp3/ConnectionSpec$Builder;->tls:Z
    if-eqz v0, :L2
  .line 2
    array-length v0, p1
    new-array v0, v0, [Ljava/lang/String;
    const/4 v1, 0
  :L0
  .line 3
    array-length v2, p1
    if-ge v1, v2, :L1
  .line 4
    aget-object v2, p1, v1
    iget-object v2, v2, Lokhttp3/TlsVersion;->javaName:Ljava/lang/String;
    aput-object v2, v0, v1
    add-int/lit8 v1, v1, 1
    goto :L0
  :L1
  .line 5
    invoke-virtual { p0, v0 }, Lokhttp3/ConnectionSpec$Builder;->tlsVersions([Ljava/lang/String;)Lokhttp3/ConnectionSpec$Builder;
    move-result-object p1
    return-object p1
  :L2
  .line 6
    new-instance p1, Ljava/lang/IllegalStateException;
    const-string v0, "no TLS versions for cleartext connections"
    invoke-direct { p1, v0 }, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
    goto :L4
  :L3
    throw p1
  :L4
    goto :L3
.end method
