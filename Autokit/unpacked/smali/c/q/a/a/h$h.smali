.class Lc/q/a/a/h$h;
.super Landroid/graphics/drawable/Drawable$ConstantState;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Lc/q/a/a/h;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 10
  name = "h"
.end annotation

.field a:I

.field b:Lc/q/a/a/h$g;

.field c:Landroid/content/res/ColorStateList;

.field d:Landroid/graphics/PorterDuff$Mode;

.field e:Z

.field f:Landroid/graphics/Bitmap;

.field g:Landroid/content/res/ColorStateList;

.field h:Landroid/graphics/PorterDuff$Mode;

.field i:I

.field j:Z

.field k:Z

.field l:Landroid/graphics/Paint;

.method public constructor <init>()V
  .registers 2
  .line 13
    invoke-direct { p0 }, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V
    const/4 v0, 0
  .line 14
    iput-object v0, p0, Lc/q/a/a/h$h;->c:Landroid/content/res/ColorStateList;
  .line 15
    sget-object v0, Lc/q/a/a/h;->k:Landroid/graphics/PorterDuff$Mode;
    iput-object v0, p0, Lc/q/a/a/h$h;->d:Landroid/graphics/PorterDuff$Mode;
  .line 16
    new-instance v0, Lc/q/a/a/h$g;
    invoke-direct { v0 }, Lc/q/a/a/h$g;-><init>()V
    iput-object v0, p0, Lc/q/a/a/h$h;->b:Lc/q/a/a/h$g;
    return-void
.end method

.method public constructor <init>(Lc/q/a/a/h$h;)V
  .registers 5
  .line 1
    invoke-direct { p0 }, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V
    const/4 v0, 0
  .line 2
    iput-object v0, p0, Lc/q/a/a/h$h;->c:Landroid/content/res/ColorStateList;
  .line 3
    sget-object v0, Lc/q/a/a/h;->k:Landroid/graphics/PorterDuff$Mode;
    iput-object v0, p0, Lc/q/a/a/h$h;->d:Landroid/graphics/PorterDuff$Mode;
    if-eqz p1, :L2
  .line 4
    iget v0, p1, Lc/q/a/a/h$h;->a:I
    iput v0, p0, Lc/q/a/a/h$h;->a:I
  .line 5
    new-instance v0, Lc/q/a/a/h$g;
    iget-object v1, p1, Lc/q/a/a/h$h;->b:Lc/q/a/a/h$g;
    invoke-direct { v0, v1 }, Lc/q/a/a/h$g;-><init>(Lc/q/a/a/h$g;)V
    iput-object v0, p0, Lc/q/a/a/h$h;->b:Lc/q/a/a/h$g;
  .line 6
    iget-object v1, p1, Lc/q/a/a/h$h;->b:Lc/q/a/a/h$g;
    iget-object v1, v1, Lc/q/a/a/h$g;->e:Landroid/graphics/Paint;
    if-eqz v1, :L0
  .line 7
    new-instance v1, Landroid/graphics/Paint;
    iget-object v2, p1, Lc/q/a/a/h$h;->b:Lc/q/a/a/h$g;
    iget-object v2, v2, Lc/q/a/a/h$g;->e:Landroid/graphics/Paint;
    invoke-direct { v1, v2 }, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V
    iput-object v1, v0, Lc/q/a/a/h$g;->e:Landroid/graphics/Paint;
  :L0
  .line 8
    iget-object v0, p1, Lc/q/a/a/h$h;->b:Lc/q/a/a/h$g;
    iget-object v0, v0, Lc/q/a/a/h$g;->d:Landroid/graphics/Paint;
    if-eqz v0, :L1
  .line 9
    iget-object v0, p0, Lc/q/a/a/h$h;->b:Lc/q/a/a/h$g;
    new-instance v1, Landroid/graphics/Paint;
    iget-object v2, p1, Lc/q/a/a/h$h;->b:Lc/q/a/a/h$g;
    iget-object v2, v2, Lc/q/a/a/h$g;->d:Landroid/graphics/Paint;
    invoke-direct { v1, v2 }, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V
    iput-object v1, v0, Lc/q/a/a/h$g;->d:Landroid/graphics/Paint;
  :L1
  .line 10
    iget-object v0, p1, Lc/q/a/a/h$h;->c:Landroid/content/res/ColorStateList;
    iput-object v0, p0, Lc/q/a/a/h$h;->c:Landroid/content/res/ColorStateList;
  .line 11
    iget-object v0, p1, Lc/q/a/a/h$h;->d:Landroid/graphics/PorterDuff$Mode;
    iput-object v0, p0, Lc/q/a/a/h$h;->d:Landroid/graphics/PorterDuff$Mode;
  .line 12
    iget-boolean p1, p1, Lc/q/a/a/h$h;->e:Z
    iput-boolean p1, p0, Lc/q/a/a/h$h;->e:Z
  :L2
    return-void
.end method

.method public a(II)Z
  .registers 4
  .line 1
    iget-object v0, p0, Lc/q/a/a/h$h;->f:Landroid/graphics/Bitmap;
    invoke-virtual { v0 }, Landroid/graphics/Bitmap;->getWidth()I
    move-result v0
    if-ne p1, v0, :L0
    iget-object p1, p0, Lc/q/a/a/h$h;->f:Landroid/graphics/Bitmap;
  .line 2
    invoke-virtual { p1 }, Landroid/graphics/Bitmap;->getHeight()I
    move-result p1
    if-ne p2, p1, :L0
    const/4 p1, 1
    return p1
  :L0
    const/4 p1, 0
    return p1
.end method

.method public b()Z
  .registers 3
  .line 1
    iget-boolean v0, p0, Lc/q/a/a/h$h;->k:Z
    if-nez v0, :L0
    iget-object v0, p0, Lc/q/a/a/h$h;->g:Landroid/content/res/ColorStateList;
    iget-object v1, p0, Lc/q/a/a/h$h;->c:Landroid/content/res/ColorStateList;
    if-ne v0, v1, :L0
    iget-object v0, p0, Lc/q/a/a/h$h;->h:Landroid/graphics/PorterDuff$Mode;
    iget-object v1, p0, Lc/q/a/a/h$h;->d:Landroid/graphics/PorterDuff$Mode;
    if-ne v0, v1, :L0
    iget-boolean v0, p0, Lc/q/a/a/h$h;->j:Z
    iget-boolean v1, p0, Lc/q/a/a/h$h;->e:Z
    if-ne v0, v1, :L0
    iget v0, p0, Lc/q/a/a/h$h;->i:I
    iget-object v1, p0, Lc/q/a/a/h$h;->b:Lc/q/a/a/h$g;
  .line 2
    invoke-virtual { v1 }, Lc/q/a/a/h$g;->getRootAlpha()I
    move-result v1
    if-ne v0, v1, :L0
    const/4 v0, 1
    return v0
  :L0
    const/4 v0, 0
    return v0
.end method

.method public c(II)V
  .registers 4
  .line 1
    iget-object v0, p0, Lc/q/a/a/h$h;->f:Landroid/graphics/Bitmap;
    if-eqz v0, :L0
    invoke-virtual { p0, p1, p2 }, Lc/q/a/a/h$h;->a(II)Z
    move-result v0
    if-nez v0, :L1
  :L0
  .line 2
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;
    invoke-static { p1, p2, v0 }, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    move-result-object p1
    iput-object p1, p0, Lc/q/a/a/h$h;->f:Landroid/graphics/Bitmap;
    const/4 p1, 1
  .line 3
    iput-boolean p1, p0, Lc/q/a/a/h$h;->k:Z
  :L1
    return-void
.end method

.method public d(Landroid/graphics/Canvas;Landroid/graphics/ColorFilter;Landroid/graphics/Rect;)V
  .registers 6
  .line 1
    invoke-virtual { p0, p2 }, Lc/q/a/a/h$h;->e(Landroid/graphics/ColorFilter;)Landroid/graphics/Paint;
    move-result-object p2
  .line 2
    iget-object v0, p0, Lc/q/a/a/h$h;->f:Landroid/graphics/Bitmap;
    const/4 v1, 0
    invoke-virtual { p1, v0, v1, p3, p2 }, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V
    return-void
.end method

.method public e(Landroid/graphics/ColorFilter;)Landroid/graphics/Paint;
  .registers 4
  .line 1
    invoke-virtual { p0 }, Lc/q/a/a/h$h;->f()Z
    move-result v0
    if-nez v0, :L0
    if-nez p1, :L0
    const/4 p1, 0
    return-object p1
  :L0
  .line 2
    iget-object v0, p0, Lc/q/a/a/h$h;->l:Landroid/graphics/Paint;
    if-nez v0, :L1
  .line 3
    new-instance v0, Landroid/graphics/Paint;
    invoke-direct { v0 }, Landroid/graphics/Paint;-><init>()V
    iput-object v0, p0, Lc/q/a/a/h$h;->l:Landroid/graphics/Paint;
    const/4 v1, 1
  .line 4
    invoke-virtual { v0, v1 }, Landroid/graphics/Paint;->setFilterBitmap(Z)V
  :L1
  .line 5
    iget-object v0, p0, Lc/q/a/a/h$h;->l:Landroid/graphics/Paint;
    iget-object v1, p0, Lc/q/a/a/h$h;->b:Lc/q/a/a/h$g;
    invoke-virtual { v1 }, Lc/q/a/a/h$g;->getRootAlpha()I
    move-result v1
    invoke-virtual { v0, v1 }, Landroid/graphics/Paint;->setAlpha(I)V
  .line 6
    iget-object v0, p0, Lc/q/a/a/h$h;->l:Landroid/graphics/Paint;
    invoke-virtual { v0, p1 }, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;
  .line 7
    iget-object p1, p0, Lc/q/a/a/h$h;->l:Landroid/graphics/Paint;
    return-object p1
.end method

.method public f()Z
  .registers 3
  .line 1
    iget-object v0, p0, Lc/q/a/a/h$h;->b:Lc/q/a/a/h$g;
    invoke-virtual { v0 }, Lc/q/a/a/h$g;->getRootAlpha()I
    move-result v0
    const/16 v1, 255
    if-ge v0, v1, :L0
    const/4 v0, 1
    goto :L1
  :L0
    const/4 v0, 0
  :L1
    return v0
.end method

.method public g()Z
  .registers 2
  .line 1
    iget-object v0, p0, Lc/q/a/a/h$h;->b:Lc/q/a/a/h$g;
    invoke-virtual { v0 }, Lc/q/a/a/h$g;->f()Z
    move-result v0
    return v0
.end method

.method public getChangingConfigurations()I
  .registers 2
  .line 1
    iget v0, p0, Lc/q/a/a/h$h;->a:I
    return v0
.end method

.method public h([I)Z
  .registers 3
  .line 1
    iget-object v0, p0, Lc/q/a/a/h$h;->b:Lc/q/a/a/h$g;
    invoke-virtual { v0, p1 }, Lc/q/a/a/h$g;->g([I)Z
    move-result p1
  .line 2
    iget-boolean v0, p0, Lc/q/a/a/h$h;->k:Z
    or-int/2addr v0, p1
    iput-boolean v0, p0, Lc/q/a/a/h$h;->k:Z
    return p1
.end method

.method public i()V
  .registers 2
  .line 1
    iget-object v0, p0, Lc/q/a/a/h$h;->c:Landroid/content/res/ColorStateList;
    iput-object v0, p0, Lc/q/a/a/h$h;->g:Landroid/content/res/ColorStateList;
  .line 2
    iget-object v0, p0, Lc/q/a/a/h$h;->d:Landroid/graphics/PorterDuff$Mode;
    iput-object v0, p0, Lc/q/a/a/h$h;->h:Landroid/graphics/PorterDuff$Mode;
  .line 3
    iget-object v0, p0, Lc/q/a/a/h$h;->b:Lc/q/a/a/h$g;
    invoke-virtual { v0 }, Lc/q/a/a/h$g;->getRootAlpha()I
    move-result v0
    iput v0, p0, Lc/q/a/a/h$h;->i:I
  .line 4
    iget-boolean v0, p0, Lc/q/a/a/h$h;->e:Z
    iput-boolean v0, p0, Lc/q/a/a/h$h;->j:Z
    const/4 v0, 0
  .line 5
    iput-boolean v0, p0, Lc/q/a/a/h$h;->k:Z
    return-void
.end method

.method public j(II)V
  .registers 6
  .line 1
    iget-object v0, p0, Lc/q/a/a/h$h;->f:Landroid/graphics/Bitmap;
    const/4 v1, 0
    invoke-virtual { v0, v1 }, Landroid/graphics/Bitmap;->eraseColor(I)V
  .line 2
    new-instance v0, Landroid/graphics/Canvas;
    iget-object v1, p0, Lc/q/a/a/h$h;->f:Landroid/graphics/Bitmap;
    invoke-direct { v0, v1 }, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V
  .line 3
    iget-object v1, p0, Lc/q/a/a/h$h;->b:Lc/q/a/a/h$g;
    const/4 v2, 0
    invoke-virtual { v1, v0, p1, p2, v2 }, Lc/q/a/a/h$g;->b(Landroid/graphics/Canvas;IILandroid/graphics/ColorFilter;)V
    return-void
.end method

.method public newDrawable()Landroid/graphics/drawable/Drawable;
  .registers 2
  .line 1
    new-instance v0, Lc/q/a/a/h;
    invoke-direct { v0, p0 }, Lc/q/a/a/h;-><init>(Lc/q/a/a/h$h;)V
    return-object v0
.end method

.method public newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
  .registers 2
  .line 2
    new-instance p1, Lc/q/a/a/h;
    invoke-direct { p1, p0 }, Lc/q/a/a/h;-><init>(Lc/q/a/a/h$h;)V
    return-object p1
.end method
