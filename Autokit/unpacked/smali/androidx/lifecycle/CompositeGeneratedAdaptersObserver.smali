.class Landroidx/lifecycle/CompositeGeneratedAdaptersObserver;
.super Ljava/lang/Object;
.implements Landroidx/lifecycle/h;
.source "SourceFile"

.field private final a:[Landroidx/lifecycle/e;

.method constructor <init>([Landroidx/lifecycle/e;)V
  .registers 2
  .line 1
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
  .line 2
    iput-object p1, p0, Landroidx/lifecycle/CompositeGeneratedAdaptersObserver;->a:[Landroidx/lifecycle/e;
    return-void
.end method

.method public d(Landroidx/lifecycle/j;Landroidx/lifecycle/f$b;)V
  .registers 9
  .line 1
    new-instance v0, Landroidx/lifecycle/n;
    invoke-direct { v0 }, Landroidx/lifecycle/n;-><init>()V
  .line 2
    iget-object v1, p0, Landroidx/lifecycle/CompositeGeneratedAdaptersObserver;->a:[Landroidx/lifecycle/e;
    array-length v2, v1
    const/4 v3, 0
    const/4 v4, 0
  :L0
    if-ge v4, v2, :L1
    aget-object v5, v1, v4
  .line 3
    invoke-interface { v5, p1, p2, v3, v0 }, Landroidx/lifecycle/e;->a(Landroidx/lifecycle/j;Landroidx/lifecycle/f$b;ZLandroidx/lifecycle/n;)V
    add-int/lit8 v4, v4, 1
    goto :L0
  :L1
  .line 4
    iget-object v1, p0, Landroidx/lifecycle/CompositeGeneratedAdaptersObserver;->a:[Landroidx/lifecycle/e;
    array-length v2, v1
  :L2
    if-ge v3, v2, :L3
    aget-object v4, v1, v3
    const/4 v5, 1
  .line 5
    invoke-interface { v4, p1, p2, v5, v0 }, Landroidx/lifecycle/e;->a(Landroidx/lifecycle/j;Landroidx/lifecycle/f$b;ZLandroidx/lifecycle/n;)V
    add-int/lit8 v3, v3, 1
    goto :L2
  :L3
    return-void
.end method
