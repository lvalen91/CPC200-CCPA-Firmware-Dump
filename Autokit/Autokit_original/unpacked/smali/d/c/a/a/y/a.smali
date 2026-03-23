.class public Ld/c/a/a/y/a;
.super Landroid/graphics/drawable/Drawable;
.implements Ld/c/a/a/a0/n;
.implements Landroidx/core/graphics/drawable/b;
.source "SourceFile"

.annotation system Ldalvik/annotation/MemberClasses;
  value = {
    Ld/c/a/a/y/a$b;
  }
.end annotation

.field private b:Ld/c/a/a/y/a$b;

.method public constructor <init>(Ld/c/a/a/a0/k;)V
  .registers 4
  .line 2
    new-instance v0, Ld/c/a/a/y/a$b;
    new-instance v1, Ld/c/a/a/a0/g;
    invoke-direct { v1, p1 }, Ld/c/a/a/a0/g;-><init>(Ld/c/a/a/a0/k;)V
    invoke-direct { v0, v1 }, Ld/c/a/a/y/a$b;-><init>(Ld/c/a/a/a0/g;)V
    invoke-direct { p0, v0 }, Ld/c/a/a/y/a;-><init>(Ld/c/a/a/y/a$b;)V
    return-void
.end method

.method private constructor <init>(Ld/c/a/a/y/a$b;)V
  .registers 2
  .line 3
    invoke-direct { p0 }, Landroid/graphics/drawable/Drawable;-><init>()V
  .line 4
    iput-object p1, p0, Ld/c/a/a/y/a;->b:Ld/c/a/a/y/a$b;
    return-void
.end method

.method synthetic constructor <init>(Ld/c/a/a/y/a$b;Ld/c/a/a/y/a$a;)V
  .registers 3
  .line 1
    invoke-direct { p0, p1 }, Ld/c/a/a/y/a;-><init>(Ld/c/a/a/y/a$b;)V
    return-void
.end method

.method public a()Ld/c/a/a/y/a;
  .registers 3
  .line 1
    new-instance v0, Ld/c/a/a/y/a$b;
    iget-object v1, p0, Ld/c/a/a/y/a;->b:Ld/c/a/a/y/a$b;
    invoke-direct { v0, v1 }, Ld/c/a/a/y/a$b;-><init>(Ld/c/a/a/y/a$b;)V
  .line 2
    iput-object v0, p0, Ld/c/a/a/y/a;->b:Ld/c/a/a/y/a$b;
    return-object p0
.end method

.method public draw(Landroid/graphics/Canvas;)V
  .registers 4
  .line 1
    iget-object v0, p0, Ld/c/a/a/y/a;->b:Ld/c/a/a/y/a$b;
    iget-boolean v1, v0, Ld/c/a/a/y/a$b;->b:Z
    if-eqz v1, :L0
  .line 2
    iget-object v0, v0, Ld/c/a/a/y/a$b;->a:Ld/c/a/a/a0/g;
    invoke-virtual { v0, p1 }, Ld/c/a/a/a0/g;->draw(Landroid/graphics/Canvas;)V
  :L0
    return-void
.end method

.method public getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
  .registers 2
  .line 1
    iget-object v0, p0, Ld/c/a/a/y/a;->b:Ld/c/a/a/y/a$b;
    return-object v0
.end method

.method public getOpacity()I
  .registers 2
  .line 1
    iget-object v0, p0, Ld/c/a/a/y/a;->b:Ld/c/a/a/y/a$b;
    iget-object v0, v0, Ld/c/a/a/y/a$b;->a:Ld/c/a/a/a0/g;
    invoke-virtual { v0 }, Ld/c/a/a/a0/g;->getOpacity()I
    move-result v0
    return v0
.end method

.method public isStateful()Z
  .registers 2
    const/4 v0, 1
    return v0
.end method

.method public bridge synthetic mutate()Landroid/graphics/drawable/Drawable;
  .registers 1
  .line 1
    invoke-virtual { p0 }, Ld/c/a/a/y/a;->a()Ld/c/a/a/y/a;
    return-object p0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
  .registers 3
  .line 1
    invoke-super { p0, p1 }, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V
  .line 2
    iget-object v0, p0, Ld/c/a/a/y/a;->b:Ld/c/a/a/y/a$b;
    iget-object v0, v0, Ld/c/a/a/y/a$b;->a:Ld/c/a/a/a0/g;
    invoke-virtual { v0, p1 }, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V
    return-void
.end method

.method protected onStateChange([I)Z
  .registers 6
  .line 1
    invoke-super { p0, p1 }, Landroid/graphics/drawable/Drawable;->onStateChange([I)Z
    move-result v0
  .line 2
    iget-object v1, p0, Ld/c/a/a/y/a;->b:Ld/c/a/a/y/a$b;
    iget-object v1, v1, Ld/c/a/a/y/a$b;->a:Ld/c/a/a/a0/g;
    invoke-virtual { v1, p1 }, Landroid/graphics/drawable/Drawable;->setState([I)Z
    move-result v1
    const/4 v2, 1
    if-eqz v1, :L0
    const/4 v0, 1
  :L0
  .line 3
    invoke-static { p1 }, Ld/c/a/a/y/b;->b([I)Z
    move-result p1
  .line 4
    iget-object v1, p0, Ld/c/a/a/y/a;->b:Ld/c/a/a/y/a$b;
    iget-boolean v3, v1, Ld/c/a/a/y/a$b;->b:Z
    if-eq v3, p1, :L1
  .line 5
    iput-boolean p1, v1, Ld/c/a/a/y/a$b;->b:Z
    goto :L2
  :L1
    move v2, v0
  :L2
    return v2
.end method

.method public setAlpha(I)V
  .registers 3
  .line 1
    iget-object v0, p0, Ld/c/a/a/y/a;->b:Ld/c/a/a/y/a$b;
    iget-object v0, v0, Ld/c/a/a/y/a$b;->a:Ld/c/a/a/a0/g;
    invoke-virtual { v0, p1 }, Ld/c/a/a/a0/g;->setAlpha(I)V
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
  .registers 3
  .line 1
    iget-object v0, p0, Ld/c/a/a/y/a;->b:Ld/c/a/a/y/a$b;
    iget-object v0, v0, Ld/c/a/a/y/a$b;->a:Ld/c/a/a/a0/g;
    invoke-virtual { v0, p1 }, Ld/c/a/a/a0/g;->setColorFilter(Landroid/graphics/ColorFilter;)V
    return-void
.end method

.method public setShapeAppearanceModel(Ld/c/a/a/a0/k;)V
  .registers 3
  .line 1
    iget-object v0, p0, Ld/c/a/a/y/a;->b:Ld/c/a/a/y/a$b;
    iget-object v0, v0, Ld/c/a/a/y/a$b;->a:Ld/c/a/a/a0/g;
    invoke-virtual { v0, p1 }, Ld/c/a/a/a0/g;->setShapeAppearanceModel(Ld/c/a/a/a0/k;)V
    return-void
.end method

.method public setTint(I)V
  .registers 3
  .line 1
    iget-object v0, p0, Ld/c/a/a/y/a;->b:Ld/c/a/a/y/a$b;
    iget-object v0, v0, Ld/c/a/a/y/a$b;->a:Ld/c/a/a/a0/g;
    invoke-virtual { v0, p1 }, Ld/c/a/a/a0/g;->setTint(I)V
    return-void
.end method

.method public setTintList(Landroid/content/res/ColorStateList;)V
  .registers 3
  .line 1
    iget-object v0, p0, Ld/c/a/a/y/a;->b:Ld/c/a/a/y/a$b;
    iget-object v0, v0, Ld/c/a/a/y/a$b;->a:Ld/c/a/a/a0/g;
    invoke-virtual { v0, p1 }, Ld/c/a/a/a0/g;->setTintList(Landroid/content/res/ColorStateList;)V
    return-void
.end method

.method public setTintMode(Landroid/graphics/PorterDuff$Mode;)V
  .registers 3
  .line 1
    iget-object v0, p0, Ld/c/a/a/y/a;->b:Ld/c/a/a/y/a$b;
    iget-object v0, v0, Ld/c/a/a/y/a$b;->a:Ld/c/a/a/a0/g;
    invoke-virtual { v0, p1 }, Ld/c/a/a/a0/g;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V
    return-void
.end method
