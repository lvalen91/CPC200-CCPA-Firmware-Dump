.class public Lc/b/a/a/b;
.super Lc/b/a/a/c;
.source "SourceFile"

.field private final a:Ljava/lang/Object;

.field private final b:Ljava/util/concurrent/ExecutorService;

.method public constructor <init>()V
  .registers 3
  .line 1
    invoke-direct { p0 }, Lc/b/a/a/c;-><init>()V
  .line 2
    new-instance v0, Ljava/lang/Object;
    invoke-direct { v0 }, Ljava/lang/Object;-><init>()V
    iput-object v0, p0, Lc/b/a/a/b;->a:Ljava/lang/Object;
  .line 3
    new-instance v0, Lc/b/a/a/b$a;
    invoke-direct { v0, p0 }, Lc/b/a/a/b$a;-><init>(Lc/b/a/a/b;)V
    const/4 v1, 4
    invoke-static { v1, v0 }, Ljava/util/concurrent/Executors;->newFixedThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;
    move-result-object v0
    iput-object v0, p0, Lc/b/a/a/b;->b:Ljava/util/concurrent/ExecutorService;
    return-void
.end method

.method public a()Z
  .registers 3
  .line 1
    invoke-static { }, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;
    move-result-object v0
    invoke-virtual { v0 }, Landroid/os/Looper;->getThread()Ljava/lang/Thread;
    move-result-object v0
    invoke-static { }, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;
    move-result-object v1
    if-ne v0, v1, :L0
    const/4 v0, 1
    goto :L1
  :L0
    const/4 v0, 0
  :L1
    return v0
.end method
