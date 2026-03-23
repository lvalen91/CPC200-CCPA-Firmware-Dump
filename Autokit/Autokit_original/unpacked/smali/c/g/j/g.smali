.class public Lc/g/j/g;
.super Lc/g/j/f;
.source "SourceFile"

.annotation system Ldalvik/annotation/Signature;
  value = {
    "<T:",
    "Ljava/lang/Object;",
    ">",
    "Lc/g/j/f<",
    "TT;>;"
  }
.end annotation

.field private final c:Ljava/lang/Object;

.method public constructor <init>(I)V
  .registers 2
  .line 1
    invoke-direct { p0, p1 }, Lc/g/j/f;-><init>(I)V
  .line 2
    new-instance p1, Ljava/lang/Object;
    invoke-direct { p1 }, Ljava/lang/Object;-><init>()V
    iput-object p1, p0, Lc/g/j/g;->c:Ljava/lang/Object;
    return-void
.end method

.method public a(Ljava/lang/Object;)Z
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(TT;)Z"
    }
  .end annotation
  .catchall { :L0 .. :L2 } :L1
  .registers 3
  .line 1
    iget-object v0, p0, Lc/g/j/g;->c:Ljava/lang/Object;
    monitor-enter v0
  :L0
  .line 2
    invoke-super { p0, p1 }, Lc/g/j/f;->a(Ljava/lang/Object;)Z
    move-result p1
    monitor-exit v0
    return p1
  :L1
    move-exception p1
  .line 3
    monitor-exit v0
  :L2
    throw p1
.end method

.method public b()Ljava/lang/Object;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "()TT;"
    }
  .end annotation
  .catchall { :L0 .. :L2 } :L1
  .registers 3
  .line 1
    iget-object v0, p0, Lc/g/j/g;->c:Ljava/lang/Object;
    monitor-enter v0
  :L0
  .line 2
    invoke-super { p0 }, Lc/g/j/f;->b()Ljava/lang/Object;
    move-result-object v1
    monitor-exit v0
    return-object v1
  :L1
    move-exception v1
  .line 3
    monitor-exit v0
  :L2
    throw v1
.end method
