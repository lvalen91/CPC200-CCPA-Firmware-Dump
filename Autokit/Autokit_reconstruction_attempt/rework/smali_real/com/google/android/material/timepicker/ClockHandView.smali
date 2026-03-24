.class Lcom/google/android/material/timepicker/ClockHandView;
.super Landroid/view/View;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/timepicker/ClockHandView$c;,
        Lcom/google/android/material/timepicker/ClockHandView$d;
    }
.end annotation


# instance fields
.field private b:Landroid/animation/ValueAnimator;

.field private c:Z

.field private d:F

.field private e:F

.field private f:Z

.field private g:I

.field private final h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/material/timepicker/ClockHandView$d;",
            ">;"
        }
    .end annotation
.end field

.field private final i:I

.field private final j:F

.field private final k:Landroid/graphics/Paint;

.field private final l:Landroid/graphics/RectF;

.field private final m:I

.field private n:F

.field private o:Z

.field private p:Lcom/google/android/material/timepicker/ClockHandView$c;

.field private q:D

.field private r:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .line 1
    sget v0, Ld/c/a/a/b;->materialClockStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/material/timepicker/ClockHandView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 6

    .line 2
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/timepicker/ClockHandView;->h:Ljava/util/List;

    .line 4
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/timepicker/ClockHandView;->k:Landroid/graphics/Paint;

    .line 5
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/timepicker/ClockHandView;->l:Landroid/graphics/RectF;

    .line 6
    sget-object v0, Ld/c/a/a/k;->ClockHandView:[I

    sget v1, Ld/c/a/a/j;->Widget_MaterialComponents_TimePicker_Clock:I

    .line 7
    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 8
    sget p3, Ld/c/a/a/k;->ClockHandView_materialCircleRadius:I

    const/4 v0, 0x0

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/google/android/material/timepicker/ClockHandView;->r:I

    .line 9
    sget p3, Ld/c/a/a/k;->ClockHandView_selectorSize:I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/google/android/material/timepicker/ClockHandView;->i:I

    .line 10
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    .line 11
    sget v1, Ld/c/a/a/d;->material_clock_hand_stroke_width:I

    invoke-virtual {p3, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/google/android/material/timepicker/ClockHandView;->m:I

    .line 12
    sget v1, Ld/c/a/a/d;->material_clock_hand_center_dot_radius:I

    invoke-virtual {p3, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    int-to-float p3, p3

    iput p3, p0, Lcom/google/android/material/timepicker/ClockHandView;->j:F

    .line 13
    sget p3, Ld/c/a/a/k;->ClockHandView_clockHandColor:I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    .line 14
    iget-object v0, p0, Lcom/google/android/material/timepicker/ClockHandView;->k:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 15
    iget-object v0, p0, Lcom/google/android/material/timepicker/ClockHandView;->k:Landroid/graphics/Paint;

    invoke-virtual {v0, p3}, Landroid/graphics/Paint;->setColor(I)V

    const/4 p3, 0x0

    .line 16
    invoke-virtual {p0, p3}, Lcom/google/android/material/timepicker/ClockHandView;->k(F)V

    .line 17
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p1

    iput p1, p0, Lcom/google/android/material/timepicker/ClockHandView;->g:I

    const/4 p1, 0x2

    .line 18
    invoke-static {p0, p1}, Landroidx/core/view/v;->x0(Landroid/view/View;I)V

    .line 19
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method static synthetic a(Lcom/google/android/material/timepicker/ClockHandView;FZ)V
    .registers 3

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/android/material/timepicker/ClockHandView;->m(FZ)V

    return-void
.end method

.method private c(Landroid/graphics/Canvas;)V
    .registers 12

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v8, v1

    .line 3
    iget v2, p0, Lcom/google/android/material/timepicker/ClockHandView;->r:I

    int-to-float v2, v2

    iget-wide v3, p0, Lcom/google/android/material/timepicker/ClockHandView;->q:D

    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v3

    double-to-float v3, v3

    mul-float v2, v2, v3

    add-float/2addr v2, v8

    int-to-float v9, v0

    .line 4
    iget v3, p0, Lcom/google/android/material/timepicker/ClockHandView;->r:I

    int-to-float v3, v3

    iget-wide v4, p0, Lcom/google/android/material/timepicker/ClockHandView;->q:D

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    double-to-float v4, v4

    mul-float v3, v3, v4

    add-float/2addr v3, v9

    .line 5
    iget-object v4, p0, Lcom/google/android/material/timepicker/ClockHandView;->k:Landroid/graphics/Paint;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 6
    iget v4, p0, Lcom/google/android/material/timepicker/ClockHandView;->i:I

    int-to-float v4, v4

    iget-object v5, p0, Lcom/google/android/material/timepicker/ClockHandView;->k:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 7
    iget-wide v2, p0, Lcom/google/android/material/timepicker/ClockHandView;->q:D

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    .line 8
    iget-wide v4, p0, Lcom/google/android/material/timepicker/ClockHandView;->q:D

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    .line 9
    iget v6, p0, Lcom/google/android/material/timepicker/ClockHandView;->r:I

    iget v7, p0, Lcom/google/android/material/timepicker/ClockHandView;->i:I

    sub-int/2addr v6, v7

    int-to-float v6, v6

    float-to-double v6, v6

    .line 10
    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v4, v4, v6

    double-to-int v4, v4

    add-int/2addr v1, v4

    int-to-float v5, v1

    .line 11
    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v6, v6, v2

    double-to-int v1, v6

    add-int/2addr v0, v1

    int-to-float v6, v0

    .line 12
    iget-object v0, p0, Lcom/google/android/material/timepicker/ClockHandView;->k:Landroid/graphics/Paint;

    iget v1, p0, Lcom/google/android/material/timepicker/ClockHandView;->m:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 13
    iget-object v7, p0, Lcom/google/android/material/timepicker/ClockHandView;->k:Landroid/graphics/Paint;

    move-object v2, p1

    move v3, v8

    move v4, v9

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 14
    iget v0, p0, Lcom/google/android/material/timepicker/ClockHandView;->j:F

    iget-object v1, p0, Lcom/google/android/material/timepicker/ClockHandView;->k:Landroid/graphics/Paint;

    invoke-virtual {p1, v8, v9, v0, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void
.end method

.method private e(FF)I
    .registers 7

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v0, v0

    sub-float/2addr p1, v0

    float-to-double v2, p1

    int-to-float p1, v1

    sub-float/2addr p2, p1

    float-to-double p1, p2

    .line 3
    invoke-static {p1, p2, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide p1

    double-to-int p1, p1

    add-int/lit8 p1, p1, 0x5a

    if-gez p1, :cond_21

    add-int/lit16 p1, p1, 0x168

    :cond_21
    return p1
.end method

.method private h(F)Landroid/util/Pair;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)",
            "Landroid/util/Pair<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/material/timepicker/ClockHandView;->f()F

    move-result v0

    sub-float v1, v0, p1

    .line 2
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const/high16 v2, 0x43340000    # 180.0f

    cmpl-float v1, v1, v2

    if-lez v1, :cond_24

    const/high16 v1, 0x43b40000    # 360.0f

    cmpl-float v3, v0, v2

    if-lez v3, :cond_1b

    cmpg-float v3, p1, v2

    if-gez v3, :cond_1b

    add-float/2addr p1, v1

    :cond_1b
    cmpg-float v3, v0, v2

    if-gez v3, :cond_24

    cmpl-float v2, p1, v2

    if-lez v2, :cond_24

    add-float/2addr v0, v1

    .line 3
    :cond_24
    new-instance v1, Landroid/util/Pair;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-direct {v1, v0, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1
.end method

.method private i(FFZZZ)Z
    .registers 8

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/android/material/timepicker/ClockHandView;->e(FF)I

    move-result p1

    .line 2
    invoke-virtual {p0}, Lcom/google/android/material/timepicker/ClockHandView;->f()F

    move-result p2

    int-to-float p1, p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    cmpl-float p2, p2, p1

    if-eqz p2, :cond_11

    const/4 p2, 0x1

    goto :goto_12

    :cond_11
    const/4 p2, 0x0

    :goto_12
    if-eqz p4, :cond_17

    if-eqz p2, :cond_17

    return v1

    :cond_17
    if-nez p2, :cond_1d

    if-eqz p3, :cond_1c

    goto :goto_1d

    :cond_1c
    return v0

    :cond_1d
    :goto_1d
    if-eqz p5, :cond_24

    .line 3
    iget-boolean p2, p0, Lcom/google/android/material/timepicker/ClockHandView;->c:Z

    if-eqz p2, :cond_24

    const/4 v0, 0x1

    :cond_24
    invoke-virtual {p0, p1, v0}, Lcom/google/android/material/timepicker/ClockHandView;->l(FZ)V

    return v1
.end method

.method private m(FZ)V
    .registers 10

    const/high16 v0, 0x43b40000    # 360.0f

    rem-float/2addr p1, v0

    .line 1
    iput p1, p0, Lcom/google/android/material/timepicker/ClockHandView;->n:F

    const/high16 v0, 0x42b40000    # 90.0f

    sub-float v0, p1, v0

    float-to-double v0, v0

    .line 2
    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/material/timepicker/ClockHandView;->q:D

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    .line 5
    iget v2, p0, Lcom/google/android/material/timepicker/ClockHandView;->r:I

    int-to-float v2, v2

    iget-wide v3, p0, Lcom/google/android/material/timepicker/ClockHandView;->q:D

    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v3

    double-to-float v3, v3

    mul-float v2, v2, v3

    add-float/2addr v1, v2

    int-to-float v0, v0

    .line 6
    iget v2, p0, Lcom/google/android/material/timepicker/ClockHandView;->r:I

    int-to-float v2, v2

    iget-wide v3, p0, Lcom/google/android/material/timepicker/ClockHandView;->q:D

    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    double-to-float v3, v3

    mul-float v2, v2, v3

    add-float/2addr v0, v2

    .line 7
    iget-object v2, p0, Lcom/google/android/material/timepicker/ClockHandView;->l:Landroid/graphics/RectF;

    iget v3, p0, Lcom/google/android/material/timepicker/ClockHandView;->i:I

    int-to-float v4, v3

    sub-float v4, v1, v4

    int-to-float v5, v3

    sub-float v5, v0, v5

    int-to-float v6, v3

    add-float/2addr v1, v6

    int-to-float v3, v3

    add-float/2addr v0, v3

    invoke-virtual {v2, v4, v5, v1, v0}, Landroid/graphics/RectF;->set(FFFF)V

    .line 8
    iget-object v0, p0, Lcom/google/android/material/timepicker/ClockHandView;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/timepicker/ClockHandView$d;

    .line 9
    invoke-interface {v1, p1, p2}, Lcom/google/android/material/timepicker/ClockHandView$d;->a(FZ)V

    goto :goto_4f

    .line 10
    :cond_5f
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method


# virtual methods
.method public b(Lcom/google/android/material/timepicker/ClockHandView$d;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/material/timepicker/ClockHandView;->h:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public d()Landroid/graphics/RectF;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/timepicker/ClockHandView;->l:Landroid/graphics/RectF;

    return-object v0
.end method

.method public f()F
    .registers 2

    .line 1
    iget v0, p0, Lcom/google/android/material/timepicker/ClockHandView;->n:F

    return v0
.end method

.method public g()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/google/android/material/timepicker/ClockHandView;->i:I

    return v0
.end method

.method public j(I)V
    .registers 2

    .line 1
    iput p1, p0, Lcom/google/android/material/timepicker/ClockHandView;->r:I

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public k(F)V
    .registers 3

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/google/android/material/timepicker/ClockHandView;->l(FZ)V

    return-void
.end method

.method public l(FZ)V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/google/android/material/timepicker/ClockHandView;->b:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_7

    .line 2
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_7
    const/4 v0, 0x0

    if-nez p2, :cond_e

    .line 3
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/timepicker/ClockHandView;->m(FZ)V

    return-void

    .line 4
    :cond_e
    invoke-direct {p0, p1}, Lcom/google/android/material/timepicker/ClockHandView;->h(F)Landroid/util/Pair;

    move-result-object p1

    const/4 p2, 0x2

    new-array p2, p2, [F

    .line 5
    iget-object v1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    aput v1, p2, v0

    const/4 v0, 0x1

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    aput p1, p2, v0

    invoke-static {p2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/material/timepicker/ClockHandView;->b:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0xc8

    .line 6
    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 7
    iget-object p1, p0, Lcom/google/android/material/timepicker/ClockHandView;->b:Landroid/animation/ValueAnimator;

    new-instance p2, Lcom/google/android/material/timepicker/ClockHandView$a;

    invoke-direct {p2, p0}, Lcom/google/android/material/timepicker/ClockHandView$a;-><init>(Lcom/google/android/material/timepicker/ClockHandView;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 8
    iget-object p1, p0, Lcom/google/android/material/timepicker/ClockHandView;->b:Landroid/animation/ValueAnimator;

    new-instance p2, Lcom/google/android/material/timepicker/ClockHandView$b;

    invoke-direct {p2, p0}, Lcom/google/android/material/timepicker/ClockHandView$b;-><init>(Lcom/google/android/material/timepicker/ClockHandView;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 9
    iget-object p1, p0, Lcom/google/android/material/timepicker/ClockHandView;->b:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 2

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 2
    invoke-direct {p0, p1}, Lcom/google/android/material/timepicker/ClockHandView;->c(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .registers 6

    .line 1
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/material/timepicker/ClockHandView;->f()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/timepicker/ClockHandView;->k(F)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 12
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    .line 3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    const/4 v1, 0x0

    const/4 v8, 0x1

    if-eqz v0, :cond_3a

    if-eq v0, v8, :cond_19

    const/4 v2, 0x2

    if-eq v0, v2, :cond_19

    const/4 v0, 0x0

    const/4 v4, 0x0

    :goto_17
    const/4 v5, 0x0

    goto :goto_45

    .line 4
    :cond_19
    iget v2, p0, Lcom/google/android/material/timepicker/ClockHandView;->d:F

    sub-float v2, v7, v2

    float-to-int v2, v2

    .line 5
    iget v3, p0, Lcom/google/android/material/timepicker/ClockHandView;->e:F

    sub-float v3, p1, v3

    float-to-int v3, v3

    mul-int v2, v2, v2

    mul-int v3, v3, v3

    add-int/2addr v2, v3

    .line 6
    iget v3, p0, Lcom/google/android/material/timepicker/ClockHandView;->g:I

    if-le v2, v3, :cond_2e

    const/4 v2, 0x1

    goto :goto_2f

    :cond_2e
    const/4 v2, 0x0

    :goto_2f
    iput-boolean v2, p0, Lcom/google/android/material/timepicker/ClockHandView;->f:Z

    .line 7
    iget-boolean v2, p0, Lcom/google/android/material/timepicker/ClockHandView;->o:Z

    if-ne v0, v8, :cond_37

    const/4 v0, 0x1

    goto :goto_38

    :cond_37
    const/4 v0, 0x0

    :goto_38
    move v4, v2

    goto :goto_17

    .line 8
    :cond_3a
    iput v7, p0, Lcom/google/android/material/timepicker/ClockHandView;->d:F

    .line 9
    iput p1, p0, Lcom/google/android/material/timepicker/ClockHandView;->e:F

    .line 10
    iput-boolean v8, p0, Lcom/google/android/material/timepicker/ClockHandView;->f:Z

    .line 11
    iput-boolean v1, p0, Lcom/google/android/material/timepicker/ClockHandView;->o:Z

    const/4 v0, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 12
    :goto_45
    iget-boolean v9, p0, Lcom/google/android/material/timepicker/ClockHandView;->o:Z

    move-object v1, p0

    move v2, v7

    move v3, p1

    move v6, v0

    invoke-direct/range {v1 .. v6}, Lcom/google/android/material/timepicker/ClockHandView;->i(FFZZZ)Z

    move-result v1

    or-int/2addr v1, v9

    iput-boolean v1, p0, Lcom/google/android/material/timepicker/ClockHandView;->o:Z

    if-eqz v1, :cond_64

    if-eqz v0, :cond_64

    .line 13
    iget-object v0, p0, Lcom/google/android/material/timepicker/ClockHandView;->p:Lcom/google/android/material/timepicker/ClockHandView$c;

    if-eqz v0, :cond_64

    .line 14
    invoke-direct {p0, v7, p1}, Lcom/google/android/material/timepicker/ClockHandView;->e(FF)I

    move-result p1

    int-to-float p1, p1

    iget-boolean v1, p0, Lcom/google/android/material/timepicker/ClockHandView;->f:Z

    invoke-interface {v0, p1, v1}, Lcom/google/android/material/timepicker/ClockHandView$c;->a(FZ)V

    :cond_64
    return v8
.end method
