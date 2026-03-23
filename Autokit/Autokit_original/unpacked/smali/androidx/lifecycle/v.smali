.class public abstract Landroidx/lifecycle/v;
.super Ljava/lang/Object;
.source "SourceFile"

.field private final a:Ljava/util/Map;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "Ljava/util/Map<",
      "Ljava/lang/String;",
      "Ljava/lang/Object;",
      ">;"
    }
  .end annotation
.end field

.field private volatile b:Z

.method public constructor <init>()V
  .registers 2
  .line 1
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
  .line 2
    new-instance v0, Ljava/util/HashMap;
    invoke-direct { v0 }, Ljava/util/HashMap;-><init>()V
    iput-object v0, p0, Landroidx/lifecycle/v;->a:Ljava/util/Map;
    const/4 v0, 0
  .line 3
    iput-boolean v0, p0, Landroidx/lifecycle/v;->b:Z
    return-void
.end method

.method private static e(Ljava/lang/Object;)V
  .catch Ljava/io/IOException; { :L0 .. :L1 } :L2
  .registers 2
  .line 1
    instance-of v0, p0, Ljava/io/Closeable;
    if-eqz v0, :L3
  :L0
  .line 2
    check-cast p0, Ljava/io/Closeable;
    invoke-interface { p0 }, Ljava/io/Closeable;->close()V
  :L1
    goto :L3
  :L2
    move-exception p0
  .line 3
    new-instance v0, Ljava/lang/RuntimeException;
    invoke-direct { v0, p0 }, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V
    throw v0
  :L3
    return-void
.end method

.method final d()V
  .catchall { :L0 .. :L4 } :L3
  .registers 4
    const/4 v0, 1
  .line 1
    iput-boolean v0, p0, Landroidx/lifecycle/v;->b:Z
  .line 2
    iget-object v0, p0, Landroidx/lifecycle/v;->a:Ljava/util/Map;
    if-eqz v0, :L5
  .line 3
    monitor-enter v0
  :L0
  .line 4
    iget-object v1, p0, Landroidx/lifecycle/v;->a:Ljava/util/Map;
    invoke-interface { v1 }, Ljava/util/Map;->values()Ljava/util/Collection;
    move-result-object v1
    invoke-interface { v1 }, Ljava/util/Collection;->iterator()Ljava/util/Iterator;
    move-result-object v1
  :L1
    invoke-interface { v1 }, Ljava/util/Iterator;->hasNext()Z
    move-result v2
    if-eqz v2, :L2
    invoke-interface { v1 }, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object v2
  .line 5
    invoke-static { v2 }, Landroidx/lifecycle/v;->e(Ljava/lang/Object;)V
    goto :L1
  :L2
  .line 6
    monitor-exit v0
    goto :L5
  :L3
    move-exception v1
    monitor-exit v0
  :L4
    throw v1
  :L5
  .line 7
    invoke-virtual { p0 }, Landroidx/lifecycle/v;->g()V
    return-void
.end method

.method f(Ljava/lang/String;)Ljava/lang/Object;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "<T:",
      "Ljava/lang/Object;",
      ">(",
      "Ljava/lang/String;",
      ")TT;"
    }
  .end annotation
  .catchall { :L1 .. :L3 } :L2
  .registers 4
  .line 1
    iget-object v0, p0, Landroidx/lifecycle/v;->a:Ljava/util/Map;
    if-nez v0, :L0
    const/4 p1, 0
    return-object p1
  :L0
  .line 2
    monitor-enter v0
  :L1
  .line 3
    iget-object v1, p0, Landroidx/lifecycle/v;->a:Ljava/util/Map;
    invoke-interface { v1, p1 }, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object p1
    monitor-exit v0
    return-object p1
  :L2
    move-exception p1
  .line 4
    monitor-exit v0
  :L3
    throw p1
.end method

.method protected g()V
  .registers 1
    return-void
.end method

.method h(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "<T:",
      "Ljava/lang/Object;",
      ">(",
      "Ljava/lang/String;",
      "TT;)TT;"
    }
  .end annotation
  .catchall { :L0 .. :L2 } :L6
  .catchall { :L7 .. :L8 } :L6
  .registers 6
  .line 1
    iget-object v0, p0, Landroidx/lifecycle/v;->a:Ljava/util/Map;
    monitor-enter v0
  :L0
  .line 2
    iget-object v1, p0, Landroidx/lifecycle/v;->a:Ljava/util/Map;
    invoke-interface { v1, p1 }, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object v1
    if-nez v1, :L1
  .line 3
    iget-object v2, p0, Landroidx/lifecycle/v;->a:Ljava/util/Map;
    invoke-interface { v2, p1, p2 }, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
  :L1
  .line 4
    monitor-exit v0
  :L2
    if-nez v1, :L3
    goto :L4
  :L3
    move-object p2, v1
  :L4
  .line 5
    iget-boolean p1, p0, Landroidx/lifecycle/v;->b:Z
    if-eqz p1, :L5
  .line 6
    invoke-static { p2 }, Landroidx/lifecycle/v;->e(Ljava/lang/Object;)V
  :L5
    return-object p2
  :L6
    move-exception p1
  :L7
  .line 7
    monitor-exit v0
  :L8
    throw p1
.end method
