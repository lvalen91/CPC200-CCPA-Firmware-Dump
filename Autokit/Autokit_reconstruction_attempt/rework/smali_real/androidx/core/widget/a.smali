.class public abstract Landroidx/core/widget/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/widget/a$a;,
        Landroidx/core/widget/a$b;
    }
.end annotation


# static fields
.field private static final s:I


# instance fields
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


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v0

    sput v0, Landroidx/core/widget/a;->s:I

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .registers 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroidx/core/widget/a$a;

    invoke-direct {v0}, Landroidx/core/widget/a$a;-><init>()V

    iput-object v0, p0, Landroidx/core/widget/a;->b:Landroidx/core/widget/a$a;

    .line 3
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    iput-object v0, p0, Landroidx/core/widget/a;->c:Landroid/view/animation/Interpolator;

    const/4 v0, 0x2

    new-array v1, v0, [F

    .line 4
    fill-array-data v1, :array_7c

    iput-object v1, p0, Landroidx/core/widget/a;->f:[F

    new-array v1, v0, [F

    .line 5
    fill-array-data v1, :array_84

    iput-object v1, p0, Landroidx/core/widget/a;->g:[F

    new-array v1, v0, [F

    .line 6
    fill-array-data v1, :array_8c

    iput-object v1, p0, Landroidx/core/widget/a;->j:[F

    new-array v1, v0, [F

    .line 7
    fill-array-data v1, :array_94

    iput-object v1, p0, Landroidx/core/widget/a;->k:[F

    new-array v0, v0, [F

    .line 8
    fill-array-data v0, :array_9c

    iput-object v0, p0, Landroidx/core/widget/a;->l:[F

    .line 9
    iput-object p1, p0, Landroidx/core/widget/a;->d:Landroid/view/View;

    .line 10
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    .line 11
    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    const v0, 0x44c4e000    # 1575.0f

    mul-float v0, v0, p1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    const v2, 0x439d8000    # 315.0f

    mul-float p1, p1, v2

    add-float/2addr p1, v1

    float-to-int p1, p1

    int-to-float v0, v0

    .line 12
    invoke-virtual {p0, v0, v0}, Landroidx/core/widget/a;->o(FF)Landroidx/core/widget/a;

    int-to-float p1, p1

    .line 13
    invoke-virtual {p0, p1, p1}, Landroidx/core/widget/a;->p(FF)Landroidx/core/widget/a;

    const/4 p1, 0x1

    .line 14
    invoke-virtual {p0, p1}, Landroidx/core/widget/a;->l(I)Landroidx/core/widget/a;

    const p1, 0x7f7fffff    # Float.MAX_VALUE

    .line 15
    invoke-virtual {p0, p1, p1}, Landroidx/core/widget/a;->n(FF)Landroidx/core/widget/a;

    const p1, 0x3e4ccccd    # 0.2f

    .line 16
    invoke-virtual {p0, p1, p1}, Landroidx/core/widget/a;->s(FF)Landroidx/core/widget/a;

    const/high16 p1, 0x3f800000    # 1.0f

    .line 17
    invoke-virtual {p0, p1, p1}, Landroidx/core/widget/a;->t(FF)Landroidx/core/widget/a;

    .line 18
    sget p1, Landroidx/core/widget/a;->s:I

    invoke-virtual {p0, p1}, Landroidx/core/widget/a;->k(I)Landroidx/core/widget/a;

    const/16 p1, 0x1f4

    .line 19
    invoke-virtual {p0, p1}, Landroidx/core/widget/a;->r(I)Landroidx/core/widget/a;

    .line 20
    invoke-virtual {p0, p1}, Landroidx/core/widget/a;->q(I)Landroidx/core/widget/a;

    return-void

    :array_7c
    .array-data 4
        0x0
        0x0
    .end array-data

    :array_84
    .array-data 4
        0x7f7fffff    # Float.MAX_VALUE
        0x7f7fffff    # Float.MAX_VALUE
    .end array-data

    :array_8c
    .array-data 4
        0x0
        0x0
    .end array-data

    :array_94
    .array-data 4
        0x0
        0x0
    .end array-data

    :array_9c
    .array-data 4
        0x7f7fffff    # Float.MAX_VALUE
        0x7f7fffff    # Float.MAX_VALUE
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
    invoke-direct {p0, v0, p3, v1, p2}, Landroidx/core/widget/a;->h(FFFF)F

    move-result p2

    const/4 p3, 0x0

    cmpl-float v0, p2, p3

    if-nez v0, :cond_12

    return p3

    .line 4
    :cond_12
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

    if-lez p3, :cond_2b

    mul-float p2, p2, v0

    .line 7
    invoke-static {p2, v1, p1}, Landroidx/core/widget/a;->e(FFF)F

    move-result p1

    return p1

    :cond_2b
    neg-float p2, p2

    mul-float p2, p2, v0

    .line 8
    invoke-static {p2, v1, p1}, Landroidx/core/widget/a;->e(FFF)F

    move-result p1

    neg-float p1, p1

    return p1
.end method

.method static e(FFF)F
    .registers 4

    cmpl-float v0, p0, p2

    if-lez v0, :cond_5

    return p2

    :cond_5
    cmpg-float p2, p0, p1

    if-gez p2, :cond_a

    return p1

    :cond_a
    return p0
.end method

.method static f(III)I
    .registers 3

    if-le p0, p2, :cond_3

    return p2

    :cond_3
    if-ge p0, p1, :cond_6

    return p1

    :cond_6
    return p0
.end method

.method private g(FF)F
    .registers 7

    const/4 v0, 0x0

    cmpl-float v1, p2, v0

    if-nez v1, :cond_6

    return v0

    .line 1
    :cond_6
    iget v1, p0, Landroidx/core/widget/a;->h:I

    const/4 v2, 0x1

    if-eqz v1, :cond_18

    if-eq v1, v2, :cond_18

    const/4 v2, 0x2

    if-eq v1, v2, :cond_11

    goto :goto_2e

    :cond_11
    cmpg-float v1, p1, v0

    if-gez v1, :cond_2e

    neg-float p2, p2

    div-float/2addr p1, p2

    return p1

    :cond_18
    cmpg-float v1, p1, p2

    if-gez v1, :cond_2e

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v3, p1, v0

    if-ltz v3, :cond_25

    div-float/2addr p1, p2

    sub-float/2addr v1, p1

    return v1

    .line 2
    :cond_25
    iget-boolean p1, p0, Landroidx/core/widget/a;->p:Z

    if-eqz p1, :cond_2e

    iget p1, p0, Landroidx/core/widget/a;->h:I

    if-ne p1, v2, :cond_2e

    return v1

    :cond_2e
    :goto_2e
    return v0
.end method

.method private h(FFFF)F
    .registers 6

    mul-float p1, p1, p2

    const/4 v0, 0x0

    .line 1
    invoke-static {p1, v0, p3}, Landroidx/core/widget/a;->e(FFF)F

    move-result p1

    .line 2
    invoke-direct {p0, p4, p1}, Landroidx/core/widget/a;->g(FF)F

    move-result p3

    sub-float/2addr p2, p4

    .line 3
    invoke-direct {p0, p2, p1}, Landroidx/core/widget/a;->g(FF)F

    move-result p1

    sub-float/2addr p1, p3

    cmpg-float p2, p1, v0

    if-gez p2, :cond_1e

    .line 4
    iget-object p2, p0, Landroidx/core/widget/a;->c:Landroid/view/animation/Interpolator;

    neg-float p1, p1

    invoke-interface {p2, p1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result p1

    neg-float p1, p1

    goto :goto_28

    :cond_1e
    cmpl-float p2, p1, v0

    if-lez p2, :cond_31

    .line 5
    iget-object p2, p0, Landroidx/core/widget/a;->c:Landroid/view/animation/Interpolator;

    invoke-interface {p2, p1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result p1

    :goto_28
    const/high16 p2, -0x40800000    # -1.0f

    const/high16 p3, 0x3f800000    # 1.0f

    .line 6
    invoke-static {p1, p2, p3}, Landroidx/core/widget/a;->e(FFF)F

    move-result p1

    return p1

    :cond_31
    return v0
.end method

.method private i()V
    .registers 2

    .line 1
    iget-boolean v0, p0, Landroidx/core/widget/a;->n:Z

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Landroidx/core/widget/a;->p:Z

    goto :goto_d

    .line 3
    :cond_8
    iget-object v0, p0, Landroidx/core/widget/a;->b:Landroidx/core/widget/a$a;

    invoke-virtual {v0}, Landroidx/core/widget/a$a;->i()V

    :goto_d
    return-void
.end method

.method private v()V
    .registers 7

    .line 1
    iget-object v0, p0, Landroidx/core/widget/a;->e:Ljava/lang/Runnable;

    if-nez v0, :cond_b

    .line 2
    new-instance v0, Landroidx/core/widget/a$b;

    invoke-direct {v0, p0}, Landroidx/core/widget/a$b;-><init>(Landroidx/core/widget/a;)V

    iput-object v0, p0, Landroidx/core/widget/a;->e:Ljava/lang/Runnable;

    :cond_b
    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Landroidx/core/widget/a;->p:Z

    .line 4
    iput-boolean v0, p0, Landroidx/core/widget/a;->n:Z

    .line 5
    iget-boolean v1, p0, Landroidx/core/widget/a;->m:Z

    if-nez v1, :cond_21

    iget v1, p0, Landroidx/core/widget/a;->i:I

    if-lez v1, :cond_21

    .line 6
    iget-object v2, p0, Landroidx/core/widget/a;->d:Landroid/view/View;

    iget-object v3, p0, Landroidx/core/widget/a;->e:Ljava/lang/Runnable;

    int-to-long v4, v1

    invoke-static {v2, v3, v4, v5}, Landroidx/core/view/v;->h0(Landroid/view/View;Ljava/lang/Runnable;J)V

    goto :goto_26

    .line 7
    :cond_21
    iget-object v1, p0, Landroidx/core/widget/a;->e:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 8
    :goto_26
    iput-boolean v0, p0, Landroidx/core/widget/a;->m:Z

    return-void
.end method


# virtual methods
.method public abstract a(I)Z
.end method

.method public abstract b(I)Z
.end method

.method c()V
    .registers 9

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-wide v0, v2

    .line 2
    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v0

    .line 3
    iget-object v1, p0, Landroidx/core/widget/a;->d:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 4
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

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

    if-eqz v0, :cond_9

    if-nez p1, :cond_9

    .line 2
    invoke-direct {p0}, Landroidx/core/widget/a;->i()V

    .line 3
    :cond_9
    iput-boolean p1, p0, Landroidx/core/widget/a;->q:Z

    return-object p0
.end method

.method public n(FF)Landroidx/core/widget/a;
    .registers 5

    .line 1
    iget-object v0, p0, Landroidx/core/widget/a;->g:[F

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 p1, 0x1

    .line 2
    aput p2, v0, p1

    return-object p0
.end method

.method public o(FF)Landroidx/core/widget/a;
    .registers 6

    .line 1
    iget-object v0, p0, Landroidx/core/widget/a;->l:[F

    const/high16 v1, 0x447a0000    # 1000.0f

    div-float/2addr p1, v1

    const/4 v2, 0x0

    aput p1, v0, v2

    div-float/2addr p2, v1

    const/4 p1, 0x1

    .line 2
    aput p2, v0, p1

    return-object p0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 8

    .line 1
    iget-boolean v0, p0, Landroidx/core/widget/a;->q:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 2
    :cond_6
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1a

    if-eq v0, v2, :cond_16

    const/4 v3, 0x2

    if-eq v0, v3, :cond_1e

    const/4 p1, 0x3

    if-eq v0, p1, :cond_16

    goto :goto_58

    .line 3
    :cond_16
    invoke-direct {p0}, Landroidx/core/widget/a;->i()V

    goto :goto_58

    .line 4
    :cond_1a
    iput-boolean v2, p0, Landroidx/core/widget/a;->o:Z

    .line 5
    iput-boolean v1, p0, Landroidx/core/widget/a;->m:Z

    .line 6
    :cond_1e
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Landroidx/core/widget/a;->d:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    int-to-float v4, v4

    .line 7
    invoke-direct {p0, v1, v0, v3, v4}, Landroidx/core/widget/a;->d(IFFF)F

    move-result v0

    .line 8
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    int-to-float p1, p1

    iget-object v3, p0, Landroidx/core/widget/a;->d:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    .line 9
    invoke-direct {p0, v2, p2, p1, v3}, Landroidx/core/widget/a;->d(IFFF)F

    move-result p1

    .line 10
    iget-object p2, p0, Landroidx/core/widget/a;->b:Landroidx/core/widget/a$a;

    invoke-virtual {p2, v0, p1}, Landroidx/core/widget/a$a;->l(FF)V

    .line 11
    iget-boolean p1, p0, Landroidx/core/widget/a;->p:Z

    if-nez p1, :cond_58

    invoke-virtual {p0}, Landroidx/core/widget/a;->u()Z

    move-result p1

    if-eqz p1, :cond_58

    .line 12
    invoke-direct {p0}, Landroidx/core/widget/a;->v()V

    .line 13
    :cond_58
    :goto_58
    iget-boolean p1, p0, Landroidx/core/widget/a;->r:Z

    if-eqz p1, :cond_61

    iget-boolean p1, p0, Landroidx/core/widget/a;->p:Z

    if-eqz p1, :cond_61

    const/4 v1, 0x1

    :cond_61
    return v1
.end method

.method public p(FF)Landroidx/core/widget/a;
    .registers 6

    .line 1
    iget-object v0, p0, Landroidx/core/widget/a;->k:[F

    const/high16 v1, 0x447a0000    # 1000.0f

    div-float/2addr p1, v1

    const/4 v2, 0x0

    aput p1, v0, v2

    div-float/2addr p2, v1

    const/4 p1, 0x1

    .line 2
    aput p2, v0, p1

    return-object p0
.end method

.method public q(I)Landroidx/core/widget/a;
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/core/widget/a;->b:Landroidx/core/widget/a$a;

    invoke-virtual {v0, p1}, Landroidx/core/widget/a$a;->j(I)V

    return-object p0
.end method

.method public r(I)Landroidx/core/widget/a;
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/core/widget/a;->b:Landroidx/core/widget/a$a;

    invoke-virtual {v0, p1}, Landroidx/core/widget/a$a;->k(I)V

    return-object p0
.end method

.method public s(FF)Landroidx/core/widget/a;
    .registers 5

    .line 1
    iget-object v0, p0, Landroidx/core/widget/a;->f:[F

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 p1, 0x1

    .line 2
    aput p2, v0, p1

    return-object p0
.end method

.method public t(FF)Landroidx/core/widget/a;
    .registers 6

    .line 1
    iget-object v0, p0, Landroidx/core/widget/a;->j:[F

    const/high16 v1, 0x447a0000    # 1000.0f

    div-float/2addr p1, v1

    const/4 v2, 0x0

    aput p1, v0, v2

    div-float/2addr p2, v1

    const/4 p1, 0x1

    .line 2
    aput p2, v0, p1

    return-object p0
.end method

.method u()Z
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/core/widget/a;->b:Landroidx/core/widget/a$a;

    .line 2
    invoke-virtual {v0}, Landroidx/core/widget/a$a;->f()I

    move-result v1

    .line 3
    invoke-virtual {v0}, Landroidx/core/widget/a$a;->d()I

    move-result v0

    if-eqz v1, :cond_12

    .line 4
    invoke-virtual {p0, v1}, Landroidx/core/widget/a;->b(I)Z

    move-result v1

    if-nez v1, :cond_1a

    :cond_12
    if-eqz v0, :cond_1c

    .line 5
    invoke-virtual {p0, v0}, Landroidx/core/widget/a;->a(I)Z

    move-result v0

    if-eqz v0, :cond_1c

    :cond_1a
    const/4 v0, 0x1

    goto :goto_1d

    :cond_1c
    const/4 v0, 0x0

    :goto_1d
    return v0
.end method
