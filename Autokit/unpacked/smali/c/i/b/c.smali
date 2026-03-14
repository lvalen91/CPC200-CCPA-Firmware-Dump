.class public Lc/i/b/c;
.super Ljava/lang/Object;
.source "SourceFile"

.annotation system Ldalvik/annotation/MemberClasses;
  value = {
    Lc/i/b/c$c;
  }
.end annotation

.field private final static w:Landroid/view/animation/Interpolator;

.field private a:I

.field private b:I

.field private c:I

.field private d:[F

.field private e:[F

.field private f:[F

.field private g:[F

.field private h:[I

.field private i:[I

.field private j:[I

.field private k:I

.field private l:Landroid/view/VelocityTracker;

.field private m:F

.field private n:F

.field private o:I

.field private p:I

.field private q:Landroid/widget/OverScroller;

.field private final r:Lc/i/b/c$c;

.field private s:Landroid/view/View;

.field private t:Z

.field private final u:Landroid/view/ViewGroup;

.field private final v:Ljava/lang/Runnable;

.method static constructor <clinit>()V
  .registers 3
  .line 1
    new-instance v0, Lc/i/b/c$a;
    invoke-direct { v0 }, Lc/i/b/c$a;-><init>()V
    sput-object v0, Lc/i/b/c;->w:Landroid/view/animation/Interpolator;
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;Lc/i/b/c$c;)V
  .registers 5
  .line 1
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    const/4 v0, -1
  .line 2
    iput v0, p0, Lc/i/b/c;->c:I
  .line 3
    new-instance v0, Lc/i/b/c$b;
    invoke-direct { v0, p0 }, Lc/i/b/c$b;-><init>(Lc/i/b/c;)V
    iput-object v0, p0, Lc/i/b/c;->v:Ljava/lang/Runnable;
    if-eqz p2, :L1
    if-eqz p3, :L0
  .line 4
    iput-object p2, p0, Lc/i/b/c;->u:Landroid/view/ViewGroup;
  .line 5
    iput-object p3, p0, Lc/i/b/c;->r:Lc/i/b/c$c;
  .line 6
    invoke-static { p1 }, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;
    move-result-object p2
  .line 7
    invoke-virtual { p1 }, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
    move-result-object p3
    invoke-virtual { p3 }, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;
    move-result-object p3
    iget p3, p3, Landroid/util/DisplayMetrics;->density:F
    const/high16 v0, 16800
    mul-float p3, p3, v0
    const/high16 v0, 16128
    add-float/2addr p3, v0
    float-to-int p3, p3
  .line 8
    iput p3, p0, Lc/i/b/c;->o:I
  .line 9
    invoke-virtual { p2 }, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I
    move-result p3
    iput p3, p0, Lc/i/b/c;->b:I
  .line 10
    invoke-virtual { p2 }, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I
    move-result p3
    int-to-float p3, p3
    iput p3, p0, Lc/i/b/c;->m:F
  .line 11
    invoke-virtual { p2 }, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I
    move-result p2
    int-to-float p2, p2
    iput p2, p0, Lc/i/b/c;->n:F
  .line 12
    new-instance p2, Landroid/widget/OverScroller;
    sget-object p3, Lc/i/b/c;->w:Landroid/view/animation/Interpolator;
    invoke-direct { p2, p1, p3 }, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V
    iput-object p2, p0, Lc/i/b/c;->q:Landroid/widget/OverScroller;
    return-void
  :L0
  .line 13
    new-instance p1, Ljava/lang/IllegalArgumentException;
    const-string p2, "Callback may not be null"
    invoke-direct { p1, p2 }, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
    throw p1
  :L1
  .line 14
    new-instance p1, Ljava/lang/IllegalArgumentException;
    const-string p2, "Parent view may not be null"
    invoke-direct { p1, p2 }, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
    throw p1
.end method

.method private A()V
  .registers 5
  .line 1
    iget-object v0, p0, Lc/i/b/c;->l:Landroid/view/VelocityTracker;
    iget v1, p0, Lc/i/b/c;->m:F
    const/16 v2, 1000
    invoke-virtual { v0, v2, v1 }, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V
  .line 2
    iget-object v0, p0, Lc/i/b/c;->l:Landroid/view/VelocityTracker;
    iget v1, p0, Lc/i/b/c;->c:I
  .line 3
    invoke-virtual { v0, v1 }, Landroid/view/VelocityTracker;->getXVelocity(I)F
    move-result v0
    iget v1, p0, Lc/i/b/c;->n:F
    iget v2, p0, Lc/i/b/c;->m:F
  .line 4
    invoke-direct { p0, v0, v1, v2 }, Lc/i/b/c;->e(FFF)F
    move-result v0
  .line 5
    iget-object v1, p0, Lc/i/b/c;->l:Landroid/view/VelocityTracker;
    iget v2, p0, Lc/i/b/c;->c:I
  .line 6
    invoke-virtual { v1, v2 }, Landroid/view/VelocityTracker;->getYVelocity(I)F
    move-result v1
    iget v2, p0, Lc/i/b/c;->n:F
    iget v3, p0, Lc/i/b/c;->m:F
  .line 7
    invoke-direct { p0, v1, v2, v3 }, Lc/i/b/c;->e(FFF)F
    move-result v1
  .line 8
    invoke-direct { p0, v0, v1 }, Lc/i/b/c;->n(FF)V
    return-void
.end method

.method private B(FFI)V
  .registers 6
    const/4 v0, 1
  .line 1
    invoke-direct { p0, p1, p2, p3, v0 }, Lc/i/b/c;->c(FFII)Z
    move-result v1
    if-eqz v1, :L0
    goto :L1
  :L0
    const/4 v0, 0
  :L1
    const/4 v1, 4
  .line 2
    invoke-direct { p0, p2, p1, p3, v1 }, Lc/i/b/c;->c(FFII)Z
    move-result v1
    if-eqz v1, :L2
    or-int/lit8 v0, v0, 4
  :L2
    const/4 v1, 2
  .line 3
    invoke-direct { p0, p1, p2, p3, v1 }, Lc/i/b/c;->c(FFII)Z
    move-result v1
    if-eqz v1, :L3
    or-int/lit8 v0, v0, 2
  :L3
    const/16 v1, 8
  .line 4
    invoke-direct { p0, p2, p1, p3, v1 }, Lc/i/b/c;->c(FFII)Z
    move-result p1
    if-eqz p1, :L4
    or-int/lit8 v0, v0, 8
  :L4
    if-eqz v0, :L5
  .line 5
    iget-object p1, p0, Lc/i/b/c;->i:[I
    aget p2, p1, p3
    or-int/2addr p2, v0
    aput p2, p1, p3
  .line 6
    iget-object p1, p0, Lc/i/b/c;->r:Lc/i/b/c$c;
    invoke-virtual { p1, v0, p3 }, Lc/i/b/c$c;->f(II)V
  :L5
    return-void
.end method

.method private C(FFI)V
  .registers 6
  .line 1
    invoke-direct { p0, p3 }, Lc/i/b/c;->q(I)V
  .line 2
    iget-object v0, p0, Lc/i/b/c;->d:[F
    iget-object v1, p0, Lc/i/b/c;->f:[F
    aput p1, v1, p3
    aput p1, v0, p3
  .line 3
    iget-object v0, p0, Lc/i/b/c;->e:[F
    iget-object v1, p0, Lc/i/b/c;->g:[F
    aput p2, v1, p3
    aput p2, v0, p3
  .line 4
    iget-object v0, p0, Lc/i/b/c;->h:[I
    float-to-int p1, p1
    float-to-int p2, p2
    invoke-direct { p0, p1, p2 }, Lc/i/b/c;->t(II)I
    move-result p1
    aput p1, v0, p3
  .line 5
    iget p1, p0, Lc/i/b/c;->k:I
    const/4 p2, 1
    shl-int/2addr p2, p3
    or-int/2addr p1, p2
    iput p1, p0, Lc/i/b/c;->k:I
    return-void
.end method

.method private D(Landroid/view/MotionEvent;)V
  .registers 8
  .line 1
    invoke-virtual { p1 }, Landroid/view/MotionEvent;->getPointerCount()I
    move-result v0
    const/4 v1, 0
  :L0
    if-ge v1, v0, :L3
  .line 2
    invoke-virtual { p1, v1 }, Landroid/view/MotionEvent;->getPointerId(I)I
    move-result v2
  .line 3
    invoke-direct { p0, v2 }, Lc/i/b/c;->x(I)Z
    move-result v3
    if-nez v3, :L1
    goto :L2
  :L1
  .line 4
    invoke-virtual { p1, v1 }, Landroid/view/MotionEvent;->getX(I)F
    move-result v3
  .line 5
    invoke-virtual { p1, v1 }, Landroid/view/MotionEvent;->getY(I)F
    move-result v4
  .line 6
    iget-object v5, p0, Lc/i/b/c;->f:[F
    aput v3, v5, v2
  .line 7
    iget-object v3, p0, Lc/i/b/c;->g:[F
    aput v4, v3, v2
  :L2
    add-int/lit8 v1, v1, 1
    goto :L0
  :L3
    return-void
.end method

.method private c(FFII)Z
  .registers 8
  .line 1
    invoke-static { p1 }, Ljava/lang/Math;->abs(F)F
    move-result p1
  .line 2
    invoke-static { p2 }, Ljava/lang/Math;->abs(F)F
    move-result p2
  .line 3
    iget-object v0, p0, Lc/i/b/c;->h:[I
    aget v0, v0, p3
    and-int/2addr v0, p4
    const/4 v1, 0
    if-ne v0, p4, :L2
    iget v0, p0, Lc/i/b/c;->p:I
    and-int/2addr v0, p4
    if-eqz v0, :L2
    iget-object v0, p0, Lc/i/b/c;->j:[I
    aget v0, v0, p3
    and-int/2addr v0, p4
    if-eq v0, p4, :L2
    iget-object v0, p0, Lc/i/b/c;->i:[I
    aget v0, v0, p3
    and-int/2addr v0, p4
    if-eq v0, p4, :L2
    iget v0, p0, Lc/i/b/c;->b:I
    int-to-float v2, v0
    cmpg-float v2, p1, v2
    if-gtz v2, :L0
    int-to-float v0, v0
    cmpg-float v0, p2, v0
    if-gtz v0, :L0
    goto :L2
  :L0
    const/high16 v0, 16128
    mul-float p2, p2, v0
    cmpg-float p2, p1, p2
    if-gez p2, :L1
  .line 4
    iget-object p2, p0, Lc/i/b/c;->r:Lc/i/b/c$c;
    invoke-virtual { p2, p4 }, Lc/i/b/c$c;->g(I)Z
    move-result p2
    if-eqz p2, :L1
  .line 5
    iget-object p1, p0, Lc/i/b/c;->j:[I
    aget p2, p1, p3
    or-int/2addr p2, p4
    aput p2, p1, p3
    return v1
  :L1
  .line 6
    iget-object p2, p0, Lc/i/b/c;->i:[I
    aget p2, p2, p3
    and-int/2addr p2, p4
    if-nez p2, :L2
    iget p2, p0, Lc/i/b/c;->b:I
    int-to-float p2, p2
    cmpl-float p1, p1, p2
    if-lez p1, :L2
    const/4 v1, 1
  :L2
    return v1
.end method

.method private d(Landroid/view/View;FF)Z
  .registers 8
    const/4 v0, 0
    if-nez p1, :L0
    return v0
  :L0
  .line 1
    iget-object v1, p0, Lc/i/b/c;->r:Lc/i/b/c$c;
    invoke-virtual { v1, p1 }, Lc/i/b/c$c;->d(Landroid/view/View;)I
    move-result v1
    const/4 v2, 1
    if-lez v1, :L1
    const/4 v1, 1
    goto :L2
  :L1
    const/4 v1, 0
  :L2
  .line 2
    iget-object v3, p0, Lc/i/b/c;->r:Lc/i/b/c$c;
    invoke-virtual { v3, p1 }, Lc/i/b/c$c;->e(Landroid/view/View;)I
    move-result p1
    if-lez p1, :L3
    const/4 p1, 1
    goto :L4
  :L3
    const/4 p1, 0
  :L4
    if-eqz v1, :L6
    if-eqz p1, :L6
    mul-float p2, p2, p2
    mul-float p3, p3, p3
    add-float/2addr p2, p3
  .line 3
    iget p1, p0, Lc/i/b/c;->b:I
    mul-int p1, p1, p1
    int-to-float p1, p1
    cmpl-float p1, p2, p1
    if-lez p1, :L5
    const/4 v0, 1
  :L5
    return v0
  :L6
    if-eqz v1, :L8
  .line 4
    invoke-static { p2 }, Ljava/lang/Math;->abs(F)F
    move-result p1
    iget p2, p0, Lc/i/b/c;->b:I
    int-to-float p2, p2
    cmpl-float p1, p1, p2
    if-lez p1, :L7
    const/4 v0, 1
  :L7
    return v0
  :L8
    if-eqz p1, :L9
  .line 5
    invoke-static { p3 }, Ljava/lang/Math;->abs(F)F
    move-result p1
    iget p2, p0, Lc/i/b/c;->b:I
    int-to-float p2, p2
    cmpl-float p1, p1, p2
    if-lez p1, :L9
    const/4 v0, 1
  :L9
    return v0
.end method

.method private e(FFF)F
  .registers 6
  .line 1
    invoke-static { p1 }, Ljava/lang/Math;->abs(F)F
    move-result v0
    const/4 v1, 0
    cmpg-float p2, v0, p2
    if-gez p2, :L0
    return v1
  :L0
    cmpl-float p2, v0, p3
    if-lez p2, :L3
    cmpl-float p1, p1, v1
    if-lez p1, :L1
    goto :L2
  :L1
    neg-float p3, p3
  :L2
    return p3
  :L3
    return p1
.end method

.method private f(III)I
  .registers 5
  .line 1
    invoke-static { p1 }, Ljava/lang/Math;->abs(I)I
    move-result v0
    if-ge v0, p2, :L0
    const/4 p1, 0
    return p1
  :L0
    if-le v0, p3, :L3
    if-lez p1, :L1
    goto :L2
  :L1
    neg-int p3, p3
  :L2
    return p3
  :L3
    return p1
.end method

.method private g()V
  .registers 3
  .line 1
    iget-object v0, p0, Lc/i/b/c;->d:[F
    if-nez v0, :L0
    return-void
  :L0
    const/4 v1, 0
  .line 2
    invoke-static { v0, v1 }, Ljava/util/Arrays;->fill([FF)V
  .line 3
    iget-object v0, p0, Lc/i/b/c;->e:[F
    invoke-static { v0, v1 }, Ljava/util/Arrays;->fill([FF)V
  .line 4
    iget-object v0, p0, Lc/i/b/c;->f:[F
    invoke-static { v0, v1 }, Ljava/util/Arrays;->fill([FF)V
  .line 5
    iget-object v0, p0, Lc/i/b/c;->g:[F
    invoke-static { v0, v1 }, Ljava/util/Arrays;->fill([FF)V
  .line 6
    iget-object v0, p0, Lc/i/b/c;->h:[I
    const/4 v1, 0
    invoke-static { v0, v1 }, Ljava/util/Arrays;->fill([II)V
  .line 7
    iget-object v0, p0, Lc/i/b/c;->i:[I
    invoke-static { v0, v1 }, Ljava/util/Arrays;->fill([II)V
  .line 8
    iget-object v0, p0, Lc/i/b/c;->j:[I
    invoke-static { v0, v1 }, Ljava/util/Arrays;->fill([II)V
  .line 9
    iput v1, p0, Lc/i/b/c;->k:I
    return-void
.end method

.method private h(I)V
  .registers 4
  .line 1
    iget-object v0, p0, Lc/i/b/c;->d:[F
    if-eqz v0, :L1
    invoke-virtual { p0, p1 }, Lc/i/b/c;->w(I)Z
    move-result v0
    if-nez v0, :L0
    goto :L1
  :L0
  .line 2
    iget-object v0, p0, Lc/i/b/c;->d:[F
    const/4 v1, 0
    aput v1, v0, p1
  .line 3
    iget-object v0, p0, Lc/i/b/c;->e:[F
    aput v1, v0, p1
  .line 4
    iget-object v0, p0, Lc/i/b/c;->f:[F
    aput v1, v0, p1
  .line 5
    iget-object v0, p0, Lc/i/b/c;->g:[F
    aput v1, v0, p1
  .line 6
    iget-object v0, p0, Lc/i/b/c;->h:[I
    const/4 v1, 0
    aput v1, v0, p1
  .line 7
    iget-object v0, p0, Lc/i/b/c;->i:[I
    aput v1, v0, p1
  .line 8
    iget-object v0, p0, Lc/i/b/c;->j:[I
    aput v1, v0, p1
  .line 9
    iget v0, p0, Lc/i/b/c;->k:I
    const/4 v1, 1
    shl-int p1, v1, p1
    xor-int/lit8 p1, p1, -1
    and-int/2addr p1, v0
    iput p1, p0, Lc/i/b/c;->k:I
  :L1
    return-void
.end method

.method private i(III)I
  .registers 7
    if-nez p1, :L0
    const/4 p1, 0
    return p1
  :L0
  .line 1
    iget-object v0, p0, Lc/i/b/c;->u:Landroid/view/ViewGroup;
    invoke-virtual { v0 }, Landroid/view/ViewGroup;->getWidth()I
    move-result v0
  .line 2
    div-int/lit8 v1, v0, 2
  .line 3
    invoke-static { p1 }, Ljava/lang/Math;->abs(I)I
    move-result v2
    int-to-float v2, v2
    int-to-float v0, v0
    div-float/2addr v2, v0
    const/high16 v0, 16256
    invoke-static { v0, v2 }, Ljava/lang/Math;->min(FF)F
    move-result v2
    int-to-float v1, v1
  .line 4
    invoke-direct { p0, v2 }, Lc/i/b/c;->o(F)F
    move-result v2
    mul-float v2, v2, v1
    add-float/2addr v1, v2
  .line 5
    invoke-static { p2 }, Ljava/lang/Math;->abs(I)I
    move-result p2
    if-lez p2, :L1
    const/high16 p1, 17530
    int-to-float p2, p2
    div-float/2addr v1, p2
  .line 6
    invoke-static { v1 }, Ljava/lang/Math;->abs(F)F
    move-result p2
    mul-float p2, p2, p1
    invoke-static { p2 }, Ljava/lang/Math;->round(F)I
    move-result p1
    mul-int/lit8 p1, p1, 4
    goto :L2
  :L1
  .line 7
    invoke-static { p1 }, Ljava/lang/Math;->abs(I)I
    move-result p1
    int-to-float p1, p1
    int-to-float p2, p3
    div-float/2addr p1, p2
    add-float/2addr p1, v0
    const/high16 p2, 17280
    mul-float p1, p1, p2
    float-to-int p1, p1
  :L2
    const/16 p2, 600
  .line 8
    invoke-static { p1, p2 }, Ljava/lang/Math;->min(II)I
    move-result p1
    return p1
.end method

.method private j(Landroid/view/View;IIII)I
  .registers 12
  .line 1
    iget v0, p0, Lc/i/b/c;->n:F
    float-to-int v0, v0
    iget v1, p0, Lc/i/b/c;->m:F
    float-to-int v1, v1
    invoke-direct { p0, p4, v0, v1 }, Lc/i/b/c;->f(III)I
    move-result p4
  .line 2
    iget v0, p0, Lc/i/b/c;->n:F
    float-to-int v0, v0
    iget v1, p0, Lc/i/b/c;->m:F
    float-to-int v1, v1
    invoke-direct { p0, p5, v0, v1 }, Lc/i/b/c;->f(III)I
    move-result p5
  .line 3
    invoke-static { p2 }, Ljava/lang/Math;->abs(I)I
    move-result v0
  .line 4
    invoke-static { p3 }, Ljava/lang/Math;->abs(I)I
    move-result v1
  .line 5
    invoke-static { p4 }, Ljava/lang/Math;->abs(I)I
    move-result v2
  .line 6
    invoke-static { p5 }, Ljava/lang/Math;->abs(I)I
    move-result v3
    add-int v4, v2, v3
    add-int v5, v0, v1
    if-eqz p4, :L0
    int-to-float v0, v2
    int-to-float v2, v4
    goto :L1
  :L0
    int-to-float v0, v0
    int-to-float v2, v5
  :L1
    div-float/2addr v0, v2
    if-eqz p5, :L2
    int-to-float v1, v3
    int-to-float v2, v4
    goto :L3
  :L2
    int-to-float v1, v1
    int-to-float v2, v5
  :L3
    div-float/2addr v1, v2
  .line 7
    iget-object v2, p0, Lc/i/b/c;->r:Lc/i/b/c$c;
    invoke-virtual { v2, p1 }, Lc/i/b/c$c;->d(Landroid/view/View;)I
    move-result v2
    invoke-direct { p0, p2, p4, v2 }, Lc/i/b/c;->i(III)I
    move-result p2
  .line 8
    iget-object p4, p0, Lc/i/b/c;->r:Lc/i/b/c$c;
    invoke-virtual { p4, p1 }, Lc/i/b/c$c;->e(Landroid/view/View;)I
    move-result p1
    invoke-direct { p0, p3, p5, p1 }, Lc/i/b/c;->i(III)I
    move-result p1
    int-to-float p2, p2
    mul-float p2, p2, v0
    int-to-float p1, p1
    mul-float p1, p1, v1
    add-float/2addr p2, p1
    float-to-int p1, p2
    return p1
.end method

.method public static l(Landroid/view/ViewGroup;FLc/i/b/c$c;)Lc/i/b/c;
  .registers 4
  .line 1
    invoke-static { p0, p2 }, Lc/i/b/c;->m(Landroid/view/ViewGroup;Lc/i/b/c$c;)Lc/i/b/c;
    move-result-object p0
  .line 2
    iget p2, p0, Lc/i/b/c;->b:I
    int-to-float p2, p2
    const/high16 v0, 16256
    div-float/2addr v0, p1
    mul-float p2, p2, v0
    float-to-int p1, p2
    iput p1, p0, Lc/i/b/c;->b:I
    return-object p0
.end method

.method public static m(Landroid/view/ViewGroup;Lc/i/b/c$c;)Lc/i/b/c;
  .registers 4
  .line 1
    new-instance v0, Lc/i/b/c;
    invoke-virtual { p0 }, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;
    move-result-object v1
    invoke-direct { v0, v1, p0, p1 }, Lc/i/b/c;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Lc/i/b/c$c;)V
    return-object v0
.end method

.method private n(FF)V
  .registers 6
    const/4 v0, 1
  .line 1
    iput-boolean v0, p0, Lc/i/b/c;->t:Z
  .line 2
    iget-object v1, p0, Lc/i/b/c;->r:Lc/i/b/c$c;
    iget-object v2, p0, Lc/i/b/c;->s:Landroid/view/View;
    invoke-virtual { v1, v2, p1, p2 }, Lc/i/b/c$c;->l(Landroid/view/View;FF)V
    const/4 p1, 0
  .line 3
    iput-boolean p1, p0, Lc/i/b/c;->t:Z
  .line 4
    iget p2, p0, Lc/i/b/c;->a:I
    if-ne p2, v0, :L0
  .line 5
    invoke-virtual { p0, p1 }, Lc/i/b/c;->E(I)V
  :L0
    return-void
.end method

.method private o(F)F
  .registers 4
    const/high16 v0, 16128
    sub-float/2addr p1, v0
    const v0, 1055999547
    mul-float p1, p1, v0
    float-to-double v0, p1
  .line 1
    invoke-static { v0, v1 }, Ljava/lang/Math;->sin(D)D
    move-result-wide v0
    double-to-float p1, v0
    return p1
.end method

.method private p(IIII)V
  .registers 15
  .line 1
    iget-object v0, p0, Lc/i/b/c;->s:Landroid/view/View;
    invoke-virtual { v0 }, Landroid/view/View;->getLeft()I
    move-result v0
  .line 2
    iget-object v1, p0, Lc/i/b/c;->s:Landroid/view/View;
    invoke-virtual { v1 }, Landroid/view/View;->getTop()I
    move-result v1
    if-eqz p3, :L0
  .line 3
    iget-object v2, p0, Lc/i/b/c;->r:Lc/i/b/c$c;
    iget-object v3, p0, Lc/i/b/c;->s:Landroid/view/View;
    invoke-virtual { v2, v3, p1, p3 }, Lc/i/b/c$c;->a(Landroid/view/View;II)I
    move-result p1
  .line 4
    iget-object v2, p0, Lc/i/b/c;->s:Landroid/view/View;
    sub-int v3, p1, v0
    invoke-static { v2, v3 }, Landroidx/core/view/v;->Y(Landroid/view/View;I)V
  :L0
    move v6, p1
    if-eqz p4, :L1
  .line 5
    iget-object p1, p0, Lc/i/b/c;->r:Lc/i/b/c$c;
    iget-object v2, p0, Lc/i/b/c;->s:Landroid/view/View;
    invoke-virtual { p1, v2, p2, p4 }, Lc/i/b/c$c;->b(Landroid/view/View;II)I
    move-result p2
  .line 6
    iget-object p1, p0, Lc/i/b/c;->s:Landroid/view/View;
    sub-int v2, p2, v1
    invoke-static { p1, v2 }, Landroidx/core/view/v;->Z(Landroid/view/View;I)V
  :L1
    move v7, p2
    if-nez p3, :L2
    if-eqz p4, :L3
  :L2
    sub-int v8, v6, v0
    sub-int v9, v7, v1
  .line 7
    iget-object v4, p0, Lc/i/b/c;->r:Lc/i/b/c$c;
    iget-object v5, p0, Lc/i/b/c;->s:Landroid/view/View;
    invoke-virtual/range { v4 .. v9 }, Lc/i/b/c$c;->k(Landroid/view/View;IIII)V
  :L3
    return-void
.end method

.method private q(I)V
  .registers 11
  .line 1
    iget-object v0, p0, Lc/i/b/c;->d:[F
    if-eqz v0, :L0
    array-length v0, v0
    if-gt v0, p1, :L2
  :L0
    add-int/lit8 p1, p1, 1
  .line 2
    new-array v0, p1, [F
  .line 3
    new-array v1, p1, [F
  .line 4
    new-array v2, p1, [F
  .line 5
    new-array v3, p1, [F
  .line 6
    new-array v4, p1, [I
  .line 7
    new-array v5, p1, [I
  .line 8
    new-array p1, p1, [I
  .line 9
    iget-object v6, p0, Lc/i/b/c;->d:[F
    if-eqz v6, :L1
  .line 10
    array-length v7, v6
    const/4 v8, 0
    invoke-static { v6, v8, v0, v8, v7 }, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
  .line 11
    iget-object v6, p0, Lc/i/b/c;->e:[F
    array-length v7, v6
    invoke-static { v6, v8, v1, v8, v7 }, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
  .line 12
    iget-object v6, p0, Lc/i/b/c;->f:[F
    array-length v7, v6
    invoke-static { v6, v8, v2, v8, v7 }, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
  .line 13
    iget-object v6, p0, Lc/i/b/c;->g:[F
    array-length v7, v6
    invoke-static { v6, v8, v3, v8, v7 }, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
  .line 14
    iget-object v6, p0, Lc/i/b/c;->h:[I
    array-length v7, v6
    invoke-static { v6, v8, v4, v8, v7 }, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
  .line 15
    iget-object v6, p0, Lc/i/b/c;->i:[I
    array-length v7, v6
    invoke-static { v6, v8, v5, v8, v7 }, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
  .line 16
    iget-object v6, p0, Lc/i/b/c;->j:[I
    array-length v7, v6
    invoke-static { v6, v8, p1, v8, v7 }, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
  :L1
  .line 17
    iput-object v0, p0, Lc/i/b/c;->d:[F
  .line 18
    iput-object v1, p0, Lc/i/b/c;->e:[F
  .line 19
    iput-object v2, p0, Lc/i/b/c;->f:[F
  .line 20
    iput-object v3, p0, Lc/i/b/c;->g:[F
  .line 21
    iput-object v4, p0, Lc/i/b/c;->h:[I
  .line 22
    iput-object v5, p0, Lc/i/b/c;->i:[I
  .line 23
    iput-object p1, p0, Lc/i/b/c;->j:[I
  :L2
    return-void
.end method

.method private s(IIII)Z
  .registers 15
  .line 1
    iget-object v0, p0, Lc/i/b/c;->s:Landroid/view/View;
    invoke-virtual { v0 }, Landroid/view/View;->getLeft()I
    move-result v2
  .line 2
    iget-object v0, p0, Lc/i/b/c;->s:Landroid/view/View;
    invoke-virtual { v0 }, Landroid/view/View;->getTop()I
    move-result v3
    sub-int/2addr p1, v2
    sub-int/2addr p2, v3
    if-nez p1, :L0
    if-nez p2, :L0
  .line 3
    iget-object p1, p0, Lc/i/b/c;->q:Landroid/widget/OverScroller;
    invoke-virtual { p1 }, Landroid/widget/OverScroller;->abortAnimation()V
    const/4 p1, 0
  .line 4
    invoke-virtual { p0, p1 }, Lc/i/b/c;->E(I)V
    return p1
  :L0
  .line 5
    iget-object v5, p0, Lc/i/b/c;->s:Landroid/view/View;
    move-object v4, p0
    move v6, p1
    move v7, p2
    move v8, p3
    move v9, p4
    invoke-direct/range { v4 .. v9 }, Lc/i/b/c;->j(Landroid/view/View;IIII)I
    move-result v6
  .line 6
    iget-object v1, p0, Lc/i/b/c;->q:Landroid/widget/OverScroller;
    move v4, p1
    move v5, p2
    invoke-virtual/range { v1 .. v6 }, Landroid/widget/OverScroller;->startScroll(IIIII)V
    const/4 p1, 2
  .line 7
    invoke-virtual { p0, p1 }, Lc/i/b/c;->E(I)V
    const/4 p1, 1
    return p1
.end method

.method private t(II)I
  .registers 6
  .line 1
    iget-object v0, p0, Lc/i/b/c;->u:Landroid/view/ViewGroup;
    invoke-virtual { v0 }, Landroid/view/ViewGroup;->getLeft()I
    move-result v0
    iget v1, p0, Lc/i/b/c;->o:I
    add-int/2addr v0, v1
    if-ge p1, v0, :L0
    const/4 v0, 1
    goto :L1
  :L0
    const/4 v0, 0
  :L1
  .line 2
    iget-object v1, p0, Lc/i/b/c;->u:Landroid/view/ViewGroup;
    invoke-virtual { v1 }, Landroid/view/ViewGroup;->getTop()I
    move-result v1
    iget v2, p0, Lc/i/b/c;->o:I
    add-int/2addr v1, v2
    if-ge p2, v1, :L2
    or-int/lit8 v0, v0, 4
  :L2
  .line 3
    iget-object v1, p0, Lc/i/b/c;->u:Landroid/view/ViewGroup;
    invoke-virtual { v1 }, Landroid/view/ViewGroup;->getRight()I
    move-result v1
    iget v2, p0, Lc/i/b/c;->o:I
    sub-int/2addr v1, v2
    if-le p1, v1, :L3
    or-int/lit8 v0, v0, 2
  :L3
  .line 4
    iget-object p1, p0, Lc/i/b/c;->u:Landroid/view/ViewGroup;
    invoke-virtual { p1 }, Landroid/view/ViewGroup;->getBottom()I
    move-result p1
    iget v1, p0, Lc/i/b/c;->o:I
    sub-int/2addr p1, v1
    if-le p2, p1, :L4
    or-int/lit8 v0, v0, 8
  :L4
    return v0
.end method

.method private x(I)Z
  .registers 4
  .line 1
    invoke-virtual { p0, p1 }, Lc/i/b/c;->w(I)Z
    move-result v0
    if-nez v0, :L0
  .line 2
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "Ignoring pointerId="
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0, p1 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    const-string p1, " because ACTION_DOWN was not received "
    invoke-virtual { v0, p1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string p1, "for this pointer before ACTION_MOVE. It likely happened because "
    invoke-virtual { v0, p1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string p1, " ViewDragHelper did not receive all the events in the event stream."
    invoke-virtual { v0, p1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    const/4 p1, 0
    return p1
  :L0
    const/4 p1, 1
    return p1
.end method

.method E(I)V
  .registers 4
  .line 1
    iget-object v0, p0, Lc/i/b/c;->u:Landroid/view/ViewGroup;
    iget-object v1, p0, Lc/i/b/c;->v:Ljava/lang/Runnable;
    invoke-virtual { v0, v1 }, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z
  .line 2
    iget v0, p0, Lc/i/b/c;->a:I
    if-eq v0, p1, :L0
  .line 3
    iput p1, p0, Lc/i/b/c;->a:I
  .line 4
    iget-object v0, p0, Lc/i/b/c;->r:Lc/i/b/c$c;
    invoke-virtual { v0, p1 }, Lc/i/b/c$c;->j(I)V
  .line 5
    iget p1, p0, Lc/i/b/c;->a:I
    if-nez p1, :L0
    const/4 p1, 0
  .line 6
    iput-object p1, p0, Lc/i/b/c;->s:Landroid/view/View;
  :L0
    return-void
.end method

.method public F(II)Z
  .registers 6
  .line 1
    iget-boolean v0, p0, Lc/i/b/c;->t:Z
    if-eqz v0, :L0
  .line 2
    iget-object v0, p0, Lc/i/b/c;->l:Landroid/view/VelocityTracker;
    iget v1, p0, Lc/i/b/c;->c:I
  .line 3
    invoke-virtual { v0, v1 }, Landroid/view/VelocityTracker;->getXVelocity(I)F
    move-result v0
    float-to-int v0, v0
    iget-object v1, p0, Lc/i/b/c;->l:Landroid/view/VelocityTracker;
    iget v2, p0, Lc/i/b/c;->c:I
  .line 4
    invoke-virtual { v1, v2 }, Landroid/view/VelocityTracker;->getYVelocity(I)F
    move-result v1
    float-to-int v1, v1
  .line 5
    invoke-direct { p0, p1, p2, v0, v1 }, Lc/i/b/c;->s(IIII)Z
    move-result p1
    return p1
  :L0
  .line 6
    new-instance p1, Ljava/lang/IllegalStateException;
    const-string p2, "Cannot settleCapturedViewAt outside of a call to Callback#onViewReleased"
    invoke-direct { p1, p2 }, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
    throw p1
.end method

.method public G(Landroid/view/MotionEvent;)Z
  .registers 18
    move-object/from16 v0, p0
    move-object/from16 v1, p1
  .line 1
    invoke-virtual/range { p1 .. p1 }, Landroid/view/MotionEvent;->getActionMasked()I
    move-result v2
  .line 2
    invoke-virtual/range { p1 .. p1 }, Landroid/view/MotionEvent;->getActionIndex()I
    move-result v3
    if-nez v2, :L0
  .line 3
    invoke-virtual/range { p0 .. p0 }, Lc/i/b/c;->a()V
  :L0
  .line 4
    iget-object v4, v0, Lc/i/b/c;->l:Landroid/view/VelocityTracker;
    if-nez v4, :L1
  .line 5
    invoke-static { }, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;
    move-result-object v4
    iput-object v4, v0, Lc/i/b/c;->l:Landroid/view/VelocityTracker;
  :L1
  .line 6
    iget-object v4, v0, Lc/i/b/c;->l:Landroid/view/VelocityTracker;
    invoke-virtual { v4, v1 }, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V
    const/4 v4, 2
    const/4 v6, 1
    if-eqz v2, :L18
    if-eq v2, v6, :L17
    if-eq v2, v4, :L6
    const/4 v7, 3
    if-eq v2, v7, :L17
    const/4 v7, 5
    if-eq v2, v7, :L4
    const/4 v4, 6
    if-eq v2, v4, :L3
  :L2
    const/4 v5, 0
    goto/16 :L20
  :L3
  .line 7
    invoke-virtual { v1, v3 }, Landroid/view/MotionEvent;->getPointerId(I)I
    move-result v1
  .line 8
    invoke-direct { v0, v1 }, Lc/i/b/c;->h(I)V
    goto :L2
  :L4
  .line 9
    invoke-virtual { v1, v3 }, Landroid/view/MotionEvent;->getPointerId(I)I
    move-result v2
  .line 10
    invoke-virtual { v1, v3 }, Landroid/view/MotionEvent;->getX(I)F
    move-result v7
  .line 11
    invoke-virtual { v1, v3 }, Landroid/view/MotionEvent;->getY(I)F
    move-result v1
  .line 12
    invoke-direct { v0, v7, v1, v2 }, Lc/i/b/c;->C(FFI)V
  .line 13
    iget v3, v0, Lc/i/b/c;->a:I
    if-nez v3, :L5
  .line 14
    iget-object v1, v0, Lc/i/b/c;->h:[I
    aget v1, v1, v2
  .line 15
    iget v3, v0, Lc/i/b/c;->p:I
    and-int v4, v1, v3
    if-eqz v4, :L2
  .line 16
    iget-object v4, v0, Lc/i/b/c;->r:Lc/i/b/c$c;
    and-int/2addr v1, v3
    invoke-virtual { v4, v1, v2 }, Lc/i/b/c$c;->h(II)V
    goto :L2
  :L5
    if-ne v3, v4, :L2
    float-to-int v3, v7
    float-to-int v1, v1
  .line 17
    invoke-virtual { v0, v3, v1 }, Lc/i/b/c;->r(II)Landroid/view/View;
    move-result-object v1
  .line 18
    iget-object v3, v0, Lc/i/b/c;->s:Landroid/view/View;
    if-ne v1, v3, :L2
  .line 19
    invoke-virtual { v0, v1, v2 }, Lc/i/b/c;->I(Landroid/view/View;I)Z
    goto :L2
  :L6
  .line 20
    iget-object v2, v0, Lc/i/b/c;->d:[F
    if-eqz v2, :L2
    iget-object v2, v0, Lc/i/b/c;->e:[F
    if-nez v2, :L7
    goto :L2
  :L7
  .line 21
    invoke-virtual/range { p1 .. p1 }, Landroid/view/MotionEvent;->getPointerCount()I
    move-result v2
    const/4 v3, 0
  :L8
    if-ge v3, v2, :L16
  .line 22
    invoke-virtual { v1, v3 }, Landroid/view/MotionEvent;->getPointerId(I)I
    move-result v4
  .line 23
    invoke-direct { v0, v4 }, Lc/i/b/c;->x(I)Z
    move-result v7
    if-nez v7, :L9
    goto/16 :L15
  :L9
  .line 24
    invoke-virtual { v1, v3 }, Landroid/view/MotionEvent;->getX(I)F
    move-result v7
  .line 25
    invoke-virtual { v1, v3 }, Landroid/view/MotionEvent;->getY(I)F
    move-result v8
  .line 26
    iget-object v9, v0, Lc/i/b/c;->d:[F
    aget v9, v9, v4
    sub-float v9, v7, v9
  .line 27
    iget-object v10, v0, Lc/i/b/c;->e:[F
    aget v10, v10, v4
    sub-float v10, v8, v10
    float-to-int v7, v7
    float-to-int v8, v8
  .line 28
    invoke-virtual { v0, v7, v8 }, Lc/i/b/c;->r(II)Landroid/view/View;
    move-result-object v7
    if-eqz v7, :L10
  .line 29
    invoke-direct { v0, v7, v9, v10 }, Lc/i/b/c;->d(Landroid/view/View;FF)Z
    move-result v8
    if-eqz v8, :L10
    const/4 v8, 1
    goto :L11
  :L10
    const/4 v8, 0
  :L11
    if-eqz v8, :L13
  .line 30
    invoke-virtual { v7 }, Landroid/view/View;->getLeft()I
    move-result v11
    float-to-int v12, v9
    add-int v13, v11, v12
  .line 31
    iget-object v14, v0, Lc/i/b/c;->r:Lc/i/b/c$c;
    invoke-virtual { v14, v7, v13, v12 }, Lc/i/b/c$c;->a(Landroid/view/View;II)I
    move-result v12
  .line 32
    invoke-virtual { v7 }, Landroid/view/View;->getTop()I
    move-result v13
    float-to-int v14, v10
    add-int v15, v13, v14
  .line 33
    iget-object v5, v0, Lc/i/b/c;->r:Lc/i/b/c$c;
    invoke-virtual { v5, v7, v15, v14 }, Lc/i/b/c$c;->b(Landroid/view/View;II)I
    move-result v5
  .line 34
    iget-object v14, v0, Lc/i/b/c;->r:Lc/i/b/c$c;
    invoke-virtual { v14, v7 }, Lc/i/b/c$c;->d(Landroid/view/View;)I
    move-result v14
  .line 35
    iget-object v15, v0, Lc/i/b/c;->r:Lc/i/b/c$c;
    invoke-virtual { v15, v7 }, Lc/i/b/c$c;->e(Landroid/view/View;)I
    move-result v15
    if-eqz v14, :L12
    if-lez v14, :L13
    if-ne v12, v11, :L13
  :L12
    if-eqz v15, :L16
    if-lez v15, :L13
    if-ne v5, v13, :L13
    goto :L16
  :L13
  .line 36
    invoke-direct { v0, v9, v10, v4 }, Lc/i/b/c;->B(FFI)V
  .line 37
    iget v5, v0, Lc/i/b/c;->a:I
    if-ne v5, v6, :L14
    goto :L16
  :L14
    if-eqz v8, :L15
  .line 38
    invoke-virtual { v0, v7, v4 }, Lc/i/b/c;->I(Landroid/view/View;I)Z
    move-result v4
    if-eqz v4, :L15
    goto :L16
  :L15
    add-int/lit8 v3, v3, 1
    goto :L8
  :L16
  .line 39
    invoke-direct/range { p0 .. p1 }, Lc/i/b/c;->D(Landroid/view/MotionEvent;)V
    goto/16 :L2
  :L17
  .line 40
    invoke-virtual/range { p0 .. p0 }, Lc/i/b/c;->a()V
    goto/16 :L2
  :L18
  .line 41
    invoke-virtual/range { p1 .. p1 }, Landroid/view/MotionEvent;->getX()F
    move-result v2
  .line 42
    invoke-virtual/range { p1 .. p1 }, Landroid/view/MotionEvent;->getY()F
    move-result v3
    const/4 v5, 0
  .line 43
    invoke-virtual { v1, v5 }, Landroid/view/MotionEvent;->getPointerId(I)I
    move-result v1
  .line 44
    invoke-direct { v0, v2, v3, v1 }, Lc/i/b/c;->C(FFI)V
    float-to-int v2, v2
    float-to-int v3, v3
  .line 45
    invoke-virtual { v0, v2, v3 }, Lc/i/b/c;->r(II)Landroid/view/View;
    move-result-object v2
  .line 46
    iget-object v3, v0, Lc/i/b/c;->s:Landroid/view/View;
    if-ne v2, v3, :L19
    iget v3, v0, Lc/i/b/c;->a:I
    if-ne v3, v4, :L19
  .line 47
    invoke-virtual { v0, v2, v1 }, Lc/i/b/c;->I(Landroid/view/View;I)Z
  :L19
  .line 48
    iget-object v2, v0, Lc/i/b/c;->h:[I
    aget v2, v2, v1
  .line 49
    iget v3, v0, Lc/i/b/c;->p:I
    and-int v4, v2, v3
    if-eqz v4, :L20
  .line 50
    iget-object v4, v0, Lc/i/b/c;->r:Lc/i/b/c$c;
    and-int/2addr v2, v3
    invoke-virtual { v4, v2, v1 }, Lc/i/b/c$c;->h(II)V
  :L20
  .line 51
    iget v1, v0, Lc/i/b/c;->a:I
    if-ne v1, v6, :L21
    const/4 v5, 1
  :L21
    return v5
.end method

.method public H(Landroid/view/View;II)Z
  .registers 4
  .line 1
    iput-object p1, p0, Lc/i/b/c;->s:Landroid/view/View;
    const/4 p1, -1
  .line 2
    iput p1, p0, Lc/i/b/c;->c:I
    const/4 p1, 0
  .line 3
    invoke-direct { p0, p2, p3, p1, p1 }, Lc/i/b/c;->s(IIII)Z
    move-result p1
    if-nez p1, :L0
  .line 4
    iget p2, p0, Lc/i/b/c;->a:I
    if-nez p2, :L0
    iget-object p2, p0, Lc/i/b/c;->s:Landroid/view/View;
    if-eqz p2, :L0
    const/4 p2, 0
  .line 5
    iput-object p2, p0, Lc/i/b/c;->s:Landroid/view/View;
  :L0
    return p1
.end method

.method I(Landroid/view/View;I)Z
  .registers 5
  .line 1
    iget-object v0, p0, Lc/i/b/c;->s:Landroid/view/View;
    const/4 v1, 1
    if-ne p1, v0, :L0
    iget v0, p0, Lc/i/b/c;->c:I
    if-ne v0, p2, :L0
    return v1
  :L0
    if-eqz p1, :L1
  .line 2
    iget-object v0, p0, Lc/i/b/c;->r:Lc/i/b/c$c;
    invoke-virtual { v0, p1, p2 }, Lc/i/b/c$c;->m(Landroid/view/View;I)Z
    move-result v0
    if-eqz v0, :L1
  .line 3
    iput p2, p0, Lc/i/b/c;->c:I
  .line 4
    invoke-virtual { p0, p1, p2 }, Lc/i/b/c;->b(Landroid/view/View;I)V
    return v1
  :L1
    const/4 p1, 0
    return p1
.end method

.method public a()V
  .registers 2
    const/4 v0, -1
  .line 1
    iput v0, p0, Lc/i/b/c;->c:I
  .line 2
    invoke-direct { p0 }, Lc/i/b/c;->g()V
  .line 3
    iget-object v0, p0, Lc/i/b/c;->l:Landroid/view/VelocityTracker;
    if-eqz v0, :L0
  .line 4
    invoke-virtual { v0 }, Landroid/view/VelocityTracker;->recycle()V
    const/4 v0, 0
  .line 5
    iput-object v0, p0, Lc/i/b/c;->l:Landroid/view/VelocityTracker;
  :L0
    return-void
.end method

.method public b(Landroid/view/View;I)V
  .registers 5
  .line 1
    invoke-virtual { p1 }, Landroid/view/View;->getParent()Landroid/view/ViewParent;
    move-result-object v0
    iget-object v1, p0, Lc/i/b/c;->u:Landroid/view/ViewGroup;
    if-ne v0, v1, :L0
  .line 2
    iput-object p1, p0, Lc/i/b/c;->s:Landroid/view/View;
  .line 3
    iput p2, p0, Lc/i/b/c;->c:I
  .line 4
    iget-object v0, p0, Lc/i/b/c;->r:Lc/i/b/c$c;
    invoke-virtual { v0, p1, p2 }, Lc/i/b/c$c;->i(Landroid/view/View;I)V
    const/4 p1, 1
  .line 5
    invoke-virtual { p0, p1 }, Lc/i/b/c;->E(I)V
    return-void
  :L0
  .line 6
    new-instance p1, Ljava/lang/IllegalArgumentException;
    new-instance p2, Ljava/lang/StringBuilder;
    invoke-direct { p2 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v0, "captureChildView: parameter must be a descendant of the ViewDragHelper's tracked parent view ("
    invoke-virtual { p2, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget-object v0, p0, Lc/i/b/c;->u:Landroid/view/ViewGroup;
    invoke-virtual { p2, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    const-string v0, ")"
    invoke-virtual { p2, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { p2 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p2
    invoke-direct { p1, p2 }, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
    throw p1
.end method

.method public k(Z)Z
  .registers 13
  .line 1
    iget v0, p0, Lc/i/b/c;->a:I
    const/4 v1, 2
    const/4 v2, 0
    if-ne v0, v1, :L6
  .line 2
    iget-object v0, p0, Lc/i/b/c;->q:Landroid/widget/OverScroller;
    invoke-virtual { v0 }, Landroid/widget/OverScroller;->computeScrollOffset()Z
    move-result v0
  .line 3
    iget-object v3, p0, Lc/i/b/c;->q:Landroid/widget/OverScroller;
    invoke-virtual { v3 }, Landroid/widget/OverScroller;->getCurrX()I
    move-result v3
  .line 4
    iget-object v4, p0, Lc/i/b/c;->q:Landroid/widget/OverScroller;
    invoke-virtual { v4 }, Landroid/widget/OverScroller;->getCurrY()I
    move-result v10
  .line 5
    iget-object v4, p0, Lc/i/b/c;->s:Landroid/view/View;
    invoke-virtual { v4 }, Landroid/view/View;->getLeft()I
    move-result v4
    sub-int v8, v3, v4
  .line 6
    iget-object v4, p0, Lc/i/b/c;->s:Landroid/view/View;
    invoke-virtual { v4 }, Landroid/view/View;->getTop()I
    move-result v4
    sub-int v9, v10, v4
    if-eqz v8, :L0
  .line 7
    iget-object v4, p0, Lc/i/b/c;->s:Landroid/view/View;
    invoke-static { v4, v8 }, Landroidx/core/view/v;->Y(Landroid/view/View;I)V
  :L0
    if-eqz v9, :L1
  .line 8
    iget-object v4, p0, Lc/i/b/c;->s:Landroid/view/View;
    invoke-static { v4, v9 }, Landroidx/core/view/v;->Z(Landroid/view/View;I)V
  :L1
    if-nez v8, :L2
    if-eqz v9, :L3
  :L2
  .line 9
    iget-object v4, p0, Lc/i/b/c;->r:Lc/i/b/c$c;
    iget-object v5, p0, Lc/i/b/c;->s:Landroid/view/View;
    move v6, v3
    move v7, v10
    invoke-virtual/range { v4 .. v9 }, Lc/i/b/c$c;->k(Landroid/view/View;IIII)V
  :L3
    if-eqz v0, :L4
  .line 10
    iget-object v4, p0, Lc/i/b/c;->q:Landroid/widget/OverScroller;
    invoke-virtual { v4 }, Landroid/widget/OverScroller;->getFinalX()I
    move-result v4
    if-ne v3, v4, :L4
    iget-object v3, p0, Lc/i/b/c;->q:Landroid/widget/OverScroller;
    invoke-virtual { v3 }, Landroid/widget/OverScroller;->getFinalY()I
    move-result v3
    if-ne v10, v3, :L4
  .line 11
    iget-object v0, p0, Lc/i/b/c;->q:Landroid/widget/OverScroller;
    invoke-virtual { v0 }, Landroid/widget/OverScroller;->abortAnimation()V
    const/4 v0, 0
  :L4
    if-nez v0, :L6
    if-eqz p1, :L5
  .line 12
    iget-object p1, p0, Lc/i/b/c;->u:Landroid/view/ViewGroup;
    iget-object v0, p0, Lc/i/b/c;->v:Ljava/lang/Runnable;
    invoke-virtual { p1, v0 }, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z
    goto :L6
  :L5
  .line 13
    invoke-virtual { p0, v2 }, Lc/i/b/c;->E(I)V
  :L6
  .line 14
    iget p1, p0, Lc/i/b/c;->a:I
    if-ne p1, v1, :L7
    const/4 v2, 1
  :L7
    return v2
.end method

.method public r(II)Landroid/view/View;
  .registers 6
  .line 1
    iget-object v0, p0, Lc/i/b/c;->u:Landroid/view/ViewGroup;
    invoke-virtual { v0 }, Landroid/view/ViewGroup;->getChildCount()I
    move-result v0
    add-int/lit8 v0, v0, -1
  :L0
    if-ltz v0, :L2
  .line 2
    iget-object v1, p0, Lc/i/b/c;->u:Landroid/view/ViewGroup;
    iget-object v2, p0, Lc/i/b/c;->r:Lc/i/b/c$c;
    invoke-virtual { v2, v0 }, Lc/i/b/c$c;->c(I)I
    invoke-virtual { v1, v0 }, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;
    move-result-object v1
  .line 3
    invoke-virtual { v1 }, Landroid/view/View;->getLeft()I
    move-result v2
    if-lt p1, v2, :L1
    invoke-virtual { v1 }, Landroid/view/View;->getRight()I
    move-result v2
    if-ge p1, v2, :L1
  .line 4
    invoke-virtual { v1 }, Landroid/view/View;->getTop()I
    move-result v2
    if-lt p2, v2, :L1
    invoke-virtual { v1 }, Landroid/view/View;->getBottom()I
    move-result v2
    if-ge p2, v2, :L1
    return-object v1
  :L1
    add-int/lit8 v0, v0, -1
    goto :L0
  :L2
    const/4 p1, 0
    return-object p1
.end method

.method public u()I
  .registers 2
  .line 1
    iget v0, p0, Lc/i/b/c;->b:I
    return v0
.end method

.method public v(II)Z
  .registers 4
  .line 1
    iget-object v0, p0, Lc/i/b/c;->s:Landroid/view/View;
    invoke-virtual { p0, v0, p1, p2 }, Lc/i/b/c;->y(Landroid/view/View;II)Z
    move-result p1
    return p1
.end method

.method public w(I)Z
  .registers 4
  .line 1
    iget v0, p0, Lc/i/b/c;->k:I
    const/4 v1, 1
    shl-int p1, v1, p1
    and-int/2addr p1, v0
    if-eqz p1, :L0
    goto :L1
  :L0
    const/4 v1, 0
  :L1
    return v1
.end method

.method public y(Landroid/view/View;II)Z
  .registers 6
    const/4 v0, 0
    if-nez p1, :L0
    return v0
  :L0
  .line 1
    invoke-virtual { p1 }, Landroid/view/View;->getLeft()I
    move-result v1
    if-lt p2, v1, :L1
  .line 2
    invoke-virtual { p1 }, Landroid/view/View;->getRight()I
    move-result v1
    if-ge p2, v1, :L1
  .line 3
    invoke-virtual { p1 }, Landroid/view/View;->getTop()I
    move-result p2
    if-lt p3, p2, :L1
  .line 4
    invoke-virtual { p1 }, Landroid/view/View;->getBottom()I
    move-result p1
    if-ge p3, p1, :L1
    const/4 v0, 1
  :L1
    return v0
.end method

.method public z(Landroid/view/MotionEvent;)V
  .registers 11
  .line 1
    invoke-virtual { p1 }, Landroid/view/MotionEvent;->getActionMasked()I
    move-result v0
  .line 2
    invoke-virtual { p1 }, Landroid/view/MotionEvent;->getActionIndex()I
    move-result v1
    if-nez v0, :L0
  .line 3
    invoke-virtual { p0 }, Lc/i/b/c;->a()V
  :L0
  .line 4
    iget-object v2, p0, Lc/i/b/c;->l:Landroid/view/VelocityTracker;
    if-nez v2, :L1
  .line 5
    invoke-static { }, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;
    move-result-object v2
    iput-object v2, p0, Lc/i/b/c;->l:Landroid/view/VelocityTracker;
  :L1
  .line 6
    iget-object v2, p0, Lc/i/b/c;->l:Landroid/view/VelocityTracker;
    invoke-virtual { v2, p1 }, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V
    const/4 v2, 0
    if-eqz v0, :L23
    const/4 v3, 1
    if-eq v0, v3, :L21
    const/4 v4, 2
    if-eq v0, v4, :L13
    const/4 v4, 3
    if-eq v0, v4, :L11
    const/4 v4, 5
    if-eq v0, v4, :L9
    const/4 v4, 6
    if-eq v0, v4, :L2
    goto/16 :L24
  :L2
  .line 7
    invoke-virtual { p1, v1 }, Landroid/view/MotionEvent;->getPointerId(I)I
    move-result v0
  .line 8
    iget v1, p0, Lc/i/b/c;->a:I
    if-ne v1, v3, :L8
    iget v1, p0, Lc/i/b/c;->c:I
    if-ne v0, v1, :L8
  .line 9
    invoke-virtual { p1 }, Landroid/view/MotionEvent;->getPointerCount()I
    move-result v1
  :L3
    const/4 v3, -1
    if-ge v2, v1, :L6
  .line 10
    invoke-virtual { p1, v2 }, Landroid/view/MotionEvent;->getPointerId(I)I
    move-result v4
  .line 11
    iget v5, p0, Lc/i/b/c;->c:I
    if-ne v4, v5, :L4
    goto :L5
  :L4
  .line 12
    invoke-virtual { p1, v2 }, Landroid/view/MotionEvent;->getX(I)F
    move-result v5
  .line 13
    invoke-virtual { p1, v2 }, Landroid/view/MotionEvent;->getY(I)F
    move-result v6
    float-to-int v5, v5
    float-to-int v6, v6
  .line 14
    invoke-virtual { p0, v5, v6 }, Lc/i/b/c;->r(II)Landroid/view/View;
    move-result-object v5
    iget-object v6, p0, Lc/i/b/c;->s:Landroid/view/View;
    if-ne v5, v6, :L5
  .line 15
    invoke-virtual { p0, v6, v4 }, Lc/i/b/c;->I(Landroid/view/View;I)Z
    move-result v4
    if-eqz v4, :L5
  .line 16
    iget p1, p0, Lc/i/b/c;->c:I
    goto :L7
  :L5
    add-int/lit8 v2, v2, 1
    goto :L3
  :L6
    const/4 p1, -1
  :L7
    if-ne p1, v3, :L8
  .line 17
    invoke-direct { p0 }, Lc/i/b/c;->A()V
  :L8
  .line 18
    invoke-direct { p0, v0 }, Lc/i/b/c;->h(I)V
    goto/16 :L24
  :L9
  .line 19
    invoke-virtual { p1, v1 }, Landroid/view/MotionEvent;->getPointerId(I)I
    move-result v0
  .line 20
    invoke-virtual { p1, v1 }, Landroid/view/MotionEvent;->getX(I)F
    move-result v2
  .line 21
    invoke-virtual { p1, v1 }, Landroid/view/MotionEvent;->getY(I)F
    move-result p1
  .line 22
    invoke-direct { p0, v2, p1, v0 }, Lc/i/b/c;->C(FFI)V
  .line 23
    iget v1, p0, Lc/i/b/c;->a:I
    if-nez v1, :L10
    float-to-int v1, v2
    float-to-int p1, p1
  .line 24
    invoke-virtual { p0, v1, p1 }, Lc/i/b/c;->r(II)Landroid/view/View;
    move-result-object p1
  .line 25
    invoke-virtual { p0, p1, v0 }, Lc/i/b/c;->I(Landroid/view/View;I)Z
  .line 26
    iget-object p1, p0, Lc/i/b/c;->h:[I
    aget p1, p1, v0
  .line 27
    iget v1, p0, Lc/i/b/c;->p:I
    and-int v2, p1, v1
    if-eqz v2, :L24
  .line 28
    iget-object v2, p0, Lc/i/b/c;->r:Lc/i/b/c$c;
    and-int/2addr p1, v1
    invoke-virtual { v2, p1, v0 }, Lc/i/b/c$c;->h(II)V
    goto/16 :L24
  :L10
    float-to-int v1, v2
    float-to-int p1, p1
  .line 29
    invoke-virtual { p0, v1, p1 }, Lc/i/b/c;->v(II)Z
    move-result p1
    if-eqz p1, :L24
  .line 30
    iget-object p1, p0, Lc/i/b/c;->s:Landroid/view/View;
    invoke-virtual { p0, p1, v0 }, Lc/i/b/c;->I(Landroid/view/View;I)Z
    goto/16 :L24
  :L11
  .line 31
    iget p1, p0, Lc/i/b/c;->a:I
    if-ne p1, v3, :L12
    const/4 p1, 0
  .line 32
    invoke-direct { p0, p1, p1 }, Lc/i/b/c;->n(FF)V
  :L12
  .line 33
    invoke-virtual { p0 }, Lc/i/b/c;->a()V
    goto/16 :L24
  :L13
  .line 34
    iget v0, p0, Lc/i/b/c;->a:I
    if-ne v0, v3, :L15
  .line 35
    iget v0, p0, Lc/i/b/c;->c:I
    invoke-direct { p0, v0 }, Lc/i/b/c;->x(I)Z
    move-result v0
    if-nez v0, :L14
    goto/16 :L24
  :L14
  .line 36
    iget v0, p0, Lc/i/b/c;->c:I
    invoke-virtual { p1, v0 }, Landroid/view/MotionEvent;->findPointerIndex(I)I
    move-result v0
  .line 37
    invoke-virtual { p1, v0 }, Landroid/view/MotionEvent;->getX(I)F
    move-result v1
  .line 38
    invoke-virtual { p1, v0 }, Landroid/view/MotionEvent;->getY(I)F
    move-result v0
  .line 39
    iget-object v2, p0, Lc/i/b/c;->f:[F
    iget v3, p0, Lc/i/b/c;->c:I
    aget v2, v2, v3
    sub-float/2addr v1, v2
    float-to-int v1, v1
  .line 40
    iget-object v2, p0, Lc/i/b/c;->g:[F
    aget v2, v2, v3
    sub-float/2addr v0, v2
    float-to-int v0, v0
  .line 41
    iget-object v2, p0, Lc/i/b/c;->s:Landroid/view/View;
    invoke-virtual { v2 }, Landroid/view/View;->getLeft()I
    move-result v2
    add-int/2addr v2, v1
    iget-object v3, p0, Lc/i/b/c;->s:Landroid/view/View;
    invoke-virtual { v3 }, Landroid/view/View;->getTop()I
    move-result v3
    add-int/2addr v3, v0
    invoke-direct { p0, v2, v3, v1, v0 }, Lc/i/b/c;->p(IIII)V
  .line 42
    invoke-direct { p0, p1 }, Lc/i/b/c;->D(Landroid/view/MotionEvent;)V
    goto/16 :L24
  :L15
  .line 43
    invoke-virtual { p1 }, Landroid/view/MotionEvent;->getPointerCount()I
    move-result v0
  :L16
    if-ge v2, v0, :L20
  .line 44
    invoke-virtual { p1, v2 }, Landroid/view/MotionEvent;->getPointerId(I)I
    move-result v1
  .line 45
    invoke-direct { p0, v1 }, Lc/i/b/c;->x(I)Z
    move-result v4
    if-nez v4, :L17
    goto :L19
  :L17
  .line 46
    invoke-virtual { p1, v2 }, Landroid/view/MotionEvent;->getX(I)F
    move-result v4
  .line 47
    invoke-virtual { p1, v2 }, Landroid/view/MotionEvent;->getY(I)F
    move-result v5
  .line 48
    iget-object v6, p0, Lc/i/b/c;->d:[F
    aget v6, v6, v1
    sub-float v6, v4, v6
  .line 49
    iget-object v7, p0, Lc/i/b/c;->e:[F
    aget v7, v7, v1
    sub-float v7, v5, v7
  .line 50
    invoke-direct { p0, v6, v7, v1 }, Lc/i/b/c;->B(FFI)V
  .line 51
    iget v8, p0, Lc/i/b/c;->a:I
    if-ne v8, v3, :L18
    goto :L20
  :L18
    float-to-int v4, v4
    float-to-int v5, v5
  .line 52
    invoke-virtual { p0, v4, v5 }, Lc/i/b/c;->r(II)Landroid/view/View;
    move-result-object v4
  .line 53
    invoke-direct { p0, v4, v6, v7 }, Lc/i/b/c;->d(Landroid/view/View;FF)Z
    move-result v5
    if-eqz v5, :L19
  .line 54
    invoke-virtual { p0, v4, v1 }, Lc/i/b/c;->I(Landroid/view/View;I)Z
    move-result v1
    if-eqz v1, :L19
    goto :L20
  :L19
    add-int/lit8 v2, v2, 1
    goto :L16
  :L20
  .line 55
    invoke-direct { p0, p1 }, Lc/i/b/c;->D(Landroid/view/MotionEvent;)V
    goto :L24
  :L21
  .line 56
    iget p1, p0, Lc/i/b/c;->a:I
    if-ne p1, v3, :L22
  .line 57
    invoke-direct { p0 }, Lc/i/b/c;->A()V
  :L22
  .line 58
    invoke-virtual { p0 }, Lc/i/b/c;->a()V
    goto :L24
  :L23
  .line 59
    invoke-virtual { p1 }, Landroid/view/MotionEvent;->getX()F
    move-result v0
  .line 60
    invoke-virtual { p1 }, Landroid/view/MotionEvent;->getY()F
    move-result v1
  .line 61
    invoke-virtual { p1, v2 }, Landroid/view/MotionEvent;->getPointerId(I)I
    move-result p1
    float-to-int v2, v0
    float-to-int v3, v1
  .line 62
    invoke-virtual { p0, v2, v3 }, Lc/i/b/c;->r(II)Landroid/view/View;
    move-result-object v2
  .line 63
    invoke-direct { p0, v0, v1, p1 }, Lc/i/b/c;->C(FFI)V
  .line 64
    invoke-virtual { p0, v2, p1 }, Lc/i/b/c;->I(Landroid/view/View;I)Z
  .line 65
    iget-object v0, p0, Lc/i/b/c;->h:[I
    aget v0, v0, p1
  .line 66
    iget v1, p0, Lc/i/b/c;->p:I
    and-int v2, v0, v1
    if-eqz v2, :L24
  .line 67
    iget-object v2, p0, Lc/i/b/c;->r:Lc/i/b/c$c;
    and-int/2addr v0, v1
    invoke-virtual { v2, v0, p1 }, Lc/i/b/c$c;->h(II)V
  :L24
    return-void
.end method
