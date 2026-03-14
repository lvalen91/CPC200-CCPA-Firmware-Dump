.class public abstract Lokhttp3/WebSocketListener;
.super Ljava/lang/Object;
.source "SourceFile"

.method public constructor <init>()V
  .registers 1
  .line 1
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public onClosed(Lokhttp3/WebSocket;ILjava/lang/String;)V
  .registers 4
    return-void
.end method

.method public onClosing(Lokhttp3/WebSocket;ILjava/lang/String;)V
  .registers 4
    return-void
.end method

.method public onFailure(Lokhttp3/WebSocket;Ljava/lang/Throwable;Lokhttp3/Response;)V
  .parameter # Lokhttp3/WebSocket;
  .parameter # Ljava/lang/Throwable;
  .parameter # Lokhttp3/Response;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
  .end parameter
  .registers 4
    return-void
.end method

.method public onMessage(Lokhttp3/WebSocket;Ljava/lang/String;)V
  .registers 3
    return-void
.end method

.method public onMessage(Lokhttp3/WebSocket;Lokio/ByteString;)V
  .registers 3
    return-void
.end method

.method public onOpen(Lokhttp3/WebSocket;Lokhttp3/Response;)V
  .registers 3
    return-void
.end method
