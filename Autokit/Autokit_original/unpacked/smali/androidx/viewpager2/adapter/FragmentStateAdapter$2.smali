.class Landroidx/viewpager2/adapter/FragmentStateAdapter$2;
.super Ljava/lang/Object;
.implements Landroidx/lifecycle/h;
.source "SourceFile"

.field final synthetic a:Landroidx/viewpager2/adapter/b;

.field final synthetic b:Landroidx/viewpager2/adapter/a;

.method public d(Landroidx/lifecycle/j;Landroidx/lifecycle/f$b;)V
  .registers 3
  .line 1
    iget-object p2, p0, Landroidx/viewpager2/adapter/FragmentStateAdapter$2;->b:Landroidx/viewpager2/adapter/a;
    invoke-virtual { p2 }, Landroidx/viewpager2/adapter/a;->u()Z
    move-result p2
    if-eqz p2, :L0
    return-void
  :L0
  .line 2
    invoke-interface { p1 }, Landroidx/lifecycle/j;->getLifecycle()Landroidx/lifecycle/f;
    move-result-object p1
    invoke-virtual { p1, p0 }, Landroidx/lifecycle/f;->c(Landroidx/lifecycle/i;)V
  .line 3
    iget-object p1, p0, Landroidx/viewpager2/adapter/FragmentStateAdapter$2;->a:Landroidx/viewpager2/adapter/b;
    invoke-virtual { p1 }, Landroidx/viewpager2/adapter/b;->M()Landroid/widget/FrameLayout;
    const/4 p1, 0
    throw p1
.end method
