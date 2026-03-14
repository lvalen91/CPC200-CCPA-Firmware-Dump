.class Lc/p/r;
.super Ljava/lang/Object;
.source "SourceFile"

.field private final static a:Z

.field private final static b:Z

.field private final static c:Z

.method static constructor <clinit>()V
  .registers 4
  .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    const/4 v1, 1
    const/4 v2, 0
    const/16 v3, 19
    if-lt v0, v3, :L0
    const/4 v0, 1
    goto :L1
  :L0
    const/4 v0, 0
  :L1
    sput-boolean v0, Lc/p/r;->a:Z
  .line 2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v3, 18
    if-lt v0, v3, :L2
    const/4 v0, 1
    goto :L3
  :L2
    const/4 v0, 0
  :L3
    sput-boolean v0, Lc/p/r;->b:Z
  .line 3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v3, 28
    if-lt v0, v3, :L4
    goto :L5
  :L4
    const/4 v1, 0
  :L5
    sput-boolean v1, Lc/p/r;->c:Z
    return-void
.end method

.method public constructor <init>()V
  .registers 2
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method static a(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/View;)Landroid/view/View;
  .registers 10
  .line 1
    new-instance v0, Landroid/graphics/Matrix;
    invoke-direct { v0 }, Landroid/graphics/Matrix;-><init>()V
  .line 2
    invoke-virtual { p2 }, Landroid/view/View;->getScrollX()I
    move-result v1
    neg-int v1, v1
    int-to-float v1, v1
    invoke-virtual { p2 }, Landroid/view/View;->getScrollY()I
    move-result p2
    neg-int p2, p2
    int-to-float p2, p2
    invoke-virtual { v0, v1, p2 }, Landroid/graphics/Matrix;->setTranslate(FF)V
  .line 3
    invoke-static { p1, v0 }, Lc/p/c0;->i(Landroid/view/View;Landroid/graphics/Matrix;)V
  .line 4
    invoke-static { p0, v0 }, Lc/p/c0;->j(Landroid/view/View;Landroid/graphics/Matrix;)V
  .line 5
    new-instance p2, Landroid/graphics/RectF;
    invoke-virtual { p1 }, Landroid/view/View;->getWidth()I
    move-result v1
    int-to-float v1, v1
    invoke-virtual { p1 }, Landroid/view/View;->getHeight()I
    move-result v2
    int-to-float v2, v2
    const/4 v3, 0
    invoke-direct { p2, v3, v3, v1, v2 }, Landroid/graphics/RectF;-><init>(FFFF)V
  .line 6
    invoke-virtual { v0, p2 }, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z
  .line 7
    iget v1, p2, Landroid/graphics/RectF;->left:F
    invoke-static { v1 }, Ljava/lang/Math;->round(F)I
    move-result v1
  .line 8
    iget v2, p2, Landroid/graphics/RectF;->top:F
    invoke-static { v2 }, Ljava/lang/Math;->round(F)I
    move-result v2
  .line 9
    iget v3, p2, Landroid/graphics/RectF;->right:F
    invoke-static { v3 }, Ljava/lang/Math;->round(F)I
    move-result v3
  .line 10
    iget v4, p2, Landroid/graphics/RectF;->bottom:F
    invoke-static { v4 }, Ljava/lang/Math;->round(F)I
    move-result v4
  .line 11
    new-instance v5, Landroid/widget/ImageView;
    invoke-virtual { p1 }, Landroid/view/View;->getContext()Landroid/content/Context;
    move-result-object v6
    invoke-direct { v5, v6 }, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V
  .line 12
    sget-object v6, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;
    invoke-virtual { v5, v6 }, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V
  .line 13
    invoke-static { p1, v0, p2, p0 }, Lc/p/r;->b(Landroid/view/View;Landroid/graphics/Matrix;Landroid/graphics/RectF;Landroid/view/ViewGroup;)Landroid/graphics/Bitmap;
    move-result-object p0
    if-eqz p0, :L0
  .line 14
    invoke-virtual { v5, p0 }, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
  :L0
    sub-int p0, v3, v1
    const/high16 p1, 16384
  .line 15
    invoke-static { p0, p1 }, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I
    move-result p0
    sub-int p2, v4, v2
  .line 16
    invoke-static { p2, p1 }, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I
    move-result p1
  .line 17
    invoke-virtual { v5, p0, p1 }, Landroid/widget/ImageView;->measure(II)V
  .line 18
    invoke-virtual { v5, v1, v2, v3, v4 }, Landroid/widget/ImageView;->layout(IIII)V
    return-object v5
.end method

.method private static b(Landroid/view/View;Landroid/graphics/Matrix;Landroid/graphics/RectF;Landroid/view/ViewGroup;)Landroid/graphics/Bitmap;
  .registers 12
  .line 1
    sget-boolean v0, Lc/p/r;->a:Z
    const/4 v1, 0
    if-eqz v0, :L1
  .line 2
    invoke-virtual { p0 }, Landroid/view/View;->isAttachedToWindow()Z
    move-result v0
    xor-int/lit8 v0, v0, 1
    if-nez p3, :L0
    goto :L2
  :L0
  .line 3
    invoke-virtual { p3 }, Landroid/view/ViewGroup;->isAttachedToWindow()Z
    move-result v2
    goto :L3
  :L1
    const/4 v0, 0
  :L2
    const/4 v2, 0
  :L3
  .line 4
    sget-boolean v3, Lc/p/r;->b:Z
    const/4 v4, 0
    if-eqz v3, :L5
    if-eqz v0, :L5
    if-nez v2, :L4
    return-object v4
  :L4
  .line 5
    invoke-virtual { p0 }, Landroid/view/View;->getParent()Landroid/view/ViewParent;
    move-result-object v1
    check-cast v1, Landroid/view/ViewGroup;
  .line 6
    invoke-virtual { v1, p0 }, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I
    move-result v2
  .line 7
    invoke-virtual { p3 }, Landroid/view/ViewGroup;->getOverlay()Landroid/view/ViewGroupOverlay;
    move-result-object v3
    invoke-virtual { v3, p0 }, Landroid/view/ViewGroupOverlay;->add(Landroid/view/View;)V
    goto :L6
  :L5
    move-object v1, v4
    const/4 v2, 0
  :L6
  .line 8
    invoke-virtual { p2 }, Landroid/graphics/RectF;->width()F
    move-result v3
    invoke-static { v3 }, Ljava/lang/Math;->round(F)I
    move-result v3
  .line 9
    invoke-virtual { p2 }, Landroid/graphics/RectF;->height()F
    move-result v5
    invoke-static { v5 }, Ljava/lang/Math;->round(F)I
    move-result v5
    if-lez v3, :L8
    if-lez v5, :L8
    const/high16 v4, 16256
    const/high16 v6, 18816
    mul-int v7, v3, v5
    int-to-float v7, v7
    div-float/2addr v6, v7
  .line 10
    invoke-static { v4, v6 }, Ljava/lang/Math;->min(FF)F
    move-result v4
    int-to-float v3, v3
    mul-float v3, v3, v4
  .line 11
    invoke-static { v3 }, Ljava/lang/Math;->round(F)I
    move-result v3
    int-to-float v5, v5
    mul-float v5, v5, v4
  .line 12
    invoke-static { v5 }, Ljava/lang/Math;->round(F)I
    move-result v5
  .line 13
    iget v6, p2, Landroid/graphics/RectF;->left:F
    neg-float v6, v6
    iget p2, p2, Landroid/graphics/RectF;->top:F
    neg-float p2, p2
    invoke-virtual { p1, v6, p2 }, Landroid/graphics/Matrix;->postTranslate(FF)Z
  .line 14
    invoke-virtual { p1, v4, v4 }, Landroid/graphics/Matrix;->postScale(FF)Z
  .line 15
    sget-boolean p2, Lc/p/r;->c:Z
    if-eqz p2, :L7
  .line 16
    new-instance p2, Landroid/graphics/Picture;
    invoke-direct { p2 }, Landroid/graphics/Picture;-><init>()V
  .line 17
    invoke-virtual { p2, v3, v5 }, Landroid/graphics/Picture;->beginRecording(II)Landroid/graphics/Canvas;
    move-result-object v3
  .line 18
    invoke-virtual { v3, p1 }, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V
  .line 19
    invoke-virtual { p0, v3 }, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V
  .line 20
    invoke-virtual { p2 }, Landroid/graphics/Picture;->endRecording()V
  .line 21
    invoke-static { p2 }, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Picture;)Landroid/graphics/Bitmap;
    move-result-object v4
    goto :L8
  :L7
  .line 22
    sget-object p2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;
    invoke-static { v3, v5, p2 }, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    move-result-object v4
  .line 23
    new-instance p2, Landroid/graphics/Canvas;
    invoke-direct { p2, v4 }, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V
  .line 24
    invoke-virtual { p2, p1 }, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V
  .line 25
    invoke-virtual { p0, p2 }, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V
  :L8
  .line 26
    sget-boolean p1, Lc/p/r;->b:Z
    if-eqz p1, :L9
    if-eqz v0, :L9
  .line 27
    invoke-virtual { p3 }, Landroid/view/ViewGroup;->getOverlay()Landroid/view/ViewGroupOverlay;
    move-result-object p1
    invoke-virtual { p1, p0 }, Landroid/view/ViewGroupOverlay;->remove(Landroid/view/View;)V
  .line 28
    invoke-virtual { v1, p0, v2 }, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V
  :L9
    return-object v4
.end method

.method static c(Landroid/animation/Animator;Landroid/animation/Animator;)Landroid/animation/Animator;
  .registers 5
    if-nez p0, :L0
    return-object p1
  :L0
    if-nez p1, :L1
    return-object p0
  :L1
  .line 1
    new-instance v0, Landroid/animation/AnimatorSet;
    invoke-direct { v0 }, Landroid/animation/AnimatorSet;-><init>()V
    const/4 v1, 2
    new-array v1, v1, [Landroid/animation/Animator;
    const/4 v2, 0
    aput-object p0, v1, v2
    const/4 p0, 1
    aput-object p1, v1, p0
  .line 2
    invoke-virtual { v0, v1 }, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V
    return-object v0
.end method
