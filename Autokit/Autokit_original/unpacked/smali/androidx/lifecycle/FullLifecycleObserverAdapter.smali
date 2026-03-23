.class Landroidx/lifecycle/FullLifecycleObserverAdapter;
.super Ljava/lang/Object;
.implements Landroidx/lifecycle/h;
.source "SourceFile"

.field private final a:Landroidx/lifecycle/d;

.field private final b:Landroidx/lifecycle/h;

.method constructor <init>(Landroidx/lifecycle/d;Landroidx/lifecycle/h;)V
  .registers 3
  .line 1
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
  .line 2
    iput-object p1, p0, Landroidx/lifecycle/FullLifecycleObserverAdapter;->a:Landroidx/lifecycle/d;
  .line 3
    iput-object p2, p0, Landroidx/lifecycle/FullLifecycleObserverAdapter;->b:Landroidx/lifecycle/h;
    return-void
.end method

.method public d(Landroidx/lifecycle/j;Landroidx/lifecycle/f$b;)V
  .registers 5
  .line 1
    sget-object v0, Landroidx/lifecycle/FullLifecycleObserverAdapter$a;->a:[I
    invoke-virtual { p2 }, Ljava/lang/Enum;->ordinal()I
    move-result v1
    aget v0, v0, v1
    packed-switch v0, :L9
    goto :L7
  :L0
  .line 2
    new-instance p1, Ljava/lang/IllegalArgumentException;
    const-string p2, "ON_ANY must not been send by anybody"
    invoke-direct { p1, p2 }, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
    throw p1
  :L1
  .line 3
    iget-object v0, p0, Landroidx/lifecycle/FullLifecycleObserverAdapter;->a:Landroidx/lifecycle/d;
    invoke-interface { v0, p1 }, Landroidx/lifecycle/d;->b(Landroidx/lifecycle/j;)V
    goto :L7
  :L2
  .line 4
    iget-object v0, p0, Landroidx/lifecycle/FullLifecycleObserverAdapter;->a:Landroidx/lifecycle/d;
    invoke-interface { v0, p1 }, Landroidx/lifecycle/d;->f(Landroidx/lifecycle/j;)V
    goto :L7
  :L3
  .line 5
    iget-object v0, p0, Landroidx/lifecycle/FullLifecycleObserverAdapter;->a:Landroidx/lifecycle/d;
    invoke-interface { v0, p1 }, Landroidx/lifecycle/d;->e(Landroidx/lifecycle/j;)V
    goto :L7
  :L4
  .line 6
    iget-object v0, p0, Landroidx/lifecycle/FullLifecycleObserverAdapter;->a:Landroidx/lifecycle/d;
    invoke-interface { v0, p1 }, Landroidx/lifecycle/d;->a(Landroidx/lifecycle/j;)V
    goto :L7
  :L5
  .line 7
    iget-object v0, p0, Landroidx/lifecycle/FullLifecycleObserverAdapter;->a:Landroidx/lifecycle/d;
    invoke-interface { v0, p1 }, Landroidx/lifecycle/d;->g(Landroidx/lifecycle/j;)V
    goto :L7
  :L6
  .line 8
    iget-object v0, p0, Landroidx/lifecycle/FullLifecycleObserverAdapter;->a:Landroidx/lifecycle/d;
    invoke-interface { v0, p1 }, Landroidx/lifecycle/d;->c(Landroidx/lifecycle/j;)V
  :L7
  .line 9
    iget-object v0, p0, Landroidx/lifecycle/FullLifecycleObserverAdapter;->b:Landroidx/lifecycle/h;
    if-eqz v0, :L8
  .line 10
    invoke-interface { v0, p1, p2 }, Landroidx/lifecycle/h;->d(Landroidx/lifecycle/j;Landroidx/lifecycle/f$b;)V
  :L8
    return-void
  :L9
  .packed-switch 1
    :L6
    :L5
    :L4
    :L3
    :L2
    :L1
    :L0
  .end packed-switch
.end method
