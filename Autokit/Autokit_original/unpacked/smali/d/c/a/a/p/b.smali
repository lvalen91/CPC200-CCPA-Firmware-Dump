.class public Ld/c/a/a/p/b;
.super Landroid/widget/FrameLayout;
.implements Ld/c/a/a/p/d;
.source "SourceFile"

.field private final b:Ld/c/a/a/p/c;

.method public a()V
  .registers 2
  .line 1
    iget-object v0, p0, Ld/c/a/a/p/b;->b:Ld/c/a/a/p/c;
    invoke-virtual { v0 }, Ld/c/a/a/p/c;->a()V
    const/4 v0, 0
    throw v0
.end method

.method public b()V
  .registers 2
  .line 1
    iget-object v0, p0, Ld/c/a/a/p/b;->b:Ld/c/a/a/p/c;
    invoke-virtual { v0 }, Ld/c/a/a/p/c;->b()V
    const/4 v0, 0
    throw v0
.end method

.method public draw(Landroid/graphics/Canvas;)V
  .annotation build Landroid/annotation/SuppressLint;
    value = {
      "MissingSuperCall"
    }
  .end annotation
  .registers 3
  .line 1
    iget-object v0, p0, Ld/c/a/a/p/b;->b:Ld/c/a/a/p/c;
    if-nez v0, :L0
  .line 2
    invoke-super { p0, p1 }, Landroid/widget/FrameLayout;->draw(Landroid/graphics/Canvas;)V
    return-void
  :L0
  .line 3
    invoke-virtual { v0, p1 }, Ld/c/a/a/p/c;->c(Landroid/graphics/Canvas;)V
    const/4 p1, 0
    throw p1
.end method

.method public getCircularRevealOverlayDrawable()Landroid/graphics/drawable/Drawable;
  .registers 2
  .line 1
    iget-object v0, p0, Ld/c/a/a/p/b;->b:Ld/c/a/a/p/c;
    invoke-virtual { v0 }, Ld/c/a/a/p/c;->d()Landroid/graphics/drawable/Drawable;
    const/4 v0, 0
    throw v0
.end method

.method public getCircularRevealScrimColor()I
  .registers 2
  .line 1
    iget-object v0, p0, Ld/c/a/a/p/b;->b:Ld/c/a/a/p/c;
    invoke-virtual { v0 }, Ld/c/a/a/p/c;->e()I
    const/4 v0, 0
    throw v0
.end method

.method public getRevealInfo()Ld/c/a/a/p/d$e;
  .registers 2
  .line 1
    iget-object v0, p0, Ld/c/a/a/p/b;->b:Ld/c/a/a/p/c;
    invoke-virtual { v0 }, Ld/c/a/a/p/c;->f()Ld/c/a/a/p/d$e;
    const/4 v0, 0
    throw v0
.end method

.method public isOpaque()Z
  .registers 2
  .line 1
    iget-object v0, p0, Ld/c/a/a/p/b;->b:Ld/c/a/a/p/c;
    if-nez v0, :L0
  .line 2
    invoke-super { p0 }, Landroid/widget/FrameLayout;->isOpaque()Z
    move-result v0
    return v0
  :L0
  .line 3
    invoke-virtual { v0 }, Ld/c/a/a/p/c;->g()Z
    const/4 v0, 0
    throw v0
.end method

.method public setCircularRevealOverlayDrawable(Landroid/graphics/drawable/Drawable;)V
  .registers 3
  .line 1
    iget-object v0, p0, Ld/c/a/a/p/b;->b:Ld/c/a/a/p/c;
    invoke-virtual { v0, p1 }, Ld/c/a/a/p/c;->h(Landroid/graphics/drawable/Drawable;)V
    const/4 p1, 0
    throw p1
.end method

.method public setCircularRevealScrimColor(I)V
  .registers 3
  .line 1
    iget-object v0, p0, Ld/c/a/a/p/b;->b:Ld/c/a/a/p/c;
    invoke-virtual { v0, p1 }, Ld/c/a/a/p/c;->i(I)V
    const/4 p1, 0
    throw p1
.end method

.method public setRevealInfo(Ld/c/a/a/p/d$e;)V
  .registers 3
  .line 1
    iget-object v0, p0, Ld/c/a/a/p/b;->b:Ld/c/a/a/p/c;
    invoke-virtual { v0, p1 }, Ld/c/a/a/p/c;->j(Ld/c/a/a/p/d$e;)V
    const/4 p1, 0
    throw p1
.end method
