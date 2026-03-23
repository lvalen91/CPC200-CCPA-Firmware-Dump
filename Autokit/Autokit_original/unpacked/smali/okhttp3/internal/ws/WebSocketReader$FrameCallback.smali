.class public interface abstract Lokhttp3/internal/ws/WebSocketReader$FrameCallback;
.super Ljava/lang/Object;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Lokhttp3/internal/ws/WebSocketReader;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 1545
  name = "FrameCallback"
.end annotation

.method public abstract onReadClose(ILjava/lang/String;)V
.end method

.method public abstract onReadMessage(Ljava/lang/String;)V
.end method

.method public abstract onReadMessage(Lokio/ByteString;)V
.end method

.method public abstract onReadPing(Lokio/ByteString;)V
.end method

.method public abstract onReadPong(Lokio/ByteString;)V
.end method
