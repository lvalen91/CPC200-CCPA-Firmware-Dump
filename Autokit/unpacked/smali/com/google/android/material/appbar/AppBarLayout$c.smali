.class public Lcom/google/android/material/appbar/AppBarLayout$c;
.super Landroid/widget/LinearLayout$LayoutParams;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Lcom/google/android/material/appbar/AppBarLayout;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 9
  name = "c"
.end annotation

.field a:I

.field b:Landroid/view/animation/Interpolator;

.method public constructor <init>(II)V
  .registers 3
  .line 9
    invoke-direct { p0, p1, p2 }, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V
    const/4 p1, 1
  .line 10
    iput p1, p0, Lcom/google/android/material/appbar/AppBarLayout$c;->a:I
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
  .registers 5
  .line 1
    invoke-direct { p0, p1, p2 }, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    const/4 v0, 1
  .line 2
    iput v0, p0, Lcom/google/android/material/appbar/AppBarLayout$c;->a:I
  .line 3
    sget-object v0, Ld/c/a/a/k;->AppBarLayout_Layout:[I
    invoke-virtual { p1, p2, v0 }, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;
    move-result-object p2
  .line 4
    sget v0, Ld/c/a/a/k;->AppBarLayout_Layout_layout_scrollFlags:I
    const/4 v1, 0
    invoke-virtual { p2, v0, v1 }, Landroid/content/res/TypedArray;->getInt(II)I
    move-result v0
    iput v0, p0, Lcom/google/android/material/appbar/AppBarLayout$c;->a:I
  .line 5
    sget v0, Ld/c/a/a/k;->AppBarLayout_Layout_layout_scrollInterpolator:I
    invoke-virtual { p2, v0 }, Landroid/content/res/TypedArray;->hasValue(I)Z
    move-result v0
    if-eqz v0, :L0
  .line 6
    sget v0, Ld/c/a/a/k;->AppBarLayout_Layout_layout_scrollInterpolator:I
    invoke-virtual { p2, v0, v1 }, Landroid/content/res/TypedArray;->getResourceId(II)I
    move-result v0
  .line 7
    invoke-static { p1, v0 }, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;
    move-result-object p1
    iput-object p1, p0, Lcom/google/android/material/appbar/AppBarLayout$c;->b:Landroid/view/animation/Interpolator;
  :L0
  .line 8
    invoke-virtual { p2 }, Landroid/content/res/TypedArray;->recycle()V
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
  .registers 2
  .line 11
    invoke-direct { p0, p1 }, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V
    const/4 p1, 1
  .line 12
    iput p1, p0, Lcom/google/android/material/appbar/AppBarLayout$c;->a:I
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$MarginLayoutParams;)V
  .registers 2
  .line 13
    invoke-direct { p0, p1 }, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V
    const/4 p1, 1
  .line 14
    iput p1, p0, Lcom/google/android/material/appbar/AppBarLayout$c;->a:I
    return-void
.end method

.method public constructor <init>(Landroid/widget/LinearLayout$LayoutParams;)V
  .registers 2
  .line 15
    invoke-direct { p0, p1 }, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/widget/LinearLayout$LayoutParams;)V
    const/4 p1, 1
  .line 16
    iput p1, p0, Lcom/google/android/material/appbar/AppBarLayout$c;->a:I
    return-void
.end method

.method public a()I
  .registers 2
  .line 1
    iget v0, p0, Lcom/google/android/material/appbar/AppBarLayout$c;->a:I
    return v0
.end method

.method public b()Landroid/view/animation/Interpolator;
  .registers 2
  .line 1
    iget-object v0, p0, Lcom/google/android/material/appbar/AppBarLayout$c;->b:Landroid/view/animation/Interpolator;
    return-object v0
.end method

.method c()Z
  .registers 4
  .line 1
    iget v0, p0, Lcom/google/android/material/appbar/AppBarLayout$c;->a:I
    and-int/lit8 v1, v0, 1
    const/4 v2, 1
    if-ne v1, v2, :L0
    and-int/lit8 v0, v0, 10
    if-eqz v0, :L0
    goto :L1
  :L0
    const/4 v2, 0
  :L1
    return v2
.end method
