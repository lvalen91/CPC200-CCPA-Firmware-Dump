.class Lcom/google/android/material/textfield/c;
.super Ld/c/a/a/a0/g;
.source "SourceFile"

.field private final A:Landroid/graphics/RectF;

.field private B:I

.field private final z:Landroid/graphics/Paint;

.method constructor <init>()V
  .registers 2
    const/4 v0, 0
  .line 1
    invoke-direct { p0, v0 }, Lcom/google/android/material/textfield/c;-><init>(Ld/c/a/a/a0/k;)V
    return-void
.end method

.method constructor <init>(Ld/c/a/a/a0/k;)V
  .registers 3
    if-eqz p1, :L0
    goto :L1
  :L0
  .line 2
    new-instance p1, Ld/c/a/a/a0/k;
    invoke-direct { p1 }, Ld/c/a/a/a0/k;-><init>()V
  :L1
    invoke-direct { p0, p1 }, Ld/c/a/a/a0/g;-><init>(Ld/c/a/a/a0/k;)V
  .line 3
    new-instance p1, Landroid/graphics/Paint;
    const/4 v0, 1
    invoke-direct { p1, v0 }, Landroid/graphics/Paint;-><init>(I)V
    iput-object p1, p0, Lcom/google/android/material/textfield/c;->z:Landroid/graphics/Paint;
  .line 4
    invoke-direct { p0 }, Lcom/google/android/material/textfield/c;->p0()V
  .line 5
    new-instance p1, Landroid/graphics/RectF;
    invoke-direct { p1 }, Landroid/graphics/RectF;-><init>()V
    iput-object p1, p0, Lcom/google/android/material/textfield/c;->A:Landroid/graphics/RectF;
    return-void
.end method

.method private j0(Landroid/graphics/Canvas;)V
  .registers 3
  .line 1
    invoke-virtual { p0 }, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;
    move-result-object v0
    invoke-direct { p0, v0 }, Lcom/google/android/material/textfield/c;->q0(Landroid/graphics/drawable/Drawable$Callback;)Z
    move-result v0
    if-nez v0, :L0
  .line 2
    iget v0, p0, Lcom/google/android/material/textfield/c;->B:I
    invoke-virtual { p1, v0 }, Landroid/graphics/Canvas;->restoreToCount(I)V
  :L0
    return-void
.end method

.method private k0(Landroid/graphics/Canvas;)V
  .registers 4
  .line 1
    invoke-virtual { p0 }, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;
    move-result-object v0
  .line 2
    invoke-direct { p0, v0 }, Lcom/google/android/material/textfield/c;->q0(Landroid/graphics/drawable/Drawable$Callback;)Z
    move-result v1
    if-eqz v1, :L0
  .line 3
    check-cast v0, Landroid/view/View;
  .line 4
    invoke-virtual { v0 }, Landroid/view/View;->getLayerType()I
    move-result p1
    const/4 v1, 2
    if-eq p1, v1, :L1
    const/4 p1, 0
  .line 5
    invoke-virtual { v0, v1, p1 }, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V
    goto :L1
  :L0
  .line 6
    invoke-direct { p0, p1 }, Lcom/google/android/material/textfield/c;->m0(Landroid/graphics/Canvas;)V
  :L1
    return-void
.end method

.method private m0(Landroid/graphics/Canvas;)V
  .registers 10
  .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v1, 21
    if-lt v0, v1, :L0
    const/4 v3, 0
    const/4 v4, 0
  .line 2
    invoke-virtual { p1 }, Landroid/graphics/Canvas;->getWidth()I
    move-result v0
    int-to-float v5, v0
    invoke-virtual { p1 }, Landroid/graphics/Canvas;->getHeight()I
    move-result v0
    int-to-float v6, v0
    const/4 v7, 0
    move-object v2, p1
    invoke-virtual/range { v2 .. v7 }, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;)I
    move-result p1
    iput p1, p0, Lcom/google/android/material/textfield/c;->B:I
    goto :L1
  :L0
    const/4 v1, 0
    const/4 v2, 0
  .line 3
    invoke-virtual { p1 }, Landroid/graphics/Canvas;->getWidth()I
    move-result v0
    int-to-float v3, v0
    invoke-virtual { p1 }, Landroid/graphics/Canvas;->getHeight()I
    move-result v0
    int-to-float v4, v0
    const/4 v5, 0
    const/16 v6, 31
    move-object v0, p1
    invoke-virtual/range { v0 .. v6 }, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;I)I
    move-result p1
    iput p1, p0, Lcom/google/android/material/textfield/c;->B:I
  :L1
    return-void
.end method

.method private p0()V
  .registers 4
  .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/c;->z:Landroid/graphics/Paint;
    sget-object v1, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;
    invoke-virtual { v0, v1 }, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V
  .line 2
    iget-object v0, p0, Lcom/google/android/material/textfield/c;->z:Landroid/graphics/Paint;
    const/4 v1, -1
    invoke-virtual { v0, v1 }, Landroid/graphics/Paint;->setColor(I)V
  .line 3
    iget-object v0, p0, Lcom/google/android/material/textfield/c;->z:Landroid/graphics/Paint;
    new-instance v1, Landroid/graphics/PorterDuffXfermode;
    sget-object v2, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;
    invoke-direct { v1, v2 }, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V
    invoke-virtual { v0, v1 }, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;
    return-void
.end method

.method private q0(Landroid/graphics/drawable/Drawable$Callback;)Z
  .registers 2
  .line 1
    instance-of p1, p1, Landroid/view/View;
    return p1
.end method

.method public draw(Landroid/graphics/Canvas;)V
  .registers 4
  .line 1
    invoke-direct { p0, p1 }, Lcom/google/android/material/textfield/c;->k0(Landroid/graphics/Canvas;)V
  .line 2
    invoke-super { p0, p1 }, Ld/c/a/a/a0/g;->draw(Landroid/graphics/Canvas;)V
  .line 3
    iget-object v0, p0, Lcom/google/android/material/textfield/c;->A:Landroid/graphics/RectF;
    iget-object v1, p0, Lcom/google/android/material/textfield/c;->z:Landroid/graphics/Paint;
    invoke-virtual { p1, v0, v1 }, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V
  .line 4
    invoke-direct { p0, p1 }, Lcom/google/android/material/textfield/c;->j0(Landroid/graphics/Canvas;)V
    return-void
.end method

.method i0()Z
  .registers 2
  .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/c;->A:Landroid/graphics/RectF;
    invoke-virtual { v0 }, Landroid/graphics/RectF;->isEmpty()Z
    move-result v0
    xor-int/lit8 v0, v0, 1
    return v0
.end method

.method l0()V
  .registers 2
    const/4 v0, 0
  .line 1
    invoke-virtual { p0, v0, v0, v0, v0 }, Lcom/google/android/material/textfield/c;->n0(FFFF)V
    return-void
.end method

.method n0(FFFF)V
  .registers 7
  .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/c;->A:Landroid/graphics/RectF;
    iget v1, v0, Landroid/graphics/RectF;->left:F
    cmpl-float v1, p1, v1
    if-nez v1, :L0
    iget v1, v0, Landroid/graphics/RectF;->top:F
    cmpl-float v1, p2, v1
    if-nez v1, :L0
    iget v1, v0, Landroid/graphics/RectF;->right:F
    cmpl-float v1, p3, v1
    if-nez v1, :L0
    iget v0, v0, Landroid/graphics/RectF;->bottom:F
    cmpl-float v0, p4, v0
    if-eqz v0, :L1
  :L0
  .line 2
    iget-object v0, p0, Lcom/google/android/material/textfield/c;->A:Landroid/graphics/RectF;
    invoke-virtual { v0, p1, p2, p3, p4 }, Landroid/graphics/RectF;->set(FFFF)V
  .line 3
    invoke-virtual { p0 }, Ld/c/a/a/a0/g;->invalidateSelf()V
  :L1
    return-void
.end method

.method o0(Landroid/graphics/RectF;)V
  .registers 5
  .line 1
    iget v0, p1, Landroid/graphics/RectF;->left:F
    iget v1, p1, Landroid/graphics/RectF;->top:F
    iget v2, p1, Landroid/graphics/RectF;->right:F
    iget p1, p1, Landroid/graphics/RectF;->bottom:F
    invoke-virtual { p0, v0, v1, v2, p1 }, Lcom/google/android/material/textfield/c;->n0(FFFF)V
    return-void
.end method
