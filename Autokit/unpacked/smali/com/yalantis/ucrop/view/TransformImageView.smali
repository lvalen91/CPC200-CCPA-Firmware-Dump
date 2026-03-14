.class public Lcom/yalantis/ucrop/view/TransformImageView;
.super Landroid/widget/ImageView;
.source "SourceFile"

.annotation system Ldalvik/annotation/MemberClasses;
  value = {
    Lcom/yalantis/ucrop/view/TransformImageView$TransformImageListener;
  }
.end annotation

.field private final static MATRIX_VALUES_COUNT:I = 9

.field private final static RECT_CENTER_POINT_COORDS:I = 2

.field private final static RECT_CORNER_POINTS_COORDS:I = 8

.field private final static TAG:Ljava/lang/String; = "TransformImageView"

.field protected mBitmapDecoded:Z

.field protected mBitmapLaidOut:Z

.field protected final mCurrentImageCenter:[F

.field protected final mCurrentImageCorners:[F

.field protected mCurrentImageMatrix:Landroid/graphics/Matrix;

.field private mExifInfo:Lcom/yalantis/ucrop/model/ExifInfo;

.field private mImageInputPath:Ljava/lang/String;

.field private mImageOutputPath:Ljava/lang/String;

.field private mInitialImageCenter:[F

.field private mInitialImageCorners:[F

.field private final mMatrixValues:[F

.field private mMaxBitmapSize:I

.field protected mThisHeight:I

.field protected mThisWidth:I

.field protected mTransformImageListener:Lcom/yalantis/ucrop/view/TransformImageView$TransformImageListener;

.method public constructor <init>(Landroid/content/Context;)V
  .registers 3
    const/4 v0, 0
  .line 1
    invoke-direct { p0, p1, v0 }, Lcom/yalantis/ucrop/view/TransformImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
  .registers 4
    const/4 v0, 0
  .line 2
    invoke-direct { p0, p1, p2, v0 }, Lcom/yalantis/ucrop/view/TransformImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
  .registers 4
  .line 3
    invoke-direct { p0, p1, p2, p3 }, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    const/16 p1, 8
    new-array p1, p1, [F
  .line 4
    iput-object p1, p0, Lcom/yalantis/ucrop/view/TransformImageView;->mCurrentImageCorners:[F
    const/4 p1, 2
    new-array p1, p1, [F
  .line 5
    iput-object p1, p0, Lcom/yalantis/ucrop/view/TransformImageView;->mCurrentImageCenter:[F
    const/16 p1, 9
    new-array p1, p1, [F
  .line 6
    iput-object p1, p0, Lcom/yalantis/ucrop/view/TransformImageView;->mMatrixValues:[F
  .line 7
    new-instance p1, Landroid/graphics/Matrix;
    invoke-direct { p1 }, Landroid/graphics/Matrix;-><init>()V
    iput-object p1, p0, Lcom/yalantis/ucrop/view/TransformImageView;->mCurrentImageMatrix:Landroid/graphics/Matrix;
    const/4 p1, 0
  .line 8
    iput-boolean p1, p0, Lcom/yalantis/ucrop/view/TransformImageView;->mBitmapDecoded:Z
  .line 9
    iput-boolean p1, p0, Lcom/yalantis/ucrop/view/TransformImageView;->mBitmapLaidOut:Z
  .line 10
    iput p1, p0, Lcom/yalantis/ucrop/view/TransformImageView;->mMaxBitmapSize:I
  .line 11
    invoke-virtual { p0 }, Lcom/yalantis/ucrop/view/TransformImageView;->init()V
    return-void
.end method

.method static synthetic access$002(Lcom/yalantis/ucrop/view/TransformImageView;Ljava/lang/String;)Ljava/lang/String;
  .registers 2
  .line 1
    iput-object p1, p0, Lcom/yalantis/ucrop/view/TransformImageView;->mImageInputPath:Ljava/lang/String;
    return-object p1
.end method

.method static synthetic access$102(Lcom/yalantis/ucrop/view/TransformImageView;Ljava/lang/String;)Ljava/lang/String;
  .registers 2
  .line 1
    iput-object p1, p0, Lcom/yalantis/ucrop/view/TransformImageView;->mImageOutputPath:Ljava/lang/String;
    return-object p1
.end method

.method static synthetic access$202(Lcom/yalantis/ucrop/view/TransformImageView;Lcom/yalantis/ucrop/model/ExifInfo;)Lcom/yalantis/ucrop/model/ExifInfo;
  .registers 2
  .line 1
    iput-object p1, p0, Lcom/yalantis/ucrop/view/TransformImageView;->mExifInfo:Lcom/yalantis/ucrop/model/ExifInfo;
    return-object p1
.end method

.method private updateCurrentImagePoints()V
  .registers 4
  .line 1
    iget-object v0, p0, Lcom/yalantis/ucrop/view/TransformImageView;->mCurrentImageMatrix:Landroid/graphics/Matrix;
    iget-object v1, p0, Lcom/yalantis/ucrop/view/TransformImageView;->mCurrentImageCorners:[F
    iget-object v2, p0, Lcom/yalantis/ucrop/view/TransformImageView;->mInitialImageCorners:[F
    invoke-virtual { v0, v1, v2 }, Landroid/graphics/Matrix;->mapPoints([F[F)V
  .line 2
    iget-object v0, p0, Lcom/yalantis/ucrop/view/TransformImageView;->mCurrentImageMatrix:Landroid/graphics/Matrix;
    iget-object v1, p0, Lcom/yalantis/ucrop/view/TransformImageView;->mCurrentImageCenter:[F
    iget-object v2, p0, Lcom/yalantis/ucrop/view/TransformImageView;->mInitialImageCenter:[F
    invoke-virtual { v0, v1, v2 }, Landroid/graphics/Matrix;->mapPoints([F[F)V
    return-void
.end method

.method public getCurrentAngle()F
  .registers 2
  .line 1
    iget-object v0, p0, Lcom/yalantis/ucrop/view/TransformImageView;->mCurrentImageMatrix:Landroid/graphics/Matrix;
    invoke-virtual { p0, v0 }, Lcom/yalantis/ucrop/view/TransformImageView;->getMatrixAngle(Landroid/graphics/Matrix;)F
    move-result v0
    return v0
.end method

.method public getCurrentScale()F
  .registers 2
  .line 1
    iget-object v0, p0, Lcom/yalantis/ucrop/view/TransformImageView;->mCurrentImageMatrix:Landroid/graphics/Matrix;
    invoke-virtual { p0, v0 }, Lcom/yalantis/ucrop/view/TransformImageView;->getMatrixScale(Landroid/graphics/Matrix;)F
    move-result v0
    return v0
.end method

.method public getExifInfo()Lcom/yalantis/ucrop/model/ExifInfo;
  .registers 2
  .line 1
    iget-object v0, p0, Lcom/yalantis/ucrop/view/TransformImageView;->mExifInfo:Lcom/yalantis/ucrop/model/ExifInfo;
    return-object v0
.end method

.method public getImageInputPath()Ljava/lang/String;
  .registers 2
  .line 1
    iget-object v0, p0, Lcom/yalantis/ucrop/view/TransformImageView;->mImageInputPath:Ljava/lang/String;
    return-object v0
.end method

.method public getImageOutputPath()Ljava/lang/String;
  .registers 2
  .line 1
    iget-object v0, p0, Lcom/yalantis/ucrop/view/TransformImageView;->mImageOutputPath:Ljava/lang/String;
    return-object v0
.end method

.method public getMatrixAngle(Landroid/graphics/Matrix;)F
  .registers 6
    const/4 v0, 1
  .line 1
    invoke-virtual { p0, p1, v0 }, Lcom/yalantis/ucrop/view/TransformImageView;->getMatrixValue(Landroid/graphics/Matrix;I)F
    move-result v0
    float-to-double v0, v0
    const/4 v2, 0
  .line 2
    invoke-virtual { p0, p1, v2 }, Lcom/yalantis/ucrop/view/TransformImageView;->getMatrixValue(Landroid/graphics/Matrix;I)F
    move-result p1
    float-to-double v2, p1
  .line 3
    invoke-static { v0, v1, v2, v3 }, Ljava/lang/Math;->atan2(DD)D
    move-result-wide v0
    const-wide v2, 4633260481411531256L
    mul-double v0, v0, v2
    neg-double v0, v0
    double-to-float p1, v0
    return p1
.end method

.method public getMatrixScale(Landroid/graphics/Matrix;)F
  .registers 8
    const/4 v0, 0
  .line 1
    invoke-virtual { p0, p1, v0 }, Lcom/yalantis/ucrop/view/TransformImageView;->getMatrixValue(Landroid/graphics/Matrix;I)F
    move-result v0
    float-to-double v0, v0
    const-wide/high16 v2, 16384
    invoke-static { v0, v1, v2, v3 }, Ljava/lang/Math;->pow(DD)D
    move-result-wide v0
    const/4 v4, 3
  .line 2
    invoke-virtual { p0, p1, v4 }, Lcom/yalantis/ucrop/view/TransformImageView;->getMatrixValue(Landroid/graphics/Matrix;I)F
    move-result p1
    float-to-double v4, p1
    invoke-static { v4, v5, v2, v3 }, Ljava/lang/Math;->pow(DD)D
    move-result-wide v2
    add-double/2addr v0, v2
  .line 3
    invoke-static { v0, v1 }, Ljava/lang/Math;->sqrt(D)D
    move-result-wide v0
    double-to-float p1, v0
    return p1
.end method

.method protected getMatrixValue(Landroid/graphics/Matrix;I)F
  .registers 4
  .line 1
    iget-object v0, p0, Lcom/yalantis/ucrop/view/TransformImageView;->mMatrixValues:[F
    invoke-virtual { p1, v0 }, Landroid/graphics/Matrix;->getValues([F)V
  .line 2
    iget-object p1, p0, Lcom/yalantis/ucrop/view/TransformImageView;->mMatrixValues:[F
    aget p1, p1, p2
    return p1
.end method

.method public getMaxBitmapSize()I
  .registers 2
  .line 1
    iget v0, p0, Lcom/yalantis/ucrop/view/TransformImageView;->mMaxBitmapSize:I
    if-gtz v0, :L0
  .line 2
    invoke-virtual { p0 }, Landroid/widget/ImageView;->getContext()Landroid/content/Context;
    move-result-object v0
    invoke-static { v0 }, Lcom/yalantis/ucrop/util/BitmapLoadUtils;->calculateMaxBitmapSize(Landroid/content/Context;)I
    move-result v0
    iput v0, p0, Lcom/yalantis/ucrop/view/TransformImageView;->mMaxBitmapSize:I
  :L0
  .line 3
    iget v0, p0, Lcom/yalantis/ucrop/view/TransformImageView;->mMaxBitmapSize:I
    return v0
.end method

.method public getViewBitmap()Landroid/graphics/Bitmap;
  .registers 2
  .line 1
    invoke-virtual { p0 }, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;
    move-result-object v0
    if-eqz v0, :L1
    invoke-virtual { p0 }, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;
    move-result-object v0
    instance-of v0, v0, Lcom/yalantis/ucrop/util/FastBitmapDrawable;
    if-nez v0, :L0
    goto :L1
  :L0
  .line 2
    invoke-virtual { p0 }, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;
    move-result-object v0
    check-cast v0, Lcom/yalantis/ucrop/util/FastBitmapDrawable;
    invoke-virtual { v0 }, Lcom/yalantis/ucrop/util/FastBitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;
    move-result-object v0
    return-object v0
  :L1
    const/4 v0, 0
    return-object v0
.end method

.method protected init()V
  .registers 2
  .line 1
    sget-object v0, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;
    invoke-virtual { p0, v0 }, Lcom/yalantis/ucrop/view/TransformImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V
    return-void
.end method

.method protected onImageLaidOut()V
  .registers 6
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
  .line 3
    invoke-virtual { v0 }, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I
    move-result v0
    int-to-float v0, v0
    const/4 v2, 2
    new-array v2, v2, [Ljava/lang/Object;
    const/4 v3, 0
    float-to-int v4, v1
  .line 4
    invoke-static { v4 }, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v4
    aput-object v4, v2, v3
    float-to-int v3, v0
    invoke-static { v3 }, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v3
    const/4 v4, 1
    aput-object v3, v2, v4
    const-string v3, "Image size: [%d:%d]"
    invoke-static { v3, v2 }, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
  .line 5
    new-instance v2, Landroid/graphics/RectF;
    const/4 v3, 0
    invoke-direct { v2, v3, v3, v1, v0 }, Landroid/graphics/RectF;-><init>(FFFF)V
  .line 6
    invoke-static { v2 }, Lcom/yalantis/ucrop/util/RectUtils;->getCornersFromRect(Landroid/graphics/RectF;)[F
    move-result-object v0
    iput-object v0, p0, Lcom/yalantis/ucrop/view/TransformImageView;->mInitialImageCorners:[F
  .line 7
    invoke-static { v2 }, Lcom/yalantis/ucrop/util/RectUtils;->getCenterFromRect(Landroid/graphics/RectF;)[F
    move-result-object v0
    iput-object v0, p0, Lcom/yalantis/ucrop/view/TransformImageView;->mInitialImageCenter:[F
  .line 8
    iput-boolean v4, p0, Lcom/yalantis/ucrop/view/TransformImageView;->mBitmapLaidOut:Z
  .line 9
    iget-object v0, p0, Lcom/yalantis/ucrop/view/TransformImageView;->mTransformImageListener:Lcom/yalantis/ucrop/view/TransformImageView$TransformImageListener;
    if-eqz v0, :L1
  .line 10
    invoke-interface { v0 }, Lcom/yalantis/ucrop/view/TransformImageView$TransformImageListener;->onLoadComplete()V
  :L1
    return-void
.end method

.method protected onLayout(ZIIII)V
  .registers 6
  .line 1
    invoke-super/range { p0 .. p5 }, Landroid/widget/ImageView;->onLayout(ZIIII)V
    if-nez p1, :L0
  .line 2
    iget-boolean p1, p0, Lcom/yalantis/ucrop/view/TransformImageView;->mBitmapDecoded:Z
    if-eqz p1, :L1
    iget-boolean p1, p0, Lcom/yalantis/ucrop/view/TransformImageView;->mBitmapLaidOut:Z
    if-nez p1, :L1
  :L0
  .line 3
    invoke-virtual { p0 }, Landroid/widget/ImageView;->getPaddingLeft()I
    move-result p1
  .line 4
    invoke-virtual { p0 }, Landroid/widget/ImageView;->getPaddingTop()I
    move-result p2
  .line 5
    invoke-virtual { p0 }, Landroid/widget/ImageView;->getWidth()I
    move-result p3
    invoke-virtual { p0 }, Landroid/widget/ImageView;->getPaddingRight()I
    move-result p4
    sub-int/2addr p3, p4
  .line 6
    invoke-virtual { p0 }, Landroid/widget/ImageView;->getHeight()I
    move-result p4
    invoke-virtual { p0 }, Landroid/widget/ImageView;->getPaddingBottom()I
    move-result p5
    sub-int/2addr p4, p5
    sub-int/2addr p3, p1
  .line 7
    iput p3, p0, Lcom/yalantis/ucrop/view/TransformImageView;->mThisWidth:I
    sub-int/2addr p4, p2
  .line 8
    iput p4, p0, Lcom/yalantis/ucrop/view/TransformImageView;->mThisHeight:I
  .line 9
    invoke-virtual { p0 }, Lcom/yalantis/ucrop/view/TransformImageView;->onImageLaidOut()V
  :L1
    return-void
.end method

.method public postRotate(FFF)V
  .registers 5
    const/4 v0, 0
    cmpl-float v0, p1, v0
    if-eqz v0, :L0
  .line 1
    iget-object v0, p0, Lcom/yalantis/ucrop/view/TransformImageView;->mCurrentImageMatrix:Landroid/graphics/Matrix;
    invoke-virtual { v0, p1, p2, p3 }, Landroid/graphics/Matrix;->postRotate(FFF)Z
  .line 2
    iget-object p1, p0, Lcom/yalantis/ucrop/view/TransformImageView;->mCurrentImageMatrix:Landroid/graphics/Matrix;
    invoke-virtual { p0, p1 }, Lcom/yalantis/ucrop/view/TransformImageView;->setImageMatrix(Landroid/graphics/Matrix;)V
  .line 3
    iget-object p1, p0, Lcom/yalantis/ucrop/view/TransformImageView;->mTransformImageListener:Lcom/yalantis/ucrop/view/TransformImageView$TransformImageListener;
    if-eqz p1, :L0
  .line 4
    iget-object p2, p0, Lcom/yalantis/ucrop/view/TransformImageView;->mCurrentImageMatrix:Landroid/graphics/Matrix;
    invoke-virtual { p0, p2 }, Lcom/yalantis/ucrop/view/TransformImageView;->getMatrixAngle(Landroid/graphics/Matrix;)F
    move-result p2
    invoke-interface { p1, p2 }, Lcom/yalantis/ucrop/view/TransformImageView$TransformImageListener;->onRotate(F)V
  :L0
    return-void
.end method

.method public postScale(FFF)V
  .registers 5
    const/4 v0, 0
    cmpl-float v0, p1, v0
    if-eqz v0, :L0
  .line 1
    iget-object v0, p0, Lcom/yalantis/ucrop/view/TransformImageView;->mCurrentImageMatrix:Landroid/graphics/Matrix;
    invoke-virtual { v0, p1, p1, p2, p3 }, Landroid/graphics/Matrix;->postScale(FFFF)Z
  .line 2
    iget-object p1, p0, Lcom/yalantis/ucrop/view/TransformImageView;->mCurrentImageMatrix:Landroid/graphics/Matrix;
    invoke-virtual { p0, p1 }, Lcom/yalantis/ucrop/view/TransformImageView;->setImageMatrix(Landroid/graphics/Matrix;)V
  .line 3
    iget-object p1, p0, Lcom/yalantis/ucrop/view/TransformImageView;->mTransformImageListener:Lcom/yalantis/ucrop/view/TransformImageView$TransformImageListener;
    if-eqz p1, :L0
  .line 4
    iget-object p2, p0, Lcom/yalantis/ucrop/view/TransformImageView;->mCurrentImageMatrix:Landroid/graphics/Matrix;
    invoke-virtual { p0, p2 }, Lcom/yalantis/ucrop/view/TransformImageView;->getMatrixScale(Landroid/graphics/Matrix;)F
    move-result p2
    invoke-interface { p1, p2 }, Lcom/yalantis/ucrop/view/TransformImageView$TransformImageListener;->onScale(F)V
  :L0
    return-void
.end method

.method public postTranslate(FF)V
  .registers 5
    const/4 v0, 0
    cmpl-float v1, p1, v0
    if-nez v1, :L0
    cmpl-float v0, p2, v0
    if-eqz v0, :L1
  :L0
  .line 1
    iget-object v0, p0, Lcom/yalantis/ucrop/view/TransformImageView;->mCurrentImageMatrix:Landroid/graphics/Matrix;
    invoke-virtual { v0, p1, p2 }, Landroid/graphics/Matrix;->postTranslate(FF)Z
  .line 2
    iget-object p1, p0, Lcom/yalantis/ucrop/view/TransformImageView;->mCurrentImageMatrix:Landroid/graphics/Matrix;
    invoke-virtual { p0, p1 }, Lcom/yalantis/ucrop/view/TransformImageView;->setImageMatrix(Landroid/graphics/Matrix;)V
  :L1
    return-void
.end method

.method protected printMatrix(Ljava/lang/String;Landroid/graphics/Matrix;)V
  .registers 7
    const/4 v0, 2
  .line 1
    invoke-virtual { p0, p2, v0 }, Lcom/yalantis/ucrop/view/TransformImageView;->getMatrixValue(Landroid/graphics/Matrix;I)F
    move-result v0
    const/4 v1, 5
  .line 2
    invoke-virtual { p0, p2, v1 }, Lcom/yalantis/ucrop/view/TransformImageView;->getMatrixValue(Landroid/graphics/Matrix;I)F
    move-result v1
  .line 3
    invoke-virtual { p0, p2 }, Lcom/yalantis/ucrop/view/TransformImageView;->getMatrixScale(Landroid/graphics/Matrix;)F
    move-result v2
  .line 4
    invoke-virtual { p0, p2 }, Lcom/yalantis/ucrop/view/TransformImageView;->getMatrixAngle(Landroid/graphics/Matrix;)F
    move-result p2
  .line 5
    new-instance v3, Ljava/lang/StringBuilder;
    invoke-direct { v3 }, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual { v3, p1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string p1, ": matrix: { x: "
    invoke-virtual { v3, p1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v3, v0 }, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;
    const-string p1, ", y: "
    invoke-virtual { v3, p1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v3, v1 }, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;
    const-string p1, ", scale: "
    invoke-virtual { v3, p1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v3, v2 }, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;
    const-string p1, ", angle: "
    invoke-virtual { v3, p1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v3, p2 }, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;
    const-string p1, " }"
    invoke-virtual { v3, p1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v3 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    return-void
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
  .registers 3
  .line 1
    new-instance v0, Lcom/yalantis/ucrop/util/FastBitmapDrawable;
    invoke-direct { v0, p1 }, Lcom/yalantis/ucrop/util/FastBitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V
    invoke-virtual { p0, v0 }, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    return-void
.end method

.method public setImageMatrix(Landroid/graphics/Matrix;)V
  .registers 3
  .line 1
    invoke-super { p0, p1 }, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V
  .line 2
    iget-object v0, p0, Lcom/yalantis/ucrop/view/TransformImageView;->mCurrentImageMatrix:Landroid/graphics/Matrix;
    invoke-virtual { v0, p1 }, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V
  .line 3
    invoke-direct { p0 }, Lcom/yalantis/ucrop/view/TransformImageView;->updateCurrentImagePoints()V
    return-void
.end method

.method public setImageUri(Landroid/net/Uri;Landroid/net/Uri;)V
  .registers 9
  .line 1
    invoke-virtual { p0 }, Lcom/yalantis/ucrop/view/TransformImageView;->getMaxBitmapSize()I
    move-result v4
  .line 2
    invoke-virtual { p0 }, Landroid/widget/ImageView;->getContext()Landroid/content/Context;
    move-result-object v0
    new-instance v5, Lcom/yalantis/ucrop/view/TransformImageView$1;
    invoke-direct { v5, p0 }, Lcom/yalantis/ucrop/view/TransformImageView$1;-><init>(Lcom/yalantis/ucrop/view/TransformImageView;)V
    move-object v1, p1
    move-object v2, p2
    move v3, v4
    invoke-static/range { v0 .. v5 }, Lcom/yalantis/ucrop/util/BitmapLoadUtils;->decodeBitmapInBackground(Landroid/content/Context;Landroid/net/Uri;Landroid/net/Uri;IILcom/yalantis/ucrop/callback/BitmapLoadCallback;)V
    return-void
.end method

.method public setMaxBitmapSize(I)V
  .registers 2
  .line 1
    iput p1, p0, Lcom/yalantis/ucrop/view/TransformImageView;->mMaxBitmapSize:I
    return-void
.end method

.method public setScaleType(Landroid/widget/ImageView$ScaleType;)V
  .registers 3
  .line 1
    sget-object v0, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;
    if-ne p1, v0, :L0
  .line 2
    invoke-super { p0, p1 }, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V
  :L0
    return-void
.end method

.method public setTransformImageListener(Lcom/yalantis/ucrop/view/TransformImageView$TransformImageListener;)V
  .registers 2
  .line 1
    iput-object p1, p0, Lcom/yalantis/ucrop/view/TransformImageView;->mTransformImageListener:Lcom/yalantis/ucrop/view/TransformImageView$TransformImageListener;
    return-void
.end method
