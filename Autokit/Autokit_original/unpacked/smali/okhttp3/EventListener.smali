.class public abstract Lokhttp3/EventListener;
.super Ljava/lang/Object;
.source "SourceFile"

.annotation system Ldalvik/annotation/MemberClasses;
  value = {
    Lokhttp3/EventListener$Factory;
  }
.end annotation

.field public final static NONE:Lokhttp3/EventListener;

.method static constructor <clinit>()V
  .registers 2
  .line 1
    new-instance v0, Lokhttp3/EventListener$1;
    invoke-direct { v0 }, Lokhttp3/EventListener$1;-><init>()V
    sput-object v0, Lokhttp3/EventListener;->NONE:Lokhttp3/EventListener;
    return-void
.end method

.method public constructor <init>()V
  .registers 1
  .line 1
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method static factory(Lokhttp3/EventListener;)Lokhttp3/EventListener$Factory;
  .registers 2
  .line 1
    new-instance v0, Lokhttp3/EventListener$2;
    invoke-direct { v0, p0 }, Lokhttp3/EventListener$2;-><init>(Lokhttp3/EventListener;)V
    return-object v0
.end method

.method public callEnd(Lokhttp3/Call;)V
  .registers 2
    return-void
.end method

.method public callFailed(Lokhttp3/Call;Ljava/io/IOException;)V
  .registers 3
    return-void
.end method

.method public callStart(Lokhttp3/Call;)V
  .registers 2
    return-void
.end method

.method public connectEnd(Lokhttp3/Call;Ljava/net/InetSocketAddress;Ljava/net/Proxy;Lokhttp3/Protocol;)V
  .parameter # Lokhttp3/Call;
  .parameter # Ljava/net/InetSocketAddress;
  .parameter # Ljava/net/Proxy;
  .parameter # Lokhttp3/Protocol;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
  .end parameter
  .registers 5
    return-void
.end method

.method public connectFailed(Lokhttp3/Call;Ljava/net/InetSocketAddress;Ljava/net/Proxy;Lokhttp3/Protocol;Ljava/io/IOException;)V
  .parameter # Lokhttp3/Call;
  .parameter # Ljava/net/InetSocketAddress;
  .parameter # Ljava/net/Proxy;
  .parameter # Lokhttp3/Protocol;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
  .end parameter
  .registers 6
    return-void
.end method

.method public connectStart(Lokhttp3/Call;Ljava/net/InetSocketAddress;Ljava/net/Proxy;)V
  .registers 4
    return-void
.end method

.method public connectionAcquired(Lokhttp3/Call;Lokhttp3/Connection;)V
  .registers 3
    return-void
.end method

.method public connectionReleased(Lokhttp3/Call;Lokhttp3/Connection;)V
  .registers 3
    return-void
.end method

.method public dnsEnd(Lokhttp3/Call;Ljava/lang/String;Ljava/util/List;)V
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(",
      "Lokhttp3/Call;",
      "Ljava/lang/String;",
      "Ljava/util/List<",
      "Ljava/net/InetAddress;",
      ">;)V"
    }
  .end annotation
  .registers 4
    return-void
.end method

.method public dnsStart(Lokhttp3/Call;Ljava/lang/String;)V
  .registers 3
    return-void
.end method

.method public requestBodyEnd(Lokhttp3/Call;J)V
  .registers 4
    return-void
.end method

.method public requestBodyStart(Lokhttp3/Call;)V
  .registers 2
    return-void
.end method

.method public requestHeadersEnd(Lokhttp3/Call;Lokhttp3/Request;)V
  .registers 3
    return-void
.end method

.method public requestHeadersStart(Lokhttp3/Call;)V
  .registers 2
    return-void
.end method

.method public responseBodyEnd(Lokhttp3/Call;J)V
  .registers 4
    return-void
.end method

.method public responseBodyStart(Lokhttp3/Call;)V
  .registers 2
    return-void
.end method

.method public responseHeadersEnd(Lokhttp3/Call;Lokhttp3/Response;)V
  .registers 3
    return-void
.end method

.method public responseHeadersStart(Lokhttp3/Call;)V
  .registers 2
    return-void
.end method

.method public secureConnectEnd(Lokhttp3/Call;Lokhttp3/Handshake;)V
  .parameter # Lokhttp3/Call;
  .parameter # Lokhttp3/Handshake;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
  .end parameter
  .registers 3
    return-void
.end method

.method public secureConnectStart(Lokhttp3/Call;)V
  .registers 2
    return-void
.end method
