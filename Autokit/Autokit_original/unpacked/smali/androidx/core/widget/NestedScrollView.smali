.class public Landroidx/core/widget/NestedScrollView;
.super Landroid/widget/FrameLayout;
.implements Landroidx/core/view/n;
.implements Landroidx/core/view/k;
.source "SourceFile"

.annotation system Ldalvik/annotation/MemberClasses;
  value = {
    Landroidx/core/widget/NestedScrollView$a;,
    Landroidx/core/widget/NestedScrollView$c;,
    Landroidx/core/widget/NestedScrollView$b;
  }
.end annotation

.field private final static B:Landroidx/core/widget/NestedScrollView$a;

.field private final static C:[I

.field private A:Landroidx/core/widget/NestedScrollView$b;

.field private b:J

.field private final c:Landroid/graphics/Rect;

.field private d:Landroid/widget/OverScroller;

.field private e:Landroid/widget/EdgeEffect;

.field private f:Landroid/widget/EdgeEffect;

.field private g:I

.field private h:Z

.field private i:Z

.field private j:Landroid/view/View;

.field private k:Z

.field private l:Landroid/view/VelocityTracker;

.field private m:Z

.field private n:Z

.field private o:I

.field private p:I

.field private q:I

.field private r:I

.field private final s:[I

.field private final t:[I

.field private u:I

.field private v:I

.field private w:Landroidx/core/widget/NestedScrollView$c;

.field private final x:Landroidx/core/view/p;

.field private final y:Landroidx/core/view/l;

.field private z:F

.method static constructor <clinit>()V
  .registers 3
  .line 1
    new-instance v0, Landroidx/core/widget/NestedScrollView$a;
    invoke-direct { v0 }, Landroidx/core/widget/NestedScrollView$a;-><init>()V
    sput-object v0, Landroidx/core/widget/NestedScrollView;->B:Landroidx/core/widget/NestedScrollView$a;
    const/4 v0, 1
    new-array v0, v0, [I
    const/4 v1, 0
    const v2, 16843130
    aput v2, v0, v1
  .line 2
    sput-object v0, Landroidx/core/widget/NestedScrollView;->C:[I
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
  .registers 4
    const/4 v0, 0
  .line 1
    invoke-direct { p0, p1, p2, v0 }, Landroidx/core/widget/NestedScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
  .registers 8
  .line 2
    invoke-direct { p0, p1, p2, p3 }, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
  .line 3
    new-instance v0, Landroid/graphics/Rect;
    invoke-direct { v0 }, Landroid/graphics/Rect;-><init>()V
    iput-object v0, p0, Landroidx/core/widget/NestedScrollView;->c:Landroid/graphics/Rect;
    const/4 v0, 1
  .line 4
    iput-boolean v0, p0, Landroidx/core/widget/NestedScrollView;->h:Z
    const/4 v1, 0
  .line 5
    iput-boolean v1, p0, Landroidx/core/widget/NestedScrollView;->i:Z
    const/4 v2, 0
  .line 6
    iput-object v2, p0, Landroidx/core/widget/NestedScrollView;->j:Landroid/view/View;
  .line 7
    iput-boolean v1, p0, Landroidx/core/widget/NestedScrollView;->k:Z
  .line 8
    iput-boolean v0, p0, Landroidx/core/widget/NestedScrollView;->n:Z
    const/4 v2, -1
  .line 9
    iput v2, p0, Landroidx/core/widget/NestedScrollView;->r:I
    const/4 v2, 2
    new-array v3, v2, [I
  .line 10
    iput-object v3, p0, Landroidx/core/widget/NestedScrollView;->s:[I
    new-array v2, v2, [I
  .line 11
    iput-object v2, p0, Landroidx/core/widget/NestedScrollView;->t:[I
  .line 12
    invoke-direct { p0 }, Landroidx/core/widget/NestedScrollView;->x()V
  .line 13
    sget-object v2, Landroidx/core/widget/NestedScrollView;->C:[I
    invoke-virtual { p1, p2, v2, p3, v1 }, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;
    move-result-object p1
  .line 14
    invoke-virtual { p1, v1, v1 }, Landroid/content/res/TypedArray;->getBoolean(IZ)Z
    move-result p2
    invoke-virtual { p0, p2 }, Landroidx/core/widget/NestedScrollView;->setFillViewport(Z)V
  .line 15
    invoke-virtual { p1 }, Landroid/content/res/TypedArray;->recycle()V
  .line 16
    new-instance p1, Landroidx/core/view/p;
    invoke-direct { p1, p0 }, Landroidx/core/view/p;-><init>(Landroid/view/ViewGroup;)V
    iput-object p1, p0, Landroidx/core/widget/NestedScrollView;->x:Landroidx/core/view/p;
  .line 17
    new-instance p1, Landroidx/core/view/l;
    invoke-direct { p1, p0 }, Landroidx/core/view/l;-><init>(Landroid/view/View;)V
    iput-object p1, p0, Landroidx/core/widget/NestedScrollView;->y:Landroidx/core/view/l;
  .line 18
    invoke-virtual { p0, v0 }, Landroidx/core/widget/NestedScrollView;->setNestedScrollingEnabled(Z)V
  .line 19
    sget-object p1, Landroidx/core/widget/NestedScrollView;->B:Landroidx/core/widget/NestedScrollView$a;
    invoke-static { p0, p1 }, Landroidx/core/view/v;->o0(Landroid/view/View;Landroidx/core/view/a;)V
    return-void
.end method

.method private static A(Landroid/view/View;Landroid/view/View;)Z
  .registers 4
    const/4 v0, 1
    if-ne p0, p1, :L0
    return v0
  :L0
  .line 1
    invoke-virtual { p0 }, Landroid/view/View;->getParent()Landroid/view/ViewParent;
    move-result-object p0
  .line 2
    instance-of v1, p0, Landroid/view/ViewGroup;
    if-eqz v1, :L1
    check-cast p0, Landroid/view/View;
    invoke-static { p0, p1 }, Landroidx/core/widget/NestedScrollView;->A(Landroid/view/View;Landroid/view/View;)Z
    move-result p0
    if-eqz p0, :L1
    goto :L2
  :L1
    const/4 v0, 0
  :L2
    return v0
.end method

.method private B(Landroid/view/View;II)Z
  .registers 5
  .line 1
    iget-object v0, p0, Landroidx/core/widget/NestedScrollView;->c:Landroid/graphics/Rect;
    invoke-virtual { p1, v0 }, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V
  .line 2
    iget-object v0, p0, Landroidx/core/widget/NestedScrollView;->c:Landroid/graphics/Rect;
    invoke-virtual { p0, p1, v0 }, Landroid/widget/FrameLayout;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V
  .line 3
    iget-object p1, p0, Landroidx/core/widget/NestedScrollView;->c:Landroid/graphics/Rect;
    iget p1, p1, Landroid/graphics/Rect;->bottom:I
    add-int/2addr p1, p2
    invoke-virtual { p0 }, Landroid/widget/FrameLayout;->getScrollY()I
    move-result v0
    if-lt p1, v0, :L0
    iget-object p1, p0, Landroidx/core/widget/NestedScrollView;->c:Landroid/graphics/Rect;
    iget p1, p1, Landroid/graphics/Rect;->top:I
    sub-int/2addr p1, p2
  .line 4
    invoke-virtual { p0 }, Landroid/widget/FrameLayout;->getScrollY()I
    move-result p2
    add-int/2addr p2, p3
    if-gt p1, p2, :L0
    const/4 p1, 1
    goto :L1
  :L0
    const/4 p1, 0
  :L1
    return p1
.end method

.method private C(II[I)V
  .registers 14
  .line 1
    invoke-virtual { p0 }, Landroid/widget/FrameLayout;->getScrollY()I
    move-result v0
    const/4 v1, 0
  .line 2
    invoke-virtual { p0, v1, p1 }, Landroid/widget/FrameLayout;->scrollBy(II)V
  .line 3
    invoke-virtual { p0 }, Landroid/widget/FrameLayout;->getScrollY()I
    move-result v1
    sub-int v4, v1, v0
    if-eqz p3, :L0
    const/4 v0, 1
  .line 4
    aget v1, p3, v0
    add-int/2addr v1, v4
    aput v1, p3, v0
  :L0
    sub-int v6, p1, v4
  .line 5
    iget-object v2, p0, Landroidx/core/widget/NestedScrollView;->y:Landroidx/core/view/l;
    const/4 v3, 0
    const/4 v5, 0
    const/4 v7, 0
    move v8, p2
    move-object v9, p3
    invoke-virtual/range { v2 .. v9 }, Landroidx/core/view/l;->e(IIII[II[I)V
    return-void
.end method

.method private D(Landroid/view/MotionEvent;)V
  .registers 5
  .line 1
    invoke-virtual { p1 }, Landroid/view/MotionEvent;->getActionIndex()I
    move-result v0
  .line 2
    invoke-virtual { p1, v0 }, Landroid/view/MotionEvent;->getPointerId(I)I
    move-result v1
  .line 3
    iget v2, p0, Landroidx/core/widget/NestedScrollView;->r:I
    if-ne v1, v2, :L2
    if-nez v0, :L0
    const/4 v0, 1
    goto :L1
  :L0
    const/4 v0, 0
  :L1
  .line 4
    invoke-virtual { p1, v0 }, Landroid/view/MotionEvent;->getY(I)F
    move-result v1
    float-to-int v1, v1
    iput v1, p0, Landroidx/core/widget/NestedScrollView;->g:I
  .line 5
    invoke-virtual { p1, v0 }, Landroid/view/MotionEvent;->getPointerId(I)I
    move-result p1
    iput p1, p0, Landroidx/core/widget/NestedScrollView;->r:I
  .line 6
    iget-object p1, p0, Landroidx/core/widget/NestedScrollView;->l:Landroid/view/VelocityTracker;
    if-eqz p1, :L2
  .line 7
    invoke-virtual { p1 }, Landroid/view/VelocityTracker;->clear()V
  :L2
    return-void
.end method

.method private G()V
  .registers 2
  .line 1
    iget-object v0, p0, Landroidx/core/widget/NestedScrollView;->l:Landroid/view/VelocityTracker;
    if-eqz v0, :L0
  .line 2
    invoke-virtual { v0 }, Landroid/view/VelocityTracker;->recycle()V
    const/4 v0, 0
  .line 3
    iput-object v0, p0, Landroidx/core/widget/NestedScrollView;->l:Landroid/view/VelocityTracker;
  :L0
    return-void
.end method

.method private H(Z)V
  .registers 3
    const/4 v0, 1
    if-eqz p1, :L0
    const/4 p1, 2
  .line 1
    invoke-virtual { p0, p1, v0 }, Landroidx/core/widget/NestedScrollView;->P(II)Z
    goto :L1
  :L0
  .line 2
    invoke-virtual { p0, v0 }, Landroidx/core/widget/NestedScrollView;->Q(I)V
  :L1
  .line 3
    invoke-virtual { p0 }, Landroid/widget/FrameLayout;->getScrollY()I
    move-result p1
    iput p1, p0, Landroidx/core/widget/NestedScrollView;->v:I
  .line 4
    invoke-static { p0 }, Landroidx/core/view/v;->f0(Landroid/view/View;)V
    return-void
.end method

.method private I(III)Z
  .registers 10
  .line 1
    invoke-virtual { p0 }, Landroid/widget/FrameLayout;->getHeight()I
    move-result v0
  .line 2
    invoke-virtual { p0 }, Landroid/widget/FrameLayout;->getScrollY()I
    move-result v1
    add-int/2addr v0, v1
    const/4 v2, 0
    const/4 v3, 1
    const/16 v4, 33
    if-ne p1, v4, :L0
    const/4 v4, 1
    goto :L1
  :L0
    const/4 v4, 0
  :L1
  .line 3
    invoke-direct { p0, v4, p2, p3 }, Landroidx/core/widget/NestedScrollView;->r(ZII)Landroid/view/View;
    move-result-object v5
    if-nez v5, :L2
    move-object v5, p0
  :L2
    if-lt p2, v1, :L3
    if-gt p3, v0, :L3
    goto :L6
  :L3
    if-eqz v4, :L4
    sub-int/2addr p2, v1
    goto :L5
  :L4
    sub-int p2, p3, v0
  :L5
  .line 4
    invoke-direct { p0, p2 }, Landroidx/core/widget/NestedScrollView;->k(I)V
    const/4 v2, 1
  :L6
  .line 5
    invoke-virtual { p0 }, Landroid/widget/FrameLayout;->findFocus()Landroid/view/View;
    move-result-object p2
    if-eq v5, p2, :L7
    invoke-virtual { v5, p1 }, Landroid/view/View;->requestFocus(I)Z
  :L7
    return v2
.end method

.method private J(Landroid/view/View;)V
  .registers 3
  .line 1
    iget-object v0, p0, Landroidx/core/widget/NestedScrollView;->c:Landroid/graphics/Rect;
    invoke-virtual { p1, v0 }, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V
  .line 2
    iget-object v0, p0, Landroidx/core/widget/NestedScrollView;->c:Landroid/graphics/Rect;
    invoke-virtual { p0, p1, v0 }, Landroid/widget/FrameLayout;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V
  .line 3
    iget-object p1, p0, Landroidx/core/widget/NestedScrollView;->c:Landroid/graphics/Rect;
    invoke-virtual { p0, p1 }, Landroidx/core/widget/NestedScrollView;->e(Landroid/graphics/Rect;)I
    move-result p1
    if-eqz p1, :L0
    const/4 v0, 0
  .line 4
    invoke-virtual { p0, v0, p1 }, Landroid/widget/FrameLayout;->scrollBy(II)V
  :L0
    return-void
.end method

.method private K(Landroid/graphics/Rect;Z)Z
  .registers 5
  .line 1
    invoke-virtual { p0, p1 }, Landroidx/core/widget/NestedScrollView;->e(Landroid/graphics/Rect;)I
    move-result p1
    const/4 v0, 0
    if-eqz p1, :L0
    const/4 v1, 1
    goto :L1
  :L0
    const/4 v1, 0
  :L1
    if-eqz v1, :L3
    if-eqz p2, :L2
  .line 2
    invoke-virtual { p0, v0, p1 }, Landroid/widget/FrameLayout;->scrollBy(II)V
    goto :L3
  :L2
  .line 3
    invoke-virtual { p0, v0, p1 }, Landroidx/core/widget/NestedScrollView;->L(II)V
  :L3
    return v1
.end method

.method private M(IIIZ)V
  .registers 13
  .line 1
    invoke-virtual { p0 }, Landroid/widget/FrameLayout;->getChildCount()I
    move-result v0
    if-nez v0, :L0
    return-void
  :L0
  .line 2
    invoke-static { }, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J
    move-result-wide v0
    iget-wide v2, p0, Landroidx/core/widget/NestedScrollView;->b:J
    sub-long/2addr v0, v2
    const-wide/16 v2, 250
    cmp-long v4, v0, v2
    if-lez v4, :L1
    const/4 p1, 0
  .line 3
    invoke-virtual { p0, p1 }, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;
    move-result-object v0
  .line 4
    invoke-virtual { v0 }, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    move-result-object v1
    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;
  .line 5
    invoke-virtual { v0 }, Landroid/view/View;->getHeight()I
    move-result v0
    iget v2, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I
    add-int/2addr v0, v2
    iget v1, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I
    add-int/2addr v0, v1
  .line 6
    invoke-virtual { p0 }, Landroid/widget/FrameLayout;->getHeight()I
    move-result v1
    invoke-virtual { p0 }, Landroid/widget/FrameLayout;->getPaddingTop()I
    move-result v2
    sub-int/2addr v1, v2
    invoke-virtual { p0 }, Landroid/widget/FrameLayout;->getPaddingBottom()I
    move-result v2
    sub-int/2addr v1, v2
  .line 7
    invoke-virtual { p0 }, Landroid/widget/FrameLayout;->getScrollY()I
    move-result v4
    sub-int/2addr v0, v1
  .line 8
    invoke-static { p1, v0 }, Ljava/lang/Math;->max(II)I
    move-result v0
    add-int/2addr p2, v4
  .line 9
    invoke-static { p2, v0 }, Ljava/lang/Math;->min(II)I
    move-result p2
    invoke-static { p1, p2 }, Ljava/lang/Math;->max(II)I
    move-result p1
    sub-int v6, p1, v4
  .line 10
    iget-object v2, p0, Landroidx/core/widget/NestedScrollView;->d:Landroid/widget/OverScroller;
    invoke-virtual { p0 }, Landroid/widget/FrameLayout;->getScrollX()I
    move-result v3
    const/4 v5, 0
    move v7, p3
    invoke-virtual/range { v2 .. v7 }, Landroid/widget/OverScroller;->startScroll(IIIII)V
  .line 11
    invoke-direct { p0, p4 }, Landroidx/core/widget/NestedScrollView;->H(Z)V
    goto :L3
  :L1
  .line 12
    iget-object p3, p0, Landroidx/core/widget/NestedScrollView;->d:Landroid/widget/OverScroller;
    invoke-virtual { p3 }, Landroid/widget/OverScroller;->isFinished()Z
    move-result p3
    if-nez p3, :L2
  .line 13
    invoke-direct { p0 }, Landroidx/core/widget/NestedScrollView;->a()V
  :L2
  .line 14
    invoke-virtual { p0, p1, p2 }, Landroid/widget/FrameLayout;->scrollBy(II)V
  :L3
  .line 15
    invoke-static { }, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J
    move-result-wide p1
    iput-wide p1, p0, Landroidx/core/widget/NestedScrollView;->b:J
    return-void
.end method

.method private a()V
  .registers 2
  .line 1
    iget-object v0, p0, Landroidx/core/widget/NestedScrollView;->d:Landroid/widget/OverScroller;
    invoke-virtual { v0 }, Landroid/widget/OverScroller;->abortAnimation()V
    const/4 v0, 1
  .line 2
    invoke-virtual { p0, v0 }, Landroidx/core/widget/NestedScrollView;->Q(I)V
    return-void
.end method

.method private c()Z
  .registers 5
  .line 1
    invoke-virtual { p0 }, Landroid/widget/FrameLayout;->getChildCount()I
    move-result v0
    const/4 v1, 0
    if-lez v0, :L0
  .line 2
    invoke-virtual { p0, v1 }, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;
    move-result-object v0
  .line 3
    invoke-virtual { v0 }, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    move-result-object v2
    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;
  .line 4
    invoke-virtual { v0 }, Landroid/view/View;->getHeight()I
    move-result v0
    iget v3, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I
    add-int/2addr v0, v3
    iget v2, v2, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I
    add-int/2addr v0, v2
  .line 5
    invoke-virtual { p0 }, Landroid/widget/FrameLayout;->getHeight()I
    move-result v2
    invoke-virtual { p0 }, Landroid/widget/FrameLayout;->getPaddingTop()I
    move-result v3
    sub-int/2addr v2, v3
    invoke-virtual { p0 }, Landroid/widget/FrameLayout;->getPaddingBottom()I
    move-result v3
    sub-int/2addr v2, v3
    if-le v0, v2, :L0
    const/4 v1, 1
  :L0
    return v1
.end method

.method private static d(III)I
  .registers 4
    if-ge p1, p2, :L2
    if-gez p0, :L0
    goto :L2
  :L0
    add-int v0, p1, p0
    if-le v0, p2, :L1
    sub-int/2addr p2, p1
    return p2
  :L1
    return p0
  :L2
    const/4 p0, 0
    return p0
.end method

.method private getVerticalScrollFactorCompat()F
  .registers 6
  .line 1
    iget v0, p0, Landroidx/core/widget/NestedScrollView;->z:F
    const/4 v1, 0
    cmpl-float v0, v0, v1
    if-nez v0, :L1
  .line 2
    new-instance v0, Landroid/util/TypedValue;
    invoke-direct { v0 }, Landroid/util/TypedValue;-><init>()V
  .line 3
    invoke-virtual { p0 }, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;
    move-result-object v1
  .line 4
    invoke-virtual { v1 }, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;
    move-result-object v2
    const v3, 16842829
    const/4 v4, 1
    invoke-virtual { v2, v3, v0, v4 }, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z
    move-result v2
    if-eqz v2, :L0
  .line 5
    invoke-virtual { v1 }, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
    move-result-object v1
    invoke-virtual { v1 }, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;
    move-result-object v1
  .line 6
    invoke-virtual { v0, v1 }, Landroid/util/TypedValue;->getDimension(Landroid/util/DisplayMetrics;)F
    move-result v0
    iput v0, p0, Landroidx/core/widget/NestedScrollView;->z:F
    goto :L1
  :L0
  .line 7
    new-instance v0, Ljava/lang/IllegalStateException;
    const-string v1, "Expected theme to define listPreferredItemHeight."
    invoke-direct { v0, v1 }, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
    throw v0
  :L1
  .line 8
    iget v0, p0, Landroidx/core/widget/NestedScrollView;->z:F
    return v0
.end method

.method private k(I)V
  .registers 4
    if-eqz p1, :L1
  .line 1
    iget-boolean v0, p0, Landroidx/core/widget/NestedScrollView;->n:Z
    const/4 v1, 0
    if-eqz v0, :L0
  .line 2
    invoke-virtual { p0, v1, p1 }, Landroidx/core/widget/NestedScrollView;->L(II)V
    goto :L1
  :L0
  .line 3
    invoke-virtual { p0, v1, p1 }, Landroid/widget/FrameLayout;->scrollBy(II)V
  :L1
    return-void
.end method

.method private l()V
  .registers 2
    const/4 v0, 0
  .line 1
    iput-boolean v0, p0, Landroidx/core/widget/NestedScrollView;->k:Z
  .line 2
    invoke-direct { p0 }, Landroidx/core/widget/NestedScrollView;->G()V
  .line 3
    invoke-virtual { p0, v0 }, Landroidx/core/widget/NestedScrollView;->Q(I)V
  .line 4
    iget-object v0, p0, Landroidx/core/widget/NestedScrollView;->e:Landroid/widget/EdgeEffect;
    if-eqz v0, :L0
  .line 5
    invoke-virtual { v0 }, Landroid/widget/EdgeEffect;->onRelease()V
  .line 6
    iget-object v0, p0, Landroidx/core/widget/NestedScrollView;->f:Landroid/widget/EdgeEffect;
    invoke-virtual { v0 }, Landroid/widget/EdgeEffect;->onRelease()V
  :L0
    return-void
.end method

.method private p()V
  .registers 3
  .line 1
    invoke-virtual { p0 }, Landroid/widget/FrameLayout;->getOverScrollMode()I
    move-result v0
    const/4 v1, 2
    if-eq v0, v1, :L0
  .line 2
    iget-object v0, p0, Landroidx/core/widget/NestedScrollView;->e:Landroid/widget/EdgeEffect;
    if-nez v0, :L1
  .line 3
    invoke-virtual { p0 }, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;
    move-result-object v0
  .line 4
    new-instance v1, Landroid/widget/EdgeEffect;
    invoke-direct { v1, v0 }, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V
    iput-object v1, p0, Landroidx/core/widget/NestedScrollView;->e:Landroid/widget/EdgeEffect;
  .line 5
    new-instance v1, Landroid/widget/EdgeEffect;
    invoke-direct { v1, v0 }, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V
    iput-object v1, p0, Landroidx/core/widget/NestedScrollView;->f:Landroid/widget/EdgeEffect;
    goto :L1
  :L0
    const/4 v0, 0
  .line 6
    iput-object v0, p0, Landroidx/core/widget/NestedScrollView;->e:Landroid/widget/EdgeEffect;
  .line 7
    iput-object v0, p0, Landroidx/core/widget/NestedScrollView;->f:Landroid/widget/EdgeEffect;
  :L1
    return-void
.end method

.method private r(ZII)Landroid/view/View;
  .registers 16
    const/4 v0, 2
  .line 1
    invoke-virtual { p0, v0 }, Landroid/widget/FrameLayout;->getFocusables(I)Ljava/util/ArrayList;
    move-result-object v0
  .line 2
    invoke-interface { v0 }, Ljava/util/List;->size()I
    move-result v1
    const/4 v2, 0
    const/4 v3, 0
    const/4 v4, 0
    const/4 v5, 0
  :L0
    if-ge v4, v1, :L12
  .line 3
    invoke-interface { v0, v4 }, Ljava/util/List;->get(I)Ljava/lang/Object;
    move-result-object v6
    check-cast v6, Landroid/view/View;
  .line 4
    invoke-virtual { v6 }, Landroid/view/View;->getTop()I
    move-result v7
  .line 5
    invoke-virtual { v6 }, Landroid/view/View;->getBottom()I
    move-result v8
    const/4 v9, 1
    if-ge p2, v8, :L11
    if-ge v7, p3, :L11
    if-ge p2, v7, :L1
    if-ge v8, p3, :L1
    const/4 v10, 1
    goto :L2
  :L1
    const/4 v10, 0
  :L2
    if-nez v3, :L3
    move-object v3, v6
    move v5, v10
    goto :L11
  :L3
    if-eqz p1, :L4
  .line 6
    invoke-virtual { v3 }, Landroid/view/View;->getTop()I
    move-result v11
    if-lt v7, v11, :L5
  :L4
    if-nez p1, :L6
  .line 7
    invoke-virtual { v3 }, Landroid/view/View;->getBottom()I
    move-result v7
    if-le v8, v7, :L6
  :L5
    const/4 v7, 1
    goto :L7
  :L6
    const/4 v7, 0
  :L7
    if-eqz v5, :L8
    if-eqz v10, :L11
    if-eqz v7, :L11
    goto :L10
  :L8
    if-eqz v10, :L9
    move-object v3, v6
    const/4 v5, 1
    goto :L11
  :L9
    if-eqz v7, :L11
  :L10
    move-object v3, v6
  :L11
    add-int/lit8 v4, v4, 1
    goto :L0
  :L12
    return-object v3
.end method

.method private v(II)Z
  .registers 7
  .line 1
    invoke-virtual { p0 }, Landroid/widget/FrameLayout;->getChildCount()I
    move-result v0
    const/4 v1, 0
    if-lez v0, :L0
  .line 2
    invoke-virtual { p0 }, Landroid/widget/FrameLayout;->getScrollY()I
    move-result v0
  .line 3
    invoke-virtual { p0, v1 }, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;
    move-result-object v2
  .line 4
    invoke-virtual { v2 }, Landroid/view/View;->getTop()I
    move-result v3
    sub-int/2addr v3, v0
    if-lt p2, v3, :L0
  .line 5
    invoke-virtual { v2 }, Landroid/view/View;->getBottom()I
    move-result v3
    sub-int/2addr v3, v0
    if-ge p2, v3, :L0
  .line 6
    invoke-virtual { v2 }, Landroid/view/View;->getLeft()I
    move-result p2
    if-lt p1, p2, :L0
  .line 7
    invoke-virtual { v2 }, Landroid/view/View;->getRight()I
    move-result p2
    if-ge p1, p2, :L0
    const/4 v1, 1
  :L0
    return v1
.end method

.method private w()V
  .registers 2
  .line 1
    iget-object v0, p0, Landroidx/core/widget/NestedScrollView;->l:Landroid/view/VelocityTracker;
    if-nez v0, :L0
  .line 2
    invoke-static { }, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;
    move-result-object v0
    iput-object v0, p0, Landroidx/core/widget/NestedScrollView;->l:Landroid/view/VelocityTracker;
    goto :L1
  :L0
  .line 3
    invoke-virtual { v0 }, Landroid/view/VelocityTracker;->clear()V
  :L1
    return-void
.end method

.method private x()V
  .registers 3
  .line 1
    new-instance v0, Landroid/widget/OverScroller;
    invoke-virtual { p0 }, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;
    move-result-object v1
    invoke-direct { v0, v1 }, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;)V
    iput-object v0, p0, Landroidx/core/widget/NestedScrollView;->d:Landroid/widget/OverScroller;
    const/4 v0, 1
  .line 2
    invoke-virtual { p0, v0 }, Landroid/widget/FrameLayout;->setFocusable(Z)V
    const/high16 v0, 4
  .line 3
    invoke-virtual { p0, v0 }, Landroid/widget/FrameLayout;->setDescendantFocusability(I)V
    const/4 v0, 0
  .line 4
    invoke-virtual { p0, v0 }, Landroid/widget/FrameLayout;->setWillNotDraw(Z)V
  .line 5
    invoke-virtual { p0 }, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;
    move-result-object v0
    invoke-static { v0 }, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;
    move-result-object v0
  .line 6
    invoke-virtual { v0 }, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I
    move-result v1
    iput v1, p0, Landroidx/core/widget/NestedScrollView;->o:I
  .line 7
    invoke-virtual { v0 }, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I
    move-result v1
    iput v1, p0, Landroidx/core/widget/NestedScrollView;->p:I
  .line 8
    invoke-virtual { v0 }, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I
    move-result v0
    iput v0, p0, Landroidx/core/widget/NestedScrollView;->q:I
    return-void
.end method

.method private y()V
  .registers 2
  .line 1
    iget-object v0, p0, Landroidx/core/widget/NestedScrollView;->l:Landroid/view/VelocityTracker;
    if-nez v0, :L0
  .line 2
    invoke-static { }, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;
    move-result-object v0
    iput-object v0, p0, Landroidx/core/widget/NestedScrollView;->l:Landroid/view/VelocityTracker;
  :L0
    return-void
.end method

.method private z(Landroid/view/View;)Z
  .registers 4
  .line 1
    invoke-virtual { p0 }, Landroid/widget/FrameLayout;->getHeight()I
    move-result v0
    const/4 v1, 0
    invoke-direct { p0, p1, v1, v0 }, Landroidx/core/widget/NestedScrollView;->B(Landroid/view/View;II)Z
    move-result p1
    xor-int/lit8 p1, p1, 1
    return p1
.end method

.method E(IIIIIIIIZ)Z
  .registers 22
    move-object v0, p0
  .line 1
    invoke-virtual { p0 }, Landroid/widget/FrameLayout;->getOverScrollMode()I
    move-result v1
  .line 2
    invoke-virtual { p0 }, Landroidx/core/widget/NestedScrollView;->computeHorizontalScrollRange()I
    move-result v2
    invoke-virtual { p0 }, Landroidx/core/widget/NestedScrollView;->computeHorizontalScrollExtent()I
    move-result v3
    const/4 v4, 0
    const/4 v5, 1
    if-le v2, v3, :L0
    const/4 v2, 1
    goto :L1
  :L0
    const/4 v2, 0
  :L1
  .line 3
    invoke-virtual { p0 }, Landroidx/core/widget/NestedScrollView;->computeVerticalScrollRange()I
    move-result v3
    invoke-virtual { p0 }, Landroidx/core/widget/NestedScrollView;->computeVerticalScrollExtent()I
    move-result v6
    if-le v3, v6, :L2
    const/4 v3, 1
    goto :L3
  :L2
    const/4 v3, 0
  :L3
    if-eqz v1, :L5
    if-ne v1, v5, :L4
    if-eqz v2, :L4
    goto :L5
  :L4
    const/4 v2, 0
    goto :L6
  :L5
    const/4 v2, 1
  :L6
    if-eqz v1, :L8
    if-ne v1, v5, :L7
    if-eqz v3, :L7
    goto :L8
  :L7
    const/4 v1, 0
    goto :L9
  :L8
    const/4 v1, 1
  :L9
    add-int v3, p3, p1
    if-nez v2, :L10
    const/4 v2, 0
    goto :L11
  :L10
    move/from16 v2, p7
  :L11
    add-int v6, p4, p2
    if-nez v1, :L12
    const/4 v1, 0
    goto :L13
  :L12
    move/from16 v1, p8
  :L13
    neg-int v7, v2
    add-int v2, v2, p5
    neg-int v8, v1
    add-int v1, v1, p6
    if-le v3, v2, :L15
    move v3, v2
  :L14
    const/4 v2, 1
    goto :L17
  :L15
    if-ge v3, v7, :L16
    move v3, v7
    goto :L14
  :L16
    const/4 v2, 0
  :L17
    if-le v6, v1, :L19
    move v6, v1
  :L18
    const/4 v1, 1
    goto :L21
  :L19
    if-ge v6, v8, :L20
    move v6, v8
    goto :L18
  :L20
    const/4 v1, 0
  :L21
    if-eqz v1, :L22
  .line 4
    invoke-virtual { p0, v5 }, Landroidx/core/widget/NestedScrollView;->u(I)Z
    move-result v7
    if-nez v7, :L22
  .line 5
    iget-object v7, v0, Landroidx/core/widget/NestedScrollView;->d:Landroid/widget/OverScroller;
    const/4 v8, 0
    const/4 v9, 0
    const/4 v10, 0
    invoke-virtual { p0 }, Landroidx/core/widget/NestedScrollView;->getScrollRange()I
    move-result v11
    move-object p1, v7
    move p2, v3
    move p3, v6
    move/from16 p4, v8
    move/from16 p5, v9
    move/from16 p6, v10
    move/from16 p7, v11
    invoke-virtual/range { p1 .. p7 }, Landroid/widget/OverScroller;->springBack(IIIIII)Z
  :L22
  .line 6
    invoke-virtual { p0, v3, v6, v2, v1 }, Landroidx/core/widget/NestedScrollView;->onOverScrolled(IIZZ)V
    if-nez v2, :L23
    if-eqz v1, :L24
  :L23
    const/4 v4, 1
  :L24
    return v4
.end method

.method public F(I)Z
  .registers 6
    const/4 v0, 1
    const/4 v1, 0
    const/16 v2, 130
    if-ne p1, v2, :L0
    const/4 v2, 1
    goto :L1
  :L0
    const/4 v2, 0
  :L1
  .line 1
    invoke-virtual { p0 }, Landroid/widget/FrameLayout;->getHeight()I
    move-result v3
    if-eqz v2, :L2
  .line 2
    iget-object v1, p0, Landroidx/core/widget/NestedScrollView;->c:Landroid/graphics/Rect;
    invoke-virtual { p0 }, Landroid/widget/FrameLayout;->getScrollY()I
    move-result v2
    add-int/2addr v2, v3
    iput v2, v1, Landroid/graphics/Rect;->top:I
  .line 3
    invoke-virtual { p0 }, Landroid/widget/FrameLayout;->getChildCount()I
    move-result v1
    if-lez v1, :L3
    sub-int/2addr v1, v0
  .line 4
    invoke-virtual { p0, v1 }, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;
    move-result-object v0
  .line 5
    invoke-virtual { v0 }, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    move-result-object v1
    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;
  .line 6
    invoke-virtual { v0 }, Landroid/view/View;->getBottom()I
    move-result v0
    iget v1, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I
    add-int/2addr v0, v1
    invoke-virtual { p0 }, Landroid/widget/FrameLayout;->getPaddingBottom()I
    move-result v1
    add-int/2addr v0, v1
  .line 7
    iget-object v1, p0, Landroidx/core/widget/NestedScrollView;->c:Landroid/graphics/Rect;
    iget v2, v1, Landroid/graphics/Rect;->top:I
    add-int/2addr v2, v3
    if-le v2, v0, :L3
    sub-int/2addr v0, v3
  .line 8
    iput v0, v1, Landroid/graphics/Rect;->top:I
    goto :L3
  :L2
  .line 9
    iget-object v0, p0, Landroidx/core/widget/NestedScrollView;->c:Landroid/graphics/Rect;
    invoke-virtual { p0 }, Landroid/widget/FrameLayout;->getScrollY()I
    move-result v2
    sub-int/2addr v2, v3
    iput v2, v0, Landroid/graphics/Rect;->top:I
  .line 10
    iget-object v0, p0, Landroidx/core/widget/NestedScrollView;->c:Landroid/graphics/Rect;
    iget v2, v0, Landroid/graphics/Rect;->top:I
    if-gez v2, :L3
  .line 11
    iput v1, v0, Landroid/graphics/Rect;->top:I
  :L3
  .line 12
    iget-object v0, p0, Landroidx/core/widget/NestedScrollView;->c:Landroid/graphics/Rect;
    iget v1, v0, Landroid/graphics/Rect;->top:I
    add-int/2addr v3, v1
    iput v3, v0, Landroid/graphics/Rect;->bottom:I
  .line 13
    invoke-direct { p0, p1, v1, v3 }, Landroidx/core/widget/NestedScrollView;->I(III)Z
    move-result p1
    return p1
.end method

.method public final L(II)V
  .registers 5
    const/16 v0, 250
    const/4 v1, 0
  .line 1
    invoke-direct { p0, p1, p2, v0, v1 }, Landroidx/core/widget/NestedScrollView;->M(IIIZ)V
    return-void
.end method

.method N(IIIZ)V
  .registers 6
  .line 1
    invoke-virtual { p0 }, Landroid/widget/FrameLayout;->getScrollX()I
    move-result v0
    sub-int/2addr p1, v0
    invoke-virtual { p0 }, Landroid/widget/FrameLayout;->getScrollY()I
    move-result v0
    sub-int/2addr p2, v0
    invoke-direct { p0, p1, p2, p3, p4 }, Landroidx/core/widget/NestedScrollView;->M(IIIZ)V
    return-void
.end method

.method O(IIZ)V
  .registers 5
    const/16 v0, 250
  .line 1
    invoke-virtual { p0, p1, p2, v0, p3 }, Landroidx/core/widget/NestedScrollView;->N(IIIZ)V
    return-void
.end method

.method public P(II)Z
  .registers 4
  .line 1
    iget-object v0, p0, Landroidx/core/widget/NestedScrollView;->y:Landroidx/core/view/l;
    invoke-virtual { v0, p1, p2 }, Landroidx/core/view/l;->p(II)Z
    move-result p1
    return p1
.end method

.method public Q(I)V
  .registers 3
  .line 1
    iget-object v0, p0, Landroidx/core/widget/NestedScrollView;->y:Landroidx/core/view/l;
    invoke-virtual { v0, p1 }, Landroidx/core/view/l;->r(I)V
    return-void
.end method

.method public addView(Landroid/view/View;)V
  .registers 3
  .line 1
    invoke-virtual { p0 }, Landroid/widget/FrameLayout;->getChildCount()I
    move-result v0
    if-gtz v0, :L0
  .line 2
    invoke-super { p0, p1 }, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V
    return-void
  :L0
  .line 3
    new-instance p1, Ljava/lang/IllegalStateException;
    const-string v0, "ScrollView can host only one direct child"
    invoke-direct { p1, v0 }, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
    throw p1
.end method

.method public addView(Landroid/view/View;I)V
  .registers 4
  .line 4
    invoke-virtual { p0 }, Landroid/widget/FrameLayout;->getChildCount()I
    move-result v0
    if-gtz v0, :L0
  .line 5
    invoke-super { p0, p1, p2 }, Landroid/widget/FrameLayout;->addView(Landroid/view/View;I)V
    return-void
  :L0
  .line 6
    new-instance p1, Ljava/lang/IllegalStateException;
    const-string p2, "ScrollView can host only one direct child"
    invoke-direct { p1, p2 }, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
    throw p1
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
  .registers 5
  .line 10
    invoke-virtual { p0 }, Landroid/widget/FrameLayout;->getChildCount()I
    move-result v0
    if-gtz v0, :L0
  .line 11
    invoke-super { p0, p1, p2, p3 }, Landroid/widget/FrameLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    return-void
  :L0
  .line 12
    new-instance p1, Ljava/lang/IllegalStateException;
    const-string p2, "ScrollView can host only one direct child"
    invoke-direct { p1, p2 }, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
    throw p1
.end method

.method public addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
  .registers 4
  .line 7
    invoke-virtual { p0 }, Landroid/widget/FrameLayout;->getChildCount()I
    move-result v0
    if-gtz v0, :L0
  .line 8
    invoke-super { p0, p1, p2 }, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    return-void
  :L0
  .line 9
    new-instance p1, Ljava/lang/IllegalStateException;
    const-string p2, "ScrollView can host only one direct child"
    invoke-direct { p1, p2 }, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
    throw p1
.end method

.method public b(I)Z
  .registers 9
  .line 1
    invoke-virtual { p0 }, Landroid/widget/FrameLayout;->findFocus()Landroid/view/View;
    move-result-object v0
    if-ne v0, p0, :L0
    const/4 v0, 0
  :L0
  .line 2
    invoke-static { }, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;
    move-result-object v1
    invoke-virtual { v1, p0, v0, p1 }, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;
    move-result-object v1
  .line 3
    invoke-virtual { p0 }, Landroidx/core/widget/NestedScrollView;->getMaxScrollAmount()I
    move-result v2
    if-eqz v1, :L1
  .line 4
    invoke-virtual { p0 }, Landroid/widget/FrameLayout;->getHeight()I
    move-result v3
    invoke-direct { p0, v1, v2, v3 }, Landroidx/core/widget/NestedScrollView;->B(Landroid/view/View;II)Z
    move-result v3
    if-eqz v3, :L1
  .line 5
    iget-object v2, p0, Landroidx/core/widget/NestedScrollView;->c:Landroid/graphics/Rect;
    invoke-virtual { v1, v2 }, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V
  .line 6
    iget-object v2, p0, Landroidx/core/widget/NestedScrollView;->c:Landroid/graphics/Rect;
    invoke-virtual { p0, v1, v2 }, Landroid/widget/FrameLayout;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V
  .line 7
    iget-object v2, p0, Landroidx/core/widget/NestedScrollView;->c:Landroid/graphics/Rect;
    invoke-virtual { p0, v2 }, Landroidx/core/widget/NestedScrollView;->e(Landroid/graphics/Rect;)I
    move-result v2
  .line 8
    invoke-direct { p0, v2 }, Landroidx/core/widget/NestedScrollView;->k(I)V
  .line 9
    invoke-virtual { v1, p1 }, Landroid/view/View;->requestFocus(I)Z
    goto :L7
  :L1
    const/16 v1, 33
    const/4 v3, 0
    const/16 v4, 130
    if-ne p1, v1, :L2
  .line 10
    invoke-virtual { p0 }, Landroid/widget/FrameLayout;->getScrollY()I
    move-result v1
    if-ge v1, v2, :L2
  .line 11
    invoke-virtual { p0 }, Landroid/widget/FrameLayout;->getScrollY()I
    move-result v2
    goto :L3
  :L2
    if-ne p1, v4, :L3
  .line 12
    invoke-virtual { p0 }, Landroid/widget/FrameLayout;->getChildCount()I
    move-result v1
    if-lez v1, :L3
  .line 13
    invoke-virtual { p0, v3 }, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;
    move-result-object v1
  .line 14
    invoke-virtual { v1 }, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    move-result-object v5
    check-cast v5, Landroid/widget/FrameLayout$LayoutParams;
  .line 15
    invoke-virtual { v1 }, Landroid/view/View;->getBottom()I
    move-result v1
    iget v5, v5, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I
    add-int/2addr v1, v5
  .line 16
    invoke-virtual { p0 }, Landroid/widget/FrameLayout;->getScrollY()I
    move-result v5
    invoke-virtual { p0 }, Landroid/widget/FrameLayout;->getHeight()I
    move-result v6
    add-int/2addr v5, v6
    invoke-virtual { p0 }, Landroid/widget/FrameLayout;->getPaddingBottom()I
    move-result v6
    sub-int/2addr v5, v6
    sub-int/2addr v1, v5
  .line 17
    invoke-static { v1, v2 }, Ljava/lang/Math;->min(II)I
    move-result v2
  :L3
    if-nez v2, :L4
    return v3
  :L4
    if-ne p1, v4, :L5
    goto :L6
  :L5
    neg-int v2, v2
  :L6
  .line 18
    invoke-direct { p0, v2 }, Landroidx/core/widget/NestedScrollView;->k(I)V
  :L7
    if-eqz v0, :L8
  .line 19
    invoke-virtual { v0 }, Landroid/view/View;->isFocused()Z
    move-result p1
    if-eqz p1, :L8
  .line 20
    invoke-direct { p0, v0 }, Landroidx/core/widget/NestedScrollView;->z(Landroid/view/View;)Z
    move-result p1
    if-eqz p1, :L8
  .line 21
    invoke-virtual { p0 }, Landroid/widget/FrameLayout;->getDescendantFocusability()I
    move-result p1
    const/high16 v0, 2
  .line 22
    invoke-virtual { p0, v0 }, Landroid/widget/FrameLayout;->setDescendantFocusability(I)V
  .line 23
    invoke-virtual { p0 }, Landroid/widget/FrameLayout;->requestFocus()Z
  .line 24
    invoke-virtual { p0, p1 }, Landroid/widget/FrameLayout;->setDescendantFocusability(I)V
  :L8
    const/4 p1, 1
    return p1
.end method

.method public computeHorizontalScrollExtent()I
  .registers 2
  .line 1
    invoke-super { p0 }, Landroid/widget/FrameLayout;->computeHorizontalScrollExtent()I
    move-result v0
    return v0
.end method

.method public computeHorizontalScrollOffset()I
  .registers 2
  .line 1
    invoke-super { p0 }, Landroid/widget/FrameLayout;->computeHorizontalScrollOffset()I
    move-result v0
    return v0
.end method

.method public computeHorizontalScrollRange()I
  .registers 2
  .line 1
    invoke-super { p0 }, Landroid/widget/FrameLayout;->computeHorizontalScrollRange()I
    move-result v0
    return v0
.end method

.method public computeScroll()V
  .registers 17
    move-object/from16 v10, p0
  .line 1
    iget-object v0, v10, Landroidx/core/widget/NestedScrollView;->d:Landroid/widget/OverScroller;
    invoke-virtual { v0 }, Landroid/widget/OverScroller;->isFinished()Z
    move-result v0
    if-eqz v0, :L0
    return-void
  :L0
  .line 2
    iget-object v0, v10, Landroidx/core/widget/NestedScrollView;->d:Landroid/widget/OverScroller;
    invoke-virtual { v0 }, Landroid/widget/OverScroller;->computeScrollOffset()Z
  .line 3
    iget-object v0, v10, Landroidx/core/widget/NestedScrollView;->d:Landroid/widget/OverScroller;
    invoke-virtual { v0 }, Landroid/widget/OverScroller;->getCurrY()I
    move-result v0
  .line 4
    iget v1, v10, Landroidx/core/widget/NestedScrollView;->v:I
    sub-int v6, v0, v1
  .line 5
    iput v0, v10, Landroidx/core/widget/NestedScrollView;->v:I
  .line 6
    iget-object v3, v10, Landroidx/core/widget/NestedScrollView;->t:[I
    const/4 v11, 1
    const/4 v12, 0
    aput v12, v3, v11
    const/4 v1, 0
    const/4 v4, 0
    const/4 v5, 1
    move-object/from16 v0, p0
    move v2, v6
  .line 7
    invoke-virtual/range { v0 .. v5 }, Landroidx/core/widget/NestedScrollView;->f(II[I[II)Z
  .line 8
    iget-object v0, v10, Landroidx/core/widget/NestedScrollView;->t:[I
    aget v0, v0, v11
    sub-int v13, v6, v0
  .line 9
    invoke-virtual/range { p0 .. p0 }, Landroidx/core/widget/NestedScrollView;->getScrollRange()I
    move-result v14
    if-eqz v13, :L1
  .line 10
    invoke-virtual/range { p0 .. p0 }, Landroid/widget/FrameLayout;->getScrollY()I
    move-result v15
    const/4 v1, 0
  .line 11
    invoke-virtual/range { p0 .. p0 }, Landroid/widget/FrameLayout;->getScrollX()I
    move-result v3
    const/4 v5, 0
    const/4 v7, 0
    const/4 v8, 0
    const/4 v9, 0
    move-object/from16 v0, p0
    move v2, v13
    move v4, v15
    move v6, v14
    invoke-virtual/range { v0 .. v9 }, Landroidx/core/widget/NestedScrollView;->E(IIIIIIIIZ)Z
  .line 12
    invoke-virtual/range { p0 .. p0 }, Landroid/widget/FrameLayout;->getScrollY()I
    move-result v0
    sub-int v2, v0, v15
    sub-int/2addr v13, v2
  .line 13
    iget-object v7, v10, Landroidx/core/widget/NestedScrollView;->t:[I
    aput v12, v7, v11
    const/4 v3, 0
  .line 14
    iget-object v5, v10, Landroidx/core/widget/NestedScrollView;->s:[I
    const/4 v6, 1
    move-object/from16 v0, p0
    move v4, v13
    invoke-virtual/range { v0 .. v7 }, Landroidx/core/widget/NestedScrollView;->g(IIII[II[I)V
  .line 15
    iget-object v0, v10, Landroidx/core/widget/NestedScrollView;->t:[I
    aget v0, v0, v11
    sub-int/2addr v13, v0
  :L1
    if-eqz v13, :L6
  .line 16
    invoke-virtual/range { p0 .. p0 }, Landroid/widget/FrameLayout;->getOverScrollMode()I
    move-result v0
    if-eqz v0, :L2
    if-ne v0, v11, :L3
    if-lez v14, :L3
  :L2
    const/4 v12, 1
  :L3
    if-eqz v12, :L5
  .line 17
    invoke-direct/range { p0 .. p0 }, Landroidx/core/widget/NestedScrollView;->p()V
    if-gez v13, :L4
  .line 18
    iget-object v0, v10, Landroidx/core/widget/NestedScrollView;->e:Landroid/widget/EdgeEffect;
    invoke-virtual { v0 }, Landroid/widget/EdgeEffect;->isFinished()Z
    move-result v0
    if-eqz v0, :L5
  .line 19
    iget-object v0, v10, Landroidx/core/widget/NestedScrollView;->e:Landroid/widget/EdgeEffect;
    iget-object v1, v10, Landroidx/core/widget/NestedScrollView;->d:Landroid/widget/OverScroller;
    invoke-virtual { v1 }, Landroid/widget/OverScroller;->getCurrVelocity()F
    move-result v1
    float-to-int v1, v1
    invoke-virtual { v0, v1 }, Landroid/widget/EdgeEffect;->onAbsorb(I)V
    goto :L5
  :L4
  .line 20
    iget-object v0, v10, Landroidx/core/widget/NestedScrollView;->f:Landroid/widget/EdgeEffect;
    invoke-virtual { v0 }, Landroid/widget/EdgeEffect;->isFinished()Z
    move-result v0
    if-eqz v0, :L5
  .line 21
    iget-object v0, v10, Landroidx/core/widget/NestedScrollView;->f:Landroid/widget/EdgeEffect;
    iget-object v1, v10, Landroidx/core/widget/NestedScrollView;->d:Landroid/widget/OverScroller;
    invoke-virtual { v1 }, Landroid/widget/OverScroller;->getCurrVelocity()F
    move-result v1
    float-to-int v1, v1
    invoke-virtual { v0, v1 }, Landroid/widget/EdgeEffect;->onAbsorb(I)V
  :L5
  .line 22
    invoke-direct/range { p0 .. p0 }, Landroidx/core/widget/NestedScrollView;->a()V
  :L6
  .line 23
    iget-object v0, v10, Landroidx/core/widget/NestedScrollView;->d:Landroid/widget/OverScroller;
    invoke-virtual { v0 }, Landroid/widget/OverScroller;->isFinished()Z
    move-result v0
    if-nez v0, :L7
  .line 24
    invoke-static/range { p0 .. p0 }, Landroidx/core/view/v;->f0(Landroid/view/View;)V
    goto :L8
  :L7
  .line 25
    invoke-virtual { v10, v11 }, Landroidx/core/widget/NestedScrollView;->Q(I)V
  :L8
    return-void
.end method

.method public computeVerticalScrollExtent()I
  .registers 2
  .line 1
    invoke-super { p0 }, Landroid/widget/FrameLayout;->computeVerticalScrollExtent()I
    move-result v0
    return v0
.end method

.method public computeVerticalScrollOffset()I
  .registers 3
  .line 1
    invoke-super { p0 }, Landroid/widget/FrameLayout;->computeVerticalScrollOffset()I
    move-result v0
    const/4 v1, 0
    invoke-static { v1, v0 }, Ljava/lang/Math;->max(II)I
    move-result v0
    return v0
.end method

.method public computeVerticalScrollRange()I
  .registers 5
  .line 1
    invoke-virtual { p0 }, Landroid/widget/FrameLayout;->getChildCount()I
    move-result v0
  .line 2
    invoke-virtual { p0 }, Landroid/widget/FrameLayout;->getHeight()I
    move-result v1
    invoke-virtual { p0 }, Landroid/widget/FrameLayout;->getPaddingBottom()I
    move-result v2
    sub-int/2addr v1, v2
    invoke-virtual { p0 }, Landroid/widget/FrameLayout;->getPaddingTop()I
    move-result v2
    sub-int/2addr v1, v2
    if-nez v0, :L0
    return v1
  :L0
    const/4 v0, 0
  .line 3
    invoke-virtual { p0, v0 }, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;
    move-result-object v2
  .line 4
    invoke-virtual { v2 }, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    move-result-object v3
    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;
  .line 5
    invoke-virtual { v2 }, Landroid/view/View;->getBottom()I
    move-result v2
    iget v3, v3, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I
    add-int/2addr v2, v3
  .line 6
    invoke-virtual { p0 }, Landroid/widget/FrameLayout;->getScrollY()I
    move-result v3
    sub-int v1, v2, v1
  .line 7
    invoke-static { v0, v1 }, Ljava/lang/Math;->max(II)I
    move-result v0
    if-gez v3, :L1
    sub-int/2addr v2, v3
    goto :L2
  :L1
    if-le v3, v0, :L2
    sub-int/2addr v3, v0
    add-int/2addr v2, v3
  :L2
    return v2
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
  .registers 3
  .line 1
    invoke-super { p0, p1 }, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    move-result v0
    if-nez v0, :L1
    invoke-virtual { p0, p1 }, Landroidx/core/widget/NestedScrollView;->q(Landroid/view/KeyEvent;)Z
    move-result p1
    if-eqz p1, :L0
    goto :L1
  :L0
    const/4 p1, 0
    goto :L2
  :L1
    const/4 p1, 1
  :L2
    return p1
.end method

.method public dispatchNestedFling(FFZ)Z
  .registers 5
  .line 1
    iget-object v0, p0, Landroidx/core/widget/NestedScrollView;->y:Landroidx/core/view/l;
    invoke-virtual { v0, p1, p2, p3 }, Landroidx/core/view/l;->a(FFZ)Z
    move-result p1
    return p1
.end method

.method public dispatchNestedPreFling(FF)Z
  .registers 4
  .line 1
    iget-object v0, p0, Landroidx/core/widget/NestedScrollView;->y:Landroidx/core/view/l;
    invoke-virtual { v0, p1, p2 }, Landroidx/core/view/l;->b(FF)Z
    move-result p1
    return p1
.end method

.method public dispatchNestedPreScroll(II[I[I)Z
  .registers 11
    const/4 v5, 0
    move-object v0, p0
    move v1, p1
    move v2, p2
    move-object v3, p3
    move-object v4, p4
  .line 1
    invoke-virtual/range { v0 .. v5 }, Landroidx/core/widget/NestedScrollView;->f(II[I[II)Z
    move-result p1
    return p1
.end method

.method public dispatchNestedScroll(IIII[I)Z
  .registers 12
  .line 1
    iget-object v0, p0, Landroidx/core/widget/NestedScrollView;->y:Landroidx/core/view/l;
    move v1, p1
    move v2, p2
    move v3, p3
    move v4, p4
    move-object v5, p5
    invoke-virtual/range { v0 .. v5 }, Landroidx/core/view/l;->f(IIII[I)Z
    move-result p1
    return p1
.end method

.method public draw(Landroid/graphics/Canvas;)V
  .registers 12
  .line 1
    invoke-super { p0, p1 }, Landroid/widget/FrameLayout;->draw(Landroid/graphics/Canvas;)V
  .line 2
    iget-object v0, p0, Landroidx/core/widget/NestedScrollView;->e:Landroid/widget/EdgeEffect;
    if-eqz v0, :L10
  .line 3
    invoke-virtual { p0 }, Landroid/widget/FrameLayout;->getScrollY()I
    move-result v0
  .line 4
    iget-object v1, p0, Landroidx/core/widget/NestedScrollView;->e:Landroid/widget/EdgeEffect;
    invoke-virtual { v1 }, Landroid/widget/EdgeEffect;->isFinished()Z
    move-result v1
    const/4 v2, 0
    const/16 v3, 21
    if-nez v1, :L5
  .line 5
    invoke-virtual { p1 }, Landroid/graphics/Canvas;->save()I
    move-result v1
  .line 6
    invoke-virtual { p0 }, Landroid/widget/FrameLayout;->getWidth()I
    move-result v4
  .line 7
    invoke-virtual { p0 }, Landroid/widget/FrameLayout;->getHeight()I
    move-result v5
  .line 8
    invoke-static { v2, v0 }, Ljava/lang/Math;->min(II)I
    move-result v6
  .line 9
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I
    if-lt v7, v3, :L1
    invoke-virtual { p0 }, Landroid/widget/FrameLayout;->getClipToPadding()Z
    move-result v7
    if-eqz v7, :L0
    goto :L1
  :L0
    const/4 v7, 0
    goto :L2
  :L1
  .line 10
    invoke-virtual { p0 }, Landroid/widget/FrameLayout;->getPaddingLeft()I
    move-result v7
    invoke-virtual { p0 }, Landroid/widget/FrameLayout;->getPaddingRight()I
    move-result v8
    add-int/2addr v7, v8
    sub-int/2addr v4, v7
  .line 11
    invoke-virtual { p0 }, Landroid/widget/FrameLayout;->getPaddingLeft()I
    move-result v7
    add-int/2addr v7, v2
  :L2
  .line 12
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I
    if-lt v8, v3, :L3
    invoke-virtual { p0 }, Landroid/widget/FrameLayout;->getClipToPadding()Z
    move-result v8
    if-eqz v8, :L3
  .line 13
    invoke-virtual { p0 }, Landroid/widget/FrameLayout;->getPaddingTop()I
    move-result v8
    invoke-virtual { p0 }, Landroid/widget/FrameLayout;->getPaddingBottom()I
    move-result v9
    add-int/2addr v8, v9
    sub-int/2addr v5, v8
  .line 14
    invoke-virtual { p0 }, Landroid/widget/FrameLayout;->getPaddingTop()I
    move-result v8
    add-int/2addr v6, v8
  :L3
    int-to-float v7, v7
    int-to-float v6, v6
  .line 15
    invoke-virtual { p1, v7, v6 }, Landroid/graphics/Canvas;->translate(FF)V
  .line 16
    iget-object v6, p0, Landroidx/core/widget/NestedScrollView;->e:Landroid/widget/EdgeEffect;
    invoke-virtual { v6, v4, v5 }, Landroid/widget/EdgeEffect;->setSize(II)V
  .line 17
    iget-object v4, p0, Landroidx/core/widget/NestedScrollView;->e:Landroid/widget/EdgeEffect;
    invoke-virtual { v4, p1 }, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z
    move-result v4
    if-eqz v4, :L4
  .line 18
    invoke-static { p0 }, Landroidx/core/view/v;->f0(Landroid/view/View;)V
  :L4
  .line 19
    invoke-virtual { p1, v1 }, Landroid/graphics/Canvas;->restoreToCount(I)V
  :L5
  .line 20
    iget-object v1, p0, Landroidx/core/widget/NestedScrollView;->f:Landroid/widget/EdgeEffect;
    invoke-virtual { v1 }, Landroid/widget/EdgeEffect;->isFinished()Z
    move-result v1
    if-nez v1, :L10
  .line 21
    invoke-virtual { p1 }, Landroid/graphics/Canvas;->save()I
    move-result v1
  .line 22
    invoke-virtual { p0 }, Landroid/widget/FrameLayout;->getWidth()I
    move-result v4
  .line 23
    invoke-virtual { p0 }, Landroid/widget/FrameLayout;->getHeight()I
    move-result v5
  .line 24
    invoke-virtual { p0 }, Landroidx/core/widget/NestedScrollView;->getScrollRange()I
    move-result v6
    invoke-static { v6, v0 }, Ljava/lang/Math;->max(II)I
    move-result v0
    add-int/2addr v0, v5
  .line 25
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I
    if-lt v6, v3, :L6
    invoke-virtual { p0 }, Landroid/widget/FrameLayout;->getClipToPadding()Z
    move-result v6
    if-eqz v6, :L7
  :L6
  .line 26
    invoke-virtual { p0 }, Landroid/widget/FrameLayout;->getPaddingLeft()I
    move-result v6
    invoke-virtual { p0 }, Landroid/widget/FrameLayout;->getPaddingRight()I
    move-result v7
    add-int/2addr v6, v7
    sub-int/2addr v4, v6
  .line 27
    invoke-virtual { p0 }, Landroid/widget/FrameLayout;->getPaddingLeft()I
    move-result v6
    add-int/2addr v2, v6
  :L7
  .line 28
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I
    if-lt v6, v3, :L8
    invoke-virtual { p0 }, Landroid/widget/FrameLayout;->getClipToPadding()Z
    move-result v3
    if-eqz v3, :L8
  .line 29
    invoke-virtual { p0 }, Landroid/widget/FrameLayout;->getPaddingTop()I
    move-result v3
    invoke-virtual { p0 }, Landroid/widget/FrameLayout;->getPaddingBottom()I
    move-result v6
    add-int/2addr v3, v6
    sub-int/2addr v5, v3
  .line 30
    invoke-virtual { p0 }, Landroid/widget/FrameLayout;->getPaddingBottom()I
    move-result v3
    sub-int/2addr v0, v3
  :L8
    sub-int/2addr v2, v4
    int-to-float v2, v2
    int-to-float v0, v0
  .line 31
    invoke-virtual { p1, v2, v0 }, Landroid/graphics/Canvas;->translate(FF)V
    const/high16 v0, 17204
    int-to-float v2, v4
    const/4 v3, 0
  .line 32
    invoke-virtual { p1, v0, v2, v3 }, Landroid/graphics/Canvas;->rotate(FFF)V
  .line 33
    iget-object v0, p0, Landroidx/core/widget/NestedScrollView;->f:Landroid/widget/EdgeEffect;
    invoke-virtual { v0, v4, v5 }, Landroid/widget/EdgeEffect;->setSize(II)V
  .line 34
    iget-object v0, p0, Landroidx/core/widget/NestedScrollView;->f:Landroid/widget/EdgeEffect;
    invoke-virtual { v0, p1 }, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z
    move-result v0
    if-eqz v0, :L9
  .line 35
    invoke-static { p0 }, Landroidx/core/view/v;->f0(Landroid/view/View;)V
  :L9
  .line 36
    invoke-virtual { p1, v1 }, Landroid/graphics/Canvas;->restoreToCount(I)V
  :L10
    return-void
.end method

.method protected e(Landroid/graphics/Rect;)I
  .registers 12
  .line 1
    invoke-virtual { p0 }, Landroid/widget/FrameLayout;->getChildCount()I
    move-result v0
    const/4 v1, 0
    if-nez v0, :L0
    return v1
  :L0
  .line 2
    invoke-virtual { p0 }, Landroid/widget/FrameLayout;->getHeight()I
    move-result v0
  .line 3
    invoke-virtual { p0 }, Landroid/widget/FrameLayout;->getScrollY()I
    move-result v2
    add-int v3, v2, v0
  .line 4
    invoke-virtual { p0 }, Landroid/widget/FrameLayout;->getVerticalFadingEdgeLength()I
    move-result v4
  .line 5
    iget v5, p1, Landroid/graphics/Rect;->top:I
    if-lez v5, :L1
    add-int/2addr v2, v4
  :L1
  .line 6
    invoke-virtual { p0, v1 }, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;
    move-result-object v5
  .line 7
    invoke-virtual { v5 }, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    move-result-object v6
    check-cast v6, Landroid/widget/FrameLayout$LayoutParams;
  .line 8
    iget v7, p1, Landroid/graphics/Rect;->bottom:I
    invoke-virtual { v5 }, Landroid/view/View;->getHeight()I
    move-result v8
    iget v9, v6, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I
    add-int/2addr v8, v9
    iget v9, v6, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I
    add-int/2addr v8, v9
    if-ge v7, v8, :L2
    sub-int v4, v3, v4
    goto :L3
  :L2
    move v4, v3
  :L3
  .line 9
    iget v7, p1, Landroid/graphics/Rect;->bottom:I
    if-le v7, v4, :L6
    iget v7, p1, Landroid/graphics/Rect;->top:I
    if-le v7, v2, :L6
  .line 10
    invoke-virtual { p1 }, Landroid/graphics/Rect;->height()I
    move-result v7
    if-le v7, v0, :L4
  .line 11
    iget p1, p1, Landroid/graphics/Rect;->top:I
    sub-int/2addr p1, v2
    goto :L5
  :L4
  .line 12
    iget p1, p1, Landroid/graphics/Rect;->bottom:I
    sub-int/2addr p1, v4
  :L5
    add-int/2addr p1, v1
  .line 13
    invoke-virtual { v5 }, Landroid/view/View;->getBottom()I
    move-result v0
    iget v1, v6, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I
    add-int/2addr v0, v1
    sub-int/2addr v0, v3
  .line 14
    invoke-static { p1, v0 }, Ljava/lang/Math;->min(II)I
    move-result v1
    goto :L9
  :L6
  .line 15
    iget v3, p1, Landroid/graphics/Rect;->top:I
    if-ge v3, v2, :L9
    iget v3, p1, Landroid/graphics/Rect;->bottom:I
    if-ge v3, v4, :L9
  .line 16
    invoke-virtual { p1 }, Landroid/graphics/Rect;->height()I
    move-result v3
    if-le v3, v0, :L7
  .line 17
    iget p1, p1, Landroid/graphics/Rect;->bottom:I
    sub-int/2addr v4, p1
    sub-int/2addr v1, v4
    goto :L8
  :L7
  .line 18
    iget p1, p1, Landroid/graphics/Rect;->top:I
    sub-int/2addr v2, p1
    sub-int/2addr v1, v2
  :L8
  .line 19
    invoke-virtual { p0 }, Landroid/widget/FrameLayout;->getScrollY()I
    move-result p1
    neg-int p1, p1
    invoke-static { v1, p1 }, Ljava/lang/Math;->max(II)I
    move-result v1
  :L9
    return v1
.end method

.method public f(II[I[II)Z
  .registers 12
  .line 1
    iget-object v0, p0, Landroidx/core/widget/NestedScrollView;->y:Landroidx/core/view/l;
    move v1, p1
    move v2, p2
    move-object v3, p3
    move-object v4, p4
    move v5, p5
    invoke-virtual/range { v0 .. v5 }, Landroidx/core/view/l;->d(II[I[II)Z
    move-result p1
    return p1
.end method

.method public g(IIII[II[I)V
  .registers 16
  .line 1
    iget-object v0, p0, Landroidx/core/widget/NestedScrollView;->y:Landroidx/core/view/l;
    move v1, p1
    move v2, p2
    move v3, p3
    move v4, p4
    move-object v5, p5
    move v6, p6
    move-object v7, p7
    invoke-virtual/range { v0 .. v7 }, Landroidx/core/view/l;->e(IIII[II[I)V
    return-void
.end method

.method protected getBottomFadingEdgeStrength()F
  .registers 6
  .line 1
    invoke-virtual { p0 }, Landroid/widget/FrameLayout;->getChildCount()I
    move-result v0
    if-nez v0, :L0
    const/4 v0, 0
    return v0
  :L0
    const/4 v0, 0
  .line 2
    invoke-virtual { p0, v0 }, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;
    move-result-object v0
  .line 3
    invoke-virtual { v0 }, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    move-result-object v1
    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;
  .line 4
    invoke-virtual { p0 }, Landroid/widget/FrameLayout;->getVerticalFadingEdgeLength()I
    move-result v2
  .line 5
    invoke-virtual { p0 }, Landroid/widget/FrameLayout;->getHeight()I
    move-result v3
    invoke-virtual { p0 }, Landroid/widget/FrameLayout;->getPaddingBottom()I
    move-result v4
    sub-int/2addr v3, v4
  .line 6
    invoke-virtual { v0 }, Landroid/view/View;->getBottom()I
    move-result v0
    iget v1, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I
    add-int/2addr v0, v1
    invoke-virtual { p0 }, Landroid/widget/FrameLayout;->getScrollY()I
    move-result v1
    sub-int/2addr v0, v1
    sub-int/2addr v0, v3
    if-ge v0, v2, :L1
    int-to-float v0, v0
    int-to-float v1, v2
    div-float/2addr v0, v1
    return v0
  :L1
    const/high16 v0, 16256
    return v0
.end method

.method public getMaxScrollAmount()I
  .registers 3
  .line 1
    invoke-virtual { p0 }, Landroid/widget/FrameLayout;->getHeight()I
    move-result v0
    int-to-float v0, v0
    const/high16 v1, 16128
    mul-float v0, v0, v1
    float-to-int v0, v0
    return v0
.end method

.method public getNestedScrollAxes()I
  .registers 2
  .line 1
    iget-object v0, p0, Landroidx/core/widget/NestedScrollView;->x:Landroidx/core/view/p;
    invoke-virtual { v0 }, Landroidx/core/view/p;->a()I
    move-result v0
    return v0
.end method

.method getScrollRange()I
  .registers 5
  .line 1
    invoke-virtual { p0 }, Landroid/widget/FrameLayout;->getChildCount()I
    move-result v0
    const/4 v1, 0
    if-lez v0, :L0
  .line 2
    invoke-virtual { p0, v1 }, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;
    move-result-object v0
  .line 3
    invoke-virtual { v0 }, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    move-result-object v2
    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;
  .line 4
    invoke-virtual { v0 }, Landroid/view/View;->getHeight()I
    move-result v0
    iget v3, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I
    add-int/2addr v0, v3
    iget v2, v2, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I
    add-int/2addr v0, v2
  .line 5
    invoke-virtual { p0 }, Landroid/widget/FrameLayout;->getHeight()I
    move-result v2
    invoke-virtual { p0 }, Landroid/widget/FrameLayout;->getPaddingTop()I
    move-result v3
    sub-int/2addr v2, v3
    invoke-virtual { p0 }, Landroid/widget/FrameLayout;->getPaddingBottom()I
    move-result v3
    sub-int/2addr v2, v3
    sub-int/2addr v0, v2
  .line 6
    invoke-static { v1, v0 }, Ljava/lang/Math;->max(II)I
    move-result v1
  :L0
    return v1
.end method

.method protected getTopFadingEdgeStrength()F
  .registers 3
  .line 1
    invoke-virtual { p0 }, Landroid/widget/FrameLayout;->getChildCount()I
    move-result v0
    if-nez v0, :L0
    const/4 v0, 0
    return v0
  :L0
  .line 2
    invoke-virtual { p0 }, Landroid/widget/FrameLayout;->getVerticalFadingEdgeLength()I
    move-result v0
  .line 3
    invoke-virtual { p0 }, Landroid/widget/FrameLayout;->getScrollY()I
    move-result v1
    if-ge v1, v0, :L1
    int-to-float v1, v1
    int-to-float v0, v0
    div-float/2addr v1, v0
    return v1
  :L1
    const/high16 v0, 16256
    return v0
.end method

.method public h(Landroid/view/View;Landroid/view/View;II)V
  .registers 6
  .line 1
    iget-object v0, p0, Landroidx/core/widget/NestedScrollView;->x:Landroidx/core/view/p;
    invoke-virtual { v0, p1, p2, p3, p4 }, Landroidx/core/view/p;->c(Landroid/view/View;Landroid/view/View;II)V
    const/4 p1, 2
  .line 2
    invoke-virtual { p0, p1, p4 }, Landroidx/core/widget/NestedScrollView;->P(II)Z
    return-void
.end method

.method public hasNestedScrollingParent()Z
  .registers 2
    const/4 v0, 0
  .line 1
    invoke-virtual { p0, v0 }, Landroidx/core/widget/NestedScrollView;->u(I)Z
    move-result v0
    return v0
.end method

.method public i(Landroid/view/View;I)V
  .registers 4
  .line 1
    iget-object v0, p0, Landroidx/core/widget/NestedScrollView;->x:Landroidx/core/view/p;
    invoke-virtual { v0, p1, p2 }, Landroidx/core/view/p;->d(Landroid/view/View;I)V
  .line 2
    invoke-virtual { p0, p2 }, Landroidx/core/widget/NestedScrollView;->Q(I)V
    return-void
.end method

.method public isNestedScrollingEnabled()Z
  .registers 2
  .line 1
    iget-object v0, p0, Landroidx/core/widget/NestedScrollView;->y:Landroidx/core/view/l;
    invoke-virtual { v0 }, Landroidx/core/view/l;->l()Z
    move-result v0
    return v0
.end method

.method public j(Landroid/view/View;II[II)V
  .registers 12
    const/4 v4, 0
    move-object v0, p0
    move v1, p2
    move v2, p3
    move-object v3, p4
    move v5, p5
  .line 1
    invoke-virtual/range { v0 .. v5 }, Landroidx/core/widget/NestedScrollView;->f(II[I[II)Z
    return-void
.end method

.method public m(Landroid/view/View;IIIII[I)V
  .registers 8
  .line 1
    invoke-direct { p0, p5, p6, p7 }, Landroidx/core/widget/NestedScrollView;->C(II[I)V
    return-void
.end method

.method protected measureChild(Landroid/view/View;II)V
  .registers 6
  .line 1
    invoke-virtual { p1 }, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    move-result-object p3
  .line 2
    invoke-virtual { p0 }, Landroid/widget/FrameLayout;->getPaddingLeft()I
    move-result v0
  .line 3
    invoke-virtual { p0 }, Landroid/widget/FrameLayout;->getPaddingRight()I
    move-result v1
    add-int/2addr v0, v1
    iget p3, p3, Landroid/view/ViewGroup$LayoutParams;->width:I
  .line 4
    invoke-static { p2, v0, p3 }, Landroid/widget/FrameLayout;->getChildMeasureSpec(III)I
    move-result p2
    const/4 p3, 0
  .line 5
    invoke-static { p3, p3 }, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I
    move-result p3
  .line 6
    invoke-virtual { p1, p2, p3 }, Landroid/view/View;->measure(II)V
    return-void
.end method

.method protected measureChildWithMargins(Landroid/view/View;IIII)V
  .registers 7
  .line 1
    invoke-virtual { p1 }, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    move-result-object p4
    check-cast p4, Landroid/view/ViewGroup$MarginLayoutParams;
  .line 2
    invoke-virtual { p0 }, Landroid/widget/FrameLayout;->getPaddingLeft()I
    move-result p5
    invoke-virtual { p0 }, Landroid/widget/FrameLayout;->getPaddingRight()I
    move-result v0
    add-int/2addr p5, v0
    iget v0, p4, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I
    add-int/2addr p5, v0
    iget v0, p4, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I
    add-int/2addr p5, v0
    add-int/2addr p5, p3
    iget p3, p4, Landroid/view/ViewGroup$MarginLayoutParams;->width:I
  .line 3
    invoke-static { p2, p5, p3 }, Landroid/widget/FrameLayout;->getChildMeasureSpec(III)I
    move-result p2
  .line 4
    iget p3, p4, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I
    iget p4, p4, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I
    add-int/2addr p3, p4
    const/4 p4, 0
    invoke-static { p3, p4 }, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I
    move-result p3
  .line 5
    invoke-virtual { p1, p2, p3 }, Landroid/view/View;->measure(II)V
    return-void
.end method

.method public n(Landroid/view/View;IIIII)V
  .registers 7
    const/4 p1, 0
  .line 1
    invoke-direct { p0, p5, p6, p1 }, Landroidx/core/widget/NestedScrollView;->C(II[I)V
    return-void
.end method

.method public o(Landroid/view/View;Landroid/view/View;II)Z
  .registers 5
    and-int/lit8 p1, p3, 2
    if-eqz p1, :L0
    const/4 p1, 1
    goto :L1
  :L0
    const/4 p1, 0
  :L1
    return p1
.end method

.method public onAttachedToWindow()V
  .registers 2
  .line 1
    invoke-super { p0 }, Landroid/widget/FrameLayout;->onAttachedToWindow()V
    const/4 v0, 0
  .line 2
    iput-boolean v0, p0, Landroidx/core/widget/NestedScrollView;->i:Z
    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
  .registers 5
  .line 1
    invoke-virtual { p1 }, Landroid/view/MotionEvent;->getSource()I
    move-result v0
    and-int/lit8 v0, v0, 2
    const/4 v1, 0
    if-eqz v0, :L4
  .line 2
    invoke-virtual { p1 }, Landroid/view/MotionEvent;->getAction()I
    move-result v0
    const/16 v2, 8
    if-eq v0, v2, :L0
    goto :L4
  :L0
  .line 3
    iget-boolean v0, p0, Landroidx/core/widget/NestedScrollView;->k:Z
    if-nez v0, :L4
    const/16 v0, 9
  .line 4
    invoke-virtual { p1, v0 }, Landroid/view/MotionEvent;->getAxisValue(I)F
    move-result p1
    const/4 v0, 0
    cmpl-float v0, p1, v0
    if-eqz v0, :L4
  .line 5
    invoke-direct { p0 }, Landroidx/core/widget/NestedScrollView;->getVerticalScrollFactorCompat()F
    move-result v0
    mul-float p1, p1, v0
    float-to-int p1, p1
  .line 6
    invoke-virtual { p0 }, Landroidx/core/widget/NestedScrollView;->getScrollRange()I
    move-result v0
  .line 7
    invoke-virtual { p0 }, Landroid/widget/FrameLayout;->getScrollY()I
    move-result v2
    sub-int p1, v2, p1
    if-gez p1, :L1
    const/4 v0, 0
    goto :L3
  :L1
    if-le p1, v0, :L2
    goto :L3
  :L2
    move v0, p1
  :L3
    if-eq v0, v2, :L4
  .line 8
    invoke-virtual { p0 }, Landroid/widget/FrameLayout;->getScrollX()I
    move-result p1
    invoke-super { p0, p1, v0 }, Landroid/widget/FrameLayout;->scrollTo(II)V
    const/4 p1, 1
    return p1
  :L4
    return v1
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
  .registers 13
  .line 1
    invoke-virtual { p1 }, Landroid/view/MotionEvent;->getAction()I
    move-result v0
    const/4 v1, 2
    const/4 v2, 1
    if-ne v0, v1, :L0
  .line 2
    iget-boolean v3, p0, Landroidx/core/widget/NestedScrollView;->k:Z
    if-eqz v3, :L0
    return v2
  :L0
    and-int/lit16 v0, v0, 255
    const/4 v3, 0
    if-eqz v0, :L7
    const/4 v4, -1
    if-eq v0, v2, :L5
    if-eq v0, v1, :L2
    const/4 v1, 3
    if-eq v0, v1, :L5
    const/4 v1, 6
    if-eq v0, v1, :L1
    goto/16 :L9
  :L1
  .line 3
    invoke-direct { p0, p1 }, Landroidx/core/widget/NestedScrollView;->D(Landroid/view/MotionEvent;)V
    goto/16 :L9
  :L2
  .line 4
    iget v0, p0, Landroidx/core/widget/NestedScrollView;->r:I
    if-ne v0, v4, :L3
    goto/16 :L9
  :L3
  .line 5
    invoke-virtual { p1, v0 }, Landroid/view/MotionEvent;->findPointerIndex(I)I
    move-result v5
    if-ne v5, v4, :L4
  .line 6
    new-instance p1, Ljava/lang/StringBuilder;
    invoke-direct { p1 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "Invalid pointerId="
    invoke-virtual { p1, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { p1, v0 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    const-string v0, " in onInterceptTouchEvent"
    invoke-virtual { p1, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { p1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    goto/16 :L9
  :L4
  .line 7
    invoke-virtual { p1, v5 }, Landroid/view/MotionEvent;->getY(I)F
    move-result v0
    float-to-int v0, v0
  .line 8
    iget v4, p0, Landroidx/core/widget/NestedScrollView;->g:I
    sub-int v4, v0, v4
    invoke-static { v4 }, Ljava/lang/Math;->abs(I)I
    move-result v4
  .line 9
    iget v5, p0, Landroidx/core/widget/NestedScrollView;->o:I
    if-le v4, v5, :L9
  .line 10
    invoke-virtual { p0 }, Landroidx/core/widget/NestedScrollView;->getNestedScrollAxes()I
    move-result v4
    and-int/2addr v1, v4
    if-nez v1, :L9
  .line 11
    iput-boolean v2, p0, Landroidx/core/widget/NestedScrollView;->k:Z
  .line 12
    iput v0, p0, Landroidx/core/widget/NestedScrollView;->g:I
  .line 13
    invoke-direct { p0 }, Landroidx/core/widget/NestedScrollView;->y()V
  .line 14
    iget-object v0, p0, Landroidx/core/widget/NestedScrollView;->l:Landroid/view/VelocityTracker;
    invoke-virtual { v0, p1 }, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V
  .line 15
    iput v3, p0, Landroidx/core/widget/NestedScrollView;->u:I
  .line 16
    invoke-virtual { p0 }, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;
    move-result-object p1
    if-eqz p1, :L9
  .line 17
    invoke-interface { p1, v2 }, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V
    goto :L9
  :L5
  .line 18
    iput-boolean v3, p0, Landroidx/core/widget/NestedScrollView;->k:Z
  .line 19
    iput v4, p0, Landroidx/core/widget/NestedScrollView;->r:I
  .line 20
    invoke-direct { p0 }, Landroidx/core/widget/NestedScrollView;->G()V
  .line 21
    iget-object v4, p0, Landroidx/core/widget/NestedScrollView;->d:Landroid/widget/OverScroller;
    invoke-virtual { p0 }, Landroid/widget/FrameLayout;->getScrollX()I
    move-result v5
    invoke-virtual { p0 }, Landroid/widget/FrameLayout;->getScrollY()I
    move-result v6
    const/4 v7, 0
    const/4 v8, 0
    const/4 v9, 0
    invoke-virtual { p0 }, Landroidx/core/widget/NestedScrollView;->getScrollRange()I
    move-result v10
    invoke-virtual/range { v4 .. v10 }, Landroid/widget/OverScroller;->springBack(IIIIII)Z
    move-result p1
    if-eqz p1, :L6
  .line 22
    invoke-static { p0 }, Landroidx/core/view/v;->f0(Landroid/view/View;)V
  :L6
  .line 23
    invoke-virtual { p0, v3 }, Landroidx/core/widget/NestedScrollView;->Q(I)V
    goto :L9
  :L7
  .line 24
    invoke-virtual { p1 }, Landroid/view/MotionEvent;->getY()F
    move-result v0
    float-to-int v0, v0
  .line 25
    invoke-virtual { p1 }, Landroid/view/MotionEvent;->getX()F
    move-result v4
    float-to-int v4, v4
    invoke-direct { p0, v4, v0 }, Landroidx/core/widget/NestedScrollView;->v(II)Z
    move-result v4
    if-nez v4, :L8
  .line 26
    iput-boolean v3, p0, Landroidx/core/widget/NestedScrollView;->k:Z
  .line 27
    invoke-direct { p0 }, Landroidx/core/widget/NestedScrollView;->G()V
    goto :L9
  :L8
  .line 28
    iput v0, p0, Landroidx/core/widget/NestedScrollView;->g:I
  .line 29
    invoke-virtual { p1, v3 }, Landroid/view/MotionEvent;->getPointerId(I)I
    move-result v0
    iput v0, p0, Landroidx/core/widget/NestedScrollView;->r:I
  .line 30
    invoke-direct { p0 }, Landroidx/core/widget/NestedScrollView;->w()V
  .line 31
    iget-object v0, p0, Landroidx/core/widget/NestedScrollView;->l:Landroid/view/VelocityTracker;
    invoke-virtual { v0, p1 }, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V
  .line 32
    iget-object p1, p0, Landroidx/core/widget/NestedScrollView;->d:Landroid/widget/OverScroller;
    invoke-virtual { p1 }, Landroid/widget/OverScroller;->computeScrollOffset()Z
  .line 33
    iget-object p1, p0, Landroidx/core/widget/NestedScrollView;->d:Landroid/widget/OverScroller;
    invoke-virtual { p1 }, Landroid/widget/OverScroller;->isFinished()Z
    move-result p1
    xor-int/2addr p1, v2
    iput-boolean p1, p0, Landroidx/core/widget/NestedScrollView;->k:Z
  .line 34
    invoke-virtual { p0, v1, v3 }, Landroidx/core/widget/NestedScrollView;->P(II)Z
  :L9
  .line 35
    iget-boolean p1, p0, Landroidx/core/widget/NestedScrollView;->k:Z
    return p1
.end method

.method protected onLayout(ZIIII)V
  .registers 7
  .line 1
    invoke-super/range { p0 .. p5 }, Landroid/widget/FrameLayout;->onLayout(ZIIII)V
    const/4 p1, 0
  .line 2
    iput-boolean p1, p0, Landroidx/core/widget/NestedScrollView;->h:Z
  .line 3
    iget-object p2, p0, Landroidx/core/widget/NestedScrollView;->j:Landroid/view/View;
    if-eqz p2, :L0
    invoke-static { p2, p0 }, Landroidx/core/widget/NestedScrollView;->A(Landroid/view/View;Landroid/view/View;)Z
    move-result p2
    if-eqz p2, :L0
  .line 4
    iget-object p2, p0, Landroidx/core/widget/NestedScrollView;->j:Landroid/view/View;
    invoke-direct { p0, p2 }, Landroidx/core/widget/NestedScrollView;->J(Landroid/view/View;)V
  :L0
    const/4 p2, 0
  .line 5
    iput-object p2, p0, Landroidx/core/widget/NestedScrollView;->j:Landroid/view/View;
  .line 6
    iget-boolean p4, p0, Landroidx/core/widget/NestedScrollView;->i:Z
    if-nez p4, :L3
  .line 7
    iget-object p4, p0, Landroidx/core/widget/NestedScrollView;->w:Landroidx/core/widget/NestedScrollView$c;
    if-eqz p4, :L1
  .line 8
    invoke-virtual { p0 }, Landroid/widget/FrameLayout;->getScrollX()I
    move-result p4
    iget-object v0, p0, Landroidx/core/widget/NestedScrollView;->w:Landroidx/core/widget/NestedScrollView$c;
    iget v0, v0, Landroidx/core/widget/NestedScrollView$c;->b:I
    invoke-virtual { p0, p4, v0 }, Landroidx/core/widget/NestedScrollView;->scrollTo(II)V
  .line 9
    iput-object p2, p0, Landroidx/core/widget/NestedScrollView;->w:Landroidx/core/widget/NestedScrollView$c;
  :L1
  .line 10
    invoke-virtual { p0 }, Landroid/widget/FrameLayout;->getChildCount()I
    move-result p2
    if-lez p2, :L2
  .line 11
    invoke-virtual { p0, p1 }, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;
    move-result-object p1
  .line 12
    invoke-virtual { p1 }, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    move-result-object p2
    check-cast p2, Landroid/widget/FrameLayout$LayoutParams;
  .line 13
    invoke-virtual { p1 }, Landroid/view/View;->getMeasuredHeight()I
    move-result p1
    iget p4, p2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I
    add-int/2addr p1, p4
    iget p2, p2, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I
    add-int/2addr p1, p2
  :L2
    sub-int/2addr p5, p3
  .line 14
    invoke-virtual { p0 }, Landroid/widget/FrameLayout;->getPaddingTop()I
    move-result p2
    sub-int/2addr p5, p2
    invoke-virtual { p0 }, Landroid/widget/FrameLayout;->getPaddingBottom()I
    move-result p2
    sub-int/2addr p5, p2
  .line 15
    invoke-virtual { p0 }, Landroid/widget/FrameLayout;->getScrollY()I
    move-result p2
  .line 16
    invoke-static { p2, p5, p1 }, Landroidx/core/widget/NestedScrollView;->d(III)I
    move-result p1
    if-eq p1, p2, :L3
  .line 17
    invoke-virtual { p0 }, Landroid/widget/FrameLayout;->getScrollX()I
    move-result p2
    invoke-virtual { p0, p2, p1 }, Landroidx/core/widget/NestedScrollView;->scrollTo(II)V
  :L3
  .line 18
    invoke-virtual { p0 }, Landroid/widget/FrameLayout;->getScrollX()I
    move-result p1
    invoke-virtual { p0 }, Landroid/widget/FrameLayout;->getScrollY()I
    move-result p2
    invoke-virtual { p0, p1, p2 }, Landroidx/core/widget/NestedScrollView;->scrollTo(II)V
    const/4 p1, 1
  .line 19
    iput-boolean p1, p0, Landroidx/core/widget/NestedScrollView;->i:Z
    return-void
.end method

.method protected onMeasure(II)V
  .registers 7
  .line 1
    invoke-super { p0, p1, p2 }, Landroid/widget/FrameLayout;->onMeasure(II)V
  .line 2
    iget-boolean v0, p0, Landroidx/core/widget/NestedScrollView;->m:Z
    if-nez v0, :L0
    return-void
  :L0
  .line 3
    invoke-static { p2 }, Landroid/view/View$MeasureSpec;->getMode(I)I
    move-result p2
    if-nez p2, :L1
    return-void
  :L1
  .line 4
    invoke-virtual { p0 }, Landroid/widget/FrameLayout;->getChildCount()I
    move-result p2
    if-lez p2, :L2
    const/4 p2, 0
  .line 5
    invoke-virtual { p0, p2 }, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;
    move-result-object p2
  .line 6
    invoke-virtual { p2 }, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    move-result-object v0
    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;
  .line 7
    invoke-virtual { p2 }, Landroid/view/View;->getMeasuredHeight()I
    move-result v1
  .line 8
    invoke-virtual { p0 }, Landroid/widget/FrameLayout;->getMeasuredHeight()I
    move-result v2
  .line 9
    invoke-virtual { p0 }, Landroid/widget/FrameLayout;->getPaddingTop()I
    move-result v3
    sub-int/2addr v2, v3
  .line 10
    invoke-virtual { p0 }, Landroid/widget/FrameLayout;->getPaddingBottom()I
    move-result v3
    sub-int/2addr v2, v3
    iget v3, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I
    sub-int/2addr v2, v3
    iget v3, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I
    sub-int/2addr v2, v3
    if-ge v1, v2, :L2
  .line 11
    invoke-virtual { p0 }, Landroid/widget/FrameLayout;->getPaddingLeft()I
    move-result v1
    invoke-virtual { p0 }, Landroid/widget/FrameLayout;->getPaddingRight()I
    move-result v3
    add-int/2addr v1, v3
    iget v3, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I
    add-int/2addr v1, v3
    iget v3, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I
    add-int/2addr v1, v3
    iget v0, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I
  .line 12
    invoke-static { p1, v1, v0 }, Landroid/widget/FrameLayout;->getChildMeasureSpec(III)I
    move-result p1
    const/high16 v0, 16384
  .line 13
    invoke-static { v2, v0 }, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I
    move-result v0
  .line 14
    invoke-virtual { p2, p1, v0 }, Landroid/view/View;->measure(II)V
  :L2
    return-void
.end method

.method public onNestedFling(Landroid/view/View;FFZ)Z
  .registers 5
    if-nez p4, :L0
    const/4 p1, 0
    const/4 p2, 1
  .line 1
    invoke-virtual { p0, p1, p3, p2 }, Landroidx/core/widget/NestedScrollView;->dispatchNestedFling(FFZ)Z
    float-to-int p1, p3
  .line 2
    invoke-virtual { p0, p1 }, Landroidx/core/widget/NestedScrollView;->s(I)V
    return p2
  :L0
    const/4 p1, 0
    return p1
.end method

.method public onNestedPreFling(Landroid/view/View;FF)Z
  .registers 4
  .line 1
    invoke-virtual { p0, p2, p3 }, Landroidx/core/widget/NestedScrollView;->dispatchNestedPreFling(FF)Z
    move-result p1
    return p1
.end method

.method public onNestedPreScroll(Landroid/view/View;II[I)V
  .registers 11
    const/4 v5, 0
    move-object v0, p0
    move-object v1, p1
    move v2, p2
    move v3, p3
    move-object v4, p4
  .line 1
    invoke-virtual/range { v0 .. v5 }, Landroidx/core/widget/NestedScrollView;->j(Landroid/view/View;II[II)V
    return-void
.end method

.method public onNestedScroll(Landroid/view/View;IIII)V
  .registers 6
    const/4 p1, 0
    const/4 p2, 0
  .line 1
    invoke-direct { p0, p5, p1, p2 }, Landroidx/core/widget/NestedScrollView;->C(II[I)V
    return-void
.end method

.method public onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V
  .registers 5
    const/4 v0, 0
  .line 1
    invoke-virtual { p0, p1, p2, p3, v0 }, Landroidx/core/widget/NestedScrollView;->h(Landroid/view/View;Landroid/view/View;II)V
    return-void
.end method

.method protected onOverScrolled(IIZZ)V
  .registers 5
  .line 1
    invoke-super { p0, p1, p2 }, Landroid/widget/FrameLayout;->scrollTo(II)V
    return-void
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
  .registers 6
    const/4 v0, 2
    if-ne p1, v0, :L0
    const/16 p1, 130
    goto :L1
  :L0
    const/4 v0, 1
    if-ne p1, v0, :L1
    const/16 p1, 33
  :L1
    if-nez p2, :L2
  .line 1
    invoke-static { }, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;
    move-result-object v0
    const/4 v1, 0
    invoke-virtual { v0, p0, v1, p1 }, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;
    move-result-object v0
    goto :L3
  :L2
  .line 2
    invoke-static { }, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;
    move-result-object v0
    invoke-virtual { v0, p0, p2, p1 }, Landroid/view/FocusFinder;->findNextFocusFromRect(Landroid/view/ViewGroup;Landroid/graphics/Rect;I)Landroid/view/View;
    move-result-object v0
  :L3
    const/4 v1, 0
    if-nez v0, :L4
    return v1
  :L4
  .line 3
    invoke-direct { p0, v0 }, Landroidx/core/widget/NestedScrollView;->z(Landroid/view/View;)Z
    move-result v2
    if-eqz v2, :L5
    return v1
  :L5
  .line 4
    invoke-virtual { v0, p1, p2 }, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z
    move-result p1
    return p1
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
  .registers 3
  .line 1
    instance-of v0, p1, Landroidx/core/widget/NestedScrollView$c;
    if-nez v0, :L0
  .line 2
    invoke-super { p0, p1 }, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V
    return-void
  :L0
  .line 3
    check-cast p1, Landroidx/core/widget/NestedScrollView$c;
  .line 4
    invoke-virtual { p1 }, Landroid/view/View$BaseSavedState;->getSuperState()Landroid/os/Parcelable;
    move-result-object v0
    invoke-super { p0, v0 }, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V
  .line 5
    iput-object p1, p0, Landroidx/core/widget/NestedScrollView;->w:Landroidx/core/widget/NestedScrollView$c;
  .line 6
    invoke-virtual { p0 }, Landroidx/core/widget/NestedScrollView;->requestLayout()V
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
  .registers 3
  .line 1
    invoke-super { p0 }, Landroid/widget/FrameLayout;->onSaveInstanceState()Landroid/os/Parcelable;
    move-result-object v0
  .line 2
    new-instance v1, Landroidx/core/widget/NestedScrollView$c;
    invoke-direct { v1, v0 }, Landroidx/core/widget/NestedScrollView$c;-><init>(Landroid/os/Parcelable;)V
  .line 3
    invoke-virtual { p0 }, Landroid/widget/FrameLayout;->getScrollY()I
    move-result v0
    iput v0, v1, Landroidx/core/widget/NestedScrollView$c;->b:I
    return-object v1
.end method

.method protected onScrollChanged(IIII)V
  .registers 11
  .line 1
    invoke-super { p0, p1, p2, p3, p4 }, Landroid/widget/FrameLayout;->onScrollChanged(IIII)V
  .line 2
    iget-object v0, p0, Landroidx/core/widget/NestedScrollView;->A:Landroidx/core/widget/NestedScrollView$b;
    if-eqz v0, :L0
    move-object v1, p0
    move v2, p1
    move v3, p2
    move v4, p3
    move v5, p4
  .line 3
    invoke-interface/range { v0 .. v5 }, Landroidx/core/widget/NestedScrollView$b;->a(Landroidx/core/widget/NestedScrollView;IIII)V
  :L0
    return-void
.end method

.method protected onSizeChanged(IIII)V
  .registers 5
  .line 1
    invoke-super { p0, p1, p2, p3, p4 }, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V
  .line 2
    invoke-virtual { p0 }, Landroid/widget/FrameLayout;->findFocus()Landroid/view/View;
    move-result-object p1
    if-eqz p1, :L1
    if-ne p0, p1, :L0
    goto :L1
  :L0
    const/4 p2, 0
  .line 3
    invoke-direct { p0, p1, p2, p4 }, Landroidx/core/widget/NestedScrollView;->B(Landroid/view/View;II)Z
    move-result p2
    if-eqz p2, :L1
  .line 4
    iget-object p2, p0, Landroidx/core/widget/NestedScrollView;->c:Landroid/graphics/Rect;
    invoke-virtual { p1, p2 }, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V
  .line 5
    iget-object p2, p0, Landroidx/core/widget/NestedScrollView;->c:Landroid/graphics/Rect;
    invoke-virtual { p0, p1, p2 }, Landroid/widget/FrameLayout;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V
  .line 6
    iget-object p1, p0, Landroidx/core/widget/NestedScrollView;->c:Landroid/graphics/Rect;
    invoke-virtual { p0, p1 }, Landroidx/core/widget/NestedScrollView;->e(Landroid/graphics/Rect;)I
    move-result p1
  .line 7
    invoke-direct { p0, p1 }, Landroidx/core/widget/NestedScrollView;->k(I)V
  :L1
    return-void
.end method

.method public onStartNestedScroll(Landroid/view/View;Landroid/view/View;I)Z
  .registers 5
    const/4 v0, 0
  .line 1
    invoke-virtual { p0, p1, p2, p3, v0 }, Landroidx/core/widget/NestedScrollView;->o(Landroid/view/View;Landroid/view/View;II)Z
    move-result p1
    return p1
.end method

.method public onStopNestedScroll(Landroid/view/View;)V
  .registers 3
    const/4 v0, 0
  .line 1
    invoke-virtual { p0, p1, v0 }, Landroidx/core/widget/NestedScrollView;->i(Landroid/view/View;I)V
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
  .registers 25
    move-object/from16 v10, p0
    move-object/from16 v11, p1
  .line 1
    invoke-direct/range { p0 .. p0 }, Landroidx/core/widget/NestedScrollView;->y()V
  .line 2
    invoke-virtual/range { p1 .. p1 }, Landroid/view/MotionEvent;->getActionMasked()I
    move-result v0
    const/4 v12, 0
    if-nez v0, :L0
  .line 3
    iput v12, v10, Landroidx/core/widget/NestedScrollView;->u:I
  :L0
  .line 4
    invoke-static/range { p1 .. p1 }, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;
    move-result-object v13
  .line 5
    iget v1, v10, Landroidx/core/widget/NestedScrollView;->u:I
    int-to-float v1, v1
    const/4 v2, 0
    invoke-virtual { v13, v2, v1 }, Landroid/view/MotionEvent;->offsetLocation(FF)V
    const/4 v1, 2
    const/4 v14, 1
    if-eqz v0, :L21
    const/4 v3, -1
    if-eq v0, v14, :L18
    if-eq v0, v1, :L5
    const/4 v1, 3
    if-eq v0, v1, :L3
    const/4 v1, 5
    if-eq v0, v1, :L2
    const/4 v1, 6
    if-eq v0, v1, :L1
    goto/16 :L25
  :L1
  .line 6
    invoke-direct/range { p0 .. p1 }, Landroidx/core/widget/NestedScrollView;->D(Landroid/view/MotionEvent;)V
  .line 7
    iget v0, v10, Landroidx/core/widget/NestedScrollView;->r:I
    invoke-virtual { v11, v0 }, Landroid/view/MotionEvent;->findPointerIndex(I)I
    move-result v0
    invoke-virtual { v11, v0 }, Landroid/view/MotionEvent;->getY(I)F
    move-result v0
    float-to-int v0, v0
    iput v0, v10, Landroidx/core/widget/NestedScrollView;->g:I
    goto/16 :L25
  :L2
  .line 8
    invoke-virtual/range { p1 .. p1 }, Landroid/view/MotionEvent;->getActionIndex()I
    move-result v0
  .line 9
    invoke-virtual { v11, v0 }, Landroid/view/MotionEvent;->getY(I)F
    move-result v1
    float-to-int v1, v1
    iput v1, v10, Landroidx/core/widget/NestedScrollView;->g:I
  .line 10
    invoke-virtual { v11, v0 }, Landroid/view/MotionEvent;->getPointerId(I)I
    move-result v0
    iput v0, v10, Landroidx/core/widget/NestedScrollView;->r:I
    goto/16 :L25
  :L3
  .line 11
    iget-boolean v0, v10, Landroidx/core/widget/NestedScrollView;->k:Z
    if-eqz v0, :L4
    invoke-virtual/range { p0 .. p0 }, Landroid/widget/FrameLayout;->getChildCount()I
    move-result v0
    if-lez v0, :L4
  .line 12
    iget-object v15, v10, Landroidx/core/widget/NestedScrollView;->d:Landroid/widget/OverScroller;
    invoke-virtual/range { p0 .. p0 }, Landroid/widget/FrameLayout;->getScrollX()I
    move-result v16
    invoke-virtual/range { p0 .. p0 }, Landroid/widget/FrameLayout;->getScrollY()I
    move-result v17
    const/16 v18, 0
    const/16 v19, 0
    const/16 v20, 0
  .line 13
    invoke-virtual/range { p0 .. p0 }, Landroidx/core/widget/NestedScrollView;->getScrollRange()I
    move-result v21
  .line 14
    invoke-virtual/range { v15 .. v21 }, Landroid/widget/OverScroller;->springBack(IIIIII)Z
    move-result v0
    if-eqz v0, :L4
  .line 15
    invoke-static/range { p0 .. p0 }, Landroidx/core/view/v;->f0(Landroid/view/View;)V
  :L4
  .line 16
    iput v3, v10, Landroidx/core/widget/NestedScrollView;->r:I
  .line 17
    invoke-direct/range { p0 .. p0 }, Landroidx/core/widget/NestedScrollView;->l()V
    goto/16 :L25
  :L5
  .line 18
    iget v0, v10, Landroidx/core/widget/NestedScrollView;->r:I
    invoke-virtual { v11, v0 }, Landroid/view/MotionEvent;->findPointerIndex(I)I
    move-result v15
    if-ne v15, v3, :L6
  .line 19
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "Invalid pointerId="
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget v1, v10, Landroidx/core/widget/NestedScrollView;->r:I
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    const-string v1, " in onTouchEvent"
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    goto/16 :L25
  :L6
  .line 20
    invoke-virtual { v11, v15 }, Landroid/view/MotionEvent;->getY(I)F
    move-result v0
    float-to-int v6, v0
  .line 21
    iget v0, v10, Landroidx/core/widget/NestedScrollView;->g:I
    sub-int/2addr v0, v6
  .line 22
    iget-boolean v1, v10, Landroidx/core/widget/NestedScrollView;->k:Z
    if-nez v1, :L9
    invoke-static { v0 }, Ljava/lang/Math;->abs(I)I
    move-result v1
    iget v2, v10, Landroidx/core/widget/NestedScrollView;->o:I
    if-le v1, v2, :L9
  .line 23
    invoke-virtual/range { p0 .. p0 }, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;
    move-result-object v1
    if-eqz v1, :L7
  .line 24
    invoke-interface { v1, v14 }, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V
  :L7
  .line 25
    iput-boolean v14, v10, Landroidx/core/widget/NestedScrollView;->k:Z
    if-lez v0, :L8
  .line 26
    iget v1, v10, Landroidx/core/widget/NestedScrollView;->o:I
    sub-int/2addr v0, v1
    goto :L9
  :L8
  .line 27
    iget v1, v10, Landroidx/core/widget/NestedScrollView;->o:I
    add-int/2addr v0, v1
  :L9
    move v7, v0
  .line 28
    iget-boolean v0, v10, Landroidx/core/widget/NestedScrollView;->k:Z
    if-eqz v0, :L25
    const/4 v1, 0
  .line 29
    iget-object v3, v10, Landroidx/core/widget/NestedScrollView;->t:[I
    iget-object v4, v10, Landroidx/core/widget/NestedScrollView;->s:[I
    const/4 v5, 0
    move-object/from16 v0, p0
    move v2, v7
    invoke-virtual/range { v0 .. v5 }, Landroidx/core/widget/NestedScrollView;->f(II[I[II)Z
    move-result v0
    if-eqz v0, :L10
  .line 30
    iget-object v0, v10, Landroidx/core/widget/NestedScrollView;->t:[I
    aget v0, v0, v14
    sub-int/2addr v7, v0
  .line 31
    iget v0, v10, Landroidx/core/widget/NestedScrollView;->u:I
    iget-object v1, v10, Landroidx/core/widget/NestedScrollView;->s:[I
    aget v1, v1, v14
    add-int/2addr v0, v1
    iput v0, v10, Landroidx/core/widget/NestedScrollView;->u:I
  :L10
    move/from16 v16, v7
  .line 32
    iget-object v0, v10, Landroidx/core/widget/NestedScrollView;->s:[I
    aget v0, v0, v14
    sub-int/2addr v6, v0
    iput v6, v10, Landroidx/core/widget/NestedScrollView;->g:I
  .line 33
    invoke-virtual/range { p0 .. p0 }, Landroid/widget/FrameLayout;->getScrollY()I
    move-result v17
  .line 34
    invoke-virtual/range { p0 .. p0 }, Landroidx/core/widget/NestedScrollView;->getScrollRange()I
    move-result v9
  .line 35
    invoke-virtual/range { p0 .. p0 }, Landroid/widget/FrameLayout;->getOverScrollMode()I
    move-result v0
    if-eqz v0, :L12
    if-ne v0, v14, :L11
    if-lez v9, :L11
    goto :L12
  :L11
    const/16 v18, 0
    goto :L13
  :L12
    const/16 v18, 1
  :L13
    const/4 v1, 0
    const/4 v3, 0
  .line 36
    invoke-virtual/range { p0 .. p0 }, Landroid/widget/FrameLayout;->getScrollY()I
    move-result v4
    const/4 v5, 0
    const/4 v7, 0
    const/4 v8, 0
    const/16 v19, 1
    move-object/from16 v0, p0
    move/from16 v2, v16
    move v6, v9
    move/from16 v22, v9
    move/from16 v9, v19
    invoke-virtual/range { v0 .. v9 }, Landroidx/core/widget/NestedScrollView;->E(IIIIIIIIZ)Z
    move-result v0
    if-eqz v0, :L14
  .line 37
    invoke-virtual { v10, v12 }, Landroidx/core/widget/NestedScrollView;->u(I)Z
    move-result v0
    if-nez v0, :L14
  .line 38
    iget-object v0, v10, Landroidx/core/widget/NestedScrollView;->l:Landroid/view/VelocityTracker;
    invoke-virtual { v0 }, Landroid/view/VelocityTracker;->clear()V
  :L14
  .line 39
    invoke-virtual/range { p0 .. p0 }, Landroid/widget/FrameLayout;->getScrollY()I
    move-result v0
    sub-int v2, v0, v17
    sub-int v4, v16, v2
  .line 40
    iget-object v7, v10, Landroidx/core/widget/NestedScrollView;->t:[I
    aput v12, v7, v14
    const/4 v1, 0
    const/4 v3, 0
  .line 41
    iget-object v5, v10, Landroidx/core/widget/NestedScrollView;->s:[I
    const/4 v6, 0
    move-object/from16 v0, p0
    invoke-virtual/range { v0 .. v7 }, Landroidx/core/widget/NestedScrollView;->g(IIII[II[I)V
  .line 42
    iget v0, v10, Landroidx/core/widget/NestedScrollView;->g:I
    iget-object v1, v10, Landroidx/core/widget/NestedScrollView;->s:[I
    aget v2, v1, v14
    sub-int/2addr v0, v2
    iput v0, v10, Landroidx/core/widget/NestedScrollView;->g:I
  .line 43
    iget v0, v10, Landroidx/core/widget/NestedScrollView;->u:I
    aget v1, v1, v14
    add-int/2addr v0, v1
    iput v0, v10, Landroidx/core/widget/NestedScrollView;->u:I
    if-eqz v18, :L25
  .line 44
    iget-object v0, v10, Landroidx/core/widget/NestedScrollView;->t:[I
    aget v0, v0, v14
    sub-int v0, v16, v0
  .line 45
    invoke-direct/range { p0 .. p0 }, Landroidx/core/widget/NestedScrollView;->p()V
    add-int v1, v17, v0
    if-gez v1, :L15
  .line 46
    iget-object v1, v10, Landroidx/core/widget/NestedScrollView;->e:Landroid/widget/EdgeEffect;
    int-to-float v0, v0
    invoke-virtual/range { p0 .. p0 }, Landroid/widget/FrameLayout;->getHeight()I
    move-result v2
    int-to-float v2, v2
    div-float/2addr v0, v2
  .line 47
    invoke-virtual { v11, v15 }, Landroid/view/MotionEvent;->getX(I)F
    move-result v2
    invoke-virtual/range { p0 .. p0 }, Landroid/widget/FrameLayout;->getWidth()I
    move-result v3
    int-to-float v3, v3
    div-float/2addr v2, v3
  .line 48
    invoke-static { v1, v0, v2 }, Landroidx/core/widget/d;->a(Landroid/widget/EdgeEffect;FF)V
  .line 49
    iget-object v0, v10, Landroidx/core/widget/NestedScrollView;->f:Landroid/widget/EdgeEffect;
    invoke-virtual { v0 }, Landroid/widget/EdgeEffect;->isFinished()Z
    move-result v0
    if-nez v0, :L16
  .line 50
    iget-object v0, v10, Landroidx/core/widget/NestedScrollView;->f:Landroid/widget/EdgeEffect;
    invoke-virtual { v0 }, Landroid/widget/EdgeEffect;->onRelease()V
    goto :L16
  :L15
    move/from16 v2, v22
    if-le v1, v2, :L16
  .line 51
    iget-object v1, v10, Landroidx/core/widget/NestedScrollView;->f:Landroid/widget/EdgeEffect;
    int-to-float v0, v0
    invoke-virtual/range { p0 .. p0 }, Landroid/widget/FrameLayout;->getHeight()I
    move-result v2
    int-to-float v2, v2
    div-float/2addr v0, v2
    const/high16 v2, 16256
  .line 52
    invoke-virtual { v11, v15 }, Landroid/view/MotionEvent;->getX(I)F
    move-result v3
  .line 53
    invoke-virtual/range { p0 .. p0 }, Landroid/widget/FrameLayout;->getWidth()I
    move-result v4
    int-to-float v4, v4
    div-float/2addr v3, v4
    sub-float/2addr v2, v3
  .line 54
    invoke-static { v1, v0, v2 }, Landroidx/core/widget/d;->a(Landroid/widget/EdgeEffect;FF)V
  .line 55
    iget-object v0, v10, Landroidx/core/widget/NestedScrollView;->e:Landroid/widget/EdgeEffect;
    invoke-virtual { v0 }, Landroid/widget/EdgeEffect;->isFinished()Z
    move-result v0
    if-nez v0, :L16
  .line 56
    iget-object v0, v10, Landroidx/core/widget/NestedScrollView;->e:Landroid/widget/EdgeEffect;
    invoke-virtual { v0 }, Landroid/widget/EdgeEffect;->onRelease()V
  :L16
  .line 57
    iget-object v0, v10, Landroidx/core/widget/NestedScrollView;->e:Landroid/widget/EdgeEffect;
    if-eqz v0, :L25
  .line 58
    invoke-virtual { v0 }, Landroid/widget/EdgeEffect;->isFinished()Z
    move-result v0
    if-eqz v0, :L17
    iget-object v0, v10, Landroidx/core/widget/NestedScrollView;->f:Landroid/widget/EdgeEffect;
    invoke-virtual { v0 }, Landroid/widget/EdgeEffect;->isFinished()Z
    move-result v0
    if-nez v0, :L25
  :L17
  .line 59
    invoke-static/range { p0 .. p0 }, Landroidx/core/view/v;->f0(Landroid/view/View;)V
    goto/16 :L25
  :L18
  .line 60
    iget-object v0, v10, Landroidx/core/widget/NestedScrollView;->l:Landroid/view/VelocityTracker;
    const/16 v1, 1000
  .line 61
    iget v4, v10, Landroidx/core/widget/NestedScrollView;->q:I
    int-to-float v4, v4
    invoke-virtual { v0, v1, v4 }, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V
  .line 62
    iget v1, v10, Landroidx/core/widget/NestedScrollView;->r:I
    invoke-virtual { v0, v1 }, Landroid/view/VelocityTracker;->getYVelocity(I)F
    move-result v0
    float-to-int v0, v0
  .line 63
    invoke-static { v0 }, Ljava/lang/Math;->abs(I)I
    move-result v1
    iget v4, v10, Landroidx/core/widget/NestedScrollView;->p:I
    if-lt v1, v4, :L19
    neg-int v0, v0
    int-to-float v1, v0
  .line 64
    invoke-virtual { v10, v2, v1 }, Landroidx/core/widget/NestedScrollView;->dispatchNestedPreFling(FF)Z
    move-result v4
    if-nez v4, :L20
  .line 65
    invoke-virtual { v10, v2, v1, v14 }, Landroidx/core/widget/NestedScrollView;->dispatchNestedFling(FFZ)Z
  .line 66
    invoke-virtual { v10, v0 }, Landroidx/core/widget/NestedScrollView;->s(I)V
    goto :L20
  :L19
  .line 67
    iget-object v15, v10, Landroidx/core/widget/NestedScrollView;->d:Landroid/widget/OverScroller;
    invoke-virtual/range { p0 .. p0 }, Landroid/widget/FrameLayout;->getScrollX()I
    move-result v16
    invoke-virtual/range { p0 .. p0 }, Landroid/widget/FrameLayout;->getScrollY()I
    move-result v17
    const/16 v18, 0
    const/16 v19, 0
    const/16 v20, 0
  .line 68
    invoke-virtual/range { p0 .. p0 }, Landroidx/core/widget/NestedScrollView;->getScrollRange()I
    move-result v21
  .line 69
    invoke-virtual/range { v15 .. v21 }, Landroid/widget/OverScroller;->springBack(IIIIII)Z
    move-result v0
    if-eqz v0, :L20
  .line 70
    invoke-static/range { p0 .. p0 }, Landroidx/core/view/v;->f0(Landroid/view/View;)V
  :L20
  .line 71
    iput v3, v10, Landroidx/core/widget/NestedScrollView;->r:I
  .line 72
    invoke-direct/range { p0 .. p0 }, Landroidx/core/widget/NestedScrollView;->l()V
    goto :L25
  :L21
  .line 73
    invoke-virtual/range { p0 .. p0 }, Landroid/widget/FrameLayout;->getChildCount()I
    move-result v0
    if-nez v0, :L22
    return v12
  :L22
  .line 74
    iget-object v0, v10, Landroidx/core/widget/NestedScrollView;->d:Landroid/widget/OverScroller;
    invoke-virtual { v0 }, Landroid/widget/OverScroller;->isFinished()Z
    move-result v0
    xor-int/2addr v0, v14
    iput-boolean v0, v10, Landroidx/core/widget/NestedScrollView;->k:Z
    if-eqz v0, :L23
  .line 75
    invoke-virtual/range { p0 .. p0 }, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;
    move-result-object v0
    if-eqz v0, :L23
  .line 76
    invoke-interface { v0, v14 }, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V
  :L23
  .line 77
    iget-object v0, v10, Landroidx/core/widget/NestedScrollView;->d:Landroid/widget/OverScroller;
    invoke-virtual { v0 }, Landroid/widget/OverScroller;->isFinished()Z
    move-result v0
    if-nez v0, :L24
  .line 78
    invoke-direct/range { p0 .. p0 }, Landroidx/core/widget/NestedScrollView;->a()V
  :L24
  .line 79
    invoke-virtual/range { p1 .. p1 }, Landroid/view/MotionEvent;->getY()F
    move-result v0
    float-to-int v0, v0
    iput v0, v10, Landroidx/core/widget/NestedScrollView;->g:I
  .line 80
    invoke-virtual { v11, v12 }, Landroid/view/MotionEvent;->getPointerId(I)I
    move-result v0
    iput v0, v10, Landroidx/core/widget/NestedScrollView;->r:I
  .line 81
    invoke-virtual { v10, v1, v12 }, Landroidx/core/widget/NestedScrollView;->P(II)Z
  :L25
  .line 82
    iget-object v0, v10, Landroidx/core/widget/NestedScrollView;->l:Landroid/view/VelocityTracker;
    if-eqz v0, :L26
  .line 83
    invoke-virtual { v0, v13 }, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V
  :L26
  .line 84
    invoke-virtual { v13 }, Landroid/view/MotionEvent;->recycle()V
    return v14
.end method

.method public q(Landroid/view/KeyEvent;)Z
  .registers 7
  .line 1
    iget-object v0, p0, Landroidx/core/widget/NestedScrollView;->c:Landroid/graphics/Rect;
    invoke-virtual { v0 }, Landroid/graphics/Rect;->setEmpty()V
  .line 2
    invoke-direct { p0 }, Landroidx/core/widget/NestedScrollView;->c()Z
    move-result v0
    const/4 v1, 0
    const/16 v2, 130
    if-nez v0, :L2
  .line 3
    invoke-virtual { p0 }, Landroid/widget/FrameLayout;->isFocused()Z
    move-result v0
    if-eqz v0, :L1
    invoke-virtual { p1 }, Landroid/view/KeyEvent;->getKeyCode()I
    move-result p1
    const/4 v0, 4
    if-eq p1, v0, :L1
  .line 4
    invoke-virtual { p0 }, Landroid/widget/FrameLayout;->findFocus()Landroid/view/View;
    move-result-object p1
    if-ne p1, p0, :L0
    const/4 p1, 0
  :L0
  .line 5
    invoke-static { }, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;
    move-result-object v0
    invoke-virtual { v0, p0, p1, v2 }, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;
    move-result-object p1
    if-eqz p1, :L1
    if-eq p1, p0, :L1
  .line 6
    invoke-virtual { p1, v2 }, Landroid/view/View;->requestFocus(I)Z
    move-result p1
    if-eqz p1, :L1
    const/4 v1, 1
  :L1
    return v1
  :L2
  .line 7
    invoke-virtual { p1 }, Landroid/view/KeyEvent;->getAction()I
    move-result v0
    if-nez v0, :L9
  .line 8
    invoke-virtual { p1 }, Landroid/view/KeyEvent;->getKeyCode()I
    move-result v0
    const/16 v3, 19
    const/16 v4, 33
    if-eq v0, v3, :L7
    const/16 v3, 20
    if-eq v0, v3, :L5
    const/16 v3, 62
    if-eq v0, v3, :L3
    goto :L9
  :L3
  .line 9
    invoke-virtual { p1 }, Landroid/view/KeyEvent;->isShiftPressed()Z
    move-result p1
    if-eqz p1, :L4
    const/16 v2, 33
  :L4
    invoke-virtual { p0, v2 }, Landroidx/core/widget/NestedScrollView;->F(I)Z
    goto :L9
  :L5
  .line 10
    invoke-virtual { p1 }, Landroid/view/KeyEvent;->isAltPressed()Z
    move-result p1
    if-nez p1, :L6
  .line 11
    invoke-virtual { p0, v2 }, Landroidx/core/widget/NestedScrollView;->b(I)Z
    move-result v1
    goto :L9
  :L6
  .line 12
    invoke-virtual { p0, v2 }, Landroidx/core/widget/NestedScrollView;->t(I)Z
    move-result v1
    goto :L9
  :L7
  .line 13
    invoke-virtual { p1 }, Landroid/view/KeyEvent;->isAltPressed()Z
    move-result p1
    if-nez p1, :L8
  .line 14
    invoke-virtual { p0, v4 }, Landroidx/core/widget/NestedScrollView;->b(I)Z
    move-result v1
    goto :L9
  :L8
  .line 15
    invoke-virtual { p0, v4 }, Landroidx/core/widget/NestedScrollView;->t(I)Z
    move-result v1
  :L9
    return v1
.end method

.method public requestChildFocus(Landroid/view/View;Landroid/view/View;)V
  .registers 4
  .line 1
    iget-boolean v0, p0, Landroidx/core/widget/NestedScrollView;->h:Z
    if-nez v0, :L0
  .line 2
    invoke-direct { p0, p2 }, Landroidx/core/widget/NestedScrollView;->J(Landroid/view/View;)V
    goto :L1
  :L0
  .line 3
    iput-object p2, p0, Landroidx/core/widget/NestedScrollView;->j:Landroid/view/View;
  :L1
  .line 4
    invoke-super { p0, p1, p2 }, Landroid/widget/FrameLayout;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    return-void
.end method

.method public requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
  .registers 6
  .line 1
    invoke-virtual { p1 }, Landroid/view/View;->getLeft()I
    move-result v0
    invoke-virtual { p1 }, Landroid/view/View;->getScrollX()I
    move-result v1
    sub-int/2addr v0, v1
  .line 2
    invoke-virtual { p1 }, Landroid/view/View;->getTop()I
    move-result v1
    invoke-virtual { p1 }, Landroid/view/View;->getScrollY()I
    move-result p1
    sub-int/2addr v1, p1
  .line 3
    invoke-virtual { p2, v0, v1 }, Landroid/graphics/Rect;->offset(II)V
  .line 4
    invoke-direct { p0, p2, p3 }, Landroidx/core/widget/NestedScrollView;->K(Landroid/graphics/Rect;Z)Z
    move-result p1
    return p1
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
  .registers 2
    if-eqz p1, :L0
  .line 1
    invoke-direct { p0 }, Landroidx/core/widget/NestedScrollView;->G()V
  :L0
  .line 2
    invoke-super { p0, p1 }, Landroid/widget/FrameLayout;->requestDisallowInterceptTouchEvent(Z)V
    return-void
.end method

.method public requestLayout()V
  .registers 2
    const/4 v0, 1
  .line 1
    iput-boolean v0, p0, Landroidx/core/widget/NestedScrollView;->h:Z
  .line 2
    invoke-super { p0 }, Landroid/widget/FrameLayout;->requestLayout()V
    return-void
.end method

.method public s(I)V
  .registers 14
  .line 1
    invoke-virtual { p0 }, Landroid/widget/FrameLayout;->getChildCount()I
    move-result v0
    if-lez v0, :L0
  .line 2
    iget-object v1, p0, Landroidx/core/widget/NestedScrollView;->d:Landroid/widget/OverScroller;
    invoke-virtual { p0 }, Landroid/widget/FrameLayout;->getScrollX()I
    move-result v2
    invoke-virtual { p0 }, Landroid/widget/FrameLayout;->getScrollY()I
    move-result v3
    const/4 v4, 0
    const/4 v6, 0
    const/4 v7, 0
    const/high16 v8, -32768
    const v9, 2147483647
    const/4 v10, 0
    const/4 v11, 0
    move v5, p1
    invoke-virtual/range { v1 .. v11 }, Landroid/widget/OverScroller;->fling(IIIIIIIIII)V
    const/4 p1, 1
  .line 3
    invoke-direct { p0, p1 }, Landroidx/core/widget/NestedScrollView;->H(Z)V
  :L0
    return-void
.end method

.method public scrollTo(II)V
  .registers 9
  .line 1
    invoke-virtual { p0 }, Landroid/widget/FrameLayout;->getChildCount()I
    move-result v0
    if-lez v0, :L1
    const/4 v0, 0
  .line 2
    invoke-virtual { p0, v0 }, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;
    move-result-object v0
  .line 3
    invoke-virtual { v0 }, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    move-result-object v1
    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;
  .line 4
    invoke-virtual { p0 }, Landroid/widget/FrameLayout;->getWidth()I
    move-result v2
    invoke-virtual { p0 }, Landroid/widget/FrameLayout;->getPaddingLeft()I
    move-result v3
    sub-int/2addr v2, v3
    invoke-virtual { p0 }, Landroid/widget/FrameLayout;->getPaddingRight()I
    move-result v3
    sub-int/2addr v2, v3
  .line 5
    invoke-virtual { v0 }, Landroid/view/View;->getWidth()I
    move-result v3
    iget v4, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I
    add-int/2addr v3, v4
    iget v4, v1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I
    add-int/2addr v3, v4
  .line 6
    invoke-virtual { p0 }, Landroid/widget/FrameLayout;->getHeight()I
    move-result v4
    invoke-virtual { p0 }, Landroid/widget/FrameLayout;->getPaddingTop()I
    move-result v5
    sub-int/2addr v4, v5
    invoke-virtual { p0 }, Landroid/widget/FrameLayout;->getPaddingBottom()I
    move-result v5
    sub-int/2addr v4, v5
  .line 7
    invoke-virtual { v0 }, Landroid/view/View;->getHeight()I
    move-result v0
    iget v5, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I
    add-int/2addr v0, v5
    iget v1, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I
    add-int/2addr v0, v1
  .line 8
    invoke-static { p1, v2, v3 }, Landroidx/core/widget/NestedScrollView;->d(III)I
    move-result p1
  .line 9
    invoke-static { p2, v4, v0 }, Landroidx/core/widget/NestedScrollView;->d(III)I
    move-result p2
  .line 10
    invoke-virtual { p0 }, Landroid/widget/FrameLayout;->getScrollX()I
    move-result v0
    if-ne p1, v0, :L0
    invoke-virtual { p0 }, Landroid/widget/FrameLayout;->getScrollY()I
    move-result v0
    if-eq p2, v0, :L1
  :L0
  .line 11
    invoke-super { p0, p1, p2 }, Landroid/widget/FrameLayout;->scrollTo(II)V
  :L1
    return-void
.end method

.method public setFillViewport(Z)V
  .registers 3
  .line 1
    iget-boolean v0, p0, Landroidx/core/widget/NestedScrollView;->m:Z
    if-eq p1, v0, :L0
  .line 2
    iput-boolean p1, p0, Landroidx/core/widget/NestedScrollView;->m:Z
  .line 3
    invoke-virtual { p0 }, Landroidx/core/widget/NestedScrollView;->requestLayout()V
  :L0
    return-void
.end method

.method public setNestedScrollingEnabled(Z)V
  .registers 3
  .line 1
    iget-object v0, p0, Landroidx/core/widget/NestedScrollView;->y:Landroidx/core/view/l;
    invoke-virtual { v0, p1 }, Landroidx/core/view/l;->m(Z)V
    return-void
.end method

.method public setOnScrollChangeListener(Landroidx/core/widget/NestedScrollView$b;)V
  .registers 2
  .line 1
    iput-object p1, p0, Landroidx/core/widget/NestedScrollView;->A:Landroidx/core/widget/NestedScrollView$b;
    return-void
.end method

.method public setSmoothScrollingEnabled(Z)V
  .registers 2
  .line 1
    iput-boolean p1, p0, Landroidx/core/widget/NestedScrollView;->n:Z
    return-void
.end method

.method public shouldDelayChildPressedState()Z
  .registers 2
    const/4 v0, 1
    return v0
.end method

.method public startNestedScroll(I)Z
  .registers 3
    const/4 v0, 0
  .line 1
    invoke-virtual { p0, p1, v0 }, Landroidx/core/widget/NestedScrollView;->P(II)Z
    move-result p1
    return p1
.end method

.method public stopNestedScroll()V
  .registers 2
    const/4 v0, 0
  .line 1
    invoke-virtual { p0, v0 }, Landroidx/core/widget/NestedScrollView;->Q(I)V
    return-void
.end method

.method public t(I)Z
  .registers 7
    const/4 v0, 1
    const/4 v1, 0
    const/16 v2, 130
    if-ne p1, v2, :L0
    const/4 v2, 1
    goto :L1
  :L0
    const/4 v2, 0
  :L1
  .line 1
    invoke-virtual { p0 }, Landroid/widget/FrameLayout;->getHeight()I
    move-result v3
  .line 2
    iget-object v4, p0, Landroidx/core/widget/NestedScrollView;->c:Landroid/graphics/Rect;
    iput v1, v4, Landroid/graphics/Rect;->top:I
  .line 3
    iput v3, v4, Landroid/graphics/Rect;->bottom:I
    if-eqz v2, :L2
  .line 4
    invoke-virtual { p0 }, Landroid/widget/FrameLayout;->getChildCount()I
    move-result v1
    if-lez v1, :L2
    sub-int/2addr v1, v0
  .line 5
    invoke-virtual { p0, v1 }, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;
    move-result-object v0
  .line 6
    invoke-virtual { v0 }, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    move-result-object v1
    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;
  .line 7
    iget-object v2, p0, Landroidx/core/widget/NestedScrollView;->c:Landroid/graphics/Rect;
    invoke-virtual { v0 }, Landroid/view/View;->getBottom()I
    move-result v0
    iget v1, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I
    add-int/2addr v0, v1
    invoke-virtual { p0 }, Landroid/widget/FrameLayout;->getPaddingBottom()I
    move-result v1
    add-int/2addr v0, v1
    iput v0, v2, Landroid/graphics/Rect;->bottom:I
  .line 8
    iget-object v0, p0, Landroidx/core/widget/NestedScrollView;->c:Landroid/graphics/Rect;
    iget v1, v0, Landroid/graphics/Rect;->bottom:I
    sub-int/2addr v1, v3
    iput v1, v0, Landroid/graphics/Rect;->top:I
  :L2
  .line 9
    iget-object v0, p0, Landroidx/core/widget/NestedScrollView;->c:Landroid/graphics/Rect;
    iget v1, v0, Landroid/graphics/Rect;->top:I
    iget v0, v0, Landroid/graphics/Rect;->bottom:I
    invoke-direct { p0, p1, v1, v0 }, Landroidx/core/widget/NestedScrollView;->I(III)Z
    move-result p1
    return p1
.end method

.method public u(I)Z
  .registers 3
  .line 1
    iget-object v0, p0, Landroidx/core/widget/NestedScrollView;->y:Landroidx/core/view/l;
    invoke-virtual { v0, p1 }, Landroidx/core/view/l;->k(I)Z
    move-result p1
    return p1
.end method
