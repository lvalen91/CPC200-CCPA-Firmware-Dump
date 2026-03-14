.class Landroidx/appcompat/view/menu/j$d;
.super Ljava/lang/Object;
.implements Landroid/view/MenuItem$OnActionExpandListener;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Landroidx/appcompat/view/menu/j;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 2
  name = "d"
.end annotation

.field private final a:Landroid/view/MenuItem$OnActionExpandListener;

.field final synthetic b:Landroidx/appcompat/view/menu/j;

.method constructor <init>(Landroidx/appcompat/view/menu/j;Landroid/view/MenuItem$OnActionExpandListener;)V
  .registers 3
  .line 1
    iput-object p1, p0, Landroidx/appcompat/view/menu/j$d;->b:Landroidx/appcompat/view/menu/j;
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
  .line 2
    iput-object p2, p0, Landroidx/appcompat/view/menu/j$d;->a:Landroid/view/MenuItem$OnActionExpandListener;
    return-void
.end method

.method public onMenuItemActionCollapse(Landroid/view/MenuItem;)Z
  .registers 4
  .line 1
    iget-object v0, p0, Landroidx/appcompat/view/menu/j$d;->a:Landroid/view/MenuItem$OnActionExpandListener;
    iget-object v1, p0, Landroidx/appcompat/view/menu/j$d;->b:Landroidx/appcompat/view/menu/j;
    invoke-virtual { v1, p1 }, Landroidx/appcompat/view/menu/c;->c(Landroid/view/MenuItem;)Landroid/view/MenuItem;
    move-result-object p1
    invoke-interface { v0, p1 }, Landroid/view/MenuItem$OnActionExpandListener;->onMenuItemActionCollapse(Landroid/view/MenuItem;)Z
    move-result p1
    return p1
.end method

.method public onMenuItemActionExpand(Landroid/view/MenuItem;)Z
  .registers 4
  .line 1
    iget-object v0, p0, Landroidx/appcompat/view/menu/j$d;->a:Landroid/view/MenuItem$OnActionExpandListener;
    iget-object v1, p0, Landroidx/appcompat/view/menu/j$d;->b:Landroidx/appcompat/view/menu/j;
    invoke-virtual { v1, p1 }, Landroidx/appcompat/view/menu/c;->c(Landroid/view/MenuItem;)Landroid/view/MenuItem;
    move-result-object p1
    invoke-interface { v0, p1 }, Landroid/view/MenuItem$OnActionExpandListener;->onMenuItemActionExpand(Landroid/view/MenuItem;)Z
    move-result p1
    return p1
.end method
