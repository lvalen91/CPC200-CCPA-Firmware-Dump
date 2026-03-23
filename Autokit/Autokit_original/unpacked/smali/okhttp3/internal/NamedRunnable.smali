.class public abstract Lokhttp3/internal/NamedRunnable;
.super Ljava/lang/Object;
.implements Ljava/lang/Runnable;
.source "SourceFile"

.field protected final name:Ljava/lang/String;

.method public varargs constructor <init>(Ljava/lang/String;[Ljava/lang/Object;)V
  .registers 3
  .line 1
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
  .line 2
    invoke-static { p1, p2 }, Lokhttp3/internal/Util;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    move-result-object p1
    iput-object p1, p0, Lokhttp3/internal/NamedRunnable;->name:Ljava/lang/String;
    return-void
.end method

.method protected abstract execute()V
.end method

.method public final run()V
  .catchall { :L0 .. :L1 } :L2
  .registers 4
  .line 1
    invoke-static { }, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;
    move-result-object v0
    invoke-virtual { v0 }, Ljava/lang/Thread;->getName()Ljava/lang/String;
    move-result-object v0
  .line 2
    invoke-static { }, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;
    move-result-object v1
    iget-object v2, p0, Lokhttp3/internal/NamedRunnable;->name:Ljava/lang/String;
    invoke-virtual { v1, v2 }, Ljava/lang/Thread;->setName(Ljava/lang/String;)V
  :L0
  .line 3
    invoke-virtual { p0 }, Lokhttp3/internal/NamedRunnable;->execute()V
  :L1
  .line 4
    invoke-static { }, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;
    move-result-object v1
    invoke-virtual { v1, v0 }, Ljava/lang/Thread;->setName(Ljava/lang/String;)V
    return-void
  :L2
    move-exception v1
    invoke-static { }, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;
    move-result-object v2
    invoke-virtual { v2, v0 }, Ljava/lang/Thread;->setName(Ljava/lang/String;)V
    throw v1
.end method
