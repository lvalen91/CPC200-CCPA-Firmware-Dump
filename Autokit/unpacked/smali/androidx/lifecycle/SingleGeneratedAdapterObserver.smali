.class Landroidx/lifecycle/SingleGeneratedAdapterObserver;
.super Ljava/lang/Object;
.implements Landroidx/lifecycle/h;
.source "SourceFile"

.field private final a:Landroidx/lifecycle/e;

.method constructor <init>(Landroidx/lifecycle/e;)V
  .registers 2
  .line 1
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
  .line 2
    iput-object p1, p0, Landroidx/lifecycle/SingleGeneratedAdapterObserver;->a:Landroidx/lifecycle/e;
    return-void
.end method

.method public d(Landroidx/lifecycle/j;Landroidx/lifecycle/f$b;)V
  .registers 6
  .line 1
    iget-object v0, p0, Landroidx/lifecycle/SingleGeneratedAdapterObserver;->a:Landroidx/lifecycle/e;
    const/4 v1, 0
    const/4 v2, 0
    invoke-interface { v0, p1, p2, v1, v2 }, Landroidx/lifecycle/e;->a(Landroidx/lifecycle/j;Landroidx/lifecycle/f$b;ZLandroidx/lifecycle/n;)V
  .line 2
    iget-object v0, p0, Landroidx/lifecycle/SingleGeneratedAdapterObserver;->a:Landroidx/lifecycle/e;
    const/4 v1, 1
    invoke-interface { v0, p1, p2, v1, v2 }, Landroidx/lifecycle/e;->a(Landroidx/lifecycle/j;Landroidx/lifecycle/f$b;ZLandroidx/lifecycle/n;)V
    return-void
.end method
