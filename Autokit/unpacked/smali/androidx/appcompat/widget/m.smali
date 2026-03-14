.class public Landroidx/appcompat/widget/m;
.super Ljava/lang/Object;
.source "SourceFile"

.field private final a:Landroid/widget/ImageView;

.field private b:Landroidx/appcompat/widget/s0;

.field private c:Landroidx/appcompat/widget/s0;

.field private d:Landroidx/appcompat/widget/s0;

.method public constructor <init>(Landroid/widget/ImageView;)V
  .registers 2
  .line 1
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
  .line 2
    iput-object p1, p0, Landroidx/appcompat/widget/m;->a:Landroid/widget/ImageView;
    return-void
.end method

.method private a(Landroid/graphics/drawable/Drawable;)Z
  .registers 5
  .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/m;->d:Landroidx/appcompat/widget/s0;
    if-nez v0, :L0
  .line 2
    new-instance v0, Landroidx/appcompat/widget/s0;
    invoke-direct { v0 }, Landroidx/appcompat/widget/s0;-><init>()V
    iput-object v0, p0, Landroidx/appcompat/widget/m;->d:Landroidx/appcompat/widget/s0;
  :L0
  .line 3
    iget-object v0, p0, Landroidx/appcompat/widget/m;->d:Landroidx/appcompat/widget/s0;
  .line 4
    invoke-virtual { v0 }, Landroidx/appcompat/widget/s0;->a()V
  .line 5
    iget-object v1, p0, Landroidx/appcompat/widget/m;->a:Landroid/widget/ImageView;
    invoke-static { v1 }, Landroidx/core/widget/e;->a(Landroid/widget/ImageView;)Landroid/content/res/ColorStateList;
    move-result-object v1
    const/4 v2, 1
    if-eqz v1, :L1
  .line 6
    iput-boolean v2, v0, Landroidx/appcompat/widget/s0;->d:Z
  .line 7
    iput-object v1, v0, Landroidx/appcompat/widget/s0;->a:Landroid/content/res/ColorStateList;
  :L1
  .line 8
    iget-object v1, p0, Landroidx/appcompat/widget/m;->a:Landroid/widget/ImageView;
    invoke-static { v1 }, Landroidx/core/widget/e;->b(Landroid/widget/ImageView;)Landroid/graphics/PorterDuff$Mode;
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
    iget-object v1, p0, Landroidx/appcompat/widget/m;->a:Landroid/widget/ImageView;
    invoke-virtual { v1 }, Landroid/widget/ImageView;->getDrawableState()[I
    move-result-object v1
    invoke-static { p1, v0, v1 }, Landroidx/appcompat/widget/i;->i(Landroid/graphics/drawable/Drawable;Landroidx/appcompat/widget/s0;[I)V
    return v2
.end method

.method private j()Z
  .registers 5
  .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    const/4 v1, 1
    const/4 v2, 0
    const/16 v3, 21
    if-le v0, v3, :L2
  .line 2
    iget-object v0, p0, Landroidx/appcompat/widget/m;->b:Landroidx/appcompat/widget/s0;
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
    iget-object v0, p0, Landroidx/appcompat/widget/m;->a:Landroid/widget/ImageView;
    invoke-virtual { v0 }, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;
    move-result-object v0
    if-eqz v0, :L0
  .line 2
    invoke-static { v0 }, Landroidx/appcompat/widget/c0;->b(Landroid/graphics/drawable/Drawable;)V
  :L0
    if-eqz v0, :L3
  .line 3
    invoke-direct { p0 }, Landroidx/appcompat/widget/m;->j()Z
    move-result v1
    if-eqz v1, :L1
  .line 4
    invoke-direct { p0, v0 }, Landroidx/appcompat/widget/m;->a(Landroid/graphics/drawable/Drawable;)Z
    move-result v1
    if-eqz v1, :L1
    return-void
  :L1
  .line 5
    iget-object v1, p0, Landroidx/appcompat/widget/m;->c:Landroidx/appcompat/widget/s0;
    if-eqz v1, :L2
  .line 6
    iget-object v2, p0, Landroidx/appcompat/widget/m;->a:Landroid/widget/ImageView;
  .line 7
    invoke-virtual { v2 }, Landroid/widget/ImageView;->getDrawableState()[I
    move-result-object v2
  .line 8
    invoke-static { v0, v1, v2 }, Landroidx/appcompat/widget/i;->i(Landroid/graphics/drawable/Drawable;Landroidx/appcompat/widget/s0;[I)V
    goto :L3
  :L2
  .line 9
    iget-object v1, p0, Landroidx/appcompat/widget/m;->b:Landroidx/appcompat/widget/s0;
    if-eqz v1, :L3
  .line 10
    iget-object v2, p0, Landroidx/appcompat/widget/m;->a:Landroid/widget/ImageView;
  .line 11
    invoke-virtual { v2 }, Landroid/widget/ImageView;->getDrawableState()[I
    move-result-object v2
  .line 12
    invoke-static { v0, v1, v2 }, Landroidx/appcompat/widget/i;->i(Landroid/graphics/drawable/Drawable;Landroidx/appcompat/widget/s0;[I)V
  :L3
    return-void
.end method

.method c()Landroid/content/res/ColorStateList;
  .registers 2
  .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/m;->c:Landroidx/appcompat/widget/s0;
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
    iget-object v0, p0, Landroidx/appcompat/widget/m;->c:Landroidx/appcompat/widget/s0;
    if-eqz v0, :L0
    iget-object v0, v0, Landroidx/appcompat/widget/s0;->b:Landroid/graphics/PorterDuff$Mode;
    goto :L1
  :L0
    const/4 v0, 0
  :L1
    return-object v0
.end method

.method e()Z
  .registers 4
  .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/m;->a:Landroid/widget/ImageView;
    invoke-virtual { v0 }, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;
    move-result-object v0
  .line 2
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v2, 21
    if-lt v1, v2, :L0
    instance-of v0, v0, Landroid/graphics/drawable/RippleDrawable;
    if-eqz v0, :L0
    const/4 v0, 0
    return v0
  :L0
    const/4 v0, 1
    return v0
.end method

.method public f(Landroid/util/AttributeSet;I)V
  .catchall { :L0 .. :L4 } :L5
  .registers 11
  .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/m;->a:Landroid/widget/ImageView;
    invoke-virtual { v0 }, Landroid/widget/ImageView;->getContext()Landroid/content/Context;
    move-result-object v0
    sget-object v1, Lc/a/j;->AppCompatImageView:[I
    const/4 v2, 0
    invoke-static { v0, p1, v1, p2, v2 }, Landroidx/appcompat/widget/u0;->v(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroidx/appcompat/widget/u0;
    move-result-object v0
  .line 2
    iget-object v1, p0, Landroidx/appcompat/widget/m;->a:Landroid/widget/ImageView;
    invoke-virtual { v1 }, Landroid/widget/ImageView;->getContext()Landroid/content/Context;
    move-result-object v2
    sget-object v3, Lc/a/j;->AppCompatImageView:[I
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
    iget-object p1, p0, Landroidx/appcompat/widget/m;->a:Landroid/widget/ImageView;
    invoke-virtual { p1 }, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;
    move-result-object p1
    const/4 p2, -1
    if-nez p1, :L1
  .line 6
    sget v1, Lc/a/j;->AppCompatImageView_srcCompat:I
    invoke-virtual { v0, v1, p2 }, Landroidx/appcompat/widget/u0;->n(II)I
    move-result v1
    if-eq v1, p2, :L1
  .line 7
    iget-object p1, p0, Landroidx/appcompat/widget/m;->a:Landroid/widget/ImageView;
    invoke-virtual { p1 }, Landroid/widget/ImageView;->getContext()Landroid/content/Context;
    move-result-object p1
    invoke-static { p1, v1 }, Lc/a/k/a/a;->d(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    move-result-object p1
    if-eqz p1, :L1
  .line 8
    iget-object v1, p0, Landroidx/appcompat/widget/m;->a:Landroid/widget/ImageView;
    invoke-virtual { v1, p1 }, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
  :L1
    if-eqz p1, :L2
  .line 9
    invoke-static { p1 }, Landroidx/appcompat/widget/c0;->b(Landroid/graphics/drawable/Drawable;)V
  :L2
  .line 10
    sget p1, Lc/a/j;->AppCompatImageView_tint:I
    invoke-virtual { v0, p1 }, Landroidx/appcompat/widget/u0;->s(I)Z
    move-result p1
    if-eqz p1, :L3
  .line 11
    iget-object p1, p0, Landroidx/appcompat/widget/m;->a:Landroid/widget/ImageView;
    sget v1, Lc/a/j;->AppCompatImageView_tint:I
  .line 12
    invoke-virtual { v0, v1 }, Landroidx/appcompat/widget/u0;->c(I)Landroid/content/res/ColorStateList;
    move-result-object v1
  .line 13
    invoke-static { p1, v1 }, Landroidx/core/widget/e;->c(Landroid/widget/ImageView;Landroid/content/res/ColorStateList;)V
  :L3
  .line 14
    sget p1, Lc/a/j;->AppCompatImageView_tintMode:I
    invoke-virtual { v0, p1 }, Landroidx/appcompat/widget/u0;->s(I)Z
    move-result p1
    if-eqz p1, :L4
  .line 15
    iget-object p1, p0, Landroidx/appcompat/widget/m;->a:Landroid/widget/ImageView;
    sget v1, Lc/a/j;->AppCompatImageView_tintMode:I
  .line 16
    invoke-virtual { v0, v1, p2 }, Landroidx/appcompat/widget/u0;->k(II)I
    move-result p2
    const/4 v1, 0
  .line 17
    invoke-static { p2, v1 }, Landroidx/appcompat/widget/c0;->e(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;
    move-result-object p2
  .line 18
    invoke-static { p1, p2 }, Landroidx/core/widget/e;->d(Landroid/widget/ImageView;Landroid/graphics/PorterDuff$Mode;)V
  :L4
  .line 19
    invoke-virtual { v0 }, Landroidx/appcompat/widget/u0;->w()V
    return-void
  :L5
    move-exception p1
    invoke-virtual { v0 }, Landroidx/appcompat/widget/u0;->w()V
  .line 20
    throw p1
.end method

.method public g(I)V
  .registers 3
    if-eqz p1, :L1
  .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/m;->a:Landroid/widget/ImageView;
    invoke-virtual { v0 }, Landroid/widget/ImageView;->getContext()Landroid/content/Context;
    move-result-object v0
    invoke-static { v0, p1 }, Lc/a/k/a/a;->d(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    move-result-object p1
    if-eqz p1, :L0
  .line 2
    invoke-static { p1 }, Landroidx/appcompat/widget/c0;->b(Landroid/graphics/drawable/Drawable;)V
  :L0
  .line 3
    iget-object v0, p0, Landroidx/appcompat/widget/m;->a:Landroid/widget/ImageView;
    invoke-virtual { v0, p1 }, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    goto :L2
  :L1
  .line 4
    iget-object p1, p0, Landroidx/appcompat/widget/m;->a:Landroid/widget/ImageView;
    const/4 v0, 0
    invoke-virtual { p1, v0 }, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
  :L2
  .line 5
    invoke-virtual { p0 }, Landroidx/appcompat/widget/m;->b()V
    return-void
.end method

.method h(Landroid/content/res/ColorStateList;)V
  .registers 3
  .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/m;->c:Landroidx/appcompat/widget/s0;
    if-nez v0, :L0
  .line 2
    new-instance v0, Landroidx/appcompat/widget/s0;
    invoke-direct { v0 }, Landroidx/appcompat/widget/s0;-><init>()V
    iput-object v0, p0, Landroidx/appcompat/widget/m;->c:Landroidx/appcompat/widget/s0;
  :L0
  .line 3
    iget-object v0, p0, Landroidx/appcompat/widget/m;->c:Landroidx/appcompat/widget/s0;
    iput-object p1, v0, Landroidx/appcompat/widget/s0;->a:Landroid/content/res/ColorStateList;
    const/4 p1, 1
  .line 4
    iput-boolean p1, v0, Landroidx/appcompat/widget/s0;->d:Z
  .line 5
    invoke-virtual { p0 }, Landroidx/appcompat/widget/m;->b()V
    return-void
.end method

.method i(Landroid/graphics/PorterDuff$Mode;)V
  .registers 3
  .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/m;->c:Landroidx/appcompat/widget/s0;
    if-nez v0, :L0
  .line 2
    new-instance v0, Landroidx/appcompat/widget/s0;
    invoke-direct { v0 }, Landroidx/appcompat/widget/s0;-><init>()V
    iput-object v0, p0, Landroidx/appcompat/widget/m;->c:Landroidx/appcompat/widget/s0;
  :L0
  .line 3
    iget-object v0, p0, Landroidx/appcompat/widget/m;->c:Landroidx/appcompat/widget/s0;
    iput-object p1, v0, Landroidx/appcompat/widget/s0;->b:Landroid/graphics/PorterDuff$Mode;
    const/4 p1, 1
  .line 4
    iput-boolean p1, v0, Landroidx/appcompat/widget/s0;->c:Z
  .line 5
    invoke-virtual { p0 }, Landroidx/appcompat/widget/m;->b()V
    return-void
.end method
