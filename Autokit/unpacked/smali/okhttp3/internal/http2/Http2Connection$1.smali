.class Lokhttp3/internal/http2/Http2Connection$1;
.super Lokhttp3/internal/NamedRunnable;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingMethod;
  value = Lokhttp3/internal/http2/Http2Connection;->writeSynResetLater(ILokhttp3/internal/http2/ErrorCode;)V
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = null
.end annotation

.field final synthetic this$0:Lokhttp3/internal/http2/Http2Connection;

.field final synthetic val$errorCode:Lokhttp3/internal/http2/ErrorCode;

.field final synthetic val$streamId:I

.method varargs constructor <init>(Lokhttp3/internal/http2/Http2Connection;Ljava/lang/String;[Ljava/lang/Object;ILokhttp3/internal/http2/ErrorCode;)V
  .registers 6
  .line 1
    iput-object p1, p0, Lokhttp3/internal/http2/Http2Connection$1;->this$0:Lokhttp3/internal/http2/Http2Connection;
    iput p4, p0, Lokhttp3/internal/http2/Http2Connection$1;->val$streamId:I
    iput-object p5, p0, Lokhttp3/internal/http2/Http2Connection$1;->val$errorCode:Lokhttp3/internal/http2/ErrorCode;
    invoke-direct { p0, p2, p3 }, Lokhttp3/internal/NamedRunnable;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V
    return-void
.end method

.method public execute()V
  .catch Ljava/io/IOException; { :L0 .. :L1 } :L2
  .registers 4
  :L0
  .line 1
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Connection$1;->this$0:Lokhttp3/internal/http2/Http2Connection;
    iget v1, p0, Lokhttp3/internal/http2/Http2Connection$1;->val$streamId:I
    iget-object v2, p0, Lokhttp3/internal/http2/Http2Connection$1;->val$errorCode:Lokhttp3/internal/http2/ErrorCode;
    invoke-virtual { v0, v1, v2 }, Lokhttp3/internal/http2/Http2Connection;->writeSynReset(ILokhttp3/internal/http2/ErrorCode;)V
  :L1
    goto :L3
  :L2
  .line 2
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Connection$1;->this$0:Lokhttp3/internal/http2/Http2Connection;
    invoke-static { v0 }, Lokhttp3/internal/http2/Http2Connection;->access$000(Lokhttp3/internal/http2/Http2Connection;)V
  :L3
    return-void
.end method
