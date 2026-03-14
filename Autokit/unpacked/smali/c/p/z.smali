.class Lc/p/z;
.super Ljava/lang/Object;
.implements Lc/p/b0;
.source "SourceFile"

.annotation system Ldalvik/annotation/MemberClasses;
  value = {
    Lc/p/z$a;
  }
.end annotation

.field protected a:Lc/p/z$a;

.method constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/view/View;)V
  .registers 5
  .line 1
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
  .line 2
    new-instance v0, Lc/p/z$a;
    invoke-direct { v0, p1, p2, p3, p0 }, Lc/p/z$a;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/view/View;Lc/p/z;)V
    iput-object v0, p0, Lc/p/z;->a:Lc/p/z$a;
    return-void
.end method

.method static e(Landroid/view/View;)Lc/p/z;
  .registers 6
  .line 1
    invoke-static { p0 }, Lc/p/z;->f(Landroid/view/View;)Landroid/view/ViewGroup;
    move-result-object v0
    if-eqz v0, :L3
  .line 2
    invoke-virtual { v0 }, Landroid/view/ViewGroup;->getChildCount()I
    move-result v1
    const/4 v2, 0
  :L0
    if-ge v2, v1, :L2
  .line 3
    invoke-virtual { v0, v2 }, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;
    move-result-object v3
  .line 4
    instance-of v4, v3, Lc/p/z$a;
    if-eqz v4, :L1
  .line 5
    check-cast v3, Lc/p/z$a;
    iget-object p0, v3, Lc/p/z$a;->e:Lc/p/z;
    return-object p0
  :L1
    add-int/lit8 v2, v2, 1
    goto :L0
  :L2
  .line 6
    new-instance v1, Lc/p/u;
    invoke-virtual { v0 }, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;
    move-result-object v2
    invoke-direct { v1, v2, v0, p0 }, Lc/p/u;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/view/View;)V
    return-object v1
  :L3
    const/4 p0, 0
    return-object p0
.end method

.method static f(Landroid/view/View;)Landroid/view/ViewGroup;
  .registers 3
  :L0
    if-eqz p0, :L2
  .line 1
    invoke-virtual { p0 }, Landroid/view/View;->getId()I
    move-result v0
    const v1, 16908290
    if-ne v0, v1, :L1
    instance-of v0, p0, Landroid/view/ViewGroup;
    if-eqz v0, :L1
  .line 2
    check-cast p0, Landroid/view/ViewGroup;
    return-object p0
  :L1
  .line 3
    invoke-virtual { p0 }, Landroid/view/View;->getParent()Landroid/view/ViewParent;
    move-result-object v0
    instance-of v0, v0, Landroid/view/ViewGroup;
    if-eqz v0, :L0
  .line 4
    invoke-virtual { p0 }, Landroid/view/View;->getParent()Landroid/view/ViewParent;
    move-result-object p0
    check-cast p0, Landroid/view/ViewGroup;
    goto :L0
  :L2
    const/4 p0, 0
    return-object p0
.end method

.method public b(Landroid/graphics/drawable/Drawable;)V
  .registers 3
  .line 1
    iget-object v0, p0, Lc/p/z;->a:Lc/p/z$a;
    invoke-virtual { v0, p1 }, Lc/p/z$a;->a(Landroid/graphics/drawable/Drawable;)V
    return-void
.end method

.method public d(Landroid/graphics/drawable/Drawable;)V
  .registers 3
  .line 1
    iget-object v0, p0, Lc/p/z;->a:Lc/p/z$a;
    invoke-virtual { v0, p1 }, Lc/p/z$a;->f(Landroid/graphics/drawable/Drawable;)V
    return-void
.end method
