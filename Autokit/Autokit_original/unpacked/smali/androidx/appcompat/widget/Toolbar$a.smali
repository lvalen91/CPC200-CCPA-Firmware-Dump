.class Landroidx/appcompat/widget/Toolbar$a;
.super Ljava/lang/Object;
.implements Landroidx/appcompat/widget/ActionMenuView$e;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Landroidx/appcompat/widget/Toolbar;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = null
.end annotation

.field final synthetic a:Landroidx/appcompat/widget/Toolbar;

.method constructor <init>(Landroidx/appcompat/widget/Toolbar;)V
  .registers 2
  .line 1
    iput-object p1, p0, Landroidx/appcompat/widget/Toolbar$a;->a:Landroidx/appcompat/widget/Toolbar;
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public onMenuItemClick(Landroid/view/MenuItem;)Z
  .registers 3
  .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar$a;->a:Landroidx/appcompat/widget/Toolbar;
    iget-object v0, v0, Landroidx/appcompat/widget/Toolbar;->H:Landroidx/appcompat/widget/Toolbar$f;
    if-eqz v0, :L0
  .line 2
    invoke-interface { v0, p1 }, Landroidx/appcompat/widget/Toolbar$f;->onMenuItemClick(Landroid/view/MenuItem;)Z
    move-result p1
    return p1
  :L0
    const/4 p1, 0
    return p1
.end method
