.class public interface abstract Lokhttp3/WebSocket;
.super Ljava/lang/Object;
.source "SourceFile"

.annotation system Ldalvik/annotation/MemberClasses;
  value = {
    Lokhttp3/WebSocket$Factory;
  }
.end annotation

.method public abstract cancel()V
.end method

.method public abstract close(ILjava/lang/String;)Z
  .parameter # I
  .parameter # Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
  .end parameter
.end method

.method public abstract queueSize()J
.end method

.method public abstract request()Lokhttp3/Request;
.end method

.method public abstract send(Ljava/lang/String;)Z
.end method

.method public abstract send(Lokio/ByteString;)Z
.end method
