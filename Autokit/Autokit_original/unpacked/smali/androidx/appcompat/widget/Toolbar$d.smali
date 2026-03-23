.class Landroidx/appcompat/widget/Toolbar$d;
.super Ljava/lang/Object;
.implements Landroidx/appcompat/view/menu/m;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Landroidx/appcompat/widget/Toolbar;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 2
  name = "d"
.end annotation

.field b:Landroidx/appcompat/view/menu/g;

.field c:Landroidx/appcompat/view/menu/i;

.field final synthetic d:Landroidx/appcompat/widget/Toolbar;

.method constructor <init>(Landroidx/appcompat/widget/Toolbar;)V
  .registers 2
  .line 1
    iput-object p1, p0, Landroidx/appcompat/widget/Toolbar$d;->d:Landroidx/appcompat/widget/Toolbar;
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public a(Landroidx/appcompat/view/menu/g;Z)V
  .registers 3
    return-void
.end method

.method public c()Z
  .registers 2
    const/4 v0, 0
    return v0
.end method

.method public d(Landroid/content/Context;Landroidx/appcompat/view/menu/g;)V
  .registers 4
  .line 1
    iget-object p1, p0, Landroidx/appcompat/widget/Toolbar$d;->b:Landroidx/appcompat/view/menu/g;
    if-eqz p1, :L0
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar$d;->c:Landroidx/appcompat/view/menu/i;
    if-eqz v0, :L0
  .line 2
    invoke-virtual { p1, v0 }, Landroidx/appcompat/view/menu/g;->f(Landroidx/appcompat/view/menu/i;)Z
  :L0
  .line 3
    iput-object p2, p0, Landroidx/appcompat/widget/Toolbar$d;->b:Landroidx/appcompat/view/menu/g;
    return-void
.end method

.method public e(Landroidx/appcompat/view/menu/g;Landroidx/appcompat/view/menu/i;)Z
  .registers 4
  .line 1
    iget-object p1, p0, Landroidx/appcompat/widget/Toolbar$d;->d:Landroidx/appcompat/widget/Toolbar;
    iget-object p1, p1, Landroidx/appcompat/widget/Toolbar;->j:Landroid/view/View;
    instance-of v0, p1, Lc/a/o/c;
    if-eqz v0, :L0
  .line 2
    check-cast p1, Lc/a/o/c;
    invoke-interface { p1 }, Lc/a/o/c;->d()V
  :L0
  .line 3
    iget-object p1, p0, Landroidx/appcompat/widget/Toolbar$d;->d:Landroidx/appcompat/widget/Toolbar;
    iget-object v0, p1, Landroidx/appcompat/widget/Toolbar;->j:Landroid/view/View;
    invoke-virtual { p1, v0 }, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V
  .line 4
    iget-object p1, p0, Landroidx/appcompat/widget/Toolbar$d;->d:Landroidx/appcompat/widget/Toolbar;
    iget-object v0, p1, Landroidx/appcompat/widget/Toolbar;->i:Landroid/widget/ImageButton;
    invoke-virtual { p1, v0 }, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V
  .line 5
    iget-object p1, p0, Landroidx/appcompat/widget/Toolbar$d;->d:Landroidx/appcompat/widget/Toolbar;
    const/4 v0, 0
    iput-object v0, p1, Landroidx/appcompat/widget/Toolbar;->j:Landroid/view/View;
  .line 6
    invoke-virtual { p1 }, Landroidx/appcompat/widget/Toolbar;->a()V
  .line 7
    iput-object v0, p0, Landroidx/appcompat/widget/Toolbar$d;->c:Landroidx/appcompat/view/menu/i;
  .line 8
    iget-object p1, p0, Landroidx/appcompat/widget/Toolbar$d;->d:Landroidx/appcompat/widget/Toolbar;
    invoke-virtual { p1 }, Landroid/view/ViewGroup;->requestLayout()V
    const/4 p1, 0
  .line 9
    invoke-virtual { p2, p1 }, Landroidx/appcompat/view/menu/i;->r(Z)V
    const/4 p1, 1
    return p1
.end method

.method public f(Landroidx/appcompat/view/menu/g;Landroidx/appcompat/view/menu/i;)Z
  .registers 6
  .line 1
    iget-object p1, p0, Landroidx/appcompat/widget/Toolbar$d;->d:Landroidx/appcompat/widget/Toolbar;
    invoke-virtual { p1 }, Landroidx/appcompat/widget/Toolbar;->g()V
  .line 2
    iget-object p1, p0, Landroidx/appcompat/widget/Toolbar$d;->d:Landroidx/appcompat/widget/Toolbar;
    iget-object p1, p1, Landroidx/appcompat/widget/Toolbar;->i:Landroid/widget/ImageButton;
    invoke-virtual { p1 }, Landroid/widget/ImageButton;->getParent()Landroid/view/ViewParent;
    move-result-object p1
  .line 3
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar$d;->d:Landroidx/appcompat/widget/Toolbar;
    if-eq p1, v0, :L1
  .line 4
    instance-of v1, p1, Landroid/view/ViewGroup;
    if-eqz v1, :L0
  .line 5
    check-cast p1, Landroid/view/ViewGroup;
    iget-object v0, v0, Landroidx/appcompat/widget/Toolbar;->i:Landroid/widget/ImageButton;
    invoke-virtual { p1, v0 }, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V
  :L0
  .line 6
    iget-object p1, p0, Landroidx/appcompat/widget/Toolbar$d;->d:Landroidx/appcompat/widget/Toolbar;
    iget-object v0, p1, Landroidx/appcompat/widget/Toolbar;->i:Landroid/widget/ImageButton;
    invoke-virtual { p1, v0 }, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V
  :L1
  .line 7
    iget-object p1, p0, Landroidx/appcompat/widget/Toolbar$d;->d:Landroidx/appcompat/widget/Toolbar;
    invoke-virtual { p2 }, Landroidx/appcompat/view/menu/i;->getActionView()Landroid/view/View;
    move-result-object v0
    iput-object v0, p1, Landroidx/appcompat/widget/Toolbar;->j:Landroid/view/View;
  .line 8
    iput-object p2, p0, Landroidx/appcompat/widget/Toolbar$d;->c:Landroidx/appcompat/view/menu/i;
  .line 9
    iget-object p1, p0, Landroidx/appcompat/widget/Toolbar$d;->d:Landroidx/appcompat/widget/Toolbar;
    iget-object p1, p1, Landroidx/appcompat/widget/Toolbar;->j:Landroid/view/View;
    invoke-virtual { p1 }, Landroid/view/View;->getParent()Landroid/view/ViewParent;
    move-result-object p1
  .line 10
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar$d;->d:Landroidx/appcompat/widget/Toolbar;
    if-eq p1, v0, :L3
  .line 11
    instance-of v1, p1, Landroid/view/ViewGroup;
    if-eqz v1, :L2
  .line 12
    check-cast p1, Landroid/view/ViewGroup;
    iget-object v0, v0, Landroidx/appcompat/widget/Toolbar;->j:Landroid/view/View;
    invoke-virtual { p1, v0 }, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V
  :L2
  .line 13
    iget-object p1, p0, Landroidx/appcompat/widget/Toolbar$d;->d:Landroidx/appcompat/widget/Toolbar;
    invoke-virtual { p1 }, Landroidx/appcompat/widget/Toolbar;->m()Landroidx/appcompat/widget/Toolbar$e;
    move-result-object p1
    const v0, 8388611
  .line 14
    iget-object v1, p0, Landroidx/appcompat/widget/Toolbar$d;->d:Landroidx/appcompat/widget/Toolbar;
    iget v2, v1, Landroidx/appcompat/widget/Toolbar;->o:I
    and-int/lit8 v2, v2, 112
    or-int/2addr v0, v2
    iput v0, p1, Landroidx/appcompat/app/a$a;->a:I
    const/4 v0, 2
  .line 15
    iput v0, p1, Landroidx/appcompat/widget/Toolbar$e;->b:I
  .line 16
    iget-object v0, v1, Landroidx/appcompat/widget/Toolbar;->j:Landroid/view/View;
    invoke-virtual { v0, p1 }, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
  .line 17
    iget-object p1, p0, Landroidx/appcompat/widget/Toolbar$d;->d:Landroidx/appcompat/widget/Toolbar;
    iget-object v0, p1, Landroidx/appcompat/widget/Toolbar;->j:Landroid/view/View;
    invoke-virtual { p1, v0 }, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V
  :L3
  .line 18
    iget-object p1, p0, Landroidx/appcompat/widget/Toolbar$d;->d:Landroidx/appcompat/widget/Toolbar;
    invoke-virtual { p1 }, Landroidx/appcompat/widget/Toolbar;->G()V
  .line 19
    iget-object p1, p0, Landroidx/appcompat/widget/Toolbar$d;->d:Landroidx/appcompat/widget/Toolbar;
    invoke-virtual { p1 }, Landroid/view/ViewGroup;->requestLayout()V
    const/4 p1, 1
  .line 20
    invoke-virtual { p2, p1 }, Landroidx/appcompat/view/menu/i;->r(Z)V
  .line 21
    iget-object p2, p0, Landroidx/appcompat/widget/Toolbar$d;->d:Landroidx/appcompat/widget/Toolbar;
    iget-object p2, p2, Landroidx/appcompat/widget/Toolbar;->j:Landroid/view/View;
    instance-of v0, p2, Lc/a/o/c;
    if-eqz v0, :L4
  .line 22
    check-cast p2, Lc/a/o/c;
    invoke-interface { p2 }, Lc/a/o/c;->c()V
  :L4
    return p1
.end method

.method public h(Landroidx/appcompat/view/menu/m$a;)V
  .registers 2
    return-void
.end method

.method public i(Landroidx/appcompat/view/menu/r;)Z
  .registers 2
    const/4 p1, 0
    return p1
.end method

.method public j(Z)V
  .registers 6
  .line 1
    iget-object p1, p0, Landroidx/appcompat/widget/Toolbar$d;->c:Landroidx/appcompat/view/menu/i;
    if-eqz p1, :L3
  .line 2
    iget-object p1, p0, Landroidx/appcompat/widget/Toolbar$d;->b:Landroidx/appcompat/view/menu/g;
    const/4 v0, 0
    if-eqz p1, :L2
  .line 3
    invoke-virtual { p1 }, Landroidx/appcompat/view/menu/g;->size()I
    move-result p1
    const/4 v1, 0
  :L0
    if-ge v1, p1, :L2
  .line 4
    iget-object v2, p0, Landroidx/appcompat/widget/Toolbar$d;->b:Landroidx/appcompat/view/menu/g;
    invoke-virtual { v2, v1 }, Landroidx/appcompat/view/menu/g;->getItem(I)Landroid/view/MenuItem;
    move-result-object v2
  .line 5
    iget-object v3, p0, Landroidx/appcompat/widget/Toolbar$d;->c:Landroidx/appcompat/view/menu/i;
    if-ne v2, v3, :L1
    const/4 v0, 1
    goto :L2
  :L1
    add-int/lit8 v1, v1, 1
    goto :L0
  :L2
    if-nez v0, :L3
  .line 6
    iget-object p1, p0, Landroidx/appcompat/widget/Toolbar$d;->b:Landroidx/appcompat/view/menu/g;
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar$d;->c:Landroidx/appcompat/view/menu/i;
    invoke-virtual { p0, p1, v0 }, Landroidx/appcompat/widget/Toolbar$d;->e(Landroidx/appcompat/view/menu/g;Landroidx/appcompat/view/menu/i;)Z
  :L3
    return-void
.end method
