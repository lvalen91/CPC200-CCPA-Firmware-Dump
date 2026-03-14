.class Landroidx/appcompat/view/menu/ActionMenuItemView$a;
.super Landroidx/appcompat/widget/f0;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Landroidx/appcompat/view/menu/ActionMenuItemView;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 2
  name = "a"
.end annotation

.field final synthetic k:Landroidx/appcompat/view/menu/ActionMenuItemView;

.method public constructor <init>(Landroidx/appcompat/view/menu/ActionMenuItemView;)V
  .registers 2
  .line 1
    iput-object p1, p0, Landroidx/appcompat/view/menu/ActionMenuItemView$a;->k:Landroidx/appcompat/view/menu/ActionMenuItemView;
  .line 2
    invoke-direct { p0, p1 }, Landroidx/appcompat/widget/f0;-><init>(Landroid/view/View;)V
    return-void
.end method

.method public b()Landroidx/appcompat/view/menu/p;
  .registers 2
  .line 1
    iget-object v0, p0, Landroidx/appcompat/view/menu/ActionMenuItemView$a;->k:Landroidx/appcompat/view/menu/ActionMenuItemView;
    iget-object v0, v0, Landroidx/appcompat/view/menu/ActionMenuItemView;->l:Landroidx/appcompat/view/menu/ActionMenuItemView$b;
    if-eqz v0, :L0
  .line 2
    invoke-virtual { v0 }, Landroidx/appcompat/view/menu/ActionMenuItemView$b;->a()Landroidx/appcompat/view/menu/p;
    move-result-object v0
    return-object v0
  :L0
    const/4 v0, 0
    return-object v0
.end method

.method protected c()Z
  .registers 4
  .line 1
    iget-object v0, p0, Landroidx/appcompat/view/menu/ActionMenuItemView$a;->k:Landroidx/appcompat/view/menu/ActionMenuItemView;
    iget-object v1, v0, Landroidx/appcompat/view/menu/ActionMenuItemView;->j:Landroidx/appcompat/view/menu/g$b;
    const/4 v2, 0
    if-eqz v1, :L0
    iget-object v0, v0, Landroidx/appcompat/view/menu/ActionMenuItemView;->g:Landroidx/appcompat/view/menu/i;
    invoke-interface { v1, v0 }, Landroidx/appcompat/view/menu/g$b;->a(Landroidx/appcompat/view/menu/i;)Z
    move-result v0
    if-eqz v0, :L0
  .line 2
    invoke-virtual { p0 }, Landroidx/appcompat/view/menu/ActionMenuItemView$a;->b()Landroidx/appcompat/view/menu/p;
    move-result-object v0
    if-eqz v0, :L0
  .line 3
    invoke-interface { v0 }, Landroidx/appcompat/view/menu/p;->b()Z
    move-result v0
    if-eqz v0, :L0
    const/4 v2, 1
  :L0
    return v2
.end method
