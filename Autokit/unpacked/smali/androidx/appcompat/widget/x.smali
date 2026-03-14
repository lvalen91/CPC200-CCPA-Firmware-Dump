.class public Landroidx/appcompat/widget/x;
.super Landroid/widget/TextView;
.implements Landroidx/core/view/u;
.implements Landroidx/core/widget/l;
.implements Landroidx/core/widget/b;
.source "SourceFile"

.field private final b:Landroidx/appcompat/widget/e;

.field private final c:Landroidx/appcompat/widget/w;

.field private final d:Landroidx/appcompat/widget/v;

.field private e:Z

.field private f:Ljava/util/concurrent/Future;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "Ljava/util/concurrent/Future<",
      "Lc/g/i/c;",
      ">;"
    }
  .end annotation
.end field

.method public constructor <init>(Landroid/content/Context;)V
  .registers 3
    const/4 v0, 0
  .line 1
    invoke-direct { p0, p1, v0 }, Landroidx/appcompat/widget/x;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
  .registers 4
    const v0, 16842884
  .line 2
    invoke-direct { p0, p1, p2, v0 }, Landroidx/appcompat/widget/x;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
  .registers 4
  .line 3
    invoke-static { p1 }, Landroidx/appcompat/widget/r0;->b(Landroid/content/Context;)Landroid/content/Context;
    move-result-object p1
    invoke-direct { p0, p1, p2, p3 }, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    const/4 p1, 0
  .line 4
    iput-boolean p1, p0, Landroidx/appcompat/widget/x;->e:Z
  .line 5
    invoke-virtual { p0 }, Landroid/widget/TextView;->getContext()Landroid/content/Context;
    move-result-object p1
    invoke-static { p0, p1 }, Landroidx/appcompat/widget/p0;->a(Landroid/view/View;Landroid/content/Context;)V
  .line 6
    new-instance p1, Landroidx/appcompat/widget/e;
    invoke-direct { p1, p0 }, Landroidx/appcompat/widget/e;-><init>(Landroid/view/View;)V
    iput-object p1, p0, Landroidx/appcompat/widget/x;->b:Landroidx/appcompat/widget/e;
  .line 7
    invoke-virtual { p1, p2, p3 }, Landroidx/appcompat/widget/e;->e(Landroid/util/AttributeSet;I)V
  .line 8
    new-instance p1, Landroidx/appcompat/widget/w;
    invoke-direct { p1, p0 }, Landroidx/appcompat/widget/w;-><init>(Landroid/widget/TextView;)V
    iput-object p1, p0, Landroidx/appcompat/widget/x;->c:Landroidx/appcompat/widget/w;
  .line 9
    invoke-virtual { p1, p2, p3 }, Landroidx/appcompat/widget/w;->m(Landroid/util/AttributeSet;I)V
  .line 10
    iget-object p1, p0, Landroidx/appcompat/widget/x;->c:Landroidx/appcompat/widget/w;
    invoke-virtual { p1 }, Landroidx/appcompat/widget/w;->b()V
  .line 11
    new-instance p1, Landroidx/appcompat/widget/v;
    invoke-direct { p1, p0 }, Landroidx/appcompat/widget/v;-><init>(Landroid/widget/TextView;)V
    iput-object p1, p0, Landroidx/appcompat/widget/x;->d:Landroidx/appcompat/widget/v;
    return-void
.end method

.method private g()V
  .catch Ljava/lang/InterruptedException; { :L0 .. :L1 } :L1
  .catch Ljava/util/concurrent/ExecutionException; { :L0 .. :L1 } :L1
  .registers 3
  .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/x;->f:Ljava/util/concurrent/Future;
    if-eqz v0, :L1
    const/4 v1, 0
  :L0
  .line 2
    iput-object v1, p0, Landroidx/appcompat/widget/x;->f:Ljava/util/concurrent/Future;
  .line 3
    invoke-interface { v0 }, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Lc/g/i/c;
    invoke-static { p0, v0 }, Landroidx/core/widget/i;->m(Landroid/widget/TextView;Lc/g/i/c;)V
  :L1
    return-void
.end method

.method protected drawableStateChanged()V
  .registers 2
  .line 1
    invoke-super { p0 }, Landroid/widget/TextView;->drawableStateChanged()V
  .line 2
    iget-object v0, p0, Landroidx/appcompat/widget/x;->b:Landroidx/appcompat/widget/e;
    if-eqz v0, :L0
  .line 3
    invoke-virtual { v0 }, Landroidx/appcompat/widget/e;->b()V
  :L0
  .line 4
    iget-object v0, p0, Landroidx/appcompat/widget/x;->c:Landroidx/appcompat/widget/w;
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
    invoke-super { p0 }, Landroid/widget/TextView;->getAutoSizeMaxTextSize()I
    move-result v0
    return v0
  :L0
  .line 3
    iget-object v0, p0, Landroidx/appcompat/widget/x;->c:Landroidx/appcompat/widget/w;
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
    invoke-super { p0 }, Landroid/widget/TextView;->getAutoSizeMinTextSize()I
    move-result v0
    return v0
  :L0
  .line 3
    iget-object v0, p0, Landroidx/appcompat/widget/x;->c:Landroidx/appcompat/widget/w;
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
    invoke-super { p0 }, Landroid/widget/TextView;->getAutoSizeStepGranularity()I
    move-result v0
    return v0
  :L0
  .line 3
    iget-object v0, p0, Landroidx/appcompat/widget/x;->c:Landroidx/appcompat/widget/w;
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
    invoke-super { p0 }, Landroid/widget/TextView;->getAutoSizeTextAvailableSizes()[I
    move-result-object v0
    return-object v0
  :L0
  .line 3
    iget-object v0, p0, Landroidx/appcompat/widget/x;->c:Landroidx/appcompat/widget/w;
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
    invoke-super { p0 }, Landroid/widget/TextView;->getAutoSizeTextType()I
    move-result v0
    const/4 v2, 1
    if-ne v0, v2, :L0
    const/4 v1, 1
  :L0
    return v1
  :L1
  .line 3
    iget-object v0, p0, Landroidx/appcompat/widget/x;->c:Landroidx/appcompat/widget/w;
    if-eqz v0, :L2
  .line 4
    invoke-virtual { v0 }, Landroidx/appcompat/widget/w;->i()I
    move-result v0
    return v0
  :L2
    return v1
.end method

.method public getFirstBaselineToTopHeight()I
  .registers 2
  .line 1
    invoke-static { p0 }, Landroidx/core/widget/i;->b(Landroid/widget/TextView;)I
    move-result v0
    return v0
.end method

.method public getLastBaselineToBottomHeight()I
  .registers 2
  .line 1
    invoke-static { p0 }, Landroidx/core/widget/i;->c(Landroid/widget/TextView;)I
    move-result v0
    return v0
.end method

.method public getSupportBackgroundTintList()Landroid/content/res/ColorStateList;
  .registers 2
  .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/x;->b:Landroidx/appcompat/widget/e;
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
    iget-object v0, p0, Landroidx/appcompat/widget/x;->b:Landroidx/appcompat/widget/e;
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
    iget-object v0, p0, Landroidx/appcompat/widget/x;->c:Landroidx/appcompat/widget/w;
    invoke-virtual { v0 }, Landroidx/appcompat/widget/w;->j()Landroid/content/res/ColorStateList;
    move-result-object v0
    return-object v0
.end method

.method public getSupportCompoundDrawablesTintMode()Landroid/graphics/PorterDuff$Mode;
  .registers 2
  .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/x;->c:Landroidx/appcompat/widget/w;
    invoke-virtual { v0 }, Landroidx/appcompat/widget/w;->k()Landroid/graphics/PorterDuff$Mode;
    move-result-object v0
    return-object v0
.end method

.method public getText()Ljava/lang/CharSequence;
  .registers 2
  .line 1
    invoke-direct { p0 }, Landroidx/appcompat/widget/x;->g()V
  .line 2
    invoke-super { p0 }, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;
    move-result-object v0
    return-object v0
.end method

.method public getTextClassifier()Landroid/view/textclassifier/TextClassifier;
  .registers 3
  .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v1, 28
    if-ge v0, v1, :L1
    iget-object v0, p0, Landroidx/appcompat/widget/x;->d:Landroidx/appcompat/widget/v;
    if-nez v0, :L0
    goto :L1
  :L0
  .line 2
    invoke-virtual { v0 }, Landroidx/appcompat/widget/v;->a()Landroid/view/textclassifier/TextClassifier;
    move-result-object v0
    return-object v0
  :L1
  .line 3
    invoke-super { p0 }, Landroid/widget/TextView;->getTextClassifier()Landroid/view/textclassifier/TextClassifier;
    move-result-object v0
    return-object v0
.end method

.method public getTextMetricsParamsCompat()Lc/g/i/c$a;
  .registers 2
  .line 1
    invoke-static { p0 }, Landroidx/core/widget/i;->f(Landroid/widget/TextView;)Lc/g/i/c$a;
    move-result-object v0
    return-object v0
.end method

.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
  .registers 4
  .line 1
    invoke-super { p0, p1 }, Landroid/widget/TextView;->onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    move-result-object v0
  .line 2
    iget-object v1, p0, Landroidx/appcompat/widget/x;->c:Landroidx/appcompat/widget/w;
    invoke-virtual { v1, p0, v0, p1 }, Landroidx/appcompat/widget/w;->r(Landroid/widget/TextView;Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;)V
  .line 3
    invoke-static { v0, p1, p0 }, Landroidx/appcompat/widget/k;->a(Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;Landroid/view/View;)Landroid/view/inputmethod/InputConnection;
    return-object v0
.end method

.method protected onLayout(ZIIII)V
  .registers 12
  .line 1
    invoke-super/range { p0 .. p5 }, Landroid/widget/TextView;->onLayout(ZIIII)V
  .line 2
    iget-object v0, p0, Landroidx/appcompat/widget/x;->c:Landroidx/appcompat/widget/w;
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

.method protected onMeasure(II)V
  .registers 3
  .line 1
    invoke-direct { p0 }, Landroidx/appcompat/widget/x;->g()V
  .line 2
    invoke-super { p0, p1, p2 }, Landroid/widget/TextView;->onMeasure(II)V
    return-void
.end method

.method protected onTextChanged(Ljava/lang/CharSequence;III)V
  .registers 5
  .line 1
    invoke-super { p0, p1, p2, p3, p4 }, Landroid/widget/TextView;->onTextChanged(Ljava/lang/CharSequence;III)V
  .line 2
    iget-object p1, p0, Landroidx/appcompat/widget/x;->c:Landroidx/appcompat/widget/w;
    if-eqz p1, :L0
    sget-boolean p2, Landroidx/core/widget/b;->a:Z
    if-nez p2, :L0
    invoke-virtual { p1 }, Landroidx/appcompat/widget/w;->l()Z
    move-result p1
    if-eqz p1, :L0
  .line 3
    iget-object p1, p0, Landroidx/appcompat/widget/x;->c:Landroidx/appcompat/widget/w;
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
    invoke-super { p0, p1, p2, p3, p4 }, Landroid/widget/TextView;->setAutoSizeTextTypeUniformWithConfiguration(IIII)V
    goto :L1
  :L0
  .line 3
    iget-object v0, p0, Landroidx/appcompat/widget/x;->c:Landroidx/appcompat/widget/w;
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
    invoke-super { p0, p1, p2 }, Landroid/widget/TextView;->setAutoSizeTextTypeUniformWithPresetSizes([II)V
    goto :L1
  :L0
  .line 3
    iget-object v0, p0, Landroidx/appcompat/widget/x;->c:Landroidx/appcompat/widget/w;
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
    invoke-super { p0, p1 }, Landroid/widget/TextView;->setAutoSizeTextTypeWithDefaults(I)V
    goto :L1
  :L0
  .line 3
    iget-object v0, p0, Landroidx/appcompat/widget/x;->c:Landroidx/appcompat/widget/w;
    if-eqz v0, :L1
  .line 4
    invoke-virtual { v0, p1 }, Landroidx/appcompat/widget/w;->v(I)V
  :L1
    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
  .registers 3
  .line 1
    invoke-super { p0, p1 }, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
  .line 2
    iget-object v0, p0, Landroidx/appcompat/widget/x;->b:Landroidx/appcompat/widget/e;
    if-eqz v0, :L0
  .line 3
    invoke-virtual { v0, p1 }, Landroidx/appcompat/widget/e;->f(Landroid/graphics/drawable/Drawable;)V
  :L0
    return-void
.end method

.method public setBackgroundResource(I)V
  .registers 3
  .line 1
    invoke-super { p0, p1 }, Landroid/widget/TextView;->setBackgroundResource(I)V
  .line 2
    iget-object v0, p0, Landroidx/appcompat/widget/x;->b:Landroidx/appcompat/widget/e;
    if-eqz v0, :L0
  .line 3
    invoke-virtual { v0, p1 }, Landroidx/appcompat/widget/e;->g(I)V
  :L0
    return-void
.end method

.method public setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
  .registers 5
  .line 1
    invoke-super { p0, p1, p2, p3, p4 }, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
  .line 2
    iget-object p1, p0, Landroidx/appcompat/widget/x;->c:Landroidx/appcompat/widget/w;
    if-eqz p1, :L0
  .line 3
    invoke-virtual { p1 }, Landroidx/appcompat/widget/w;->p()V
  :L0
    return-void
.end method

.method public setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
  .registers 5
  .line 1
    invoke-super { p0, p1, p2, p3, p4 }, Landroid/widget/TextView;->setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
  .line 2
    iget-object p1, p0, Landroidx/appcompat/widget/x;->c:Landroidx/appcompat/widget/w;
    if-eqz p1, :L0
  .line 3
    invoke-virtual { p1 }, Landroidx/appcompat/widget/w;->p()V
  :L0
    return-void
.end method

.method public setCompoundDrawablesRelativeWithIntrinsicBounds(IIII)V
  .registers 7
  .line 4
    invoke-virtual { p0 }, Landroid/widget/TextView;->getContext()Landroid/content/Context;
    move-result-object v0
    const/4 v1, 0
    if-eqz p1, :L0
  .line 5
    invoke-static { v0, p1 }, Lc/a/k/a/a;->d(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    move-result-object p1
    goto :L1
  :L0
    move-object p1, v1
  :L1
    if-eqz p2, :L2
  .line 6
    invoke-static { v0, p2 }, Lc/a/k/a/a;->d(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    move-result-object p2
    goto :L3
  :L2
    move-object p2, v1
  :L3
    if-eqz p3, :L4
  .line 7
    invoke-static { v0, p3 }, Lc/a/k/a/a;->d(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    move-result-object p3
    goto :L5
  :L4
    move-object p3, v1
  :L5
    if-eqz p4, :L6
  .line 8
    invoke-static { v0, p4 }, Lc/a/k/a/a;->d(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    move-result-object v1
  :L6
  .line 9
    invoke-virtual { p0, p1, p2, p3, v1 }, Landroidx/appcompat/widget/x;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
  .line 10
    iget-object p1, p0, Landroidx/appcompat/widget/x;->c:Landroidx/appcompat/widget/w;
    if-eqz p1, :L7
  .line 11
    invoke-virtual { p1 }, Landroidx/appcompat/widget/w;->p()V
  :L7
    return-void
.end method

.method public setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
  .registers 5
  .line 1
    invoke-super { p0, p1, p2, p3, p4 }, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
  .line 2
    iget-object p1, p0, Landroidx/appcompat/widget/x;->c:Landroidx/appcompat/widget/w;
    if-eqz p1, :L0
  .line 3
    invoke-virtual { p1 }, Landroidx/appcompat/widget/w;->p()V
  :L0
    return-void
.end method

.method public setCompoundDrawablesWithIntrinsicBounds(IIII)V
  .registers 7
  .line 4
    invoke-virtual { p0 }, Landroid/widget/TextView;->getContext()Landroid/content/Context;
    move-result-object v0
    const/4 v1, 0
    if-eqz p1, :L0
  .line 5
    invoke-static { v0, p1 }, Lc/a/k/a/a;->d(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    move-result-object p1
    goto :L1
  :L0
    move-object p1, v1
  :L1
    if-eqz p2, :L2
  .line 6
    invoke-static { v0, p2 }, Lc/a/k/a/a;->d(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    move-result-object p2
    goto :L3
  :L2
    move-object p2, v1
  :L3
    if-eqz p3, :L4
  .line 7
    invoke-static { v0, p3 }, Lc/a/k/a/a;->d(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    move-result-object p3
    goto :L5
  :L4
    move-object p3, v1
  :L5
    if-eqz p4, :L6
  .line 8
    invoke-static { v0, p4 }, Lc/a/k/a/a;->d(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    move-result-object v1
  :L6
  .line 9
    invoke-virtual { p0, p1, p2, p3, v1 }, Landroidx/appcompat/widget/x;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
  .line 10
    iget-object p1, p0, Landroidx/appcompat/widget/x;->c:Landroidx/appcompat/widget/w;
    if-eqz p1, :L7
  .line 11
    invoke-virtual { p1 }, Landroidx/appcompat/widget/w;->p()V
  :L7
    return-void
.end method

.method public setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
  .registers 5
  .line 1
    invoke-super { p0, p1, p2, p3, p4 }, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
  .line 2
    iget-object p1, p0, Landroidx/appcompat/widget/x;->c:Landroidx/appcompat/widget/w;
    if-eqz p1, :L0
  .line 3
    invoke-virtual { p1 }, Landroidx/appcompat/widget/w;->p()V
  :L0
    return-void
.end method

.method public setCustomSelectionActionModeCallback(Landroid/view/ActionMode$Callback;)V
  .registers 2
  .line 1
    invoke-static { p0, p1 }, Landroidx/core/widget/i;->p(Landroid/widget/TextView;Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode$Callback;
    move-result-object p1
  .line 2
    invoke-super { p0, p1 }, Landroid/widget/TextView;->setCustomSelectionActionModeCallback(Landroid/view/ActionMode$Callback;)V
    return-void
.end method

.method public setFirstBaselineToTopHeight(I)V
  .registers 4
  .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v1, 28
    if-lt v0, v1, :L0
  .line 2
    invoke-super { p0, p1 }, Landroid/widget/TextView;->setFirstBaselineToTopHeight(I)V
    goto :L1
  :L0
  .line 3
    invoke-static { p0, p1 }, Landroidx/core/widget/i;->j(Landroid/widget/TextView;I)V
  :L1
    return-void
.end method

.method public setLastBaselineToBottomHeight(I)V
  .registers 4
  .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v1, 28
    if-lt v0, v1, :L0
  .line 2
    invoke-super { p0, p1 }, Landroid/widget/TextView;->setLastBaselineToBottomHeight(I)V
    goto :L1
  :L0
  .line 3
    invoke-static { p0, p1 }, Landroidx/core/widget/i;->k(Landroid/widget/TextView;I)V
  :L1
    return-void
.end method

.method public setLineHeight(I)V
  .registers 2
  .line 1
    invoke-static { p0, p1 }, Landroidx/core/widget/i;->l(Landroid/widget/TextView;I)V
    return-void
.end method

.method public setPrecomputedText(Lc/g/i/c;)V
  .registers 2
  .line 1
    invoke-static { p0, p1 }, Landroidx/core/widget/i;->m(Landroid/widget/TextView;Lc/g/i/c;)V
    return-void
.end method

.method public setSupportBackgroundTintList(Landroid/content/res/ColorStateList;)V
  .registers 3
  .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/x;->b:Landroidx/appcompat/widget/e;
    if-eqz v0, :L0
  .line 2
    invoke-virtual { v0, p1 }, Landroidx/appcompat/widget/e;->i(Landroid/content/res/ColorStateList;)V
  :L0
    return-void
.end method

.method public setSupportBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V
  .registers 3
  .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/x;->b:Landroidx/appcompat/widget/e;
    if-eqz v0, :L0
  .line 2
    invoke-virtual { v0, p1 }, Landroidx/appcompat/widget/e;->j(Landroid/graphics/PorterDuff$Mode;)V
  :L0
    return-void
.end method

.method public setSupportCompoundDrawablesTintList(Landroid/content/res/ColorStateList;)V
  .registers 3
  .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/x;->c:Landroidx/appcompat/widget/w;
    invoke-virtual { v0, p1 }, Landroidx/appcompat/widget/w;->w(Landroid/content/res/ColorStateList;)V
  .line 2
    iget-object p1, p0, Landroidx/appcompat/widget/x;->c:Landroidx/appcompat/widget/w;
    invoke-virtual { p1 }, Landroidx/appcompat/widget/w;->b()V
    return-void
.end method

.method public setSupportCompoundDrawablesTintMode(Landroid/graphics/PorterDuff$Mode;)V
  .registers 3
  .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/x;->c:Landroidx/appcompat/widget/w;
    invoke-virtual { v0, p1 }, Landroidx/appcompat/widget/w;->x(Landroid/graphics/PorterDuff$Mode;)V
  .line 2
    iget-object p1, p0, Landroidx/appcompat/widget/x;->c:Landroidx/appcompat/widget/w;
    invoke-virtual { p1 }, Landroidx/appcompat/widget/w;->b()V
    return-void
.end method

.method public setTextAppearance(Landroid/content/Context;I)V
  .registers 4
  .line 1
    invoke-super { p0, p1, p2 }, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V
  .line 2
    iget-object v0, p0, Landroidx/appcompat/widget/x;->c:Landroidx/appcompat/widget/w;
    if-eqz v0, :L0
  .line 3
    invoke-virtual { v0, p1, p2 }, Landroidx/appcompat/widget/w;->q(Landroid/content/Context;I)V
  :L0
    return-void
.end method

.method public setTextClassifier(Landroid/view/textclassifier/TextClassifier;)V
  .registers 4
  .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v1, 28
    if-ge v0, v1, :L1
    iget-object v0, p0, Landroidx/appcompat/widget/x;->d:Landroidx/appcompat/widget/v;
    if-nez v0, :L0
    goto :L1
  :L0
  .line 2
    invoke-virtual { v0, p1 }, Landroidx/appcompat/widget/v;->b(Landroid/view/textclassifier/TextClassifier;)V
    return-void
  :L1
  .line 3
    invoke-super { p0, p1 }, Landroid/widget/TextView;->setTextClassifier(Landroid/view/textclassifier/TextClassifier;)V
    return-void
.end method

.method public setTextFuture(Ljava/util/concurrent/Future;)V
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(",
      "Ljava/util/concurrent/Future<",
      "Lc/g/i/c;",
      ">;)V"
    }
  .end annotation
  .registers 2
  .line 1
    iput-object p1, p0, Landroidx/appcompat/widget/x;->f:Ljava/util/concurrent/Future;
    if-eqz p1, :L0
  .line 2
    invoke-virtual { p0 }, Landroid/widget/TextView;->requestLayout()V
  :L0
    return-void
.end method

.method public setTextMetricsParamsCompat(Lc/g/i/c$a;)V
  .registers 2
  .line 1
    invoke-static { p0, p1 }, Landroidx/core/widget/i;->o(Landroid/widget/TextView;Lc/g/i/c$a;)V
    return-void
.end method

.method public setTextSize(IF)V
  .registers 4
  .line 1
    sget-boolean v0, Landroidx/core/widget/b;->a:Z
    if-eqz v0, :L0
  .line 2
    invoke-super { p0, p1, p2 }, Landroid/widget/TextView;->setTextSize(IF)V
    goto :L1
  :L0
  .line 3
    iget-object v0, p0, Landroidx/appcompat/widget/x;->c:Landroidx/appcompat/widget/w;
    if-eqz v0, :L1
  .line 4
    invoke-virtual { v0, p1, p2 }, Landroidx/appcompat/widget/w;->A(IF)V
  :L1
    return-void
.end method

.method public setTypeface(Landroid/graphics/Typeface;I)V
  .catchall { :L3 .. :L4 } :L5
  .registers 5
  .line 1
    iget-boolean v0, p0, Landroidx/appcompat/widget/x;->e:Z
    if-eqz v0, :L0
    return-void
  :L0
    const/4 v0, 0
    if-eqz p1, :L1
    if-lez p2, :L1
  .line 2
    invoke-virtual { p0 }, Landroid/widget/TextView;->getContext()Landroid/content/Context;
    move-result-object v0
    invoke-static { v0, p1, p2 }, Lc/g/d/d;->a(Landroid/content/Context;Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;
    move-result-object v0
  :L1
    const/4 v1, 1
  .line 3
    iput-boolean v1, p0, Landroidx/appcompat/widget/x;->e:Z
    if-eqz v0, :L2
    move-object p1, v0
  :L2
    const/4 v0, 0
  :L3
  .line 4
    invoke-super { p0, p1, p2 }, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V
  :L4
  .line 5
    iput-boolean v0, p0, Landroidx/appcompat/widget/x;->e:Z
    return-void
  :L5
    move-exception p1
    iput-boolean v0, p0, Landroidx/appcompat/widget/x;->e:Z
  .line 6
    throw p1
.end method
