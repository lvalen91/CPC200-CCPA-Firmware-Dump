.class public Landroidx/appcompat/widget/AppCompatButton;
.super Landroid/widget/Button;
.implements Landroidx/core/view/u;
.implements Landroidx/core/widget/b;
.implements Landroidx/core/widget/l;
.source "SourceFile"

.field private final b:Landroidx/appcompat/widget/e;

.field private final c:Landroidx/appcompat/widget/w;

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
  .registers 4
  .line 1
    sget v0, Lc/a/a;->buttonStyle:I
    invoke-direct { p0, p1, p2, v0 }, Landroidx/appcompat/widget/AppCompatButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
  .registers 4
  .line 2
    invoke-static { p1 }, Landroidx/appcompat/widget/r0;->b(Landroid/content/Context;)Landroid/content/Context;
    move-result-object p1
    invoke-direct { p0, p1, p2, p3 }, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
  .line 3
    invoke-virtual { p0 }, Landroid/widget/Button;->getContext()Landroid/content/Context;
    move-result-object p1
    invoke-static { p0, p1 }, Landroidx/appcompat/widget/p0;->a(Landroid/view/View;Landroid/content/Context;)V
  .line 4
    new-instance p1, Landroidx/appcompat/widget/e;
    invoke-direct { p1, p0 }, Landroidx/appcompat/widget/e;-><init>(Landroid/view/View;)V
    iput-object p1, p0, Landroidx/appcompat/widget/AppCompatButton;->b:Landroidx/appcompat/widget/e;
  .line 5
    invoke-virtual { p1, p2, p3 }, Landroidx/appcompat/widget/e;->e(Landroid/util/AttributeSet;I)V
  .line 6
    new-instance p1, Landroidx/appcompat/widget/w;
    invoke-direct { p1, p0 }, Landroidx/appcompat/widget/w;-><init>(Landroid/widget/TextView;)V
    iput-object p1, p0, Landroidx/appcompat/widget/AppCompatButton;->c:Landroidx/appcompat/widget/w;
  .line 7
    invoke-virtual { p1, p2, p3 }, Landroidx/appcompat/widget/w;->m(Landroid/util/AttributeSet;I)V
  .line 8
    iget-object p1, p0, Landroidx/appcompat/widget/AppCompatButton;->c:Landroidx/appcompat/widget/w;
    invoke-virtual { p1 }, Landroidx/appcompat/widget/w;->b()V
    return-void
.end method

.method protected drawableStateChanged()V
  .registers 2
  .line 1
    invoke-super { p0 }, Landroid/widget/Button;->drawableStateChanged()V
  .line 2
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatButton;->b:Landroidx/appcompat/widget/e;
    if-eqz v0, :L0
  .line 3
    invoke-virtual { v0 }, Landroidx/appcompat/widget/e;->b()V
  :L0
  .line 4
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatButton;->c:Landroidx/appcompat/widget/w;
    if-eqz v0, :L1
  .line 5
    invoke-virtual { v0 }, Landroidx/appcompat/widget/w;->b()V
  :L1
    return-void
.end method

.method public getAutoSizeMaxTextSize()I
  .registers 2
  .line 1
    sget-boolean v0, Landroidx/core/widget/b;->a:Z
    if-eqz v0, :L0
  .line 2
    invoke-super { p0 }, Landroid/widget/Button;->getAutoSizeMaxTextSize()I
    move-result v0
    return v0
  :L0
  .line 3
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatButton;->c:Landroidx/appcompat/widget/w;
    if-eqz v0, :L1
  .line 4
    invoke-virtual { v0 }, Landroidx/appcompat/widget/w;->e()I
    move-result v0
    return v0
  :L1
    const/4 v0, -1
    return v0
.end method

.method public getAutoSizeMinTextSize()I
  .registers 2
  .line 1
    sget-boolean v0, Landroidx/core/widget/b;->a:Z
    if-eqz v0, :L0
  .line 2
    invoke-super { p0 }, Landroid/widget/Button;->getAutoSizeMinTextSize()I
    move-result v0
    return v0
  :L0
  .line 3
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatButton;->c:Landroidx/appcompat/widget/w;
    if-eqz v0, :L1
  .line 4
    invoke-virtual { v0 }, Landroidx/appcompat/widget/w;->f()I
    move-result v0
    return v0
  :L1
    const/4 v0, -1
    return v0
.end method

.method public getAutoSizeStepGranularity()I
  .registers 2
  .line 1
    sget-boolean v0, Landroidx/core/widget/b;->a:Z
    if-eqz v0, :L0
  .line 2
    invoke-super { p0 }, Landroid/widget/Button;->getAutoSizeStepGranularity()I
    move-result v0
    return v0
  :L0
  .line 3
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatButton;->c:Landroidx/appcompat/widget/w;
    if-eqz v0, :L1
  .line 4
    invoke-virtual { v0 }, Landroidx/appcompat/widget/w;->g()I
    move-result v0
    return v0
  :L1
    const/4 v0, -1
    return v0
.end method

.method public getAutoSizeTextAvailableSizes()[I
  .registers 2
  .line 1
    sget-boolean v0, Landroidx/core/widget/b;->a:Z
    if-eqz v0, :L0
  .line 2
    invoke-super { p0 }, Landroid/widget/Button;->getAutoSizeTextAvailableSizes()[I
    move-result-object v0
    return-object v0
  :L0
  .line 3
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatButton;->c:Landroidx/appcompat/widget/w;
    if-eqz v0, :L1
  .line 4
    invoke-virtual { v0 }, Landroidx/appcompat/widget/w;->h()[I
    move-result-object v0
    return-object v0
  :L1
    const/4 v0, 0
    new-array v0, v0, [I
    return-object v0
.end method

.method public getAutoSizeTextType()I
  .annotation build Landroid/annotation/SuppressLint;
    value = {
      "WrongConstant"
    }
  .end annotation
  .registers 4
  .line 1
    sget-boolean v0, Landroidx/core/widget/b;->a:Z
    const/4 v1, 0
    if-eqz v0, :L1
  .line 2
    invoke-super { p0 }, Landroid/widget/Button;->getAutoSizeTextType()I
    move-result v0
    const/4 v2, 1
    if-ne v0, v2, :L0
    const/4 v1, 1
  :L0
    return v1
  :L1
  .line 3
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatButton;->c:Landroidx/appcompat/widget/w;
    if-eqz v0, :L2
  .line 4
    invoke-virtual { v0 }, Landroidx/appcompat/widget/w;->i()I
    move-result v0
    return v0
  :L2
    return v1
.end method

.method public getSupportBackgroundTintList()Landroid/content/res/ColorStateList;
  .registers 2
  .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatButton;->b:Landroidx/appcompat/widget/e;
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
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatButton;->b:Landroidx/appcompat/widget/e;
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

.method public getSupportCompoundDrawablesTintList()Landroid/content/res/ColorStateList;
  .registers 2
  .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatButton;->c:Landroidx/appcompat/widget/w;
    invoke-virtual { v0 }, Landroidx/appcompat/widget/w;->j()Landroid/content/res/ColorStateList;
    move-result-object v0
    return-object v0
.end method

.method public getSupportCompoundDrawablesTintMode()Landroid/graphics/PorterDuff$Mode;
  .registers 2
  .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatButton;->c:Landroidx/appcompat/widget/w;
    invoke-virtual { v0 }, Landroidx/appcompat/widget/w;->k()Landroid/graphics/PorterDuff$Mode;
    move-result-object v0
    return-object v0
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
  .registers 3
  .line 1
    invoke-super { p0, p1 }, Landroid/widget/Button;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
  .line 2
    const-class v0, Landroid/widget/Button;
    invoke-virtual { v0 }, Ljava/lang/Class;->getName()Ljava/lang/String;
    move-result-object v0
    invoke-virtual { p1, v0 }, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
  .registers 3
  .line 1
    invoke-super { p0, p1 }, Landroid/widget/Button;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
  .line 2
    const-class v0, Landroid/widget/Button;
    invoke-virtual { v0 }, Ljava/lang/Class;->getName()Ljava/lang/String;
    move-result-object v0
    invoke-virtual { p1, v0 }, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V
    return-void
.end method

.method protected onLayout(ZIIII)V
  .registers 12
  .line 1
    invoke-super/range { p0 .. p5 }, Landroid/widget/Button;->onLayout(ZIIII)V
  .line 2
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatButton;->c:Landroidx/appcompat/widget/w;
    if-eqz v0, :L0
    move v1, p1
    move v2, p2
    move v3, p3
    move v4, p4
    move v5, p5
  .line 3
    invoke-virtual/range { v0 .. v5 }, Landroidx/appcompat/widget/w;->o(ZIIII)V
  :L0
    return-void
.end method

.method protected onTextChanged(Ljava/lang/CharSequence;III)V
  .registers 5
  .line 1
    invoke-super { p0, p1, p2, p3, p4 }, Landroid/widget/Button;->onTextChanged(Ljava/lang/CharSequence;III)V
  .line 2
    iget-object p1, p0, Landroidx/appcompat/widget/AppCompatButton;->c:Landroidx/appcompat/widget/w;
    if-eqz p1, :L0
    sget-boolean p2, Landroidx/core/widget/b;->a:Z
    if-nez p2, :L0
    invoke-virtual { p1 }, Landroidx/appcompat/widget/w;->l()Z
    move-result p1
    if-eqz p1, :L0
  .line 3
    iget-object p1, p0, Landroidx/appcompat/widget/AppCompatButton;->c:Landroidx/appcompat/widget/w;
    invoke-virtual { p1 }, Landroidx/appcompat/widget/w;->c()V
  :L0
    return-void
.end method

.method public setAutoSizeTextTypeUniformWithConfiguration(IIII)V
  .registers 6
  .line 1
    sget-boolean v0, Landroidx/core/widget/b;->a:Z
    if-eqz v0, :L0
  .line 2
    invoke-super { p0, p1, p2, p3, p4 }, Landroid/widget/Button;->setAutoSizeTextTypeUniformWithConfiguration(IIII)V
    goto :L1
  :L0
  .line 3
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatButton;->c:Landroidx/appcompat/widget/w;
    if-eqz v0, :L1
  .line 4
    invoke-virtual { v0, p1, p2, p3, p4 }, Landroidx/appcompat/widget/w;->t(IIII)V
  :L1
    return-void
.end method

.method public setAutoSizeTextTypeUniformWithPresetSizes([II)V
  .registers 4
  .line 1
    sget-boolean v0, Landroidx/core/widget/b;->a:Z
    if-eqz v0, :L0
  .line 2
    invoke-super { p0, p1, p2 }, Landroid/widget/Button;->setAutoSizeTextTypeUniformWithPresetSizes([II)V
    goto :L1
  :L0
  .line 3
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatButton;->c:Landroidx/appcompat/widget/w;
    if-eqz v0, :L1
  .line 4
    invoke-virtual { v0, p1, p2 }, Landroidx/appcompat/widget/w;->u([II)V
  :L1
    return-void
.end method

.method public setAutoSizeTextTypeWithDefaults(I)V
  .registers 3
  .line 1
    sget-boolean v0, Landroidx/core/widget/b;->a:Z
    if-eqz v0, :L0
  .line 2
    invoke-super { p0, p1 }, Landroid/widget/Button;->setAutoSizeTextTypeWithDefaults(I)V
    goto :L1
  :L0
  .line 3
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatButton;->c:Landroidx/appcompat/widget/w;
    if-eqz v0, :L1
  .line 4
    invoke-virtual { v0, p1 }, Landroidx/appcompat/widget/w;->v(I)V
  :L1
    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
  .registers 3
  .line 1
    invoke-super { p0, p1 }, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
  .line 2
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatButton;->b:Landroidx/appcompat/widget/e;
    if-eqz v0, :L0
  .line 3
    invoke-virtual { v0, p1 }, Landroidx/appcompat/widget/e;->f(Landroid/graphics/drawable/Drawable;)V
  :L0
    return-void
.end method

.method public setBackgroundResource(I)V
  .registers 3
  .line 1
    invoke-super { p0, p1 }, Landroid/widget/Button;->setBackgroundResource(I)V
  .line 2
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatButton;->b:Landroidx/appcompat/widget/e;
    if-eqz v0, :L0
  .line 3
    invoke-virtual { v0, p1 }, Landroidx/appcompat/widget/e;->g(I)V
  :L0
    return-void
.end method

.method public setCustomSelectionActionModeCallback(Landroid/view/ActionMode$Callback;)V
  .registers 2
  .line 1
    invoke-static { p0, p1 }, Landroidx/core/widget/i;->p(Landroid/widget/TextView;Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode$Callback;
    move-result-object p1
  .line 2
    invoke-super { p0, p1 }, Landroid/widget/Button;->setCustomSelectionActionModeCallback(Landroid/view/ActionMode$Callback;)V
    return-void
.end method

.method public setSupportAllCaps(Z)V
  .registers 3
  .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatButton;->c:Landroidx/appcompat/widget/w;
    if-eqz v0, :L0
  .line 2
    invoke-virtual { v0, p1 }, Landroidx/appcompat/widget/w;->s(Z)V
  :L0
    return-void
.end method

.method public setSupportBackgroundTintList(Landroid/content/res/ColorStateList;)V
  .registers 3
  .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatButton;->b:Landroidx/appcompat/widget/e;
    if-eqz v0, :L0
  .line 2
    invoke-virtual { v0, p1 }, Landroidx/appcompat/widget/e;->i(Landroid/content/res/ColorStateList;)V
  :L0
    return-void
.end method

.method public setSupportBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V
  .registers 3
  .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatButton;->b:Landroidx/appcompat/widget/e;
    if-eqz v0, :L0
  .line 2
    invoke-virtual { v0, p1 }, Landroidx/appcompat/widget/e;->j(Landroid/graphics/PorterDuff$Mode;)V
  :L0
    return-void
.end method

.method public setSupportCompoundDrawablesTintList(Landroid/content/res/ColorStateList;)V
  .registers 3
  .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatButton;->c:Landroidx/appcompat/widget/w;
    invoke-virtual { v0, p1 }, Landroidx/appcompat/widget/w;->w(Landroid/content/res/ColorStateList;)V
  .line 2
    iget-object p1, p0, Landroidx/appcompat/widget/AppCompatButton;->c:Landroidx/appcompat/widget/w;
    invoke-virtual { p1 }, Landroidx/appcompat/widget/w;->b()V
    return-void
.end method

.method public setSupportCompoundDrawablesTintMode(Landroid/graphics/PorterDuff$Mode;)V
  .registers 3
  .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatButton;->c:Landroidx/appcompat/widget/w;
    invoke-virtual { v0, p1 }, Landroidx/appcompat/widget/w;->x(Landroid/graphics/PorterDuff$Mode;)V
  .line 2
    iget-object p1, p0, Landroidx/appcompat/widget/AppCompatButton;->c:Landroidx/appcompat/widget/w;
    invoke-virtual { p1 }, Landroidx/appcompat/widget/w;->b()V
    return-void
.end method

.method public setTextAppearance(Landroid/content/Context;I)V
  .registers 4
  .line 1
    invoke-super { p0, p1, p2 }, Landroid/widget/Button;->setTextAppearance(Landroid/content/Context;I)V
  .line 2
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatButton;->c:Landroidx/appcompat/widget/w;
    if-eqz v0, :L0
  .line 3
    invoke-virtual { v0, p1, p2 }, Landroidx/appcompat/widget/w;->q(Landroid/content/Context;I)V
  :L0
    return-void
.end method

.method public setTextSize(IF)V
  .registers 4
  .line 1
    sget-boolean v0, Landroidx/core/widget/b;->a:Z
    if-eqz v0, :L0
  .line 2
    invoke-super { p0, p1, p2 }, Landroid/widget/Button;->setTextSize(IF)V
    goto :L1
  :L0
  .line 3
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatButton;->c:Landroidx/appcompat/widget/w;
    if-eqz v0, :L1
  .line 4
    invoke-virtual { v0, p1, p2 }, Landroidx/appcompat/widget/w;->A(IF)V
  :L1
    return-void
.end method
