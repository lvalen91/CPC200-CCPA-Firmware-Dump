.class Lc/c/a/c;
.super Ljava/lang/Object;
.implements Lc/c/a/f;
.source "SourceFile"

.method constructor <init>()V
  .registers 1
  .line 1
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method private n(Lc/c/a/e;)Lc/c/a/g;
  .registers 2
  .line 1
    invoke-interface { p1 }, Lc/c/a/e;->d()Landroid/graphics/drawable/Drawable;
    move-result-object p1
    check-cast p1, Lc/c/a/g;
    return-object p1
.end method

.method public a(Lc/c/a/e;)F
  .registers 2
  .line 1
    invoke-direct { p0, p1 }, Lc/c/a/c;->n(Lc/c/a/e;)Lc/c/a/g;
    move-result-object p1
    invoke-virtual { p1 }, Lc/c/a/g;->c()F
    move-result p1
    return p1
.end method

.method public b(Lc/c/a/e;)F
  .registers 2
  .line 1
    invoke-direct { p0, p1 }, Lc/c/a/c;->n(Lc/c/a/e;)Lc/c/a/g;
    move-result-object p1
    invoke-virtual { p1 }, Lc/c/a/g;->d()F
    move-result p1
    return p1
.end method

.method public c(Lc/c/a/e;)F
  .registers 3
  .line 1
    invoke-virtual { p0, p1 }, Lc/c/a/c;->b(Lc/c/a/e;)F
    move-result p1
    const/high16 v0, 16384
    mul-float p1, p1, v0
    return p1
.end method

.method public d(Lc/c/a/e;)F
  .registers 3
  .line 1
    invoke-virtual { p0, p1 }, Lc/c/a/c;->b(Lc/c/a/e;)F
    move-result p1
    const/high16 v0, 16384
    mul-float p1, p1, v0
    return p1
.end method

.method public e(Lc/c/a/e;)V
  .registers 3
  .line 1
    invoke-virtual { p0, p1 }, Lc/c/a/c;->a(Lc/c/a/e;)F
    move-result v0
    invoke-virtual { p0, p1, v0 }, Lc/c/a/c;->l(Lc/c/a/e;F)V
    return-void
.end method

.method public f(Lc/c/a/e;)Landroid/content/res/ColorStateList;
  .registers 2
  .line 1
    invoke-direct { p0, p1 }, Lc/c/a/c;->n(Lc/c/a/e;)Lc/c/a/g;
    move-result-object p1
    invoke-virtual { p1 }, Lc/c/a/g;->b()Landroid/content/res/ColorStateList;
    move-result-object p1
    return-object p1
.end method

.method public g(Lc/c/a/e;F)V
  .registers 3
  .line 1
    invoke-interface { p1 }, Lc/c/a/e;->b()Landroid/view/View;
    move-result-object p1
    invoke-virtual { p1, p2 }, Landroid/view/View;->setElevation(F)V
    return-void
.end method

.method public h(Lc/c/a/e;F)V
  .registers 3
  .line 1
    invoke-direct { p0, p1 }, Lc/c/a/c;->n(Lc/c/a/e;)Lc/c/a/g;
    move-result-object p1
    invoke-virtual { p1, p2 }, Lc/c/a/g;->h(F)V
    return-void
.end method

.method public i(Lc/c/a/e;)V
  .registers 3
  .line 1
    invoke-virtual { p0, p1 }, Lc/c/a/c;->a(Lc/c/a/e;)F
    move-result v0
    invoke-virtual { p0, p1, v0 }, Lc/c/a/c;->l(Lc/c/a/e;F)V
    return-void
.end method

.method public j(Lc/c/a/e;Landroid/content/res/ColorStateList;)V
  .registers 3
  .line 1
    invoke-direct { p0, p1 }, Lc/c/a/c;->n(Lc/c/a/e;)Lc/c/a/g;
    move-result-object p1
    invoke-virtual { p1, p2 }, Lc/c/a/g;->f(Landroid/content/res/ColorStateList;)V
    return-void
.end method

.method public k(Lc/c/a/e;)F
  .registers 2
  .line 1
    invoke-interface { p1 }, Lc/c/a/e;->b()Landroid/view/View;
    move-result-object p1
    invoke-virtual { p1 }, Landroid/view/View;->getElevation()F
    move-result p1
    return p1
.end method

.method public l(Lc/c/a/e;F)V
  .registers 6
  .line 1
    invoke-direct { p0, p1 }, Lc/c/a/c;->n(Lc/c/a/e;)Lc/c/a/g;
    move-result-object v0
  .line 2
    invoke-interface { p1 }, Lc/c/a/e;->c()Z
    move-result v1
    invoke-interface { p1 }, Lc/c/a/e;->f()Z
    move-result v2
  .line 3
    invoke-virtual { v0, p2, v1, v2 }, Lc/c/a/g;->g(FZZ)V
  .line 4
    invoke-virtual { p0, p1 }, Lc/c/a/c;->o(Lc/c/a/e;)V
    return-void
.end method

.method public m()V
  .registers 1
    return-void
.end method

.method public o(Lc/c/a/e;)V
  .registers 6
  .line 1
    invoke-interface { p1 }, Lc/c/a/e;->c()Z
    move-result v0
    if-nez v0, :L0
    const/4 v0, 0
  .line 2
    invoke-interface { p1, v0, v0, v0, v0 }, Lc/c/a/e;->a(IIII)V
    return-void
  :L0
  .line 3
    invoke-virtual { p0, p1 }, Lc/c/a/c;->a(Lc/c/a/e;)F
    move-result v0
  .line 4
    invoke-virtual { p0, p1 }, Lc/c/a/c;->b(Lc/c/a/e;)F
    move-result v1
  .line 5
    invoke-interface { p1 }, Lc/c/a/e;->f()Z
    move-result v2
    invoke-static { v0, v1, v2 }, Lc/c/a/h;->c(FFZ)F
    move-result v2
    float-to-double v2, v2
  .line 6
    invoke-static { v2, v3 }, Ljava/lang/Math;->ceil(D)D
    move-result-wide v2
    double-to-int v2, v2
  .line 7
    invoke-interface { p1 }, Lc/c/a/e;->f()Z
    move-result v3
    invoke-static { v0, v1, v3 }, Lc/c/a/h;->d(FFZ)F
    move-result v0
    float-to-double v0, v0
  .line 8
    invoke-static { v0, v1 }, Ljava/lang/Math;->ceil(D)D
    move-result-wide v0
    double-to-int v0, v0
  .line 9
    invoke-interface { p1, v2, v0, v2, v0 }, Lc/c/a/e;->a(IIII)V
    return-void
.end method
