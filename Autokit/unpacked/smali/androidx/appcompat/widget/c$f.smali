.class Landroidx/appcompat/widget/c$f;
.super Ljava/lang/Object;
.implements Landroidx/appcompat/view/menu/m$a;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Landroidx/appcompat/widget/c;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 2
  name = "f"
.end annotation

.field final synthetic b:Landroidx/appcompat/widget/c;

.method constructor <init>(Landroidx/appcompat/widget/c;)V
  .registers 2
  .line 1
    iput-object p1, p0, Landroidx/appcompat/widget/c$f;->b:Landroidx/appcompat/widget/c;
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public a(Landroidx/appcompat/view/menu/g;Z)V
  .registers 5
  .line 1
    instance-of v0, p1, Landroidx/appcompat/view/menu/r;
    if-eqz v0, :L0
  .line 2
    invoke-virtual { p1 }, Landroidx/appcompat/view/menu/g;->D()Landroidx/appcompat/view/menu/g;
    move-result-object v0
    const/4 v1, 0
    invoke-virtual { v0, v1 }, Landroidx/appcompat/view/menu/g;->e(Z)V
  :L0
  .line 3
    iget-object v0, p0, Landroidx/appcompat/widget/c$f;->b:Landroidx/appcompat/widget/c;
    invoke-virtual { v0 }, Landroidx/appcompat/view/menu/b;->m()Landroidx/appcompat/view/menu/m$a;
    move-result-object v0
    if-eqz v0, :L1
  .line 4
    invoke-interface { v0, p1, p2 }, Landroidx/appcompat/view/menu/m$a;->a(Landroidx/appcompat/view/menu/g;Z)V
  :L1
    return-void
.end method

.method public b(Landroidx/appcompat/view/menu/g;)Z
  .registers 5
  .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/c$f;->b:Landroidx/appcompat/widget/c;
    invoke-static { v0 }, Landroidx/appcompat/widget/c;->u(Landroidx/appcompat/widget/c;)Landroidx/appcompat/view/menu/g;
    move-result-object v0
    const/4 v1, 0
    if-ne p1, v0, :L0
    return v1
  :L0
  .line 2
    iget-object v0, p0, Landroidx/appcompat/widget/c$f;->b:Landroidx/appcompat/widget/c;
    move-object v2, p1
    check-cast v2, Landroidx/appcompat/view/menu/r;
    invoke-virtual { v2 }, Landroidx/appcompat/view/menu/r;->getItem()Landroid/view/MenuItem;
    move-result-object v2
    invoke-interface { v2 }, Landroid/view/MenuItem;->getItemId()I
    move-result v2
    iput v2, v0, Landroidx/appcompat/widget/c;->C:I
  .line 3
    iget-object v0, p0, Landroidx/appcompat/widget/c$f;->b:Landroidx/appcompat/widget/c;
    invoke-virtual { v0 }, Landroidx/appcompat/view/menu/b;->m()Landroidx/appcompat/view/menu/m$a;
    move-result-object v0
    if-eqz v0, :L1
  .line 4
    invoke-interface { v0, p1 }, Landroidx/appcompat/view/menu/m$a;->b(Landroidx/appcompat/view/menu/g;)Z
    move-result v1
  :L1
    return v1
.end method
