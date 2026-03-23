.class public abstract Landroidx/appcompat/view/menu/b;
.super Ljava/lang/Object;
.implements Landroidx/appcompat/view/menu/m;
.source "SourceFile"

.field protected b:Landroid/content/Context;

.field protected c:Landroid/content/Context;

.field protected d:Landroidx/appcompat/view/menu/g;

.field protected e:Landroid/view/LayoutInflater;

.field private f:Landroidx/appcompat/view/menu/m$a;

.field private g:I

.field private h:I

.field protected i:Landroidx/appcompat/view/menu/n;

.method public constructor <init>(Landroid/content/Context;II)V
  .registers 4
  .line 1
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
  .line 2
    iput-object p1, p0, Landroidx/appcompat/view/menu/b;->b:Landroid/content/Context;
  .line 3
    invoke-static { p1 }, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;
    move-result-object p1
    iput-object p1, p0, Landroidx/appcompat/view/menu/b;->e:Landroid/view/LayoutInflater;
  .line 4
    iput p2, p0, Landroidx/appcompat/view/menu/b;->g:I
  .line 5
    iput p3, p0, Landroidx/appcompat/view/menu/b;->h:I
    return-void
.end method

.method public a(Landroidx/appcompat/view/menu/g;Z)V
  .registers 4
  .line 1
    iget-object v0, p0, Landroidx/appcompat/view/menu/b;->f:Landroidx/appcompat/view/menu/m$a;
    if-eqz v0, :L0
  .line 2
    invoke-interface { v0, p1, p2 }, Landroidx/appcompat/view/menu/m$a;->a(Landroidx/appcompat/view/menu/g;Z)V
  :L0
    return-void
.end method

.method protected b(Landroid/view/View;I)V
  .registers 4
  .line 1
    invoke-virtual { p1 }, Landroid/view/View;->getParent()Landroid/view/ViewParent;
    move-result-object v0
    check-cast v0, Landroid/view/ViewGroup;
    if-eqz v0, :L0
  .line 2
    invoke-virtual { v0, p1 }, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V
  :L0
  .line 3
    iget-object v0, p0, Landroidx/appcompat/view/menu/b;->i:Landroidx/appcompat/view/menu/n;
    check-cast v0, Landroid/view/ViewGroup;
    invoke-virtual { v0, p1, p2 }, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V
    return-void
.end method

.method public d(Landroid/content/Context;Landroidx/appcompat/view/menu/g;)V
  .registers 3
  .line 1
    iput-object p1, p0, Landroidx/appcompat/view/menu/b;->c:Landroid/content/Context;
  .line 2
    invoke-static { p1 }, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;
  .line 3
    iput-object p2, p0, Landroidx/appcompat/view/menu/b;->d:Landroidx/appcompat/view/menu/g;
    return-void
.end method

.method public e(Landroidx/appcompat/view/menu/g;Landroidx/appcompat/view/menu/i;)Z
  .registers 3
    const/4 p1, 0
    return p1
.end method

.method public f(Landroidx/appcompat/view/menu/g;Landroidx/appcompat/view/menu/i;)Z
  .registers 3
    const/4 p1, 0
    return p1
.end method

.method public abstract g(Landroidx/appcompat/view/menu/i;Landroidx/appcompat/view/menu/n$a;)V
.end method

.method public h(Landroidx/appcompat/view/menu/m$a;)V
  .registers 2
  .line 1
    iput-object p1, p0, Landroidx/appcompat/view/menu/b;->f:Landroidx/appcompat/view/menu/m$a;
    return-void
.end method

.method public i(Landroidx/appcompat/view/menu/r;)Z
  .registers 3
  .line 1
    iget-object v0, p0, Landroidx/appcompat/view/menu/b;->f:Landroidx/appcompat/view/menu/m$a;
    if-eqz v0, :L2
    if-eqz p1, :L0
    goto :L1
  :L0
  .line 2
    iget-object p1, p0, Landroidx/appcompat/view/menu/b;->d:Landroidx/appcompat/view/menu/g;
  :L1
    invoke-interface { v0, p1 }, Landroidx/appcompat/view/menu/m$a;->b(Landroidx/appcompat/view/menu/g;)Z
    move-result p1
    return p1
  :L2
    const/4 p1, 0
    return p1
.end method

.method public j(Z)V
  .registers 11
  .line 1
    iget-object p1, p0, Landroidx/appcompat/view/menu/b;->i:Landroidx/appcompat/view/menu/n;
    check-cast p1, Landroid/view/ViewGroup;
    if-nez p1, :L0
    return-void
  :L0
  .line 2
    iget-object v0, p0, Landroidx/appcompat/view/menu/b;->d:Landroidx/appcompat/view/menu/g;
    const/4 v1, 0
    if-eqz v0, :L8
  .line 3
    invoke-virtual { v0 }, Landroidx/appcompat/view/menu/g;->r()V
  .line 4
    iget-object v0, p0, Landroidx/appcompat/view/menu/b;->d:Landroidx/appcompat/view/menu/g;
    invoke-virtual { v0 }, Landroidx/appcompat/view/menu/g;->E()Ljava/util/ArrayList;
    move-result-object v0
  .line 5
    invoke-virtual { v0 }, Ljava/util/ArrayList;->size()I
    move-result v2
    const/4 v3, 0
    const/4 v4, 0
  :L1
    if-ge v3, v2, :L7
  .line 6
    invoke-virtual { v0, v3 }, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
    move-result-object v5
    check-cast v5, Landroidx/appcompat/view/menu/i;
  .line 7
    invoke-virtual { p0, v4, v5 }, Landroidx/appcompat/view/menu/b;->q(ILandroidx/appcompat/view/menu/i;)Z
    move-result v6
    if-eqz v6, :L6
  .line 8
    invoke-virtual { p1, v4 }, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;
    move-result-object v6
  .line 9
    instance-of v7, v6, Landroidx/appcompat/view/menu/n$a;
    if-eqz v7, :L2
  .line 10
    move-object v7, v6
    check-cast v7, Landroidx/appcompat/view/menu/n$a;
    invoke-interface { v7 }, Landroidx/appcompat/view/menu/n$a;->getItemData()Landroidx/appcompat/view/menu/i;
    move-result-object v7
    goto :L3
  :L2
    const/4 v7, 0
  :L3
  .line 11
    invoke-virtual { p0, v5, v6, p1 }, Landroidx/appcompat/view/menu/b;->n(Landroidx/appcompat/view/menu/i;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    move-result-object v8
    if-eq v5, v7, :L4
  .line 12
    invoke-virtual { v8, v1 }, Landroid/view/View;->setPressed(Z)V
  .line 13
    invoke-virtual { v8 }, Landroid/view/View;->jumpDrawablesToCurrentState()V
  :L4
    if-eq v8, v6, :L5
  .line 14
    invoke-virtual { p0, v8, v4 }, Landroidx/appcompat/view/menu/b;->b(Landroid/view/View;I)V
  :L5
    add-int/lit8 v4, v4, 1
  :L6
    add-int/lit8 v3, v3, 1
    goto :L1
  :L7
    move v1, v4
  :L8
  .line 15
    invoke-virtual { p1 }, Landroid/view/ViewGroup;->getChildCount()I
    move-result v0
    if-ge v1, v0, :L9
  .line 16
    invoke-virtual { p0, p1, v1 }, Landroidx/appcompat/view/menu/b;->l(Landroid/view/ViewGroup;I)Z
    move-result v0
    if-nez v0, :L8
    add-int/lit8 v1, v1, 1
    goto :L8
  :L9
    return-void
.end method

.method public k(Landroid/view/ViewGroup;)Landroidx/appcompat/view/menu/n$a;
  .registers 5
  .line 1
    iget-object v0, p0, Landroidx/appcompat/view/menu/b;->e:Landroid/view/LayoutInflater;
    iget v1, p0, Landroidx/appcompat/view/menu/b;->h:I
    const/4 v2, 0
    invoke-virtual { v0, v1, p1, v2 }, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
    move-result-object p1
    check-cast p1, Landroidx/appcompat/view/menu/n$a;
    return-object p1
.end method

.method protected l(Landroid/view/ViewGroup;I)Z
  .registers 3
  .line 1
    invoke-virtual { p1, p2 }, Landroid/view/ViewGroup;->removeViewAt(I)V
    const/4 p1, 1
    return p1
.end method

.method public m()Landroidx/appcompat/view/menu/m$a;
  .registers 2
  .line 1
    iget-object v0, p0, Landroidx/appcompat/view/menu/b;->f:Landroidx/appcompat/view/menu/m$a;
    return-object v0
.end method

.method public n(Landroidx/appcompat/view/menu/i;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
  .registers 5
  .line 1
    instance-of v0, p2, Landroidx/appcompat/view/menu/n$a;
    if-eqz v0, :L0
  .line 2
    check-cast p2, Landroidx/appcompat/view/menu/n$a;
    goto :L1
  :L0
  .line 3
    invoke-virtual { p0, p3 }, Landroidx/appcompat/view/menu/b;->k(Landroid/view/ViewGroup;)Landroidx/appcompat/view/menu/n$a;
    move-result-object p2
  :L1
  .line 4
    invoke-virtual { p0, p1, p2 }, Landroidx/appcompat/view/menu/b;->g(Landroidx/appcompat/view/menu/i;Landroidx/appcompat/view/menu/n$a;)V
  .line 5
    check-cast p2, Landroid/view/View;
    return-object p2
.end method

.method public o(Landroid/view/ViewGroup;)Landroidx/appcompat/view/menu/n;
  .registers 5
  .line 1
    iget-object v0, p0, Landroidx/appcompat/view/menu/b;->i:Landroidx/appcompat/view/menu/n;
    if-nez v0, :L0
  .line 2
    iget-object v0, p0, Landroidx/appcompat/view/menu/b;->e:Landroid/view/LayoutInflater;
    iget v1, p0, Landroidx/appcompat/view/menu/b;->g:I
    const/4 v2, 0
    invoke-virtual { v0, v1, p1, v2 }, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
    move-result-object p1
    check-cast p1, Landroidx/appcompat/view/menu/n;
    iput-object p1, p0, Landroidx/appcompat/view/menu/b;->i:Landroidx/appcompat/view/menu/n;
  .line 3
    iget-object v0, p0, Landroidx/appcompat/view/menu/b;->d:Landroidx/appcompat/view/menu/g;
    invoke-interface { p1, v0 }, Landroidx/appcompat/view/menu/n;->b(Landroidx/appcompat/view/menu/g;)V
    const/4 p1, 1
  .line 4
    invoke-virtual { p0, p1 }, Landroidx/appcompat/view/menu/b;->j(Z)V
  :L0
  .line 5
    iget-object p1, p0, Landroidx/appcompat/view/menu/b;->i:Landroidx/appcompat/view/menu/n;
    return-object p1
.end method

.method public p(I)V
  .registers 2
    return-void
.end method

.method public abstract q(ILandroidx/appcompat/view/menu/i;)Z
.end method
