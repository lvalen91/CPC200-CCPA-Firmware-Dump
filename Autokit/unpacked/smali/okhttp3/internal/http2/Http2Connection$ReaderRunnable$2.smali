.class Lokhttp3/internal/http2/Http2Connection$ReaderRunnable$2;
.super Lokhttp3/internal/NamedRunnable;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingMethod;
  value = Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->settings(ZLokhttp3/internal/http2/Settings;)V
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = null
.end annotation

.field final synthetic this$1:Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;

.method varargs constructor <init>(Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;Ljava/lang/String;[Ljava/lang/Object;)V
  .registers 4
  .line 1
    iput-object p1, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable$2;->this$1:Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;
    invoke-direct { p0, p2, p3 }, Lokhttp3/internal/NamedRunnable;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V
    return-void
.end method

.method public execute()V
  .registers 3
  .line 1
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable$2;->this$1:Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;
    iget-object v0, v0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp3/internal/http2/Http2Connection;
    iget-object v1, v0, Lokhttp3/internal/http2/Http2Connection;->listener:Lokhttp3/internal/http2/Http2Connection$Listener;
    invoke-virtual { v1, v0 }, Lokhttp3/internal/http2/Http2Connection$Listener;->onSettings(Lokhttp3/internal/http2/Http2Connection;)V
    return-void
.end method
