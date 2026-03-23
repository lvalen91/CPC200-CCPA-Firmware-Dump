.class public final Lc/g/g/b;
.super Ljava/lang/Object;
.source "SourceFile"

.annotation system Ldalvik/annotation/MemberClasses;
  value = {
    Lc/g/g/b$a;
  }
.end annotation

.field private a:Z

.field private b:Lc/g/g/b$a;

.field private c:Ljava/lang/Object;

.field private d:Z

.method public constructor <init>()V
  .registers 1
  .line 1
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method private d()V
  .catch Ljava/lang/InterruptedException; { :L1 .. :L2 } :L3
  .registers 2
  :L0
  .line 1
    iget-boolean v0, p0, Lc/g/g/b;->d:Z
    if-eqz v0, :L4
  :L1
  .line 2
    invoke-virtual { p0 }, Ljava/lang/Object;->wait()V
  :L2
    goto :L0
  :L3
    nop
    goto :L0
  :L4
    return-void
.end method

.method public a()V
  .catchall { :L0 .. :L2 } :L17
  .catchall { :L3 .. :L6 } :L4
  .catchall { :L8 .. :L9 } :L10
  .catchall { :L11 .. :L12 } :L10
  .catchall { :L14 .. :L16 } :L15
  .catchall { :L18 .. :L19 } :L17
  .registers 5
  .line 1
    monitor-enter p0
  :L0
  .line 2
    iget-boolean v0, p0, Lc/g/g/b;->a:Z
    if-eqz v0, :L1
  .line 3
    monitor-exit p0
    return-void
  :L1
    const/4 v0, 1
  .line 4
    iput-boolean v0, p0, Lc/g/g/b;->a:Z
  .line 5
    iput-boolean v0, p0, Lc/g/g/b;->d:Z
  .line 6
    iget-object v0, p0, Lc/g/g/b;->b:Lc/g/g/b$a;
  .line 7
    iget-object v1, p0, Lc/g/g/b;->c:Ljava/lang/Object;
  .line 8
    monitor-exit p0
  :L2
    const/4 v2, 0
    if-eqz v0, :L5
  :L3
  .line 9
    invoke-interface { v0 }, Lc/g/g/b$a;->a()V
    goto :L5
  :L4
    move-exception v0
    goto :L7
  :L5
    if-eqz v1, :L13
  .line 10
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v3, 16
    if-lt v0, v3, :L13
  .line 11
    check-cast v1, Landroid/os/CancellationSignal;
    invoke-virtual { v1 }, Landroid/os/CancellationSignal;->cancel()V
  :L6
    goto :L13
  :L7
  .line 12
    monitor-enter p0
  :L8
  .line 13
    iput-boolean v2, p0, Lc/g/g/b;->d:Z
  .line 14
    invoke-virtual { p0 }, Ljava/lang/Object;->notifyAll()V
  .line 15
    monitor-exit p0
  :L9
  .line 16
    throw v0
  :L10
    move-exception v0
  :L11
  .line 17
    monitor-exit p0
  :L12
    throw v0
  :L13
  .line 18
    monitor-enter p0
  :L14
  .line 19
    iput-boolean v2, p0, Lc/g/g/b;->d:Z
  .line 20
    invoke-virtual { p0 }, Ljava/lang/Object;->notifyAll()V
  .line 21
    monitor-exit p0
    return-void
  :L15
    move-exception v0
    monitor-exit p0
  :L16
    throw v0
  :L17
    move-exception v0
  :L18
  .line 22
    monitor-exit p0
  :L19
    throw v0
.end method

.method public b()Z
  .catchall { :L0 .. :L2 } :L1
  .registers 2
  .line 1
    monitor-enter p0
  :L0
  .line 2
    iget-boolean v0, p0, Lc/g/g/b;->a:Z
    monitor-exit p0
    return v0
  :L1
    move-exception v0
  .line 3
    monitor-exit p0
  :L2
    throw v0
.end method

.method public c(Lc/g/g/b$a;)V
  .catchall { :L0 .. :L3 } :L5
  .catchall { :L4 .. :L6 } :L5
  .registers 3
  .line 1
    monitor-enter p0
  :L0
  .line 2
    invoke-direct { p0 }, Lc/g/g/b;->d()V
  .line 3
    iget-object v0, p0, Lc/g/g/b;->b:Lc/g/g/b$a;
    if-ne v0, p1, :L1
  .line 4
    monitor-exit p0
    return-void
  :L1
  .line 5
    iput-object p1, p0, Lc/g/g/b;->b:Lc/g/g/b$a;
  .line 6
    iget-boolean v0, p0, Lc/g/g/b;->a:Z
    if-eqz v0, :L4
    if-nez p1, :L2
    goto :L4
  :L2
  .line 7
    monitor-exit p0
  :L3
  .line 8
    invoke-interface { p1 }, Lc/g/g/b$a;->a()V
    return-void
  :L4
  .line 9
    monitor-exit p0
    return-void
  :L5
    move-exception p1
  .line 10
    monitor-exit p0
  :L6
    throw p1
.end method
