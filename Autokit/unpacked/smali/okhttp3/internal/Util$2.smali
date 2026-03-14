.class Lokhttp3/internal/Util$2;
.super Ljava/lang/Object;
.implements Ljava/util/concurrent/ThreadFactory;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingMethod;
  value = Lokhttp3/internal/Util;->threadFactory(Ljava/lang/String;Z)Ljava/util/concurrent/ThreadFactory;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = null
.end annotation

.field final synthetic val$daemon:Z

.field final synthetic val$name:Ljava/lang/String;

.method constructor <init>(Ljava/lang/String;Z)V
  .registers 3
  .line 1
    iput-object p1, p0, Lokhttp3/internal/Util$2;->val$name:Ljava/lang/String;
    iput-boolean p2, p0, Lokhttp3/internal/Util$2;->val$daemon:Z
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
  .registers 4
  .line 1
    new-instance v0, Ljava/lang/Thread;
    iget-object v1, p0, Lokhttp3/internal/Util$2;->val$name:Ljava/lang/String;
    invoke-direct { v0, p1, v1 }, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V
  .line 2
    iget-boolean p1, p0, Lokhttp3/internal/Util$2;->val$daemon:Z
    invoke-virtual { v0, p1 }, Ljava/lang/Thread;->setDaemon(Z)V
    return-object v0
.end method
