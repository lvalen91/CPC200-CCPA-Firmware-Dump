.class final Lokhttp3/internal/ws/RealWebSocket$PingRunnable;
.super Ljava/lang/Object;
.implements Ljava/lang/Runnable;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Lokhttp3/internal/ws/RealWebSocket;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 18
  name = "PingRunnable"
.end annotation

.field final synthetic this$0:Lokhttp3/internal/ws/RealWebSocket;

.method constructor <init>(Lokhttp3/internal/ws/RealWebSocket;)V
  .registers 2
  .line 1
    iput-object p1, p0, Lokhttp3/internal/ws/RealWebSocket$PingRunnable;->this$0:Lokhttp3/internal/ws/RealWebSocket;
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public run()V
  .registers 2
  .line 1
    iget-object v0, p0, Lokhttp3/internal/ws/RealWebSocket$PingRunnable;->this$0:Lokhttp3/internal/ws/RealWebSocket;
    invoke-virtual { v0 }, Lokhttp3/internal/ws/RealWebSocket;->writePingFrame()V
    return-void
.end method
