.class final Landroidx/core/graphics/drawable/f;
.super Landroid/graphics/drawable/Drawable$ConstantState;
.source "SourceFile"

.field a:I

.field b:Landroid/graphics/drawable/Drawable$ConstantState;

.field c:Landroid/content/res/ColorStateList;

.field d:Landroid/graphics/PorterDuff$Mode;

.method constructor <init>(Landroidx/core/graphics/drawable/f;)V
  .registers 3
  .line 1
    invoke-direct { p0 }, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V
    const/4 v0, 0
  .line 2
    iput-object v0, p0, Landroidx/core/graphics/drawable/f;->c:Landroid/content/res/ColorStateList;
  .line 3
    sget-object v0, Landroidx/core/graphics/drawable/d;->h:Landroid/graphics/PorterDuff$Mode;
    iput-object v0, p0, Landroidx/core/graphics/drawable/f;->d:Landroid/graphics/PorterDuff$Mode;
    if-eqz p1, :L0
  .line 4
    iget v0, p1, Landroidx/core/graphics/drawable/f;->a:I
    iput v0, p0, Landroidx/core/graphics/drawable/f;->a:I
  .line 5
    iget-object v0, p1, Landroidx/core/graphics/drawable/f;->b:Landroid/graphics/drawable/Drawable$ConstantState;
    iput-object v0, p0, Landroidx/core/graphics/drawable/f;->b:Landroid/graphics/drawable/Drawable$ConstantState;
  .line 6
    iget-object v0, p1, Landroidx/core/graphics/drawable/f;->c:Landroid/content/res/ColorStateList;
    iput-object v0, p0, Landroidx/core/graphics/drawable/f;->c:Landroid/content/res/ColorStateList;
  .line 7
    iget-object p1, p1, Landroidx/core/graphics/drawable/f;->d:Landroid/graphics/PorterDuff$Mode;
    iput-object p1, p0, Landroidx/core/graphics/drawable/f;->d:Landroid/graphics/PorterDuff$Mode;
  :L0
    return-void
.end method

.method a()Z
  .registers 2
  .line 1
    iget-object v0, p0, Landroidx/core/graphics/drawable/f;->b:Landroid/graphics/drawable/Drawable$ConstantState;
    if-eqz v0, :L0
    const/4 v0, 1
    goto :L1
  :L0
    const/4 v0, 0
  :L1
    return v0
.end method

.method public getChangingConfigurations()I
  .registers 3
  .line 1
    iget v0, p0, Landroidx/core/graphics/drawable/f;->a:I
  .line 2
    iget-object v1, p0, Landroidx/core/graphics/drawable/f;->b:Landroid/graphics/drawable/Drawable$ConstantState;
    if-eqz v1, :L0
    invoke-virtual { v1 }, Landroid/graphics/drawable/Drawable$ConstantState;->getChangingConfigurations()I
    move-result v1
    goto :L1
  :L0
    const/4 v1, 0
  :L1
    or-int/2addr v0, v1
    return v0
.end method

.method public newDrawable()Landroid/graphics/drawable/Drawable;
  .registers 2
    const/4 v0, 0
  .line 1
    invoke-virtual { p0, v0 }, Landroidx/core/graphics/drawable/f;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    move-result-object v0
    return-object v0
.end method

.method public newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
  .registers 4
  .line 2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v1, 21
    if-lt v0, v1, :L0
  .line 3
    new-instance v0, Landroidx/core/graphics/drawable/e;
    invoke-direct { v0, p0, p1 }, Landroidx/core/graphics/drawable/e;-><init>(Landroidx/core/graphics/drawable/f;Landroid/content/res/Resources;)V
    return-object v0
  :L0
  .line 4
    new-instance v0, Landroidx/core/graphics/drawable/d;
    invoke-direct { v0, p0, p1 }, Landroidx/core/graphics/drawable/d;-><init>(Landroidx/core/graphics/drawable/f;Landroid/content/res/Resources;)V
    return-object v0
.end method
