.class final Landroidx/appcompat/app/g$v;
.super Ljava/lang/Object;
.implements Landroidx/appcompat/view/menu/m$a;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Landroidx/appcompat/app/g;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 18
  name = "v"
.end annotation

.field final synthetic b:Landroidx/appcompat/app/g;

.method constructor <init>(Landroidx/appcompat/app/g;)V
  .registers 2
  .line 1
    iput-object p1, p0, Landroidx/appcompat/app/g$v;->b:Landroidx/appcompat/app/g;
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public a(Landroidx/appcompat/view/menu/g;Z)V
  .registers 7
  .line 1
    invoke-virtual { p1 }, Landroidx/appcompat/view/menu/g;->D()Landroidx/appcompat/view/menu/g;
    move-result-object v0
    const/4 v1, 1
    if-eq v0, p1, :L0
    const/4 v2, 1
    goto :L1
  :L0
    const/4 v2, 0
  :L1
  .line 2
    iget-object v3, p0, Landroidx/appcompat/app/g$v;->b:Landroidx/appcompat/app/g;
    if-eqz v2, :L2
    move-object p1, v0
  :L2
    invoke-virtual { v3, p1 }, Landroidx/appcompat/app/g;->e0(Landroid/view/Menu;)Landroidx/appcompat/app/g$u;
    move-result-object p1
    if-eqz p1, :L4
    if-eqz v2, :L3
  .line 3
    iget-object p2, p0, Landroidx/appcompat/app/g$v;->b:Landroidx/appcompat/app/g;
    iget v2, p1, Landroidx/appcompat/app/g$u;->a:I
    invoke-virtual { p2, v2, p1, v0 }, Landroidx/appcompat/app/g;->Q(ILandroidx/appcompat/app/g$u;Landroid/view/Menu;)V
  .line 4
    iget-object p2, p0, Landroidx/appcompat/app/g$v;->b:Landroidx/appcompat/app/g;
    invoke-virtual { p2, p1, v1 }, Landroidx/appcompat/app/g;->U(Landroidx/appcompat/app/g$u;Z)V
    goto :L4
  :L3
  .line 5
    iget-object v0, p0, Landroidx/appcompat/app/g$v;->b:Landroidx/appcompat/app/g;
    invoke-virtual { v0, p1, p2 }, Landroidx/appcompat/app/g;->U(Landroidx/appcompat/app/g$u;Z)V
  :L4
    return-void
.end method

.method public b(Landroidx/appcompat/view/menu/g;)Z
  .registers 4
  .line 1
    invoke-virtual { p1 }, Landroidx/appcompat/view/menu/g;->D()Landroidx/appcompat/view/menu/g;
    move-result-object v0
    if-ne p1, v0, :L0
    iget-object v0, p0, Landroidx/appcompat/app/g$v;->b:Landroidx/appcompat/app/g;
    iget-boolean v1, v0, Landroidx/appcompat/app/g;->B:Z
    if-eqz v1, :L0
  .line 2
    invoke-virtual { v0 }, Landroidx/appcompat/app/g;->l0()Landroid/view/Window$Callback;
    move-result-object v0
    if-eqz v0, :L0
  .line 3
    iget-object v1, p0, Landroidx/appcompat/app/g$v;->b:Landroidx/appcompat/app/g;
    iget-boolean v1, v1, Landroidx/appcompat/app/g;->N:Z
    if-nez v1, :L0
    const/16 v1, 108
  .line 4
    invoke-interface { v0, v1, p1 }, Landroid/view/Window$Callback;->onMenuOpened(ILandroid/view/Menu;)Z
  :L0
    const/4 p1, 1
    return p1
.end method
