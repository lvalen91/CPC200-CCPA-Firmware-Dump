.class Landroidx/appcompat/widget/e;
.super Ljava/lang/Object;
.source "SourceFile"

.field private final a:Landroid/view/View;

.field private final b:Landroidx/appcompat/widget/i;

.field private c:I

.field private d:Landroidx/appcompat/widget/s0;

.field private e:Landroidx/appcompat/widget/s0;

.field private f:Landroidx/appcompat/widget/s0;

.method constructor <init>(Landroid/view/View;)V
  .registers 3
  .line 1
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    const/4 v0, -1
  .line 2
    iput v0, p0, Landroidx/appcompat/widget/e;->c:I
  .line 3
    iput-object p1, p0, Landroidx/appcompat/widget/e;->a:Landroid/view/View;
  .line 4
    invoke-static { }, Landroidx/appcompat/widget/i;->b()Landroidx/appcompat/widget/i;
    move-result-object p1
    iput-object p1, p0, Landroidx/appcompat/widget/e;->b:Landroidx/appcompat/widget/i;
    return-void
.end method

.method private a(Landroid/graphics/drawable/Drawable;)Z
  .registers 5
  .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/e;->f:Landroidx/appcompat/widget/s0;
    if-nez v0, :L0
  .line 2
    new-instance v0, Landroidx/appcompat/widget/s0;
    invoke-direct { v0 }, Landroidx/appcompat/widget/s0;-><init>()V
    iput-object v0, p0, Landroidx/appcompat/widget/e;->f:Landroidx/appcompat/widget/s0;
  :L0
  .line 3
    iget-object v0, p0, Landroidx/appcompat/widget/e;->f:Landroidx/appcompat/widget/s0;
  .line 4
    invoke-virtual { v0 }, Landroidx/appcompat/widget/s0;->a()V
  .line 5
    iget-object v1, p0, Landroidx/appcompat/widget/e;->a:Landroid/view/View;
    invoke-static { v1 }, Landroidx/core/view/v;->s(Landroid/view/View;)Landroid/content/res/ColorStateList;
    move-result-object v1
    const/4 v2, 1
    if-eqz v1, :L1
  .line 6
    iput-boolean v2, v0, Landroidx/appcompat/widget/s0;->d:Z
  .line 7
    iput-object v1, v0, Landroidx/appcompat/widget/s0;->a:Landroid/content/res/ColorStateList;
  :L1
  .line 8
    iget-object v1, p0, Landroidx/appcompat/widget/e;->a:Landroid/view/View;
    invoke-static { v1 }, Landroidx/core/view/v;->t(Landroid/view/View;)Landroid/graphics/PorterDuff$Mode;
    move-result-object v1
    if-eqz v1, :L2
  .line 9
    iput-boolean v2, v0, Landroidx/appcompat/widget/s0;->c:Z
  .line 10
    iput-object v1, v0, Landroidx/appcompat/widget/s0;->b:Landroid/graphics/PorterDuff$Mode;
  :L2
  .line 11
    iget-boolean v1, v0, Landroidx/appcompat/widget/s0;->d:Z
    if-nez v1, :L4
    iget-boolean v1, v0, Landroidx/appcompat/widget/s0;->c:Z
    if-eqz v1, :L3
    goto :L4
  :L3
    const/4 p1, 0
    return p1
  :L4
  .line 12
    iget-object v1, p0, Landroidx/appcompat/widget/e;->a:Landroid/view/View;
    invoke-virtual { v1 }, Landroid/view/View;->getDrawableState()[I
    move-result-object v1
    invoke-static { p1, v0, v1 }, Landroidx/appcompat/widget/i;->i(Landroid/graphics/drawable/Drawable;Landroidx/appcompat/widget/s0;[I)V
    return v2
.end method

.method private k()Z
  .registers 5
  .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    const/4 v1, 1
    const/4 v2, 0
    const/16 v3, 21
    if-le v0, v3, :L2
  .line 2
    iget-object v0, p0, Landroidx/appcompat/widget/e;->d:Landroidx/appcompat/widget/s0;
    if-eqz v0, :L0
    goto :L1
  :L0
    const/4 v1, 0
  :L1
    return v1
  :L2
    if-ne v0, v3, :L3
    return v1
  :L3
    return v2
.end method

.method b()V
  .registers 4
  .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/e;->a:Landroid/view/View;
    invoke-virtual { v0 }, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;
    move-result-object v0
    if-eqz v0, :L2
  .line 2
    invoke-direct { p0 }, Landroidx/appcompat/widget/e;->k()Z
    move-result v1
    if-eqz v1, :L0
  .line 3
    invoke-direct { p0, v0 }, Landroidx/appcompat/widget/e;->a(Landroid/graphics/drawable/Drawable;)Z
    move-result v1
    if-eqz v1, :L0
    return-void
  :L0
  .line 4
    iget-object v1, p0, Landroidx/appcompat/widget/e;->e:Landroidx/appcompat/widget/s0;
    if-eqz v1, :L1
  .line 5
    iget-object v2, p0, Landroidx/appcompat/widget/e;->a:Landroid/view/View;
  .line 6
    invoke-virtual { v2 }, Landroid/view/View;->getDrawableState()[I
    move-result-object v2
  .line 7
    invoke-static { v0, v1, v2 }, Landroidx/appcompat/widget/i;->i(Landroid/graphics/drawable/Drawable;Landroidx/appcompat/widget/s0;[I)V
    goto :L2
  :L1
  .line 8
    iget-object v1, p0, Landroidx/appcompat/widget/e;->d:Landroidx/appcompat/widget/s0;
    if-eqz v1, :L2
  .line 9
    iget-object v2, p0, Landroidx/appcompat/widget/e;->a:Landroid/view/View;
  .line 10
    invoke-virtual { v2 }, Landroid/view/View;->getDrawableState()[I
    move-result-object v2
  .line 11
    invoke-static { v0, v1, v2 }, Landroidx/appcompat/widget/i;->i(Landroid/graphics/drawable/Drawable;Landroidx/appcompat/widget/s0;[I)V
  :L2
    return-void
.end method

.method c()Landroid/content/res/ColorStateList;
  .registers 2
  .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/e;->e:Landroidx/appcompat/widget/s0;
    if-eqz v0, :L0
    iget-object v0, v0, Landroidx/appcompat/widget/s0;->a:Landroid/content/res/ColorStateList;
    goto :L1
  :L0
    const/4 v0, 0
  :L1
    return-object v0
.end method

.method d()Landroid/graphics/PorterDuff$Mode;
  .registers 2
  .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/e;->e:Landroidx/appcompat/widget/s0;
    if-eqz v0, :L0
    iget-object v0, v0, Landroidx/appcompat/widget/s0;->b:Landroid/graphics/PorterDuff$Mode;
    goto :L1
  :L0
    const/4 v0, 0
  :L1
    return-object v0
.end method

.method e(Landroid/util/AttributeSet;I)V
  .catchall { :L0 .. :L3 } :L4
  .registers 11
  .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/e;->a:Landroid/view/View;
    invoke-virtual { v0 }, Landroid/view/View;->getContext()Landroid/content/Context;
    move-result-object v0
    sget-object v1, Lc/a/j;->ViewBackgroundHelper:[I
    const/4 v2, 0
    invoke-static { v0, p1, v1, p2, v2 }, Landroidx/appcompat/widget/u0;->v(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroidx/appcompat/widget/u0;
    move-result-object v0
  .line 2
    iget-object v1, p0, Landroidx/appcompat/widget/e;->a:Landroid/view/View;
    invoke-virtual { v1 }, Landroid/view/View;->getContext()Landroid/content/Context;
    move-result-object v2
    sget-object v3, Lc/a/j;->ViewBackgroundHelper:[I
  .line 3
    invoke-virtual { v0 }, Landroidx/appcompat/widget/u0;->r()Landroid/content/res/TypedArray;
    move-result-object v5
    const/4 v7, 0
    move-object v4, p1
    move v6, p2
  .line 4
    invoke-static/range { v1 .. v7 }, Landroidx/core/view/v;->m0(Landroid/view/View;Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;II)V
  :L0
  .line 5
    sget p1, Lc/a/j;->ViewBackgroundHelper_android_background:I
    invoke-virtual { v0, p1 }, Landroidx/appcompat/widget/u0;->s(I)Z
    move-result p1
    const/4 p2, -1
    if-eqz p1, :L1
  .line 6
    sget p1, Lc/a/j;->ViewBackgroundHelper_android_background:I
    invoke-virtual { v0, p1, p2 }, Landroidx/appcompat/widget/u0;->n(II)I
    move-result p1
    iput p1, p0, Landroidx/appcompat/widget/e;->c:I
  .line 7
    iget-object p1, p0, Landroidx/appcompat/widget/e;->b:Landroidx/appcompat/widget/i;
    iget-object v1, p0, Landroidx/appcompat/widget/e;->a:Landroid/view/View;
  .line 8
    invoke-virtual { v1 }, Landroid/view/View;->getContext()Landroid/content/Context;
    move-result-object v1
    iget v2, p0, Landroidx/appcompat/widget/e;->c:I
    invoke-virtual { p1, v1, v2 }, Landroidx/appcompat/widget/i;->f(Landroid/content/Context;I)Landroid/content/res/ColorStateList;
    move-result-object p1
    if-eqz p1, :L1
  .line 9
    invoke-virtual { p0, p1 }, Landroidx/appcompat/widget/e;->h(Landroid/content/res/ColorStateList;)V
  :L1
  .line 10
    sget p1, Lc/a/j;->ViewBackgroundHelper_backgroundTint:I
    invoke-virtual { v0, p1 }, Landroidx/appcompat/widget/u0;->s(I)Z
    move-result p1
    if-eqz p1, :L2
  .line 11
    iget-object p1, p0, Landroidx/appcompat/widget/e;->a:Landroid/view/View;
    sget v1, Lc/a/j;->ViewBackgroundHelper_backgroundTint:I
  .line 12
    invoke-virtual { v0, v1 }, Landroidx/appcompat/widget/u0;->c(I)Landroid/content/res/ColorStateList;
    move-result-object v1
  .line 13
    invoke-static { p1, v1 }, Landroidx/core/view/v;->s0(Landroid/view/View;Landroid/content/res/ColorStateList;)V
  :L2
  .line 14
    sget p1, Lc/a/j;->ViewBackgroundHelper_backgroundTintMode:I
    invoke-virtual { v0, p1 }, Landroidx/appcompat/widget/u0;->s(I)Z
    move-result p1
    if-eqz p1, :L3
  .line 15
    iget-object p1, p0, Landroidx/appcompat/widget/e;->a:Landroid/view/View;
    sget v1, Lc/a/j;->ViewBackgroundHelper_backgroundTintMode:I
  .line 16
    invoke-virtual { v0, v1, p2 }, Landroidx/appcompat/widget/u0;->k(II)I
    move-result p2
    const/4 v1, 0
  .line 17
    invoke-static { p2, v1 }, Landroidx/appcompat/widget/c0;->e(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;
    move-result-object p2
  .line 18
    invoke-static { p1, p2 }, Landroidx/core/view/v;->t0(Landroid/view/View;Landroid/graphics/PorterDuff$Mode;)V
  :L3
  .line 19
    invoke-virtual { v0 }, Landroidx/appcompat/widget/u0;->w()V
    return-void
  :L4
    move-exception p1
    invoke-virtual { v0 }, Landroidx/appcompat/widget/u0;->w()V
  .line 20
    throw p1
.end method

.method f(Landroid/graphics/drawable/Drawable;)V
  .registers 2
    const/4 p1, -1
  .line 1
    iput p1, p0, Landroidx/appcompat/widget/e;->c:I
    const/4 p1, 0
  .line 2
    invoke-virtual { p0, p1 }, Landroidx/appcompat/widget/e;->h(Landroid/content/res/ColorStateList;)V
  .line 3
    invoke-virtual { p0 }, Landroidx/appcompat/widget/e;->b()V
    return-void
.end method

.method g(I)V
  .registers 4
  .line 1
    iput p1, p0, Landroidx/appcompat/widget/e;->c:I
  .line 2
    iget-object v0, p0, Landroidx/appcompat/widget/e;->b:Landroidx/appcompat/widget/i;
    if-eqz v0, :L0
  .line 3
    iget-object v1, p0, Landroidx/appcompat/widget/e;->a:Landroid/view/View;
    invoke-virtual { v1 }, Landroid/view/View;->getContext()Landroid/content/Context;
    move-result-object v1
    invoke-virtual { v0, v1, p1 }, Landroidx/appcompat/widget/i;->f(Landroid/content/Context;I)Landroid/content/res/ColorStateList;
    move-result-object p1
    goto :L1
  :L0
    const/4 p1, 0
  :L1
  .line 4
    invoke-virtual { p0, p1 }, Landroidx/appcompat/widget/e;->h(Landroid/content/res/ColorStateList;)V
  .line 5
    invoke-virtual { p0 }, Landroidx/appcompat/widget/e;->b()V
    return-void
.end method

.method h(Landroid/content/res/ColorStateList;)V
  .registers 3
    if-eqz p1, :L1
  .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/e;->d:Landroidx/appcompat/widget/s0;
    if-nez v0, :L0
  .line 2
    new-instance v0, Landroidx/appcompat/widget/s0;
    invoke-direct { v0 }, Landroidx/appcompat/widget/s0;-><init>()V
    iput-object v0, p0, Landroidx/appcompat/widget/e;->d:Landroidx/appcompat/widget/s0;
  :L0
  .line 3
    iget-object v0, p0, Landroidx/appcompat/widget/e;->d:Landroidx/appcompat/widget/s0;
    iput-object p1, v0, Landroidx/appcompat/widget/s0;->a:Landroid/content/res/ColorStateList;
    const/4 p1, 1
  .line 4
    iput-boolean p1, v0, Landroidx/appcompat/widget/s0;->d:Z
    goto :L2
  :L1
    const/4 p1, 0
  .line 5
    iput-object p1, p0, Landroidx/appcompat/widget/e;->d:Landroidx/appcompat/widget/s0;
  :L2
  .line 6
    invoke-virtual { p0 }, Landroidx/appcompat/widget/e;->b()V
    return-void
.end method

.method i(Landroid/content/res/ColorStateList;)V
  .registers 3
  .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/e;->e:Landroidx/appcompat/widget/s0;
    if-nez v0, :L0
  .line 2
    new-instance v0, Landroidx/appcompat/widget/s0;
    invoke-direct { v0 }, Landroidx/appcompat/widget/s0;-><init>()V
    iput-object v0, p0, Landroidx/appcompat/widget/e;->e:Landroidx/appcompat/widget/s0;
  :L0
  .line 3
    iget-object v0, p0, Landroidx/appcompat/widget/e;->e:Landroidx/appcompat/widget/s0;
    iput-object p1, v0, Landroidx/appcompat/widget/s0;->a:Landroid/content/res/ColorStateList;
    const/4 p1, 1
  .line 4
    iput-boolean p1, v0, Landroidx/appcompat/widget/s0;->d:Z
  .line 5
    invoke-virtual { p0 }, Landroidx/appcompat/widget/e;->b()V
    return-void
.end method

.method j(Landroid/graphics/PorterDuff$Mode;)V
  .registers 3
  .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/e;->e:Landroidx/appcompat/widget/s0;
    if-nez v0, :L0
  .line 2
    new-instance v0, Landroidx/appcompat/widget/s0;
    invoke-direct { v0 }, Landroidx/appcompat/widget/s0;-><init>()V
    iput-object v0, p0, Landroidx/appcompat/widget/e;->e:Landroidx/appcompat/widget/s0;
  :L0
  .line 3
    iget-object v0, p0, Landroidx/appcompat/widget/e;->e:Landroidx/appcompat/widget/s0;
    iput-object p1, v0, Landroidx/appcompat/widget/s0;->b:Landroid/graphics/PorterDuff$Mode;
    const/4 p1, 1
  .line 4
    iput-boolean p1, v0, Landroidx/appcompat/widget/s0;->c:Z
  .line 5
    invoke-virtual { p0 }, Landroidx/appcompat/widget/e;->b()V
    return-void
.end method
