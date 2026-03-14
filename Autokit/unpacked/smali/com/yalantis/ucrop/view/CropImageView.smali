.class public Lcom/yalantis/ucrop/view/CropImageView;
.super Lcom/yalantis/ucrop/view/TransformImageView;
.source "SourceFile"

.annotation system Ldalvik/annotation/MemberClasses;
  value = {
    Lcom/yalantis/ucrop/view/CropImageView$ZoomImageToPosition;,
    Lcom/yalantis/ucrop/view/CropImageView$WrapCropBoundsRunnable;
  }
.end annotation

.field public final static DEFAULT_ASPECT_RATIO:F = 0.0F

.field public final static DEFAULT_IMAGE_TO_CROP_BOUNDS_ANIM_DURATION:I = 500

.field public final static DEFAULT_MAX_BITMAP_SIZE:I = 0

.field public final static DEFAULT_MAX_SCALE_MULTIPLIER:F = 10.0F

.field public final static SOURCE_IMAGE_ASPECT_RATIO:F

.field private mCropBoundsChangeListener:Lcom/yalantis/ucrop/callback/CropBoundsChangeListener;

.field private final mCropRect:Landroid/graphics/RectF;

.field private mImageToWrapCropBoundsAnimDuration:J

.field private mMaxResultImageSizeX:I

.field private mMaxResultImageSizeY:I

.field private mMaxScale:F

.field private mMaxScaleMultiplier:F

.field private mMinScale:F

.field private mTargetAspectRatio:F

.field private final mTempMatrix:Landroid/graphics/Matrix;

.field private mWrapCropBoundsRunnable:Ljava/lang/Runnable;

.field private mZoomImageToPositionRunnable:Ljava/lang/Runnable;

.method public constructor <init>(Landroid/content/Context;)V
  .registers 3
    const/4 v0, 0
  .line 1
    invoke-direct { p0, p1, v0 }, Lcom/yalantis/ucrop/view/CropImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
  .registers 4
    const/4 v0, 0
  .line 2
    invoke-direct { p0, p1, p2, v0 }, Lcom/yalantis/ucrop/view/CropImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
  .registers 4
  .line 3
    invoke-direct { p0, p1, p2, p3 }, Lcom/yalantis/ucrop/view/TransformImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
  .line 4
    new-instance p1, Landroid/graphics/RectF;
    invoke-direct { p1 }, Landroid/graphics/RectF;-><init>()V
    iput-object p1, p0, Lcom/yalantis/ucrop/view/CropImageView;->mCropRect:Landroid/graphics/RectF;
  .line 5
    new-instance p1, Landroid/graphics/Matrix;
    invoke-direct { p1 }, Landroid/graphics/Matrix;-><init>()V
    iput-object p1, p0, Lcom/yalantis/ucrop/view/CropImageView;->mTempMatrix:Landroid/graphics/Matrix;
    const/high16 p1, 16672
  .line 6
    iput p1, p0, Lcom/yalantis/ucrop/view/CropImageView;->mMaxScaleMultiplier:F
    const/4 p1, 0
  .line 7
    iput-object p1, p0, Lcom/yalantis/ucrop/view/CropImageView;->mZoomImageToPositionRunnable:Ljava/lang/Runnable;
    const/4 p1, 0
  .line 8
    iput p1, p0, Lcom/yalantis/ucrop/view/CropImageView;->mMaxResultImageSizeX:I
    iput p1, p0, Lcom/yalantis/ucrop/view/CropImageView;->mMaxResultImageSizeY:I
    const-wide/16 p1, 500
  .line 9
    iput-wide p1, p0, Lcom/yalantis/ucrop/view/CropImageView;->mImageToWrapCropBoundsAnimDuration:J
    return-void
.end method

.method static synthetic access$000(Lcom/yalantis/ucrop/view/CropImageView;)Landroid/graphics/RectF;
  .registers 1
  .line 1
    iget-object p0, p0, Lcom/yalantis/ucrop/view/CropImageView;->mCropRect:Landroid/graphics/RectF;
    return-object p0
.end method

.method private calculateImageIndents()[F
  .registers 8
  .line 1
    iget-object v0, p0, Lcom/yalantis/ucrop/view/CropImageView;->mTempMatrix:Landroid/graphics/Matrix;
    invoke-virtual { v0 }, Landroid/graphics/Matrix;->reset()V
  .line 2
    iget-object v0, p0, Lcom/yalantis/ucrop/view/CropImageView;->mTempMatrix:Landroid/graphics/Matrix;
    invoke-virtual { p0 }, Lcom/yalantis/ucrop/view/TransformImageView;->getCurrentAngle()F
    move-result v1
    neg-float v1, v1
    invoke-virtual { v0, v1 }, Landroid/graphics/Matrix;->setRotate(F)V
  .line 3
    iget-object v0, p0, Lcom/yalantis/ucrop/view/TransformImageView;->mCurrentImageCorners:[F
    array-length v1, v0
    invoke-static { v0, v1 }, Ljava/util/Arrays;->copyOf([FI)[F
    move-result-object v0
  .line 4
    iget-object v1, p0, Lcom/yalantis/ucrop/view/CropImageView;->mCropRect:Landroid/graphics/RectF;
    invoke-static { v1 }, Lcom/yalantis/ucrop/util/RectUtils;->getCornersFromRect(Landroid/graphics/RectF;)[F
    move-result-object v1
  .line 5
    iget-object v2, p0, Lcom/yalantis/ucrop/view/CropImageView;->mTempMatrix:Landroid/graphics/Matrix;
    invoke-virtual { v2, v0 }, Landroid/graphics/Matrix;->mapPoints([F)V
  .line 6
    iget-object v2, p0, Lcom/yalantis/ucrop/view/CropImageView;->mTempMatrix:Landroid/graphics/Matrix;
    invoke-virtual { v2, v1 }, Landroid/graphics/Matrix;->mapPoints([F)V
  .line 7
    invoke-static { v0 }, Lcom/yalantis/ucrop/util/RectUtils;->trapToRect([F)Landroid/graphics/RectF;
    move-result-object v0
  .line 8
    invoke-static { v1 }, Lcom/yalantis/ucrop/util/RectUtils;->trapToRect([F)Landroid/graphics/RectF;
    move-result-object v1
  .line 9
    iget v2, v0, Landroid/graphics/RectF;->left:F
    iget v3, v1, Landroid/graphics/RectF;->left:F
    sub-float/2addr v2, v3
  .line 10
    iget v3, v0, Landroid/graphics/RectF;->top:F
    iget v4, v1, Landroid/graphics/RectF;->top:F
    sub-float/2addr v3, v4
  .line 11
    iget v4, v0, Landroid/graphics/RectF;->right:F
    iget v5, v1, Landroid/graphics/RectF;->right:F
    sub-float/2addr v4, v5
  .line 12
    iget v0, v0, Landroid/graphics/RectF;->bottom:F
    iget v1, v1, Landroid/graphics/RectF;->bottom:F
    sub-float/2addr v0, v1
    const/4 v1, 4
    new-array v1, v1, [F
    const/4 v5, 0
    cmpl-float v6, v2, v5
    if-lez v6, :L0
    goto :L1
  :L0
    const/4 v2, 0
  :L1
    const/4 v6, 0
    aput v2, v1, v6
    const/4 v2, 1
    cmpl-float v6, v3, v5
    if-lez v6, :L2
    goto :L3
  :L2
    const/4 v3, 0
  :L3
    aput v3, v1, v2
    const/4 v2, 2
    cmpg-float v3, v4, v5
    if-gez v3, :L4
    goto :L5
  :L4
    const/4 v4, 0
  :L5
    aput v4, v1, v2
    const/4 v2, 3
    cmpg-float v3, v0, v5
    if-gez v3, :L6
    goto :L7
  :L6
    const/4 v0, 0
  :L7
    aput v0, v1, v2
  .line 13
    iget-object v0, p0, Lcom/yalantis/ucrop/view/CropImageView;->mTempMatrix:Landroid/graphics/Matrix;
    invoke-virtual { v0 }, Landroid/graphics/Matrix;->reset()V
  .line 14
    iget-object v0, p0, Lcom/yalantis/ucrop/view/CropImageView;->mTempMatrix:Landroid/graphics/Matrix;
    invoke-virtual { p0 }, Lcom/yalantis/ucrop/view/TransformImageView;->getCurrentAngle()F
    move-result v2
    invoke-virtual { v0, v2 }, Landroid/graphics/Matrix;->setRotate(F)V
  .line 15
    iget-object v0, p0, Lcom/yalantis/ucrop/view/CropImageView;->mTempMatrix:Landroid/graphics/Matrix;
    invoke-virtual { v0, v1 }, Landroid/graphics/Matrix;->mapPoints([F)V
    return-object v1
.end method

.method private calculateImageScaleBounds()V
  .registers 3
  .line 1
    invoke-virtual { p0 }, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;
    move-result-object v0
    if-nez v0, :L0
    return-void
  :L0
  .line 2
    invoke-virtual { v0 }, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I
    move-result v1
    int-to-float v1, v1
    invoke-virtual { v0 }, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I
    move-result v0
    int-to-float v0, v0
    invoke-direct { p0, v1, v0 }, Lcom/yalantis/ucrop/view/CropImageView;->calculateImageScaleBounds(FF)V
    return-void
.end method

.method private calculateImageScaleBounds(FF)V
  .registers 5
  .line 3
    iget-object v0, p0, Lcom/yalantis/ucrop/view/CropImageView;->mCropRect:Landroid/graphics/RectF;
    invoke-virtual { v0 }, Landroid/graphics/RectF;->width()F
    move-result v0
    div-float/2addr v0, p1
    iget-object v1, p0, Lcom/yalantis/ucrop/view/CropImageView;->mCropRect:Landroid/graphics/RectF;
    invoke-virtual { v1 }, Landroid/graphics/RectF;->width()F
    move-result v1
    div-float/2addr v1, p2
    invoke-static { v0, v1 }, Ljava/lang/Math;->min(FF)F
    move-result v0
  .line 4
    iget-object v1, p0, Lcom/yalantis/ucrop/view/CropImageView;->mCropRect:Landroid/graphics/RectF;
    invoke-virtual { v1 }, Landroid/graphics/RectF;->height()F
    move-result v1
    div-float/2addr v1, p2
    iget-object p2, p0, Lcom/yalantis/ucrop/view/CropImageView;->mCropRect:Landroid/graphics/RectF;
    invoke-virtual { p2 }, Landroid/graphics/RectF;->height()F
    move-result p2
    div-float/2addr p2, p1
    invoke-static { v1, p2 }, Ljava/lang/Math;->min(FF)F
    move-result p1
  .line 5
    invoke-static { v0, p1 }, Ljava/lang/Math;->min(FF)F
    move-result p1
    iput p1, p0, Lcom/yalantis/ucrop/view/CropImageView;->mMinScale:F
  .line 6
    iget p2, p0, Lcom/yalantis/ucrop/view/CropImageView;->mMaxScaleMultiplier:F
    mul-float p1, p1, p2
    iput p1, p0, Lcom/yalantis/ucrop/view/CropImageView;->mMaxScale:F
    return-void
.end method

.method private setupInitialImagePosition(FF)V
  .registers 8
  .line 1
    iget-object v0, p0, Lcom/yalantis/ucrop/view/CropImageView;->mCropRect:Landroid/graphics/RectF;
    invoke-virtual { v0 }, Landroid/graphics/RectF;->width()F
    move-result v0
  .line 2
    iget-object v1, p0, Lcom/yalantis/ucrop/view/CropImageView;->mCropRect:Landroid/graphics/RectF;
    invoke-virtual { v1 }, Landroid/graphics/RectF;->height()F
    move-result v1
  .line 3
    iget-object v2, p0, Lcom/yalantis/ucrop/view/CropImageView;->mCropRect:Landroid/graphics/RectF;
    invoke-virtual { v2 }, Landroid/graphics/RectF;->width()F
    move-result v2
    div-float/2addr v2, p1
  .line 4
    iget-object v3, p0, Lcom/yalantis/ucrop/view/CropImageView;->mCropRect:Landroid/graphics/RectF;
    invoke-virtual { v3 }, Landroid/graphics/RectF;->height()F
    move-result v3
    div-float/2addr v3, p2
  .line 5
    invoke-static { v2, v3 }, Ljava/lang/Math;->max(FF)F
    move-result v2
    mul-float p1, p1, v2
    sub-float/2addr v0, p1
    const/high16 p1, 16384
    div-float/2addr v0, p1
  .line 6
    iget-object v3, p0, Lcom/yalantis/ucrop/view/CropImageView;->mCropRect:Landroid/graphics/RectF;
    iget v4, v3, Landroid/graphics/RectF;->left:F
    add-float/2addr v0, v4
    mul-float p2, p2, v2
    sub-float/2addr v1, p2
    div-float/2addr v1, p1
  .line 7
    iget p1, v3, Landroid/graphics/RectF;->top:F
    add-float/2addr v1, p1
  .line 8
    iget-object p1, p0, Lcom/yalantis/ucrop/view/TransformImageView;->mCurrentImageMatrix:Landroid/graphics/Matrix;
    invoke-virtual { p1 }, Landroid/graphics/Matrix;->reset()V
  .line 9
    iget-object p1, p0, Lcom/yalantis/ucrop/view/TransformImageView;->mCurrentImageMatrix:Landroid/graphics/Matrix;
    invoke-virtual { p1, v2, v2 }, Landroid/graphics/Matrix;->postScale(FF)Z
  .line 10
    iget-object p1, p0, Lcom/yalantis/ucrop/view/TransformImageView;->mCurrentImageMatrix:Landroid/graphics/Matrix;
    invoke-virtual { p1, v0, v1 }, Landroid/graphics/Matrix;->postTranslate(FF)Z
  .line 11
    iget-object p1, p0, Lcom/yalantis/ucrop/view/TransformImageView;->mCurrentImageMatrix:Landroid/graphics/Matrix;
    invoke-virtual { p0, p1 }, Lcom/yalantis/ucrop/view/TransformImageView;->setImageMatrix(Landroid/graphics/Matrix;)V
    return-void
.end method

.method public cancelAllAnimations()V
  .registers 2
  .line 1
    iget-object v0, p0, Lcom/yalantis/ucrop/view/CropImageView;->mWrapCropBoundsRunnable:Ljava/lang/Runnable;
    invoke-virtual { p0, v0 }, Landroid/widget/ImageView;->removeCallbacks(Ljava/lang/Runnable;)Z
  .line 2
    iget-object v0, p0, Lcom/yalantis/ucrop/view/CropImageView;->mZoomImageToPositionRunnable:Ljava/lang/Runnable;
    invoke-virtual { p0, v0 }, Landroid/widget/ImageView;->removeCallbacks(Ljava/lang/Runnable;)Z
    return-void
.end method

.method public cropAndSaveImage(Landroid/graphics/Bitmap$CompressFormat;ILcom/yalantis/ucrop/callback/BitmapCropCallback;)V
  .registers 19
    move-object v0, p0
  .line 1
    invoke-virtual { p0 }, Lcom/yalantis/ucrop/view/CropImageView;->cancelAllAnimations()V
    const/4 v1, 0
  .line 2
    invoke-virtual { p0, v1 }, Lcom/yalantis/ucrop/view/CropImageView;->setImageToWrapCropBounds(Z)V
  .line 3
    new-instance v5, Lcom/yalantis/ucrop/model/ImageState;
    iget-object v2, v0, Lcom/yalantis/ucrop/view/CropImageView;->mCropRect:Landroid/graphics/RectF;
    iget-object v3, v0, Lcom/yalantis/ucrop/view/TransformImageView;->mCurrentImageCorners:[F
  .line 4
    invoke-static { v3 }, Lcom/yalantis/ucrop/util/RectUtils;->trapToRect([F)Landroid/graphics/RectF;
    move-result-object v3
  .line 5
    invoke-virtual { p0 }, Lcom/yalantis/ucrop/view/TransformImageView;->getCurrentScale()F
    move-result v4
    invoke-virtual { p0 }, Lcom/yalantis/ucrop/view/TransformImageView;->getCurrentAngle()F
    move-result v6
    invoke-direct { v5, v2, v3, v4, v6 }, Lcom/yalantis/ucrop/model/ImageState;-><init>(Landroid/graphics/RectF;Landroid/graphics/RectF;FF)V
  .line 6
    new-instance v6, Lcom/yalantis/ucrop/model/CropParameters;
    iget v8, v0, Lcom/yalantis/ucrop/view/CropImageView;->mMaxResultImageSizeX:I
    iget v9, v0, Lcom/yalantis/ucrop/view/CropImageView;->mMaxResultImageSizeY:I
  .line 7
    invoke-virtual { p0 }, Lcom/yalantis/ucrop/view/TransformImageView;->getImageInputPath()Ljava/lang/String;
    move-result-object v12
    invoke-virtual { p0 }, Lcom/yalantis/ucrop/view/TransformImageView;->getImageOutputPath()Ljava/lang/String;
    move-result-object v13
    invoke-virtual { p0 }, Lcom/yalantis/ucrop/view/TransformImageView;->getExifInfo()Lcom/yalantis/ucrop/model/ExifInfo;
    move-result-object v14
    move-object v7, v6
    move-object/from16 v10, p1
    move/from16 v11, p2
    invoke-direct/range { v7 .. v14 }, Lcom/yalantis/ucrop/model/CropParameters;-><init>(IILandroid/graphics/Bitmap$CompressFormat;ILjava/lang/String;Ljava/lang/String;Lcom/yalantis/ucrop/model/ExifInfo;)V
  .line 8
    new-instance v8, Lcom/yalantis/ucrop/task/BitmapCropTask;
    invoke-virtual { p0 }, Landroid/widget/ImageView;->getContext()Landroid/content/Context;
    move-result-object v3
    invoke-virtual { p0 }, Lcom/yalantis/ucrop/view/TransformImageView;->getViewBitmap()Landroid/graphics/Bitmap;
    move-result-object v4
    move-object v2, v8
    move-object/from16 v7, p3
    invoke-direct/range { v2 .. v7 }, Lcom/yalantis/ucrop/task/BitmapCropTask;-><init>(Landroid/content/Context;Landroid/graphics/Bitmap;Lcom/yalantis/ucrop/model/ImageState;Lcom/yalantis/ucrop/model/CropParameters;Lcom/yalantis/ucrop/callback/BitmapCropCallback;)V
    new-array v1, v1, [Ljava/lang/Void;
    invoke-virtual { v8, v1 }, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    return-void
.end method

.method public getCropBoundsChangeListener()Lcom/yalantis/ucrop/callback/CropBoundsChangeListener;
  .registers 2
  .line 1
    iget-object v0, p0, Lcom/yalantis/ucrop/view/CropImageView;->mCropBoundsChangeListener:Lcom/yalantis/ucrop/callback/CropBoundsChangeListener;
    return-object v0
.end method

.method public getMaxScale()F
  .registers 2
  .line 1
    iget v0, p0, Lcom/yalantis/ucrop/view/CropImageView;->mMaxScale:F
    return v0
.end method

.method public getMinScale()F
  .registers 2
  .line 1
    iget v0, p0, Lcom/yalantis/ucrop/view/CropImageView;->mMinScale:F
    return v0
.end method

.method public getTargetAspectRatio()F
  .registers 2
  .line 1
    iget v0, p0, Lcom/yalantis/ucrop/view/CropImageView;->mTargetAspectRatio:F
    return v0
.end method

.method protected isImageWrapCropBounds()Z
  .registers 2
  .line 1
    iget-object v0, p0, Lcom/yalantis/ucrop/view/TransformImageView;->mCurrentImageCorners:[F
    invoke-virtual { p0, v0 }, Lcom/yalantis/ucrop/view/CropImageView;->isImageWrapCropBounds([F)Z
    move-result v0
    return v0
.end method

.method protected isImageWrapCropBounds([F)Z
  .registers 4
  .line 2
    iget-object v0, p0, Lcom/yalantis/ucrop/view/CropImageView;->mTempMatrix:Landroid/graphics/Matrix;
    invoke-virtual { v0 }, Landroid/graphics/Matrix;->reset()V
  .line 3
    iget-object v0, p0, Lcom/yalantis/ucrop/view/CropImageView;->mTempMatrix:Landroid/graphics/Matrix;
    invoke-virtual { p0 }, Lcom/yalantis/ucrop/view/TransformImageView;->getCurrentAngle()F
    move-result v1
    neg-float v1, v1
    invoke-virtual { v0, v1 }, Landroid/graphics/Matrix;->setRotate(F)V
  .line 4
    array-length v0, p1
    invoke-static { p1, v0 }, Ljava/util/Arrays;->copyOf([FI)[F
    move-result-object p1
  .line 5
    iget-object v0, p0, Lcom/yalantis/ucrop/view/CropImageView;->mTempMatrix:Landroid/graphics/Matrix;
    invoke-virtual { v0, p1 }, Landroid/graphics/Matrix;->mapPoints([F)V
  .line 6
    iget-object v0, p0, Lcom/yalantis/ucrop/view/CropImageView;->mCropRect:Landroid/graphics/RectF;
    invoke-static { v0 }, Lcom/yalantis/ucrop/util/RectUtils;->getCornersFromRect(Landroid/graphics/RectF;)[F
    move-result-object v0
  .line 7
    iget-object v1, p0, Lcom/yalantis/ucrop/view/CropImageView;->mTempMatrix:Landroid/graphics/Matrix;
    invoke-virtual { v1, v0 }, Landroid/graphics/Matrix;->mapPoints([F)V
  .line 8
    invoke-static { p1 }, Lcom/yalantis/ucrop/util/RectUtils;->trapToRect([F)Landroid/graphics/RectF;
    move-result-object p1
    invoke-static { v0 }, Lcom/yalantis/ucrop/util/RectUtils;->trapToRect([F)Landroid/graphics/RectF;
    move-result-object v0
    invoke-virtual { p1, v0 }, Landroid/graphics/RectF;->contains(Landroid/graphics/RectF;)Z
    move-result p1
    return p1
.end method

.method protected onImageLaidOut()V
  .registers 9
  .line 1
    invoke-super { p0 }, Lcom/yalantis/ucrop/view/TransformImageView;->onImageLaidOut()V
  .line 2
    invoke-virtual { p0 }, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;
    move-result-object v0
    if-nez v0, :L0
    return-void
  :L0
  .line 3
    invoke-virtual { v0 }, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I
    move-result v1
    int-to-float v1, v1
  .line 4
    invoke-virtual { v0 }, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I
    move-result v0
    int-to-float v0, v0
  .line 5
    iget v2, p0, Lcom/yalantis/ucrop/view/CropImageView;->mTargetAspectRatio:F
    const/4 v3, 0
    cmpl-float v2, v2, v3
    if-nez v2, :L1
    div-float v2, v1, v0
  .line 6
    iput v2, p0, Lcom/yalantis/ucrop/view/CropImageView;->mTargetAspectRatio:F
  :L1
  .line 7
    iget v2, p0, Lcom/yalantis/ucrop/view/TransformImageView;->mThisWidth:I
    int-to-float v4, v2
    iget v5, p0, Lcom/yalantis/ucrop/view/CropImageView;->mTargetAspectRatio:F
    div-float/2addr v4, v5
    float-to-int v4, v4
  .line 8
    iget v6, p0, Lcom/yalantis/ucrop/view/TransformImageView;->mThisHeight:I
    if-le v4, v6, :L2
    int-to-float v4, v6
    mul-float v4, v4, v5
    float-to-int v4, v4
    sub-int/2addr v2, v4
  .line 9
    div-int/lit8 v2, v2, 2
  .line 10
    iget-object v5, p0, Lcom/yalantis/ucrop/view/CropImageView;->mCropRect:Landroid/graphics/RectF;
    int-to-float v7, v2
    add-int/2addr v4, v2
    int-to-float v2, v4
    int-to-float v4, v6
    invoke-virtual { v5, v7, v3, v2, v4 }, Landroid/graphics/RectF;->set(FFFF)V
    goto :L3
  :L2
    sub-int/2addr v6, v4
  .line 11
    div-int/lit8 v6, v6, 2
  .line 12
    iget-object v5, p0, Lcom/yalantis/ucrop/view/CropImageView;->mCropRect:Landroid/graphics/RectF;
    int-to-float v7, v6
    int-to-float v2, v2
    add-int/2addr v4, v6
    int-to-float v4, v4
    invoke-virtual { v5, v3, v7, v2, v4 }, Landroid/graphics/RectF;->set(FFFF)V
  :L3
  .line 13
    invoke-direct { p0, v1, v0 }, Lcom/yalantis/ucrop/view/CropImageView;->calculateImageScaleBounds(FF)V
  .line 14
    invoke-direct { p0, v1, v0 }, Lcom/yalantis/ucrop/view/CropImageView;->setupInitialImagePosition(FF)V
  .line 15
    iget-object v0, p0, Lcom/yalantis/ucrop/view/CropImageView;->mCropBoundsChangeListener:Lcom/yalantis/ucrop/callback/CropBoundsChangeListener;
    if-eqz v0, :L4
  .line 16
    iget v1, p0, Lcom/yalantis/ucrop/view/CropImageView;->mTargetAspectRatio:F
    invoke-interface { v0, v1 }, Lcom/yalantis/ucrop/callback/CropBoundsChangeListener;->onCropAspectRatioChanged(F)V
  :L4
  .line 17
    iget-object v0, p0, Lcom/yalantis/ucrop/view/TransformImageView;->mTransformImageListener:Lcom/yalantis/ucrop/view/TransformImageView$TransformImageListener;
    if-eqz v0, :L5
  .line 18
    invoke-virtual { p0 }, Lcom/yalantis/ucrop/view/TransformImageView;->getCurrentScale()F
    move-result v1
    invoke-interface { v0, v1 }, Lcom/yalantis/ucrop/view/TransformImageView$TransformImageListener;->onScale(F)V
  .line 19
    iget-object v0, p0, Lcom/yalantis/ucrop/view/TransformImageView;->mTransformImageListener:Lcom/yalantis/ucrop/view/TransformImageView$TransformImageListener;
    invoke-virtual { p0 }, Lcom/yalantis/ucrop/view/TransformImageView;->getCurrentAngle()F
    move-result v1
    invoke-interface { v0, v1 }, Lcom/yalantis/ucrop/view/TransformImageView$TransformImageListener;->onRotate(F)V
  :L5
    return-void
.end method

.method public postRotate(F)V
  .registers 4
  .line 1
    iget-object v0, p0, Lcom/yalantis/ucrop/view/CropImageView;->mCropRect:Landroid/graphics/RectF;
    invoke-virtual { v0 }, Landroid/graphics/RectF;->centerX()F
    move-result v0
    iget-object v1, p0, Lcom/yalantis/ucrop/view/CropImageView;->mCropRect:Landroid/graphics/RectF;
    invoke-virtual { v1 }, Landroid/graphics/RectF;->centerY()F
    move-result v1
    invoke-virtual { p0, p1, v0, v1 }, Lcom/yalantis/ucrop/view/TransformImageView;->postRotate(FFF)V
    return-void
.end method

.method public postScale(FFF)V
  .registers 7
    const/high16 v0, 16256
    cmpl-float v1, p1, v0
    if-lez v1, :L0
  .line 1
    invoke-virtual { p0 }, Lcom/yalantis/ucrop/view/TransformImageView;->getCurrentScale()F
    move-result v1
    mul-float v1, v1, p1
    invoke-virtual { p0 }, Lcom/yalantis/ucrop/view/CropImageView;->getMaxScale()F
    move-result v2
    cmpg-float v1, v1, v2
    if-gtz v1, :L0
  .line 2
    invoke-super { p0, p1, p2, p3 }, Lcom/yalantis/ucrop/view/TransformImageView;->postScale(FFF)V
    goto :L1
  :L0
    cmpg-float v0, p1, v0
    if-gez v0, :L1
  .line 3
    invoke-virtual { p0 }, Lcom/yalantis/ucrop/view/TransformImageView;->getCurrentScale()F
    move-result v0
    mul-float v0, v0, p1
    invoke-virtual { p0 }, Lcom/yalantis/ucrop/view/CropImageView;->getMinScale()F
    move-result v1
    cmpl-float v0, v0, v1
    if-ltz v0, :L1
  .line 4
    invoke-super { p0, p1, p2, p3 }, Lcom/yalantis/ucrop/view/TransformImageView;->postScale(FFF)V
  :L1
    return-void
.end method

.method protected processStyledAttributes(Landroid/content/res/TypedArray;)V
  .registers 5
  .line 1
    sget v0, Lcom/yalantis/ucrop/R$styleable;->ucrop_UCropView_ucrop_aspect_ratio_x:I
    const/4 v1, 0
    invoke-virtual { p1, v0, v1 }, Landroid/content/res/TypedArray;->getFloat(IF)F
    move-result v0
    invoke-static { v0 }, Ljava/lang/Math;->abs(F)F
    move-result v0
  .line 2
    sget v2, Lcom/yalantis/ucrop/R$styleable;->ucrop_UCropView_ucrop_aspect_ratio_y:I
    invoke-virtual { p1, v2, v1 }, Landroid/content/res/TypedArray;->getFloat(IF)F
    move-result p1
    invoke-static { p1 }, Ljava/lang/Math;->abs(F)F
    move-result p1
    cmpl-float v2, v0, v1
    if-eqz v2, :L1
    cmpl-float v2, p1, v1
    if-nez v2, :L0
    goto :L1
  :L0
    div-float/2addr v0, p1
  .line 3
    iput v0, p0, Lcom/yalantis/ucrop/view/CropImageView;->mTargetAspectRatio:F
    goto :L2
  :L1
  .line 4
    iput v1, p0, Lcom/yalantis/ucrop/view/CropImageView;->mTargetAspectRatio:F
  :L2
    return-void
.end method

.method public setCropBoundsChangeListener(Lcom/yalantis/ucrop/callback/CropBoundsChangeListener;)V
  .registers 2
  .line 1
    iput-object p1, p0, Lcom/yalantis/ucrop/view/CropImageView;->mCropBoundsChangeListener:Lcom/yalantis/ucrop/callback/CropBoundsChangeListener;
    return-void
.end method

.method public setCropRect(Landroid/graphics/RectF;)V
  .registers 7
  .line 1
    invoke-virtual { p1 }, Landroid/graphics/RectF;->width()F
    move-result v0
    invoke-virtual { p1 }, Landroid/graphics/RectF;->height()F
    move-result v1
    div-float/2addr v0, v1
    iput v0, p0, Lcom/yalantis/ucrop/view/CropImageView;->mTargetAspectRatio:F
  .line 2
    iget-object v0, p0, Lcom/yalantis/ucrop/view/CropImageView;->mCropRect:Landroid/graphics/RectF;
    iget v1, p1, Landroid/graphics/RectF;->left:F
    invoke-virtual { p0 }, Landroid/widget/ImageView;->getPaddingLeft()I
    move-result v2
    int-to-float v2, v2
    sub-float/2addr v1, v2
    iget v2, p1, Landroid/graphics/RectF;->top:F
    invoke-virtual { p0 }, Landroid/widget/ImageView;->getPaddingTop()I
    move-result v3
    int-to-float v3, v3
    sub-float/2addr v2, v3
    iget v3, p1, Landroid/graphics/RectF;->right:F
  .line 3
    invoke-virtual { p0 }, Landroid/widget/ImageView;->getPaddingRight()I
    move-result v4
    int-to-float v4, v4
    sub-float/2addr v3, v4
    iget p1, p1, Landroid/graphics/RectF;->bottom:F
    invoke-virtual { p0 }, Landroid/widget/ImageView;->getPaddingBottom()I
    move-result v4
    int-to-float v4, v4
    sub-float/2addr p1, v4
  .line 4
    invoke-virtual { v0, v1, v2, v3, p1 }, Landroid/graphics/RectF;->set(FFFF)V
  .line 5
    invoke-direct { p0 }, Lcom/yalantis/ucrop/view/CropImageView;->calculateImageScaleBounds()V
  .line 6
    invoke-virtual { p0 }, Lcom/yalantis/ucrop/view/CropImageView;->setImageToWrapCropBounds()V
    return-void
.end method

.method public setImageToWrapCropBounds()V
  .registers 2
    const/4 v0, 1
  .line 1
    invoke-virtual { p0, v0 }, Lcom/yalantis/ucrop/view/CropImageView;->setImageToWrapCropBounds(Z)V
    return-void
.end method

.method public setImageToWrapCropBounds(Z)V
  .registers 15
  .line 2
    iget-boolean v0, p0, Lcom/yalantis/ucrop/view/TransformImageView;->mBitmapLaidOut:Z
    if-eqz v0, :L3
    invoke-virtual { p0 }, Lcom/yalantis/ucrop/view/CropImageView;->isImageWrapCropBounds()Z
    move-result v0
    if-nez v0, :L3
  .line 3
    iget-object v0, p0, Lcom/yalantis/ucrop/view/TransformImageView;->mCurrentImageCenter:[F
    const/4 v1, 0
    aget v6, v0, v1
    const/4 v2, 1
  .line 4
    aget v7, v0, v2
  .line 5
    invoke-virtual { p0 }, Lcom/yalantis/ucrop/view/TransformImageView;->getCurrentScale()F
    move-result v10
  .line 6
    iget-object v0, p0, Lcom/yalantis/ucrop/view/CropImageView;->mCropRect:Landroid/graphics/RectF;
    invoke-virtual { v0 }, Landroid/graphics/RectF;->centerX()F
    move-result v0
    sub-float/2addr v0, v6
  .line 7
    iget-object v3, p0, Lcom/yalantis/ucrop/view/CropImageView;->mCropRect:Landroid/graphics/RectF;
    invoke-virtual { v3 }, Landroid/graphics/RectF;->centerY()F
    move-result v3
    sub-float/2addr v3, v7
    const/4 v4, 0
  .line 8
    iget-object v5, p0, Lcom/yalantis/ucrop/view/CropImageView;->mTempMatrix:Landroid/graphics/Matrix;
    invoke-virtual { v5 }, Landroid/graphics/Matrix;->reset()V
  .line 9
    iget-object v5, p0, Lcom/yalantis/ucrop/view/CropImageView;->mTempMatrix:Landroid/graphics/Matrix;
    invoke-virtual { v5, v0, v3 }, Landroid/graphics/Matrix;->setTranslate(FF)V
  .line 10
    iget-object v5, p0, Lcom/yalantis/ucrop/view/TransformImageView;->mCurrentImageCorners:[F
    array-length v8, v5
    invoke-static { v5, v8 }, Ljava/util/Arrays;->copyOf([FI)[F
    move-result-object v5
  .line 11
    iget-object v8, p0, Lcom/yalantis/ucrop/view/CropImageView;->mTempMatrix:Landroid/graphics/Matrix;
    invoke-virtual { v8, v5 }, Landroid/graphics/Matrix;->mapPoints([F)V
  .line 12
    invoke-virtual { p0, v5 }, Lcom/yalantis/ucrop/view/CropImageView;->isImageWrapCropBounds([F)Z
    move-result v12
    if-eqz v12, :L0
  .line 13
    invoke-direct { p0 }, Lcom/yalantis/ucrop/view/CropImageView;->calculateImageIndents()[F
    move-result-object v0
  .line 14
    aget v1, v0, v1
    const/4 v3, 2
    aget v3, v0, v3
    add-float/2addr v1, v3
    neg-float v1, v1
  .line 15
    aget v2, v0, v2
    const/4 v3, 3
    aget v0, v0, v3
    add-float/2addr v2, v0
    neg-float v0, v2
    move v9, v0
    move v8, v1
    const/4 v11, 0
    goto :L1
  :L0
  .line 16
    new-instance v4, Landroid/graphics/RectF;
    iget-object v5, p0, Lcom/yalantis/ucrop/view/CropImageView;->mCropRect:Landroid/graphics/RectF;
    invoke-direct { v4, v5 }, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V
  .line 17
    iget-object v5, p0, Lcom/yalantis/ucrop/view/CropImageView;->mTempMatrix:Landroid/graphics/Matrix;
    invoke-virtual { v5 }, Landroid/graphics/Matrix;->reset()V
  .line 18
    iget-object v5, p0, Lcom/yalantis/ucrop/view/CropImageView;->mTempMatrix:Landroid/graphics/Matrix;
    invoke-virtual { p0 }, Lcom/yalantis/ucrop/view/TransformImageView;->getCurrentAngle()F
    move-result v8
    invoke-virtual { v5, v8 }, Landroid/graphics/Matrix;->setRotate(F)V
  .line 19
    iget-object v5, p0, Lcom/yalantis/ucrop/view/CropImageView;->mTempMatrix:Landroid/graphics/Matrix;
    invoke-virtual { v5, v4 }, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z
  .line 20
    iget-object v5, p0, Lcom/yalantis/ucrop/view/TransformImageView;->mCurrentImageCorners:[F
    invoke-static { v5 }, Lcom/yalantis/ucrop/util/RectUtils;->getRectSidesFromCorners([F)[F
    move-result-object v5
  .line 21
    invoke-virtual { v4 }, Landroid/graphics/RectF;->width()F
    move-result v8
    aget v1, v5, v1
    div-float/2addr v8, v1
  .line 22
    invoke-virtual { v4 }, Landroid/graphics/RectF;->height()F
    move-result v1
    aget v2, v5, v2
    div-float/2addr v1, v2
  .line 23
    invoke-static { v8, v1 }, Ljava/lang/Math;->max(FF)F
    move-result v1
    mul-float v1, v1, v10
    sub-float/2addr v1, v10
    move v8, v0
    move v11, v1
    move v9, v3
  :L1
    if-eqz p1, :L2
  .line 24
    new-instance p1, Lcom/yalantis/ucrop/view/CropImageView$WrapCropBoundsRunnable;
    iget-wide v4, p0, Lcom/yalantis/ucrop/view/CropImageView;->mImageToWrapCropBoundsAnimDuration:J
    move-object v2, p1
    move-object v3, p0
    invoke-direct/range { v2 .. v12 }, Lcom/yalantis/ucrop/view/CropImageView$WrapCropBoundsRunnable;-><init>(Lcom/yalantis/ucrop/view/CropImageView;JFFFFFFZ)V
    iput-object p1, p0, Lcom/yalantis/ucrop/view/CropImageView;->mWrapCropBoundsRunnable:Ljava/lang/Runnable;
    invoke-virtual { p0, p1 }, Landroid/widget/ImageView;->post(Ljava/lang/Runnable;)Z
    goto :L3
  :L2
  .line 25
    invoke-virtual { p0, v8, v9 }, Lcom/yalantis/ucrop/view/TransformImageView;->postTranslate(FF)V
    if-nez v12, :L3
    add-float/2addr v10, v11
  .line 26
    iget-object p1, p0, Lcom/yalantis/ucrop/view/CropImageView;->mCropRect:Landroid/graphics/RectF;
    invoke-virtual { p1 }, Landroid/graphics/RectF;->centerX()F
    move-result p1
    iget-object v0, p0, Lcom/yalantis/ucrop/view/CropImageView;->mCropRect:Landroid/graphics/RectF;
    invoke-virtual { v0 }, Landroid/graphics/RectF;->centerY()F
    move-result v0
    invoke-virtual { p0, v10, p1, v0 }, Lcom/yalantis/ucrop/view/CropImageView;->zoomInImage(FFF)V
  :L3
    return-void
.end method

.method public setImageToWrapCropBoundsAnimDuration(J)V
  .registers 6
    const-wide/16 v0, 0
    cmp-long v2, p1, v0
    if-lez v2, :L0
  .line 1
    iput-wide p1, p0, Lcom/yalantis/ucrop/view/CropImageView;->mImageToWrapCropBoundsAnimDuration:J
    return-void
  :L0
  .line 2
    new-instance p1, Ljava/lang/IllegalArgumentException;
    const-string p2, "Animation duration cannot be negative value."
    invoke-direct { p1, p2 }, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
    throw p1
.end method

.method public setMaxResultImageSizeX(I)V
  .registers 2
  .line 1
    iput p1, p0, Lcom/yalantis/ucrop/view/CropImageView;->mMaxResultImageSizeX:I
    return-void
.end method

.method public setMaxResultImageSizeY(I)V
  .registers 2
  .line 1
    iput p1, p0, Lcom/yalantis/ucrop/view/CropImageView;->mMaxResultImageSizeY:I
    return-void
.end method

.method public setMaxScaleMultiplier(F)V
  .registers 2
  .line 1
    iput p1, p0, Lcom/yalantis/ucrop/view/CropImageView;->mMaxScaleMultiplier:F
    return-void
.end method

.method public setTargetAspectRatio(F)V
  .registers 4
  .line 1
    invoke-virtual { p0 }, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;
    move-result-object v0
    if-nez v0, :L0
  .line 2
    iput p1, p0, Lcom/yalantis/ucrop/view/CropImageView;->mTargetAspectRatio:F
    return-void
  :L0
    const/4 v1, 0
    cmpl-float v1, p1, v1
    if-nez v1, :L1
  .line 3
    invoke-virtual { v0 }, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I
    move-result p1
    int-to-float p1, p1
    invoke-virtual { v0 }, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I
    move-result v0
    int-to-float v0, v0
    div-float/2addr p1, v0
    iput p1, p0, Lcom/yalantis/ucrop/view/CropImageView;->mTargetAspectRatio:F
    goto :L2
  :L1
  .line 4
    iput p1, p0, Lcom/yalantis/ucrop/view/CropImageView;->mTargetAspectRatio:F
  :L2
  .line 5
    iget-object p1, p0, Lcom/yalantis/ucrop/view/CropImageView;->mCropBoundsChangeListener:Lcom/yalantis/ucrop/callback/CropBoundsChangeListener;
    if-eqz p1, :L3
  .line 6
    iget v0, p0, Lcom/yalantis/ucrop/view/CropImageView;->mTargetAspectRatio:F
    invoke-interface { p1, v0 }, Lcom/yalantis/ucrop/callback/CropBoundsChangeListener;->onCropAspectRatioChanged(F)V
  :L3
    return-void
.end method

.method protected zoomImageToPosition(FFFJ)V
  .registers 14
  .line 1
    invoke-virtual { p0 }, Lcom/yalantis/ucrop/view/CropImageView;->getMaxScale()F
    move-result v0
    cmpl-float v0, p1, v0
    if-lez v0, :L0
  .line 2
    invoke-virtual { p0 }, Lcom/yalantis/ucrop/view/CropImageView;->getMaxScale()F
    move-result p1
  :L0
  .line 3
    invoke-virtual { p0 }, Lcom/yalantis/ucrop/view/TransformImageView;->getCurrentScale()F
    move-result v4
    sub-float v5, p1, v4
  .line 4
    new-instance p1, Lcom/yalantis/ucrop/view/CropImageView$ZoomImageToPosition;
    move-object v0, p1
    move-object v1, p0
    move-wide v2, p4
    move v6, p2
    move v7, p3
    invoke-direct/range { v0 .. v7 }, Lcom/yalantis/ucrop/view/CropImageView$ZoomImageToPosition;-><init>(Lcom/yalantis/ucrop/view/CropImageView;JFFFF)V
    iput-object p1, p0, Lcom/yalantis/ucrop/view/CropImageView;->mZoomImageToPositionRunnable:Ljava/lang/Runnable;
    invoke-virtual { p0, p1 }, Landroid/widget/ImageView;->post(Ljava/lang/Runnable;)Z
    return-void
.end method

.method public zoomInImage(F)V
  .registers 4
  .line 1
    iget-object v0, p0, Lcom/yalantis/ucrop/view/CropImageView;->mCropRect:Landroid/graphics/RectF;
    invoke-virtual { v0 }, Landroid/graphics/RectF;->centerX()F
    move-result v0
    iget-object v1, p0, Lcom/yalantis/ucrop/view/CropImageView;->mCropRect:Landroid/graphics/RectF;
    invoke-virtual { v1 }, Landroid/graphics/RectF;->centerY()F
    move-result v1
    invoke-virtual { p0, p1, v0, v1 }, Lcom/yalantis/ucrop/view/CropImageView;->zoomInImage(FFF)V
    return-void
.end method

.method public zoomInImage(FFF)V
  .registers 5
  .line 2
    invoke-virtual { p0 }, Lcom/yalantis/ucrop/view/CropImageView;->getMaxScale()F
    move-result v0
    cmpg-float v0, p1, v0
    if-gtz v0, :L0
  .line 3
    invoke-virtual { p0 }, Lcom/yalantis/ucrop/view/TransformImageView;->getCurrentScale()F
    move-result v0
    div-float/2addr p1, v0
    invoke-virtual { p0, p1, p2, p3 }, Lcom/yalantis/ucrop/view/CropImageView;->postScale(FFF)V
  :L0
    return-void
.end method

.method public zoomOutImage(F)V
  .registers 4
  .line 1
    iget-object v0, p0, Lcom/yalantis/ucrop/view/CropImageView;->mCropRect:Landroid/graphics/RectF;
    invoke-virtual { v0 }, Landroid/graphics/RectF;->centerX()F
    move-result v0
    iget-object v1, p0, Lcom/yalantis/ucrop/view/CropImageView;->mCropRect:Landroid/graphics/RectF;
    invoke-virtual { v1 }, Landroid/graphics/RectF;->centerY()F
    move-result v1
    invoke-virtual { p0, p1, v0, v1 }, Lcom/yalantis/ucrop/view/CropImageView;->zoomOutImage(FFF)V
    return-void
.end method

.method public zoomOutImage(FFF)V
  .registers 5
  .line 2
    invoke-virtual { p0 }, Lcom/yalantis/ucrop/view/CropImageView;->getMinScale()F
    move-result v0
    cmpl-float v0, p1, v0
    if-ltz v0, :L0
  .line 3
    invoke-virtual { p0 }, Lcom/yalantis/ucrop/view/TransformImageView;->getCurrentScale()F
    move-result v0
    div-float/2addr p1, v0
    invoke-virtual { p0, p1, p2, p3 }, Lcom/yalantis/ucrop/view/CropImageView;->postScale(FFF)V
  :L0
    return-void
.end method
