.class public Lcom/google/android/material/appbar/MaterialToolbar;
.super Landroidx/appcompat/widget/Toolbar;
.source "SourceFile"

.field private final static T:I

.field private Q:Ljava/lang/Integer;

.field private R:Z

.field private S:Z

.method static constructor <clinit>()V
  .registers 3
  .line 1
    sget v0, Ld/c/a/a/j;->Widget_MaterialComponents_Toolbar:I
    sput v0, Lcom/google/android/material/appbar/MaterialToolbar;->T:I
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
  .registers 4
  .line 1
    sget v0, Ld/c/a/a/b;->toolbarStyle:I
    invoke-direct { p0, p1, p2, v0 }, Lcom/google/android/material/appbar/MaterialToolbar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
  .registers 11
  .line 2
    sget v0, Lcom/google/android/material/appbar/MaterialToolbar;->T:I
    invoke-static { p1, p2, p3, v0 }, Lcom/google/android/material/theme/a/a;->c(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroid/content/Context;
    move-result-object p1
    invoke-direct { p0, p1, p2, p3 }, Landroidx/appcompat/widget/Toolbar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
  .line 3
    invoke-virtual { p0 }, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;
    move-result-object p1
  .line 4
    sget-object v2, Ld/c/a/a/k;->MaterialToolbar:[I
    sget v4, Lcom/google/android/material/appbar/MaterialToolbar;->T:I
    const/4 v6, 0
    new-array v5, v6, [I
    move-object v0, p1
    move-object v1, p2
    move v3, p3
  .line 5
    invoke-static/range { v0 .. v5 }, Lcom/google/android/material/internal/j;->h(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Landroid/content/res/TypedArray;
    move-result-object p2
  .line 6
    sget p3, Ld/c/a/a/k;->MaterialToolbar_navigationIconTint:I
    invoke-virtual { p2, p3 }, Landroid/content/res/TypedArray;->hasValue(I)Z
    move-result p3
    if-eqz p3, :L0
  .line 7
    sget p3, Ld/c/a/a/k;->MaterialToolbar_navigationIconTint:I
    const/4 v0, -1
    invoke-virtual { p2, p3, v0 }, Landroid/content/res/TypedArray;->getColor(II)I
    move-result p3
    invoke-virtual { p0, p3 }, Lcom/google/android/material/appbar/MaterialToolbar;->setNavigationIconTint(I)V
  :L0
  .line 8
    sget p3, Ld/c/a/a/k;->MaterialToolbar_titleCentered:I
    invoke-virtual { p2, p3, v6 }, Landroid/content/res/TypedArray;->getBoolean(IZ)Z
    move-result p3
    iput-boolean p3, p0, Lcom/google/android/material/appbar/MaterialToolbar;->R:Z
  .line 9
    sget p3, Ld/c/a/a/k;->MaterialToolbar_subtitleCentered:I
    invoke-virtual { p2, p3, v6 }, Landroid/content/res/TypedArray;->getBoolean(IZ)Z
    move-result p3
    iput-boolean p3, p0, Lcom/google/android/material/appbar/MaterialToolbar;->S:Z
  .line 10
    invoke-virtual { p2 }, Landroid/content/res/TypedArray;->recycle()V
  .line 11
    invoke-direct { p0, p1 }, Lcom/google/android/material/appbar/MaterialToolbar;->Q(Landroid/content/Context;)V
    return-void
.end method

.method private P(Landroid/widget/TextView;Landroid/widget/TextView;)Landroid/util/Pair;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(",
      "Landroid/widget/TextView;",
      "Landroid/widget/TextView;",
      ")",
      "Landroid/util/Pair<",
      "Ljava/lang/Integer;",
      "Ljava/lang/Integer;",
      ">;"
    }
  .end annotation
  .registers 10
  .line 1
    invoke-virtual { p0 }, Landroid/view/ViewGroup;->getMeasuredWidth()I
    move-result v0
  .line 2
    div-int/lit8 v1, v0, 2
  .line 3
    invoke-virtual { p0 }, Landroid/view/ViewGroup;->getPaddingLeft()I
    move-result v2
  .line 4
    invoke-virtual { p0 }, Landroid/view/ViewGroup;->getPaddingRight()I
    move-result v3
    sub-int/2addr v0, v3
    const/4 v3, 0
  :L0
  .line 5
    invoke-virtual { p0 }, Landroid/view/ViewGroup;->getChildCount()I
    move-result v4
    if-ge v3, v4, :L3
  .line 6
    invoke-virtual { p0, v3 }, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;
    move-result-object v4
  .line 7
    invoke-virtual { v4 }, Landroid/view/View;->getVisibility()I
    move-result v5
    const/16 v6, 8
    if-eq v5, v6, :L2
    if-eq v4, p1, :L2
    if-eq v4, p2, :L2
  .line 8
    invoke-virtual { v4 }, Landroid/view/View;->getRight()I
    move-result v5
    if-ge v5, v1, :L1
    invoke-virtual { v4 }, Landroid/view/View;->getRight()I
    move-result v5
    if-le v5, v2, :L1
  .line 9
    invoke-virtual { v4 }, Landroid/view/View;->getRight()I
    move-result v2
  :L1
  .line 10
    invoke-virtual { v4 }, Landroid/view/View;->getLeft()I
    move-result v5
    if-le v5, v1, :L2
    invoke-virtual { v4 }, Landroid/view/View;->getLeft()I
    move-result v5
    if-ge v5, v0, :L2
  .line 11
    invoke-virtual { v4 }, Landroid/view/View;->getLeft()I
    move-result v0
  :L2
    add-int/lit8 v3, v3, 1
    goto :L0
  :L3
  .line 12
    new-instance p1, Landroid/util/Pair;
    invoke-static { v2 }, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object p2
    invoke-static { v0 }, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v0
    invoke-direct { p1, p2, v0 }, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    return-object p1
.end method

.method private Q(Landroid/content/Context;)V
  .registers 4
  .line 1
    invoke-virtual { p0 }, Landroid/view/ViewGroup;->getBackground()Landroid/graphics/drawable/Drawable;
    move-result-object v0
    if-eqz v0, :L0
  .line 2
    instance-of v1, v0, Landroid/graphics/drawable/ColorDrawable;
    if-nez v1, :L0
    return-void
  :L0
  .line 3
    new-instance v1, Ld/c/a/a/a0/g;
    invoke-direct { v1 }, Ld/c/a/a/a0/g;-><init>()V
    if-eqz v0, :L1
  .line 4
    check-cast v0, Landroid/graphics/drawable/ColorDrawable;
  .line 5
    invoke-virtual { v0 }, Landroid/graphics/drawable/ColorDrawable;->getColor()I
    move-result v0
    goto :L2
  :L1
    const/4 v0, 0
  :L2
  .line 6
    invoke-static { v0 }, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;
    move-result-object v0
    invoke-virtual { v1, v0 }, Ld/c/a/a/a0/g;->W(Landroid/content/res/ColorStateList;)V
  .line 7
    invoke-virtual { v1, p1 }, Ld/c/a/a/a0/g;->M(Landroid/content/Context;)V
  .line 8
    invoke-static { p0 }, Landroidx/core/view/v;->w(Landroid/view/View;)F
    move-result p1
    invoke-virtual { v1, p1 }, Ld/c/a/a/a0/g;->V(F)V
  .line 9
    invoke-static { p0, v1 }, Landroidx/core/view/v;->r0(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V
    return-void
.end method

.method private R(Landroid/view/View;Landroid/util/Pair;)V
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(",
      "Landroid/view/View;",
      "Landroid/util/Pair<",
      "Ljava/lang/Integer;",
      "Ljava/lang/Integer;",
      ">;)V"
    }
  .end annotation
  .registers 7
  .line 1
    invoke-virtual { p0 }, Landroid/view/ViewGroup;->getMeasuredWidth()I
    move-result v0
  .line 2
    invoke-virtual { p1 }, Landroid/view/View;->getMeasuredWidth()I
    move-result v1
  .line 3
    div-int/lit8 v0, v0, 2
    div-int/lit8 v2, v1, 2
    sub-int/2addr v0, v2
    add-int/2addr v1, v0
  .line 4
    iget-object v2, p2, Landroid/util/Pair;->first:Ljava/lang/Object;
    check-cast v2, Ljava/lang/Integer;
    invoke-virtual { v2 }, Ljava/lang/Integer;->intValue()I
    move-result v2
    sub-int/2addr v2, v0
    const/4 v3, 0
    invoke-static { v2, v3 }, Ljava/lang/Math;->max(II)I
    move-result v2
  .line 5
    iget-object p2, p2, Landroid/util/Pair;->second:Ljava/lang/Object;
    check-cast p2, Ljava/lang/Integer;
    invoke-virtual { p2 }, Ljava/lang/Integer;->intValue()I
    move-result p2
    sub-int p2, v1, p2
    invoke-static { p2, v3 }, Ljava/lang/Math;->max(II)I
    move-result p2
  .line 6
    invoke-static { v2, p2 }, Ljava/lang/Math;->max(II)I
    move-result p2
    if-lez p2, :L0
    add-int/2addr v0, p2
    sub-int/2addr v1, p2
    sub-int p2, v1, v0
    const/high16 v2, 16384
  .line 7
    invoke-static { p2, v2 }, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I
    move-result p2
  .line 8
    invoke-virtual { p1 }, Landroid/view/View;->getMeasuredHeightAndState()I
    move-result v2
  .line 9
    invoke-virtual { p1, p2, v2 }, Landroid/view/View;->measure(II)V
  :L0
  .line 10
    invoke-virtual { p1 }, Landroid/view/View;->getTop()I
    move-result p2
    invoke-virtual { p1 }, Landroid/view/View;->getBottom()I
    move-result v2
    invoke-virtual { p1, v0, p2, v1, v2 }, Landroid/view/View;->layout(IIII)V
    return-void
.end method

.method private S()V
  .registers 5
  .line 1
    iget-boolean v0, p0, Lcom/google/android/material/appbar/MaterialToolbar;->R:Z
    if-nez v0, :L0
    iget-boolean v0, p0, Lcom/google/android/material/appbar/MaterialToolbar;->S:Z
    if-nez v0, :L0
    return-void
  :L0
  .line 2
    invoke-static { p0 }, Lcom/google/android/material/internal/k;->c(Landroidx/appcompat/widget/Toolbar;)Landroid/widget/TextView;
    move-result-object v0
  .line 3
    invoke-static { p0 }, Lcom/google/android/material/internal/k;->a(Landroidx/appcompat/widget/Toolbar;)Landroid/widget/TextView;
    move-result-object v1
    if-nez v0, :L1
    if-nez v1, :L1
    return-void
  :L1
  .line 4
    invoke-direct { p0, v0, v1 }, Lcom/google/android/material/appbar/MaterialToolbar;->P(Landroid/widget/TextView;Landroid/widget/TextView;)Landroid/util/Pair;
    move-result-object v2
  .line 5
    iget-boolean v3, p0, Lcom/google/android/material/appbar/MaterialToolbar;->R:Z
    if-eqz v3, :L2
    if-eqz v0, :L2
  .line 6
    invoke-direct { p0, v0, v2 }, Lcom/google/android/material/appbar/MaterialToolbar;->R(Landroid/view/View;Landroid/util/Pair;)V
  :L2
  .line 7
    iget-boolean v0, p0, Lcom/google/android/material/appbar/MaterialToolbar;->S:Z
    if-eqz v0, :L3
    if-eqz v1, :L3
  .line 8
    invoke-direct { p0, v1, v2 }, Lcom/google/android/material/appbar/MaterialToolbar;->R(Landroid/view/View;Landroid/util/Pair;)V
  :L3
    return-void
.end method

.method private T(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
  .registers 3
    if-eqz p1, :L0
  .line 1
    iget-object v0, p0, Lcom/google/android/material/appbar/MaterialToolbar;->Q:Ljava/lang/Integer;
    if-eqz v0, :L0
  .line 2
    invoke-static { p1 }, Landroidx/core/graphics/drawable/a;->r(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    move-result-object p1
  .line 3
    iget-object v0, p0, Lcom/google/android/material/appbar/MaterialToolbar;->Q:Ljava/lang/Integer;
    invoke-virtual { v0 }, Ljava/lang/Integer;->intValue()I
    move-result v0
    invoke-static { p1, v0 }, Landroidx/core/graphics/drawable/a;->n(Landroid/graphics/drawable/Drawable;I)V
  :L0
    return-object p1
.end method

.method protected onAttachedToWindow()V
  .registers 1
  .line 1
    invoke-super { p0 }, Landroid/view/ViewGroup;->onAttachedToWindow()V
  .line 2
    invoke-static { p0 }, Ld/c/a/a/a0/h;->e(Landroid/view/View;)V
    return-void
.end method

.method protected onLayout(ZIIII)V
  .registers 6
  .line 1
    invoke-super/range { p0 .. p5 }, Landroidx/appcompat/widget/Toolbar;->onLayout(ZIIII)V
  .line 2
    invoke-direct { p0 }, Lcom/google/android/material/appbar/MaterialToolbar;->S()V
    return-void
.end method

.method public setElevation(F)V
  .registers 2
  .line 1
    invoke-super { p0, p1 }, Landroid/view/ViewGroup;->setElevation(F)V
  .line 2
    invoke-static { p0, p1 }, Ld/c/a/a/a0/h;->d(Landroid/view/View;F)V
    return-void
.end method

.method public setNavigationIcon(Landroid/graphics/drawable/Drawable;)V
  .registers 2
  .line 1
    invoke-direct { p0, p1 }, Lcom/google/android/material/appbar/MaterialToolbar;->T(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    move-result-object p1
    invoke-super { p0, p1 }, Landroidx/appcompat/widget/Toolbar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V
    return-void
.end method

.method public setNavigationIconTint(I)V
  .registers 2
  .line 1
    invoke-static { p1 }, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object p1
    iput-object p1, p0, Lcom/google/android/material/appbar/MaterialToolbar;->Q:Ljava/lang/Integer;
  .line 2
    invoke-virtual { p0 }, Landroidx/appcompat/widget/Toolbar;->getNavigationIcon()Landroid/graphics/drawable/Drawable;
    move-result-object p1
    if-eqz p1, :L0
  .line 3
    invoke-virtual { p0, p1 }, Lcom/google/android/material/appbar/MaterialToolbar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V
  :L0
    return-void
.end method

.method public setSubtitleCentered(Z)V
  .registers 3
  .line 1
    iget-boolean v0, p0, Lcom/google/android/material/appbar/MaterialToolbar;->S:Z
    if-eq v0, p1, :L0
  .line 2
    iput-boolean p1, p0, Lcom/google/android/material/appbar/MaterialToolbar;->S:Z
  .line 3
    invoke-virtual { p0 }, Landroid/view/ViewGroup;->requestLayout()V
  :L0
    return-void
.end method

.method public setTitleCentered(Z)V
  .registers 3
  .line 1
    iget-boolean v0, p0, Lcom/google/android/material/appbar/MaterialToolbar;->R:Z
    if-eq v0, p1, :L0
  .line 2
    iput-boolean p1, p0, Lcom/google/android/material/appbar/MaterialToolbar;->R:Z
  .line 3
    invoke-virtual { p0 }, Landroid/view/ViewGroup;->requestLayout()V
  :L0
    return-void
.end method
