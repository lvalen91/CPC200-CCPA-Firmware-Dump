.class Lokhttp3/internal/http2/PushObserver$1;
.super Ljava/lang/Object;
.implements Lokhttp3/internal/http2/PushObserver;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Lokhttp3/internal/http2/PushObserver;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = null
.end annotation

.method constructor <init>()V
  .registers 1
  .line 1
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public onData(ILokio/BufferedSource;IZ)Z
  .registers 5
    int-to-long p3, p3
  .line 1
    invoke-interface { p2, p3, p4 }, Lokio/BufferedSource;->skip(J)V
    const/4 p1, 1
    return p1
.end method

.method public onHeaders(ILjava/util/List;Z)Z
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(I",
      "Ljava/util/List<",
      "Lokhttp3/internal/http2/Header;",
      ">;Z)Z"
    }
  .end annotation
  .registers 4
    const/4 p1, 1
    return p1
.end method

.method public onRequest(ILjava/util/List;)Z
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(I",
      "Ljava/util/List<",
      "Lokhttp3/internal/http2/Header;",
      ">;)Z"
    }
  .end annotation
  .registers 3
    const/4 p1, 1
    return p1
.end method

.method public onReset(ILokhttp3/internal/http2/ErrorCode;)V
  .registers 3
    return-void
.end method
