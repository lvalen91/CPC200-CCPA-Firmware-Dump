.class Landroidx/appcompat/widget/c$a;
.super Landroidx/appcompat/view/menu/l;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Landroidx/appcompat/widget/c;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 2
  name = "a"
.end annotation

.field final synthetic m:Landroidx/appcompat/widget/c;

.method public constructor <init>(Landroidx/appcompat/widget/c;Landroid/content/Context;Landroidx/appcompat/view/menu/r;Landroid/view/View;)V
  .registers 11
  .line 1
    iput-object p1, p0, Landroidx/appcompat/widget/c$a;->m:Landroidx/appcompat/widget/c;
  .line 2
    sget v5, Lc/a/a;->actionOverflowMenuStyle:I
    const/4 v4, 0
    move-object v0, p0
    move-object v1, p2
    move-object v2, p3
    move-object v3, p4
    invoke-direct/range { v0 .. v5 }, Landroidx/appcompat/view/menu/l;-><init>(Landroid/content/Context;Landroidx/appcompat/view/menu/g;Landroid/view/View;ZI)V
  .line 3
    invoke-virtual { p3 }, Landroidx/appcompat/view/menu/r;->getItem()Landroid/view/MenuItem;
    move-result-object p2
    check-cast p2, Landroidx/appcompat/view/menu/i;
  .line 4
    invoke-virtual { p2 }, Landroidx/appcompat/view/menu/i;->l()Z
    move-result p2
    if-nez p2, :L1
  .line 5
    iget-object p2, p1, Landroidx/appcompat/widget/c;->j:Landroidx/appcompat/widget/c$d;
    if-nez p2, :L0
    invoke-static { p1 }, Landroidx/appcompat/widget/c;->t(Landroidx/appcompat/widget/c;)Landroidx/appcompat/view/menu/n;
    move-result-object p2
    check-cast p2, Landroid/view/View;
  :L0
    invoke-virtual { p0, p2 }, Landroidx/appcompat/view/menu/l;->f(Landroid/view/View;)V
  :L1
  .line 6
    iget-object p1, p1, Landroidx/appcompat/widget/c;->B:Landroidx/appcompat/widget/c$f;
    invoke-virtual { p0, p1 }, Landroidx/appcompat/view/menu/l;->j(Landroidx/appcompat/view/menu/m$a;)V
    return-void
.end method

.method protected e()V
  .registers 3
  .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/c$a;->m:Landroidx/appcompat/widget/c;
    const/4 v1, 0
    iput-object v1, v0, Landroidx/appcompat/widget/c;->y:Landroidx/appcompat/widget/c$a;
    const/4 v1, 0
  .line 2
    iput v1, v0, Landroidx/appcompat/widget/c;->C:I
  .line 3
    invoke-super { p0 }, Landroidx/appcompat/view/menu/l;->e()V
    return-void
.end method
