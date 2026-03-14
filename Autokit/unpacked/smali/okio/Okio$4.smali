.class final Lokio/Okio$4;
.super Lokio/AsyncTimeout;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingMethod;
  value = Lokio/Okio;->timeout(Ljava/net/Socket;)Lokio/AsyncTimeout;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = null
.end annotation

.field final synthetic val$socket:Ljava/net/Socket;

.method constructor <init>(Ljava/net/Socket;)V
  .registers 2
  .line 1
    iput-object p1, p0, Lokio/Okio$4;->val$socket:Ljava/net/Socket;
    invoke-direct { p0 }, Lokio/AsyncTimeout;-><init>()V
    return-void
.end method

.method protected newTimeoutException(Ljava/io/IOException;)Ljava/io/IOException;
  .parameter # Ljava/io/IOException;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
  .end parameter
  .registers 4
  .line 1
    new-instance v0, Ljava/net/SocketTimeoutException;
    const-string v1, "timeout"
    invoke-direct { v0, v1 }, Ljava/net/SocketTimeoutException;-><init>(Ljava/lang/String;)V
    if-eqz p1, :L0
  .line 2
    invoke-virtual { v0, p1 }, Ljava/io/InterruptedIOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;
  :L0
    return-object v0
.end method

.method protected timedOut()V
  .catch Ljava/lang/Exception; { :L0 .. :L1 } :L4
  .catch Ljava/lang/AssertionError; { :L0 .. :L1 } :L2
  .registers 6
    const-string v0, "Failed to close timed out socket "
  :L0
  .line 1
    iget-object v1, p0, Lokio/Okio$4;->val$socket:Ljava/net/Socket;
    invoke-virtual { v1 }, Ljava/net/Socket;->close()V
  :L1
    goto :L5
  :L2
    move-exception v1
  .line 2
    invoke-static { v1 }, Lokio/Okio;->isAndroidGetsocknameError(Ljava/lang/AssertionError;)Z
    move-result v2
    if-eqz v2, :L3
  .line 3
    sget-object v2, Lokio/Okio;->logger:Ljava/util/logging/Logger;
    sget-object v3, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;
    new-instance v4, Ljava/lang/StringBuilder;
    invoke-direct { v4 }, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual { v4, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget-object v0, p0, Lokio/Okio$4;->val$socket:Ljava/net/Socket;
    invoke-virtual { v4, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    invoke-virtual { v4 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    invoke-virtual { v2, v3, v0, v1 }, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
    goto :L5
  :L3
  .line 4
    throw v1
  :L4
    move-exception v1
  .line 5
    sget-object v2, Lokio/Okio;->logger:Ljava/util/logging/Logger;
    sget-object v3, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;
    new-instance v4, Ljava/lang/StringBuilder;
    invoke-direct { v4 }, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual { v4, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget-object v0, p0, Lokio/Okio$4;->val$socket:Ljava/net/Socket;
    invoke-virtual { v4, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    invoke-virtual { v4 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    invoke-virtual { v2, v3, v0, v1 }, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
  :L5
    return-void
.end method
