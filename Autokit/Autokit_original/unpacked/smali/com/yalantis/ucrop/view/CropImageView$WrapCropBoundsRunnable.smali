.class Lcom/yalantis/ucrop/view/CropImageView$WrapCropBoundsRunnable;
.super Ljava/lang/Object;
.implements Ljava/lang/Runnable;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Lcom/yalantis/ucrop/view/CropImageView;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 10
  name = "WrapCropBoundsRunnable"
.end annotation

.field private final mCenterDiffX:F

.field private final mCenterDiffY:F

.field private final mCropImageView:Ljava/lang/ref/WeakReference;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "Ljava/lang/ref/WeakReference<",
      "Lcom/yalantis/ucrop/view/CropImageView;",
      ">;"
    }
  .end annotation
.end field

.field private final mDeltaScale:F

.field private final mDurationMs:J

.field private final mOldScale:F

.field private final mOldX:F

.field private final mOldY:F

.field private final mStartTime:J

.field private final mWillBeImageInBoundsAfterTranslate:Z

.method public constructor <init>(Lcom/yalantis/ucrop/view/CropImageView;JFFFFFFZ)V
  .registers 12
  .line 1
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
  .line 2
    new-instance v0, Ljava/lang/ref/WeakReference;
    invoke-direct { v0, p1 }, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V
    iput-object v0, p0, Lcom/yalantis/ucrop/view/CropImageView$WrapCropBoundsRunnable;->mCropImageView:Ljava/lang/ref/WeakReference;
  .line 3
    iput-wide p2, p0, Lcom/yalantis/ucrop/view/CropImageView$WrapCropBoundsRunnable;->mDurationMs:J
  .line 4
    invoke-static { }, Ljava/lang/System;->currentTimeMillis()J
    move-result-wide p1
    iput-wide p1, p0, Lcom/yalantis/ucrop/view/CropImageView$WrapCropBoundsRunnable;->mStartTime:J
  .line 5
    iput p4, p0, Lcom/yalantis/ucrop/view/CropImageView$WrapCropBoundsRunnable;->mOldX:F
  .line 6
    iput p5, p0, Lcom/yalantis/ucrop/view/CropImageView$WrapCropBoundsRunnable;->mOldY:F
  .line 7
    iput p6, p0, Lcom/yalantis/ucrop/view/CropImageView$WrapCropBoundsRunnable;->mCenterDiffX:F
  .line 8
    iput p7, p0, Lcom/yalantis/ucrop/view/CropImageView$WrapCropBoundsRunnable;->mCenterDiffY:F
  .line 9
    iput p8, p0, Lcom/yalantis/ucrop/view/CropImageView$WrapCropBoundsRunnable;->mOldScale:F
  .line 10
    iput p9, p0, Lcom/yalantis/ucrop/view/CropImageView$WrapCropBoundsRunnable;->mDeltaScale:F
  .line 11
    iput-boolean p10, p0, Lcom/yalantis/ucrop/view/CropImageView$WrapCropBoundsRunnable;->mWillBeImageInBoundsAfterTranslate:Z
    return-void
.end method

.method public run()V
  .registers 9
  .line 1
    iget-object v0, p0, Lcom/yalantis/ucrop/view/CropImageView$WrapCropBoundsRunnable;->mCropImageView:Ljava/lang/ref/WeakReference;
    invoke-virtual { v0 }, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Lcom/yalantis/ucrop/view/CropImageView;
    if-nez v0, :L0
    return-void
  :L0
  .line 2
    invoke-static { }, Ljava/lang/System;->currentTimeMillis()J
    move-result-wide v1
  .line 3
    iget-wide v3, p0, Lcom/yalantis/ucrop/view/CropImageView$WrapCropBoundsRunnable;->mDurationMs:J
    iget-wide v5, p0, Lcom/yalantis/ucrop/view/CropImageView$WrapCropBoundsRunnable;->mStartTime:J
    sub-long/2addr v1, v5
    invoke-static { v3, v4, v1, v2 }, Ljava/lang/Math;->min(JJ)J
    move-result-wide v1
    long-to-float v1, v1
  .line 4
    iget v2, p0, Lcom/yalantis/ucrop/view/CropImageView$WrapCropBoundsRunnable;->mCenterDiffX:F
    iget-wide v3, p0, Lcom/yalantis/ucrop/view/CropImageView$WrapCropBoundsRunnable;->mDurationMs:J
    long-to-float v3, v3
    const/4 v4, 0
    invoke-static { v1, v4, v2, v3 }, Lcom/yalantis/ucrop/util/CubicEasing;->easeOut(FFFF)F
    move-result v2
  .line 5
    iget v3, p0, Lcom/yalantis/ucrop/view/CropImageView$WrapCropBoundsRunnable;->mCenterDiffY:F
    iget-wide v5, p0, Lcom/yalantis/ucrop/view/CropImageView$WrapCropBoundsRunnable;->mDurationMs:J
    long-to-float v5, v5
    invoke-static { v1, v4, v3, v5 }, Lcom/yalantis/ucrop/util/CubicEasing;->easeOut(FFFF)F
    move-result v3
  .line 6
    iget v5, p0, Lcom/yalantis/ucrop/view/CropImageView$WrapCropBoundsRunnable;->mDeltaScale:F
    iget-wide v6, p0, Lcom/yalantis/ucrop/view/CropImageView$WrapCropBoundsRunnable;->mDurationMs:J
    long-to-float v6, v6
    invoke-static { v1, v4, v5, v6 }, Lcom/yalantis/ucrop/util/CubicEasing;->easeInOut(FFFF)F
    move-result v4
  .line 7
    iget-wide v5, p0, Lcom/yalantis/ucrop/view/CropImageView$WrapCropBoundsRunnable;->mDurationMs:J
    long-to-float v5, v5
    cmpg-float v1, v1, v5
    if-gez v1, :L2
  .line 8
    iget-object v1, v0, Lcom/yalantis/ucrop/view/TransformImageView;->mCurrentImageCenter:[F
    const/4 v5, 0
    aget v5, v1, v5
    iget v6, p0, Lcom/yalantis/ucrop/view/CropImageView$WrapCropBoundsRunnable;->mOldX:F
    sub-float/2addr v5, v6
    sub-float/2addr v2, v5
    const/4 v5, 1
    aget v1, v1, v5
    iget v5, p0, Lcom/yalantis/ucrop/view/CropImageView$WrapCropBoundsRunnable;->mOldY:F
    sub-float/2addr v1, v5
    sub-float/2addr v3, v1
    invoke-virtual { v0, v2, v3 }, Lcom/yalantis/ucrop/view/TransformImageView;->postTranslate(FF)V
  .line 9
    iget-boolean v1, p0, Lcom/yalantis/ucrop/view/CropImageView$WrapCropBoundsRunnable;->mWillBeImageInBoundsAfterTranslate:Z
    if-nez v1, :L1
  .line 10
    iget v1, p0, Lcom/yalantis/ucrop/view/CropImageView$WrapCropBoundsRunnable;->mOldScale:F
    add-float/2addr v1, v4
    invoke-static { v0 }, Lcom/yalantis/ucrop/view/CropImageView;->access$000(Lcom/yalantis/ucrop/view/CropImageView;)Landroid/graphics/RectF;
    move-result-object v2
    invoke-virtual { v2 }, Landroid/graphics/RectF;->centerX()F
    move-result v2
    invoke-static { v0 }, Lcom/yalantis/ucrop/view/CropImageView;->access$000(Lcom/yalantis/ucrop/view/CropImageView;)Landroid/graphics/RectF;
    move-result-object v3
    invoke-virtual { v3 }, Landroid/graphics/RectF;->centerY()F
    move-result v3
    invoke-virtual { v0, v1, v2, v3 }, Lcom/yalantis/ucrop/view/CropImageView;->zoomInImage(FFF)V
  :L1
  .line 11
    invoke-virtual { v0 }, Lcom/yalantis/ucrop/view/CropImageView;->isImageWrapCropBounds()Z
    move-result v1
    if-nez v1, :L2
  .line 12
    invoke-virtual { v0, p0 }, Landroid/widget/ImageView;->post(Ljava/lang/Runnable;)Z
  :L2
    return-void
.end method
