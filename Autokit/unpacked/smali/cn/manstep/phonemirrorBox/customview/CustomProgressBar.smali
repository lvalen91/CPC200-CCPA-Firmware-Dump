.class public Lcn/manstep/phonemirrorBox/customview/CustomProgressBar;
.super Landroid/widget/ProgressBar;
.source "SourceFile"

.field private b:Landroid/graphics/Paint;

.field private c:Landroid/graphics/Paint;

.field private d:Landroid/graphics/RectF;

.field private e:Landroid/graphics/RectF;

.field private f:F

.field private g:F

.field private h:F

.field private i:F

.field private j:F

.field private k:F

.field private l:F

.field private m:I

.field private n:I

.field private o:I

.field private p:I

.field public q:I

.field public r:I

.field private s:I

.field private t:I

.field private u:I

.field private v:I

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
  .registers 4
  .line 1
    invoke-direct { p0, p1, p2 }, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    const/16 v0, 299
  .line 2
    iput v0, p0, Lcn/manstep/phonemirrorBox/customview/CustomProgressBar;->o:I
    const/4 v0, 7
  .line 3
    iput v0, p0, Lcn/manstep/phonemirrorBox/customview/CustomProgressBar;->p:I
    const-string v0, "#FFFFFF"
  .line 4
    invoke-static { v0 }, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I
    move-result v0
    iput v0, p0, Lcn/manstep/phonemirrorBox/customview/CustomProgressBar;->u:I
    const-string v0, "#5A80F1"
  .line 5
    invoke-static { v0 }, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I
    move-result v0
    iput v0, p0, Lcn/manstep/phonemirrorBox/customview/CustomProgressBar;->v:I
  .line 6
    invoke-direct { p0, p1, p2 }, Lcn/manstep/phonemirrorBox/customview/CustomProgressBar;->b(Landroid/content/Context;Landroid/util/AttributeSet;)V
  .line 7
    invoke-direct { p0 }, Lcn/manstep/phonemirrorBox/customview/CustomProgressBar;->e()V
    return-void
.end method

.method private a(I)Landroid/graphics/Paint;
  .registers 4
  .line 1
    new-instance v0, Landroid/graphics/Paint;
    const/4 v1, 1
    invoke-direct { v0, v1 }, Landroid/graphics/Paint;-><init>(I)V
  .line 2
    invoke-virtual { v0, p1 }, Landroid/graphics/Paint;->setColor(I)V
    const/4 p1, 0
  .line 3
    invoke-virtual { v0, p1 }, Landroid/graphics/Paint;->setStrokeWidth(F)V
  .line 4
    invoke-virtual { v0, v1 }, Landroid/graphics/Paint;->setDither(Z)V
  .line 5
    invoke-virtual { v0, p1 }, Landroid/graphics/Paint;->setTextSize(F)V
  .line 6
    sget-object p1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;
    invoke-virtual { v0, p1 }, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V
  .line 7
    sget-object p1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;
    invoke-virtual { v0, p1 }, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V
  .line 8
    sget-object p1, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;
    invoke-virtual { v0, p1 }, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V
    return-object v0
.end method

.method private b(Landroid/content/Context;Landroid/util/AttributeSet;)V
  .registers 4
    if-eqz p2, :L0
  .line 1
    sget-object v0, Lcn/manstep/phonemirrorBox/y;->CustomProgressBar:[I
    invoke-virtual { p1, p2, v0 }, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;
    move-result-object p1
    const/4 p2, 0
  .line 2
    iget v0, p0, Lcn/manstep/phonemirrorBox/customview/CustomProgressBar;->u:I
    invoke-virtual { p1, p2, v0 }, Landroid/content/res/TypedArray;->getColor(II)I
    move-result p2
    iput p2, p0, Lcn/manstep/phonemirrorBox/customview/CustomProgressBar;->s:I
    const/4 p2, 1
  .line 3
    iget v0, p0, Lcn/manstep/phonemirrorBox/customview/CustomProgressBar;->v:I
    invoke-virtual { p1, p2, v0 }, Landroid/content/res/TypedArray;->getColor(II)I
    move-result p2
    iput p2, p0, Lcn/manstep/phonemirrorBox/customview/CustomProgressBar;->t:I
  .line 4
    invoke-virtual { p1 }, Landroid/content/res/TypedArray;->recycle()V
  :L0
    return-void
.end method

.method private e()V
  .registers 2
  .line 1
    iget v0, p0, Lcn/manstep/phonemirrorBox/customview/CustomProgressBar;->s:I
    invoke-direct { p0, v0 }, Lcn/manstep/phonemirrorBox/customview/CustomProgressBar;->a(I)Landroid/graphics/Paint;
    move-result-object v0
    iput-object v0, p0, Lcn/manstep/phonemirrorBox/customview/CustomProgressBar;->b:Landroid/graphics/Paint;
  .line 2
    iget v0, p0, Lcn/manstep/phonemirrorBox/customview/CustomProgressBar;->t:I
    invoke-direct { p0, v0 }, Lcn/manstep/phonemirrorBox/customview/CustomProgressBar;->a(I)Landroid/graphics/Paint;
    move-result-object v0
    iput-object v0, p0, Lcn/manstep/phonemirrorBox/customview/CustomProgressBar;->c:Landroid/graphics/Paint;
    return-void
.end method

.method public c(I)I
  .registers 4
  .line 1
    invoke-static { p1 }, Landroid/view/View$MeasureSpec;->getMode(I)I
    move-result v0
  .line 2
    invoke-static { p1 }, Landroid/view/View$MeasureSpec;->getSize(I)I
    move-result p1
    const/high16 v1, -32768
    if-eq v0, v1, :L0
    if-nez v0, :L1
  :L0
  .line 3
    iget p1, p0, Lcn/manstep/phonemirrorBox/customview/CustomProgressBar;->p:I
  :L1
    return p1
.end method

.method public d(I)I
  .registers 4
  .line 1
    invoke-static { p1 }, Landroid/view/View$MeasureSpec;->getMode(I)I
    move-result v0
  .line 2
    invoke-static { p1 }, Landroid/view/View$MeasureSpec;->getSize(I)I
    move-result p1
    const/high16 v1, -32768
    if-eq v0, v1, :L0
    if-nez v0, :L1
  :L0
  .line 3
    iget p1, p0, Lcn/manstep/phonemirrorBox/customview/CustomProgressBar;->o:I
  :L1
    return p1
.end method

.method public f()V
  .registers 2
    const/4 v0, 0
  .line 1
    iput v0, p0, Lcn/manstep/phonemirrorBox/customview/CustomProgressBar;->r:I
  .line 2
    invoke-virtual { p0 }, Landroid/widget/ProgressBar;->invalidate()V
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
  .registers 8
  .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/customview/CustomProgressBar;->d:Landroid/graphics/RectF;
    const/4 v1, 0
    if-nez v0, :L0
  .line 2
    new-instance v0, Landroid/graphics/RectF;
    invoke-direct { v0 }, Landroid/graphics/RectF;-><init>()V
    iput-object v0, p0, Lcn/manstep/phonemirrorBox/customview/CustomProgressBar;->d:Landroid/graphics/RectF;
  .line 3
    iget v2, p0, Lcn/manstep/phonemirrorBox/customview/CustomProgressBar;->m:I
    int-to-float v2, v2
    iget v3, p0, Lcn/manstep/phonemirrorBox/customview/CustomProgressBar;->n:I
    int-to-float v3, v3
    invoke-virtual { v0, v1, v1, v2, v3 }, Landroid/graphics/RectF;->set(FFFF)V
  :L0
  .line 4
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/customview/CustomProgressBar;->e:Landroid/graphics/RectF;
    if-nez v0, :L1
  .line 5
    new-instance v0, Landroid/graphics/RectF;
    invoke-direct { v0 }, Landroid/graphics/RectF;-><init>()V
    iput-object v0, p0, Lcn/manstep/phonemirrorBox/customview/CustomProgressBar;->e:Landroid/graphics/RectF;
  .line 6
    iget v0, p0, Lcn/manstep/phonemirrorBox/customview/CustomProgressBar;->k:F
    const/high16 v2, 16672
    div-float v3, v0, v2
    iput v3, p0, Lcn/manstep/phonemirrorBox/customview/CustomProgressBar;->g:F
    div-float/2addr v0, v2
  .line 7
    iput v0, p0, Lcn/manstep/phonemirrorBox/customview/CustomProgressBar;->f:F
  :L1
  .line 8
    iget v0, p0, Lcn/manstep/phonemirrorBox/customview/CustomProgressBar;->j:F
    iget v2, p0, Lcn/manstep/phonemirrorBox/customview/CustomProgressBar;->f:F
    sub-float/2addr v0, v2
    iput v0, p0, Lcn/manstep/phonemirrorBox/customview/CustomProgressBar;->h:F
  .line 9
    iget v0, p0, Lcn/manstep/phonemirrorBox/customview/CustomProgressBar;->r:I
    int-to-float v0, v0
    iget v2, p0, Lcn/manstep/phonemirrorBox/customview/CustomProgressBar;->q:I
    int-to-float v2, v2
    div-float/2addr v0, v2
    const/high16 v2, 17096
    mul-float v0, v0, v2
  .line 10
    iput v0, p0, Lcn/manstep/phonemirrorBox/customview/CustomProgressBar;->l:F
    const v3, 1176256512
    mul-float v0, v0, v3
  .line 11
    invoke-static { v0 }, Ljava/lang/Math;->round(F)I
    move-result v0
    div-int/lit16 v0, v0, 10000
    int-to-float v0, v0
  .line 12
    iget v3, p0, Lcn/manstep/phonemirrorBox/customview/CustomProgressBar;->h:F
    div-float/2addr v3, v2
    mul-float v3, v3, v0
    iput v3, p0, Lcn/manstep/phonemirrorBox/customview/CustomProgressBar;->i:F
  .line 13
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/customview/CustomProgressBar;->e:Landroid/graphics/RectF;
    iget v2, p0, Lcn/manstep/phonemirrorBox/customview/CustomProgressBar;->f:F
    iget v4, p0, Lcn/manstep/phonemirrorBox/customview/CustomProgressBar;->g:F
    iget v5, p0, Lcn/manstep/phonemirrorBox/customview/CustomProgressBar;->n:I
    int-to-float v5, v5
    sub-float/2addr v5, v4
    invoke-virtual { v0, v2, v4, v3, v5 }, Landroid/graphics/RectF;->set(FFFF)V
  .line 14
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/customview/CustomProgressBar;->d:Landroid/graphics/RectF;
    iget v2, p0, Lcn/manstep/phonemirrorBox/customview/CustomProgressBar;->k:F
    const/high16 v3, 16384
    div-float v4, v2, v3
    div-float/2addr v2, v3
    iget-object v5, p0, Lcn/manstep/phonemirrorBox/customview/CustomProgressBar;->b:Landroid/graphics/Paint;
    invoke-virtual { p1, v0, v4, v2, v5 }, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V
  .line 15
    iget v0, p0, Lcn/manstep/phonemirrorBox/customview/CustomProgressBar;->i:F
    cmpl-float v0, v0, v1
    if-lez v0, :L2
  .line 16
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/customview/CustomProgressBar;->e:Landroid/graphics/RectF;
    iget v1, p0, Lcn/manstep/phonemirrorBox/customview/CustomProgressBar;->k:F
    div-float v2, v1, v3
    iget v4, p0, Lcn/manstep/phonemirrorBox/customview/CustomProgressBar;->f:F
    sub-float/2addr v2, v4
    div-float/2addr v1, v3
    iget v3, p0, Lcn/manstep/phonemirrorBox/customview/CustomProgressBar;->g:F
    sub-float/2addr v1, v3
    iget-object v3, p0, Lcn/manstep/phonemirrorBox/customview/CustomProgressBar;->c:Landroid/graphics/Paint;
    invoke-virtual { p1, v0, v2, v1, v3 }, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V
  :L2
  .line 17
    iget p1, p0, Lcn/manstep/phonemirrorBox/customview/CustomProgressBar;->i:F
    iget v0, p0, Lcn/manstep/phonemirrorBox/customview/CustomProgressBar;->h:F
    cmpg-float p1, p1, v0
    if-gez p1, :L3
  .line 18
    invoke-virtual { p0 }, Landroid/widget/ProgressBar;->invalidate()V
  :L3
    return-void
.end method

.method protected onMeasure(II)V
  .registers 4
  .line 1
    invoke-super { p0, p1, p2 }, Landroid/widget/ProgressBar;->onMeasure(II)V
  .line 2
    invoke-virtual { p0, p1 }, Lcn/manstep/phonemirrorBox/customview/CustomProgressBar;->d(I)I
    move-result p1
    iput p1, p0, Lcn/manstep/phonemirrorBox/customview/CustomProgressBar;->m:I
  .line 3
    invoke-virtual { p0, p2 }, Lcn/manstep/phonemirrorBox/customview/CustomProgressBar;->c(I)I
    move-result p1
    iput p1, p0, Lcn/manstep/phonemirrorBox/customview/CustomProgressBar;->n:I
  .line 4
    iget p2, p0, Lcn/manstep/phonemirrorBox/customview/CustomProgressBar;->m:I
    int-to-float v0, p2
    iput v0, p0, Lcn/manstep/phonemirrorBox/customview/CustomProgressBar;->j:F
    int-to-float v0, p1
  .line 5
    iput v0, p0, Lcn/manstep/phonemirrorBox/customview/CustomProgressBar;->k:F
  .line 6
    invoke-virtual { p0, p2, p1 }, Landroid/widget/ProgressBar;->setMeasuredDimension(II)V
    return-void
.end method

.method public setBarMax(I)V
  .registers 2
  .line 1
    iput p1, p0, Lcn/manstep/phonemirrorBox/customview/CustomProgressBar;->q:I
    const/4 p1, 0
  .line 2
    iput p1, p0, Lcn/manstep/phonemirrorBox/customview/CustomProgressBar;->r:I
  .line 3
    invoke-virtual { p0 }, Landroid/widget/ProgressBar;->invalidate()V
    return-void
.end method
