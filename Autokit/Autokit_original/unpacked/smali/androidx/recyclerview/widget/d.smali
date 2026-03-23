.class Landroidx/recyclerview/widget/d;
.super Landroidx/recyclerview/widget/RecyclerView$m;
.implements Landroidx/recyclerview/widget/RecyclerView$r;
.source "SourceFile"

.annotation system Ldalvik/annotation/MemberClasses;
  value = {
    Landroidx/recyclerview/widget/d$d;,
    Landroidx/recyclerview/widget/d$c;
  }
.end annotation

.field private final static D:[I

.field private final static E:[I

.field A:I

.field private final B:Ljava/lang/Runnable;

.field private final C:Landroidx/recyclerview/widget/RecyclerView$s;

.field private final a:I

.field private final b:I

.field final c:Landroid/graphics/drawable/StateListDrawable;

.field final d:Landroid/graphics/drawable/Drawable;

.field private final e:I

.field private final f:I

.field private final g:Landroid/graphics/drawable/StateListDrawable;

.field private final h:Landroid/graphics/drawable/Drawable;

.field private final i:I

.field private final j:I

.field k:I

.field l:I

.field m:F

.field n:I

.field o:I

.field p:F

.field private q:I

.field private r:I

.field private s:Landroidx/recyclerview/widget/RecyclerView;

.field private t:Z

.field private u:Z

.field private v:I

.field private w:I

.field private final x:[I

.field private final y:[I

.field final z:Landroid/animation/ValueAnimator;

.method static constructor <clinit>()V
  .registers 3
    const/4 v0, 1
    new-array v0, v0, [I
    const v1, 16842919
    const/4 v2, 0
    aput v1, v0, v2
  .line 1
    sput-object v0, Landroidx/recyclerview/widget/d;->D:[I
    new-array v0, v2, [I
  .line 2
    sput-object v0, Landroidx/recyclerview/widget/d;->E:[I
    return-void
.end method

.method constructor <init>(Landroidx/recyclerview/widget/RecyclerView;Landroid/graphics/drawable/StateListDrawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/StateListDrawable;Landroid/graphics/drawable/Drawable;III)V
  .registers 12
  .line 1
    invoke-direct { p0 }, Landroidx/recyclerview/widget/RecyclerView$m;-><init>()V
    const/4 v0, 0
  .line 2
    iput v0, p0, Landroidx/recyclerview/widget/d;->q:I
  .line 3
    iput v0, p0, Landroidx/recyclerview/widget/d;->r:I
  .line 4
    iput-boolean v0, p0, Landroidx/recyclerview/widget/d;->t:Z
  .line 5
    iput-boolean v0, p0, Landroidx/recyclerview/widget/d;->u:Z
  .line 6
    iput v0, p0, Landroidx/recyclerview/widget/d;->v:I
  .line 7
    iput v0, p0, Landroidx/recyclerview/widget/d;->w:I
    const/4 v1, 2
    new-array v2, v1, [I
  .line 8
    iput-object v2, p0, Landroidx/recyclerview/widget/d;->x:[I
    new-array v2, v1, [I
  .line 9
    iput-object v2, p0, Landroidx/recyclerview/widget/d;->y:[I
    new-array v1, v1, [F
  .line 10
    fill-array-data v1, :L0
  .line 11
    invoke-static { v1 }, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;
    move-result-object v1
    iput-object v1, p0, Landroidx/recyclerview/widget/d;->z:Landroid/animation/ValueAnimator;
  .line 12
    iput v0, p0, Landroidx/recyclerview/widget/d;->A:I
  .line 13
    new-instance v0, Landroidx/recyclerview/widget/d$a;
    invoke-direct { v0, p0 }, Landroidx/recyclerview/widget/d$a;-><init>(Landroidx/recyclerview/widget/d;)V
    iput-object v0, p0, Landroidx/recyclerview/widget/d;->B:Ljava/lang/Runnable;
  .line 14
    new-instance v0, Landroidx/recyclerview/widget/d$b;
    invoke-direct { v0, p0 }, Landroidx/recyclerview/widget/d$b;-><init>(Landroidx/recyclerview/widget/d;)V
    iput-object v0, p0, Landroidx/recyclerview/widget/d;->C:Landroidx/recyclerview/widget/RecyclerView$s;
  .line 15
    iput-object p2, p0, Landroidx/recyclerview/widget/d;->c:Landroid/graphics/drawable/StateListDrawable;
  .line 16
    iput-object p3, p0, Landroidx/recyclerview/widget/d;->d:Landroid/graphics/drawable/Drawable;
  .line 17
    iput-object p4, p0, Landroidx/recyclerview/widget/d;->g:Landroid/graphics/drawable/StateListDrawable;
  .line 18
    iput-object p5, p0, Landroidx/recyclerview/widget/d;->h:Landroid/graphics/drawable/Drawable;
  .line 19
    invoke-virtual { p2 }, Landroid/graphics/drawable/StateListDrawable;->getIntrinsicWidth()I
    move-result p2
    invoke-static { p6, p2 }, Ljava/lang/Math;->max(II)I
    move-result p2
    iput p2, p0, Landroidx/recyclerview/widget/d;->e:I
  .line 20
    invoke-virtual { p3 }, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I
    move-result p2
    invoke-static { p6, p2 }, Ljava/lang/Math;->max(II)I
    move-result p2
    iput p2, p0, Landroidx/recyclerview/widget/d;->f:I
  .line 21
    invoke-virtual { p4 }, Landroid/graphics/drawable/StateListDrawable;->getIntrinsicWidth()I
    move-result p2
    invoke-static { p6, p2 }, Ljava/lang/Math;->max(II)I
    move-result p2
    iput p2, p0, Landroidx/recyclerview/widget/d;->i:I
  .line 22
    invoke-virtual { p5 }, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I
    move-result p2
    invoke-static { p6, p2 }, Ljava/lang/Math;->max(II)I
    move-result p2
    iput p2, p0, Landroidx/recyclerview/widget/d;->j:I
  .line 23
    iput p7, p0, Landroidx/recyclerview/widget/d;->a:I
  .line 24
    iput p8, p0, Landroidx/recyclerview/widget/d;->b:I
  .line 25
    iget-object p2, p0, Landroidx/recyclerview/widget/d;->c:Landroid/graphics/drawable/StateListDrawable;
    const/16 p3, 255
    invoke-virtual { p2, p3 }, Landroid/graphics/drawable/StateListDrawable;->setAlpha(I)V
  .line 26
    iget-object p2, p0, Landroidx/recyclerview/widget/d;->d:Landroid/graphics/drawable/Drawable;
    invoke-virtual { p2, p3 }, Landroid/graphics/drawable/Drawable;->setAlpha(I)V
  .line 27
    iget-object p2, p0, Landroidx/recyclerview/widget/d;->z:Landroid/animation/ValueAnimator;
    new-instance p3, Landroidx/recyclerview/widget/d$c;
    invoke-direct { p3, p0 }, Landroidx/recyclerview/widget/d$c;-><init>(Landroidx/recyclerview/widget/d;)V
    invoke-virtual { p2, p3 }, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V
  .line 28
    iget-object p2, p0, Landroidx/recyclerview/widget/d;->z:Landroid/animation/ValueAnimator;
    new-instance p3, Landroidx/recyclerview/widget/d$d;
    invoke-direct { p3, p0 }, Landroidx/recyclerview/widget/d$d;-><init>(Landroidx/recyclerview/widget/d;)V
    invoke-virtual { p2, p3 }, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V
  .line 29
    invoke-virtual { p0, p1 }, Landroidx/recyclerview/widget/d;->j(Landroidx/recyclerview/widget/RecyclerView;)V
    return-void
  :L0
  .array-data 4
    0t 0t 0t 0t
    0t 0t -128t 63t
  .end array-data
.end method

.method private C(F)V
  .registers 10
  .line 1
    invoke-direct { p0 }, Landroidx/recyclerview/widget/d;->p()[I
    move-result-object v3
    const/4 v7, 0
  .line 2
    aget v0, v3, v7
    int-to-float v0, v0
    const/4 v1, 1
    aget v1, v3, v1
    int-to-float v1, v1
    invoke-static { v1, p1 }, Ljava/lang/Math;->min(FF)F
    move-result p1
    invoke-static { v0, p1 }, Ljava/lang/Math;->max(FF)F
    move-result p1
  .line 3
    iget v0, p0, Landroidx/recyclerview/widget/d;->l:I
    int-to-float v0, v0
    sub-float/2addr v0, p1
    invoke-static { v0 }, Ljava/lang/Math;->abs(F)F
    move-result v0
    const/high16 v1, 16384
    cmpg-float v0, v0, v1
    if-gez v0, :L0
    return-void
  :L0
  .line 4
    iget v1, p0, Landroidx/recyclerview/widget/d;->m:F
    iget-object v0, p0, Landroidx/recyclerview/widget/d;->s:Landroidx/recyclerview/widget/RecyclerView;
  .line 5
    invoke-virtual { v0 }, Landroidx/recyclerview/widget/RecyclerView;->computeVerticalScrollRange()I
    move-result v4
    iget-object v0, p0, Landroidx/recyclerview/widget/d;->s:Landroidx/recyclerview/widget/RecyclerView;
  .line 6
    invoke-virtual { v0 }, Landroidx/recyclerview/widget/RecyclerView;->computeVerticalScrollOffset()I
    move-result v5
    iget v6, p0, Landroidx/recyclerview/widget/d;->r:I
    move-object v0, p0
    move v2, p1
  .line 7
    invoke-direct/range { v0 .. v6 }, Landroidx/recyclerview/widget/d;->x(FF[IIII)I
    move-result v0
    if-eqz v0, :L1
  .line 8
    iget-object v1, p0, Landroidx/recyclerview/widget/d;->s:Landroidx/recyclerview/widget/RecyclerView;
    invoke-virtual { v1, v7, v0 }, Landroidx/recyclerview/widget/RecyclerView;->scrollBy(II)V
  :L1
  .line 9
    iput p1, p0, Landroidx/recyclerview/widget/d;->m:F
    return-void
.end method

.method private k()V
  .registers 3
  .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/d;->s:Landroidx/recyclerview/widget/RecyclerView;
    iget-object v1, p0, Landroidx/recyclerview/widget/d;->B:Ljava/lang/Runnable;
    invoke-virtual { v0, v1 }, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z
    return-void
.end method

.method private l()V
  .registers 3
  .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/d;->s:Landroidx/recyclerview/widget/RecyclerView;
    invoke-virtual { v0, p0 }, Landroidx/recyclerview/widget/RecyclerView;->V0(Landroidx/recyclerview/widget/RecyclerView$m;)V
  .line 2
    iget-object v0, p0, Landroidx/recyclerview/widget/d;->s:Landroidx/recyclerview/widget/RecyclerView;
    invoke-virtual { v0, p0 }, Landroidx/recyclerview/widget/RecyclerView;->W0(Landroidx/recyclerview/widget/RecyclerView$r;)V
  .line 3
    iget-object v0, p0, Landroidx/recyclerview/widget/d;->s:Landroidx/recyclerview/widget/RecyclerView;
    iget-object v1, p0, Landroidx/recyclerview/widget/d;->C:Landroidx/recyclerview/widget/RecyclerView$s;
    invoke-virtual { v0, v1 }, Landroidx/recyclerview/widget/RecyclerView;->X0(Landroidx/recyclerview/widget/RecyclerView$s;)V
  .line 4
    invoke-direct { p0 }, Landroidx/recyclerview/widget/d;->k()V
    return-void
.end method

.method private m(Landroid/graphics/Canvas;)V
  .registers 8
  .line 1
    iget v0, p0, Landroidx/recyclerview/widget/d;->r:I
  .line 2
    iget v1, p0, Landroidx/recyclerview/widget/d;->i:I
    sub-int/2addr v0, v1
  .line 3
    iget v2, p0, Landroidx/recyclerview/widget/d;->o:I
    iget v3, p0, Landroidx/recyclerview/widget/d;->n:I
    div-int/lit8 v4, v3, 2
    sub-int/2addr v2, v4
  .line 4
    iget-object v4, p0, Landroidx/recyclerview/widget/d;->g:Landroid/graphics/drawable/StateListDrawable;
    const/4 v5, 0
    invoke-virtual { v4, v5, v5, v3, v1 }, Landroid/graphics/drawable/StateListDrawable;->setBounds(IIII)V
  .line 5
    iget-object v1, p0, Landroidx/recyclerview/widget/d;->h:Landroid/graphics/drawable/Drawable;
    iget v3, p0, Landroidx/recyclerview/widget/d;->q:I
    iget v4, p0, Landroidx/recyclerview/widget/d;->j:I
  .line 6
    invoke-virtual { v1, v5, v5, v3, v4 }, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V
    int-to-float v1, v0
    const/4 v3, 0
  .line 7
    invoke-virtual { p1, v3, v1 }, Landroid/graphics/Canvas;->translate(FF)V
  .line 8
    iget-object v1, p0, Landroidx/recyclerview/widget/d;->h:Landroid/graphics/drawable/Drawable;
    invoke-virtual { v1, p1 }, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V
    int-to-float v1, v2
  .line 9
    invoke-virtual { p1, v1, v3 }, Landroid/graphics/Canvas;->translate(FF)V
  .line 10
    iget-object v1, p0, Landroidx/recyclerview/widget/d;->g:Landroid/graphics/drawable/StateListDrawable;
    invoke-virtual { v1, p1 }, Landroid/graphics/drawable/StateListDrawable;->draw(Landroid/graphics/Canvas;)V
    neg-int v1, v2
    int-to-float v1, v1
    neg-int v0, v0
    int-to-float v0, v0
  .line 11
    invoke-virtual { p1, v1, v0 }, Landroid/graphics/Canvas;->translate(FF)V
    return-void
.end method

.method private n(Landroid/graphics/Canvas;)V
  .registers 8
  .line 1
    iget v0, p0, Landroidx/recyclerview/widget/d;->q:I
  .line 2
    iget v1, p0, Landroidx/recyclerview/widget/d;->e:I
    sub-int/2addr v0, v1
  .line 3
    iget v2, p0, Landroidx/recyclerview/widget/d;->l:I
    iget v3, p0, Landroidx/recyclerview/widget/d;->k:I
    div-int/lit8 v4, v3, 2
    sub-int/2addr v2, v4
  .line 4
    iget-object v4, p0, Landroidx/recyclerview/widget/d;->c:Landroid/graphics/drawable/StateListDrawable;
    const/4 v5, 0
    invoke-virtual { v4, v5, v5, v1, v3 }, Landroid/graphics/drawable/StateListDrawable;->setBounds(IIII)V
  .line 5
    iget-object v1, p0, Landroidx/recyclerview/widget/d;->d:Landroid/graphics/drawable/Drawable;
    iget v3, p0, Landroidx/recyclerview/widget/d;->f:I
    iget v4, p0, Landroidx/recyclerview/widget/d;->r:I
  .line 6
    invoke-virtual { v1, v5, v5, v3, v4 }, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V
  .line 7
    invoke-direct { p0 }, Landroidx/recyclerview/widget/d;->s()Z
    move-result v1
    if-eqz v1, :L0
  .line 8
    iget-object v0, p0, Landroidx/recyclerview/widget/d;->d:Landroid/graphics/drawable/Drawable;
    invoke-virtual { v0, p1 }, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V
  .line 9
    iget v0, p0, Landroidx/recyclerview/widget/d;->e:I
    int-to-float v0, v0
    int-to-float v1, v2
    invoke-virtual { p1, v0, v1 }, Landroid/graphics/Canvas;->translate(FF)V
    const/high16 v0, -16512
    const/high16 v1, 16256
  .line 10
    invoke-virtual { p1, v0, v1 }, Landroid/graphics/Canvas;->scale(FF)V
  .line 11
    iget-object v0, p0, Landroidx/recyclerview/widget/d;->c:Landroid/graphics/drawable/StateListDrawable;
    invoke-virtual { v0, p1 }, Landroid/graphics/drawable/StateListDrawable;->draw(Landroid/graphics/Canvas;)V
  .line 12
    invoke-virtual { p1, v1, v1 }, Landroid/graphics/Canvas;->scale(FF)V
  .line 13
    iget v0, p0, Landroidx/recyclerview/widget/d;->e:I
    neg-int v0, v0
    int-to-float v0, v0
    neg-int v1, v2
    int-to-float v1, v1
    invoke-virtual { p1, v0, v1 }, Landroid/graphics/Canvas;->translate(FF)V
    goto :L1
  :L0
    int-to-float v1, v0
    const/4 v3, 0
  .line 14
    invoke-virtual { p1, v1, v3 }, Landroid/graphics/Canvas;->translate(FF)V
  .line 15
    iget-object v1, p0, Landroidx/recyclerview/widget/d;->d:Landroid/graphics/drawable/Drawable;
    invoke-virtual { v1, p1 }, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V
    int-to-float v1, v2
  .line 16
    invoke-virtual { p1, v3, v1 }, Landroid/graphics/Canvas;->translate(FF)V
  .line 17
    iget-object v1, p0, Landroidx/recyclerview/widget/d;->c:Landroid/graphics/drawable/StateListDrawable;
    invoke-virtual { v1, p1 }, Landroid/graphics/drawable/StateListDrawable;->draw(Landroid/graphics/Canvas;)V
    neg-int v0, v0
    int-to-float v0, v0
    neg-int v1, v2
    int-to-float v1, v1
  .line 18
    invoke-virtual { p1, v0, v1 }, Landroid/graphics/Canvas;->translate(FF)V
  :L1
    return-void
.end method

.method private o()[I
  .registers 4
  .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/d;->y:[I
    iget v1, p0, Landroidx/recyclerview/widget/d;->b:I
    const/4 v2, 0
    aput v1, v0, v2
  .line 2
    iget v2, p0, Landroidx/recyclerview/widget/d;->q:I
    sub-int/2addr v2, v1
    const/4 v1, 1
    aput v2, v0, v1
    return-object v0
.end method

.method private p()[I
  .registers 4
  .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/d;->x:[I
    iget v1, p0, Landroidx/recyclerview/widget/d;->b:I
    const/4 v2, 0
    aput v1, v0, v2
  .line 2
    iget v2, p0, Landroidx/recyclerview/widget/d;->r:I
    sub-int/2addr v2, v1
    const/4 v1, 1
    aput v2, v0, v1
    return-object v0
.end method

.method private r(F)V
  .registers 10
  .line 1
    invoke-direct { p0 }, Landroidx/recyclerview/widget/d;->o()[I
    move-result-object v3
    const/4 v7, 0
  .line 2
    aget v0, v3, v7
    int-to-float v0, v0
    const/4 v1, 1
    aget v1, v3, v1
    int-to-float v1, v1
    invoke-static { v1, p1 }, Ljava/lang/Math;->min(FF)F
    move-result p1
    invoke-static { v0, p1 }, Ljava/lang/Math;->max(FF)F
    move-result p1
  .line 3
    iget v0, p0, Landroidx/recyclerview/widget/d;->o:I
    int-to-float v0, v0
    sub-float/2addr v0, p1
    invoke-static { v0 }, Ljava/lang/Math;->abs(F)F
    move-result v0
    const/high16 v1, 16384
    cmpg-float v0, v0, v1
    if-gez v0, :L0
    return-void
  :L0
  .line 4
    iget v1, p0, Landroidx/recyclerview/widget/d;->p:F
    iget-object v0, p0, Landroidx/recyclerview/widget/d;->s:Landroidx/recyclerview/widget/RecyclerView;
  .line 5
    invoke-virtual { v0 }, Landroidx/recyclerview/widget/RecyclerView;->computeHorizontalScrollRange()I
    move-result v4
    iget-object v0, p0, Landroidx/recyclerview/widget/d;->s:Landroidx/recyclerview/widget/RecyclerView;
  .line 6
    invoke-virtual { v0 }, Landroidx/recyclerview/widget/RecyclerView;->computeHorizontalScrollOffset()I
    move-result v5
    iget v6, p0, Landroidx/recyclerview/widget/d;->q:I
    move-object v0, p0
    move v2, p1
  .line 7
    invoke-direct/range { v0 .. v6 }, Landroidx/recyclerview/widget/d;->x(FF[IIII)I
    move-result v0
    if-eqz v0, :L1
  .line 8
    iget-object v1, p0, Landroidx/recyclerview/widget/d;->s:Landroidx/recyclerview/widget/RecyclerView;
    invoke-virtual { v1, v0, v7 }, Landroidx/recyclerview/widget/RecyclerView;->scrollBy(II)V
  :L1
  .line 9
    iput p1, p0, Landroidx/recyclerview/widget/d;->p:F
    return-void
.end method

.method private s()Z
  .registers 3
  .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/d;->s:Landroidx/recyclerview/widget/RecyclerView;
    invoke-static { v0 }, Landroidx/core/view/v;->C(Landroid/view/View;)I
    move-result v0
    const/4 v1, 1
    if-ne v0, v1, :L0
    goto :L1
  :L0
    const/4 v1, 0
  :L1
    return v1
.end method

.method private w(I)V
  .registers 6
  .line 1
    invoke-direct { p0 }, Landroidx/recyclerview/widget/d;->k()V
  .line 2
    iget-object v0, p0, Landroidx/recyclerview/widget/d;->s:Landroidx/recyclerview/widget/RecyclerView;
    iget-object v1, p0, Landroidx/recyclerview/widget/d;->B:Ljava/lang/Runnable;
    int-to-long v2, p1
    invoke-virtual { v0, v1, v2, v3 }, Landroid/view/ViewGroup;->postDelayed(Ljava/lang/Runnable;J)Z
    return-void
.end method

.method private x(FF[IIII)I
  .registers 9
    const/4 v0, 1
  .line 1
    aget v0, p3, v0
    const/4 v1, 0
    aget p3, p3, v1
    sub-int/2addr v0, p3
    if-nez v0, :L0
    return v1
  :L0
    sub-float/2addr p2, p1
    int-to-float p1, v0
    div-float/2addr p2, p1
    sub-int/2addr p4, p6
    int-to-float p1, p4
    mul-float p2, p2, p1
    float-to-int p1, p2
    add-int/2addr p5, p1
    if-ge p5, p4, :L1
    if-ltz p5, :L1
    return p1
  :L1
    return v1
.end method

.method private z()V
  .registers 3
  .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/d;->s:Landroidx/recyclerview/widget/RecyclerView;
    invoke-virtual { v0, p0 }, Landroidx/recyclerview/widget/RecyclerView;->h(Landroidx/recyclerview/widget/RecyclerView$m;)V
  .line 2
    iget-object v0, p0, Landroidx/recyclerview/widget/d;->s:Landroidx/recyclerview/widget/RecyclerView;
    invoke-virtual { v0, p0 }, Landroidx/recyclerview/widget/RecyclerView;->j(Landroidx/recyclerview/widget/RecyclerView$r;)V
  .line 3
    iget-object v0, p0, Landroidx/recyclerview/widget/d;->s:Landroidx/recyclerview/widget/RecyclerView;
    iget-object v1, p0, Landroidx/recyclerview/widget/d;->C:Landroidx/recyclerview/widget/RecyclerView$s;
    invoke-virtual { v0, v1 }, Landroidx/recyclerview/widget/RecyclerView;->k(Landroidx/recyclerview/widget/RecyclerView$s;)V
    return-void
.end method

.method public A()V
  .registers 6
  .line 1
    iget v0, p0, Landroidx/recyclerview/widget/d;->A:I
    if-eqz v0, :L1
    const/4 v1, 3
    if-eq v0, v1, :L0
    goto :L2
  :L0
  .line 2
    iget-object v0, p0, Landroidx/recyclerview/widget/d;->z:Landroid/animation/ValueAnimator;
    invoke-virtual { v0 }, Landroid/animation/ValueAnimator;->cancel()V
  :L1
    const/4 v0, 1
  .line 3
    iput v0, p0, Landroidx/recyclerview/widget/d;->A:I
  .line 4
    iget-object v1, p0, Landroidx/recyclerview/widget/d;->z:Landroid/animation/ValueAnimator;
    const/4 v2, 2
    new-array v2, v2, [F
    const/4 v3, 0
    invoke-virtual { v1 }, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;
    move-result-object v4
    check-cast v4, Ljava/lang/Float;
    invoke-virtual { v4 }, Ljava/lang/Float;->floatValue()F
    move-result v4
    aput v4, v2, v3
    const/high16 v3, 16256
    aput v3, v2, v0
    invoke-virtual { v1, v2 }, Landroid/animation/ValueAnimator;->setFloatValues([F)V
  .line 5
    iget-object v0, p0, Landroidx/recyclerview/widget/d;->z:Landroid/animation/ValueAnimator;
    const-wide/16 v1, 500
    invoke-virtual { v0, v1, v2 }, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;
  .line 6
    iget-object v0, p0, Landroidx/recyclerview/widget/d;->z:Landroid/animation/ValueAnimator;
    const-wide/16 v1, 0
    invoke-virtual { v0, v1, v2 }, Landroid/animation/ValueAnimator;->setStartDelay(J)V
  .line 7
    iget-object v0, p0, Landroidx/recyclerview/widget/d;->z:Landroid/animation/ValueAnimator;
    invoke-virtual { v0 }, Landroid/animation/ValueAnimator;->start()V
  :L2
    return-void
.end method

.method B(II)V
  .registers 11
  .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/d;->s:Landroidx/recyclerview/widget/RecyclerView;
    invoke-virtual { v0 }, Landroidx/recyclerview/widget/RecyclerView;->computeVerticalScrollRange()I
    move-result v0
  .line 2
    iget v1, p0, Landroidx/recyclerview/widget/d;->r:I
    sub-int v2, v0, v1
    const/4 v3, 0
    const/4 v4, 1
    if-lez v2, :L0
  .line 3
    iget v2, p0, Landroidx/recyclerview/widget/d;->a:I
    if-lt v1, v2, :L0
    const/4 v2, 1
    goto :L1
  :L0
    const/4 v2, 0
  :L1
    iput-boolean v2, p0, Landroidx/recyclerview/widget/d;->t:Z
  .line 4
    iget-object v2, p0, Landroidx/recyclerview/widget/d;->s:Landroidx/recyclerview/widget/RecyclerView;
    invoke-virtual { v2 }, Landroidx/recyclerview/widget/RecyclerView;->computeHorizontalScrollRange()I
    move-result v2
  .line 5
    iget v5, p0, Landroidx/recyclerview/widget/d;->q:I
    sub-int v6, v2, v5
    if-lez v6, :L2
  .line 6
    iget v6, p0, Landroidx/recyclerview/widget/d;->a:I
    if-lt v5, v6, :L2
    const/4 v6, 1
    goto :L3
  :L2
    const/4 v6, 0
  :L3
    iput-boolean v6, p0, Landroidx/recyclerview/widget/d;->u:Z
  .line 7
    iget-boolean v7, p0, Landroidx/recyclerview/widget/d;->t:Z
    if-nez v7, :L5
    if-nez v6, :L5
  .line 8
    iget p1, p0, Landroidx/recyclerview/widget/d;->v:I
    if-eqz p1, :L4
  .line 9
    invoke-virtual { p0, v3 }, Landroidx/recyclerview/widget/d;->y(I)V
  :L4
    return-void
  :L5
  .line 10
    iget-boolean v3, p0, Landroidx/recyclerview/widget/d;->t:Z
    const/high16 v6, 16384
    if-eqz v3, :L6
    int-to-float p2, p2
    int-to-float v3, v1
    div-float v7, v3, v6
    add-float/2addr p2, v7
    mul-float v3, v3, p2
    int-to-float p2, v0
    div-float/2addr v3, p2
    float-to-int p2, v3
  .line 11
    iput p2, p0, Landroidx/recyclerview/widget/d;->l:I
    mul-int p2, v1, v1
  .line 12
    div-int/2addr p2, v0
    invoke-static { v1, p2 }, Ljava/lang/Math;->min(II)I
    move-result p2
    iput p2, p0, Landroidx/recyclerview/widget/d;->k:I
  :L6
  .line 13
    iget-boolean p2, p0, Landroidx/recyclerview/widget/d;->u:Z
    if-eqz p2, :L7
    int-to-float p1, p1
    int-to-float p2, v5
    div-float v0, p2, v6
    add-float/2addr p1, v0
    mul-float p2, p2, p1
    int-to-float p1, v2
    div-float/2addr p2, p1
    float-to-int p1, p2
  .line 14
    iput p1, p0, Landroidx/recyclerview/widget/d;->o:I
    mul-int p1, v5, v5
  .line 15
    div-int/2addr p1, v2
    invoke-static { v5, p1 }, Ljava/lang/Math;->min(II)I
    move-result p1
    iput p1, p0, Landroidx/recyclerview/widget/d;->n:I
  :L7
  .line 16
    iget p1, p0, Landroidx/recyclerview/widget/d;->v:I
    if-eqz p1, :L8
    if-ne p1, v4, :L9
  :L8
  .line 17
    invoke-virtual { p0, v4 }, Landroidx/recyclerview/widget/d;->y(I)V
  :L9
    return-void
.end method

.method public a(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/MotionEvent;)Z
  .registers 8
  .line 1
    iget p1, p0, Landroidx/recyclerview/widget/d;->v:I
    const/4 v0, 0
    const/4 v1, 2
    const/4 v2, 1
    if-ne p1, v2, :L3
  .line 2
    invoke-virtual { p2 }, Landroid/view/MotionEvent;->getX()F
    move-result p1
    invoke-virtual { p2 }, Landroid/view/MotionEvent;->getY()F
    move-result v3
    invoke-virtual { p0, p1, v3 }, Landroidx/recyclerview/widget/d;->u(FF)Z
    move-result p1
  .line 3
    invoke-virtual { p2 }, Landroid/view/MotionEvent;->getX()F
    move-result v3
    invoke-virtual { p2 }, Landroid/view/MotionEvent;->getY()F
    move-result v4
    invoke-virtual { p0, v3, v4 }, Landroidx/recyclerview/widget/d;->t(FF)Z
    move-result v3
  .line 4
    invoke-virtual { p2 }, Landroid/view/MotionEvent;->getAction()I
    move-result v4
    if-nez v4, :L5
    if-nez p1, :L0
    if-eqz v3, :L5
  :L0
    if-eqz v3, :L1
  .line 5
    iput v2, p0, Landroidx/recyclerview/widget/d;->w:I
  .line 6
    invoke-virtual { p2 }, Landroid/view/MotionEvent;->getX()F
    move-result p1
    float-to-int p1, p1
    int-to-float p1, p1
    iput p1, p0, Landroidx/recyclerview/widget/d;->p:F
    goto :L2
  :L1
    if-eqz p1, :L2
  .line 7
    iput v1, p0, Landroidx/recyclerview/widget/d;->w:I
  .line 8
    invoke-virtual { p2 }, Landroid/view/MotionEvent;->getY()F
    move-result p1
    float-to-int p1, p1
    int-to-float p1, p1
    iput p1, p0, Landroidx/recyclerview/widget/d;->m:F
  :L2
  .line 9
    invoke-virtual { p0, v1 }, Landroidx/recyclerview/widget/d;->y(I)V
    goto :L4
  :L3
    if-ne p1, v1, :L5
  :L4
    const/4 v0, 1
  :L5
    return v0
.end method

.method public b(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/MotionEvent;)V
  .registers 7
  .line 1
    iget p1, p0, Landroidx/recyclerview/widget/d;->v:I
    if-nez p1, :L0
    return-void
  :L0
  .line 2
    invoke-virtual { p2 }, Landroid/view/MotionEvent;->getAction()I
    move-result p1
    const/4 v0, 1
    const/4 v1, 2
    if-nez p1, :L4
  .line 3
    invoke-virtual { p2 }, Landroid/view/MotionEvent;->getX()F
    move-result p1
    invoke-virtual { p2 }, Landroid/view/MotionEvent;->getY()F
    move-result v2
    invoke-virtual { p0, p1, v2 }, Landroidx/recyclerview/widget/d;->u(FF)Z
    move-result p1
  .line 4
    invoke-virtual { p2 }, Landroid/view/MotionEvent;->getX()F
    move-result v2
    invoke-virtual { p2 }, Landroid/view/MotionEvent;->getY()F
    move-result v3
    invoke-virtual { p0, v2, v3 }, Landroidx/recyclerview/widget/d;->t(FF)Z
    move-result v2
    if-nez p1, :L1
    if-eqz v2, :L7
  :L1
    if-eqz v2, :L2
  .line 5
    iput v0, p0, Landroidx/recyclerview/widget/d;->w:I
  .line 6
    invoke-virtual { p2 }, Landroid/view/MotionEvent;->getX()F
    move-result p1
    float-to-int p1, p1
    int-to-float p1, p1
    iput p1, p0, Landroidx/recyclerview/widget/d;->p:F
    goto :L3
  :L2
    if-eqz p1, :L3
  .line 7
    iput v1, p0, Landroidx/recyclerview/widget/d;->w:I
  .line 8
    invoke-virtual { p2 }, Landroid/view/MotionEvent;->getY()F
    move-result p1
    float-to-int p1, p1
    int-to-float p1, p1
    iput p1, p0, Landroidx/recyclerview/widget/d;->m:F
  :L3
  .line 9
    invoke-virtual { p0, v1 }, Landroidx/recyclerview/widget/d;->y(I)V
    goto :L7
  :L4
  .line 10
    invoke-virtual { p2 }, Landroid/view/MotionEvent;->getAction()I
    move-result p1
    if-ne p1, v0, :L5
    iget p1, p0, Landroidx/recyclerview/widget/d;->v:I
    if-ne p1, v1, :L5
    const/4 p1, 0
  .line 11
    iput p1, p0, Landroidx/recyclerview/widget/d;->m:F
  .line 12
    iput p1, p0, Landroidx/recyclerview/widget/d;->p:F
  .line 13
    invoke-virtual { p0, v0 }, Landroidx/recyclerview/widget/d;->y(I)V
    const/4 p1, 0
  .line 14
    iput p1, p0, Landroidx/recyclerview/widget/d;->w:I
    goto :L7
  :L5
  .line 15
    invoke-virtual { p2 }, Landroid/view/MotionEvent;->getAction()I
    move-result p1
    if-ne p1, v1, :L7
    iget p1, p0, Landroidx/recyclerview/widget/d;->v:I
    if-ne p1, v1, :L7
  .line 16
    invoke-virtual { p0 }, Landroidx/recyclerview/widget/d;->A()V
  .line 17
    iget p1, p0, Landroidx/recyclerview/widget/d;->w:I
    if-ne p1, v0, :L6
  .line 18
    invoke-virtual { p2 }, Landroid/view/MotionEvent;->getX()F
    move-result p1
    invoke-direct { p0, p1 }, Landroidx/recyclerview/widget/d;->r(F)V
  :L6
  .line 19
    iget p1, p0, Landroidx/recyclerview/widget/d;->w:I
    if-ne p1, v1, :L7
  .line 20
    invoke-virtual { p2 }, Landroid/view/MotionEvent;->getY()F
    move-result p1
    invoke-direct { p0, p1 }, Landroidx/recyclerview/widget/d;->C(F)V
  :L7
    return-void
.end method

.method public c(Z)V
  .registers 2
    return-void
.end method

.method public i(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$z;)V
  .registers 4
  .line 1
    iget p2, p0, Landroidx/recyclerview/widget/d;->q:I
    iget-object p3, p0, Landroidx/recyclerview/widget/d;->s:Landroidx/recyclerview/widget/RecyclerView;
    invoke-virtual { p3 }, Landroid/view/ViewGroup;->getWidth()I
    move-result p3
    if-ne p2, p3, :L3
    iget p2, p0, Landroidx/recyclerview/widget/d;->r:I
    iget-object p3, p0, Landroidx/recyclerview/widget/d;->s:Landroidx/recyclerview/widget/RecyclerView;
  .line 2
    invoke-virtual { p3 }, Landroid/view/ViewGroup;->getHeight()I
    move-result p3
    if-eq p2, p3, :L0
    goto :L3
  :L0
  .line 3
    iget p2, p0, Landroidx/recyclerview/widget/d;->A:I
    if-eqz p2, :L2
  .line 4
    iget-boolean p2, p0, Landroidx/recyclerview/widget/d;->t:Z
    if-eqz p2, :L1
  .line 5
    invoke-direct { p0, p1 }, Landroidx/recyclerview/widget/d;->n(Landroid/graphics/Canvas;)V
  :L1
  .line 6
    iget-boolean p2, p0, Landroidx/recyclerview/widget/d;->u:Z
    if-eqz p2, :L2
  .line 7
    invoke-direct { p0, p1 }, Landroidx/recyclerview/widget/d;->m(Landroid/graphics/Canvas;)V
  :L2
    return-void
  :L3
  .line 8
    iget-object p1, p0, Landroidx/recyclerview/widget/d;->s:Landroidx/recyclerview/widget/RecyclerView;
    invoke-virtual { p1 }, Landroid/view/ViewGroup;->getWidth()I
    move-result p1
    iput p1, p0, Landroidx/recyclerview/widget/d;->q:I
  .line 9
    iget-object p1, p0, Landroidx/recyclerview/widget/d;->s:Landroidx/recyclerview/widget/RecyclerView;
    invoke-virtual { p1 }, Landroid/view/ViewGroup;->getHeight()I
    move-result p1
    iput p1, p0, Landroidx/recyclerview/widget/d;->r:I
    const/4 p1, 0
  .line 10
    invoke-virtual { p0, p1 }, Landroidx/recyclerview/widget/d;->y(I)V
    return-void
.end method

.method public j(Landroidx/recyclerview/widget/RecyclerView;)V
  .registers 3
  .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/d;->s:Landroidx/recyclerview/widget/RecyclerView;
    if-ne v0, p1, :L0
    return-void
  :L0
    if-eqz v0, :L1
  .line 2
    invoke-direct { p0 }, Landroidx/recyclerview/widget/d;->l()V
  :L1
  .line 3
    iput-object p1, p0, Landroidx/recyclerview/widget/d;->s:Landroidx/recyclerview/widget/RecyclerView;
    if-eqz p1, :L2
  .line 4
    invoke-direct { p0 }, Landroidx/recyclerview/widget/d;->z()V
  :L2
    return-void
.end method

.method q(I)V
  .registers 7
  .line 1
    iget v0, p0, Landroidx/recyclerview/widget/d;->A:I
    const/4 v1, 2
    const/4 v2, 1
    if-eq v0, v2, :L0
    if-eq v0, v1, :L1
    goto :L2
  :L0
  .line 2
    iget-object v0, p0, Landroidx/recyclerview/widget/d;->z:Landroid/animation/ValueAnimator;
    invoke-virtual { v0 }, Landroid/animation/ValueAnimator;->cancel()V
  :L1
    const/4 v0, 3
  .line 3
    iput v0, p0, Landroidx/recyclerview/widget/d;->A:I
  .line 4
    iget-object v0, p0, Landroidx/recyclerview/widget/d;->z:Landroid/animation/ValueAnimator;
    new-array v1, v1, [F
    const/4 v3, 0
    invoke-virtual { v0 }, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;
    move-result-object v4
    check-cast v4, Ljava/lang/Float;
    invoke-virtual { v4 }, Ljava/lang/Float;->floatValue()F
    move-result v4
    aput v4, v1, v3
    const/4 v3, 0
    aput v3, v1, v2
    invoke-virtual { v0, v1 }, Landroid/animation/ValueAnimator;->setFloatValues([F)V
  .line 5
    iget-object v0, p0, Landroidx/recyclerview/widget/d;->z:Landroid/animation/ValueAnimator;
    int-to-long v1, p1
    invoke-virtual { v0, v1, v2 }, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;
  .line 6
    iget-object p1, p0, Landroidx/recyclerview/widget/d;->z:Landroid/animation/ValueAnimator;
    invoke-virtual { p1 }, Landroid/animation/ValueAnimator;->start()V
  :L2
    return-void
.end method

.method t(FF)Z
  .registers 5
  .line 1
    iget v0, p0, Landroidx/recyclerview/widget/d;->r:I
    iget v1, p0, Landroidx/recyclerview/widget/d;->i:I
    sub-int/2addr v0, v1
    int-to-float v0, v0
    cmpl-float p2, p2, v0
    if-ltz p2, :L0
    iget p2, p0, Landroidx/recyclerview/widget/d;->o:I
    iget v0, p0, Landroidx/recyclerview/widget/d;->n:I
    div-int/lit8 v1, v0, 2
    sub-int v1, p2, v1
    int-to-float v1, v1
    cmpl-float v1, p1, v1
    if-ltz v1, :L0
    div-int/lit8 v0, v0, 2
    add-int/2addr p2, v0
    int-to-float p2, p2
    cmpg-float p1, p1, p2
    if-gtz p1, :L0
    const/4 p1, 1
    goto :L1
  :L0
    const/4 p1, 0
  :L1
    return p1
.end method

.method u(FF)Z
  .registers 5
  .line 1
    invoke-direct { p0 }, Landroidx/recyclerview/widget/d;->s()Z
    move-result v0
    if-eqz v0, :L0
    iget v0, p0, Landroidx/recyclerview/widget/d;->e:I
    div-int/lit8 v0, v0, 2
    int-to-float v0, v0
    cmpg-float p1, p1, v0
    if-gtz p1, :L2
    goto :L1
  :L0
    iget v0, p0, Landroidx/recyclerview/widget/d;->q:I
    iget v1, p0, Landroidx/recyclerview/widget/d;->e:I
    sub-int/2addr v0, v1
    int-to-float v0, v0
    cmpl-float p1, p1, v0
    if-ltz p1, :L2
  :L1
    iget p1, p0, Landroidx/recyclerview/widget/d;->l:I
    iget v0, p0, Landroidx/recyclerview/widget/d;->k:I
    div-int/lit8 v1, v0, 2
    sub-int v1, p1, v1
    int-to-float v1, v1
    cmpl-float v1, p2, v1
    if-ltz v1, :L2
    div-int/lit8 v0, v0, 2
    add-int/2addr p1, v0
    int-to-float p1, p1
    cmpg-float p1, p2, p1
    if-gtz p1, :L2
    const/4 p1, 1
    goto :L3
  :L2
    const/4 p1, 0
  :L3
    return p1
.end method

.method v()V
  .registers 2
  .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/d;->s:Landroidx/recyclerview/widget/RecyclerView;
    invoke-virtual { v0 }, Landroid/view/ViewGroup;->invalidate()V
    return-void
.end method

.method y(I)V
  .registers 5
    const/4 v0, 2
    if-ne p1, v0, :L0
  .line 1
    iget v1, p0, Landroidx/recyclerview/widget/d;->v:I
    if-eq v1, v0, :L0
  .line 2
    iget-object v1, p0, Landroidx/recyclerview/widget/d;->c:Landroid/graphics/drawable/StateListDrawable;
    sget-object v2, Landroidx/recyclerview/widget/d;->D:[I
    invoke-virtual { v1, v2 }, Landroid/graphics/drawable/StateListDrawable;->setState([I)Z
  .line 3
    invoke-direct { p0 }, Landroidx/recyclerview/widget/d;->k()V
  :L0
    if-nez p1, :L1
  .line 4
    invoke-virtual { p0 }, Landroidx/recyclerview/widget/d;->v()V
    goto :L2
  :L1
  .line 5
    invoke-virtual { p0 }, Landroidx/recyclerview/widget/d;->A()V
  :L2
  .line 6
    iget v1, p0, Landroidx/recyclerview/widget/d;->v:I
    if-ne v1, v0, :L3
    if-eq p1, v0, :L3
  .line 7
    iget-object v0, p0, Landroidx/recyclerview/widget/d;->c:Landroid/graphics/drawable/StateListDrawable;
    sget-object v1, Landroidx/recyclerview/widget/d;->E:[I
    invoke-virtual { v0, v1 }, Landroid/graphics/drawable/StateListDrawable;->setState([I)Z
    const/16 v0, 1200
  .line 8
    invoke-direct { p0, v0 }, Landroidx/recyclerview/widget/d;->w(I)V
    goto :L4
  :L3
    const/4 v0, 1
    if-ne p1, v0, :L4
    const/16 v0, 1500
  .line 9
    invoke-direct { p0, v0 }, Landroidx/recyclerview/widget/d;->w(I)V
  :L4
  .line 10
    iput p1, p0, Landroidx/recyclerview/widget/d;->v:I
    return-void
.end method
