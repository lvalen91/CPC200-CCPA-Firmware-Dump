.class public Lcn/manstep/phonemirrorBox/h0/a;
.super Ljava/lang/Object;
.source "SourceFile"

.field private final a:Ljava/util/concurrent/ScheduledExecutorService;

.field private final b:Ljava/util/concurrent/ConcurrentMap;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "Ljava/util/concurrent/ConcurrentMap<",
      "Ljava/lang/String;",
      "Ljava/util/concurrent/ScheduledFuture<",
      "*>;>;"
    }
  .end annotation
.end field

.field private final c:Ljava/util/concurrent/ConcurrentMap;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "Ljava/util/concurrent/ConcurrentMap<",
      "Ljava/lang/String;",
      "Ljava/lang/Runnable;",
      ">;"
    }
  .end annotation
.end field

.field private final d:Ljava/util/concurrent/ConcurrentMap;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "Ljava/util/concurrent/ConcurrentMap<",
      "Ljava/lang/String;",
      "Ljava/lang/Long;",
      ">;"
    }
  .end annotation
.end field

.field private final e:Ljava/util/concurrent/ConcurrentMap;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "Ljava/util/concurrent/ConcurrentMap<",
      "Ljava/lang/String;",
      "Ljava/lang/Boolean;",
      ">;"
    }
  .end annotation
.end field

.method public constructor <init>()V
  .registers 2
  .line 1
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
  .line 2
    invoke-static { }, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;
    move-result-object v0
    invoke-virtual { v0 }, Ljava/lang/Runtime;->availableProcessors()I
    move-result v0
    invoke-static { v0 }, Ljava/util/concurrent/Executors;->newScheduledThreadPool(I)Ljava/util/concurrent/ScheduledExecutorService;
    move-result-object v0
    iput-object v0, p0, Lcn/manstep/phonemirrorBox/h0/a;->a:Ljava/util/concurrent/ScheduledExecutorService;
  .line 3
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;
    invoke-direct { v0 }, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V
    iput-object v0, p0, Lcn/manstep/phonemirrorBox/h0/a;->b:Ljava/util/concurrent/ConcurrentMap;
  .line 4
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;
    invoke-direct { v0 }, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V
    iput-object v0, p0, Lcn/manstep/phonemirrorBox/h0/a;->c:Ljava/util/concurrent/ConcurrentMap;
  .line 5
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;
    invoke-direct { v0 }, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V
    iput-object v0, p0, Lcn/manstep/phonemirrorBox/h0/a;->d:Ljava/util/concurrent/ConcurrentMap;
  .line 6
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;
    invoke-direct { v0 }, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V
    iput-object v0, p0, Lcn/manstep/phonemirrorBox/h0/a;->e:Ljava/util/concurrent/ConcurrentMap;
    return-void
.end method

.method static synthetic a(Lcn/manstep/phonemirrorBox/h0/a;Ljava/lang/String;)Z
  .registers 2
  .line 1
    invoke-direct { p0, p1 }, Lcn/manstep/phonemirrorBox/h0/a;->d(Ljava/lang/String;)Z
    move-result p0
    return p0
.end method

.method private c(Ljava/lang/String;Ljava/lang/Runnable;)Ljava/lang/Runnable;
  .registers 4
  .line 1
    new-instance v0, Lcn/manstep/phonemirrorBox/h0/a$a;
    invoke-direct { v0, p0, p1, p2 }, Lcn/manstep/phonemirrorBox/h0/a$a;-><init>(Lcn/manstep/phonemirrorBox/h0/a;Ljava/lang/String;Ljava/lang/Runnable;)V
    return-object v0
.end method

.method private d(Ljava/lang/String;)Z
  .registers 3
  .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/h0/a;->e:Ljava/util/concurrent/ConcurrentMap;
    invoke-interface { v0, p1 }, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object p1
    check-cast p1, Ljava/lang/Boolean;
  .line 2
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;
    invoke-virtual { v0, p1 }, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z
    move-result p1
    return p1
.end method

.method public declared-synchronized b(Ljava/lang/String;)V
  .catchall { :L0 .. :L2 } :L3
  .registers 4
    monitor-enter p0
  :L0
  .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/h0/a;->e:Ljava/util/concurrent/ConcurrentMap;
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;
    invoke-interface { v0, p1, v1 }, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
  .line 2
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/h0/a;->b:Ljava/util/concurrent/ConcurrentMap;
    invoke-interface { v0, p1 }, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Ljava/util/concurrent/ScheduledFuture;
    if-eqz v0, :L1
  .line 3
    invoke-interface { v0 }, Ljava/util/concurrent/ScheduledFuture;->isCancelled()Z
    move-result v1
    if-nez v1, :L1
    const/4 v1, 1
  .line 4
    invoke-interface { v0, v1 }, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z
  :L1
  .line 5
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/h0/a;->b:Ljava/util/concurrent/ConcurrentMap;
    invoke-interface { v0, p1 }, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
  :L2
  .line 6
    monitor-exit p0
    return-void
  :L3
    move-exception p1
    monitor-exit p0
    throw p1
.end method

.method public declared-synchronized e()V
  .catchall { :L0 .. :L3 } :L4
  .registers 3
    monitor-enter p0
  :L0
  .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/h0/a;->b:Ljava/util/concurrent/ConcurrentMap;
    invoke-interface { v0 }, Ljava/util/concurrent/ConcurrentMap;->keySet()Ljava/util/Set;
    move-result-object v0
    invoke-interface { v0 }, Ljava/util/Set;->iterator()Ljava/util/Iterator;
    move-result-object v0
  :L1
    invoke-interface { v0 }, Ljava/util/Iterator;->hasNext()Z
    move-result v1
    if-eqz v1, :L2
    invoke-interface { v0 }, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object v1
    check-cast v1, Ljava/lang/String;
  .line 2
    invoke-virtual { p0, v1 }, Lcn/manstep/phonemirrorBox/h0/a;->b(Ljava/lang/String;)V
    goto :L1
  :L2
  .line 3
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/h0/a;->a:Ljava/util/concurrent/ScheduledExecutorService;
    invoke-interface { v0 }, Ljava/util/concurrent/ScheduledExecutorService;->shutdownNow()Ljava/util/List;
  .line 4
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/h0/a;->b:Ljava/util/concurrent/ConcurrentMap;
    invoke-interface { v0 }, Ljava/util/concurrent/ConcurrentMap;->clear()V
  .line 5
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/h0/a;->c:Ljava/util/concurrent/ConcurrentMap;
    invoke-interface { v0 }, Ljava/util/concurrent/ConcurrentMap;->clear()V
  .line 6
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/h0/a;->d:Ljava/util/concurrent/ConcurrentMap;
    invoke-interface { v0 }, Ljava/util/concurrent/ConcurrentMap;->clear()V
  .line 7
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/h0/a;->e:Ljava/util/concurrent/ConcurrentMap;
    invoke-interface { v0 }, Ljava/util/concurrent/ConcurrentMap;->clear()V
  :L3
  .line 8
    monitor-exit p0
    return-void
  :L4
    move-exception v0
    monitor-exit p0
    goto :L6
  :L5
    throw v0
  :L6
    goto :L5
.end method

.method public declared-synchronized f(Ljava/lang/String;Ljava/lang/Runnable;JJ)V
  .catchall { :L0 .. :L1 } :L2
  .registers 16
    monitor-enter p0
  :L0
  .line 1
    invoke-virtual { p0, p1 }, Lcn/manstep/phonemirrorBox/h0/a;->b(Ljava/lang/String;)V
  .line 2
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/h0/a;->c:Ljava/util/concurrent/ConcurrentMap;
    invoke-interface { v0, p1, p2 }, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
  .line 3
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/h0/a;->d:Ljava/util/concurrent/ConcurrentMap;
    invoke-static { p5, p6 }, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    move-result-object v1
    invoke-interface { v0, p1, v1 }, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
  .line 4
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/h0/a;->e:Ljava/util/concurrent/ConcurrentMap;
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;
    invoke-interface { v0, p1, v1 }, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
  .line 5
    iget-object v2, p0, Lcn/manstep/phonemirrorBox/h0/a;->a:Ljava/util/concurrent/ScheduledExecutorService;
    invoke-direct { p0, p1, p2 }, Lcn/manstep/phonemirrorBox/h0/a;->c(Ljava/lang/String;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    move-result-object v3
    sget-object v8, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;
    move-wide v4, p3
    move-wide v6, p5
    invoke-interface/range { v2 .. v8 }, Ljava/util/concurrent/ScheduledExecutorService;->scheduleWithFixedDelay(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    move-result-object p2
  .line 6
    iget-object p3, p0, Lcn/manstep/phonemirrorBox/h0/a;->b:Ljava/util/concurrent/ConcurrentMap;
    invoke-interface { p3, p1, p2 }, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
  :L1
  .line 7
    monitor-exit p0
    return-void
  :L2
    move-exception p1
    monitor-exit p0
    throw p1
.end method
