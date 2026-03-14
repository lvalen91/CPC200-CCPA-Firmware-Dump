.class Landroidx/core/graphics/drawable/d;
.super Landroid/graphics/drawable/Drawable;
.implements Landroid/graphics/drawable/Drawable$Callback;
.implements Landroidx/core/graphics/drawable/c;
.implements Landroidx/core/graphics/drawable/b;
.source "SourceFile"

.field final static h:Landroid/graphics/PorterDuff$Mode;

.field private b:I

.field private c:Landroid/graphics/PorterDuff$Mode;

.field private d:Z

.field e:Landroidx/core/graphics/drawable/f;

.field private f:Z

.field g:Landroid/graphics/drawable/Drawable;

.method static constructor <clinit>()V
  .registers 1
  .line 1
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;
    sput-object v0, Landroidx/core/graphics/drawable/d;->h:Landroid/graphics/PorterDuff$Mode;
    return-void
.end method

.method constructor <init>(Landroid/graphics/drawable/Drawable;)V
  .registers 3
  .line 4
    invoke-direct { p0 }, Landroid/graphics/drawable/Drawable;-><init>()V
  .line 5
    invoke-direct { p0 }, Landroidx/core/graphics/drawable/d;->d()Landroidx/core/graphics/drawable/f;
    move-result-object v0
    iput-object v0, p0, Landroidx/core/graphics/drawable/d;->e:Landroidx/core/graphics/drawable/f;
  .line 6
    invoke-virtual { p0, p1 }, Landroidx/core/graphics/drawable/d;->b(Landroid/graphics/drawable/Drawable;)V
    return-void
.end method

.method constructor <init>(Landroidx/core/graphics/drawable/f;Landroid/content/res/Resources;)V
  .registers 3
  .line 1
    invoke-direct { p0 }, Landroid/graphics/drawable/Drawable;-><init>()V
  .line 2
    iput-object p1, p0, Landroidx/core/graphics/drawable/d;->e:Landroidx/core/graphics/drawable/f;
  .line 3
    invoke-direct { p0, p2 }, Landroidx/core/graphics/drawable/d;->e(Landroid/content/res/Resources;)V
    return-void
.end method

.method private d()Landroidx/core/graphics/drawable/f;
  .registers 3
  .line 1
    new-instance v0, Landroidx/core/graphics/drawable/f;
    iget-object v1, p0, Landroidx/core/graphics/drawable/d;->e:Landroidx/core/graphics/drawable/f;
    invoke-direct { v0, v1 }, Landroidx/core/graphics/drawable/f;-><init>(Landroidx/core/graphics/drawable/f;)V
    return-object v0
.end method

.method private e(Landroid/content/res/Resources;)V
  .registers 3
  .line 1
    iget-object v0, p0, Landroidx/core/graphics/drawable/d;->e:Landroidx/core/graphics/drawable/f;
    if-eqz v0, :L0
    iget-object v0, v0, Landroidx/core/graphics/drawable/f;->b:Landroid/graphics/drawable/Drawable$ConstantState;
    if-eqz v0, :L0
  .line 2
    invoke-virtual { v0, p1 }, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    move-result-object p1
    invoke-virtual { p0, p1 }, Landroidx/core/graphics/drawable/d;->b(Landroid/graphics/drawable/Drawable;)V
  :L0
    return-void
.end method

.method private f([I)Z
  .registers 6
  .line 1
    invoke-virtual { p0 }, Landroidx/core/graphics/drawable/d;->c()Z
    move-result v0
    const/4 v1, 0
    if-nez v0, :L0
    return v1
  :L0
  .line 2
    iget-object v0, p0, Landroidx/core/graphics/drawable/d;->e:Landroidx/core/graphics/drawable/f;
    iget-object v2, v0, Landroidx/core/graphics/drawable/f;->c:Landroid/content/res/ColorStateList;
  .line 3
    iget-object v0, v0, Landroidx/core/graphics/drawable/f;->d:Landroid/graphics/PorterDuff$Mode;
    if-eqz v2, :L2
    if-eqz v0, :L2
  .line 4
    invoke-virtual { v2 }, Landroid/content/res/ColorStateList;->getDefaultColor()I
    move-result v3
    invoke-virtual { v2, p1, v3 }, Landroid/content/res/ColorStateList;->getColorForState([II)I
    move-result p1
  .line 5
    iget-boolean v2, p0, Landroidx/core/graphics/drawable/d;->d:Z
    if-eqz v2, :L1
    iget v2, p0, Landroidx/core/graphics/drawable/d;->b:I
    if-ne p1, v2, :L1
    iget-object v2, p0, Landroidx/core/graphics/drawable/d;->c:Landroid/graphics/PorterDuff$Mode;
    if-eq v0, v2, :L3
  :L1
  .line 6
    invoke-virtual { p0, p1, v0 }, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V
  .line 7
    iput p1, p0, Landroidx/core/graphics/drawable/d;->b:I
  .line 8
    iput-object v0, p0, Landroidx/core/graphics/drawable/d;->c:Landroid/graphics/PorterDuff$Mode;
    const/4 p1, 1
  .line 9
    iput-boolean p1, p0, Landroidx/core/graphics/drawable/d;->d:Z
    return p1
  :L2
  .line 10
    iput-boolean v1, p0, Landroidx/core/graphics/drawable/d;->d:Z
  .line 11
    invoke-virtual { p0 }, Landroid/graphics/drawable/Drawable;->clearColorFilter()V
  :L3
    return v1
.end method

.method public final a()Landroid/graphics/drawable/Drawable;
  .registers 2
  .line 1
    iget-object v0, p0, Landroidx/core/graphics/drawable/d;->g:Landroid/graphics/drawable/Drawable;
    return-object v0
.end method

.method public final b(Landroid/graphics/drawable/Drawable;)V
  .registers 4
  .line 1
    iget-object v0, p0, Landroidx/core/graphics/drawable/d;->g:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :L0
    const/4 v1, 0
  .line 2
    invoke-virtual { v0, v1 }, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V
  :L0
  .line 3
    iput-object p1, p0, Landroidx/core/graphics/drawable/d;->g:Landroid/graphics/drawable/Drawable;
    if-eqz p1, :L1
  .line 4
    invoke-virtual { p1, p0 }, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V
  .line 5
    invoke-virtual { p1 }, Landroid/graphics/drawable/Drawable;->isVisible()Z
    move-result v0
    const/4 v1, 1
    invoke-virtual { p0, v0, v1 }, Landroidx/core/graphics/drawable/d;->setVisible(ZZ)Z
  .line 6
    invoke-virtual { p1 }, Landroid/graphics/drawable/Drawable;->getState()[I
    move-result-object v0
    invoke-virtual { p0, v0 }, Landroidx/core/graphics/drawable/d;->setState([I)Z
  .line 7
    invoke-virtual { p1 }, Landroid/graphics/drawable/Drawable;->getLevel()I
    move-result v0
    invoke-virtual { p0, v0 }, Landroid/graphics/drawable/Drawable;->setLevel(I)Z
  .line 8
    invoke-virtual { p1 }, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;
    move-result-object v0
    invoke-virtual { p0, v0 }, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V
  .line 9
    iget-object v0, p0, Landroidx/core/graphics/drawable/d;->e:Landroidx/core/graphics/drawable/f;
    if-eqz v0, :L1
  .line 10
    invoke-virtual { p1 }, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    move-result-object p1
    iput-object p1, v0, Landroidx/core/graphics/drawable/f;->b:Landroid/graphics/drawable/Drawable$ConstantState;
  :L1
  .line 11
    invoke-virtual { p0 }, Landroid/graphics/drawable/Drawable;->invalidateSelf()V
    return-void
.end method

.method protected c()Z
  .registers 2
    const/4 v0, 1
    return v0
.end method

.method public draw(Landroid/graphics/Canvas;)V
  .registers 3
  .line 1
    iget-object v0, p0, Landroidx/core/graphics/drawable/d;->g:Landroid/graphics/drawable/Drawable;
    invoke-virtual { v0, p1 }, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V
    return-void
.end method

.method public getChangingConfigurations()I
  .registers 3
  .line 1
    invoke-super { p0 }, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I
    move-result v0
  .line 2
    iget-object v1, p0, Landroidx/core/graphics/drawable/d;->e:Landroidx/core/graphics/drawable/f;
    if-eqz v1, :L0
    invoke-virtual { v1 }, Landroidx/core/graphics/drawable/f;->getChangingConfigurations()I
    move-result v1
    goto :L1
  :L0
    const/4 v1, 0
  :L1
    or-int/2addr v0, v1
    iget-object v1, p0, Landroidx/core/graphics/drawable/d;->g:Landroid/graphics/drawable/Drawable;
  .line 3
    invoke-virtual { v1 }, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I
    move-result v1
    or-int/2addr v0, v1
    return v0
.end method

.method public getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
  .registers 3
  .line 1
    iget-object v0, p0, Landroidx/core/graphics/drawable/d;->e:Landroidx/core/graphics/drawable/f;
    if-eqz v0, :L0
    invoke-virtual { v0 }, Landroidx/core/graphics/drawable/f;->a()Z
    move-result v0
    if-eqz v0, :L0
  .line 2
    iget-object v0, p0, Landroidx/core/graphics/drawable/d;->e:Landroidx/core/graphics/drawable/f;
    invoke-virtual { p0 }, Landroidx/core/graphics/drawable/d;->getChangingConfigurations()I
    move-result v1
    iput v1, v0, Landroidx/core/graphics/drawable/f;->a:I
  .line 3
    iget-object v0, p0, Landroidx/core/graphics/drawable/d;->e:Landroidx/core/graphics/drawable/f;
    return-object v0
  :L0
    const/4 v0, 0
    return-object v0
.end method

.method public getCurrent()Landroid/graphics/drawable/Drawable;
  .registers 2
  .line 1
    iget-object v0, p0, Landroidx/core/graphics/drawable/d;->g:Landroid/graphics/drawable/Drawable;
    invoke-virtual { v0 }, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;
    move-result-object v0
    return-object v0
.end method

.method public getIntrinsicHeight()I
  .registers 2
  .line 1
    iget-object v0, p0, Landroidx/core/graphics/drawable/d;->g:Landroid/graphics/drawable/Drawable;
    invoke-virtual { v0 }, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I
    move-result v0
    return v0
.end method

.method public getIntrinsicWidth()I
  .registers 2
  .line 1
    iget-object v0, p0, Landroidx/core/graphics/drawable/d;->g:Landroid/graphics/drawable/Drawable;
    invoke-virtual { v0 }, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I
    move-result v0
    return v0
.end method

.method public getLayoutDirection()I
  .registers 2
  .line 1
    iget-object v0, p0, Landroidx/core/graphics/drawable/d;->g:Landroid/graphics/drawable/Drawable;
    invoke-static { v0 }, Landroidx/core/graphics/drawable/a;->f(Landroid/graphics/drawable/Drawable;)I
    move-result v0
    return v0
.end method

.method public getMinimumHeight()I
  .registers 2
  .line 1
    iget-object v0, p0, Landroidx/core/graphics/drawable/d;->g:Landroid/graphics/drawable/Drawable;
    invoke-virtual { v0 }, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I
    move-result v0
    return v0
.end method

.method public getMinimumWidth()I
  .registers 2
  .line 1
    iget-object v0, p0, Landroidx/core/graphics/drawable/d;->g:Landroid/graphics/drawable/Drawable;
    invoke-virtual { v0 }, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I
    move-result v0
    return v0
.end method

.method public getOpacity()I
  .registers 2
  .line 1
    iget-object v0, p0, Landroidx/core/graphics/drawable/d;->g:Landroid/graphics/drawable/Drawable;
    invoke-virtual { v0 }, Landroid/graphics/drawable/Drawable;->getOpacity()I
    move-result v0
    return v0
.end method

.method public getPadding(Landroid/graphics/Rect;)Z
  .registers 3
  .line 1
    iget-object v0, p0, Landroidx/core/graphics/drawable/d;->g:Landroid/graphics/drawable/Drawable;
    invoke-virtual { v0, p1 }, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z
    move-result p1
    return p1
.end method

.method public getState()[I
  .registers 2
  .line 1
    iget-object v0, p0, Landroidx/core/graphics/drawable/d;->g:Landroid/graphics/drawable/Drawable;
    invoke-virtual { v0 }, Landroid/graphics/drawable/Drawable;->getState()[I
    move-result-object v0
    return-object v0
.end method

.method public getTransparentRegion()Landroid/graphics/Region;
  .registers 2
  .line 1
    iget-object v0, p0, Landroidx/core/graphics/drawable/d;->g:Landroid/graphics/drawable/Drawable;
    invoke-virtual { v0 }, Landroid/graphics/drawable/Drawable;->getTransparentRegion()Landroid/graphics/Region;
    move-result-object v0
    return-object v0
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
  .registers 2
  .line 1
    invoke-virtual { p0 }, Landroid/graphics/drawable/Drawable;->invalidateSelf()V
    return-void
.end method

.method public isAutoMirrored()Z
  .registers 2
  .line 1
    iget-object v0, p0, Landroidx/core/graphics/drawable/d;->g:Landroid/graphics/drawable/Drawable;
    invoke-static { v0 }, Landroidx/core/graphics/drawable/a;->h(Landroid/graphics/drawable/Drawable;)Z
    move-result v0
    return v0
.end method

.method public isStateful()Z
  .registers 2
  .line 1
    invoke-virtual { p0 }, Landroidx/core/graphics/drawable/d;->c()Z
    move-result v0
    if-eqz v0, :L0
    iget-object v0, p0, Landroidx/core/graphics/drawable/d;->e:Landroidx/core/graphics/drawable/f;
    if-eqz v0, :L0
  .line 2
    iget-object v0, v0, Landroidx/core/graphics/drawable/f;->c:Landroid/content/res/ColorStateList;
    goto :L1
  :L0
    const/4 v0, 0
  :L1
    if-eqz v0, :L2
  .line 3
    invoke-virtual { v0 }, Landroid/content/res/ColorStateList;->isStateful()Z
    move-result v0
    if-nez v0, :L3
  :L2
    iget-object v0, p0, Landroidx/core/graphics/drawable/d;->g:Landroid/graphics/drawable/Drawable;
    invoke-virtual { v0 }, Landroid/graphics/drawable/Drawable;->isStateful()Z
    move-result v0
    if-eqz v0, :L4
  :L3
    const/4 v0, 1
    goto :L5
  :L4
    const/4 v0, 0
  :L5
    return v0
.end method

.method public jumpToCurrentState()V
  .registers 2
  .line 1
    iget-object v0, p0, Landroidx/core/graphics/drawable/d;->g:Landroid/graphics/drawable/Drawable;
    invoke-virtual { v0 }, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V
    return-void
.end method

.method public mutate()Landroid/graphics/drawable/Drawable;
  .registers 3
  .line 1
    iget-boolean v0, p0, Landroidx/core/graphics/drawable/d;->f:Z
    if-nez v0, :L4
    invoke-super { p0 }, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;
    move-result-object v0
    if-ne v0, p0, :L4
  .line 2
    invoke-direct { p0 }, Landroidx/core/graphics/drawable/d;->d()Landroidx/core/graphics/drawable/f;
    move-result-object v0
    iput-object v0, p0, Landroidx/core/graphics/drawable/d;->e:Landroidx/core/graphics/drawable/f;
  .line 3
    iget-object v0, p0, Landroidx/core/graphics/drawable/d;->g:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :L0
  .line 4
    invoke-virtual { v0 }, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;
  :L0
  .line 5
    iget-object v0, p0, Landroidx/core/graphics/drawable/d;->e:Landroidx/core/graphics/drawable/f;
    if-eqz v0, :L3
  .line 6
    iget-object v1, p0, Landroidx/core/graphics/drawable/d;->g:Landroid/graphics/drawable/Drawable;
    if-eqz v1, :L1
    invoke-virtual { v1 }, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    move-result-object v1
    goto :L2
  :L1
    const/4 v1, 0
  :L2
    iput-object v1, v0, Landroidx/core/graphics/drawable/f;->b:Landroid/graphics/drawable/Drawable$ConstantState;
  :L3
    const/4 v0, 1
  .line 7
    iput-boolean v0, p0, Landroidx/core/graphics/drawable/d;->f:Z
  :L4
    return-object p0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
  .registers 3
  .line 1
    iget-object v0, p0, Landroidx/core/graphics/drawable/d;->g:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :L0
  .line 2
    invoke-virtual { v0, p1 }, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V
  :L0
    return-void
.end method

.method public onLayoutDirectionChanged(I)Z
  .registers 3
  .line 1
    iget-object v0, p0, Landroidx/core/graphics/drawable/d;->g:Landroid/graphics/drawable/Drawable;
    invoke-static { v0, p1 }, Landroidx/core/graphics/drawable/a;->m(Landroid/graphics/drawable/Drawable;I)Z
    move-result p1
    return p1
.end method

.method protected onLevelChange(I)Z
  .registers 3
  .line 1
    iget-object v0, p0, Landroidx/core/graphics/drawable/d;->g:Landroid/graphics/drawable/Drawable;
    invoke-virtual { v0, p1 }, Landroid/graphics/drawable/Drawable;->setLevel(I)Z
    move-result p1
    return p1
.end method

.method public scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V
  .registers 5
  .line 1
    invoke-virtual { p0, p2, p3, p4 }, Landroid/graphics/drawable/Drawable;->scheduleSelf(Ljava/lang/Runnable;J)V
    return-void
.end method

.method public setAlpha(I)V
  .registers 3
  .line 1
    iget-object v0, p0, Landroidx/core/graphics/drawable/d;->g:Landroid/graphics/drawable/Drawable;
    invoke-virtual { v0, p1 }, Landroid/graphics/drawable/Drawable;->setAlpha(I)V
    return-void
.end method

.method public setAutoMirrored(Z)V
  .registers 3
  .line 1
    iget-object v0, p0, Landroidx/core/graphics/drawable/d;->g:Landroid/graphics/drawable/Drawable;
    invoke-static { v0, p1 }, Landroidx/core/graphics/drawable/a;->j(Landroid/graphics/drawable/Drawable;Z)V
    return-void
.end method

.method public setChangingConfigurations(I)V
  .registers 3
  .line 1
    iget-object v0, p0, Landroidx/core/graphics/drawable/d;->g:Landroid/graphics/drawable/Drawable;
    invoke-virtual { v0, p1 }, Landroid/graphics/drawable/Drawable;->setChangingConfigurations(I)V
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
  .registers 3
  .line 1
    iget-object v0, p0, Landroidx/core/graphics/drawable/d;->g:Landroid/graphics/drawable/Drawable;
    invoke-virtual { v0, p1 }, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V
    return-void
.end method

.method public setDither(Z)V
  .registers 3
  .line 1
    iget-object v0, p0, Landroidx/core/graphics/drawable/d;->g:Landroid/graphics/drawable/Drawable;
    invoke-virtual { v0, p1 }, Landroid/graphics/drawable/Drawable;->setDither(Z)V
    return-void
.end method

.method public setFilterBitmap(Z)V
  .registers 3
  .line 1
    iget-object v0, p0, Landroidx/core/graphics/drawable/d;->g:Landroid/graphics/drawable/Drawable;
    invoke-virtual { v0, p1 }, Landroid/graphics/drawable/Drawable;->setFilterBitmap(Z)V
    return-void
.end method

.method public setState([I)Z
  .registers 3
  .line 1
    iget-object v0, p0, Landroidx/core/graphics/drawable/d;->g:Landroid/graphics/drawable/Drawable;
    invoke-virtual { v0, p1 }, Landroid/graphics/drawable/Drawable;->setState([I)Z
    move-result v0
  .line 2
    invoke-direct { p0, p1 }, Landroidx/core/graphics/drawable/d;->f([I)Z
    move-result p1
    if-nez p1, :L1
    if-eqz v0, :L0
    goto :L1
  :L0
    const/4 p1, 0
    goto :L2
  :L1
    const/4 p1, 1
  :L2
    return p1
.end method

.method public setTint(I)V
  .registers 2
  .line 1
    invoke-static { p1 }, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;
    move-result-object p1
    invoke-virtual { p0, p1 }, Landroidx/core/graphics/drawable/d;->setTintList(Landroid/content/res/ColorStateList;)V
    return-void
.end method

.method public setTintList(Landroid/content/res/ColorStateList;)V
  .registers 3
  .line 1
    iget-object v0, p0, Landroidx/core/graphics/drawable/d;->e:Landroidx/core/graphics/drawable/f;
    iput-object p1, v0, Landroidx/core/graphics/drawable/f;->c:Landroid/content/res/ColorStateList;
  .line 2
    invoke-virtual { p0 }, Landroidx/core/graphics/drawable/d;->getState()[I
    move-result-object p1
    invoke-direct { p0, p1 }, Landroidx/core/graphics/drawable/d;->f([I)Z
    return-void
.end method

.method public setTintMode(Landroid/graphics/PorterDuff$Mode;)V
  .registers 3
  .line 1
    iget-object v0, p0, Landroidx/core/graphics/drawable/d;->e:Landroidx/core/graphics/drawable/f;
    iput-object p1, v0, Landroidx/core/graphics/drawable/f;->d:Landroid/graphics/PorterDuff$Mode;
  .line 2
    invoke-virtual { p0 }, Landroidx/core/graphics/drawable/d;->getState()[I
    move-result-object p1
    invoke-direct { p0, p1 }, Landroidx/core/graphics/drawable/d;->f([I)Z
    return-void
.end method

.method public setVisible(ZZ)Z
  .registers 4
  .line 1
    invoke-super { p0, p1, p2 }, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z
    move-result v0
    if-nez v0, :L1
    iget-object v0, p0, Landroidx/core/graphics/drawable/d;->g:Landroid/graphics/drawable/Drawable;
    invoke-virtual { v0, p1, p2 }, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z
    move-result p1
    if-eqz p1, :L0
    goto :L1
  :L0
    const/4 p1, 0
    goto :L2
  :L1
    const/4 p1, 1
  :L2
    return p1
.end method

.method public unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V
  .registers 3
  .line 1
    invoke-virtual { p0, p2 }, Landroid/graphics/drawable/Drawable;->unscheduleSelf(Ljava/lang/Runnable;)V
    return-void
.end method
