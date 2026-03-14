.class public abstract Landroidx/core/widget/a;
.super Ljava/lang/Object;
.implements Landroid/view/View$OnTouchListener;
.source "SourceFile"

.annotation system Ldalvik/annotation/MemberClasses;
  value = {
    Landroidx/core/widget/a$a;,
    Landroidx/core/widget/a$b;
  }
.end annotation

.field private final static s:I

.field final b:Landroidx/core/widget/a$a;

.field private final c:Landroid/view/animation/Interpolator;

.field final d:Landroid/view/View;

.field private e:Ljava/lang/Runnable;

.field private f:[F

.field private g:[F

.field private h:I

.field private i:I

.field private j:[F

.field private k:[F

.field private l:[F

.field private m:Z

.field n:Z

.field o:Z

.field p:Z

.field private q:Z

.field private r:Z

.method static constructor <clinit>()V
  .registers 1
  .line 1
    invoke-static { }, Landroid/view/ViewConfiguration;->getTapTimeout()I
    move-result v0
    sput v0, Landroidx/core/widget/a;->s:I
    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
  .registers 5
  .line 1
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
  .line 2
    new-instance v0, Landroidx/core/widget/a$a;
    invoke-direct { v0 }, Landroidx/core/widget/a$a;-><init>()V
    iput-object v0, p0, Landroidx/core/widget/a;->b:Landroidx/core/widget/a$a;
  .line 3
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;
    invoke-direct { v0 }, Landroid/view/animation/AccelerateInterpolator;-><init>()V
    iput-object v0, p0, Landroidx/core/widget/a;->c:Landroid/view/animation/Interpolator;
    const/4 v0, 2
    new-array v1, v0, [F
  .line 4
    fill-array-data v1, :L0
    iput-object v1, p0, Landroidx/core/widget/a;->f:[F
    new-array v1, v0, [F
  .line 5
    fill-array-data v1, :L1
    iput-object v1, p0, Landroidx/core/widget/a;->g:[F
    new-array v1, v0, [F
  .line 6
    fill-array-data v1, :L2
    iput-object v1, p0, Landroidx/core/widget/a;->j:[F
    new-array v1, v0, [F
  .line 7
    fill-array-data v1, :L3
    iput-object v1, p0, Landroidx/core/widget/a;->k:[F
    new-array v0, v0, [F
  .line 8
    fill-array-data v0, :L4
    iput-object v0, p0, Landroidx/core/widget/a;->l:[F
  .line 9
    iput-object p1, p0, Landroidx/core/widget/a;->d:Landroid/view/View;
  .line 10
    invoke-static { }, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;
    move-result-object p1
    invoke-virtual { p1 }, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;
    move-result-object p1
  .line 11
    iget p1, p1, Landroid/util/DisplayMetrics;->density:F
    const v0, 1153753088
    mul-float v0, v0, p1
    const/high16 v1, 16128
    add-float/2addr v0, v1
    float-to-int v0, v0
    const v2, 1134395392
    mul-float p1, p1, v2
    add-float/2addr p1, v1
    float-to-int p1, p1
    int-to-float v0, v0
  .line 12
    invoke-virtual { p0, v0, v0 }, Landroidx/core/widget/a;->o(FF)Landroidx/core/widget/a;
    int-to-float p1, p1
  .line 13
    invoke-virtual { p0, p1, p1 }, Landroidx/core/widget/a;->p(FF)Landroidx/core/widget/a;
    const/4 p1, 1
  .line 14
    invoke-virtual { p0, p1 }, Landroidx/core/widget/a;->l(I)Landroidx/core/widget/a;
    const p1, 2139095039
  .line 15
    invoke-virtual { p0, p1, p1 }, Landroidx/core/widget/a;->n(FF)Landroidx/core/widget/a;
    const p1, 1045220557
  .line 16
    invoke-virtual { p0, p1, p1 }, Landroidx/core/widget/a;->s(FF)Landroidx/core/widget/a;
    const/high16 p1, 16256
  .line 17
    invoke-virtual { p0, p1, p1 }, Landroidx/core/widget/a;->t(FF)Landroidx/core/widget/a;
  .line 18
    sget p1, Landroidx/core/widget/a;->s:I
    invoke-virtual { p0, p1 }, Landroidx/core/widget/a;->k(I)Landroidx/core/widget/a;
    const/16 p1, 500
  .line 19
    invoke-virtual { p0, p1 }, Landroidx/core/widget/a;->r(I)Landroidx/core/widget/a;
  .line 20
    invoke-virtual { p0, p1 }, Landroidx/core/widget/a;->q(I)Landroidx/core/widget/a;
    return-void
  :L0
  .array-data 4
    0t 0t 0t 0t
    0t 0t 0t 0t
  .end array-data
  :L1
  .array-data 4
    -1t -1t 127t 127t
    -1t -1t 127t 127t
  .end array-data
  :L2
  .array-data 4
    0t 0t 0t 0t
    0t 0t 0t 0t
  .end array-data
  :L3
  .array-data 4
    0t 0t 0t 0t
    0t 0t 0t 0t
  .end array-data
  :L4
  .array-data 4
    -1t -1t 127t 127t
    -1t -1t 127t 127t
  .end array-data
.end method

.method private d(IFFF)F
  .registers 8
  .line 1
    iget-object v0, p0, Landroidx/core/widget/a;->f:[F
    aget v0, v0, p1
  .line 2
    iget-object v1, p0, Landroidx/core/widget/a;->g:[F
    aget v1, v1, p1
  .line 3
    invoke-direct { p0, v0, p3, v1, p2 }, Landroidx/core/widget/a;->h(FFFF)F
    move-result p2
    const/4 p3, 0
    cmpl-float v0, p2, p3
    if-nez v0, :L0
    return p3
  :L0
  .line 4
    iget-object v0, p0, Landroidx/core/widget/a;->j:[F
    aget v0, v0, p1
  .line 5
    iget-object v1, p0, Landroidx/core/widget/a;->k:[F
    aget v1, v1, p1
  .line 6
    iget-object v2, p0, Landroidx/core/widget/a;->l:[F
    aget p1, v2, p1
    mul-float v0, v0, p4
    cmpl-float p3, p2, p3
    if-lez p3, :L1
    mul-float p2, p2, v0
  .line 7
    invoke-static { p2, v1, p1 }, Landroidx/core/widget/a;->e(FFF)F
    move-result p1
    return p1
  :L1
    neg-float p2, p2
    mul-float p2, p2, v0
  .line 8
    invoke-static { p2, v1, p1 }, Landroidx/core/widget/a;->e(FFF)F
    move-result p1
    neg-float p1, p1
    return p1
.end method

.method static e(FFF)F
  .registers 4
    cmpl-float v0, p0, p2
    if-lez v0, :L0
    return p2
  :L0
    cmpg-float p2, p0, p1
    if-gez p2, :L1
    return p1
  :L1
    return p0
.end method

.method static f(III)I
  .registers 3
    if-le p0, p2, :L0
    return p2
  :L0
    if-ge p0, p1, :L1
    return p1
  :L1
    return p0
.end method

.method private g(FF)F
  .registers 7
    const/4 v0, 0
    cmpl-float v1, p2, v0
    if-nez v1, :L0
    return v0
  :L0
  .line 1
    iget v1, p0, Landroidx/core/widget/a;->h:I
    const/4 v2, 1
    if-eqz v1, :L2
    if-eq v1, v2, :L2
    const/4 v2, 2
    if-eq v1, v2, :L1
    goto :L4
  :L1
    cmpg-float v1, p1, v0
    if-gez v1, :L4
    neg-float p2, p2
    div-float/2addr p1, p2
    return p1
  :L2
    cmpg-float v1, p1, p2
    if-gez v1, :L4
    const/high16 v1, 16256
    cmpl-float v3, p1, v0
    if-ltz v3, :L3
    div-float/2addr p1, p2
    sub-float/2addr v1, p1
    return v1
  :L3
  .line 2
    iget-boolean p1, p0, Landroidx/core/widget/a;->p:Z
    if-eqz p1, :L4
    iget p1, p0, Landroidx/core/widget/a;->h:I
    if-ne p1, v2, :L4
    return v1
  :L4
    return v0
.end method

.method private h(FFFF)F
  .registers 6
    mul-float p1, p1, p2
    const/4 v0, 0
  .line 1
    invoke-static { p1, v0, p3 }, Landroidx/core/widget/a;->e(FFF)F
    move-result p1
  .line 2
    invoke-direct { p0, p4, p1 }, Landroidx/core/widget/a;->g(FF)F
    move-result p3
    sub-float/2addr p2, p4
  .line 3
    invoke-direct { p0, p2, p1 }, Landroidx/core/widget/a;->g(FF)F
    move-result p1
    sub-float/2addr p1, p3
    cmpg-float p2, p1, v0
    if-gez p2, :L0
  .line 4
    iget-object p2, p0, Landroidx/core/widget/a;->c:Landroid/view/animation/Interpolator;
    neg-float p1, p1
    invoke-interface { p2, p1 }, Landroid/view/animation/Interpolator;->getInterpolation(F)F
    move-result p1
    neg-float p1, p1
    goto :L1
  :L0
    cmpl-float p2, p1, v0
    if-lez p2, :L2
  .line 5
    iget-object p2, p0, Landroidx/core/widget/a;->c:Landroid/view/animation/Interpolator;
    invoke-interface { p2, p1 }, Landroid/view/animation/Interpolator;->getInterpolation(F)F
    move-result p1
  :L1
    const/high16 p2, -16512
    const/high16 p3, 16256
  .line 6
    invoke-static { p1, p2, p3 }, Landroidx/core/widget/a;->e(FFF)F
    move-result p1
    return p1
  :L2
    return v0
.end method

.method private i()V
  .registers 2
  .line 1
    iget-boolean v0, p0, Landroidx/core/widget/a;->n:Z
    if-eqz v0, :L0
    const/4 v0, 0
  .line 2
    iput-boolean v0, p0, Landroidx/core/widget/a;->p:Z
    goto :L1
  :L0
  .line 3
    iget-object v0, p0, Landroidx/core/widget/a;->b:Landroidx/core/widget/a$a;
    invoke-virtual { v0 }, Landroidx/core/widget/a$a;->i()V
  :L1
    return-void
.end method

.method private v()V
  .registers 7
  .line 1
    iget-object v0, p0, Landroidx/core/widget/a;->e:Ljava/lang/Runnable;
    if-nez v0, :L0
  .line 2
    new-instance v0, Landroidx/core/widget/a$b;
    invoke-direct { v0, p0 }, Landroidx/core/widget/a$b;-><init>(Landroidx/core/widget/a;)V
    iput-object v0, p0, Landroidx/core/widget/a;->e:Ljava/lang/Runnable;
  :L0
    const/4 v0, 1
  .line 3
    iput-boolean v0, p0, Landroidx/core/widget/a;->p:Z
  .line 4
    iput-boolean v0, p0, Landroidx/core/widget/a;->n:Z
  .line 5
    iget-boolean v1, p0, Landroidx/core/widget/a;->m:Z
    if-nez v1, :L1
    iget v1, p0, Landroidx/core/widget/a;->i:I
    if-lez v1, :L1
  .line 6
    iget-object v2, p0, Landroidx/core/widget/a;->d:Landroid/view/View;
    iget-object v3, p0, Landroidx/core/widget/a;->e:Ljava/lang/Runnable;
    int-to-long v4, v1
    invoke-static { v2, v3, v4, v5 }, Landroidx/core/view/v;->h0(Landroid/view/View;Ljava/lang/Runnable;J)V
    goto :L2
  :L1
  .line 7
    iget-object v1, p0, Landroidx/core/widget/a;->e:Ljava/lang/Runnable;
    invoke-interface { v1 }, Ljava/lang/Runnable;->run()V
  :L2
  .line 8
    iput-boolean v0, p0, Landroidx/core/widget/a;->m:Z
    return-void
.end method

.method public abstract a(I)Z
.end method

.method public abstract b(I)Z
.end method

.method c()V
  .registers 9
  .line 1
    invoke-static { }, Landroid/os/SystemClock;->uptimeMillis()J
    move-result-wide v2
    const/4 v4, 3
    const/4 v5, 0
    const/4 v6, 0
    const/4 v7, 0
    move-wide v0, v2
  .line 2
    invoke-static/range { v0 .. v7 }, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;
    move-result-object v0
  .line 3
    iget-object v1, p0, Landroidx/core/widget/a;->d:Landroid/view/View;
    invoke-virtual { v1, v0 }, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z
  .line 4
    invoke-virtual { v0 }, Landroid/view/MotionEvent;->recycle()V
    return-void
.end method

.method public abstract j(II)V
.end method

.method public k(I)Landroidx/core/widget/a;
  .registers 2
  .line 1
    iput p1, p0, Landroidx/core/widget/a;->i:I
    return-object p0
.end method

.method public l(I)Landroidx/core/widget/a;
  .registers 2
  .line 1
    iput p1, p0, Landroidx/core/widget/a;->h:I
    return-object p0
.end method

.method public m(Z)Landroidx/core/widget/a;
  .registers 3
  .line 1
    iget-boolean v0, p0, Landroidx/core/widget/a;->q:Z
    if-eqz v0, :L0
    if-nez p1, :L0
  .line 2
    invoke-direct { p0 }, Landroidx/core/widget/a;->i()V
  :L0
  .line 3
    iput-boolean p1, p0, Landroidx/core/widget/a;->q:Z
    return-object p0
.end method

.method public n(FF)Landroidx/core/widget/a;
  .registers 5
  .line 1
    iget-object v0, p0, Landroidx/core/widget/a;->g:[F
    const/4 v1, 0
    aput p1, v0, v1
    const/4 p1, 1
  .line 2
    aput p2, v0, p1
    return-object p0
.end method

.method public o(FF)Landroidx/core/widget/a;
  .registers 6
  .line 1
    iget-object v0, p0, Landroidx/core/widget/a;->l:[F
    const/high16 v1, 17530
    div-float/2addr p1, v1
    const/4 v2, 0
    aput p1, v0, v2
    div-float/2addr p2, v1
    const/4 p1, 1
  .line 2
    aput p2, v0, p1
    return-object p0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
  .registers 8
  .line 1
    iget-boolean v0, p0, Landroidx/core/widget/a;->q:Z
    const/4 v1, 0
    if-nez v0, :L0
    return v1
  :L0
  .line 2
    invoke-virtual { p2 }, Landroid/view/MotionEvent;->getActionMasked()I
    move-result v0
    const/4 v2, 1
    if-eqz v0, :L2
    if-eq v0, v2, :L1
    const/4 v3, 2
    if-eq v0, v3, :L3
    const/4 p1, 3
    if-eq v0, p1, :L1
    goto :L4
  :L1
  .line 3
    invoke-direct { p0 }, Landroidx/core/widget/a;->i()V
    goto :L4
  :L2
  .line 4
    iput-boolean v2, p0, Landroidx/core/widget/a;->o:Z
  .line 5
    iput-boolean v1, p0, Landroidx/core/widget/a;->m:Z
  :L3
  .line 6
    invoke-virtual { p2 }, Landroid/view/MotionEvent;->getX()F
    move-result v0
    invoke-virtual { p1 }, Landroid/view/View;->getWidth()I
    move-result v3
    int-to-float v3, v3
    iget-object v4, p0, Landroidx/core/widget/a;->d:Landroid/view/View;
    invoke-virtual { v4 }, Landroid/view/View;->getWidth()I
    move-result v4
    int-to-float v4, v4
  .line 7
    invoke-direct { p0, v1, v0, v3, v4 }, Landroidx/core/widget/a;->d(IFFF)F
    move-result v0
  .line 8
    invoke-virtual { p2 }, Landroid/view/MotionEvent;->getY()F
    move-result p2
    invoke-virtual { p1 }, Landroid/view/View;->getHeight()I
    move-result p1
    int-to-float p1, p1
    iget-object v3, p0, Landroidx/core/widget/a;->d:Landroid/view/View;
    invoke-virtual { v3 }, Landroid/view/View;->getHeight()I
    move-result v3
    int-to-float v3, v3
  .line 9
    invoke-direct { p0, v2, p2, p1, v3 }, Landroidx/core/widget/a;->d(IFFF)F
    move-result p1
  .line 10
    iget-object p2, p0, Landroidx/core/widget/a;->b:Landroidx/core/widget/a$a;
    invoke-virtual { p2, v0, p1 }, Landroidx/core/widget/a$a;->l(FF)V
  .line 11
    iget-boolean p1, p0, Landroidx/core/widget/a;->p:Z
    if-nez p1, :L4
    invoke-virtual { p0 }, Landroidx/core/widget/a;->u()Z
    move-result p1
    if-eqz p1, :L4
  .line 12
    invoke-direct { p0 }, Landroidx/core/widget/a;->v()V
  :L4
  .line 13
    iget-boolean p1, p0, Landroidx/core/widget/a;->r:Z
    if-eqz p1, :L5
    iget-boolean p1, p0, Landroidx/core/widget/a;->p:Z
    if-eqz p1, :L5
    const/4 v1, 1
  :L5
    return v1
.end method

.method public p(FF)Landroidx/core/widget/a;
  .registers 6
  .line 1
    iget-object v0, p0, Landroidx/core/widget/a;->k:[F
    const/high16 v1, 17530
    div-float/2addr p1, v1
    const/4 v2, 0
    aput p1, v0, v2
    div-float/2addr p2, v1
    const/4 p1, 1
  .line 2
    aput p2, v0, p1
    return-object p0
.end method

.method public q(I)Landroidx/core/widget/a;
  .registers 3
  .line 1
    iget-object v0, p0, Landroidx/core/widget/a;->b:Landroidx/core/widget/a$a;
    invoke-virtual { v0, p1 }, Landroidx/core/widget/a$a;->j(I)V
    return-object p0
.end method

.method public r(I)Landroidx/core/widget/a;
  .registers 3
  .line 1
    iget-object v0, p0, Landroidx/core/widget/a;->b:Landroidx/core/widget/a$a;
    invoke-virtual { v0, p1 }, Landroidx/core/widget/a$a;->k(I)V
    return-object p0
.end method

.method public s(FF)Landroidx/core/widget/a;
  .registers 5
  .line 1
    iget-object v0, p0, Landroidx/core/widget/a;->f:[F
    const/4 v1, 0
    aput p1, v0, v1
    const/4 p1, 1
  .line 2
    aput p2, v0, p1
    return-object p0
.end method

.method public t(FF)Landroidx/core/widget/a;
  .registers 6
  .line 1
    iget-object v0, p0, Landroidx/core/widget/a;->j:[F
    const/high16 v1, 17530
    div-float/2addr p1, v1
    const/4 v2, 0
    aput p1, v0, v2
    div-float/2addr p2, v1
    const/4 p1, 1
  .line 2
    aput p2, v0, p1
    return-object p0
.end method

.method u()Z
  .registers 3
  .line 1
    iget-object v0, p0, Landroidx/core/widget/a;->b:Landroidx/core/widget/a$a;
  .line 2
    invoke-virtual { v0 }, Landroidx/core/widget/a$a;->f()I
    move-result v1
  .line 3
    invoke-virtual { v0 }, Landroidx/core/widget/a$a;->d()I
    move-result v0
    if-eqz v1, :L0
  .line 4
    invoke-virtual { p0, v1 }, Landroidx/core/widget/a;->b(I)Z
    move-result v1
    if-nez v1, :L1
  :L0
    if-eqz v0, :L2
  .line 5
    invoke-virtual { p0, v0 }, Landroidx/core/widget/a;->a(I)Z
    move-result v0
    if-eqz v0, :L2
  :L1
    const/4 v0, 1
    goto :L3
  :L2
    const/4 v0, 0
  :L3
    return v0
.end method
