.class abstract Landroidx/appcompat/widget/a;
.super Landroid/view/ViewGroup;
.source "SourceFile"

.annotation system Ldalvik/annotation/MemberClasses;
  value = {
    Landroidx/appcompat/widget/a$a;
  }
.end annotation

.field protected final b:Landroidx/appcompat/widget/a$a;

.field protected final c:Landroid/content/Context;

.field protected d:Landroidx/appcompat/widget/ActionMenuView;

.field protected e:Landroidx/appcompat/widget/c;

.field protected f:I

.field protected g:Landroidx/core/view/z;

.field private h:Z

.field private i:Z

.method constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
  .registers 4
    const/4 v0, 0
  .line 1
    invoke-direct { p0, p1, p2, v0 }, Landroidx/appcompat/widget/a;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
  .registers 6
  .line 2
    invoke-direct { p0, p1, p2, p3 }, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
  .line 3
    new-instance p2, Landroidx/appcompat/widget/a$a;
    invoke-direct { p2, p0 }, Landroidx/appcompat/widget/a$a;-><init>(Landroidx/appcompat/widget/a;)V
    iput-object p2, p0, Landroidx/appcompat/widget/a;->b:Landroidx/appcompat/widget/a$a;
  .line 4
    new-instance p2, Landroid/util/TypedValue;
    invoke-direct { p2 }, Landroid/util/TypedValue;-><init>()V
  .line 5
    invoke-virtual { p1 }, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;
    move-result-object p3
    sget v0, Lc/a/a;->actionBarPopupTheme:I
    const/4 v1, 1
    invoke-virtual { p3, v0, p2, v1 }, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z
    move-result p3
    if-eqz p3, :L0
    iget p3, p2, Landroid/util/TypedValue;->resourceId:I
    if-eqz p3, :L0
  .line 6
    new-instance p3, Landroid/view/ContextThemeWrapper;
    iget p2, p2, Landroid/util/TypedValue;->resourceId:I
    invoke-direct { p3, p1, p2 }, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V
    iput-object p3, p0, Landroidx/appcompat/widget/a;->c:Landroid/content/Context;
    goto :L1
  :L0
  .line 7
    iput-object p1, p0, Landroidx/appcompat/widget/a;->c:Landroid/content/Context;
  :L1
    return-void
.end method

.method static synthetic a(Landroidx/appcompat/widget/a;I)V
  .registers 2
  .line 1
    invoke-super { p0, p1 }, Landroid/view/ViewGroup;->setVisibility(I)V
    return-void
.end method

.method static synthetic b(Landroidx/appcompat/widget/a;I)V
  .registers 2
  .line 1
    invoke-super { p0, p1 }, Landroid/view/ViewGroup;->setVisibility(I)V
    return-void
.end method

.method protected static d(IIZ)I
  .registers 3
    if-eqz p2, :L0
    sub-int/2addr p0, p1
    goto :L1
  :L0
    add-int/2addr p0, p1
  :L1
    return p0
.end method

.method protected c(Landroid/view/View;III)I
  .registers 6
    const/high16 v0, -32768
  .line 1
    invoke-static { p2, v0 }, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I
    move-result v0
    invoke-virtual { p1, v0, p3 }, Landroid/view/View;->measure(II)V
  .line 2
    invoke-virtual { p1 }, Landroid/view/View;->getMeasuredWidth()I
    move-result p1
    sub-int/2addr p2, p1
    sub-int/2addr p2, p4
    const/4 p1, 0
  .line 3
    invoke-static { p1, p2 }, Ljava/lang/Math;->max(II)I
    move-result p1
    return p1
.end method

.method protected e(Landroid/view/View;IIIZ)I
  .registers 8
  .line 1
    invoke-virtual { p1 }, Landroid/view/View;->getMeasuredWidth()I
    move-result v0
  .line 2
    invoke-virtual { p1 }, Landroid/view/View;->getMeasuredHeight()I
    move-result v1
    sub-int/2addr p4, v1
  .line 3
    div-int/lit8 p4, p4, 2
    add-int/2addr p3, p4
    if-eqz p5, :L0
    sub-int p4, p2, v0
    add-int/2addr v1, p3
  .line 4
    invoke-virtual { p1, p4, p3, p2, v1 }, Landroid/view/View;->layout(IIII)V
    goto :L1
  :L0
    add-int p4, p2, v0
    add-int/2addr v1, p3
  .line 5
    invoke-virtual { p1, p2, p3, p4, v1 }, Landroid/view/View;->layout(IIII)V
  :L1
    if-eqz p5, :L2
    neg-int v0, v0
  :L2
    return v0
.end method

.method public f(IJ)Landroidx/core/view/z;
  .registers 6
  .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/a;->g:Landroidx/core/view/z;
    if-eqz v0, :L0
  .line 2
    invoke-virtual { v0 }, Landroidx/core/view/z;->b()V
  :L0
    const/4 v0, 0
    if-nez p1, :L2
  .line 3
    invoke-virtual { p0 }, Landroid/view/ViewGroup;->getVisibility()I
    move-result v1
    if-eqz v1, :L1
  .line 4
    invoke-virtual { p0, v0 }, Landroid/view/ViewGroup;->setAlpha(F)V
  :L1
  .line 5
    invoke-static { p0 }, Landroidx/core/view/v;->d(Landroid/view/View;)Landroidx/core/view/z;
    move-result-object v0
    const/high16 v1, 16256
    invoke-virtual { v0, v1 }, Landroidx/core/view/z;->a(F)Landroidx/core/view/z;
  .line 6
    invoke-virtual { v0, p2, p3 }, Landroidx/core/view/z;->d(J)Landroidx/core/view/z;
  .line 7
    iget-object p2, p0, Landroidx/appcompat/widget/a;->b:Landroidx/appcompat/widget/a$a;
    invoke-virtual { p2, v0, p1 }, Landroidx/appcompat/widget/a$a;->d(Landroidx/core/view/z;I)Landroidx/appcompat/widget/a$a;
    invoke-virtual { v0, p2 }, Landroidx/core/view/z;->f(Landroidx/core/view/a0;)Landroidx/core/view/z;
    return-object v0
  :L2
  .line 8
    invoke-static { p0 }, Landroidx/core/view/v;->d(Landroid/view/View;)Landroidx/core/view/z;
    move-result-object v1
    invoke-virtual { v1, v0 }, Landroidx/core/view/z;->a(F)Landroidx/core/view/z;
  .line 9
    invoke-virtual { v1, p2, p3 }, Landroidx/core/view/z;->d(J)Landroidx/core/view/z;
  .line 10
    iget-object p2, p0, Landroidx/appcompat/widget/a;->b:Landroidx/appcompat/widget/a$a;
    invoke-virtual { p2, v1, p1 }, Landroidx/appcompat/widget/a$a;->d(Landroidx/core/view/z;I)Landroidx/appcompat/widget/a$a;
    invoke-virtual { v1, p2 }, Landroidx/core/view/z;->f(Landroidx/core/view/a0;)Landroidx/core/view/z;
    return-object v1
.end method

.method public getAnimatedVisibility()I
  .registers 2
  .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/a;->g:Landroidx/core/view/z;
    if-eqz v0, :L0
  .line 2
    iget-object v0, p0, Landroidx/appcompat/widget/a;->b:Landroidx/appcompat/widget/a$a;
    iget v0, v0, Landroidx/appcompat/widget/a$a;->b:I
    return v0
  :L0
  .line 3
    invoke-virtual { p0 }, Landroid/view/ViewGroup;->getVisibility()I
    move-result v0
    return v0
.end method

.method public getContentHeight()I
  .registers 2
  .line 1
    iget v0, p0, Landroidx/appcompat/widget/a;->f:I
    return v0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
  .registers 7
  .line 1
    invoke-super { p0, p1 }, Landroid/view/ViewGroup;->onConfigurationChanged(Landroid/content/res/Configuration;)V
  .line 2
    invoke-virtual { p0 }, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;
    move-result-object v0
    sget-object v1, Lc/a/j;->ActionBar:[I
    sget v2, Lc/a/a;->actionBarStyle:I
    const/4 v3, 0
    const/4 v4, 0
    invoke-virtual { v0, v3, v1, v2, v4 }, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;
    move-result-object v0
  .line 3
    sget v1, Lc/a/j;->ActionBar_height:I
    invoke-virtual { v0, v1, v4 }, Landroid/content/res/TypedArray;->getLayoutDimension(II)I
    move-result v1
    invoke-virtual { p0, v1 }, Landroidx/appcompat/widget/a;->setContentHeight(I)V
  .line 4
    invoke-virtual { v0 }, Landroid/content/res/TypedArray;->recycle()V
  .line 5
    iget-object v0, p0, Landroidx/appcompat/widget/a;->e:Landroidx/appcompat/widget/c;
    if-eqz v0, :L0
  .line 6
    invoke-virtual { v0, p1 }, Landroidx/appcompat/widget/c;->F(Landroid/content/res/Configuration;)V
  :L0
    return-void
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
  .registers 7
  .line 1
    invoke-virtual { p1 }, Landroid/view/MotionEvent;->getActionMasked()I
    move-result v0
    const/4 v1, 0
    const/16 v2, 9
    if-ne v0, v2, :L0
  .line 2
    iput-boolean v1, p0, Landroidx/appcompat/widget/a;->i:Z
  :L0
  .line 3
    iget-boolean v3, p0, Landroidx/appcompat/widget/a;->i:Z
    const/4 v4, 1
    if-nez v3, :L1
  .line 4
    invoke-super { p0, p1 }, Landroid/view/ViewGroup;->onHoverEvent(Landroid/view/MotionEvent;)Z
    move-result p1
    if-ne v0, v2, :L1
    if-nez p1, :L1
  .line 5
    iput-boolean v4, p0, Landroidx/appcompat/widget/a;->i:Z
  :L1
    const/16 p1, 10
    if-eq v0, p1, :L2
    const/4 p1, 3
    if-ne v0, p1, :L3
  :L2
  .line 6
    iput-boolean v1, p0, Landroidx/appcompat/widget/a;->i:Z
  :L3
    return v4
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
  .registers 6
  .line 1
    invoke-virtual { p1 }, Landroid/view/MotionEvent;->getActionMasked()I
    move-result v0
    const/4 v1, 0
    if-nez v0, :L0
  .line 2
    iput-boolean v1, p0, Landroidx/appcompat/widget/a;->h:Z
  :L0
  .line 3
    iget-boolean v2, p0, Landroidx/appcompat/widget/a;->h:Z
    const/4 v3, 1
    if-nez v2, :L1
  .line 4
    invoke-super { p0, p1 }, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z
    move-result p1
    if-nez v0, :L1
    if-nez p1, :L1
  .line 5
    iput-boolean v3, p0, Landroidx/appcompat/widget/a;->h:Z
  :L1
    if-eq v0, v3, :L2
    const/4 p1, 3
    if-ne v0, p1, :L3
  :L2
  .line 6
    iput-boolean v1, p0, Landroidx/appcompat/widget/a;->h:Z
  :L3
    return v3
.end method

.method public abstract setContentHeight(I)V
.end method

.method public setVisibility(I)V
  .registers 3
  .line 1
    invoke-virtual { p0 }, Landroid/view/ViewGroup;->getVisibility()I
    move-result v0
    if-eq p1, v0, :L1
  .line 2
    iget-object v0, p0, Landroidx/appcompat/widget/a;->g:Landroidx/core/view/z;
    if-eqz v0, :L0
  .line 3
    invoke-virtual { v0 }, Landroidx/core/view/z;->b()V
  :L0
  .line 4
    invoke-super { p0, p1 }, Landroid/view/ViewGroup;->setVisibility(I)V
  :L1
    return-void
.end method
