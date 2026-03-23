.class Landroidx/appcompat/view/menu/j$b;
.super Landroidx/appcompat/view/menu/j$a;
.implements Landroid/view/ActionProvider$VisibilityListener;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Landroidx/appcompat/view/menu/j;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 2
  name = "b"
.end annotation

.field private d:Landroidx/core/view/b$b;

.method constructor <init>(Landroidx/appcompat/view/menu/j;Landroid/content/Context;Landroid/view/ActionProvider;)V
  .registers 4
  .line 1
    invoke-direct { p0, p1, p2, p3 }, Landroidx/appcompat/view/menu/j$a;-><init>(Landroidx/appcompat/view/menu/j;Landroid/content/Context;Landroid/view/ActionProvider;)V
    return-void
.end method

.method public b()Z
  .registers 2
  .line 1
    iget-object v0, p0, Landroidx/appcompat/view/menu/j$a;->b:Landroid/view/ActionProvider;
    invoke-virtual { v0 }, Landroid/view/ActionProvider;->isVisible()Z
    move-result v0
    return v0
.end method

.method public d(Landroid/view/MenuItem;)Landroid/view/View;
  .registers 3
  .line 1
    iget-object v0, p0, Landroidx/appcompat/view/menu/j$a;->b:Landroid/view/ActionProvider;
    invoke-virtual { v0, p1 }, Landroid/view/ActionProvider;->onCreateActionView(Landroid/view/MenuItem;)Landroid/view/View;
    move-result-object p1
    return-object p1
.end method

.method public g()Z
  .registers 2
  .line 1
    iget-object v0, p0, Landroidx/appcompat/view/menu/j$a;->b:Landroid/view/ActionProvider;
    invoke-virtual { v0 }, Landroid/view/ActionProvider;->overridesItemVisibility()Z
    move-result v0
    return v0
.end method

.method public j(Landroidx/core/view/b$b;)V
  .registers 3
  .line 1
    iput-object p1, p0, Landroidx/appcompat/view/menu/j$b;->d:Landroidx/core/view/b$b;
  .line 2
    iget-object v0, p0, Landroidx/appcompat/view/menu/j$a;->b:Landroid/view/ActionProvider;
    if-eqz p1, :L0
    move-object p1, p0
    goto :L1
  :L0
    const/4 p1, 0
  :L1
    invoke-virtual { v0, p1 }, Landroid/view/ActionProvider;->setVisibilityListener(Landroid/view/ActionProvider$VisibilityListener;)V
    return-void
.end method

.method public onActionProviderVisibilityChanged(Z)V
  .registers 3
  .line 1
    iget-object v0, p0, Landroidx/appcompat/view/menu/j$b;->d:Landroidx/core/view/b$b;
    if-eqz v0, :L0
  .line 2
    invoke-interface { v0, p1 }, Landroidx/core/view/b$b;->onActionProviderVisibilityChanged(Z)V
  :L0
    return-void
.end method
