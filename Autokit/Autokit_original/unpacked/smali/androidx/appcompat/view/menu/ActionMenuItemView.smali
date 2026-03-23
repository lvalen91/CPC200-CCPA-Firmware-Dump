.class public Landroidx/appcompat/view/menu/ActionMenuItemView;
.super Landroidx/appcompat/widget/x;
.implements Landroidx/appcompat/view/menu/n$a;
.implements Landroid/view/View$OnClickListener;
.implements Landroidx/appcompat/widget/ActionMenuView$a;
.source "SourceFile"

.annotation system Ldalvik/annotation/MemberClasses;
  value = {
    Landroidx/appcompat/view/menu/ActionMenuItemView$b;,
    Landroidx/appcompat/view/menu/ActionMenuItemView$a;
  }
.end annotation

.field g:Landroidx/appcompat/view/menu/i;

.field private h:Ljava/lang/CharSequence;

.field private i:Landroid/graphics/drawable/Drawable;

.field j:Landroidx/appcompat/view/menu/g$b;

.field private k:Landroidx/appcompat/widget/f0;

.field l:Landroidx/appcompat/view/menu/ActionMenuItemView$b;

.field private m:Z

.field private n:Z

.field private o:I

.field private p:I

.field private q:I

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
  .registers 4
    const/4 v0, 0
  .line 1
    invoke-direct { p0, p1, p2, v0 }, Landroidx/appcompat/view/menu/ActionMenuItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
  .registers 7
  .line 2
    invoke-direct { p0, p1, p2, p3 }, Landroidx/appcompat/widget/x;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
  .line 3
    invoke-virtual { p1 }, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
    move-result-object v0
  .line 4
    invoke-direct { p0 }, Landroidx/appcompat/view/menu/ActionMenuItemView;->i()Z
    move-result v1
    iput-boolean v1, p0, Landroidx/appcompat/view/menu/ActionMenuItemView;->m:Z
  .line 5
    sget-object v1, Lc/a/j;->ActionMenuItemView:[I
    const/4 v2, 0
    invoke-virtual { p1, p2, v1, p3, v2 }, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;
    move-result-object p1
  .line 6
    sget p2, Lc/a/j;->ActionMenuItemView_android_minWidth:I
    invoke-virtual { p1, p2, v2 }, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I
    move-result p2
    iput p2, p0, Landroidx/appcompat/view/menu/ActionMenuItemView;->o:I
  .line 7
    invoke-virtual { p1 }, Landroid/content/res/TypedArray;->recycle()V
  .line 8
    invoke-virtual { v0 }, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;
    move-result-object p1
    iget p1, p1, Landroid/util/DisplayMetrics;->density:F
    const/high16 p2, 16896
    mul-float p1, p1, p2
    const/high16 p2, 16128
    add-float/2addr p1, p2
    float-to-int p1, p1
  .line 9
    iput p1, p0, Landroidx/appcompat/view/menu/ActionMenuItemView;->q:I
  .line 10
    invoke-virtual { p0, p0 }, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    const/4 p1, -1
  .line 11
    iput p1, p0, Landroidx/appcompat/view/menu/ActionMenuItemView;->p:I
  .line 12
    invoke-virtual { p0, v2 }, Landroid/widget/TextView;->setSaveEnabled(Z)V
    return-void
.end method

.method private i()Z
  .registers 6
  .line 1
    invoke-virtual { p0 }, Landroid/widget/TextView;->getContext()Landroid/content/Context;
    move-result-object v0
    invoke-virtual { v0 }, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
    move-result-object v0
    invoke-virtual { v0 }, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;
    move-result-object v0
  .line 2
    iget v1, v0, Landroid/content/res/Configuration;->screenWidthDp:I
  .line 3
    iget v2, v0, Landroid/content/res/Configuration;->screenHeightDp:I
    const/16 v3, 480
    if-ge v1, v3, :L2
    const/16 v4, 640
    if-lt v1, v4, :L0
    if-ge v2, v3, :L2
  :L0
  .line 4
    iget v0, v0, Landroid/content/res/Configuration;->orientation:I
    const/4 v1, 2
    if-ne v0, v1, :L1
    goto :L2
  :L1
    const/4 v0, 0
    goto :L3
  :L2
    const/4 v0, 1
  :L3
    return v0
.end method

.method private j()V
  .registers 5
  .line 1
    iget-object v0, p0, Landroidx/appcompat/view/menu/ActionMenuItemView;->h:Ljava/lang/CharSequence;
    invoke-static { v0 }, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    move-result v0
    const/4 v1, 1
    xor-int/2addr v0, v1
  .line 2
    iget-object v2, p0, Landroidx/appcompat/view/menu/ActionMenuItemView;->i:Landroid/graphics/drawable/Drawable;
    if-eqz v2, :L1
    iget-object v2, p0, Landroidx/appcompat/view/menu/ActionMenuItemView;->g:Landroidx/appcompat/view/menu/i;
  .line 3
    invoke-virtual { v2 }, Landroidx/appcompat/view/menu/i;->B()Z
    move-result v2
    if-eqz v2, :L0
    iget-boolean v2, p0, Landroidx/appcompat/view/menu/ActionMenuItemView;->m:Z
    if-nez v2, :L1
    iget-boolean v2, p0, Landroidx/appcompat/view/menu/ActionMenuItemView;->n:Z
    if-eqz v2, :L0
    goto :L1
  :L0
    const/4 v1, 0
  :L1
    and-int/2addr v0, v1
    const/4 v1, 0
    if-eqz v0, :L2
  .line 4
    iget-object v2, p0, Landroidx/appcompat/view/menu/ActionMenuItemView;->h:Ljava/lang/CharSequence;
    goto :L3
  :L2
    move-object v2, v1
  :L3
    invoke-virtual { p0, v2 }, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
  .line 5
    iget-object v2, p0, Landroidx/appcompat/view/menu/ActionMenuItemView;->g:Landroidx/appcompat/view/menu/i;
    invoke-virtual { v2 }, Landroidx/appcompat/view/menu/i;->getContentDescription()Ljava/lang/CharSequence;
    move-result-object v2
  .line 6
    invoke-static { v2 }, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    move-result v3
    if-eqz v3, :L6
    if-eqz v0, :L4
    move-object v2, v1
    goto :L5
  :L4
  .line 7
    iget-object v2, p0, Landroidx/appcompat/view/menu/ActionMenuItemView;->g:Landroidx/appcompat/view/menu/i;
    invoke-virtual { v2 }, Landroidx/appcompat/view/menu/i;->getTitle()Ljava/lang/CharSequence;
    move-result-object v2
  :L5
    invoke-virtual { p0, v2 }, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V
    goto :L7
  :L6
  .line 8
    invoke-virtual { p0, v2 }, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V
  :L7
  .line 9
    iget-object v2, p0, Landroidx/appcompat/view/menu/ActionMenuItemView;->g:Landroidx/appcompat/view/menu/i;
    invoke-virtual { v2 }, Landroidx/appcompat/view/menu/i;->getTooltipText()Ljava/lang/CharSequence;
    move-result-object v2
  .line 10
    invoke-static { v2 }, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    move-result v3
    if-eqz v3, :L10
    if-eqz v0, :L8
    goto :L9
  :L8
  .line 11
    iget-object v0, p0, Landroidx/appcompat/view/menu/ActionMenuItemView;->g:Landroidx/appcompat/view/menu/i;
    invoke-virtual { v0 }, Landroidx/appcompat/view/menu/i;->getTitle()Ljava/lang/CharSequence;
    move-result-object v1
  :L9
    invoke-static { p0, v1 }, Landroidx/appcompat/widget/w0;->a(Landroid/view/View;Ljava/lang/CharSequence;)V
    goto :L11
  :L10
  .line 12
    invoke-static { p0, v2 }, Landroidx/appcompat/widget/w0;->a(Landroid/view/View;Ljava/lang/CharSequence;)V
  :L11
    return-void
.end method

.method public b()Z
  .registers 2
  .line 1
    invoke-virtual { p0 }, Landroidx/appcompat/view/menu/ActionMenuItemView;->h()Z
    move-result v0
    return v0
.end method

.method public d()Z
  .registers 2
  .line 1
    invoke-virtual { p0 }, Landroidx/appcompat/view/menu/ActionMenuItemView;->h()Z
    move-result v0
    if-eqz v0, :L0
    iget-object v0, p0, Landroidx/appcompat/view/menu/ActionMenuItemView;->g:Landroidx/appcompat/view/menu/i;
    invoke-virtual { v0 }, Landroidx/appcompat/view/menu/i;->getIcon()Landroid/graphics/drawable/Drawable;
    move-result-object v0
    if-nez v0, :L0
    const/4 v0, 1
    goto :L1
  :L0
    const/4 v0, 0
  :L1
    return v0
.end method

.method public e()Z
  .registers 2
    const/4 v0, 1
    return v0
.end method

.method public f(Landroidx/appcompat/view/menu/i;I)V
  .registers 3
  .line 1
    iput-object p1, p0, Landroidx/appcompat/view/menu/ActionMenuItemView;->g:Landroidx/appcompat/view/menu/i;
  .line 2
    invoke-virtual { p1 }, Landroidx/appcompat/view/menu/i;->getIcon()Landroid/graphics/drawable/Drawable;
    move-result-object p2
    invoke-virtual { p0, p2 }, Landroidx/appcompat/view/menu/ActionMenuItemView;->setIcon(Landroid/graphics/drawable/Drawable;)V
  .line 3
    invoke-virtual { p1, p0 }, Landroidx/appcompat/view/menu/i;->i(Landroidx/appcompat/view/menu/n$a;)Ljava/lang/CharSequence;
    move-result-object p2
    invoke-virtual { p0, p2 }, Landroidx/appcompat/view/menu/ActionMenuItemView;->setTitle(Ljava/lang/CharSequence;)V
  .line 4
    invoke-virtual { p1 }, Landroidx/appcompat/view/menu/i;->getItemId()I
    move-result p2
    invoke-virtual { p0, p2 }, Landroid/widget/TextView;->setId(I)V
  .line 5
    invoke-virtual { p1 }, Landroidx/appcompat/view/menu/i;->isVisible()Z
    move-result p2
    if-eqz p2, :L0
    const/4 p2, 0
    goto :L1
  :L0
    const/16 p2, 8
  :L1
    invoke-virtual { p0, p2 }, Landroid/widget/TextView;->setVisibility(I)V
  .line 6
    invoke-virtual { p1 }, Landroidx/appcompat/view/menu/i;->isEnabled()Z
    move-result p2
    invoke-virtual { p0, p2 }, Landroid/widget/TextView;->setEnabled(Z)V
  .line 7
    invoke-virtual { p1 }, Landroidx/appcompat/view/menu/i;->hasSubMenu()Z
    move-result p1
    if-eqz p1, :L2
  .line 8
    iget-object p1, p0, Landroidx/appcompat/view/menu/ActionMenuItemView;->k:Landroidx/appcompat/widget/f0;
    if-nez p1, :L2
  .line 9
    new-instance p1, Landroidx/appcompat/view/menu/ActionMenuItemView$a;
    invoke-direct { p1, p0 }, Landroidx/appcompat/view/menu/ActionMenuItemView$a;-><init>(Landroidx/appcompat/view/menu/ActionMenuItemView;)V
    iput-object p1, p0, Landroidx/appcompat/view/menu/ActionMenuItemView;->k:Landroidx/appcompat/widget/f0;
  :L2
    return-void
.end method

.method public getItemData()Landroidx/appcompat/view/menu/i;
  .registers 2
  .line 1
    iget-object v0, p0, Landroidx/appcompat/view/menu/ActionMenuItemView;->g:Landroidx/appcompat/view/menu/i;
    return-object v0
.end method

.method public h()Z
  .registers 2
  .line 1
    invoke-virtual { p0 }, Landroidx/appcompat/widget/x;->getText()Ljava/lang/CharSequence;
    move-result-object v0
    invoke-static { v0 }, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    move-result v0
    xor-int/lit8 v0, v0, 1
    return v0
.end method

.method public onClick(Landroid/view/View;)V
  .registers 3
  .line 1
    iget-object p1, p0, Landroidx/appcompat/view/menu/ActionMenuItemView;->j:Landroidx/appcompat/view/menu/g$b;
    if-eqz p1, :L0
  .line 2
    iget-object v0, p0, Landroidx/appcompat/view/menu/ActionMenuItemView;->g:Landroidx/appcompat/view/menu/i;
    invoke-interface { p1, v0 }, Landroidx/appcompat/view/menu/g$b;->a(Landroidx/appcompat/view/menu/i;)Z
  :L0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
  .registers 2
  .line 1
    invoke-super { p0, p1 }, Landroid/widget/TextView;->onConfigurationChanged(Landroid/content/res/Configuration;)V
  .line 2
    invoke-direct { p0 }, Landroidx/appcompat/view/menu/ActionMenuItemView;->i()Z
    move-result p1
    iput-boolean p1, p0, Landroidx/appcompat/view/menu/ActionMenuItemView;->m:Z
  .line 3
    invoke-direct { p0 }, Landroidx/appcompat/view/menu/ActionMenuItemView;->j()V
    return-void
.end method

.method protected onMeasure(II)V
  .registers 8
  .line 1
    invoke-virtual { p0 }, Landroidx/appcompat/view/menu/ActionMenuItemView;->h()Z
    move-result v0
    if-eqz v0, :L0
  .line 2
    iget v1, p0, Landroidx/appcompat/view/menu/ActionMenuItemView;->p:I
    if-ltz v1, :L0
  .line 3
    invoke-virtual { p0 }, Landroid/widget/TextView;->getPaddingTop()I
    move-result v2
  .line 4
    invoke-virtual { p0 }, Landroid/widget/TextView;->getPaddingRight()I
    move-result v3
    invoke-virtual { p0 }, Landroid/widget/TextView;->getPaddingBottom()I
    move-result v4
  .line 5
    invoke-super { p0, v1, v2, v3, v4 }, Landroid/widget/TextView;->setPadding(IIII)V
  :L0
  .line 6
    invoke-super { p0, p1, p2 }, Landroidx/appcompat/widget/x;->onMeasure(II)V
  .line 7
    invoke-static { p1 }, Landroid/view/View$MeasureSpec;->getMode(I)I
    move-result v1
  .line 8
    invoke-static { p1 }, Landroid/view/View$MeasureSpec;->getSize(I)I
    move-result p1
  .line 9
    invoke-virtual { p0 }, Landroid/widget/TextView;->getMeasuredWidth()I
    move-result v2
    const/high16 v3, -32768
    if-ne v1, v3, :L1
  .line 10
    iget v3, p0, Landroidx/appcompat/view/menu/ActionMenuItemView;->o:I
    invoke-static { p1, v3 }, Ljava/lang/Math;->min(II)I
    move-result p1
    goto :L2
  :L1
  .line 11
    iget p1, p0, Landroidx/appcompat/view/menu/ActionMenuItemView;->o:I
  :L2
    const/high16 v3, 16384
    if-eq v1, v3, :L3
  .line 12
    iget v1, p0, Landroidx/appcompat/view/menu/ActionMenuItemView;->o:I
    if-lez v1, :L3
    if-ge v2, p1, :L3
  .line 13
    invoke-static { p1, v3 }, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I
    move-result p1
    invoke-super { p0, p1, p2 }, Landroidx/appcompat/widget/x;->onMeasure(II)V
  :L3
    if-nez v0, :L4
  .line 14
    iget-object p1, p0, Landroidx/appcompat/view/menu/ActionMenuItemView;->i:Landroid/graphics/drawable/Drawable;
    if-eqz p1, :L4
  .line 15
    invoke-virtual { p0 }, Landroid/widget/TextView;->getMeasuredWidth()I
    move-result p1
  .line 16
    iget-object p2, p0, Landroidx/appcompat/view/menu/ActionMenuItemView;->i:Landroid/graphics/drawable/Drawable;
    invoke-virtual { p2 }, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;
    move-result-object p2
    invoke-virtual { p2 }, Landroid/graphics/Rect;->width()I
    move-result p2
    sub-int/2addr p1, p2
  .line 17
    div-int/lit8 p1, p1, 2
    invoke-virtual { p0 }, Landroid/widget/TextView;->getPaddingTop()I
    move-result p2
    invoke-virtual { p0 }, Landroid/widget/TextView;->getPaddingRight()I
    move-result v0
    invoke-virtual { p0 }, Landroid/widget/TextView;->getPaddingBottom()I
    move-result v1
    invoke-super { p0, p1, p2, v0, v1 }, Landroid/widget/TextView;->setPadding(IIII)V
  :L4
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
  .registers 2
    const/4 p1, 0
  .line 1
    invoke-super { p0, p1 }, Landroid/widget/TextView;->onRestoreInstanceState(Landroid/os/Parcelable;)V
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
  .registers 3
  .line 1
    iget-object v0, p0, Landroidx/appcompat/view/menu/ActionMenuItemView;->g:Landroidx/appcompat/view/menu/i;
    invoke-virtual { v0 }, Landroidx/appcompat/view/menu/i;->hasSubMenu()Z
    move-result v0
    if-eqz v0, :L0
    iget-object v0, p0, Landroidx/appcompat/view/menu/ActionMenuItemView;->k:Landroidx/appcompat/widget/f0;
    if-eqz v0, :L0
  .line 2
    invoke-virtual { v0, p0, p1 }, Landroidx/appcompat/widget/f0;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    move-result v0
    if-eqz v0, :L0
    const/4 p1, 1
    return p1
  :L0
  .line 3
    invoke-super { p0, p1 }, Landroid/widget/TextView;->onTouchEvent(Landroid/view/MotionEvent;)Z
    move-result p1
    return p1
.end method

.method public setCheckable(Z)V
  .registers 2
    return-void
.end method

.method public setChecked(Z)V
  .registers 2
    return-void
.end method

.method public setExpandedFormat(Z)V
  .registers 3
  .line 1
    iget-boolean v0, p0, Landroidx/appcompat/view/menu/ActionMenuItemView;->n:Z
    if-eq v0, p1, :L0
  .line 2
    iput-boolean p1, p0, Landroidx/appcompat/view/menu/ActionMenuItemView;->n:Z
  .line 3
    iget-object p1, p0, Landroidx/appcompat/view/menu/ActionMenuItemView;->g:Landroidx/appcompat/view/menu/i;
    if-eqz p1, :L0
  .line 4
    invoke-virtual { p1 }, Landroidx/appcompat/view/menu/i;->c()V
  :L0
    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
  .registers 6
  .line 1
    iput-object p1, p0, Landroidx/appcompat/view/menu/ActionMenuItemView;->i:Landroid/graphics/drawable/Drawable;
    if-eqz p1, :L2
  .line 2
    invoke-virtual { p1 }, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I
    move-result v0
  .line 3
    invoke-virtual { p1 }, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I
    move-result v1
  .line 4
    iget v2, p0, Landroidx/appcompat/view/menu/ActionMenuItemView;->q:I
    if-le v0, v2, :L0
    int-to-float v3, v2
    int-to-float v0, v0
    div-float/2addr v3, v0
    int-to-float v0, v1
    mul-float v0, v0, v3
    float-to-int v1, v0
    move v0, v2
  :L0
  .line 5
    iget v2, p0, Landroidx/appcompat/view/menu/ActionMenuItemView;->q:I
    if-le v1, v2, :L1
    int-to-float v3, v2
    int-to-float v1, v1
    div-float/2addr v3, v1
    int-to-float v0, v0
    mul-float v0, v0, v3
    float-to-int v0, v0
    move v1, v2
  :L1
    const/4 v2, 0
  .line 6
    invoke-virtual { p1, v2, v2, v0, v1 }, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V
  :L2
    const/4 v0, 0
  .line 7
    invoke-virtual { p0, p1, v0, v0, v0 }, Landroidx/appcompat/widget/x;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
  .line 8
    invoke-direct { p0 }, Landroidx/appcompat/view/menu/ActionMenuItemView;->j()V
    return-void
.end method

.method public setItemInvoker(Landroidx/appcompat/view/menu/g$b;)V
  .registers 2
  .line 1
    iput-object p1, p0, Landroidx/appcompat/view/menu/ActionMenuItemView;->j:Landroidx/appcompat/view/menu/g$b;
    return-void
.end method

.method public setPadding(IIII)V
  .registers 5
  .line 1
    iput p1, p0, Landroidx/appcompat/view/menu/ActionMenuItemView;->p:I
  .line 2
    invoke-super { p0, p1, p2, p3, p4 }, Landroid/widget/TextView;->setPadding(IIII)V
    return-void
.end method

.method public setPopupCallback(Landroidx/appcompat/view/menu/ActionMenuItemView$b;)V
  .registers 2
  .line 1
    iput-object p1, p0, Landroidx/appcompat/view/menu/ActionMenuItemView;->l:Landroidx/appcompat/view/menu/ActionMenuItemView$b;
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
  .registers 2
  .line 1
    iput-object p1, p0, Landroidx/appcompat/view/menu/ActionMenuItemView;->h:Ljava/lang/CharSequence;
  .line 2
    invoke-direct { p0 }, Landroidx/appcompat/view/menu/ActionMenuItemView;->j()V
    return-void
.end method
