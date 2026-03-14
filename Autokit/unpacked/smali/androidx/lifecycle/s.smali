.class public Landroidx/lifecycle/s;
.super Landroid/app/Fragment;
.source "SourceFile"

.annotation system Ldalvik/annotation/MemberClasses;
  value = {
    Landroidx/lifecycle/s$b;,
    Landroidx/lifecycle/s$a;
  }
.end annotation

.field private b:Landroidx/lifecycle/s$a;

.method public constructor <init>()V
  .registers 1
  .line 1
    invoke-direct { p0 }, Landroid/app/Fragment;-><init>()V
    return-void
.end method

.method static a(Landroid/app/Activity;Landroidx/lifecycle/f$b;)V
  .registers 3
  .line 1
    instance-of v0, p0, Landroidx/lifecycle/l;
    if-eqz v0, :L0
  .line 2
    check-cast p0, Landroidx/lifecycle/l;
    invoke-interface { p0 }, Landroidx/lifecycle/l;->getLifecycle()Landroidx/lifecycle/k;
    move-result-object p0
    invoke-virtual { p0, p1 }, Landroidx/lifecycle/k;->h(Landroidx/lifecycle/f$b;)V
    return-void
  :L0
  .line 3
    instance-of v0, p0, Landroidx/lifecycle/j;
    if-eqz v0, :L1
  .line 4
    check-cast p0, Landroidx/lifecycle/j;
    invoke-interface { p0 }, Landroidx/lifecycle/j;->getLifecycle()Landroidx/lifecycle/f;
    move-result-object p0
  .line 5
    instance-of v0, p0, Landroidx/lifecycle/k;
    if-eqz v0, :L1
  .line 6
    check-cast p0, Landroidx/lifecycle/k;
    invoke-virtual { p0, p1 }, Landroidx/lifecycle/k;->h(Landroidx/lifecycle/f$b;)V
  :L1
    return-void
.end method

.method private b(Landroidx/lifecycle/f$b;)V
  .registers 4
  .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v1, 29
    if-ge v0, v1, :L0
  .line 2
    invoke-virtual { p0 }, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;
    move-result-object v0
    invoke-static { v0, p1 }, Landroidx/lifecycle/s;->a(Landroid/app/Activity;Landroidx/lifecycle/f$b;)V
  :L0
    return-void
.end method

.method private c(Landroidx/lifecycle/s$a;)V
  .registers 2
    if-eqz p1, :L0
  .line 1
    invoke-interface { p1 }, Landroidx/lifecycle/s$a;->a()V
  :L0
    return-void
.end method

.method private d(Landroidx/lifecycle/s$a;)V
  .registers 2
    if-eqz p1, :L0
  .line 1
    invoke-interface { p1 }, Landroidx/lifecycle/s$a;->b()V
  :L0
    return-void
.end method

.method private e(Landroidx/lifecycle/s$a;)V
  .registers 2
    if-eqz p1, :L0
  .line 1
    invoke-interface { p1 }, Landroidx/lifecycle/s$a;->c()V
  :L0
    return-void
.end method

.method static f(Landroid/app/Activity;)Landroidx/lifecycle/s;
  .registers 2
  .line 1
    invoke-virtual { p0 }, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;
    move-result-object p0
    const-string v0, "androidx.lifecycle.LifecycleDispatcher.report_fragment_tag"
    invoke-virtual { p0, v0 }, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;
    move-result-object p0
    check-cast p0, Landroidx/lifecycle/s;
    return-object p0
.end method

.method public static g(Landroid/app/Activity;)V
  .registers 4
  .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v1, 29
    if-lt v0, v1, :L0
  .line 2
    invoke-static { p0 }, Landroidx/lifecycle/s$b;->registerIn(Landroid/app/Activity;)V
  :L0
  .line 3
    invoke-virtual { p0 }, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;
    move-result-object p0
    const-string v0, "androidx.lifecycle.LifecycleDispatcher.report_fragment_tag"
  .line 4
    invoke-virtual { p0, v0 }, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;
    move-result-object v1
    if-nez v1, :L1
  .line 5
    invoke-virtual { p0 }, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;
    move-result-object v1
    new-instance v2, Landroidx/lifecycle/s;
    invoke-direct { v2 }, Landroidx/lifecycle/s;-><init>()V
    invoke-virtual { v1, v2, v0 }, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;
    move-result-object v0
    invoke-virtual { v0 }, Landroid/app/FragmentTransaction;->commit()I
  .line 6
    invoke-virtual { p0 }, Landroid/app/FragmentManager;->executePendingTransactions()Z
  :L1
    return-void
.end method

.method h(Landroidx/lifecycle/s$a;)V
  .registers 2
  .line 1
    iput-object p1, p0, Landroidx/lifecycle/s;->b:Landroidx/lifecycle/s$a;
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
  .registers 2
  .line 1
    invoke-super { p0, p1 }, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V
  .line 2
    iget-object p1, p0, Landroidx/lifecycle/s;->b:Landroidx/lifecycle/s$a;
    invoke-direct { p0, p1 }, Landroidx/lifecycle/s;->c(Landroidx/lifecycle/s$a;)V
  .line 3
    sget-object p1, Landroidx/lifecycle/f$b;->ON_CREATE:Landroidx/lifecycle/f$b;
    invoke-direct { p0, p1 }, Landroidx/lifecycle/s;->b(Landroidx/lifecycle/f$b;)V
    return-void
.end method

.method public onDestroy()V
  .registers 2
  .line 1
    invoke-super { p0 }, Landroid/app/Fragment;->onDestroy()V
  .line 2
    sget-object v0, Landroidx/lifecycle/f$b;->ON_DESTROY:Landroidx/lifecycle/f$b;
    invoke-direct { p0, v0 }, Landroidx/lifecycle/s;->b(Landroidx/lifecycle/f$b;)V
    const/4 v0, 0
  .line 3
    iput-object v0, p0, Landroidx/lifecycle/s;->b:Landroidx/lifecycle/s$a;
    return-void
.end method

.method public onPause()V
  .registers 2
  .line 1
    invoke-super { p0 }, Landroid/app/Fragment;->onPause()V
  .line 2
    sget-object v0, Landroidx/lifecycle/f$b;->ON_PAUSE:Landroidx/lifecycle/f$b;
    invoke-direct { p0, v0 }, Landroidx/lifecycle/s;->b(Landroidx/lifecycle/f$b;)V
    return-void
.end method

.method public onResume()V
  .registers 2
  .line 1
    invoke-super { p0 }, Landroid/app/Fragment;->onResume()V
  .line 2
    iget-object v0, p0, Landroidx/lifecycle/s;->b:Landroidx/lifecycle/s$a;
    invoke-direct { p0, v0 }, Landroidx/lifecycle/s;->d(Landroidx/lifecycle/s$a;)V
  .line 3
    sget-object v0, Landroidx/lifecycle/f$b;->ON_RESUME:Landroidx/lifecycle/f$b;
    invoke-direct { p0, v0 }, Landroidx/lifecycle/s;->b(Landroidx/lifecycle/f$b;)V
    return-void
.end method

.method public onStart()V
  .registers 2
  .line 1
    invoke-super { p0 }, Landroid/app/Fragment;->onStart()V
  .line 2
    iget-object v0, p0, Landroidx/lifecycle/s;->b:Landroidx/lifecycle/s$a;
    invoke-direct { p0, v0 }, Landroidx/lifecycle/s;->e(Landroidx/lifecycle/s$a;)V
  .line 3
    sget-object v0, Landroidx/lifecycle/f$b;->ON_START:Landroidx/lifecycle/f$b;
    invoke-direct { p0, v0 }, Landroidx/lifecycle/s;->b(Landroidx/lifecycle/f$b;)V
    return-void
.end method

.method public onStop()V
  .registers 2
  .line 1
    invoke-super { p0 }, Landroid/app/Fragment;->onStop()V
  .line 2
    sget-object v0, Landroidx/lifecycle/f$b;->ON_STOP:Landroidx/lifecycle/f$b;
    invoke-direct { p0, v0 }, Landroidx/lifecycle/s;->b(Landroidx/lifecycle/f$b;)V
    return-void
.end method
