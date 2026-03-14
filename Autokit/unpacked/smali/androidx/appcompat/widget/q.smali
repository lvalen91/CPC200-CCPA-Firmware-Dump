.class public Landroidx/appcompat/widget/q;
.super Landroid/widget/RadioButton;
.implements Landroidx/core/widget/k;
.implements Landroidx/core/view/u;
.source "SourceFile"

.field private final b:Landroidx/appcompat/widget/h;

.field private final c:Landroidx/appcompat/widget/e;

.field private final d:Landroidx/appcompat/widget/w;

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
  .registers 4
  .line 1
    sget v0, Lc/a/a;->radioButtonStyle:I
    invoke-direct { p0, p1, p2, v0 }, Landroidx/appcompat/widget/q;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
  .registers 4
  .line 2
    invoke-static { p1 }, Landroidx/appcompat/widget/r0;->b(Landroid/content/Context;)Landroid/content/Context;
    move-result-object p1
    invoke-direct { p0, p1, p2, p3 }, Landroid/widget/RadioButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
  .line 3
    invoke-virtual { p0 }, Landroid/widget/RadioButton;->getContext()Landroid/content/Context;
    move-result-object p1
    invoke-static { p0, p1 }, Landroidx/appcompat/widget/p0;->a(Landroid/view/View;Landroid/content/Context;)V
  .line 4
    new-instance p1, Landroidx/appcompat/widget/h;
    invoke-direct { p1, p0 }, Landroidx/appcompat/widget/h;-><init>(Landroid/widget/CompoundButton;)V
    iput-object p1, p0, Landroidx/appcompat/widget/q;->b:Landroidx/appcompat/widget/h;
  .line 5
    invoke-virtual { p1, p2, p3 }, Landroidx/appcompat/widget/h;->e(Landroid/util/AttributeSet;I)V
  .line 6
    new-instance p1, Landroidx/appcompat/widget/e;
    invoke-direct { p1, p0 }, Landroidx/appcompat/widget/e;-><init>(Landroid/view/View;)V
    iput-object p1, p0, Landroidx/appcompat/widget/q;->c:Landroidx/appcompat/widget/e;
  .line 7
    invoke-virtual { p1, p2, p3 }, Landroidx/appcompat/widget/e;->e(Landroid/util/AttributeSet;I)V
  .line 8
    new-instance p1, Landroidx/appcompat/widget/w;
    invoke-direct { p1, p0 }, Landroidx/appcompat/widget/w;-><init>(Landroid/widget/TextView;)V
    iput-object p1, p0, Landroidx/appcompat/widget/q;->d:Landroidx/appcompat/widget/w;
  .line 9
    invoke-virtual { p1, p2, p3 }, Landroidx/appcompat/widget/w;->m(Landroid/util/AttributeSet;I)V
    return-void
.end method

.method protected drawableStateChanged()V
  .registers 2
  .line 1
    invoke-super { p0 }, Landroid/widget/RadioButton;->drawableStateChanged()V
  .line 2
    iget-object v0, p0, Landroidx/appcompat/widget/q;->c:Landroidx/appcompat/widget/e;
    if-eqz v0, :L0
  .line 3
    invoke-virtual { v0 }, Landroidx/appcompat/widget/e;->b()V
  :L0
  .line 4
    iget-object v0, p0, Landroidx/appcompat/widget/q;->d:Landroidx/appcompat/widget/w;
    if-eqz v0, :L1
  .line 5
    invoke-virtual { v0 }, Landroidx/appcompat/widget/w;->b()V
  :L1
    return-void
.end method

.method public getCompoundPaddingLeft()I
  .registers 3
  .line 1
    invoke-super { p0 }, Landroid/widget/RadioButton;->getCompoundPaddingLeft()I
    move-result v0
  .line 2
    iget-object v1, p0, Landroidx/appcompat/widget/q;->b:Landroidx/appcompat/widget/h;
    if-eqz v1, :L0
  .line 3
    invoke-virtual { v1, v0 }, Landroidx/appcompat/widget/h;->b(I)I
    move-result v0
  :L0
    return v0
.end method

.method public getSupportBackgroundTintList()Landroid/content/res/ColorStateList;
  .registers 2
  .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/q;->c:Landroidx/appcompat/widget/e;
    if-eqz v0, :L0
  .line 2
    invoke-virtual { v0 }, Landroidx/appcompat/widget/e;->c()Landroid/content/res/ColorStateList;
    move-result-object v0
    goto :L1
  :L0
    const/4 v0, 0
  :L1
    return-object v0
.end method

.method public getSupportBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;
  .registers 2
  .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/q;->c:Landroidx/appcompat/widget/e;
    if-eqz v0, :L0
  .line 2
    invoke-virtual { v0 }, Landroidx/appcompat/widget/e;->d()Landroid/graphics/PorterDuff$Mode;
    move-result-object v0
    goto :L1
  :L0
    const/4 v0, 0
  :L1
    return-object v0
.end method

.method public getSupportButtonTintList()Landroid/content/res/ColorStateList;
  .registers 2
  .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/q;->b:Landroidx/appcompat/widget/h;
    if-eqz v0, :L0
  .line 2
    invoke-virtual { v0 }, Landroidx/appcompat/widget/h;->c()Landroid/content/res/ColorStateList;
    move-result-object v0
    goto :L1
  :L0
    const/4 v0, 0
  :L1
    return-object v0
.end method

.method public getSupportButtonTintMode()Landroid/graphics/PorterDuff$Mode;
  .registers 2
  .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/q;->b:Landroidx/appcompat/widget/h;
    if-eqz v0, :L0
  .line 2
    invoke-virtual { v0 }, Landroidx/appcompat/widget/h;->d()Landroid/graphics/PorterDuff$Mode;
    move-result-object v0
    goto :L1
  :L0
    const/4 v0, 0
  :L1
    return-object v0
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
  .registers 3
  .line 1
    invoke-super { p0, p1 }, Landroid/widget/RadioButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
  .line 2
    iget-object v0, p0, Landroidx/appcompat/widget/q;->c:Landroidx/appcompat/widget/e;
    if-eqz v0, :L0
  .line 3
    invoke-virtual { v0, p1 }, Landroidx/appcompat/widget/e;->f(Landroid/graphics/drawable/Drawable;)V
  :L0
    return-void
.end method

.method public setBackgroundResource(I)V
  .registers 3
  .line 1
    invoke-super { p0, p1 }, Landroid/widget/RadioButton;->setBackgroundResource(I)V
  .line 2
    iget-object v0, p0, Landroidx/appcompat/widget/q;->c:Landroidx/appcompat/widget/e;
    if-eqz v0, :L0
  .line 3
    invoke-virtual { v0, p1 }, Landroidx/appcompat/widget/e;->g(I)V
  :L0
    return-void
.end method

.method public setButtonDrawable(I)V
  .registers 3
  .line 4
    invoke-virtual { p0 }, Landroid/widget/RadioButton;->getContext()Landroid/content/Context;
    move-result-object v0
    invoke-static { v0, p1 }, Lc/a/k/a/a;->d(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    move-result-object p1
    invoke-virtual { p0, p1 }, Landroidx/appcompat/widget/q;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V
    return-void
.end method

.method public setButtonDrawable(Landroid/graphics/drawable/Drawable;)V
  .registers 2
  .line 1
    invoke-super { p0, p1 }, Landroid/widget/RadioButton;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V
  .line 2
    iget-object p1, p0, Landroidx/appcompat/widget/q;->b:Landroidx/appcompat/widget/h;
    if-eqz p1, :L0
  .line 3
    invoke-virtual { p1 }, Landroidx/appcompat/widget/h;->f()V
  :L0
    return-void
.end method

.method public setSupportBackgroundTintList(Landroid/content/res/ColorStateList;)V
  .registers 3
  .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/q;->c:Landroidx/appcompat/widget/e;
    if-eqz v0, :L0
  .line 2
    invoke-virtual { v0, p1 }, Landroidx/appcompat/widget/e;->i(Landroid/content/res/ColorStateList;)V
  :L0
    return-void
.end method

.method public setSupportBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V
  .registers 3
  .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/q;->c:Landroidx/appcompat/widget/e;
    if-eqz v0, :L0
  .line 2
    invoke-virtual { v0, p1 }, Landroidx/appcompat/widget/e;->j(Landroid/graphics/PorterDuff$Mode;)V
  :L0
    return-void
.end method

.method public setSupportButtonTintList(Landroid/content/res/ColorStateList;)V
  .registers 3
  .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/q;->b:Landroidx/appcompat/widget/h;
    if-eqz v0, :L0
  .line 2
    invoke-virtual { v0, p1 }, Landroidx/appcompat/widget/h;->g(Landroid/content/res/ColorStateList;)V
  :L0
    return-void
.end method

.method public setSupportButtonTintMode(Landroid/graphics/PorterDuff$Mode;)V
  .registers 3
  .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/q;->b:Landroidx/appcompat/widget/h;
    if-eqz v0, :L0
  .line 2
    invoke-virtual { v0, p1 }, Landroidx/appcompat/widget/h;->h(Landroid/graphics/PorterDuff$Mode;)V
  :L0
    return-void
.end method
