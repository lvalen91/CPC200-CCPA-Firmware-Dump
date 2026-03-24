.class public Ld/c/a/a/p/e/a;
.super Ld/c/a/a/n/a;
.source "SourceFile"

# interfaces
.implements Ld/c/a/a/p/d;


# instance fields
.field private final o:Ld/c/a/a/p/c;


# virtual methods
.method public a()V
    .registers 2

    .line 1
    iget-object v0, p0, Ld/c/a/a/p/e/a;->o:Ld/c/a/a/p/c;

    invoke-virtual {v0}, Ld/c/a/a/p/c;->a()V

    const/4 v0, 0x0

    throw v0
.end method

.method public b()V
    .registers 2

    .line 1
    iget-object v0, p0, Ld/c/a/a/p/e/a;->o:Ld/c/a/a/p/c;

    invoke-virtual {v0}, Ld/c/a/a/p/c;->b()V

    const/4 v0, 0x0

    throw v0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .registers 3

    .line 1
    iget-object v0, p0, Ld/c/a/a/p/e/a;->o:Ld/c/a/a/p/c;

    if-nez v0, :cond_8

    .line 2
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->draw(Landroid/graphics/Canvas;)V

    return-void

    .line 3
    :cond_8
    invoke-virtual {v0, p1}, Ld/c/a/a/p/c;->c(Landroid/graphics/Canvas;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public getCircularRevealOverlayDrawable()Landroid/graphics/drawable/Drawable;
    .registers 2

    .line 1
    iget-object v0, p0, Ld/c/a/a/p/e/a;->o:Ld/c/a/a/p/c;

    invoke-virtual {v0}, Ld/c/a/a/p/c;->d()Landroid/graphics/drawable/Drawable;

    const/4 v0, 0x0

    throw v0
.end method

.method public getCircularRevealScrimColor()I
    .registers 2

    .line 1
    iget-object v0, p0, Ld/c/a/a/p/e/a;->o:Ld/c/a/a/p/c;

    invoke-virtual {v0}, Ld/c/a/a/p/c;->e()I

    const/4 v0, 0x0

    throw v0
.end method

.method public getRevealInfo()Ld/c/a/a/p/d$e;
    .registers 2

    .line 1
    iget-object v0, p0, Ld/c/a/a/p/e/a;->o:Ld/c/a/a/p/c;

    invoke-virtual {v0}, Ld/c/a/a/p/c;->f()Ld/c/a/a/p/d$e;

    const/4 v0, 0x0

    throw v0
.end method

.method public isOpaque()Z
    .registers 2

    .line 1
    iget-object v0, p0, Ld/c/a/a/p/e/a;->o:Ld/c/a/a/p/c;

    if-nez v0, :cond_9

    .line 2
    invoke-super {p0}, Landroid/widget/FrameLayout;->isOpaque()Z

    move-result v0

    return v0

    .line 3
    :cond_9
    invoke-virtual {v0}, Ld/c/a/a/p/c;->g()Z

    const/4 v0, 0x0

    throw v0
.end method

.method public setCircularRevealOverlayDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 3

    .line 1
    iget-object v0, p0, Ld/c/a/a/p/e/a;->o:Ld/c/a/a/p/c;

    invoke-virtual {v0, p1}, Ld/c/a/a/p/c;->h(Landroid/graphics/drawable/Drawable;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public setCircularRevealScrimColor(I)V
    .registers 3

    .line 1
    iget-object v0, p0, Ld/c/a/a/p/e/a;->o:Ld/c/a/a/p/c;

    invoke-virtual {v0, p1}, Ld/c/a/a/p/c;->i(I)V

    const/4 p1, 0x0

    throw p1
.end method

.method public setRevealInfo(Ld/c/a/a/p/d$e;)V
    .registers 3

    .line 1
    iget-object v0, p0, Ld/c/a/a/p/e/a;->o:Ld/c/a/a/p/c;

    invoke-virtual {v0, p1}, Ld/c/a/a/p/c;->j(Ld/c/a/a/p/d$e;)V

    const/4 p1, 0x0

    throw p1
.end method
