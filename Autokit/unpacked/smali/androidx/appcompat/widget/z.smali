.class public Landroidx/appcompat/widget/z;
.super Landroid/widget/ToggleButton;
.implements Landroidx/core/view/u;
.source "SourceFile"

.field private final b:Landroidx/appcompat/widget/e;

.field private final c:Landroidx/appcompat/widget/w;

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
  .registers 4
    const v0, 16842827
  .line 1
    invoke-direct { p0, p1, p2, v0 }, Landroidx/appcompat/widget/z;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
  .registers 4
  .line 2
    invoke-direct { p0, p1, p2, p3 }, Landroid/widget/ToggleButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
  .line 3
    invoke-virtual { p0 }, Landroid/widget/ToggleButton;->getContext()Landroid/content/Context;
    move-result-object p1
    invoke-static { p0, p1 }, Landroidx/appcompat/widget/p0;->a(Landroid/view/View;Landroid/content/Context;)V
  .line 4
    new-instance p1, Landroidx/appcompat/widget/e;
    invoke-direct { p1, p0 }, Landroidx/appcompat/widget/e;-><init>(Landroid/view/View;)V
    iput-object p1, p0, Landroidx/appcompat/widget/z;->b:Landroidx/appcompat/widget/e;
  .line 5
    invoke-virtual { p1, p2, p3 }, Landroidx/appcompat/widget/e;->e(Landroid/util/AttributeSet;I)V
  .line 6
    new-instance p1, Landroidx/appcompat/widget/w;
    invoke-direct { p1, p0 }, Landroidx/appcompat/widget/w;-><init>(Landroid/widget/TextView;)V
    iput-object p1, p0, Landroidx/appcompat/widget/z;->c:Landroidx/appcompat/widget/w;
  .line 7
    invoke-virtual { p1, p2, p3 }, Landroidx/appcompat/widget/w;->m(Landroid/util/AttributeSet;I)V
    return-void
.end method

.method protected drawableStateChanged()V
  .registers 2
  .line 1
    invoke-super { p0 }, Landroid/widget/ToggleButton;->drawableStateChanged()V
  .line 2
    iget-object v0, p0, Landroidx/appcompat/widget/z;->b:Landroidx/appcompat/widget/e;
    if-eqz v0, :L0
  .line 3
    invoke-virtual { v0 }, Landroidx/appcompat/widget/e;->b()V
  :L0
  .line 4
    iget-object v0, p0, Landroidx/appcompat/widget/z;->c:Landroidx/appcompat/widget/w;
    if-eqz v0, :L1
  .line 5
    invoke-virtual { v0 }, Landroidx/appcompat/widget/w;->b()V
  :L1
    return-void
.end method

.method public getSupportBackgroundTintList()Landroid/content/res/ColorStateList;
  .registers 2
  .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/z;->b:Landroidx/appcompat/widget/e;
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
    iget-object v0, p0, Landroidx/appcompat/widget/z;->b:Landroidx/appcompat/widget/e;
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

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
  .registers 3
  .line 1
    invoke-super { p0, p1 }, Landroid/widget/ToggleButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
  .line 2
    iget-object v0, p0, Landroidx/appcompat/widget/z;->b:Landroidx/appcompat/widget/e;
    if-eqz v0, :L0
  .line 3
    invoke-virtual { v0, p1 }, Landroidx/appcompat/widget/e;->f(Landroid/graphics/drawable/Drawable;)V
  :L0
    return-void
.end method

.method public setBackgroundResource(I)V
  .registers 3
  .line 1
    invoke-super { p0, p1 }, Landroid/widget/ToggleButton;->setBackgroundResource(I)V
  .line 2
    iget-object v0, p0, Landroidx/appcompat/widget/z;->b:Landroidx/appcompat/widget/e;
    if-eqz v0, :L0
  .line 3
    invoke-virtual { v0, p1 }, Landroidx/appcompat/widget/e;->g(I)V
  :L0
    return-void
.end method

.method public setSupportBackgroundTintList(Landroid/content/res/ColorStateList;)V
  .registers 3
  .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/z;->b:Landroidx/appcompat/widget/e;
    if-eqz v0, :L0
  .line 2
    invoke-virtual { v0, p1 }, Landroidx/appcompat/widget/e;->i(Landroid/content/res/ColorStateList;)V
  :L0
    return-void
.end method

.method public setSupportBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V
  .registers 3
  .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/z;->b:Landroidx/appcompat/widget/e;
    if-eqz v0, :L0
  .line 2
    invoke-virtual { v0, p1 }, Landroidx/appcompat/widget/e;->j(Landroid/graphics/PorterDuff$Mode;)V
  :L0
    return-void
.end method
