.class public Lokhttp3/internal/proxy/NullProxySelector;
.super Ljava/net/ProxySelector;
.source "SourceFile"

.method public constructor <init>()V
  .registers 1
  .line 1
    invoke-direct { p0 }, Ljava/net/ProxySelector;-><init>()V
    return-void
.end method

.method public connectFailed(Ljava/net/URI;Ljava/net/SocketAddress;Ljava/io/IOException;)V
  .registers 4
    return-void
.end method

.method public select(Ljava/net/URI;)Ljava/util/List;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(",
      "Ljava/net/URI;",
      ")",
      "Ljava/util/List<",
      "Ljava/net/Proxy;",
      ">;"
    }
  .end annotation
  .registers 3
    if-eqz p1, :L0
  .line 1
    sget-object p1, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;
    invoke-static { p1 }, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;
    move-result-object p1
    return-object p1
  :L0
  .line 2
    new-instance p1, Ljava/lang/IllegalArgumentException;
    const-string v0, "uri must not be null"
    invoke-direct { p1, v0 }, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
    throw p1
.end method
