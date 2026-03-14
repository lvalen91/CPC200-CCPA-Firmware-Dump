.class public final Lokhttp3/Route;
.super Ljava/lang/Object;
.source "SourceFile"

.field final address:Lokhttp3/Address;

.field final inetSocketAddress:Ljava/net/InetSocketAddress;

.field final proxy:Ljava/net/Proxy;

.method public constructor <init>(Lokhttp3/Address;Ljava/net/Proxy;Ljava/net/InetSocketAddress;)V
  .registers 4
  .line 1
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    if-eqz p1, :L2
    if-eqz p2, :L1
    if-eqz p3, :L0
  .line 2
    iput-object p1, p0, Lokhttp3/Route;->address:Lokhttp3/Address;
  .line 3
    iput-object p2, p0, Lokhttp3/Route;->proxy:Ljava/net/Proxy;
  .line 4
    iput-object p3, p0, Lokhttp3/Route;->inetSocketAddress:Ljava/net/InetSocketAddress;
    return-void
  :L0
  .line 5
    new-instance p1, Ljava/lang/NullPointerException;
    const-string p2, "inetSocketAddress == null"
    invoke-direct { p1, p2 }, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V
    throw p1
  :L1
  .line 6
    new-instance p1, Ljava/lang/NullPointerException;
    const-string p2, "proxy == null"
    invoke-direct { p1, p2 }, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V
    throw p1
  :L2
  .line 7
    new-instance p1, Ljava/lang/NullPointerException;
    const-string p2, "address == null"
    invoke-direct { p1, p2 }, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V
    throw p1
.end method

.method public address()Lokhttp3/Address;
  .registers 2
  .line 1
    iget-object v0, p0, Lokhttp3/Route;->address:Lokhttp3/Address;
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
  .parameter # Ljava/lang/Object;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
  .end parameter
  .registers 4
  .line 1
    instance-of v0, p1, Lokhttp3/Route;
    if-eqz v0, :L0
    check-cast p1, Lokhttp3/Route;
    iget-object v0, p1, Lokhttp3/Route;->address:Lokhttp3/Address;
    iget-object v1, p0, Lokhttp3/Route;->address:Lokhttp3/Address;
  .line 2
    invoke-virtual { v0, v1 }, Lokhttp3/Address;->equals(Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :L0
    iget-object v0, p1, Lokhttp3/Route;->proxy:Ljava/net/Proxy;
    iget-object v1, p0, Lokhttp3/Route;->proxy:Ljava/net/Proxy;
  .line 3
    invoke-virtual { v0, v1 }, Ljava/net/Proxy;->equals(Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :L0
    iget-object p1, p1, Lokhttp3/Route;->inetSocketAddress:Ljava/net/InetSocketAddress;
    iget-object v0, p0, Lokhttp3/Route;->inetSocketAddress:Ljava/net/InetSocketAddress;
  .line 4
    invoke-virtual { p1, v0 }, Ljava/net/InetSocketAddress;->equals(Ljava/lang/Object;)Z
    move-result p1
    if-eqz p1, :L0
    const/4 p1, 1
    goto :L1
  :L0
    const/4 p1, 0
  :L1
    return p1
.end method

.method public hashCode()I
  .registers 3
  .line 1
    iget-object v0, p0, Lokhttp3/Route;->address:Lokhttp3/Address;
    invoke-virtual { v0 }, Lokhttp3/Address;->hashCode()I
    move-result v0
    const/16 v1, 527
    add-int/2addr v1, v0
    mul-int/lit8 v1, v1, 31
  .line 2
    iget-object v0, p0, Lokhttp3/Route;->proxy:Ljava/net/Proxy;
    invoke-virtual { v0 }, Ljava/net/Proxy;->hashCode()I
    move-result v0
    add-int/2addr v1, v0
    mul-int/lit8 v1, v1, 31
  .line 3
    iget-object v0, p0, Lokhttp3/Route;->inetSocketAddress:Ljava/net/InetSocketAddress;
    invoke-virtual { v0 }, Ljava/net/InetSocketAddress;->hashCode()I
    move-result v0
    add-int/2addr v1, v0
    return v1
.end method

.method public proxy()Ljava/net/Proxy;
  .registers 2
  .line 1
    iget-object v0, p0, Lokhttp3/Route;->proxy:Ljava/net/Proxy;
    return-object v0
.end method

.method public requiresTunnel()Z
  .registers 3
  .line 1
    iget-object v0, p0, Lokhttp3/Route;->address:Lokhttp3/Address;
    iget-object v0, v0, Lokhttp3/Address;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;
    if-eqz v0, :L0
    iget-object v0, p0, Lokhttp3/Route;->proxy:Ljava/net/Proxy;
    invoke-virtual { v0 }, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;
    move-result-object v0
    sget-object v1, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;
    if-ne v0, v1, :L0
    const/4 v0, 1
    goto :L1
  :L0
    const/4 v0, 0
  :L1
    return v0
.end method

.method public socketAddress()Ljava/net/InetSocketAddress;
  .registers 2
  .line 1
    iget-object v0, p0, Lokhttp3/Route;->inetSocketAddress:Ljava/net/InetSocketAddress;
    return-object v0
.end method

.method public toString()Ljava/lang/String;
  .registers 3
  .line 1
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "Route{"
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget-object v1, p0, Lokhttp3/Route;->inetSocketAddress:Ljava/net/InetSocketAddress;
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    const-string v1, "}"
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    return-object v0
.end method
