.class public final Lokhttp3/internal/connection/ConnectionSpecSelector;
.super Ljava/lang/Object;
.source "SourceFile"

.field private final connectionSpecs:Ljava/util/List;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "Ljava/util/List<",
      "Lokhttp3/ConnectionSpec;",
      ">;"
    }
  .end annotation
.end field

.field private isFallback:Z

.field private isFallbackPossible:Z

.field private nextModeIndex:I

.method public constructor <init>(Ljava/util/List;)V
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(",
      "Ljava/util/List<",
      "Lokhttp3/ConnectionSpec;",
      ">;)V"
    }
  .end annotation
  .registers 3
  .line 1
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    const/4 v0, 0
  .line 2
    iput v0, p0, Lokhttp3/internal/connection/ConnectionSpecSelector;->nextModeIndex:I
  .line 3
    iput-object p1, p0, Lokhttp3/internal/connection/ConnectionSpecSelector;->connectionSpecs:Ljava/util/List;
    return-void
.end method

.method private isFallbackPossible(Ljavax/net/ssl/SSLSocket;)Z
  .registers 4
  .line 1
    iget v0, p0, Lokhttp3/internal/connection/ConnectionSpecSelector;->nextModeIndex:I
  :L0
    iget-object v1, p0, Lokhttp3/internal/connection/ConnectionSpecSelector;->connectionSpecs:Ljava/util/List;
    invoke-interface { v1 }, Ljava/util/List;->size()I
    move-result v1
    if-ge v0, v1, :L2
  .line 2
    iget-object v1, p0, Lokhttp3/internal/connection/ConnectionSpecSelector;->connectionSpecs:Ljava/util/List;
    invoke-interface { v1, v0 }, Ljava/util/List;->get(I)Ljava/lang/Object;
    move-result-object v1
    check-cast v1, Lokhttp3/ConnectionSpec;
    invoke-virtual { v1, p1 }, Lokhttp3/ConnectionSpec;->isCompatible(Ljavax/net/ssl/SSLSocket;)Z
    move-result v1
    if-eqz v1, :L1
    const/4 p1, 1
    return p1
  :L1
    add-int/lit8 v0, v0, 1
    goto :L0
  :L2
    const/4 p1, 0
    return p1
.end method

.method public configureSecureSocket(Ljavax/net/ssl/SSLSocket;)Lokhttp3/ConnectionSpec;
  .registers 6
  .line 1
    iget v0, p0, Lokhttp3/internal/connection/ConnectionSpecSelector;->nextModeIndex:I
    iget-object v1, p0, Lokhttp3/internal/connection/ConnectionSpecSelector;->connectionSpecs:Ljava/util/List;
    invoke-interface { v1 }, Ljava/util/List;->size()I
    move-result v1
  :L0
    if-ge v0, v1, :L2
  .line 2
    iget-object v2, p0, Lokhttp3/internal/connection/ConnectionSpecSelector;->connectionSpecs:Ljava/util/List;
    invoke-interface { v2, v0 }, Ljava/util/List;->get(I)Ljava/lang/Object;
    move-result-object v2
    check-cast v2, Lokhttp3/ConnectionSpec;
  .line 3
    invoke-virtual { v2, p1 }, Lokhttp3/ConnectionSpec;->isCompatible(Ljavax/net/ssl/SSLSocket;)Z
    move-result v3
    if-eqz v3, :L1
    add-int/lit8 v0, v0, 1
  .line 4
    iput v0, p0, Lokhttp3/internal/connection/ConnectionSpecSelector;->nextModeIndex:I
    goto :L3
  :L1
    add-int/lit8 v0, v0, 1
    goto :L0
  :L2
    const/4 v2, 0
  :L3
    if-eqz v2, :L4
  .line 5
    invoke-direct { p0, p1 }, Lokhttp3/internal/connection/ConnectionSpecSelector;->isFallbackPossible(Ljavax/net/ssl/SSLSocket;)Z
    move-result v0
    iput-boolean v0, p0, Lokhttp3/internal/connection/ConnectionSpecSelector;->isFallbackPossible:Z
  .line 6
    sget-object v0, Lokhttp3/internal/Internal;->instance:Lokhttp3/internal/Internal;
    iget-boolean v1, p0, Lokhttp3/internal/connection/ConnectionSpecSelector;->isFallback:Z
    invoke-virtual { v0, v2, p1, v1 }, Lokhttp3/internal/Internal;->apply(Lokhttp3/ConnectionSpec;Ljavax/net/ssl/SSLSocket;Z)V
    return-object v2
  :L4
  .line 7
    new-instance v0, Ljava/net/UnknownServiceException;
    new-instance v1, Ljava/lang/StringBuilder;
    invoke-direct { v1 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v2, "Unable to find acceptable protocols. isFallback="
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget-boolean v2, p0, Lokhttp3/internal/connection/ConnectionSpecSelector;->isFallback:Z
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;
    const-string v2, ", modes="
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget-object v2, p0, Lokhttp3/internal/connection/ConnectionSpecSelector;->connectionSpecs:Ljava/util/List;
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    const-string v2, ", supported protocols="
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
  .line 8
    invoke-virtual { p1 }, Ljavax/net/ssl/SSLSocket;->getEnabledProtocols()[Ljava/lang/String;
    move-result-object p1
    invoke-static { p1 }, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;
    move-result-object p1
    invoke-virtual { v1, p1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p1
    invoke-direct { v0, p1 }, Ljava/net/UnknownServiceException;-><init>(Ljava/lang/String;)V
    goto :L6
  :L5
    throw v0
  :L6
    goto :L5
.end method

.method public connectionFailed(Ljava/io/IOException;)Z
  .registers 6
    const/4 v0, 1
  .line 1
    iput-boolean v0, p0, Lokhttp3/internal/connection/ConnectionSpecSelector;->isFallback:Z
  .line 2
    iget-boolean v1, p0, Lokhttp3/internal/connection/ConnectionSpecSelector;->isFallbackPossible:Z
    const/4 v2, 0
    if-nez v1, :L0
    return v2
  :L0
  .line 3
    instance-of v1, p1, Ljava/net/ProtocolException;
    if-eqz v1, :L1
    return v2
  :L1
  .line 4
    instance-of v1, p1, Ljava/io/InterruptedIOException;
    if-eqz v1, :L2
    return v2
  :L2
  .line 5
    instance-of v1, p1, Ljavax/net/ssl/SSLHandshakeException;
    if-eqz v1, :L3
  .line 6
    invoke-virtual { p1 }, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;
    move-result-object v3
    instance-of v3, v3, Ljava/security/cert/CertificateException;
    if-eqz v3, :L3
    return v2
  :L3
  .line 7
    instance-of v3, p1, Ljavax/net/ssl/SSLPeerUnverifiedException;
    if-eqz v3, :L4
    return v2
  :L4
    if-nez v1, :L6
  .line 8
    instance-of v1, p1, Ljavax/net/ssl/SSLProtocolException;
    if-nez v1, :L6
    instance-of p1, p1, Ljavax/net/ssl/SSLException;
    if-eqz p1, :L5
    goto :L6
  :L5
    const/4 v0, 0
  :L6
    return v0
.end method
