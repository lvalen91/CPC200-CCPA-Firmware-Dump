.class final Landroidx/appcompat/app/g$i;
.super Ljava/lang/Object;
.implements Landroidx/appcompat/view/menu/m$a;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Landroidx/appcompat/app/g;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 18
  name = "i"
.end annotation

.field final synthetic b:Landroidx/appcompat/app/g;

.method constructor <init>(Landroidx/appcompat/app/g;)V
  .registers 2
  .line 1
    iput-object p1, p0, Landroidx/appcompat/app/g$i;->b:Landroidx/appcompat/app/g;
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public a(Landroidx/appcompat/view/menu/g;Z)V
  .registers 3
  .line 1
    iget-object p2, p0, Landroidx/appcompat/app/g$i;->b:Landroidx/appcompat/app/g;
    invoke-virtual { p2, p1 }, Landroidx/appcompat/app/g;->R(Landroidx/appcompat/view/menu/g;)V
    return-void
.end method

.method public b(Landroidx/appcompat/view/menu/g;)Z
  .registers 4
  .line 1
    iget-object v0, p0, Landroidx/appcompat/app/g$i;->b:Landroidx/appcompat/app/g;
    invoke-virtual { v0 }, Landroidx/appcompat/app/g;->l0()Landroid/view/Window$Callback;
    move-result-object v0
    if-eqz v0, :L0
    const/16 v1, 108
  .line 2
    invoke-interface { v0, v1, p1 }, Landroid/view/Window$Callback;->onMenuOpened(ILandroid/view/Menu;)Z
  :L0
    const/4 p1, 1
    return p1
.end method
