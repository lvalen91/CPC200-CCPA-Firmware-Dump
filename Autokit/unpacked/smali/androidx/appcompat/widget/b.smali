.class Landroidx/appcompat/widget/b;
.super Landroid/graphics/drawable/Drawable;
.source "SourceFile"

.field final a:Landroidx/appcompat/widget/ActionBarContainer;

.method public constructor <init>(Landroidx/appcompat/widget/ActionBarContainer;)V
  .registers 2
  .line 1
    invoke-direct { p0 }, Landroid/graphics/drawable/Drawable;-><init>()V
  .line 2
    iput-object p1, p0, Landroidx/appcompat/widget/b;->a:Landroidx/appcompat/widget/ActionBarContainer;
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
  .registers 4
  .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/b;->a:Landroidx/appcompat/widget/ActionBarContainer;
    iget-boolean v1, v0, Landroidx/appcompat/widget/ActionBarContainer;->i:Z
    if-eqz v1, :L0
  .line 2
    iget-object v0, v0, Landroidx/appcompat/widget/ActionBarContainer;->h:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :L2
  .line 3
    invoke-virtual { v0, p1 }, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V
    goto :L2
  :L0
  .line 4
    iget-object v0, v0, Landroidx/appcompat/widget/ActionBarContainer;->f:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :L1
  .line 5
    invoke-virtual { v0, p1 }, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V
  :L1
  .line 6
    iget-object v0, p0, Landroidx/appcompat/widget/b;->a:Landroidx/appcompat/widget/ActionBarContainer;
    iget-object v1, v0, Landroidx/appcompat/widget/ActionBarContainer;->g:Landroid/graphics/drawable/Drawable;
    if-eqz v1, :L2
    iget-boolean v0, v0, Landroidx/appcompat/widget/ActionBarContainer;->j:Z
    if-eqz v0, :L2
  .line 7
    invoke-virtual { v1, p1 }, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V
  :L2
    return-void
.end method

.method public getOpacity()I
  .registers 2
    const/4 v0, 0
    return v0
.end method

.method public getOutline(Landroid/graphics/Outline;)V
  .registers 4
  .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/b;->a:Landroidx/appcompat/widget/ActionBarContainer;
    iget-boolean v1, v0, Landroidx/appcompat/widget/ActionBarContainer;->i:Z
    if-eqz v1, :L0
  .line 2
    iget-object v0, v0, Landroidx/appcompat/widget/ActionBarContainer;->h:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :L1
  .line 3
    invoke-virtual { v0, p1 }, Landroid/graphics/drawable/Drawable;->getOutline(Landroid/graphics/Outline;)V
    goto :L1
  :L0
  .line 4
    iget-object v0, v0, Landroidx/appcompat/widget/ActionBarContainer;->f:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :L1
  .line 5
    invoke-virtual { v0, p1 }, Landroid/graphics/drawable/Drawable;->getOutline(Landroid/graphics/Outline;)V
  :L1
    return-void
.end method

.method public setAlpha(I)V
  .registers 2
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
  .registers 2
    return-void
.end method
