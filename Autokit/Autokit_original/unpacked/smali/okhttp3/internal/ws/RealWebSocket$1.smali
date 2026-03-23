.class Lokhttp3/internal/ws/RealWebSocket$1;
.super Ljava/lang/Object;
.implements Ljava/lang/Runnable;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingMethod;
  value = Lokhttp3/internal/ws/RealWebSocket;-><init>(Lokhttp3/Request;Lokhttp3/WebSocketListener;Ljava/util/Random;J)V
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = null
.end annotation

.field final synthetic this$0:Lokhttp3/internal/ws/RealWebSocket;

.method constructor <init>(Lokhttp3/internal/ws/RealWebSocket;)V
  .registers 2
  .line 1
    iput-object p1, p0, Lokhttp3/internal/ws/RealWebSocket$1;->this$0:Lokhttp3/internal/ws/RealWebSocket;
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public run()V
  .catch Ljava/io/IOException; { :L0 .. :L1 } :L2
  .registers 4
  :L0
  .line 1
    iget-object v0, p0, Lokhttp3/internal/ws/RealWebSocket$1;->this$0:Lokhttp3/internal/ws/RealWebSocket;
    invoke-virtual { v0 }, Lokhttp3/internal/ws/RealWebSocket;->writeOneFrame()Z
    move-result v0
  :L1
    if-eqz v0, :L3
    goto :L0
  :L2
    move-exception v0
  .line 2
    iget-object v1, p0, Lokhttp3/internal/ws/RealWebSocket$1;->this$0:Lokhttp3/internal/ws/RealWebSocket;
    const/4 v2, 0
    invoke-virtual { v1, v0, v2 }, Lokhttp3/internal/ws/RealWebSocket;->failWebSocket(Ljava/lang/Exception;Lokhttp3/Response;)V
  :L3
    return-void
.end method
