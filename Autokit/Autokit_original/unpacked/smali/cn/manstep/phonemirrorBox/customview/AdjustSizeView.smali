.class public Lcn/manstep/phonemirrorBox/customview/AdjustSizeView;
.super Landroid/view/View;
.source "SourceFile"

.field private b:I

.field private c:F

.field private d:F

.field private e:F

.field private f:F

.field private g:F

.field private h:F

.field private i:F

.field private j:F

.field private k:F

.field private l:F

.field private m:Landroid/graphics/Paint;

.field private n:Landroid/graphics/Paint;

.field private o:Landroid/graphics/RectF;

.field private p:Landroid/view/WindowManager;

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
  .registers 3
  .line 1
    invoke-direct { p0, p1, p2 }, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    const/16 p2, 8
  .line 2
    iput p2, p0, Lcn/manstep/phonemirrorBox/customview/AdjustSizeView;->b:I
    const/4 p2, 0
  .line 3
    iput p2, p0, Lcn/manstep/phonemirrorBox/customview/AdjustSizeView;->c:F
  .line 4
    iput p2, p0, Lcn/manstep/phonemirrorBox/customview/AdjustSizeView;->d:F
    const-string p2, "window"
  .line 5
    invoke-virtual { p1, p2 }, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    move-result-object p1
    check-cast p1, Landroid/view/WindowManager;
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/customview/AdjustSizeView;->p:Landroid/view/WindowManager;
    return-void
.end method

.method private a(FF)I
  .registers 10
  .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/customview/AdjustSizeView;->o:Landroid/graphics/RectF;
    iget v1, v0, Landroid/graphics/RectF;->left:F
    sub-float v1, p1, v1
  .line 2
    iget v2, v0, Landroid/graphics/RectF;->top:F
    sub-float v2, p2, v2
  .line 3
    iget v3, v0, Landroid/graphics/RectF;->right:F
    sub-float/2addr v3, p1
  .line 4
    iget p1, v0, Landroid/graphics/RectF;->bottom:F
    sub-float/2addr p1, p2
    const/16 p2, 8
  .line 5
    iput p2, p0, Lcn/manstep/phonemirrorBox/customview/AdjustSizeView;->b:I
    const/4 p2, 6
    const/4 v0, 0
    const/high16 v4, 17056
    cmpg-float v5, v1, v4
    if-gez v5, :L1
    const/4 v5, 7
  .line 6
    iput v5, p0, Lcn/manstep/phonemirrorBox/customview/AdjustSizeView;->b:I
    cmpg-float v5, v2, v4
    if-gez v5, :L0
  .line 7
    iput v0, p0, Lcn/manstep/phonemirrorBox/customview/AdjustSizeView;->b:I
    goto :L1
  :L0
    cmpg-float v5, p1, v4
    if-gez v5, :L1
  .line 8
    iput p2, p0, Lcn/manstep/phonemirrorBox/customview/AdjustSizeView;->b:I
  :L1
    const/4 v5, 2
    cmpg-float v6, v2, v4
    if-gez v6, :L3
    const/4 v6, 1
  .line 9
    iput v6, p0, Lcn/manstep/phonemirrorBox/customview/AdjustSizeView;->b:I
    cmpg-float v6, v1, v4
    if-gez v6, :L2
  .line 10
    iput v0, p0, Lcn/manstep/phonemirrorBox/customview/AdjustSizeView;->b:I
    goto :L3
  :L2
    cmpg-float v0, v3, v4
    if-gez v0, :L3
  .line 11
    iput v5, p0, Lcn/manstep/phonemirrorBox/customview/AdjustSizeView;->b:I
  :L3
    const/4 v0, 4
    cmpg-float v6, v3, v4
    if-gez v6, :L5
    const/4 v6, 3
  .line 12
    iput v6, p0, Lcn/manstep/phonemirrorBox/customview/AdjustSizeView;->b:I
    cmpg-float v6, p1, v4
    if-gez v6, :L4
  .line 13
    iput v0, p0, Lcn/manstep/phonemirrorBox/customview/AdjustSizeView;->b:I
    goto :L5
  :L4
    cmpg-float v2, v2, v4
    if-gez v2, :L5
  .line 14
    iput v5, p0, Lcn/manstep/phonemirrorBox/customview/AdjustSizeView;->b:I
  :L5
    cmpg-float p1, p1, v4
    if-gez p1, :L7
    const/4 p1, 5
  .line 15
    iput p1, p0, Lcn/manstep/phonemirrorBox/customview/AdjustSizeView;->b:I
    cmpg-float p1, v3, v4
    if-gez p1, :L6
  .line 16
    iput v0, p0, Lcn/manstep/phonemirrorBox/customview/AdjustSizeView;->b:I
    goto :L7
  :L6
    cmpg-float p1, v1, v4
    if-gez p1, :L7
  .line 17
    iput p2, p0, Lcn/manstep/phonemirrorBox/customview/AdjustSizeView;->b:I
  :L7
  .line 18
    iget p1, p0, Lcn/manstep/phonemirrorBox/customview/AdjustSizeView;->b:I
    return p1
.end method

.method private b(II)V
  .registers 6
  .line 1
    new-instance v0, Landroid/graphics/Point;
    invoke-direct { v0 }, Landroid/graphics/Point;-><init>()V
  .line 2
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v2, 17
    if-lt v1, v2, :L0
  .line 3
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/customview/AdjustSizeView;->p:Landroid/view/WindowManager;
    invoke-interface { v1 }, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;
    move-result-object v1
    invoke-virtual { v1, v0 }, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V
    goto :L1
  :L0
  .line 4
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/customview/AdjustSizeView;->p:Landroid/view/WindowManager;
    invoke-interface { v1 }, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;
    move-result-object v1
    invoke-virtual { v1, v0 }, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V
  :L1
  .line 5
    iget v1, v0, Landroid/graphics/Point;->x:I
    int-to-float v1, v1
    iput v1, p0, Lcn/manstep/phonemirrorBox/customview/AdjustSizeView;->k:F
  .line 6
    iget v0, v0, Landroid/graphics/Point;->y:I
    int-to-float v0, v0
    iput v0, p0, Lcn/manstep/phonemirrorBox/customview/AdjustSizeView;->l:F
  .line 7
    new-instance v0, Landroid/graphics/Paint;
    invoke-direct { v0 }, Landroid/graphics/Paint;-><init>()V
    iput-object v0, p0, Lcn/manstep/phonemirrorBox/customview/AdjustSizeView;->m:Landroid/graphics/Paint;
  .line 8
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;
    invoke-virtual { v0, v1 }, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V
  .line 9
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/customview/AdjustSizeView;->m:Landroid/graphics/Paint;
    invoke-virtual { v0, p1 }, Landroid/graphics/Paint;->setColor(I)V
  .line 10
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/customview/AdjustSizeView;->m:Landroid/graphics/Paint;
    const/4 v0, 1
    invoke-virtual { p1, v0 }, Landroid/graphics/Paint;->setAntiAlias(Z)V
  .line 11
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/customview/AdjustSizeView;->m:Landroid/graphics/Paint;
    const/high16 v1, 16672
    invoke-virtual { p1, v1 }, Landroid/graphics/Paint;->setStrokeWidth(F)V
  .line 12
    new-instance p1, Landroid/graphics/Paint;
    invoke-direct { p1 }, Landroid/graphics/Paint;-><init>()V
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/customview/AdjustSizeView;->n:Landroid/graphics/Paint;
  .line 13
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;
    invoke-virtual { p1, v1 }, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V
  .line 14
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/customview/AdjustSizeView;->n:Landroid/graphics/Paint;
    invoke-virtual { p1, p2 }, Landroid/graphics/Paint;->setColor(I)V
  .line 15
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/customview/AdjustSizeView;->n:Landroid/graphics/Paint;
    invoke-virtual { p1, v0 }, Landroid/graphics/Paint;->setAntiAlias(Z)V
  .line 16
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/customview/AdjustSizeView;->n:Landroid/graphics/Paint;
    const/high16 p2, 16512
    invoke-virtual { p1, p2 }, Landroid/graphics/Paint;->setStrokeWidth(F)V
  .line 17
    new-instance p1, Landroid/graphics/RectF;
    invoke-direct { p1 }, Landroid/graphics/RectF;-><init>()V
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/customview/AdjustSizeView;->o:Landroid/graphics/RectF;
    return-void
.end method

.method private e(F)V
  .registers 5
    const/high16 v0, 16968
    add-float/2addr p1, v0
  .line 1
    iput p1, p0, Lcn/manstep/phonemirrorBox/customview/AdjustSizeView;->h:F
  .line 2
    iget v0, p0, Lcn/manstep/phonemirrorBox/customview/AdjustSizeView;->e:F
    const/high16 v1, 17352
    add-float v2, v0, v1
    cmpg-float v2, p1, v2
    if-gez v2, :L0
    add-float/2addr v0, v1
  .line 3
    iput v0, p0, Lcn/manstep/phonemirrorBox/customview/AdjustSizeView;->h:F
    goto :L1
  :L0
  .line 4
    iget v0, p0, Lcn/manstep/phonemirrorBox/customview/AdjustSizeView;->l:F
    cmpl-float p1, p1, v0
    if-lez p1, :L1
  .line 5
    iput v0, p0, Lcn/manstep/phonemirrorBox/customview/AdjustSizeView;->h:F
  :L1
  .line 6
    iget p1, p0, Lcn/manstep/phonemirrorBox/customview/AdjustSizeView;->g:F
    iget v0, p0, Lcn/manstep/phonemirrorBox/customview/AdjustSizeView;->e:F
    iget v1, p0, Lcn/manstep/phonemirrorBox/customview/AdjustSizeView;->f:F
    iget v2, p0, Lcn/manstep/phonemirrorBox/customview/AdjustSizeView;->h:F
    invoke-direct { p0, p1, v0, v1, v2 }, Lcn/manstep/phonemirrorBox/customview/AdjustSizeView;->n(FFFF)V
    return-void
.end method

.method private f(FF)V
  .registers 5
    const/high16 v0, 16968
    sub-float/2addr p1, v0
  .line 1
    iput p1, p0, Lcn/manstep/phonemirrorBox/customview/AdjustSizeView;->g:F
    add-float/2addr p2, v0
  .line 2
    iput p2, p0, Lcn/manstep/phonemirrorBox/customview/AdjustSizeView;->h:F
  .line 3
    iget p2, p0, Lcn/manstep/phonemirrorBox/customview/AdjustSizeView;->c:F
    const/high16 v0, 17352
    cmpg-float v1, p1, p2
    if-gez v1, :L0
  .line 4
    iput p2, p0, Lcn/manstep/phonemirrorBox/customview/AdjustSizeView;->g:F
    goto :L1
  :L0
  .line 5
    iget p2, p0, Lcn/manstep/phonemirrorBox/customview/AdjustSizeView;->f:F
    sub-float v1, p2, v0
    cmpl-float p1, p1, v1
    if-lez p1, :L1
    sub-float/2addr p2, v0
  .line 6
    iput p2, p0, Lcn/manstep/phonemirrorBox/customview/AdjustSizeView;->g:F
  :L1
  .line 7
    iget p1, p0, Lcn/manstep/phonemirrorBox/customview/AdjustSizeView;->h:F
    iget p2, p0, Lcn/manstep/phonemirrorBox/customview/AdjustSizeView;->e:F
    add-float v1, p2, v0
    cmpg-float v1, p1, v1
    if-gez v1, :L2
    add-float/2addr p2, v0
  .line 8
    iput p2, p0, Lcn/manstep/phonemirrorBox/customview/AdjustSizeView;->h:F
    goto :L3
  :L2
  .line 9
    iget p2, p0, Lcn/manstep/phonemirrorBox/customview/AdjustSizeView;->l:F
    cmpl-float p1, p1, p2
    if-lez p1, :L3
  .line 10
    iput p2, p0, Lcn/manstep/phonemirrorBox/customview/AdjustSizeView;->h:F
  :L3
  .line 11
    iget p1, p0, Lcn/manstep/phonemirrorBox/customview/AdjustSizeView;->g:F
    iget p2, p0, Lcn/manstep/phonemirrorBox/customview/AdjustSizeView;->e:F
    iget v0, p0, Lcn/manstep/phonemirrorBox/customview/AdjustSizeView;->f:F
    iget v1, p0, Lcn/manstep/phonemirrorBox/customview/AdjustSizeView;->h:F
    invoke-direct { p0, p1, p2, v0, v1 }, Lcn/manstep/phonemirrorBox/customview/AdjustSizeView;->n(FFFF)V
    return-void
.end method

.method private g(FF)V
  .registers 5
    const/high16 v0, 16968
    add-float/2addr p1, v0
  .line 1
    iput p1, p0, Lcn/manstep/phonemirrorBox/customview/AdjustSizeView;->f:F
    add-float/2addr p2, v0
  .line 2
    iput p2, p0, Lcn/manstep/phonemirrorBox/customview/AdjustSizeView;->h:F
  .line 3
    iget p2, p0, Lcn/manstep/phonemirrorBox/customview/AdjustSizeView;->g:F
    const/high16 v0, 17352
    add-float v1, p2, v0
    cmpg-float v1, p1, v1
    if-gez v1, :L0
    add-float/2addr p2, v0
  .line 4
    iput p2, p0, Lcn/manstep/phonemirrorBox/customview/AdjustSizeView;->f:F
    goto :L1
  :L0
  .line 5
    iget p2, p0, Lcn/manstep/phonemirrorBox/customview/AdjustSizeView;->k:F
    cmpl-float p1, p1, p2
    if-lez p1, :L1
  .line 6
    iput p2, p0, Lcn/manstep/phonemirrorBox/customview/AdjustSizeView;->f:F
  :L1
  .line 7
    iget p1, p0, Lcn/manstep/phonemirrorBox/customview/AdjustSizeView;->h:F
    iget p2, p0, Lcn/manstep/phonemirrorBox/customview/AdjustSizeView;->e:F
    add-float v1, p2, v0
    cmpg-float v1, p1, v1
    if-gez v1, :L2
    add-float/2addr p2, v0
  .line 8
    iput p2, p0, Lcn/manstep/phonemirrorBox/customview/AdjustSizeView;->h:F
    goto :L3
  :L2
  .line 9
    iget p2, p0, Lcn/manstep/phonemirrorBox/customview/AdjustSizeView;->l:F
    cmpl-float p1, p1, p2
    if-lez p1, :L3
  .line 10
    iput p2, p0, Lcn/manstep/phonemirrorBox/customview/AdjustSizeView;->h:F
  :L3
  .line 11
    iget p1, p0, Lcn/manstep/phonemirrorBox/customview/AdjustSizeView;->g:F
    iget p2, p0, Lcn/manstep/phonemirrorBox/customview/AdjustSizeView;->e:F
    iget v0, p0, Lcn/manstep/phonemirrorBox/customview/AdjustSizeView;->f:F
    iget v1, p0, Lcn/manstep/phonemirrorBox/customview/AdjustSizeView;->h:F
    invoke-direct { p0, p1, p2, v0, v1 }, Lcn/manstep/phonemirrorBox/customview/AdjustSizeView;->n(FFFF)V
    return-void
.end method

.method private h(F)V
  .registers 5
    const/high16 v0, 16968
    sub-float/2addr p1, v0
  .line 1
    iput p1, p0, Lcn/manstep/phonemirrorBox/customview/AdjustSizeView;->g:F
  .line 2
    iget v0, p0, Lcn/manstep/phonemirrorBox/customview/AdjustSizeView;->c:F
    cmpg-float v1, p1, v0
    if-gez v1, :L0
  .line 3
    iput v0, p0, Lcn/manstep/phonemirrorBox/customview/AdjustSizeView;->g:F
    goto :L1
  :L0
  .line 4
    iget v0, p0, Lcn/manstep/phonemirrorBox/customview/AdjustSizeView;->f:F
    const/high16 v1, 17352
    sub-float v2, v0, v1
    cmpl-float p1, p1, v2
    if-lez p1, :L1
    sub-float/2addr v0, v1
  .line 5
    iput v0, p0, Lcn/manstep/phonemirrorBox/customview/AdjustSizeView;->g:F
  :L1
  .line 6
    iget p1, p0, Lcn/manstep/phonemirrorBox/customview/AdjustSizeView;->g:F
    iget v0, p0, Lcn/manstep/phonemirrorBox/customview/AdjustSizeView;->e:F
    iget v1, p0, Lcn/manstep/phonemirrorBox/customview/AdjustSizeView;->f:F
    iget v2, p0, Lcn/manstep/phonemirrorBox/customview/AdjustSizeView;->h:F
    invoke-direct { p0, p1, v0, v1, v2 }, Lcn/manstep/phonemirrorBox/customview/AdjustSizeView;->n(FFFF)V
    return-void
.end method

.method private i(F)V
  .registers 5
    const/high16 v0, 16968
    add-float/2addr p1, v0
  .line 1
    iput p1, p0, Lcn/manstep/phonemirrorBox/customview/AdjustSizeView;->f:F
  .line 2
    iget v0, p0, Lcn/manstep/phonemirrorBox/customview/AdjustSizeView;->g:F
    const/high16 v1, 17352
    add-float v2, v0, v1
    cmpg-float v2, p1, v2
    if-gez v2, :L0
    add-float/2addr v0, v1
  .line 3
    iput v0, p0, Lcn/manstep/phonemirrorBox/customview/AdjustSizeView;->f:F
    goto :L1
  :L0
  .line 4
    iget v0, p0, Lcn/manstep/phonemirrorBox/customview/AdjustSizeView;->k:F
    cmpl-float p1, p1, v0
    if-lez p1, :L1
  .line 5
    iput v0, p0, Lcn/manstep/phonemirrorBox/customview/AdjustSizeView;->f:F
  :L1
  .line 6
    iget p1, p0, Lcn/manstep/phonemirrorBox/customview/AdjustSizeView;->g:F
    iget v0, p0, Lcn/manstep/phonemirrorBox/customview/AdjustSizeView;->e:F
    iget v1, p0, Lcn/manstep/phonemirrorBox/customview/AdjustSizeView;->f:F
    iget v2, p0, Lcn/manstep/phonemirrorBox/customview/AdjustSizeView;->h:F
    invoke-direct { p0, p1, v0, v1, v2 }, Lcn/manstep/phonemirrorBox/customview/AdjustSizeView;->n(FFFF)V
    return-void
.end method

.method private j(F)V
  .registers 5
    const/high16 v0, 16968
    sub-float/2addr p1, v0
  .line 1
    iput p1, p0, Lcn/manstep/phonemirrorBox/customview/AdjustSizeView;->e:F
  .line 2
    iget v0, p0, Lcn/manstep/phonemirrorBox/customview/AdjustSizeView;->d:F
    cmpg-float v1, p1, v0
    if-gez v1, :L0
  .line 3
    iput v0, p0, Lcn/manstep/phonemirrorBox/customview/AdjustSizeView;->e:F
    goto :L1
  :L0
  .line 4
    iget v0, p0, Lcn/manstep/phonemirrorBox/customview/AdjustSizeView;->h:F
    const/high16 v1, 17352
    sub-float v2, v0, v1
    cmpl-float p1, p1, v2
    if-lez p1, :L1
    sub-float/2addr v0, v1
  .line 5
    iput v0, p0, Lcn/manstep/phonemirrorBox/customview/AdjustSizeView;->e:F
  :L1
  .line 6
    iget p1, p0, Lcn/manstep/phonemirrorBox/customview/AdjustSizeView;->g:F
    iget v0, p0, Lcn/manstep/phonemirrorBox/customview/AdjustSizeView;->e:F
    iget v1, p0, Lcn/manstep/phonemirrorBox/customview/AdjustSizeView;->f:F
    iget v2, p0, Lcn/manstep/phonemirrorBox/customview/AdjustSizeView;->h:F
    invoke-direct { p0, p1, v0, v1, v2 }, Lcn/manstep/phonemirrorBox/customview/AdjustSizeView;->n(FFFF)V
    return-void
.end method

.method private k(FF)V
  .registers 5
    const/high16 v0, 16968
    sub-float/2addr p1, v0
  .line 1
    iput p1, p0, Lcn/manstep/phonemirrorBox/customview/AdjustSizeView;->g:F
    sub-float/2addr p2, v0
  .line 2
    iput p2, p0, Lcn/manstep/phonemirrorBox/customview/AdjustSizeView;->e:F
  .line 3
    iget p2, p0, Lcn/manstep/phonemirrorBox/customview/AdjustSizeView;->c:F
    const/high16 v0, 17352
    cmpg-float v1, p1, p2
    if-gez v1, :L0
  .line 4
    iput p2, p0, Lcn/manstep/phonemirrorBox/customview/AdjustSizeView;->g:F
    goto :L1
  :L0
  .line 5
    iget p2, p0, Lcn/manstep/phonemirrorBox/customview/AdjustSizeView;->f:F
    sub-float v1, p2, v0
    cmpl-float p1, p1, v1
    if-lez p1, :L1
    sub-float/2addr p2, v0
  .line 6
    iput p2, p0, Lcn/manstep/phonemirrorBox/customview/AdjustSizeView;->g:F
  :L1
  .line 7
    iget p1, p0, Lcn/manstep/phonemirrorBox/customview/AdjustSizeView;->e:F
    iget p2, p0, Lcn/manstep/phonemirrorBox/customview/AdjustSizeView;->d:F
    cmpg-float v1, p1, p2
    if-gez v1, :L2
  .line 8
    iput p2, p0, Lcn/manstep/phonemirrorBox/customview/AdjustSizeView;->e:F
    goto :L3
  :L2
  .line 9
    iget p2, p0, Lcn/manstep/phonemirrorBox/customview/AdjustSizeView;->h:F
    sub-float v1, p2, v0
    cmpl-float p1, p1, v1
    if-lez p1, :L3
    sub-float/2addr p2, v0
  .line 10
    iput p2, p0, Lcn/manstep/phonemirrorBox/customview/AdjustSizeView;->e:F
  :L3
  .line 11
    iget p1, p0, Lcn/manstep/phonemirrorBox/customview/AdjustSizeView;->g:F
    iget p2, p0, Lcn/manstep/phonemirrorBox/customview/AdjustSizeView;->e:F
    iget v0, p0, Lcn/manstep/phonemirrorBox/customview/AdjustSizeView;->f:F
    iget v1, p0, Lcn/manstep/phonemirrorBox/customview/AdjustSizeView;->h:F
    invoke-direct { p0, p1, p2, v0, v1 }, Lcn/manstep/phonemirrorBox/customview/AdjustSizeView;->n(FFFF)V
    return-void
.end method

.method private l(FF)V
  .registers 5
    const/high16 v0, 16968
    add-float/2addr p1, v0
  .line 1
    iput p1, p0, Lcn/manstep/phonemirrorBox/customview/AdjustSizeView;->f:F
    sub-float/2addr p2, v0
  .line 2
    iput p2, p0, Lcn/manstep/phonemirrorBox/customview/AdjustSizeView;->e:F
  .line 3
    iget p2, p0, Lcn/manstep/phonemirrorBox/customview/AdjustSizeView;->g:F
    const/high16 v0, 17352
    add-float v1, p2, v0
    cmpg-float v1, p1, v1
    if-gez v1, :L0
    add-float/2addr p2, v0
  .line 4
    iput p2, p0, Lcn/manstep/phonemirrorBox/customview/AdjustSizeView;->f:F
    goto :L1
  :L0
  .line 5
    iget p2, p0, Lcn/manstep/phonemirrorBox/customview/AdjustSizeView;->k:F
    cmpl-float p1, p1, p2
    if-lez p1, :L1
  .line 6
    iput p2, p0, Lcn/manstep/phonemirrorBox/customview/AdjustSizeView;->f:F
  :L1
  .line 7
    iget p1, p0, Lcn/manstep/phonemirrorBox/customview/AdjustSizeView;->e:F
    iget p2, p0, Lcn/manstep/phonemirrorBox/customview/AdjustSizeView;->d:F
    cmpg-float v1, p1, p2
    if-gez v1, :L2
  .line 8
    iput p2, p0, Lcn/manstep/phonemirrorBox/customview/AdjustSizeView;->e:F
    goto :L3
  :L2
  .line 9
    iget p2, p0, Lcn/manstep/phonemirrorBox/customview/AdjustSizeView;->h:F
    sub-float v1, p2, v0
    cmpl-float p1, p1, v1
    if-lez p1, :L3
    sub-float/2addr p2, v0
  .line 10
    iput p2, p0, Lcn/manstep/phonemirrorBox/customview/AdjustSizeView;->e:F
  :L3
  .line 11
    iget p1, p0, Lcn/manstep/phonemirrorBox/customview/AdjustSizeView;->g:F
    iget p2, p0, Lcn/manstep/phonemirrorBox/customview/AdjustSizeView;->e:F
    iget v0, p0, Lcn/manstep/phonemirrorBox/customview/AdjustSizeView;->f:F
    iget v1, p0, Lcn/manstep/phonemirrorBox/customview/AdjustSizeView;->h:F
    invoke-direct { p0, p1, p2, v0, v1 }, Lcn/manstep/phonemirrorBox/customview/AdjustSizeView;->n(FFFF)V
    return-void
.end method

.method private n(FFFF)V
  .registers 6
  .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/customview/AdjustSizeView;->o:Landroid/graphics/RectF;
    float-to-int p1, p1
    int-to-float p1, p1
    float-to-int p2, p2
    int-to-float p2, p2
    float-to-int p3, p3
    int-to-float p3, p3
    float-to-int p4, p4
    int-to-float p4, p4
    invoke-virtual { v0, p1, p2, p3, p4 }, Landroid/graphics/RectF;->set(FFFF)V
    return-void
.end method

.method public c(II)V
  .registers 7
  .line 1
    invoke-direct { p0, p1, p2 }, Lcn/manstep/phonemirrorBox/customview/AdjustSizeView;->b(II)V
  .line 2
    iget p1, p0, Lcn/manstep/phonemirrorBox/customview/AdjustSizeView;->k:F
    const/high16 p2, 16384
    div-float v0, p1, p2
    const/high16 v1, 17224
    sub-float/2addr v0, v1
    iput v0, p0, Lcn/manstep/phonemirrorBox/customview/AdjustSizeView;->g:F
  .line 3
    iget v2, p0, Lcn/manstep/phonemirrorBox/customview/AdjustSizeView;->l:F
    div-float v3, v2, p2
    sub-float/2addr v3, v1
    iput v3, p0, Lcn/manstep/phonemirrorBox/customview/AdjustSizeView;->e:F
    div-float/2addr v2, p2
    add-float/2addr v2, v1
  .line 4
    iput v2, p0, Lcn/manstep/phonemirrorBox/customview/AdjustSizeView;->h:F
    div-float/2addr p1, p2
    add-float/2addr p1, v1
  .line 5
    iput p1, p0, Lcn/manstep/phonemirrorBox/customview/AdjustSizeView;->f:F
  .line 6
    invoke-direct { p0, v0, v3, p1, v2 }, Lcn/manstep/phonemirrorBox/customview/AdjustSizeView;->n(FFFF)V
    return-void
.end method

.method public d(IILandroid/graphics/Rect;)V
  .registers 5
  .line 1
    invoke-direct { p0, p1, p2 }, Lcn/manstep/phonemirrorBox/customview/AdjustSizeView;->b(II)V
  .line 2
    iget p1, p3, Landroid/graphics/Rect;->left:I
    int-to-float p1, p1
    iput p1, p0, Lcn/manstep/phonemirrorBox/customview/AdjustSizeView;->g:F
  .line 3
    iget p2, p3, Landroid/graphics/Rect;->top:I
    int-to-float p2, p2
    iput p2, p0, Lcn/manstep/phonemirrorBox/customview/AdjustSizeView;->e:F
  .line 4
    iget v0, p3, Landroid/graphics/Rect;->bottom:I
    int-to-float v0, v0
    iput v0, p0, Lcn/manstep/phonemirrorBox/customview/AdjustSizeView;->h:F
  .line 5
    iget p3, p3, Landroid/graphics/Rect;->right:I
    int-to-float p3, p3
    iput p3, p0, Lcn/manstep/phonemirrorBox/customview/AdjustSizeView;->f:F
  .line 6
    invoke-direct { p0, p1, p2, p3, v0 }, Lcn/manstep/phonemirrorBox/customview/AdjustSizeView;->n(FFFF)V
    return-void
.end method

.method public getSize()Landroid/graphics/Rect;
  .registers 6
  .line 1
    new-instance v0, Landroid/graphics/Rect;
    iget v1, p0, Lcn/manstep/phonemirrorBox/customview/AdjustSizeView;->g:F
    float-to-int v1, v1
    iget v2, p0, Lcn/manstep/phonemirrorBox/customview/AdjustSizeView;->e:F
    float-to-int v2, v2
    iget v3, p0, Lcn/manstep/phonemirrorBox/customview/AdjustSizeView;->f:F
    float-to-int v3, v3
    iget v4, p0, Lcn/manstep/phonemirrorBox/customview/AdjustSizeView;->h:F
    float-to-int v4, v4
    invoke-direct { v0, v1, v2, v3, v4 }, Landroid/graphics/Rect;-><init>(IIII)V
    return-object v0
.end method

.method public m()V
  .registers 7
  .line 1
    iget v0, p0, Lcn/manstep/phonemirrorBox/customview/AdjustSizeView;->k:F
    const/high16 v1, 16384
    div-float v2, v0, v1
    const/high16 v3, 17224
    sub-float/2addr v2, v3
    iput v2, p0, Lcn/manstep/phonemirrorBox/customview/AdjustSizeView;->g:F
  .line 2
    iget v4, p0, Lcn/manstep/phonemirrorBox/customview/AdjustSizeView;->l:F
    div-float v5, v4, v1
    sub-float/2addr v5, v3
    iput v5, p0, Lcn/manstep/phonemirrorBox/customview/AdjustSizeView;->e:F
    div-float/2addr v4, v1
    add-float/2addr v4, v3
  .line 3
    iput v4, p0, Lcn/manstep/phonemirrorBox/customview/AdjustSizeView;->h:F
    div-float/2addr v0, v1
    add-float/2addr v0, v3
  .line 4
    iput v0, p0, Lcn/manstep/phonemirrorBox/customview/AdjustSizeView;->f:F
  .line 5
    invoke-direct { p0, v2, v5, v0, v4 }, Lcn/manstep/phonemirrorBox/customview/AdjustSizeView;->n(FFFF)V
  .line 6
    invoke-virtual { p0 }, Landroid/view/View;->postInvalidate()V
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
  .registers 11
  .line 1
    iget v0, p0, Lcn/manstep/phonemirrorBox/customview/AdjustSizeView;->f:F
    iget v1, p0, Lcn/manstep/phonemirrorBox/customview/AdjustSizeView;->g:F
    sub-float/2addr v0, v1
    const/high16 v1, 17096
    div-float/2addr v0, v1
    const/high16 v1, 16544
    mul-float v0, v0, v1
  .line 2
    iget-object v2, p0, Lcn/manstep/phonemirrorBox/customview/AdjustSizeView;->o:Landroid/graphics/RectF;
    iget-object v3, p0, Lcn/manstep/phonemirrorBox/customview/AdjustSizeView;->m:Landroid/graphics/Paint;
    invoke-virtual { p1, v2, v3 }, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V
  .line 3
    iget-object v2, p0, Lcn/manstep/phonemirrorBox/customview/AdjustSizeView;->n:Landroid/graphics/Paint;
    invoke-virtual { v2, v0 }, Landroid/graphics/Paint;->setTextSize(F)V
  .line 4
    new-instance v2, Ljava/lang/StringBuilder;
    invoke-direct { v2 }, Ljava/lang/StringBuilder;-><init>()V
    iget v3, p0, Lcn/manstep/phonemirrorBox/customview/AdjustSizeView;->g:F
    float-to-int v3, v3
    invoke-virtual { v2, v3 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    const-string v3, ","
    invoke-virtual { v2, v3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget v4, p0, Lcn/manstep/phonemirrorBox/customview/AdjustSizeView;->e:F
    float-to-int v4, v4
    invoke-virtual { v2, v4 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { v2 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v2
    iget v4, p0, Lcn/manstep/phonemirrorBox/customview/AdjustSizeView;->g:F
    const/high16 v5, 16752
    add-float/2addr v4, v5
    iget v6, p0, Lcn/manstep/phonemirrorBox/customview/AdjustSizeView;->e:F
    add-float/2addr v6, v0
    const/high16 v7, 16672
    add-float/2addr v6, v7
    iget-object v8, p0, Lcn/manstep/phonemirrorBox/customview/AdjustSizeView;->n:Landroid/graphics/Paint;
    invoke-virtual { p1, v2, v4, v6, v8 }, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V
  .line 5
    new-instance v2, Ljava/lang/StringBuilder;
    invoke-direct { v2 }, Ljava/lang/StringBuilder;-><init>()V
    iget v4, p0, Lcn/manstep/phonemirrorBox/customview/AdjustSizeView;->f:F
    float-to-int v4, v4
    invoke-virtual { v2, v4 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { v2, v3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget v4, p0, Lcn/manstep/phonemirrorBox/customview/AdjustSizeView;->e:F
    float-to-int v4, v4
    invoke-virtual { v2, v4 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { v2 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v2
    iget v4, p0, Lcn/manstep/phonemirrorBox/customview/AdjustSizeView;->f:F
    mul-float v1, v1, v0
    sub-float/2addr v4, v1
    iget v6, p0, Lcn/manstep/phonemirrorBox/customview/AdjustSizeView;->e:F
    add-float/2addr v6, v0
    add-float/2addr v6, v7
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/customview/AdjustSizeView;->n:Landroid/graphics/Paint;
    invoke-virtual { p1, v2, v4, v6, v0 }, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V
  .line 6
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    iget v2, p0, Lcn/manstep/phonemirrorBox/customview/AdjustSizeView;->g:F
    float-to-int v2, v2
    invoke-virtual { v0, v2 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { v0, v3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget v2, p0, Lcn/manstep/phonemirrorBox/customview/AdjustSizeView;->h:F
    float-to-int v2, v2
    invoke-virtual { v0, v2 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    iget v2, p0, Lcn/manstep/phonemirrorBox/customview/AdjustSizeView;->g:F
    add-float/2addr v2, v5
    iget v4, p0, Lcn/manstep/phonemirrorBox/customview/AdjustSizeView;->h:F
    sub-float/2addr v4, v5
    iget-object v6, p0, Lcn/manstep/phonemirrorBox/customview/AdjustSizeView;->n:Landroid/graphics/Paint;
    invoke-virtual { p1, v0, v2, v4, v6 }, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V
  .line 7
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    iget v2, p0, Lcn/manstep/phonemirrorBox/customview/AdjustSizeView;->f:F
    float-to-int v2, v2
    invoke-virtual { v0, v2 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { v0, v3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget v2, p0, Lcn/manstep/phonemirrorBox/customview/AdjustSizeView;->h:F
    float-to-int v2, v2
    invoke-virtual { v0, v2 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    iget v2, p0, Lcn/manstep/phonemirrorBox/customview/AdjustSizeView;->f:F
    sub-float/2addr v2, v1
    iget v1, p0, Lcn/manstep/phonemirrorBox/customview/AdjustSizeView;->h:F
    sub-float/2addr v1, v5
    iget-object v3, p0, Lcn/manstep/phonemirrorBox/customview/AdjustSizeView;->n:Landroid/graphics/Paint;
    invoke-virtual { p1, v0, v2, v1, v3 }, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
  .registers 4
  .line 1
    invoke-virtual { p1 }, Landroid/view/MotionEvent;->getAction()I
    move-result v0
    if-eqz v0, :L10
    const/4 v1, 2
    if-eq v0, v1, :L0
    goto :L11
  :L0
  .line 2
    invoke-virtual { p1 }, Landroid/view/MotionEvent;->getX()F
    move-result v0
    iput v0, p0, Lcn/manstep/phonemirrorBox/customview/AdjustSizeView;->i:F
  .line 3
    invoke-virtual { p1 }, Landroid/view/MotionEvent;->getY()F
    move-result p1
    iput p1, p0, Lcn/manstep/phonemirrorBox/customview/AdjustSizeView;->j:F
  .line 4
    iget v0, p0, Lcn/manstep/phonemirrorBox/customview/AdjustSizeView;->b:I
    packed-switch v0, :L12
    goto :L9
  :L1
  .line 5
    iget p1, p0, Lcn/manstep/phonemirrorBox/customview/AdjustSizeView;->i:F
    invoke-direct { p0, p1 }, Lcn/manstep/phonemirrorBox/customview/AdjustSizeView;->h(F)V
    goto :L9
  :L2
  .line 6
    iget v0, p0, Lcn/manstep/phonemirrorBox/customview/AdjustSizeView;->i:F
    invoke-direct { p0, v0, p1 }, Lcn/manstep/phonemirrorBox/customview/AdjustSizeView;->f(FF)V
    goto :L9
  :L3
  .line 7
    invoke-direct { p0, p1 }, Lcn/manstep/phonemirrorBox/customview/AdjustSizeView;->e(F)V
    goto :L9
  :L4
  .line 8
    iget v0, p0, Lcn/manstep/phonemirrorBox/customview/AdjustSizeView;->i:F
    invoke-direct { p0, v0, p1 }, Lcn/manstep/phonemirrorBox/customview/AdjustSizeView;->g(FF)V
    goto :L9
  :L5
  .line 9
    iget p1, p0, Lcn/manstep/phonemirrorBox/customview/AdjustSizeView;->i:F
    invoke-direct { p0, p1 }, Lcn/manstep/phonemirrorBox/customview/AdjustSizeView;->i(F)V
    goto :L9
  :L6
  .line 10
    iget v0, p0, Lcn/manstep/phonemirrorBox/customview/AdjustSizeView;->i:F
    invoke-direct { p0, v0, p1 }, Lcn/manstep/phonemirrorBox/customview/AdjustSizeView;->l(FF)V
    goto :L9
  :L7
  .line 11
    invoke-direct { p0, p1 }, Lcn/manstep/phonemirrorBox/customview/AdjustSizeView;->j(F)V
    goto :L9
  :L8
  .line 12
    iget v0, p0, Lcn/manstep/phonemirrorBox/customview/AdjustSizeView;->i:F
    invoke-direct { p0, v0, p1 }, Lcn/manstep/phonemirrorBox/customview/AdjustSizeView;->k(FF)V
  :L9
  .line 13
    invoke-virtual { p0 }, Landroid/view/View;->postInvalidate()V
    goto :L11
  :L10
  .line 14
    invoke-virtual { p1 }, Landroid/view/MotionEvent;->getX()F
    move-result v0
    invoke-virtual { p1 }, Landroid/view/MotionEvent;->getY()F
    move-result p1
    invoke-direct { p0, v0, p1 }, Lcn/manstep/phonemirrorBox/customview/AdjustSizeView;->a(FF)I
    move-result p1
    iput p1, p0, Lcn/manstep/phonemirrorBox/customview/AdjustSizeView;->b:I
  :L11
    const/4 p1, 1
    return p1
  :L12
  .packed-switch 0
    :L8
    :L7
    :L6
    :L5
    :L4
    :L3
    :L2
    :L1
  .end packed-switch
.end method
