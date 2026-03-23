.class public Landroidx/core/app/f;
.super Landroid/app/Activity;
.implements Landroidx/lifecycle/j;
.implements Landroidx/core/view/f$a;
.source "SourceFile"

.annotation system Ldalvik/annotation/MemberClasses;
  value = {
    Landroidx/core/app/f$a;
  }
.end annotation

.field private mExtraDataMap:Lc/d/g;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "Lc/d/g<",
      "Ljava/lang/Class<",
      "+",
      "Landroidx/core/app/f$a;",
      ">;",
      "Landroidx/core/app/f$a;",
      ">;"
    }
  .end annotation
.end field

.field private mLifecycleRegistry:Landroidx/lifecycle/k;

.method public constructor <init>()V
  .registers 2
  .line 1
    invoke-direct { p0 }, Landroid/app/Activity;-><init>()V
  .line 2
    new-instance v0, Lc/d/g;
    invoke-direct { v0 }, Lc/d/g;-><init>()V
    iput-object v0, p0, Landroidx/core/app/f;->mExtraDataMap:Lc/d/g;
  .line 3
    new-instance v0, Landroidx/lifecycle/k;
    invoke-direct { v0, p0 }, Landroidx/lifecycle/k;-><init>(Landroidx/lifecycle/j;)V
    iput-object v0, p0, Landroidx/core/app/f;->mLifecycleRegistry:Landroidx/lifecycle/k;
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
  .registers 4
  .line 1
    invoke-virtual { p0 }, Landroid/app/Activity;->getWindow()Landroid/view/Window;
    move-result-object v0
    invoke-virtual { v0 }, Landroid/view/Window;->getDecorView()Landroid/view/View;
    move-result-object v0
    if-eqz v0, :L0
  .line 2
    invoke-static { v0, p1 }, Landroidx/core/view/f;->d(Landroid/view/View;Landroid/view/KeyEvent;)Z
    move-result v1
    if-eqz v1, :L0
    const/4 p1, 1
    return p1
  :L0
  .line 3
    invoke-static { p0, v0, p0, p1 }, Landroidx/core/view/f;->e(Landroidx/core/view/f$a;Landroid/view/View;Landroid/view/Window$Callback;Landroid/view/KeyEvent;)Z
    move-result p1
    return p1
.end method

.method public dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z
  .registers 3
  .line 1
    invoke-virtual { p0 }, Landroid/app/Activity;->getWindow()Landroid/view/Window;
    move-result-object v0
    invoke-virtual { v0 }, Landroid/view/Window;->getDecorView()Landroid/view/View;
    move-result-object v0
    if-eqz v0, :L0
  .line 2
    invoke-static { v0, p1 }, Landroidx/core/view/f;->d(Landroid/view/View;Landroid/view/KeyEvent;)Z
    move-result v0
    if-eqz v0, :L0
    const/4 p1, 1
    return p1
  :L0
  .line 3
    invoke-super { p0, p1 }, Landroid/app/Activity;->dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z
    move-result p1
    return p1
.end method

.method public getExtraData(Ljava/lang/Class;)Landroidx/core/app/f$a;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "<T:",
      "Landroidx/core/app/f$a;",
      ">(",
      "Ljava/lang/Class<",
      "TT;>;)TT;"
    }
  .end annotation
  .annotation runtime Ljava/lang/Deprecated;
  .end annotation
  .registers 3
  .line 1
    iget-object v0, p0, Landroidx/core/app/f;->mExtraDataMap:Lc/d/g;
    invoke-virtual { v0, p1 }, Lc/d/g;->get(Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object p1
    check-cast p1, Landroidx/core/app/f$a;
    return-object p1
.end method

.method public getLifecycle()Landroidx/lifecycle/f;
  .registers 1
    const p0, 0
    throw p0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
  .annotation build Landroid/annotation/SuppressLint;
    value = {
      "RestrictedApi"
    }
  .end annotation
  .registers 2
  .line 1
    invoke-super { p0, p1 }, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V
  .line 2
    invoke-static { p0 }, Landroidx/lifecycle/s;->g(Landroid/app/Activity;)V
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
  .registers 4
  .line 1
    iget-object v0, p0, Landroidx/core/app/f;->mLifecycleRegistry:Landroidx/lifecycle/k;
    sget-object v1, Landroidx/lifecycle/f$c;->d:Landroidx/lifecycle/f$c;
    invoke-virtual { v0, v1 }, Landroidx/lifecycle/k;->j(Landroidx/lifecycle/f$c;)V
  .line 2
    invoke-super { p0, p1 }, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V
    return-void
.end method

.method public putExtraData(Landroidx/core/app/f$a;)V
  .annotation runtime Ljava/lang/Deprecated;
  .end annotation
  .registers 4
  .line 1
    iget-object v0, p0, Landroidx/core/app/f;->mExtraDataMap:Lc/d/g;
    invoke-virtual { p1 }, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    move-result-object v1
    invoke-virtual { v0, v1, p1 }, Lc/d/g;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    return-void
.end method

.method public superDispatchKeyEvent(Landroid/view/KeyEvent;)Z
  .registers 2
  .line 1
    invoke-super { p0, p1 }, Landroid/app/Activity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    move-result p1
    return p1
.end method
