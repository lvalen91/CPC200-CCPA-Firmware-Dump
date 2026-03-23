.class public Landroidx/databinding/a;
.super Ljava/lang/Object;
.source "SourceFile"

.field private transient a:Landroidx/databinding/i;

.method public constructor <init>()V
  .registers 1
  .line 1
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public d(I)V
  .catchall { :L0 .. :L2 } :L3
  .catchall { :L4 .. :L5 } :L3
  .registers 4
  .line 1
    monitor-enter p0
  :L0
  .line 2
    iget-object v0, p0, Landroidx/databinding/a;->a:Landroidx/databinding/i;
    if-nez v0, :L1
  .line 3
    monitor-exit p0
    return-void
  :L1
  .line 4
    monitor-exit p0
  :L2
  .line 5
    iget-object v0, p0, Landroidx/databinding/a;->a:Landroidx/databinding/i;
    const/4 v1, 0
    invoke-virtual { v0, p0, p1, v1 }, Landroidx/databinding/b;->a(Ljava/lang/Object;ILjava/lang/Object;)V
    return-void
  :L3
    move-exception p1
  :L4
  .line 6
    monitor-exit p0
  :L5
    throw p1
.end method
