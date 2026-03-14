.class Landroidx/appcompat/widget/h;
.super Ljava/lang/Object;
.source "SourceFile"

.field private final a:Landroid/widget/CompoundButton;

.field private b:Landroid/content/res/ColorStateList;

.field private c:Landroid/graphics/PorterDuff$Mode;

.field private d:Z

.field private e:Z

.field private f:Z

.method constructor <init>(Landroid/widget/CompoundButton;)V
  .registers 3
  .line 1
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    const/4 v0, 0
  .line 2
    iput-object v0, p0, Landroidx/appcompat/widget/h;->b:Landroid/content/res/ColorStateList;
  .line 3
    iput-object v0, p0, Landroidx/appcompat/widget/h;->c:Landroid/graphics/PorterDuff$Mode;
    const/4 v0, 0
  .line 4
    iput-boolean v0, p0, Landroidx/appcompat/widget/h;->d:Z
  .line 5
    iput-boolean v0, p0, Landroidx/appcompat/widget/h;->e:Z
  .line 6
    iput-object p1, p0, Landroidx/appcompat/widget/h;->a:Landroid/widget/CompoundButton;
    return-void
.end method

.method a()V
  .registers 3
  .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/h;->a:Landroid/widget/CompoundButton;
    invoke-static { v0 }, Landroidx/core/widget/c;->a(Landroid/widget/CompoundButton;)Landroid/graphics/drawable/Drawable;
    move-result-object v0
    if-eqz v0, :L4
  .line 2
    iget-boolean v1, p0, Landroidx/appcompat/widget/h;->d:Z
    if-nez v1, :L0
    iget-boolean v1, p0, Landroidx/appcompat/widget/h;->e:Z
    if-eqz v1, :L4
  :L0
  .line 3
    invoke-static { v0 }, Landroidx/core/graphics/drawable/a;->r(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    move-result-object v0
  .line 4
    invoke-virtual { v0 }, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;
    move-result-object v0
  .line 5
    iget-boolean v1, p0, Landroidx/appcompat/widget/h;->d:Z
    if-eqz v1, :L1
  .line 6
    iget-object v1, p0, Landroidx/appcompat/widget/h;->b:Landroid/content/res/ColorStateList;
    invoke-static { v0, v1 }, Landroidx/core/graphics/drawable/a;->o(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V
  :L1
  .line 7
    iget-boolean v1, p0, Landroidx/appcompat/widget/h;->e:Z
    if-eqz v1, :L2
  .line 8
    iget-object v1, p0, Landroidx/appcompat/widget/h;->c:Landroid/graphics/PorterDuff$Mode;
    invoke-static { v0, v1 }, Landroidx/core/graphics/drawable/a;->p(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V
  :L2
  .line 9
    invoke-virtual { v0 }, Landroid/graphics/drawable/Drawable;->isStateful()Z
    move-result v1
    if-eqz v1, :L3
  .line 10
    iget-object v1, p0, Landroidx/appcompat/widget/h;->a:Landroid/widget/CompoundButton;
    invoke-virtual { v1 }, Landroid/widget/CompoundButton;->getDrawableState()[I
    move-result-object v1
    invoke-virtual { v0, v1 }, Landroid/graphics/drawable/Drawable;->setState([I)Z
  :L3
  .line 11
    iget-object v1, p0, Landroidx/appcompat/widget/h;->a:Landroid/widget/CompoundButton;
    invoke-virtual { v1, v0 }, Landroid/widget/CompoundButton;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V
  :L4
    return-void
.end method

.method b(I)I
  .registers 4
  .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v1, 17
    if-ge v0, v1, :L0
  .line 2
    iget-object v0, p0, Landroidx/appcompat/widget/h;->a:Landroid/widget/CompoundButton;
    invoke-static { v0 }, Landroidx/core/widget/c;->a(Landroid/widget/CompoundButton;)Landroid/graphics/drawable/Drawable;
    move-result-object v0
    if-eqz v0, :L0
  .line 3
    invoke-virtual { v0 }, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I
    move-result v0
    add-int/2addr p1, v0
  :L0
    return p1
.end method

.method c()Landroid/content/res/ColorStateList;
  .registers 2
  .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/h;->b:Landroid/content/res/ColorStateList;
    return-object v0
.end method

.method d()Landroid/graphics/PorterDuff$Mode;
  .registers 2
  .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/h;->c:Landroid/graphics/PorterDuff$Mode;
    return-object v0
.end method

.method e(Landroid/util/AttributeSet;I)V
  .catchall { :L0 .. :L1 } :L10
  .catch Landroid/content/res/Resources$NotFoundException; { :L2 .. :L3 } :L4
  .catchall { :L2 .. :L3 } :L10
  .catchall { :L6 .. :L9 } :L10
  .registers 13
  .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/h;->a:Landroid/widget/CompoundButton;
  .line 2
    invoke-virtual { v0 }, Landroid/widget/CompoundButton;->getContext()Landroid/content/Context;
    move-result-object v0
    sget-object v1, Lc/a/j;->CompoundButton:[I
    const/4 v2, 0
    invoke-static { v0, p1, v1, p2, v2 }, Landroidx/appcompat/widget/u0;->v(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroidx/appcompat/widget/u0;
    move-result-object v0
  .line 3
    iget-object v3, p0, Landroidx/appcompat/widget/h;->a:Landroid/widget/CompoundButton;
    invoke-virtual { v3 }, Landroid/widget/CompoundButton;->getContext()Landroid/content/Context;
    move-result-object v4
    sget-object v5, Lc/a/j;->CompoundButton:[I
  .line 4
    invoke-virtual { v0 }, Landroidx/appcompat/widget/u0;->r()Landroid/content/res/TypedArray;
    move-result-object v7
    const/4 v9, 0
    move-object v6, p1
    move v8, p2
  .line 5
    invoke-static/range { v3 .. v9 }, Landroidx/core/view/v;->m0(Landroid/view/View;Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;II)V
  :L0
  .line 6
    sget p1, Lc/a/j;->CompoundButton_buttonCompat:I
    invoke-virtual { v0, p1 }, Landroidx/appcompat/widget/u0;->s(I)Z
    move-result p1
    if-eqz p1, :L4
  .line 7
    sget p1, Lc/a/j;->CompoundButton_buttonCompat:I
    invoke-virtual { v0, p1, v2 }, Landroidx/appcompat/widget/u0;->n(II)I
    move-result p1
  :L1
    if-eqz p1, :L4
  :L2
  .line 8
    iget-object p2, p0, Landroidx/appcompat/widget/h;->a:Landroid/widget/CompoundButton;
    iget-object v1, p0, Landroidx/appcompat/widget/h;->a:Landroid/widget/CompoundButton;
  .line 9
    invoke-virtual { v1 }, Landroid/widget/CompoundButton;->getContext()Landroid/content/Context;
    move-result-object v1
    invoke-static { v1, p1 }, Lc/a/k/a/a;->d(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    move-result-object p1
  .line 10
    invoke-virtual { p2, p1 }, Landroid/widget/CompoundButton;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V
  :L3
    const/4 p1, 1
    goto :L5
  :L4
    const/4 p1, 0
  :L5
    if-nez p1, :L7
  :L6
  .line 11
    sget p1, Lc/a/j;->CompoundButton_android_button:I
    invoke-virtual { v0, p1 }, Landroidx/appcompat/widget/u0;->s(I)Z
    move-result p1
    if-eqz p1, :L7
  .line 12
    sget p1, Lc/a/j;->CompoundButton_android_button:I
    invoke-virtual { v0, p1, v2 }, Landroidx/appcompat/widget/u0;->n(II)I
    move-result p1
    if-eqz p1, :L7
  .line 13
    iget-object p2, p0, Landroidx/appcompat/widget/h;->a:Landroid/widget/CompoundButton;
    iget-object v1, p0, Landroidx/appcompat/widget/h;->a:Landroid/widget/CompoundButton;
  .line 14
    invoke-virtual { v1 }, Landroid/widget/CompoundButton;->getContext()Landroid/content/Context;
    move-result-object v1
    invoke-static { v1, p1 }, Lc/a/k/a/a;->d(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    move-result-object p1
  .line 15
    invoke-virtual { p2, p1 }, Landroid/widget/CompoundButton;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V
  :L7
  .line 16
    sget p1, Lc/a/j;->CompoundButton_buttonTint:I
    invoke-virtual { v0, p1 }, Landroidx/appcompat/widget/u0;->s(I)Z
    move-result p1
    if-eqz p1, :L8
  .line 17
    iget-object p1, p0, Landroidx/appcompat/widget/h;->a:Landroid/widget/CompoundButton;
    sget p2, Lc/a/j;->CompoundButton_buttonTint:I
  .line 18
    invoke-virtual { v0, p2 }, Landroidx/appcompat/widget/u0;->c(I)Landroid/content/res/ColorStateList;
    move-result-object p2
  .line 19
    invoke-static { p1, p2 }, Landroidx/core/widget/c;->c(Landroid/widget/CompoundButton;Landroid/content/res/ColorStateList;)V
  :L8
  .line 20
    sget p1, Lc/a/j;->CompoundButton_buttonTintMode:I
    invoke-virtual { v0, p1 }, Landroidx/appcompat/widget/u0;->s(I)Z
    move-result p1
    if-eqz p1, :L9
  .line 21
    iget-object p1, p0, Landroidx/appcompat/widget/h;->a:Landroid/widget/CompoundButton;
    sget p2, Lc/a/j;->CompoundButton_buttonTintMode:I
    const/4 v1, -1
  .line 22
    invoke-virtual { v0, p2, v1 }, Landroidx/appcompat/widget/u0;->k(II)I
    move-result p2
    const/4 v1, 0
  .line 23
    invoke-static { p2, v1 }, Landroidx/appcompat/widget/c0;->e(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;
    move-result-object p2
  .line 24
    invoke-static { p1, p2 }, Landroidx/core/widget/c;->d(Landroid/widget/CompoundButton;Landroid/graphics/PorterDuff$Mode;)V
  :L9
  .line 25
    invoke-virtual { v0 }, Landroidx/appcompat/widget/u0;->w()V
    return-void
  :L10
    move-exception p1
    invoke-virtual { v0 }, Landroidx/appcompat/widget/u0;->w()V
  .line 26
    throw p1
.end method

.method f()V
  .registers 2
  .line 1
    iget-boolean v0, p0, Landroidx/appcompat/widget/h;->f:Z
    if-eqz v0, :L0
    const/4 v0, 0
  .line 2
    iput-boolean v0, p0, Landroidx/appcompat/widget/h;->f:Z
    return-void
  :L0
    const/4 v0, 1
  .line 3
    iput-boolean v0, p0, Landroidx/appcompat/widget/h;->f:Z
  .line 4
    invoke-virtual { p0 }, Landroidx/appcompat/widget/h;->a()V
    return-void
.end method

.method g(Landroid/content/res/ColorStateList;)V
  .registers 2
  .line 1
    iput-object p1, p0, Landroidx/appcompat/widget/h;->b:Landroid/content/res/ColorStateList;
    const/4 p1, 1
  .line 2
    iput-boolean p1, p0, Landroidx/appcompat/widget/h;->d:Z
  .line 3
    invoke-virtual { p0 }, Landroidx/appcompat/widget/h;->a()V
    return-void
.end method

.method h(Landroid/graphics/PorterDuff$Mode;)V
  .registers 2
  .line 1
    iput-object p1, p0, Landroidx/appcompat/widget/h;->c:Landroid/graphics/PorterDuff$Mode;
    const/4 p1, 1
  .line 2
    iput-boolean p1, p0, Landroidx/appcompat/widget/h;->e:Z
  .line 3
    invoke-virtual { p0 }, Landroidx/appcompat/widget/h;->a()V
    return-void
.end method
