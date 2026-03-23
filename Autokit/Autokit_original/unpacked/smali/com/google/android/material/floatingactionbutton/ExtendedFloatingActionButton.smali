.class public Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;
.super Lcom/google/android/material/button/MaterialButton;
.implements Landroidx/coordinatorlayout/widget/CoordinatorLayout$b;
.source "SourceFile"

.annotation system Ldalvik/annotation/MemberClasses;
  value = {
    Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$ExtendedFloatingActionButtonBehavior;,
    Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$f;
  }
.end annotation

.field private A:Z

.field private B:Z

.field private C:Z

.field private t:I

.field private final u:Lcom/google/android/material/floatingactionbutton/d;

.field private final v:Lcom/google/android/material/floatingactionbutton/d;

.field private final w:Lcom/google/android/material/floatingactionbutton/d;

.field private final x:Lcom/google/android/material/floatingactionbutton/d;

.field private final y:I

.field private final z:Landroidx/coordinatorlayout/widget/CoordinatorLayout$c;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "Landroidx/coordinatorlayout/widget/CoordinatorLayout$c<",
      "Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;",
      ">;"
    }
  .end annotation
.end field

.method static constructor <clinit>()V
  .registers 3
  .line 1
    const-class v0, Ljava/lang/Float;
    new-instance v1, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$b;
    const-string v2, "width"
    invoke-direct { v1, v0, v2 }, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$b;-><init>(Ljava/lang/Class;Ljava/lang/String;)V
  .line 2
    new-instance v1, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$c;
    const-string v2, "height"
    invoke-direct { v1, v0, v2 }, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$c;-><init>(Ljava/lang/Class;Ljava/lang/String;)V
  .line 3
    new-instance v1, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$d;
    const-string v2, "paddingStart"
    invoke-direct { v1, v0, v2 }, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$d;-><init>(Ljava/lang/Class;Ljava/lang/String;)V
  .line 4
    new-instance v1, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$e;
    const-string v2, "paddingEnd"
    invoke-direct { v1, v0, v2 }, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$e;-><init>(Ljava/lang/Class;Ljava/lang/String;)V
    return-void
.end method

.method static synthetic l(Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;)Lcom/google/android/material/floatingactionbutton/d;
  .registers 1
  .line 1
    iget-object p0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->u:Lcom/google/android/material/floatingactionbutton/d;
    return-object p0
.end method

.method static synthetic m(Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;)Lcom/google/android/material/floatingactionbutton/d;
  .registers 1
  .line 1
    iget-object p0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->x:Lcom/google/android/material/floatingactionbutton/d;
    return-object p0
.end method

.method static synthetic n(Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;Lcom/google/android/material/floatingactionbutton/d;Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$f;)V
  .registers 3
  .line 1
    invoke-direct { p0, p1, p2 }, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->r(Lcom/google/android/material/floatingactionbutton/d;Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$f;)V
    return-void
.end method

.method static synthetic o(Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;)Lcom/google/android/material/floatingactionbutton/d;
  .registers 1
  .line 1
    iget-object p0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->v:Lcom/google/android/material/floatingactionbutton/d;
    return-object p0
.end method

.method static synthetic p(Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;)Lcom/google/android/material/floatingactionbutton/d;
  .registers 1
  .line 1
    iget-object p0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->w:Lcom/google/android/material/floatingactionbutton/d;
    return-object p0
.end method

.method private q()Z
  .registers 5
  .line 1
    invoke-virtual { p0 }, Landroid/widget/Button;->getVisibility()I
    move-result v0
    const/4 v1, 0
    const/4 v2, 1
    if-eqz v0, :L1
  .line 2
    iget v0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->t:I
    const/4 v3, 2
    if-ne v0, v3, :L0
    const/4 v1, 1
  :L0
    return v1
  :L1
  .line 3
    iget v0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->t:I
    if-eq v0, v2, :L2
    const/4 v1, 1
  :L2
    return v1
.end method

.method private r(Lcom/google/android/material/floatingactionbutton/d;Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$f;)V
  .registers 5
  .line 1
    invoke-interface { p1 }, Lcom/google/android/material/floatingactionbutton/d;->g()Z
    move-result v0
    if-eqz v0, :L0
    return-void
  :L0
  .line 2
    invoke-direct { p0 }, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->t()Z
    move-result v0
    if-nez v0, :L1
  .line 3
    invoke-interface { p1 }, Lcom/google/android/material/floatingactionbutton/d;->i()V
  .line 4
    invoke-interface { p1, p2 }, Lcom/google/android/material/floatingactionbutton/d;->f(Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$f;)V
    return-void
  :L1
    const/4 v0, 0
  .line 5
    invoke-virtual { p0, v0, v0 }, Landroid/widget/Button;->measure(II)V
  .line 6
    invoke-interface { p1 }, Lcom/google/android/material/floatingactionbutton/d;->b()Landroid/animation/AnimatorSet;
    move-result-object v0
  .line 7
    new-instance v1, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$a;
    invoke-direct { v1, p0, p1, p2 }, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$a;-><init>(Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;Lcom/google/android/material/floatingactionbutton/d;Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$f;)V
    invoke-virtual { v0, v1 }, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V
  .line 8
    invoke-interface { p1 }, Lcom/google/android/material/floatingactionbutton/d;->e()Ljava/util/List;
    move-result-object p1
    invoke-interface { p1 }, Ljava/util/List;->iterator()Ljava/util/Iterator;
    move-result-object p1
  :L2
    invoke-interface { p1 }, Ljava/util/Iterator;->hasNext()Z
    move-result p2
    if-eqz p2, :L3
    invoke-interface { p1 }, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object p2
    check-cast p2, Landroid/animation/Animator$AnimatorListener;
  .line 9
    invoke-virtual { v0, p2 }, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V
    goto :L2
  :L3
  .line 10
    invoke-virtual { v0 }, Landroid/animation/Animator;->start()V
    return-void
.end method

.method private s()V
  .registers 1
  .line 1
    invoke-virtual { p0 }, Landroid/widget/Button;->getTextColors()Landroid/content/res/ColorStateList;
    return-void
.end method

.method private t()Z
  .registers 2
  .line 1
    invoke-static { p0 }, Landroidx/core/view/v;->T(Landroid/view/View;)Z
    move-result v0
    if-nez v0, :L0
    invoke-direct { p0 }, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->q()Z
    move-result v0
    if-nez v0, :L1
    iget-boolean v0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->C:Z
    if-eqz v0, :L1
  :L0
  .line 2
    invoke-virtual { p0 }, Landroid/widget/Button;->isInEditMode()Z
    move-result v0
    if-nez v0, :L1
    const/4 v0, 1
    goto :L2
  :L1
    const/4 v0, 0
  :L2
    return v0
.end method

.method public getBehavior()Landroidx/coordinatorlayout/widget/CoordinatorLayout$c;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "()",
      "Landroidx/coordinatorlayout/widget/CoordinatorLayout$c<",
      "Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;",
      ">;"
    }
  .end annotation
  .registers 2
  .line 1
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->z:Landroidx/coordinatorlayout/widget/CoordinatorLayout$c;
    return-object v0
.end method

.method getCollapsedPadding()I
  .registers 3
  .line 1
    invoke-virtual { p0 }, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->getCollapsedSize()I
    move-result v0
    invoke-virtual { p0 }, Lcom/google/android/material/button/MaterialButton;->getIconSize()I
    move-result v1
    sub-int/2addr v0, v1
    div-int/lit8 v0, v0, 2
    return v0
.end method

.method getCollapsedSize()I
  .registers 3
  .line 1
    iget v0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->y:I
    if-gez v0, :L0
  .line 2
    invoke-static { p0 }, Landroidx/core/view/v;->I(Landroid/view/View;)I
    move-result v0
    invoke-static { p0 }, Landroidx/core/view/v;->H(Landroid/view/View;)I
    move-result v1
    invoke-static { v0, v1 }, Ljava/lang/Math;->min(II)I
    move-result v0
    mul-int/lit8 v0, v0, 2
    invoke-virtual { p0 }, Lcom/google/android/material/button/MaterialButton;->getIconSize()I
    move-result v1
    add-int/2addr v0, v1
  :L0
    return v0
.end method

.method public getExtendMotionSpec()Ld/c/a/a/l/h;
  .registers 2
  .line 1
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->v:Lcom/google/android/material/floatingactionbutton/d;
    invoke-interface { v0 }, Lcom/google/android/material/floatingactionbutton/d;->a()Ld/c/a/a/l/h;
    move-result-object v0
    return-object v0
.end method

.method public getHideMotionSpec()Ld/c/a/a/l/h;
  .registers 2
  .line 1
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->x:Lcom/google/android/material/floatingactionbutton/d;
    invoke-interface { v0 }, Lcom/google/android/material/floatingactionbutton/d;->a()Ld/c/a/a/l/h;
    move-result-object v0
    return-object v0
.end method

.method public getShowMotionSpec()Ld/c/a/a/l/h;
  .registers 2
  .line 1
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->w:Lcom/google/android/material/floatingactionbutton/d;
    invoke-interface { v0 }, Lcom/google/android/material/floatingactionbutton/d;->a()Ld/c/a/a/l/h;
    move-result-object v0
    return-object v0
.end method

.method public getShrinkMotionSpec()Ld/c/a/a/l/h;
  .registers 2
  .line 1
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->u:Lcom/google/android/material/floatingactionbutton/d;
    invoke-interface { v0 }, Lcom/google/android/material/floatingactionbutton/d;->a()Ld/c/a/a/l/h;
    move-result-object v0
    return-object v0
.end method

.method protected onAttachedToWindow()V
  .registers 2
  .line 1
    invoke-super { p0 }, Lcom/google/android/material/button/MaterialButton;->onAttachedToWindow()V
  .line 2
    iget-boolean v0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->A:Z
    if-eqz v0, :L0
    invoke-virtual { p0 }, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;
    move-result-object v0
    invoke-static { v0 }, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    move-result v0
    if-eqz v0, :L0
    invoke-virtual { p0 }, Lcom/google/android/material/button/MaterialButton;->getIcon()Landroid/graphics/drawable/Drawable;
    move-result-object v0
    if-eqz v0, :L0
    const/4 v0, 0
  .line 3
    iput-boolean v0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->A:Z
  .line 4
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->u:Lcom/google/android/material/floatingactionbutton/d;
    invoke-interface { v0 }, Lcom/google/android/material/floatingactionbutton/d;->i()V
  :L0
    return-void
.end method

.method public setAnimateShowBeforeLayout(Z)V
  .registers 2
  .line 1
    iput-boolean p1, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->C:Z
    return-void
.end method

.method public setExtendMotionSpec(Ld/c/a/a/l/h;)V
  .registers 3
  .line 1
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->v:Lcom/google/android/material/floatingactionbutton/d;
    invoke-interface { v0, p1 }, Lcom/google/android/material/floatingactionbutton/d;->h(Ld/c/a/a/l/h;)V
    return-void
.end method

.method public setExtendMotionSpecResource(I)V
  .registers 3
  .line 1
    invoke-virtual { p0 }, Landroid/widget/Button;->getContext()Landroid/content/Context;
    move-result-object v0
    invoke-static { v0, p1 }, Ld/c/a/a/l/h;->c(Landroid/content/Context;I)Ld/c/a/a/l/h;
    move-result-object p1
    invoke-virtual { p0, p1 }, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->setExtendMotionSpec(Ld/c/a/a/l/h;)V
    return-void
.end method

.method public setExtended(Z)V
  .registers 3
  .line 1
    iget-boolean v0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->A:Z
    if-ne v0, p1, :L0
    return-void
  :L0
    if-eqz p1, :L1
  .line 2
    iget-object p1, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->v:Lcom/google/android/material/floatingactionbutton/d;
    goto :L2
  :L1
    iget-object p1, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->u:Lcom/google/android/material/floatingactionbutton/d;
  :L2
  .line 3
    invoke-interface { p1 }, Lcom/google/android/material/floatingactionbutton/d;->g()Z
    move-result v0
    if-eqz v0, :L3
    return-void
  :L3
  .line 4
    invoke-interface { p1 }, Lcom/google/android/material/floatingactionbutton/d;->i()V
    return-void
.end method

.method public setHideMotionSpec(Ld/c/a/a/l/h;)V
  .registers 3
  .line 1
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->x:Lcom/google/android/material/floatingactionbutton/d;
    invoke-interface { v0, p1 }, Lcom/google/android/material/floatingactionbutton/d;->h(Ld/c/a/a/l/h;)V
    return-void
.end method

.method public setHideMotionSpecResource(I)V
  .registers 3
  .line 1
    invoke-virtual { p0 }, Landroid/widget/Button;->getContext()Landroid/content/Context;
    move-result-object v0
    invoke-static { v0, p1 }, Ld/c/a/a/l/h;->c(Landroid/content/Context;I)Ld/c/a/a/l/h;
    move-result-object p1
    invoke-virtual { p0, p1 }, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->setHideMotionSpec(Ld/c/a/a/l/h;)V
    return-void
.end method

.method public setPadding(IIII)V
  .registers 5
  .line 1
    invoke-super { p0, p1, p2, p3, p4 }, Landroid/widget/Button;->setPadding(IIII)V
  .line 2
    iget-boolean p1, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->A:Z
    if-eqz p1, :L0
    iget-boolean p1, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->B:Z
    if-nez p1, :L0
  .line 3
    invoke-static { p0 }, Landroidx/core/view/v;->I(Landroid/view/View;)I
  .line 4
    invoke-static { p0 }, Landroidx/core/view/v;->H(Landroid/view/View;)I
  :L0
    return-void
.end method

.method public setPaddingRelative(IIII)V
  .registers 5
  .line 1
    invoke-super { p0, p1, p2, p3, p4 }, Landroid/widget/Button;->setPaddingRelative(IIII)V
  .line 2
    iget-boolean p1, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->A:Z
    if-eqz p1, :L0
    iget-boolean p1, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->B:Z
  :L0
    return-void
.end method

.method public setShowMotionSpec(Ld/c/a/a/l/h;)V
  .registers 3
  .line 1
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->w:Lcom/google/android/material/floatingactionbutton/d;
    invoke-interface { v0, p1 }, Lcom/google/android/material/floatingactionbutton/d;->h(Ld/c/a/a/l/h;)V
    return-void
.end method

.method public setShowMotionSpecResource(I)V
  .registers 3
  .line 1
    invoke-virtual { p0 }, Landroid/widget/Button;->getContext()Landroid/content/Context;
    move-result-object v0
    invoke-static { v0, p1 }, Ld/c/a/a/l/h;->c(Landroid/content/Context;I)Ld/c/a/a/l/h;
    move-result-object p1
    invoke-virtual { p0, p1 }, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->setShowMotionSpec(Ld/c/a/a/l/h;)V
    return-void
.end method

.method public setShrinkMotionSpec(Ld/c/a/a/l/h;)V
  .registers 3
  .line 1
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->u:Lcom/google/android/material/floatingactionbutton/d;
    invoke-interface { v0, p1 }, Lcom/google/android/material/floatingactionbutton/d;->h(Ld/c/a/a/l/h;)V
    return-void
.end method

.method public setShrinkMotionSpecResource(I)V
  .registers 3
  .line 1
    invoke-virtual { p0 }, Landroid/widget/Button;->getContext()Landroid/content/Context;
    move-result-object v0
    invoke-static { v0, p1 }, Ld/c/a/a/l/h;->c(Landroid/content/Context;I)Ld/c/a/a/l/h;
    move-result-object p1
    invoke-virtual { p0, p1 }, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->setShrinkMotionSpec(Ld/c/a/a/l/h;)V
    return-void
.end method

.method public setTextColor(I)V
  .registers 2
  .line 1
    invoke-super { p0, p1 }, Landroid/widget/Button;->setTextColor(I)V
  .line 2
    invoke-direct { p0 }, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->s()V
    return-void
.end method

.method public setTextColor(Landroid/content/res/ColorStateList;)V
  .registers 2
  .line 3
    invoke-super { p0, p1 }, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V
  .line 4
    invoke-direct { p0 }, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->s()V
    return-void
.end method
