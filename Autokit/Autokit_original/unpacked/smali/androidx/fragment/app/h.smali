.class public final Landroidx/fragment/app/h;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

.field private b:Ljava/util/ArrayList;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "Ljava/util/ArrayList<",
      "Landroid/view/View;",
      ">;"
    }
  .end annotation
.end field

.field private c:Ljava/util/ArrayList;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "Ljava/util/ArrayList<",
      "Landroid/view/View;",
      ">;"
    }
  .end annotation
.end field

.field private d:Landroid/view/View$OnApplyWindowInsetsListener;

.field private e:Z

.method constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;Landroidx/fragment/app/n;)V
  .registers 9
  .line 1
    invoke-direct { p0, p1, p2 }, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    const/4 v0, 1
  .line 2
    iput-boolean v0, p0, Landroidx/fragment/app/h;->e:Z
  .line 3
    invoke-interface { p2 }, Landroid/util/AttributeSet;->getClassAttribute()Ljava/lang/String;
    move-result-object v1
  .line 4
    sget-object v2, Lc/j/c;->FragmentContainerView:[I
    invoke-virtual { p1, p2, v2 }, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;
    move-result-object v2
    if-nez v1, :L0
  .line 5
    sget v1, Lc/j/c;->FragmentContainerView_android_name:I
    invoke-virtual { v2, v1 }, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;
    move-result-object v1
  :L0
  .line 6
    sget v3, Lc/j/c;->FragmentContainerView_android_tag:I
    invoke-virtual { v2, v3 }, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;
    move-result-object v3
  .line 7
    invoke-virtual { v2 }, Landroid/content/res/TypedArray;->recycle()V
  .line 8
    invoke-virtual { p0 }, Landroid/widget/FrameLayout;->getId()I
    move-result v2
  .line 9
    invoke-virtual { p3, v2 }, Landroidx/fragment/app/n;->g0(I)Landroidx/fragment/app/Fragment;
    move-result-object v4
    if-eqz v1, :L4
    if-nez v4, :L4
    if-gtz v2, :L3
    if-eqz v3, :L1
  .line 10
    new-instance p1, Ljava/lang/StringBuilder;
    invoke-direct { p1 }, Ljava/lang/StringBuilder;-><init>()V
    const-string p2, " with tag "
    invoke-virtual { p1, p2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { p1, v3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { p1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p1
    goto :L2
  :L1
    const-string p1, ""
  :L2
  .line 11
    new-instance p2, Ljava/lang/IllegalStateException;
    new-instance p3, Ljava/lang/StringBuilder;
    invoke-direct { p3 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v0, "FragmentContainerView must have an android:id to add Fragment "
    invoke-virtual { p3, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { p3, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { p3, p1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { p3 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p1
    invoke-direct { p2, p1 }, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
    throw p2
  :L3
  .line 12
    invoke-virtual { p3 }, Landroidx/fragment/app/n;->p0()Landroidx/fragment/app/j;
    move-result-object v2
    invoke-virtual { p1 }, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;
    move-result-object v4
    invoke-virtual { v2, v4, v1 }, Landroidx/fragment/app/j;->a(Ljava/lang/ClassLoader;Ljava/lang/String;)Landroidx/fragment/app/Fragment;
    move-result-object v1
    const/4 v2, 0
  .line 13
    invoke-virtual { v1, p1, p2, v2 }, Landroidx/fragment/app/Fragment;->T0(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/os/Bundle;)V
  .line 14
    invoke-virtual { p3 }, Landroidx/fragment/app/n;->l()Landroidx/fragment/app/w;
    move-result-object p1
  .line 15
    invoke-virtual { p1, v0 }, Landroidx/fragment/app/w;->s(Z)Landroidx/fragment/app/w;
  .line 16
    invoke-virtual { p1, p0, v1, v3 }, Landroidx/fragment/app/w;->d(Landroid/view/ViewGroup;Landroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/w;
  .line 17
    invoke-virtual { p1 }, Landroidx/fragment/app/w;->k()V
  :L4
  .line 18
    invoke-virtual { p3, p0 }, Landroidx/fragment/app/n;->S0(Landroidx/fragment/app/h;)V
    return-void
.end method

.method private a(Landroid/view/View;)V
  .registers 3
  .line 1
    iget-object v0, p0, Landroidx/fragment/app/h;->c:Ljava/util/ArrayList;
    if-eqz v0, :L1
    invoke-virtual { v0, p1 }, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :L1
  .line 2
    iget-object v0, p0, Landroidx/fragment/app/h;->b:Ljava/util/ArrayList;
    if-nez v0, :L0
  .line 3
    new-instance v0, Ljava/util/ArrayList;
    invoke-direct { v0 }, Ljava/util/ArrayList;-><init>()V
    iput-object v0, p0, Landroidx/fragment/app/h;->b:Ljava/util/ArrayList;
  :L0
  .line 4
    iget-object v0, p0, Landroidx/fragment/app/h;->b:Ljava/util/ArrayList;
    invoke-virtual { v0, p1 }, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
  :L1
    return-void
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
  .registers 5
  .line 1
    invoke-static { p1 }, Landroidx/fragment/app/n;->y0(Landroid/view/View;)Landroidx/fragment/app/Fragment;
    move-result-object v0
    if-eqz v0, :L0
  .line 2
    invoke-super { p0, p1, p2, p3 }, Landroid/widget/FrameLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    return-void
  :L0
  .line 3
    new-instance p2, Ljava/lang/IllegalStateException;
    new-instance p3, Ljava/lang/StringBuilder;
    invoke-direct { p3 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v0, "Views added to a FragmentContainerView must be associated with a Fragment. View "
    invoke-virtual { p3, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { p3, p1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    const-string p1, " is not associated with a Fragment."
    invoke-virtual { p3, p1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { p3 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p1
    invoke-direct { p2, p1 }, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
    throw p2
.end method

.method protected addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)Z
  .registers 6
  .line 1
    invoke-static { p1 }, Landroidx/fragment/app/n;->y0(Landroid/view/View;)Landroidx/fragment/app/Fragment;
    move-result-object v0
    if-eqz v0, :L0
  .line 2
    invoke-super { p0, p1, p2, p3, p4 }, Landroid/widget/FrameLayout;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)Z
    move-result p1
    return p1
  :L0
  .line 3
    new-instance p2, Ljava/lang/IllegalStateException;
    new-instance p3, Ljava/lang/StringBuilder;
    invoke-direct { p3 }, Ljava/lang/StringBuilder;-><init>()V
    const-string p4, "Views added to a FragmentContainerView must be associated with a Fragment. View "
    invoke-virtual { p3, p4 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { p3, p1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    const-string p1, " is not associated with a Fragment."
    invoke-virtual { p3, p1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { p3 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p1
    invoke-direct { p2, p1 }, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
    throw p2
.end method

.method public dispatchApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
  .registers 6
  .line 1
    invoke-static { p1 }, Landroidx/core/view/d0;->s(Landroid/view/WindowInsets;)Landroidx/core/view/d0;
    move-result-object v0
  .line 2
    iget-object v1, p0, Landroidx/fragment/app/h;->d:Landroid/view/View$OnApplyWindowInsetsListener;
    if-eqz v1, :L0
  .line 3
    invoke-interface { v1, p0, p1 }, Landroid/view/View$OnApplyWindowInsetsListener;->onApplyWindowInsets(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    move-result-object v0
  .line 4
    invoke-static { v0 }, Landroidx/core/view/d0;->s(Landroid/view/WindowInsets;)Landroidx/core/view/d0;
    move-result-object v0
    goto :L1
  :L0
  .line 5
    invoke-static { p0, v0 }, Landroidx/core/view/v;->a0(Landroid/view/View;Landroidx/core/view/d0;)Landroidx/core/view/d0;
    move-result-object v0
  :L1
  .line 6
    invoke-virtual { v0 }, Landroidx/core/view/d0;->l()Z
    move-result v1
    if-nez v1, :L3
  .line 7
    invoke-virtual { p0 }, Landroid/widget/FrameLayout;->getChildCount()I
    move-result v1
    const/4 v2, 0
  :L2
    if-ge v2, v1, :L3
  .line 8
    invoke-virtual { p0, v2 }, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;
    move-result-object v3
    invoke-static { v3, v0 }, Landroidx/core/view/v;->h(Landroid/view/View;Landroidx/core/view/d0;)Landroidx/core/view/d0;
    add-int/lit8 v2, v2, 1
    goto :L2
  :L3
    return-object p1
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
  .registers 6
  .line 1
    iget-boolean v0, p0, Landroidx/fragment/app/h;->e:Z
    if-eqz v0, :L1
    iget-object v0, p0, Landroidx/fragment/app/h;->b:Ljava/util/ArrayList;
    if-eqz v0, :L1
    const/4 v0, 0
  :L0
  .line 2
    iget-object v1, p0, Landroidx/fragment/app/h;->b:Ljava/util/ArrayList;
    invoke-virtual { v1 }, Ljava/util/ArrayList;->size()I
    move-result v1
    if-ge v0, v1, :L1
  .line 3
    iget-object v1, p0, Landroidx/fragment/app/h;->b:Ljava/util/ArrayList;
    invoke-virtual { v1, v0 }, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
    move-result-object v1
    check-cast v1, Landroid/view/View;
    invoke-virtual { p0 }, Landroid/widget/FrameLayout;->getDrawingTime()J
    move-result-wide v2
    invoke-super { p0, p1, v1, v2, v3 }, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    add-int/lit8 v0, v0, 1
    goto :L0
  :L1
  .line 4
    invoke-super { p0, p1 }, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V
    return-void
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
  .registers 6
  .line 1
    iget-boolean v0, p0, Landroidx/fragment/app/h;->e:Z
    if-eqz v0, :L0
    iget-object v0, p0, Landroidx/fragment/app/h;->b:Ljava/util/ArrayList;
    if-eqz v0, :L0
  .line 2
    invoke-virtual { v0 }, Ljava/util/ArrayList;->size()I
    move-result v0
    if-lez v0, :L0
  .line 3
    iget-object v0, p0, Landroidx/fragment/app/h;->b:Ljava/util/ArrayList;
    invoke-virtual { v0, p2 }, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :L0
    const/4 p1, 0
    return p1
  :L0
  .line 4
    invoke-super { p0, p1, p2, p3, p4 }, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    move-result p1
    return p1
.end method

.method public endViewTransition(Landroid/view/View;)V
  .registers 3
  .line 1
    iget-object v0, p0, Landroidx/fragment/app/h;->c:Ljava/util/ArrayList;
    if-eqz v0, :L0
  .line 2
    invoke-virtual { v0, p1 }, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
  .line 3
    iget-object v0, p0, Landroidx/fragment/app/h;->b:Ljava/util/ArrayList;
    if-eqz v0, :L0
  .line 4
    invoke-virtual { v0, p1 }, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :L0
    const/4 v0, 1
  .line 5
    iput-boolean v0, p0, Landroidx/fragment/app/h;->e:Z
  :L0
  .line 6
    invoke-super { p0, p1 }, Landroid/widget/FrameLayout;->endViewTransition(Landroid/view/View;)V
    return-void
.end method

.method public onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
  .registers 2
    return-object p1
.end method

.method public removeAllViewsInLayout()V
  .registers 3
  .line 1
    invoke-virtual { p0 }, Landroid/widget/FrameLayout;->getChildCount()I
    move-result v0
    add-int/lit8 v0, v0, -1
  :L0
    if-ltz v0, :L1
  .line 2
    invoke-virtual { p0, v0 }, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;
    move-result-object v1
  .line 3
    invoke-direct { p0, v1 }, Landroidx/fragment/app/h;->a(Landroid/view/View;)V
    add-int/lit8 v0, v0, -1
    goto :L0
  :L1
  .line 4
    invoke-super { p0 }, Landroid/widget/FrameLayout;->removeAllViewsInLayout()V
    return-void
.end method

.method protected removeDetachedView(Landroid/view/View;Z)V
  .registers 3
    if-eqz p2, :L0
  .line 1
    invoke-direct { p0, p1 }, Landroidx/fragment/app/h;->a(Landroid/view/View;)V
  :L0
  .line 2
    invoke-super { p0, p1, p2 }, Landroid/widget/FrameLayout;->removeDetachedView(Landroid/view/View;Z)V
    return-void
.end method

.method public removeView(Landroid/view/View;)V
  .registers 2
  .line 1
    invoke-direct { p0, p1 }, Landroidx/fragment/app/h;->a(Landroid/view/View;)V
  .line 2
    invoke-super { p0, p1 }, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V
    return-void
.end method

.method public removeViewAt(I)V
  .registers 3
  .line 1
    invoke-virtual { p0, p1 }, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;
    move-result-object v0
  .line 2
    invoke-direct { p0, v0 }, Landroidx/fragment/app/h;->a(Landroid/view/View;)V
  .line 3
    invoke-super { p0, p1 }, Landroid/widget/FrameLayout;->removeViewAt(I)V
    return-void
.end method

.method public removeViewInLayout(Landroid/view/View;)V
  .registers 2
  .line 1
    invoke-direct { p0, p1 }, Landroidx/fragment/app/h;->a(Landroid/view/View;)V
  .line 2
    invoke-super { p0, p1 }, Landroid/widget/FrameLayout;->removeViewInLayout(Landroid/view/View;)V
    return-void
.end method

.method public removeViews(II)V
  .registers 5
    move v0, p1
  :L0
    add-int v1, p1, p2
    if-ge v0, v1, :L1
  .line 1
    invoke-virtual { p0, v0 }, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;
    move-result-object v1
  .line 2
    invoke-direct { p0, v1 }, Landroidx/fragment/app/h;->a(Landroid/view/View;)V
    add-int/lit8 v0, v0, 1
    goto :L0
  :L1
  .line 3
    invoke-super { p0, p1, p2 }, Landroid/widget/FrameLayout;->removeViews(II)V
    return-void
.end method

.method public removeViewsInLayout(II)V
  .registers 5
    move v0, p1
  :L0
    add-int v1, p1, p2
    if-ge v0, v1, :L1
  .line 1
    invoke-virtual { p0, v0 }, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;
    move-result-object v1
  .line 2
    invoke-direct { p0, v1 }, Landroidx/fragment/app/h;->a(Landroid/view/View;)V
    add-int/lit8 v0, v0, 1
    goto :L0
  :L1
  .line 3
    invoke-super { p0, p1, p2 }, Landroid/widget/FrameLayout;->removeViewsInLayout(II)V
    return-void
.end method

.method setDrawDisappearingViewsLast(Z)V
  .registers 2
  .line 1
    iput-boolean p1, p0, Landroidx/fragment/app/h;->e:Z
    return-void
.end method

.method public setLayoutTransition(Landroid/animation/LayoutTransition;)V
  .registers 4
  .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v1, 18
    if-ge v0, v1, :L0
  .line 2
    invoke-super { p0, p1 }, Landroid/widget/FrameLayout;->setLayoutTransition(Landroid/animation/LayoutTransition;)V
    return-void
  :L0
  .line 3
    new-instance p1, Ljava/lang/UnsupportedOperationException;
    const-string v0, "FragmentContainerView does not support Layout Transitions or animateLayoutChanges=\"true\"."
    invoke-direct { p1, v0 }, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V
    throw p1
.end method

.method public setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V
  .registers 2
  .line 1
    iput-object p1, p0, Landroidx/fragment/app/h;->d:Landroid/view/View$OnApplyWindowInsetsListener;
    return-void
.end method

.method public startViewTransition(Landroid/view/View;)V
  .registers 3
  .line 1
    invoke-virtual { p1 }, Landroid/view/View;->getParent()Landroid/view/ViewParent;
    move-result-object v0
    if-ne v0, p0, :L1
  .line 2
    iget-object v0, p0, Landroidx/fragment/app/h;->c:Ljava/util/ArrayList;
    if-nez v0, :L0
  .line 3
    new-instance v0, Ljava/util/ArrayList;
    invoke-direct { v0 }, Ljava/util/ArrayList;-><init>()V
    iput-object v0, p0, Landroidx/fragment/app/h;->c:Ljava/util/ArrayList;
  :L0
  .line 4
    iget-object v0, p0, Landroidx/fragment/app/h;->c:Ljava/util/ArrayList;
    invoke-virtual { v0, p1 }, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
  :L1
  .line 5
    invoke-super { p0, p1 }, Landroid/widget/FrameLayout;->startViewTransition(Landroid/view/View;)V
    return-void
.end method
