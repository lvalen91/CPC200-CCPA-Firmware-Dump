.class Lc/a/l/a/b;
.super Landroid/graphics/drawable/Drawable;
.implements Landroid/graphics/drawable/Drawable$Callback;
.source "SourceFile"

.annotation system Ldalvik/annotation/MemberClasses;
  value = {
    Lc/a/l/a/b$b;,
    Lc/a/l/a/b$c;,
    Lc/a/l/a/b$d;
  }
.end annotation

.field private b:Lc/a/l/a/b$d;

.field private c:Landroid/graphics/Rect;

.field private d:Landroid/graphics/drawable/Drawable;

.field private e:Landroid/graphics/drawable/Drawable;

.field private f:I

.field private g:Z

.field private h:I

.field private i:Z

.field private j:Ljava/lang/Runnable;

.field private k:J

.field private l:J

.field private m:Lc/a/l/a/b$c;

.method constructor <init>()V
  .registers 2
  .line 1
    invoke-direct { p0 }, Landroid/graphics/drawable/Drawable;-><init>()V
    const/16 v0, 255
  .line 2
    iput v0, p0, Lc/a/l/a/b;->f:I
    const/4 v0, -1
  .line 3
    iput v0, p0, Lc/a/l/a/b;->h:I
    return-void
.end method

.method private d(Landroid/graphics/drawable/Drawable;)V
  .catchall { :L1 .. :L8 } :L9
  .registers 6
  .line 1
    iget-object v0, p0, Lc/a/l/a/b;->m:Lc/a/l/a/b$c;
    if-nez v0, :L0
  .line 2
    new-instance v0, Lc/a/l/a/b$c;
    invoke-direct { v0 }, Lc/a/l/a/b$c;-><init>()V
    iput-object v0, p0, Lc/a/l/a/b;->m:Lc/a/l/a/b$c;
  :L0
  .line 3
    iget-object v0, p0, Lc/a/l/a/b;->m:Lc/a/l/a/b$c;
    invoke-virtual { p1 }, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;
    move-result-object v1
    invoke-virtual { v0, v1 }, Lc/a/l/a/b$c;->b(Landroid/graphics/drawable/Drawable$Callback;)Lc/a/l/a/b$c;
    invoke-virtual { p1, v0 }, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V
  :L1
  .line 4
    iget-object v0, p0, Lc/a/l/a/b;->b:Lc/a/l/a/b$d;
    iget v0, v0, Lc/a/l/a/b$d;->A:I
    if-gtz v0, :L2
    iget-boolean v0, p0, Lc/a/l/a/b;->g:Z
    if-eqz v0, :L2
  .line 5
    iget v0, p0, Lc/a/l/a/b;->f:I
    invoke-virtual { p1, v0 }, Landroid/graphics/drawable/Drawable;->setAlpha(I)V
  :L2
  .line 6
    iget-object v0, p0, Lc/a/l/a/b;->b:Lc/a/l/a/b$d;
    iget-boolean v0, v0, Lc/a/l/a/b$d;->E:Z
    if-eqz v0, :L3
  .line 7
    iget-object v0, p0, Lc/a/l/a/b;->b:Lc/a/l/a/b$d;
    iget-object v0, v0, Lc/a/l/a/b$d;->D:Landroid/graphics/ColorFilter;
    invoke-virtual { p1, v0 }, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V
    goto :L5
  :L3
  .line 8
    iget-object v0, p0, Lc/a/l/a/b;->b:Lc/a/l/a/b$d;
    iget-boolean v0, v0, Lc/a/l/a/b$d;->H:Z
    if-eqz v0, :L4
  .line 9
    iget-object v0, p0, Lc/a/l/a/b;->b:Lc/a/l/a/b$d;
    iget-object v0, v0, Lc/a/l/a/b$d;->F:Landroid/content/res/ColorStateList;
    invoke-static { p1, v0 }, Landroidx/core/graphics/drawable/a;->o(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V
  :L4
  .line 10
    iget-object v0, p0, Lc/a/l/a/b;->b:Lc/a/l/a/b$d;
    iget-boolean v0, v0, Lc/a/l/a/b$d;->I:Z
    if-eqz v0, :L5
  .line 11
    iget-object v0, p0, Lc/a/l/a/b;->b:Lc/a/l/a/b$d;
    iget-object v0, v0, Lc/a/l/a/b$d;->G:Landroid/graphics/PorterDuff$Mode;
    invoke-static { p1, v0 }, Landroidx/core/graphics/drawable/a;->p(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V
  :L5
  .line 12
    invoke-virtual { p0 }, Landroid/graphics/drawable/Drawable;->isVisible()Z
    move-result v0
    const/4 v1, 1
    invoke-virtual { p1, v0, v1 }, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z
  .line 13
    iget-object v0, p0, Lc/a/l/a/b;->b:Lc/a/l/a/b$d;
    iget-boolean v0, v0, Lc/a/l/a/b$d;->x:Z
    invoke-virtual { p1, v0 }, Landroid/graphics/drawable/Drawable;->setDither(Z)V
  .line 14
    invoke-virtual { p0 }, Landroid/graphics/drawable/Drawable;->getState()[I
    move-result-object v0
    invoke-virtual { p1, v0 }, Landroid/graphics/drawable/Drawable;->setState([I)Z
  .line 15
    invoke-virtual { p0 }, Landroid/graphics/drawable/Drawable;->getLevel()I
    move-result v0
    invoke-virtual { p1, v0 }, Landroid/graphics/drawable/Drawable;->setLevel(I)Z
  .line 16
    invoke-virtual { p0 }, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;
    move-result-object v0
    invoke-virtual { p1, v0 }, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V
  .line 17
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v1, 23
    if-lt v0, v1, :L6
  .line 18
    invoke-static { p0 }, Landroidx/core/graphics/drawable/a;->f(Landroid/graphics/drawable/Drawable;)I
    move-result v0
    invoke-static { p1, v0 }, Landroidx/core/graphics/drawable/a;->m(Landroid/graphics/drawable/Drawable;I)Z
  :L6
  .line 19
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v1, 19
    if-lt v0, v1, :L7
  .line 20
    iget-object v0, p0, Lc/a/l/a/b;->b:Lc/a/l/a/b$d;
    iget-boolean v0, v0, Lc/a/l/a/b$d;->C:Z
    invoke-static { p1, v0 }, Landroidx/core/graphics/drawable/a;->j(Landroid/graphics/drawable/Drawable;Z)V
  :L7
  .line 21
    iget-object v0, p0, Lc/a/l/a/b;->c:Landroid/graphics/Rect;
  .line 22
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v2, 21
    if-lt v1, v2, :L8
    if-eqz v0, :L8
  .line 23
    iget v1, v0, Landroid/graphics/Rect;->left:I
    iget v2, v0, Landroid/graphics/Rect;->top:I
    iget v3, v0, Landroid/graphics/Rect;->right:I
    iget v0, v0, Landroid/graphics/Rect;->bottom:I
    invoke-static { p1, v1, v2, v3, v0 }, Landroidx/core/graphics/drawable/a;->l(Landroid/graphics/drawable/Drawable;IIII)V
  :L8
  .line 24
    iget-object v0, p0, Lc/a/l/a/b;->m:Lc/a/l/a/b$c;
    invoke-virtual { v0 }, Lc/a/l/a/b$c;->a()Landroid/graphics/drawable/Drawable$Callback;
    move-result-object v0
    invoke-virtual { p1, v0 }, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V
    return-void
  :L9
    move-exception v0
    iget-object v1, p0, Lc/a/l/a/b;->m:Lc/a/l/a/b$c;
    invoke-virtual { v1 }, Lc/a/l/a/b$c;->a()Landroid/graphics/drawable/Drawable$Callback;
    move-result-object v1
    invoke-virtual { p1, v1 }, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V
  .line 25
    throw v0
.end method

.method private e()Z
  .registers 3
  .line 1
    invoke-virtual { p0 }, Lc/a/l/a/b;->isAutoMirrored()Z
    move-result v0
    const/4 v1, 1
    if-eqz v0, :L0
  .line 2
    invoke-static { p0 }, Landroidx/core/graphics/drawable/a;->f(Landroid/graphics/drawable/Drawable;)I
    move-result v0
    if-ne v0, v1, :L0
    goto :L1
  :L0
    const/4 v1, 0
  :L1
    return v1
.end method

.method static f(Landroid/content/res/Resources;I)I
  .registers 2
    if-nez p0, :L0
    goto :L1
  :L0
  .line 1
    invoke-virtual { p0 }, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;
    move-result-object p0
    iget p1, p0, Landroid/util/DisplayMetrics;->densityDpi:I
  :L1
    if-nez p1, :L2
    const/16 p1, 160
  :L2
    return p1
.end method

.method a(Z)V
  .registers 15
    const/4 v0, 1
  .line 1
    iput-boolean v0, p0, Lc/a/l/a/b;->g:Z
  .line 2
    invoke-static { }, Landroid/os/SystemClock;->uptimeMillis()J
    move-result-wide v1
  .line 3
    iget-object v3, p0, Lc/a/l/a/b;->d:Landroid/graphics/drawable/Drawable;
    const-wide/16 v4, 255
    const/4 v6, 0
    const-wide/16 v7, 0
    if-eqz v3, :L1
  .line 4
    iget-wide v9, p0, Lc/a/l/a/b;->k:J
    cmp-long v11, v9, v7
    if-eqz v11, :L2
    cmp-long v11, v9, v1
    if-gtz v11, :L0
  .line 5
    iget v9, p0, Lc/a/l/a/b;->f:I
    invoke-virtual { v3, v9 }, Landroid/graphics/drawable/Drawable;->setAlpha(I)V
  .line 6
    iput-wide v7, p0, Lc/a/l/a/b;->k:J
    goto :L2
  :L0
    sub-long/2addr v9, v1
    mul-long v9, v9, v4
    long-to-int v10, v9
  .line 7
    iget-object v9, p0, Lc/a/l/a/b;->b:Lc/a/l/a/b$d;
    iget v9, v9, Lc/a/l/a/b$d;->A:I
    div-int/2addr v10, v9
    rsub-int v9, v10, 255
  .line 8
    iget v10, p0, Lc/a/l/a/b;->f:I
    mul-int v9, v9, v10
    div-int/lit16 v9, v9, 255
    invoke-virtual { v3, v9 }, Landroid/graphics/drawable/Drawable;->setAlpha(I)V
    const/4 v3, 1
    goto :L3
  :L1
  .line 9
    iput-wide v7, p0, Lc/a/l/a/b;->k:J
  :L2
    const/4 v3, 0
  :L3
  .line 10
    iget-object v9, p0, Lc/a/l/a/b;->e:Landroid/graphics/drawable/Drawable;
    if-eqz v9, :L5
  .line 11
    iget-wide v10, p0, Lc/a/l/a/b;->l:J
    cmp-long v12, v10, v7
    if-eqz v12, :L6
    cmp-long v12, v10, v1
    if-gtz v12, :L4
  .line 12
    invoke-virtual { v9, v6, v6 }, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z
    const/4 v0, 0
  .line 13
    iput-object v0, p0, Lc/a/l/a/b;->e:Landroid/graphics/drawable/Drawable;
  .line 14
    iput-wide v7, p0, Lc/a/l/a/b;->l:J
    goto :L6
  :L4
    sub-long/2addr v10, v1
    mul-long v10, v10, v4
    long-to-int v3, v10
  .line 15
    iget-object v4, p0, Lc/a/l/a/b;->b:Lc/a/l/a/b$d;
    iget v4, v4, Lc/a/l/a/b$d;->B:I
    div-int/2addr v3, v4
  .line 16
    iget v4, p0, Lc/a/l/a/b;->f:I
    mul-int v3, v3, v4
    div-int/lit16 v3, v3, 255
    invoke-virtual { v9, v3 }, Landroid/graphics/drawable/Drawable;->setAlpha(I)V
    goto :L7
  :L5
  .line 17
    iput-wide v7, p0, Lc/a/l/a/b;->l:J
  :L6
    move v0, v3
  :L7
    if-eqz p1, :L8
    if-eqz v0, :L8
  .line 18
    iget-object p1, p0, Lc/a/l/a/b;->j:Ljava/lang/Runnable;
    const-wide/16 v3, 16
    add-long/2addr v1, v3
    invoke-virtual { p0, p1, v1, v2 }, Landroid/graphics/drawable/Drawable;->scheduleSelf(Ljava/lang/Runnable;J)V
  :L8
    return-void
.end method

.method public applyTheme(Landroid/content/res/Resources$Theme;)V
  .registers 3
  .line 1
    iget-object v0, p0, Lc/a/l/a/b;->b:Lc/a/l/a/b$d;
    invoke-virtual { v0, p1 }, Lc/a/l/a/b$d;->b(Landroid/content/res/Resources$Theme;)V
    return-void
.end method

.method b()Lc/a/l/a/b$d;
  .registers 1
    const p0, 0
    throw p0
.end method

.method c()I
  .registers 2
  .line 1
    iget v0, p0, Lc/a/l/a/b;->h:I
    return v0
.end method

.method public canApplyTheme()Z
  .registers 2
  .line 1
    iget-object v0, p0, Lc/a/l/a/b;->b:Lc/a/l/a/b$d;
    invoke-virtual { v0 }, Lc/a/l/a/b$d;->canApplyTheme()Z
    move-result v0
    return v0
.end method

.method public draw(Landroid/graphics/Canvas;)V
  .registers 3
  .line 1
    iget-object v0, p0, Lc/a/l/a/b;->d:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :L0
  .line 2
    invoke-virtual { v0, p1 }, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V
  :L0
  .line 3
    iget-object v0, p0, Lc/a/l/a/b;->e:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :L1
  .line 4
    invoke-virtual { v0, p1 }, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V
  :L1
    return-void
.end method

.method g(I)Z
  .registers 11
  .line 1
    iget v0, p0, Lc/a/l/a/b;->h:I
    const/4 v1, 0
    if-ne p1, v0, :L0
    return v1
  :L0
  .line 2
    invoke-static { }, Landroid/os/SystemClock;->uptimeMillis()J
    move-result-wide v2
  .line 3
    iget-object v0, p0, Lc/a/l/a/b;->b:Lc/a/l/a/b$d;
    iget v0, v0, Lc/a/l/a/b$d;->B:I
    const/4 v4, 0
    const-wide/16 v5, 0
    if-lez v0, :L3
  .line 4
    iget-object v0, p0, Lc/a/l/a/b;->e:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :L1
  .line 5
    invoke-virtual { v0, v1, v1 }, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z
  :L1
  .line 6
    iget-object v0, p0, Lc/a/l/a/b;->d:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :L2
  .line 7
    iput-object v0, p0, Lc/a/l/a/b;->e:Landroid/graphics/drawable/Drawable;
  .line 8
    iget-object v0, p0, Lc/a/l/a/b;->b:Lc/a/l/a/b$d;
    iget v0, v0, Lc/a/l/a/b$d;->B:I
    int-to-long v0, v0
    add-long/2addr v0, v2
    iput-wide v0, p0, Lc/a/l/a/b;->l:J
    goto :L4
  :L2
  .line 9
    iput-object v4, p0, Lc/a/l/a/b;->e:Landroid/graphics/drawable/Drawable;
  .line 10
    iput-wide v5, p0, Lc/a/l/a/b;->l:J
    goto :L4
  :L3
  .line 11
    iget-object v0, p0, Lc/a/l/a/b;->d:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :L4
  .line 12
    invoke-virtual { v0, v1, v1 }, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z
  :L4
    if-ltz p1, :L6
  .line 13
    iget-object v0, p0, Lc/a/l/a/b;->b:Lc/a/l/a/b$d;
    iget v1, v0, Lc/a/l/a/b$d;->h:I
    if-ge p1, v1, :L6
  .line 14
    invoke-virtual { v0, p1 }, Lc/a/l/a/b$d;->g(I)Landroid/graphics/drawable/Drawable;
    move-result-object v0
  .line 15
    iput-object v0, p0, Lc/a/l/a/b;->d:Landroid/graphics/drawable/Drawable;
  .line 16
    iput p1, p0, Lc/a/l/a/b;->h:I
    if-eqz v0, :L7
  .line 17
    iget-object p1, p0, Lc/a/l/a/b;->b:Lc/a/l/a/b$d;
    iget p1, p1, Lc/a/l/a/b$d;->A:I
    if-lez p1, :L5
    int-to-long v7, p1
    add-long/2addr v2, v7
  .line 18
    iput-wide v2, p0, Lc/a/l/a/b;->k:J
  :L5
  .line 19
    invoke-direct { p0, v0 }, Lc/a/l/a/b;->d(Landroid/graphics/drawable/Drawable;)V
    goto :L7
  :L6
  .line 20
    iput-object v4, p0, Lc/a/l/a/b;->d:Landroid/graphics/drawable/Drawable;
    const/4 p1, -1
  .line 21
    iput p1, p0, Lc/a/l/a/b;->h:I
  :L7
  .line 22
    iget-wide v0, p0, Lc/a/l/a/b;->k:J
    const/4 p1, 1
    cmp-long v2, v0, v5
    if-nez v2, :L8
    iget-wide v0, p0, Lc/a/l/a/b;->l:J
    cmp-long v2, v0, v5
    if-eqz v2, :L11
  :L8
  .line 23
    iget-object v0, p0, Lc/a/l/a/b;->j:Ljava/lang/Runnable;
    if-nez v0, :L9
  .line 24
    new-instance v0, Lc/a/l/a/b$a;
    invoke-direct { v0, p0 }, Lc/a/l/a/b$a;-><init>(Lc/a/l/a/b;)V
    iput-object v0, p0, Lc/a/l/a/b;->j:Ljava/lang/Runnable;
    goto :L10
  :L9
  .line 25
    invoke-virtual { p0, v0 }, Landroid/graphics/drawable/Drawable;->unscheduleSelf(Ljava/lang/Runnable;)V
  :L10
  .line 26
    invoke-virtual { p0, p1 }, Lc/a/l/a/b;->a(Z)V
  :L11
  .line 27
    invoke-virtual { p0 }, Landroid/graphics/drawable/Drawable;->invalidateSelf()V
    return p1
.end method

.method public getAlpha()I
  .registers 2
  .line 1
    iget v0, p0, Lc/a/l/a/b;->f:I
    return v0
.end method

.method public getChangingConfigurations()I
  .registers 3
  .line 1
    invoke-super { p0 }, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I
    move-result v0
    iget-object v1, p0, Lc/a/l/a/b;->b:Lc/a/l/a/b$d;
  .line 2
    invoke-virtual { v1 }, Lc/a/l/a/b$d;->getChangingConfigurations()I
    move-result v1
    or-int/2addr v0, v1
    return v0
.end method

.method public final getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
  .registers 3
  .line 1
    iget-object v0, p0, Lc/a/l/a/b;->b:Lc/a/l/a/b$d;
    invoke-virtual { v0 }, Lc/a/l/a/b$d;->c()Z
    move-result v0
    if-eqz v0, :L0
  .line 2
    iget-object v0, p0, Lc/a/l/a/b;->b:Lc/a/l/a/b$d;
    invoke-virtual { p0 }, Lc/a/l/a/b;->getChangingConfigurations()I
    move-result v1
    iput v1, v0, Lc/a/l/a/b$d;->d:I
  .line 3
    iget-object v0, p0, Lc/a/l/a/b;->b:Lc/a/l/a/b$d;
    return-object v0
  :L0
    const/4 v0, 0
    return-object v0
.end method

.method public getCurrent()Landroid/graphics/drawable/Drawable;
  .registers 2
  .line 1
    iget-object v0, p0, Lc/a/l/a/b;->d:Landroid/graphics/drawable/Drawable;
    return-object v0
.end method

.method public getHotspotBounds(Landroid/graphics/Rect;)V
  .registers 3
  .line 1
    iget-object v0, p0, Lc/a/l/a/b;->c:Landroid/graphics/Rect;
    if-eqz v0, :L0
  .line 2
    invoke-virtual { p1, v0 }, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V
    goto :L1
  :L0
  .line 3
    invoke-super { p0, p1 }, Landroid/graphics/drawable/Drawable;->getHotspotBounds(Landroid/graphics/Rect;)V
  :L1
    return-void
.end method

.method public getIntrinsicHeight()I
  .registers 2
  .line 1
    iget-object v0, p0, Lc/a/l/a/b;->b:Lc/a/l/a/b$d;
    invoke-virtual { v0 }, Lc/a/l/a/b$d;->q()Z
    move-result v0
    if-eqz v0, :L0
  .line 2
    iget-object v0, p0, Lc/a/l/a/b;->b:Lc/a/l/a/b$d;
    invoke-virtual { v0 }, Lc/a/l/a/b$d;->i()I
    move-result v0
    return v0
  :L0
  .line 3
    iget-object v0, p0, Lc/a/l/a/b;->d:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :L1
    invoke-virtual { v0 }, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I
    move-result v0
    goto :L2
  :L1
    const/4 v0, -1
  :L2
    return v0
.end method

.method public getIntrinsicWidth()I
  .registers 2
  .line 1
    iget-object v0, p0, Lc/a/l/a/b;->b:Lc/a/l/a/b$d;
    invoke-virtual { v0 }, Lc/a/l/a/b$d;->q()Z
    move-result v0
    if-eqz v0, :L0
  .line 2
    iget-object v0, p0, Lc/a/l/a/b;->b:Lc/a/l/a/b$d;
    invoke-virtual { v0 }, Lc/a/l/a/b$d;->m()I
    move-result v0
    return v0
  :L0
  .line 3
    iget-object v0, p0, Lc/a/l/a/b;->d:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :L1
    invoke-virtual { v0 }, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I
    move-result v0
    goto :L2
  :L1
    const/4 v0, -1
  :L2
    return v0
.end method

.method public getMinimumHeight()I
  .registers 2
  .line 1
    iget-object v0, p0, Lc/a/l/a/b;->b:Lc/a/l/a/b$d;
    invoke-virtual { v0 }, Lc/a/l/a/b$d;->q()Z
    move-result v0
    if-eqz v0, :L0
  .line 2
    iget-object v0, p0, Lc/a/l/a/b;->b:Lc/a/l/a/b$d;
    invoke-virtual { v0 }, Lc/a/l/a/b$d;->j()I
    move-result v0
    return v0
  :L0
  .line 3
    iget-object v0, p0, Lc/a/l/a/b;->d:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :L1
    invoke-virtual { v0 }, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I
    move-result v0
    goto :L2
  :L1
    const/4 v0, 0
  :L2
    return v0
.end method

.method public getMinimumWidth()I
  .registers 2
  .line 1
    iget-object v0, p0, Lc/a/l/a/b;->b:Lc/a/l/a/b$d;
    invoke-virtual { v0 }, Lc/a/l/a/b$d;->q()Z
    move-result v0
    if-eqz v0, :L0
  .line 2
    iget-object v0, p0, Lc/a/l/a/b;->b:Lc/a/l/a/b$d;
    invoke-virtual { v0 }, Lc/a/l/a/b$d;->k()I
    move-result v0
    return v0
  :L0
  .line 3
    iget-object v0, p0, Lc/a/l/a/b;->d:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :L1
    invoke-virtual { v0 }, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I
    move-result v0
    goto :L2
  :L1
    const/4 v0, 0
  :L2
    return v0
.end method

.method public getOpacity()I
  .registers 2
  .line 1
    iget-object v0, p0, Lc/a/l/a/b;->d:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :L1
    invoke-virtual { v0 }, Landroid/graphics/drawable/Drawable;->isVisible()Z
    move-result v0
    if-nez v0, :L0
    goto :L1
  :L0
  .line 2
    iget-object v0, p0, Lc/a/l/a/b;->b:Lc/a/l/a/b$d;
    invoke-virtual { v0 }, Lc/a/l/a/b$d;->n()I
    move-result v0
    goto :L2
  :L1
    const/4 v0, -2
  :L2
    return v0
.end method

.method public getOutline(Landroid/graphics/Outline;)V
  .registers 3
  .line 1
    iget-object v0, p0, Lc/a/l/a/b;->d:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :L0
  .line 2
    invoke-static { v0, p1 }, Lc/a/l/a/b$b;->b(Landroid/graphics/drawable/Drawable;Landroid/graphics/Outline;)V
  :L0
    return-void
.end method

.method public getPadding(Landroid/graphics/Rect;)Z
  .registers 5
  .line 1
    iget-object v0, p0, Lc/a/l/a/b;->b:Lc/a/l/a/b$d;
    invoke-virtual { v0 }, Lc/a/l/a/b$d;->l()Landroid/graphics/Rect;
    move-result-object v0
    if-eqz v0, :L1
  .line 2
    invoke-virtual { p1, v0 }, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V
  .line 3
    iget v1, v0, Landroid/graphics/Rect;->left:I
    iget v2, v0, Landroid/graphics/Rect;->top:I
    or-int/2addr v1, v2
    iget v2, v0, Landroid/graphics/Rect;->bottom:I
    or-int/2addr v1, v2
    iget v0, v0, Landroid/graphics/Rect;->right:I
    or-int/2addr v0, v1
    if-eqz v0, :L0
    const/4 v0, 1
    goto :L3
  :L0
    const/4 v0, 0
    goto :L3
  :L1
  .line 4
    iget-object v0, p0, Lc/a/l/a/b;->d:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :L2
  .line 5
    invoke-virtual { v0, p1 }, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z
    move-result v0
    goto :L3
  :L2
  .line 6
    invoke-super { p0, p1 }, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z
    move-result v0
  :L3
  .line 7
    invoke-direct { p0 }, Lc/a/l/a/b;->e()Z
    move-result v1
    if-eqz v1, :L4
  .line 8
    iget v1, p1, Landroid/graphics/Rect;->left:I
  .line 9
    iget v2, p1, Landroid/graphics/Rect;->right:I
    iput v2, p1, Landroid/graphics/Rect;->left:I
  .line 10
    iput v1, p1, Landroid/graphics/Rect;->right:I
  :L4
    return v0
.end method

.method h(Lc/a/l/a/b$d;)V
  .registers 3
  .line 1
    iput-object p1, p0, Lc/a/l/a/b;->b:Lc/a/l/a/b$d;
  .line 2
    iget v0, p0, Lc/a/l/a/b;->h:I
    if-ltz v0, :L0
  .line 3
    invoke-virtual { p1, v0 }, Lc/a/l/a/b$d;->g(I)Landroid/graphics/drawable/Drawable;
    move-result-object p1
    iput-object p1, p0, Lc/a/l/a/b;->d:Landroid/graphics/drawable/Drawable;
    if-eqz p1, :L0
  .line 4
    invoke-direct { p0, p1 }, Lc/a/l/a/b;->d(Landroid/graphics/drawable/Drawable;)V
  :L0
    const/4 p1, 0
  .line 5
    iput-object p1, p0, Lc/a/l/a/b;->e:Landroid/graphics/drawable/Drawable;
    return-void
.end method

.method final i(Landroid/content/res/Resources;)V
  .registers 3
  .line 1
    iget-object v0, p0, Lc/a/l/a/b;->b:Lc/a/l/a/b$d;
    invoke-virtual { v0, p1 }, Lc/a/l/a/b$d;->y(Landroid/content/res/Resources;)V
    return-void
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
  .registers 3
  .line 1
    iget-object v0, p0, Lc/a/l/a/b;->b:Lc/a/l/a/b$d;
    if-eqz v0, :L0
  .line 2
    invoke-virtual { v0 }, Lc/a/l/a/b$d;->p()V
  :L0
  .line 3
    iget-object v0, p0, Lc/a/l/a/b;->d:Landroid/graphics/drawable/Drawable;
    if-ne p1, v0, :L1
    invoke-virtual { p0 }, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;
    move-result-object p1
    if-eqz p1, :L1
  .line 4
    invoke-virtual { p0 }, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;
    move-result-object p1
    invoke-interface { p1, p0 }, Landroid/graphics/drawable/Drawable$Callback;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
  :L1
    return-void
.end method

.method public isAutoMirrored()Z
  .registers 2
  .line 1
    iget-object v0, p0, Lc/a/l/a/b;->b:Lc/a/l/a/b$d;
    iget-boolean v0, v0, Lc/a/l/a/b$d;->C:Z
    return v0
.end method

.method public jumpToCurrentState()V
  .registers 8
  .line 1
    iget-object v0, p0, Lc/a/l/a/b;->e:Landroid/graphics/drawable/Drawable;
    const/4 v1, 1
    if-eqz v0, :L0
  .line 2
    invoke-virtual { v0 }, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V
    const/4 v0, 0
  .line 3
    iput-object v0, p0, Lc/a/l/a/b;->e:Landroid/graphics/drawable/Drawable;
    const/4 v0, 1
    goto :L1
  :L0
    const/4 v0, 0
  :L1
  .line 4
    iget-object v2, p0, Lc/a/l/a/b;->d:Landroid/graphics/drawable/Drawable;
    if-eqz v2, :L2
  .line 5
    invoke-virtual { v2 }, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V
  .line 6
    iget-boolean v2, p0, Lc/a/l/a/b;->g:Z
    if-eqz v2, :L2
  .line 7
    iget-object v2, p0, Lc/a/l/a/b;->d:Landroid/graphics/drawable/Drawable;
    iget v3, p0, Lc/a/l/a/b;->f:I
    invoke-virtual { v2, v3 }, Landroid/graphics/drawable/Drawable;->setAlpha(I)V
  :L2
  .line 8
    iget-wide v2, p0, Lc/a/l/a/b;->l:J
    const-wide/16 v4, 0
    cmp-long v6, v2, v4
    if-eqz v6, :L3
  .line 9
    iput-wide v4, p0, Lc/a/l/a/b;->l:J
    const/4 v0, 1
  :L3
  .line 10
    iget-wide v2, p0, Lc/a/l/a/b;->k:J
    cmp-long v6, v2, v4
    if-eqz v6, :L4
  .line 11
    iput-wide v4, p0, Lc/a/l/a/b;->k:J
    goto :L5
  :L4
    move v1, v0
  :L5
    if-eqz v1, :L6
  .line 12
    invoke-virtual { p0 }, Landroid/graphics/drawable/Drawable;->invalidateSelf()V
  :L6
    return-void
.end method

.method public mutate()Landroid/graphics/drawable/Drawable;
  .registers 2
  .line 1
    iget-boolean v0, p0, Lc/a/l/a/b;->i:Z
    if-nez v0, :L0
    invoke-super { p0 }, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;
    move-result-object v0
    if-ne v0, p0, :L0
  .line 2
    invoke-virtual { p0 }, Lc/a/l/a/b;->b()Lc/a/l/a/b$d;
    move-result-object v0
  .line 3
    invoke-virtual { v0 }, Lc/a/l/a/b$d;->r()V
  .line 4
    invoke-virtual { p0, v0 }, Lc/a/l/a/b;->h(Lc/a/l/a/b$d;)V
    const/4 v0, 1
  .line 5
    iput-boolean v0, p0, Lc/a/l/a/b;->i:Z
  :L0
    return-object p0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
  .registers 3
  .line 1
    iget-object v0, p0, Lc/a/l/a/b;->e:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :L0
  .line 2
    invoke-virtual { v0, p1 }, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V
  :L0
  .line 3
    iget-object v0, p0, Lc/a/l/a/b;->d:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :L1
  .line 4
    invoke-virtual { v0, p1 }, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V
  :L1
    return-void
.end method

.method public onLayoutDirectionChanged(I)Z
  .registers 4
  .line 1
    iget-object v0, p0, Lc/a/l/a/b;->b:Lc/a/l/a/b$d;
    invoke-virtual { p0 }, Lc/a/l/a/b;->c()I
    move-result v1
    invoke-virtual { v0, p1, v1 }, Lc/a/l/a/b$d;->w(II)Z
    move-result p1
    return p1
.end method

.method protected onLevelChange(I)Z
  .registers 3
  .line 1
    iget-object v0, p0, Lc/a/l/a/b;->e:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :L0
  .line 2
    invoke-virtual { v0, p1 }, Landroid/graphics/drawable/Drawable;->setLevel(I)Z
    move-result p1
    return p1
  :L0
  .line 3
    iget-object v0, p0, Lc/a/l/a/b;->d:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :L1
  .line 4
    invoke-virtual { v0, p1 }, Landroid/graphics/drawable/Drawable;->setLevel(I)Z
    move-result p1
    return p1
  :L1
    const/4 p1, 0
    return p1
.end method

.method protected onStateChange([I)Z
  .registers 3
  .line 1
    iget-object v0, p0, Lc/a/l/a/b;->e:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :L0
  .line 2
    invoke-virtual { v0, p1 }, Landroid/graphics/drawable/Drawable;->setState([I)Z
    move-result p1
    return p1
  :L0
  .line 3
    iget-object v0, p0, Lc/a/l/a/b;->d:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :L1
  .line 4
    invoke-virtual { v0, p1 }, Landroid/graphics/drawable/Drawable;->setState([I)Z
    move-result p1
    return p1
  :L1
    const/4 p1, 0
    return p1
.end method

.method public scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V
  .registers 6
  .line 1
    iget-object v0, p0, Lc/a/l/a/b;->d:Landroid/graphics/drawable/Drawable;
    if-ne p1, v0, :L0
    invoke-virtual { p0 }, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;
    move-result-object p1
    if-eqz p1, :L0
  .line 2
    invoke-virtual { p0 }, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;
    move-result-object p1
    invoke-interface { p1, p0, p2, p3, p4 }, Landroid/graphics/drawable/Drawable$Callback;->scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V
  :L0
    return-void
.end method

.method public setAlpha(I)V
  .registers 8
  .line 1
    iget-boolean v0, p0, Lc/a/l/a/b;->g:Z
    if-eqz v0, :L0
    iget v0, p0, Lc/a/l/a/b;->f:I
    if-eq v0, p1, :L2
  :L0
    const/4 v0, 1
  .line 2
    iput-boolean v0, p0, Lc/a/l/a/b;->g:Z
  .line 3
    iput p1, p0, Lc/a/l/a/b;->f:I
  .line 4
    iget-object v0, p0, Lc/a/l/a/b;->d:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :L2
  .line 5
    iget-wide v1, p0, Lc/a/l/a/b;->k:J
    const-wide/16 v3, 0
    cmp-long v5, v1, v3
    if-nez v5, :L1
  .line 6
    invoke-virtual { v0, p1 }, Landroid/graphics/drawable/Drawable;->setAlpha(I)V
    goto :L2
  :L1
    const/4 p1, 0
  .line 7
    invoke-virtual { p0, p1 }, Lc/a/l/a/b;->a(Z)V
  :L2
    return-void
.end method

.method public setAutoMirrored(Z)V
  .registers 4
  .line 1
    iget-object v0, p0, Lc/a/l/a/b;->b:Lc/a/l/a/b$d;
    iget-boolean v1, v0, Lc/a/l/a/b$d;->C:Z
    if-eq v1, p1, :L0
  .line 2
    iput-boolean p1, v0, Lc/a/l/a/b$d;->C:Z
  .line 3
    iget-object v0, p0, Lc/a/l/a/b;->d:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :L0
  .line 4
    invoke-static { v0, p1 }, Landroidx/core/graphics/drawable/a;->j(Landroid/graphics/drawable/Drawable;Z)V
  :L0
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
  .registers 4
  .line 1
    iget-object v0, p0, Lc/a/l/a/b;->b:Lc/a/l/a/b$d;
    const/4 v1, 1
    iput-boolean v1, v0, Lc/a/l/a/b$d;->E:Z
  .line 2
    iget-object v1, v0, Lc/a/l/a/b$d;->D:Landroid/graphics/ColorFilter;
    if-eq v1, p1, :L0
  .line 3
    iput-object p1, v0, Lc/a/l/a/b$d;->D:Landroid/graphics/ColorFilter;
  .line 4
    iget-object v0, p0, Lc/a/l/a/b;->d:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :L0
  .line 5
    invoke-virtual { v0, p1 }, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V
  :L0
    return-void
.end method

.method public setDither(Z)V
  .registers 4
  .line 1
    iget-object v0, p0, Lc/a/l/a/b;->b:Lc/a/l/a/b$d;
    iget-boolean v1, v0, Lc/a/l/a/b$d;->x:Z
    if-eq v1, p1, :L0
  .line 2
    iput-boolean p1, v0, Lc/a/l/a/b$d;->x:Z
  .line 3
    iget-object v0, p0, Lc/a/l/a/b;->d:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :L0
  .line 4
    invoke-virtual { v0, p1 }, Landroid/graphics/drawable/Drawable;->setDither(Z)V
  :L0
    return-void
.end method

.method public setHotspot(FF)V
  .registers 4
  .line 1
    iget-object v0, p0, Lc/a/l/a/b;->d:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :L0
  .line 2
    invoke-static { v0, p1, p2 }, Landroidx/core/graphics/drawable/a;->k(Landroid/graphics/drawable/Drawable;FF)V
  :L0
    return-void
.end method

.method public setHotspotBounds(IIII)V
  .registers 6
  .line 1
    iget-object v0, p0, Lc/a/l/a/b;->c:Landroid/graphics/Rect;
    if-nez v0, :L0
  .line 2
    new-instance v0, Landroid/graphics/Rect;
    invoke-direct { v0, p1, p2, p3, p4 }, Landroid/graphics/Rect;-><init>(IIII)V
    iput-object v0, p0, Lc/a/l/a/b;->c:Landroid/graphics/Rect;
    goto :L1
  :L0
  .line 3
    invoke-virtual { v0, p1, p2, p3, p4 }, Landroid/graphics/Rect;->set(IIII)V
  :L1
  .line 4
    iget-object v0, p0, Lc/a/l/a/b;->d:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :L2
  .line 5
    invoke-static { v0, p1, p2, p3, p4 }, Landroidx/core/graphics/drawable/a;->l(Landroid/graphics/drawable/Drawable;IIII)V
  :L2
    return-void
.end method

.method public setTintList(Landroid/content/res/ColorStateList;)V
  .registers 4
  .line 1
    iget-object v0, p0, Lc/a/l/a/b;->b:Lc/a/l/a/b$d;
    const/4 v1, 1
    iput-boolean v1, v0, Lc/a/l/a/b$d;->H:Z
  .line 2
    iget-object v1, v0, Lc/a/l/a/b$d;->F:Landroid/content/res/ColorStateList;
    if-eq v1, p1, :L0
  .line 3
    iput-object p1, v0, Lc/a/l/a/b$d;->F:Landroid/content/res/ColorStateList;
  .line 4
    iget-object v0, p0, Lc/a/l/a/b;->d:Landroid/graphics/drawable/Drawable;
    invoke-static { v0, p1 }, Landroidx/core/graphics/drawable/a;->o(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V
  :L0
    return-void
.end method

.method public setTintMode(Landroid/graphics/PorterDuff$Mode;)V
  .registers 4
  .line 1
    iget-object v0, p0, Lc/a/l/a/b;->b:Lc/a/l/a/b$d;
    const/4 v1, 1
    iput-boolean v1, v0, Lc/a/l/a/b$d;->I:Z
  .line 2
    iget-object v1, v0, Lc/a/l/a/b$d;->G:Landroid/graphics/PorterDuff$Mode;
    if-eq v1, p1, :L0
  .line 3
    iput-object p1, v0, Lc/a/l/a/b$d;->G:Landroid/graphics/PorterDuff$Mode;
  .line 4
    iget-object v0, p0, Lc/a/l/a/b;->d:Landroid/graphics/drawable/Drawable;
    invoke-static { v0, p1 }, Landroidx/core/graphics/drawable/a;->p(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V
  :L0
    return-void
.end method

.method public setVisible(ZZ)Z
  .registers 5
  .line 1
    invoke-super { p0, p1, p2 }, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z
    move-result v0
  .line 2
    iget-object v1, p0, Lc/a/l/a/b;->e:Landroid/graphics/drawable/Drawable;
    if-eqz v1, :L0
  .line 3
    invoke-virtual { v1, p1, p2 }, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z
  :L0
  .line 4
    iget-object v1, p0, Lc/a/l/a/b;->d:Landroid/graphics/drawable/Drawable;
    if-eqz v1, :L1
  .line 5
    invoke-virtual { v1, p1, p2 }, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z
  :L1
    return v0
.end method

.method public unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V
  .registers 4
  .line 1
    iget-object v0, p0, Lc/a/l/a/b;->d:Landroid/graphics/drawable/Drawable;
    if-ne p1, v0, :L0
    invoke-virtual { p0 }, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;
    move-result-object p1
    if-eqz p1, :L0
  .line 2
    invoke-virtual { p0 }, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;
    move-result-object p1
    invoke-interface { p1, p0, p2 }, Landroid/graphics/drawable/Drawable$Callback;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V
  :L0
    return-void
.end method
