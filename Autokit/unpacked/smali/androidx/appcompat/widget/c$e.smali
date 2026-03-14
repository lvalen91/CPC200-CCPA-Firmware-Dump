.class Landroidx/appcompat/widget/c$e;
.super Landroidx/appcompat/view/menu/l;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Landroidx/appcompat/widget/c;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 2
  name = "e"
.end annotation

.field final synthetic m:Landroidx/appcompat/widget/c;

.method public constructor <init>(Landroidx/appcompat/widget/c;Landroid/content/Context;Landroidx/appcompat/view/menu/g;Landroid/view/View;Z)V
  .registers 12
  .line 1
    iput-object p1, p0, Landroidx/appcompat/widget/c$e;->m:Landroidx/appcompat/widget/c;
  .line 2
    sget v5, Lc/a/a;->actionOverflowMenuStyle:I
    move-object v0, p0
    move-object v1, p2
    move-object v2, p3
    move-object v3, p4
    move v4, p5
    invoke-direct/range { v0 .. v5 }, Landroidx/appcompat/view/menu/l;-><init>(Landroid/content/Context;Landroidx/appcompat/view/menu/g;Landroid/view/View;ZI)V
    const p2, 8388613
  .line 3
    invoke-virtual { p0, p2 }, Landroidx/appcompat/view/menu/l;->h(I)V
  .line 4
    iget-object p1, p1, Landroidx/appcompat/widget/c;->B:Landroidx/appcompat/widget/c$f;
    invoke-virtual { p0, p1 }, Landroidx/appcompat/view/menu/l;->j(Landroidx/appcompat/view/menu/m$a;)V
    return-void
.end method

.method protected e()V
  .registers 3
  .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/c$e;->m:Landroidx/appcompat/widget/c;
    invoke-static { v0 }, Landroidx/appcompat/widget/c;->r(Landroidx/appcompat/widget/c;)Landroidx/appcompat/view/menu/g;
    move-result-object v0
    if-eqz v0, :L0
  .line 2
    iget-object v0, p0, Landroidx/appcompat/widget/c$e;->m:Landroidx/appcompat/widget/c;
    invoke-static { v0 }, Landroidx/appcompat/widget/c;->s(Landroidx/appcompat/widget/c;)Landroidx/appcompat/view/menu/g;
    move-result-object v0
    invoke-virtual { v0 }, Landroidx/appcompat/view/menu/g;->close()V
  :L0
  .line 3
    iget-object v0, p0, Landroidx/appcompat/widget/c$e;->m:Landroidx/appcompat/widget/c;
    const/4 v1, 0
    iput-object v1, v0, Landroidx/appcompat/widget/c;->x:Landroidx/appcompat/widget/c$e;
  .line 4
    invoke-super { p0 }, Landroidx/appcompat/view/menu/l;->e()V
    return-void
.end method
