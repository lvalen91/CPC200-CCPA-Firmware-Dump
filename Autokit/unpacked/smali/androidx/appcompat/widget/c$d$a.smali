.class Landroidx/appcompat/widget/c$d$a;
.super Landroidx/appcompat/widget/f0;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingMethod;
  value = Landroidx/appcompat/widget/c$d;-><init>(Landroidx/appcompat/widget/c;Landroid/content/Context;)V
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = null
.end annotation

.field final synthetic k:Landroidx/appcompat/widget/c$d;

.method constructor <init>(Landroidx/appcompat/widget/c$d;Landroid/view/View;Landroidx/appcompat/widget/c;)V
  .registers 4
  .line 1
    iput-object p1, p0, Landroidx/appcompat/widget/c$d$a;->k:Landroidx/appcompat/widget/c$d;
    invoke-direct { p0, p2 }, Landroidx/appcompat/widget/f0;-><init>(Landroid/view/View;)V
    return-void
.end method

.method public b()Landroidx/appcompat/view/menu/p;
  .registers 2
  .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/c$d$a;->k:Landroidx/appcompat/widget/c$d;
    iget-object v0, v0, Landroidx/appcompat/widget/c$d;->d:Landroidx/appcompat/widget/c;
    iget-object v0, v0, Landroidx/appcompat/widget/c;->x:Landroidx/appcompat/widget/c$e;
    if-nez v0, :L0
    const/4 v0, 0
    return-object v0
  :L0
  .line 2
    invoke-virtual { v0 }, Landroidx/appcompat/view/menu/l;->c()Landroidx/appcompat/view/menu/k;
    move-result-object v0
    return-object v0
.end method

.method public c()Z
  .registers 2
  .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/c$d$a;->k:Landroidx/appcompat/widget/c$d;
    iget-object v0, v0, Landroidx/appcompat/widget/c$d;->d:Landroidx/appcompat/widget/c;
    invoke-virtual { v0 }, Landroidx/appcompat/widget/c;->K()Z
    const/4 v0, 1
    return v0
.end method

.method public d()Z
  .registers 3
  .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/c$d$a;->k:Landroidx/appcompat/widget/c$d;
    iget-object v0, v0, Landroidx/appcompat/widget/c$d;->d:Landroidx/appcompat/widget/c;
    iget-object v1, v0, Landroidx/appcompat/widget/c;->z:Landroidx/appcompat/widget/c$c;
    if-eqz v1, :L0
    const/4 v0, 0
    return v0
  :L0
  .line 2
    invoke-virtual { v0 }, Landroidx/appcompat/widget/c;->B()Z
    const/4 v0, 1
    return v0
.end method
