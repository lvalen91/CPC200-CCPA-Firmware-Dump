.class final Landroidx/appcompat/app/l$d;
.super Ljava/lang/Object;
.implements Landroidx/appcompat/view/menu/g$a;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Landroidx/appcompat/app/l;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 18
  name = "d"
.end annotation

.field final synthetic b:Landroidx/appcompat/app/l;

.method constructor <init>(Landroidx/appcompat/app/l;)V
  .registers 2
  .line 1
    iput-object p1, p0, Landroidx/appcompat/app/l$d;->b:Landroidx/appcompat/app/l;
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public a(Landroidx/appcompat/view/menu/g;Landroid/view/MenuItem;)Z
  .registers 3
    const/4 p1, 0
    return p1
.end method

.method public b(Landroidx/appcompat/view/menu/g;)V
  .registers 6
  .line 1
    iget-object v0, p0, Landroidx/appcompat/app/l$d;->b:Landroidx/appcompat/app/l;
    iget-object v1, v0, Landroidx/appcompat/app/l;->c:Landroid/view/Window$Callback;
    if-eqz v1, :L1
  .line 2
    iget-object v0, v0, Landroidx/appcompat/app/l;->a:Landroidx/appcompat/widget/b0;
    invoke-interface { v0 }, Landroidx/appcompat/widget/b0;->c()Z
    move-result v0
    const/16 v1, 108
    if-eqz v0, :L0
  .line 3
    iget-object v0, p0, Landroidx/appcompat/app/l$d;->b:Landroidx/appcompat/app/l;
    iget-object v0, v0, Landroidx/appcompat/app/l;->c:Landroid/view/Window$Callback;
    invoke-interface { v0, v1, p1 }, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V
    goto :L1
  :L0
  .line 4
    iget-object v0, p0, Landroidx/appcompat/app/l$d;->b:Landroidx/appcompat/app/l;
    iget-object v0, v0, Landroidx/appcompat/app/l;->c:Landroid/view/Window$Callback;
    const/4 v2, 0
    const/4 v3, 0
    invoke-interface { v0, v2, v3, p1 }, Landroid/view/Window$Callback;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z
    move-result v0
    if-eqz v0, :L1
  .line 5
    iget-object v0, p0, Landroidx/appcompat/app/l$d;->b:Landroidx/appcompat/app/l;
    iget-object v0, v0, Landroidx/appcompat/app/l;->c:Landroid/view/Window$Callback;
    invoke-interface { v0, v1, p1 }, Landroid/view/Window$Callback;->onMenuOpened(ILandroid/view/Menu;)Z
  :L1
    return-void
.end method
