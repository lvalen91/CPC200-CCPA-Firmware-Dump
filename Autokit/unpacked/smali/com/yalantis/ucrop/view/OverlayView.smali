.class public Lcom/yalantis/ucrop/view/OverlayView;
.super Landroid/view/View;
.source "SourceFile"

.field public final static DEFAULT_CIRCLE_DIMMED_LAYER:Z = false

.field public final static DEFAULT_CROP_GRID_COLUMN_COUNT:I = 2

.field public final static DEFAULT_CROP_GRID_ROW_COUNT:I = 2

.field public final static DEFAULT_FREESTYLE_CROP_ENABLED:Z = false

.field public final static DEFAULT_SHOW_CROP_FRAME:Z = true

.field public final static DEFAULT_SHOW_CROP_GRID:Z = true

.field private mCallback:Lcom/yalantis/ucrop/callback/OverlayViewChangeListener;

.field private mCircleDimmedLayer:Z

.field private mCircularPath:Landroid/graphics/Path;

.field private mCropFrameCornersPaint:Landroid/graphics/Paint;

.field private mCropFramePaint:Landroid/graphics/Paint;

.field protected mCropGridCenter:[F

.field private mCropGridColumnCount:I

.field protected mCropGridCorners:[F

.field private mCropGridPaint:Landroid/graphics/Paint;

.field private mCropGridRowCount:I

.field private mCropRectCornerTouchAreaLineLength:I

.field private mCropRectMinSize:I

.field private final mCropViewRect:Landroid/graphics/RectF;

.field private mCurrentTouchCornerIndex:I

.field private mDimmedColor:I

.field private mDimmedStrokePaint:Landroid/graphics/Paint;

.field private mGridPoints:[F

.field private mIsFreestyleCropEnabled:Z

.field private mPreviousTouchX:F

.field private mPreviousTouchY:F

.field private mShouldSetupCropBounds:Z

.field private mShowCropFrame:Z

.field private mShowCropGrid:Z

.field private mTargetAspectRatio:F

.field private final mTempRect:Landroid/graphics/RectF;

.field protected mThisHeight:I

.field protected mThisWidth:I

.field private mTouchPointThreshold:I

.method public constructor <init>(Landroid/content/Context;)V
  .registers 3
    const/4 v0, 0
  .line 1
    invoke-direct { p0, p1, v0 }, Lcom/yalantis/ucrop/view/OverlayView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
  .registers 4
    const/4 v0, 0
  .line 2
    invoke-direct { p0, p1, p2, v0 }, Lcom/yalantis/ucrop/view/OverlayView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
  .registers 4
  .line 3
    invoke-direct { p0, p1, p2, p3 }, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
  .line 4
    new-instance p1, Landroid/graphics/RectF;
    invoke-direct { p1 }, Landroid/graphics/RectF;-><init>()V
    iput-object p1, p0, Lcom/yalantis/ucrop/view/OverlayView;->mCropViewRect:Landroid/graphics/RectF;
  .line 5
    new-instance p1, Landroid/graphics/RectF;
    invoke-direct { p1 }, Landroid/graphics/RectF;-><init>()V
    iput-object p1, p0, Lcom/yalantis/ucrop/view/OverlayView;->mTempRect:Landroid/graphics/RectF;
    const/4 p1, 0
  .line 6
    iput-object p1, p0, Lcom/yalantis/ucrop/view/OverlayView;->mGridPoints:[F
  .line 7
    new-instance p1, Landroid/graphics/Path;
    invoke-direct { p1 }, Landroid/graphics/Path;-><init>()V
    iput-object p1, p0, Lcom/yalantis/ucrop/view/OverlayView;->mCircularPath:Landroid/graphics/Path;
  .line 8
    new-instance p1, Landroid/graphics/Paint;
    const/4 p2, 1
    invoke-direct { p1, p2 }, Landroid/graphics/Paint;-><init>(I)V
    iput-object p1, p0, Lcom/yalantis/ucrop/view/OverlayView;->mDimmedStrokePaint:Landroid/graphics/Paint;
  .line 9
    new-instance p1, Landroid/graphics/Paint;
    invoke-direct { p1, p2 }, Landroid/graphics/Paint;-><init>(I)V
    iput-object p1, p0, Lcom/yalantis/ucrop/view/OverlayView;->mCropGridPaint:Landroid/graphics/Paint;
  .line 10
    new-instance p1, Landroid/graphics/Paint;
    invoke-direct { p1, p2 }, Landroid/graphics/Paint;-><init>(I)V
    iput-object p1, p0, Lcom/yalantis/ucrop/view/OverlayView;->mCropFramePaint:Landroid/graphics/Paint;
  .line 11
    new-instance p1, Landroid/graphics/Paint;
    invoke-direct { p1, p2 }, Landroid/graphics/Paint;-><init>(I)V
    iput-object p1, p0, Lcom/yalantis/ucrop/view/OverlayView;->mCropFrameCornersPaint:Landroid/graphics/Paint;
    const/4 p1, 0
  .line 12
    iput-boolean p1, p0, Lcom/yalantis/ucrop/view/OverlayView;->mIsFreestyleCropEnabled:Z
    const/high16 p1, -16512
  .line 13
    iput p1, p0, Lcom/yalantis/ucrop/view/OverlayView;->mPreviousTouchX:F
    iput p1, p0, Lcom/yalantis/ucrop/view/OverlayView;->mPreviousTouchY:F
    const/4 p1, -1
  .line 14
    iput p1, p0, Lcom/yalantis/ucrop/view/OverlayView;->mCurrentTouchCornerIndex:I
  .line 15
    invoke-virtual { p0 }, Landroid/view/View;->getResources()Landroid/content/res/Resources;
    move-result-object p1
    sget p2, Lcom/yalantis/ucrop/R$dimen;->ucrop_default_crop_rect_corner_touch_threshold:I
    invoke-virtual { p1, p2 }, Landroid/content/res/Resources;->getDimensionPixelSize(I)I
    move-result p1
    iput p1, p0, Lcom/yalantis/ucrop/view/OverlayView;->mTouchPointThreshold:I
  .line 16
    invoke-virtual { p0 }, Landroid/view/View;->getResources()Landroid/content/res/Resources;
    move-result-object p1
    sget p2, Lcom/yalantis/ucrop/R$dimen;->ucrop_default_crop_rect_min_size:I
    invoke-virtual { p1, p2 }, Landroid/content/res/Resources;->getDimensionPixelSize(I)I
    move-result p1
    iput p1, p0, Lcom/yalantis/ucrop/view/OverlayView;->mCropRectMinSize:I
  .line 17
    invoke-virtual { p0 }, Landroid/view/View;->getResources()Landroid/content/res/Resources;
    move-result-object p1
    sget p2, Lcom/yalantis/ucrop/R$dimen;->ucrop_default_crop_rect_corner_touch_area_line_length:I
    invoke-virtual { p1, p2 }, Landroid/content/res/Resources;->getDimensionPixelSize(I)I
    move-result p1
    iput p1, p0, Lcom/yalantis/ucrop/view/OverlayView;->mCropRectCornerTouchAreaLineLength:I
  .line 18
    invoke-virtual { p0 }, Lcom/yalantis/ucrop/view/OverlayView;->init()V
    return-void
.end method

.method private getCurrentTouchIndex(FF)I
  .registers 13
  .line 1
    iget v0, p0, Lcom/yalantis/ucrop/view/OverlayView;->mTouchPointThreshold:I
    int-to-double v0, v0
    const/4 v2, -1
    const/4 v3, 0
  :L0
    const/16 v4, 8
    if-ge v3, v4, :L2
  .line 2
    iget-object v4, p0, Lcom/yalantis/ucrop/view/OverlayView;->mCropGridCorners:[F
    aget v4, v4, v3
    sub-float v4, p1, v4
    float-to-double v4, v4
    const-wide/high16 v6, 16384
    invoke-static { v4, v5, v6, v7 }, Ljava/lang/Math;->pow(DD)D
    move-result-wide v4
    iget-object v8, p0, Lcom/yalantis/ucrop/view/OverlayView;->mCropGridCorners:[F
    add-int/lit8 v9, v3, 1
    aget v8, v8, v9
    sub-float v8, p2, v8
    float-to-double v8, v8
  .line 3
    invoke-static { v8, v9, v6, v7 }, Ljava/lang/Math;->pow(DD)D
    move-result-wide v6
    add-double/2addr v4, v6
  .line 4
    invoke-static { v4, v5 }, Ljava/lang/Math;->sqrt(D)D
    move-result-wide v4
    cmpg-double v6, v4, v0
    if-gez v6, :L1
  .line 5
    div-int/lit8 v0, v3, 2
    move v2, v0
    move-wide v0, v4
  :L1
    add-int/lit8 v3, v3, 2
    goto :L0
  :L2
    if-gez v2, :L3
  .line 6
    iget-object v0, p0, Lcom/yalantis/ucrop/view/OverlayView;->mCropViewRect:Landroid/graphics/RectF;
    invoke-virtual { v0, p1, p2 }, Landroid/graphics/RectF;->contains(FF)Z
    move-result p1
    if-eqz p1, :L3
    const/4 p1, 4
    return p1
  :L3
    return v2
.end method

.method private initCropFrameStyle(Landroid/content/res/TypedArray;)V
  .registers 6
  .line 1
    sget v0, Lcom/yalantis/ucrop/R$styleable;->ucrop_UCropView_ucrop_frame_stroke_size:I
  .line 2
    invoke-virtual { p0 }, Landroid/view/View;->getResources()Landroid/content/res/Resources;
    move-result-object v1
    sget v2, Lcom/yalantis/ucrop/R$dimen;->ucrop_default_crop_frame_stoke_width:I
    invoke-virtual { v1, v2 }, Landroid/content/res/Resources;->getDimensionPixelSize(I)I
    move-result v1
  .line 3
    invoke-virtual { p1, v0, v1 }, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I
    move-result v0
  .line 4
    sget v1, Lcom/yalantis/ucrop/R$styleable;->ucrop_UCropView_ucrop_frame_color:I
  .line 5
    invoke-virtual { p0 }, Landroid/view/View;->getResources()Landroid/content/res/Resources;
    move-result-object v2
    sget v3, Lcom/yalantis/ucrop/R$color;->ucrop_color_default_crop_frame:I
    invoke-virtual { v2, v3 }, Landroid/content/res/Resources;->getColor(I)I
    move-result v2
  .line 6
    invoke-virtual { p1, v1, v2 }, Landroid/content/res/TypedArray;->getColor(II)I
    move-result p1
  .line 7
    iget-object v1, p0, Lcom/yalantis/ucrop/view/OverlayView;->mCropFramePaint:Landroid/graphics/Paint;
    int-to-float v2, v0
    invoke-virtual { v1, v2 }, Landroid/graphics/Paint;->setStrokeWidth(F)V
  .line 8
    iget-object v1, p0, Lcom/yalantis/ucrop/view/OverlayView;->mCropFramePaint:Landroid/graphics/Paint;
    invoke-virtual { v1, p1 }, Landroid/graphics/Paint;->setColor(I)V
  .line 9
    iget-object v1, p0, Lcom/yalantis/ucrop/view/OverlayView;->mCropFramePaint:Landroid/graphics/Paint;
    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;
    invoke-virtual { v1, v2 }, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V
  .line 10
    iget-object v1, p0, Lcom/yalantis/ucrop/view/OverlayView;->mCropFrameCornersPaint:Landroid/graphics/Paint;
    mul-int/lit8 v0, v0, 3
    int-to-float v0, v0
    invoke-virtual { v1, v0 }, Landroid/graphics/Paint;->setStrokeWidth(F)V
  .line 11
    iget-object v0, p0, Lcom/yalantis/ucrop/view/OverlayView;->mCropFrameCornersPaint:Landroid/graphics/Paint;
    invoke-virtual { v0, p1 }, Landroid/graphics/Paint;->setColor(I)V
  .line 12
    iget-object p1, p0, Lcom/yalantis/ucrop/view/OverlayView;->mCropFrameCornersPaint:Landroid/graphics/Paint;
    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;
    invoke-virtual { p1, v0 }, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V
    return-void
.end method

.method private initCropGridStyle(Landroid/content/res/TypedArray;)V
  .registers 6
  .line 1
    sget v0, Lcom/yalantis/ucrop/R$styleable;->ucrop_UCropView_ucrop_grid_stroke_size:I
  .line 2
    invoke-virtual { p0 }, Landroid/view/View;->getResources()Landroid/content/res/Resources;
    move-result-object v1
    sget v2, Lcom/yalantis/ucrop/R$dimen;->ucrop_default_crop_grid_stoke_width:I
    invoke-virtual { v1, v2 }, Landroid/content/res/Resources;->getDimensionPixelSize(I)I
    move-result v1
  .line 3
    invoke-virtual { p1, v0, v1 }, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I
    move-result v0
  .line 4
    sget v1, Lcom/yalantis/ucrop/R$styleable;->ucrop_UCropView_ucrop_grid_color:I
  .line 5
    invoke-virtual { p0 }, Landroid/view/View;->getResources()Landroid/content/res/Resources;
    move-result-object v2
    sget v3, Lcom/yalantis/ucrop/R$color;->ucrop_color_default_crop_grid:I
    invoke-virtual { v2, v3 }, Landroid/content/res/Resources;->getColor(I)I
    move-result v2
  .line 6
    invoke-virtual { p1, v1, v2 }, Landroid/content/res/TypedArray;->getColor(II)I
    move-result v1
  .line 7
    iget-object v2, p0, Lcom/yalantis/ucrop/view/OverlayView;->mCropGridPaint:Landroid/graphics/Paint;
    int-to-float v0, v0
    invoke-virtual { v2, v0 }, Landroid/graphics/Paint;->setStrokeWidth(F)V
  .line 8
    iget-object v0, p0, Lcom/yalantis/ucrop/view/OverlayView;->mCropGridPaint:Landroid/graphics/Paint;
    invoke-virtual { v0, v1 }, Landroid/graphics/Paint;->setColor(I)V
  .line 9
    sget v0, Lcom/yalantis/ucrop/R$styleable;->ucrop_UCropView_ucrop_grid_row_count:I
    const/4 v1, 2
    invoke-virtual { p1, v0, v1 }, Landroid/content/res/TypedArray;->getInt(II)I
    move-result v0
    iput v0, p0, Lcom/yalantis/ucrop/view/OverlayView;->mCropGridRowCount:I
  .line 10
    sget v0, Lcom/yalantis/ucrop/R$styleable;->ucrop_UCropView_ucrop_grid_column_count:I
    invoke-virtual { p1, v0, v1 }, Landroid/content/res/TypedArray;->getInt(II)I
    move-result p1
    iput p1, p0, Lcom/yalantis/ucrop/view/OverlayView;->mCropGridColumnCount:I
    return-void
.end method

.method private updateCropViewRect(FF)V
  .registers 8
  .line 1
    iget-object v0, p0, Lcom/yalantis/ucrop/view/OverlayView;->mTempRect:Landroid/graphics/RectF;
    iget-object v1, p0, Lcom/yalantis/ucrop/view/OverlayView;->mCropViewRect:Landroid/graphics/RectF;
    invoke-virtual { v0, v1 }, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V
  .line 2
    iget v0, p0, Lcom/yalantis/ucrop/view/OverlayView;->mCurrentTouchCornerIndex:I
    const/4 v1, 1
    if-eqz v0, :L5
    if-eq v0, v1, :L4
    const/4 v2, 2
    if-eq v0, v2, :L3
    const/4 v2, 3
    if-eq v0, v2, :L2
    const/4 v2, 4
    if-eq v0, v2, :L0
    goto/16 :L6
  :L0
  .line 3
    iget-object v0, p0, Lcom/yalantis/ucrop/view/OverlayView;->mTempRect:Landroid/graphics/RectF;
    iget v1, p0, Lcom/yalantis/ucrop/view/OverlayView;->mPreviousTouchX:F
    sub-float/2addr p1, v1
    iget v1, p0, Lcom/yalantis/ucrop/view/OverlayView;->mPreviousTouchY:F
    sub-float/2addr p2, v1
    invoke-virtual { v0, p1, p2 }, Landroid/graphics/RectF;->offset(FF)V
  .line 4
    iget-object p1, p0, Lcom/yalantis/ucrop/view/OverlayView;->mTempRect:Landroid/graphics/RectF;
    iget p1, p1, Landroid/graphics/RectF;->left:F
    invoke-virtual { p0 }, Landroid/view/View;->getLeft()I
    move-result p2
    int-to-float p2, p2
    cmpl-float p1, p1, p2
    if-lez p1, :L1
    iget-object p1, p0, Lcom/yalantis/ucrop/view/OverlayView;->mTempRect:Landroid/graphics/RectF;
    iget p1, p1, Landroid/graphics/RectF;->top:F
    invoke-virtual { p0 }, Landroid/view/View;->getTop()I
    move-result p2
    int-to-float p2, p2
    cmpl-float p1, p1, p2
    if-lez p1, :L1
    iget-object p1, p0, Lcom/yalantis/ucrop/view/OverlayView;->mTempRect:Landroid/graphics/RectF;
    iget p1, p1, Landroid/graphics/RectF;->right:F
  .line 5
    invoke-virtual { p0 }, Landroid/view/View;->getRight()I
    move-result p2
    int-to-float p2, p2
    cmpg-float p1, p1, p2
    if-gez p1, :L1
    iget-object p1, p0, Lcom/yalantis/ucrop/view/OverlayView;->mTempRect:Landroid/graphics/RectF;
    iget p1, p1, Landroid/graphics/RectF;->bottom:F
    invoke-virtual { p0 }, Landroid/view/View;->getBottom()I
    move-result p2
    int-to-float p2, p2
    cmpg-float p1, p1, p2
    if-gez p1, :L1
  .line 6
    iget-object p1, p0, Lcom/yalantis/ucrop/view/OverlayView;->mCropViewRect:Landroid/graphics/RectF;
    iget-object p2, p0, Lcom/yalantis/ucrop/view/OverlayView;->mTempRect:Landroid/graphics/RectF;
    invoke-virtual { p1, p2 }, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V
  .line 7
    invoke-direct { p0 }, Lcom/yalantis/ucrop/view/OverlayView;->updateGridPoints()V
  .line 8
    invoke-virtual { p0 }, Landroid/view/View;->postInvalidate()V
  :L1
    return-void
  :L2
  .line 9
    iget-object v0, p0, Lcom/yalantis/ucrop/view/OverlayView;->mTempRect:Landroid/graphics/RectF;
    iget-object v2, p0, Lcom/yalantis/ucrop/view/OverlayView;->mCropViewRect:Landroid/graphics/RectF;
    iget v3, v2, Landroid/graphics/RectF;->top:F
    iget v2, v2, Landroid/graphics/RectF;->right:F
    invoke-virtual { v0, p1, v3, v2, p2 }, Landroid/graphics/RectF;->set(FFFF)V
    goto :L6
  :L3
  .line 10
    iget-object v0, p0, Lcom/yalantis/ucrop/view/OverlayView;->mTempRect:Landroid/graphics/RectF;
    iget-object v2, p0, Lcom/yalantis/ucrop/view/OverlayView;->mCropViewRect:Landroid/graphics/RectF;
    iget v3, v2, Landroid/graphics/RectF;->left:F
    iget v2, v2, Landroid/graphics/RectF;->top:F
    invoke-virtual { v0, v3, v2, p1, p2 }, Landroid/graphics/RectF;->set(FFFF)V
    goto :L6
  :L4
  .line 11
    iget-object v0, p0, Lcom/yalantis/ucrop/view/OverlayView;->mTempRect:Landroid/graphics/RectF;
    iget-object v2, p0, Lcom/yalantis/ucrop/view/OverlayView;->mCropViewRect:Landroid/graphics/RectF;
    iget v3, v2, Landroid/graphics/RectF;->left:F
    iget v2, v2, Landroid/graphics/RectF;->bottom:F
    invoke-virtual { v0, v3, p2, p1, v2 }, Landroid/graphics/RectF;->set(FFFF)V
    goto :L6
  :L5
  .line 12
    iget-object v0, p0, Lcom/yalantis/ucrop/view/OverlayView;->mTempRect:Landroid/graphics/RectF;
    iget-object v2, p0, Lcom/yalantis/ucrop/view/OverlayView;->mCropViewRect:Landroid/graphics/RectF;
    iget v3, v2, Landroid/graphics/RectF;->right:F
    iget v2, v2, Landroid/graphics/RectF;->bottom:F
    invoke-virtual { v0, p1, p2, v3, v2 }, Landroid/graphics/RectF;->set(FFFF)V
  :L6
  .line 13
    iget-object p1, p0, Lcom/yalantis/ucrop/view/OverlayView;->mTempRect:Landroid/graphics/RectF;
    invoke-virtual { p1 }, Landroid/graphics/RectF;->height()F
    move-result p1
    iget p2, p0, Lcom/yalantis/ucrop/view/OverlayView;->mCropRectMinSize:I
    int-to-float p2, p2
    const/4 v0, 0
    cmpl-float p1, p1, p2
    if-ltz p1, :L7
    const/4 p1, 1
    goto :L8
  :L7
    const/4 p1, 0
  :L8
  .line 14
    iget-object p2, p0, Lcom/yalantis/ucrop/view/OverlayView;->mTempRect:Landroid/graphics/RectF;
    invoke-virtual { p2 }, Landroid/graphics/RectF;->width()F
    move-result p2
    iget v2, p0, Lcom/yalantis/ucrop/view/OverlayView;->mCropRectMinSize:I
    int-to-float v2, v2
    cmpl-float p2, p2, v2
    if-ltz p2, :L9
    goto :L10
  :L9
    const/4 v1, 0
  :L10
  .line 15
    iget-object p2, p0, Lcom/yalantis/ucrop/view/OverlayView;->mCropViewRect:Landroid/graphics/RectF;
    if-eqz v1, :L11
    iget-object v0, p0, Lcom/yalantis/ucrop/view/OverlayView;->mTempRect:Landroid/graphics/RectF;
    iget v0, v0, Landroid/graphics/RectF;->left:F
    goto :L12
  :L11
    iget v0, p2, Landroid/graphics/RectF;->left:F
  :L12
    if-eqz p1, :L13
    iget-object v2, p0, Lcom/yalantis/ucrop/view/OverlayView;->mTempRect:Landroid/graphics/RectF;
    goto :L14
  :L13
    iget-object v2, p0, Lcom/yalantis/ucrop/view/OverlayView;->mCropViewRect:Landroid/graphics/RectF;
  :L14
    iget v2, v2, Landroid/graphics/RectF;->top:F
    if-eqz v1, :L15
    iget-object v3, p0, Lcom/yalantis/ucrop/view/OverlayView;->mTempRect:Landroid/graphics/RectF;
    goto :L16
  :L15
    iget-object v3, p0, Lcom/yalantis/ucrop/view/OverlayView;->mCropViewRect:Landroid/graphics/RectF;
  :L16
    iget v3, v3, Landroid/graphics/RectF;->right:F
    if-eqz p1, :L17
    iget-object v4, p0, Lcom/yalantis/ucrop/view/OverlayView;->mTempRect:Landroid/graphics/RectF;
    goto :L18
  :L17
    iget-object v4, p0, Lcom/yalantis/ucrop/view/OverlayView;->mCropViewRect:Landroid/graphics/RectF;
  :L18
    iget v4, v4, Landroid/graphics/RectF;->bottom:F
    invoke-virtual { p2, v0, v2, v3, v4 }, Landroid/graphics/RectF;->set(FFFF)V
    if-nez p1, :L19
    if-eqz v1, :L20
  :L19
  .line 16
    invoke-direct { p0 }, Lcom/yalantis/ucrop/view/OverlayView;->updateGridPoints()V
  .line 17
    invoke-virtual { p0 }, Landroid/view/View;->postInvalidate()V
  :L20
    return-void
.end method

.method private updateGridPoints()V
  .registers 6
  .line 1
    iget-object v0, p0, Lcom/yalantis/ucrop/view/OverlayView;->mCropViewRect:Landroid/graphics/RectF;
    invoke-static { v0 }, Lcom/yalantis/ucrop/util/RectUtils;->getCornersFromRect(Landroid/graphics/RectF;)[F
    move-result-object v0
    iput-object v0, p0, Lcom/yalantis/ucrop/view/OverlayView;->mCropGridCorners:[F
  .line 2
    iget-object v0, p0, Lcom/yalantis/ucrop/view/OverlayView;->mCropViewRect:Landroid/graphics/RectF;
    invoke-static { v0 }, Lcom/yalantis/ucrop/util/RectUtils;->getCenterFromRect(Landroid/graphics/RectF;)[F
    move-result-object v0
    iput-object v0, p0, Lcom/yalantis/ucrop/view/OverlayView;->mCropGridCenter:[F
    const/4 v0, 0
  .line 3
    iput-object v0, p0, Lcom/yalantis/ucrop/view/OverlayView;->mGridPoints:[F
  .line 4
    iget-object v0, p0, Lcom/yalantis/ucrop/view/OverlayView;->mCircularPath:Landroid/graphics/Path;
    invoke-virtual { v0 }, Landroid/graphics/Path;->reset()V
  .line 5
    iget-object v0, p0, Lcom/yalantis/ucrop/view/OverlayView;->mCircularPath:Landroid/graphics/Path;
    iget-object v1, p0, Lcom/yalantis/ucrop/view/OverlayView;->mCropViewRect:Landroid/graphics/RectF;
    invoke-virtual { v1 }, Landroid/graphics/RectF;->centerX()F
    move-result v1
    iget-object v2, p0, Lcom/yalantis/ucrop/view/OverlayView;->mCropViewRect:Landroid/graphics/RectF;
    invoke-virtual { v2 }, Landroid/graphics/RectF;->centerY()F
    move-result v2
    iget-object v3, p0, Lcom/yalantis/ucrop/view/OverlayView;->mCropViewRect:Landroid/graphics/RectF;
  .line 6
    invoke-virtual { v3 }, Landroid/graphics/RectF;->width()F
    move-result v3
    iget-object v4, p0, Lcom/yalantis/ucrop/view/OverlayView;->mCropViewRect:Landroid/graphics/RectF;
    invoke-virtual { v4 }, Landroid/graphics/RectF;->height()F
    move-result v4
    invoke-static { v3, v4 }, Ljava/lang/Math;->min(FF)F
    move-result v3
    const/high16 v4, 16384
    div-float/2addr v3, v4
    sget-object v4, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;
  .line 7
    invoke-virtual { v0, v1, v2, v3, v4 }, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V
    return-void
.end method

.method protected drawCropGrid(Landroid/graphics/Canvas;)V
  .registers 11
  .line 1
    iget-boolean v0, p0, Lcom/yalantis/ucrop/view/OverlayView;->mShowCropGrid:Z
    if-eqz v0, :L3
  .line 2
    iget-object v0, p0, Lcom/yalantis/ucrop/view/OverlayView;->mGridPoints:[F
    if-nez v0, :L2
    iget-object v0, p0, Lcom/yalantis/ucrop/view/OverlayView;->mCropViewRect:Landroid/graphics/RectF;
    invoke-virtual { v0 }, Landroid/graphics/RectF;->isEmpty()Z
    move-result v0
    if-nez v0, :L2
  .line 3
    iget v0, p0, Lcom/yalantis/ucrop/view/OverlayView;->mCropGridRowCount:I
    mul-int/lit8 v0, v0, 4
    iget v1, p0, Lcom/yalantis/ucrop/view/OverlayView;->mCropGridColumnCount:I
    mul-int/lit8 v1, v1, 4
    add-int/2addr v0, v1
    new-array v0, v0, [F
    iput-object v0, p0, Lcom/yalantis/ucrop/view/OverlayView;->mGridPoints:[F
    const/4 v0, 0
    const/4 v1, 0
    const/4 v2, 0
  :L0
  .line 4
    iget v3, p0, Lcom/yalantis/ucrop/view/OverlayView;->mCropGridRowCount:I
    const/high16 v4, 16256
    if-ge v1, v3, :L1
  .line 5
    iget-object v3, p0, Lcom/yalantis/ucrop/view/OverlayView;->mGridPoints:[F
    add-int/lit8 v5, v2, 1
    iget-object v6, p0, Lcom/yalantis/ucrop/view/OverlayView;->mCropViewRect:Landroid/graphics/RectF;
    iget v7, v6, Landroid/graphics/RectF;->left:F
    aput v7, v3, v2
    add-int/lit8 v2, v5, 1
  .line 6
    invoke-virtual { v6 }, Landroid/graphics/RectF;->height()F
    move-result v6
    int-to-float v7, v1
    add-float/2addr v7, v4
    iget v4, p0, Lcom/yalantis/ucrop/view/OverlayView;->mCropGridRowCount:I
    add-int/lit8 v4, v4, 1
    int-to-float v4, v4
    div-float v4, v7, v4
    mul-float v6, v6, v4
    iget-object v4, p0, Lcom/yalantis/ucrop/view/OverlayView;->mCropViewRect:Landroid/graphics/RectF;
    iget v8, v4, Landroid/graphics/RectF;->top:F
    add-float/2addr v6, v8
    aput v6, v3, v5
  .line 7
    iget-object v3, p0, Lcom/yalantis/ucrop/view/OverlayView;->mGridPoints:[F
    add-int/lit8 v5, v2, 1
    iget v6, v4, Landroid/graphics/RectF;->right:F
    aput v6, v3, v2
    add-int/lit8 v2, v5, 1
  .line 8
    invoke-virtual { v4 }, Landroid/graphics/RectF;->height()F
    move-result v4
    iget v6, p0, Lcom/yalantis/ucrop/view/OverlayView;->mCropGridRowCount:I
    add-int/lit8 v6, v6, 1
    int-to-float v6, v6
    div-float/2addr v7, v6
    mul-float v4, v4, v7
    iget-object v6, p0, Lcom/yalantis/ucrop/view/OverlayView;->mCropViewRect:Landroid/graphics/RectF;
    iget v6, v6, Landroid/graphics/RectF;->top:F
    add-float/2addr v4, v6
    aput v4, v3, v5
    add-int/lit8 v1, v1, 1
    goto :L0
  :L1
  .line 9
    iget v1, p0, Lcom/yalantis/ucrop/view/OverlayView;->mCropGridColumnCount:I
    if-ge v0, v1, :L2
  .line 10
    iget-object v1, p0, Lcom/yalantis/ucrop/view/OverlayView;->mGridPoints:[F
    add-int/lit8 v3, v2, 1
    iget-object v5, p0, Lcom/yalantis/ucrop/view/OverlayView;->mCropViewRect:Landroid/graphics/RectF;
    invoke-virtual { v5 }, Landroid/graphics/RectF;->width()F
    move-result v5
    int-to-float v6, v0
    add-float/2addr v6, v4
    iget v7, p0, Lcom/yalantis/ucrop/view/OverlayView;->mCropGridColumnCount:I
    add-int/lit8 v7, v7, 1
    int-to-float v7, v7
    div-float v7, v6, v7
    mul-float v5, v5, v7
    iget-object v7, p0, Lcom/yalantis/ucrop/view/OverlayView;->mCropViewRect:Landroid/graphics/RectF;
    iget v8, v7, Landroid/graphics/RectF;->left:F
    add-float/2addr v5, v8
    aput v5, v1, v2
  .line 11
    iget-object v1, p0, Lcom/yalantis/ucrop/view/OverlayView;->mGridPoints:[F
    add-int/lit8 v2, v3, 1
    iget v5, v7, Landroid/graphics/RectF;->top:F
    aput v5, v1, v3
    add-int/lit8 v3, v2, 1
  .line 12
    invoke-virtual { v7 }, Landroid/graphics/RectF;->width()F
    move-result v5
    iget v7, p0, Lcom/yalantis/ucrop/view/OverlayView;->mCropGridColumnCount:I
    add-int/lit8 v7, v7, 1
    int-to-float v7, v7
    div-float/2addr v6, v7
    mul-float v5, v5, v6
    iget-object v6, p0, Lcom/yalantis/ucrop/view/OverlayView;->mCropViewRect:Landroid/graphics/RectF;
    iget v7, v6, Landroid/graphics/RectF;->left:F
    add-float/2addr v5, v7
    aput v5, v1, v2
  .line 13
    iget-object v1, p0, Lcom/yalantis/ucrop/view/OverlayView;->mGridPoints:[F
    add-int/lit8 v2, v3, 1
    iget v5, v6, Landroid/graphics/RectF;->bottom:F
    aput v5, v1, v3
    add-int/lit8 v0, v0, 1
    goto :L1
  :L2
  .line 14
    iget-object v0, p0, Lcom/yalantis/ucrop/view/OverlayView;->mGridPoints:[F
    if-eqz v0, :L3
  .line 15
    iget-object v1, p0, Lcom/yalantis/ucrop/view/OverlayView;->mCropGridPaint:Landroid/graphics/Paint;
    invoke-virtual { p1, v0, v1 }, Landroid/graphics/Canvas;->drawLines([FLandroid/graphics/Paint;)V
  :L3
  .line 16
    iget-boolean v0, p0, Lcom/yalantis/ucrop/view/OverlayView;->mShowCropFrame:Z
    if-eqz v0, :L4
  .line 17
    iget-object v0, p0, Lcom/yalantis/ucrop/view/OverlayView;->mCropViewRect:Landroid/graphics/RectF;
    iget-object v1, p0, Lcom/yalantis/ucrop/view/OverlayView;->mCropFramePaint:Landroid/graphics/Paint;
    invoke-virtual { p1, v0, v1 }, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V
  :L4
  .line 18
    iget-boolean v0, p0, Lcom/yalantis/ucrop/view/OverlayView;->mIsFreestyleCropEnabled:Z
    if-eqz v0, :L5
  .line 19
    invoke-virtual { p1 }, Landroid/graphics/Canvas;->save()I
  .line 20
    iget-object v0, p0, Lcom/yalantis/ucrop/view/OverlayView;->mTempRect:Landroid/graphics/RectF;
    iget-object v1, p0, Lcom/yalantis/ucrop/view/OverlayView;->mCropViewRect:Landroid/graphics/RectF;
    invoke-virtual { v0, v1 }, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V
  .line 21
    iget-object v0, p0, Lcom/yalantis/ucrop/view/OverlayView;->mTempRect:Landroid/graphics/RectF;
    iget v1, p0, Lcom/yalantis/ucrop/view/OverlayView;->mCropRectCornerTouchAreaLineLength:I
    int-to-float v2, v1
    neg-int v1, v1
    int-to-float v1, v1
    invoke-virtual { v0, v2, v1 }, Landroid/graphics/RectF;->inset(FF)V
  .line 22
    iget-object v0, p0, Lcom/yalantis/ucrop/view/OverlayView;->mTempRect:Landroid/graphics/RectF;
    sget-object v1, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;
    invoke-virtual { p1, v0, v1 }, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;Landroid/graphics/Region$Op;)Z
  .line 23
    iget-object v0, p0, Lcom/yalantis/ucrop/view/OverlayView;->mTempRect:Landroid/graphics/RectF;
    iget-object v1, p0, Lcom/yalantis/ucrop/view/OverlayView;->mCropViewRect:Landroid/graphics/RectF;
    invoke-virtual { v0, v1 }, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V
  .line 24
    iget-object v0, p0, Lcom/yalantis/ucrop/view/OverlayView;->mTempRect:Landroid/graphics/RectF;
    iget v1, p0, Lcom/yalantis/ucrop/view/OverlayView;->mCropRectCornerTouchAreaLineLength:I
    neg-int v2, v1
    int-to-float v2, v2
    int-to-float v1, v1
    invoke-virtual { v0, v2, v1 }, Landroid/graphics/RectF;->inset(FF)V
  .line 25
    iget-object v0, p0, Lcom/yalantis/ucrop/view/OverlayView;->mTempRect:Landroid/graphics/RectF;
    sget-object v1, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;
    invoke-virtual { p1, v0, v1 }, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;Landroid/graphics/Region$Op;)Z
  .line 26
    iget-object v0, p0, Lcom/yalantis/ucrop/view/OverlayView;->mCropViewRect:Landroid/graphics/RectF;
    iget-object v1, p0, Lcom/yalantis/ucrop/view/OverlayView;->mCropFrameCornersPaint:Landroid/graphics/Paint;
    invoke-virtual { p1, v0, v1 }, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V
  .line 27
    invoke-virtual { p1 }, Landroid/graphics/Canvas;->restore()V
  :L5
    return-void
.end method

.method protected drawDimmedLayer(Landroid/graphics/Canvas;)V
  .registers 6
  .line 1
    invoke-virtual { p1 }, Landroid/graphics/Canvas;->save()I
  .line 2
    iget-boolean v0, p0, Lcom/yalantis/ucrop/view/OverlayView;->mCircleDimmedLayer:Z
    if-eqz v0, :L0
  .line 3
    iget-object v0, p0, Lcom/yalantis/ucrop/view/OverlayView;->mCircularPath:Landroid/graphics/Path;
    sget-object v1, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;
    invoke-virtual { p1, v0, v1 }, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;Landroid/graphics/Region$Op;)Z
    goto :L1
  :L0
  .line 4
    iget-object v0, p0, Lcom/yalantis/ucrop/view/OverlayView;->mCropViewRect:Landroid/graphics/RectF;
    sget-object v1, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;
    invoke-virtual { p1, v0, v1 }, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;Landroid/graphics/Region$Op;)Z
  :L1
  .line 5
    iget v0, p0, Lcom/yalantis/ucrop/view/OverlayView;->mDimmedColor:I
    invoke-virtual { p1, v0 }, Landroid/graphics/Canvas;->drawColor(I)V
  .line 6
    invoke-virtual { p1 }, Landroid/graphics/Canvas;->restore()V
  .line 7
    iget-boolean v0, p0, Lcom/yalantis/ucrop/view/OverlayView;->mCircleDimmedLayer:Z
    if-eqz v0, :L2
  .line 8
    iget-object v0, p0, Lcom/yalantis/ucrop/view/OverlayView;->mCropViewRect:Landroid/graphics/RectF;
    invoke-virtual { v0 }, Landroid/graphics/RectF;->centerX()F
    move-result v0
    iget-object v1, p0, Lcom/yalantis/ucrop/view/OverlayView;->mCropViewRect:Landroid/graphics/RectF;
    invoke-virtual { v1 }, Landroid/graphics/RectF;->centerY()F
    move-result v1
    iget-object v2, p0, Lcom/yalantis/ucrop/view/OverlayView;->mCropViewRect:Landroid/graphics/RectF;
  .line 9
    invoke-virtual { v2 }, Landroid/graphics/RectF;->width()F
    move-result v2
    iget-object v3, p0, Lcom/yalantis/ucrop/view/OverlayView;->mCropViewRect:Landroid/graphics/RectF;
    invoke-virtual { v3 }, Landroid/graphics/RectF;->height()F
    move-result v3
    invoke-static { v2, v3 }, Ljava/lang/Math;->min(FF)F
    move-result v2
    const/high16 v3, 16384
    div-float/2addr v2, v3
    iget-object v3, p0, Lcom/yalantis/ucrop/view/OverlayView;->mDimmedStrokePaint:Landroid/graphics/Paint;
  .line 10
    invoke-virtual { p1, v0, v1, v2, v3 }, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V
  :L2
    return-void
.end method

.method public getCropViewRect()Landroid/graphics/RectF;
  .registers 2
  .line 1
    iget-object v0, p0, Lcom/yalantis/ucrop/view/OverlayView;->mCropViewRect:Landroid/graphics/RectF;
    return-object v0
.end method

.method public getOverlayViewChangeListener()Lcom/yalantis/ucrop/callback/OverlayViewChangeListener;
  .registers 2
  .line 1
    iget-object v0, p0, Lcom/yalantis/ucrop/view/OverlayView;->mCallback:Lcom/yalantis/ucrop/callback/OverlayViewChangeListener;
    return-object v0
.end method

.method protected init()V
  .registers 3
  .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v1, 18
    if-ge v0, v1, :L0
    const/16 v1, 11
    if-lt v0, v1, :L0
    const/4 v0, 1
    const/4 v1, 0
  .line 2
    invoke-virtual { p0, v0, v1 }, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V
  :L0
    return-void
.end method

.method public isFreestyleCropEnabled()Z
  .registers 2
  .line 1
    iget-boolean v0, p0, Lcom/yalantis/ucrop/view/OverlayView;->mIsFreestyleCropEnabled:Z
    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
  .registers 2
  .line 1
    invoke-super { p0, p1 }, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V
  .line 2
    invoke-virtual { p0, p1 }, Lcom/yalantis/ucrop/view/OverlayView;->drawDimmedLayer(Landroid/graphics/Canvas;)V
  .line 3
    invoke-virtual { p0, p1 }, Lcom/yalantis/ucrop/view/OverlayView;->drawCropGrid(Landroid/graphics/Canvas;)V
    return-void
.end method

.method protected onLayout(ZIIII)V
  .registers 6
  .line 1
    invoke-super/range { p0 .. p5 }, Landroid/view/View;->onLayout(ZIIII)V
    if-eqz p1, :L0
  .line 2
    invoke-virtual { p0 }, Landroid/view/View;->getPaddingLeft()I
    move-result p1
  .line 3
    invoke-virtual { p0 }, Landroid/view/View;->getPaddingTop()I
    move-result p2
  .line 4
    invoke-virtual { p0 }, Landroid/view/View;->getWidth()I
    move-result p3
    invoke-virtual { p0 }, Landroid/view/View;->getPaddingRight()I
    move-result p4
    sub-int/2addr p3, p4
  .line 5
    invoke-virtual { p0 }, Landroid/view/View;->getHeight()I
    move-result p4
    invoke-virtual { p0 }, Landroid/view/View;->getPaddingBottom()I
    move-result p5
    sub-int/2addr p4, p5
    sub-int/2addr p3, p1
  .line 6
    iput p3, p0, Lcom/yalantis/ucrop/view/OverlayView;->mThisWidth:I
    sub-int/2addr p4, p2
  .line 7
    iput p4, p0, Lcom/yalantis/ucrop/view/OverlayView;->mThisHeight:I
  .line 8
    iget-boolean p1, p0, Lcom/yalantis/ucrop/view/OverlayView;->mShouldSetupCropBounds:Z
    if-eqz p1, :L0
    const/4 p1, 0
  .line 9
    iput-boolean p1, p0, Lcom/yalantis/ucrop/view/OverlayView;->mShouldSetupCropBounds:Z
  .line 10
    iget p1, p0, Lcom/yalantis/ucrop/view/OverlayView;->mTargetAspectRatio:F
    invoke-virtual { p0, p1 }, Lcom/yalantis/ucrop/view/OverlayView;->setTargetAspectRatio(F)V
  :L0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
  .registers 9
  .line 1
    iget-object v0, p0, Lcom/yalantis/ucrop/view/OverlayView;->mCropViewRect:Landroid/graphics/RectF;
    invoke-virtual { v0 }, Landroid/graphics/RectF;->isEmpty()Z
    move-result v0
    const/4 v1, 0
    if-nez v0, :L5
    iget-boolean v0, p0, Lcom/yalantis/ucrop/view/OverlayView;->mIsFreestyleCropEnabled:Z
    if-nez v0, :L0
    goto/16 :L5
  :L0
  .line 2
    invoke-virtual { p1 }, Landroid/view/MotionEvent;->getX()F
    move-result v0
  .line 3
    invoke-virtual { p1 }, Landroid/view/MotionEvent;->getY()F
    move-result v2
  .line 4
    invoke-virtual { p1 }, Landroid/view/MotionEvent;->getAction()I
    move-result v3
    and-int/lit16 v3, v3, 255
    const/4 v4, -1
    const/4 v5, 1
    if-nez v3, :L3
  .line 5
    iget p1, p0, Lcom/yalantis/ucrop/view/OverlayView;->mPreviousTouchX:F
    const/4 v3, 0
    cmpg-float p1, p1, v3
    if-gez p1, :L1
  .line 6
    iput v0, p0, Lcom/yalantis/ucrop/view/OverlayView;->mPreviousTouchX:F
  .line 7
    iput v2, p0, Lcom/yalantis/ucrop/view/OverlayView;->mPreviousTouchY:F
  :L1
  .line 8
    invoke-direct { p0, v0, v2 }, Lcom/yalantis/ucrop/view/OverlayView;->getCurrentTouchIndex(FF)I
    move-result p1
    iput p1, p0, Lcom/yalantis/ucrop/view/OverlayView;->mCurrentTouchCornerIndex:I
    if-eq p1, v4, :L2
    const/4 v1, 1
  :L2
    return v1
  :L3
  .line 9
    invoke-virtual { p1 }, Landroid/view/MotionEvent;->getAction()I
    move-result v3
    and-int/lit16 v3, v3, 255
    const/4 v6, 2
    if-ne v3, v6, :L4
  .line 10
    invoke-virtual { p1 }, Landroid/view/MotionEvent;->getPointerCount()I
    move-result v3
    if-ne v3, v5, :L4
    iget v3, p0, Lcom/yalantis/ucrop/view/OverlayView;->mCurrentTouchCornerIndex:I
    if-eq v3, v4, :L4
  .line 11
    invoke-virtual { p0 }, Landroid/view/View;->getPaddingLeft()I
    move-result p1
    int-to-float p1, p1
    invoke-static { v0, p1 }, Ljava/lang/Math;->max(FF)F
    move-result p1
    invoke-virtual { p0 }, Landroid/view/View;->getWidth()I
    move-result v0
    invoke-virtual { p0 }, Landroid/view/View;->getPaddingRight()I
    move-result v1
    sub-int/2addr v0, v1
    int-to-float v0, v0
    invoke-static { p1, v0 }, Ljava/lang/Math;->min(FF)F
    move-result p1
  .line 12
    invoke-virtual { p0 }, Landroid/view/View;->getPaddingTop()I
    move-result v0
    int-to-float v0, v0
    invoke-static { v2, v0 }, Ljava/lang/Math;->max(FF)F
    move-result v0
    invoke-virtual { p0 }, Landroid/view/View;->getHeight()I
    move-result v1
    invoke-virtual { p0 }, Landroid/view/View;->getPaddingBottom()I
    move-result v2
    sub-int/2addr v1, v2
    int-to-float v1, v1
    invoke-static { v0, v1 }, Ljava/lang/Math;->min(FF)F
    move-result v0
  .line 13
    invoke-direct { p0, p1, v0 }, Lcom/yalantis/ucrop/view/OverlayView;->updateCropViewRect(FF)V
  .line 14
    iput p1, p0, Lcom/yalantis/ucrop/view/OverlayView;->mPreviousTouchX:F
  .line 15
    iput v0, p0, Lcom/yalantis/ucrop/view/OverlayView;->mPreviousTouchY:F
    return v5
  :L4
  .line 16
    invoke-virtual { p1 }, Landroid/view/MotionEvent;->getAction()I
    move-result p1
    and-int/lit16 p1, p1, 255
    if-ne p1, v5, :L5
    const/high16 p1, -16512
  .line 17
    iput p1, p0, Lcom/yalantis/ucrop/view/OverlayView;->mPreviousTouchX:F
  .line 18
    iput p1, p0, Lcom/yalantis/ucrop/view/OverlayView;->mPreviousTouchY:F
  .line 19
    iput v4, p0, Lcom/yalantis/ucrop/view/OverlayView;->mCurrentTouchCornerIndex:I
  .line 20
    iget-object p1, p0, Lcom/yalantis/ucrop/view/OverlayView;->mCallback:Lcom/yalantis/ucrop/callback/OverlayViewChangeListener;
    if-eqz p1, :L5
  .line 21
    iget-object v0, p0, Lcom/yalantis/ucrop/view/OverlayView;->mCropViewRect:Landroid/graphics/RectF;
    invoke-interface { p1, v0 }, Lcom/yalantis/ucrop/callback/OverlayViewChangeListener;->onCropRectUpdated(Landroid/graphics/RectF;)V
  :L5
    return v1
.end method

.method protected processStyledAttributes(Landroid/content/res/TypedArray;)V
  .registers 5
  .line 1
    sget v0, Lcom/yalantis/ucrop/R$styleable;->ucrop_UCropView_ucrop_circle_dimmed_layer:I
    const/4 v1, 0
    invoke-virtual { p1, v0, v1 }, Landroid/content/res/TypedArray;->getBoolean(IZ)Z
    move-result v0
    iput-boolean v0, p0, Lcom/yalantis/ucrop/view/OverlayView;->mCircleDimmedLayer:Z
  .line 2
    sget v0, Lcom/yalantis/ucrop/R$styleable;->ucrop_UCropView_ucrop_dimmed_color:I
  .line 3
    invoke-virtual { p0 }, Landroid/view/View;->getResources()Landroid/content/res/Resources;
    move-result-object v1
    sget v2, Lcom/yalantis/ucrop/R$color;->ucrop_color_default_dimmed:I
    invoke-virtual { v1, v2 }, Landroid/content/res/Resources;->getColor(I)I
    move-result v1
  .line 4
    invoke-virtual { p1, v0, v1 }, Landroid/content/res/TypedArray;->getColor(II)I
    move-result v0
    iput v0, p0, Lcom/yalantis/ucrop/view/OverlayView;->mDimmedColor:I
  .line 5
    iget-object v1, p0, Lcom/yalantis/ucrop/view/OverlayView;->mDimmedStrokePaint:Landroid/graphics/Paint;
    invoke-virtual { v1, v0 }, Landroid/graphics/Paint;->setColor(I)V
  .line 6
    iget-object v0, p0, Lcom/yalantis/ucrop/view/OverlayView;->mDimmedStrokePaint:Landroid/graphics/Paint;
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;
    invoke-virtual { v0, v1 }, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V
  .line 7
    iget-object v0, p0, Lcom/yalantis/ucrop/view/OverlayView;->mDimmedStrokePaint:Landroid/graphics/Paint;
    const/high16 v1, 16256
    invoke-virtual { v0, v1 }, Landroid/graphics/Paint;->setStrokeWidth(F)V
  .line 8
    invoke-direct { p0, p1 }, Lcom/yalantis/ucrop/view/OverlayView;->initCropFrameStyle(Landroid/content/res/TypedArray;)V
  .line 9
    sget v0, Lcom/yalantis/ucrop/R$styleable;->ucrop_UCropView_ucrop_show_frame:I
    const/4 v1, 1
    invoke-virtual { p1, v0, v1 }, Landroid/content/res/TypedArray;->getBoolean(IZ)Z
    move-result v0
    iput-boolean v0, p0, Lcom/yalantis/ucrop/view/OverlayView;->mShowCropFrame:Z
  .line 10
    invoke-direct { p0, p1 }, Lcom/yalantis/ucrop/view/OverlayView;->initCropGridStyle(Landroid/content/res/TypedArray;)V
  .line 11
    sget v0, Lcom/yalantis/ucrop/R$styleable;->ucrop_UCropView_ucrop_show_grid:I
    invoke-virtual { p1, v0, v1 }, Landroid/content/res/TypedArray;->getBoolean(IZ)Z
    move-result p1
    iput-boolean p1, p0, Lcom/yalantis/ucrop/view/OverlayView;->mShowCropGrid:Z
    return-void
.end method

.method public setCircleDimmedLayer(Z)V
  .registers 2
  .line 1
    iput-boolean p1, p0, Lcom/yalantis/ucrop/view/OverlayView;->mCircleDimmedLayer:Z
    return-void
.end method

.method public setCropFrameColor(I)V
  .registers 3
  .line 1
    iget-object v0, p0, Lcom/yalantis/ucrop/view/OverlayView;->mCropFramePaint:Landroid/graphics/Paint;
    invoke-virtual { v0, p1 }, Landroid/graphics/Paint;->setColor(I)V
    return-void
.end method

.method public setCropFrameStrokeWidth(I)V
  .registers 3
  .line 1
    iget-object v0, p0, Lcom/yalantis/ucrop/view/OverlayView;->mCropFramePaint:Landroid/graphics/Paint;
    int-to-float p1, p1
    invoke-virtual { v0, p1 }, Landroid/graphics/Paint;->setStrokeWidth(F)V
    return-void
.end method

.method public setCropGridColor(I)V
  .registers 3
  .line 1
    iget-object v0, p0, Lcom/yalantis/ucrop/view/OverlayView;->mCropGridPaint:Landroid/graphics/Paint;
    invoke-virtual { v0, p1 }, Landroid/graphics/Paint;->setColor(I)V
    return-void
.end method

.method public setCropGridColumnCount(I)V
  .registers 2
  .line 1
    iput p1, p0, Lcom/yalantis/ucrop/view/OverlayView;->mCropGridColumnCount:I
    const/4 p1, 0
  .line 2
    iput-object p1, p0, Lcom/yalantis/ucrop/view/OverlayView;->mGridPoints:[F
    return-void
.end method

.method public setCropGridRowCount(I)V
  .registers 2
  .line 1
    iput p1, p0, Lcom/yalantis/ucrop/view/OverlayView;->mCropGridRowCount:I
    const/4 p1, 0
  .line 2
    iput-object p1, p0, Lcom/yalantis/ucrop/view/OverlayView;->mGridPoints:[F
    return-void
.end method

.method public setCropGridStrokeWidth(I)V
  .registers 3
  .line 1
    iget-object v0, p0, Lcom/yalantis/ucrop/view/OverlayView;->mCropGridPaint:Landroid/graphics/Paint;
    int-to-float p1, p1
    invoke-virtual { v0, p1 }, Landroid/graphics/Paint;->setStrokeWidth(F)V
    return-void
.end method

.method public setDimmedColor(I)V
  .registers 2
  .line 1
    iput p1, p0, Lcom/yalantis/ucrop/view/OverlayView;->mDimmedColor:I
    return-void
.end method

.method public setFreestyleCropEnabled(Z)V
  .registers 2
  .line 1
    iput-boolean p1, p0, Lcom/yalantis/ucrop/view/OverlayView;->mIsFreestyleCropEnabled:Z
    return-void
.end method

.method public setOverlayViewChangeListener(Lcom/yalantis/ucrop/callback/OverlayViewChangeListener;)V
  .registers 2
  .line 1
    iput-object p1, p0, Lcom/yalantis/ucrop/view/OverlayView;->mCallback:Lcom/yalantis/ucrop/callback/OverlayViewChangeListener;
    return-void
.end method

.method public setShowCropFrame(Z)V
  .registers 2
  .line 1
    iput-boolean p1, p0, Lcom/yalantis/ucrop/view/OverlayView;->mShowCropFrame:Z
    return-void
.end method

.method public setShowCropGrid(Z)V
  .registers 2
  .line 1
    iput-boolean p1, p0, Lcom/yalantis/ucrop/view/OverlayView;->mShowCropGrid:Z
    return-void
.end method

.method public setTargetAspectRatio(F)V
  .registers 2
  .line 1
    iput p1, p0, Lcom/yalantis/ucrop/view/OverlayView;->mTargetAspectRatio:F
  .line 2
    iget p1, p0, Lcom/yalantis/ucrop/view/OverlayView;->mThisWidth:I
    if-lez p1, :L0
  .line 3
    invoke-virtual { p0 }, Lcom/yalantis/ucrop/view/OverlayView;->setupCropBounds()V
  .line 4
    invoke-virtual { p0 }, Landroid/view/View;->postInvalidate()V
    goto :L1
  :L0
    const/4 p1, 1
  .line 5
    iput-boolean p1, p0, Lcom/yalantis/ucrop/view/OverlayView;->mShouldSetupCropBounds:Z
  :L1
    return-void
.end method

.method public setupCropBounds()V
  .registers 8
  .line 1
    iget v0, p0, Lcom/yalantis/ucrop/view/OverlayView;->mThisWidth:I
    int-to-float v1, v0
    iget v2, p0, Lcom/yalantis/ucrop/view/OverlayView;->mTargetAspectRatio:F
    div-float/2addr v1, v2
    float-to-int v1, v1
  .line 2
    iget v3, p0, Lcom/yalantis/ucrop/view/OverlayView;->mThisHeight:I
    if-le v1, v3, :L0
    int-to-float v1, v3
    mul-float v1, v1, v2
    float-to-int v1, v1
    sub-int/2addr v0, v1
  .line 3
    div-int/lit8 v0, v0, 2
  .line 4
    iget-object v2, p0, Lcom/yalantis/ucrop/view/OverlayView;->mCropViewRect:Landroid/graphics/RectF;
    invoke-virtual { p0 }, Landroid/view/View;->getPaddingLeft()I
    move-result v3
    add-int/2addr v3, v0
    int-to-float v3, v3
    invoke-virtual { p0 }, Landroid/view/View;->getPaddingTop()I
    move-result v4
    int-to-float v4, v4
  .line 5
    invoke-virtual { p0 }, Landroid/view/View;->getPaddingLeft()I
    move-result v5
    add-int/2addr v5, v1
    add-int/2addr v5, v0
    int-to-float v0, v5
    invoke-virtual { p0 }, Landroid/view/View;->getPaddingTop()I
    move-result v1
    iget v5, p0, Lcom/yalantis/ucrop/view/OverlayView;->mThisHeight:I
    add-int/2addr v1, v5
    int-to-float v1, v1
  .line 6
    invoke-virtual { v2, v3, v4, v0, v1 }, Landroid/graphics/RectF;->set(FFFF)V
    goto :L1
  :L0
    sub-int/2addr v3, v1
  .line 7
    div-int/lit8 v3, v3, 2
  .line 8
    iget-object v0, p0, Lcom/yalantis/ucrop/view/OverlayView;->mCropViewRect:Landroid/graphics/RectF;
    invoke-virtual { p0 }, Landroid/view/View;->getPaddingLeft()I
    move-result v2
    int-to-float v2, v2
    invoke-virtual { p0 }, Landroid/view/View;->getPaddingTop()I
    move-result v4
    add-int/2addr v4, v3
    int-to-float v4, v4
  .line 9
    invoke-virtual { p0 }, Landroid/view/View;->getPaddingLeft()I
    move-result v5
    iget v6, p0, Lcom/yalantis/ucrop/view/OverlayView;->mThisWidth:I
    add-int/2addr v5, v6
    int-to-float v5, v5
    invoke-virtual { p0 }, Landroid/view/View;->getPaddingTop()I
    move-result v6
    add-int/2addr v6, v1
    add-int/2addr v6, v3
    int-to-float v1, v6
  .line 10
    invoke-virtual { v0, v2, v4, v5, v1 }, Landroid/graphics/RectF;->set(FFFF)V
  :L1
  .line 11
    iget-object v0, p0, Lcom/yalantis/ucrop/view/OverlayView;->mCallback:Lcom/yalantis/ucrop/callback/OverlayViewChangeListener;
    if-eqz v0, :L2
  .line 12
    iget-object v1, p0, Lcom/yalantis/ucrop/view/OverlayView;->mCropViewRect:Landroid/graphics/RectF;
    invoke-interface { v0, v1 }, Lcom/yalantis/ucrop/callback/OverlayViewChangeListener;->onCropRectUpdated(Landroid/graphics/RectF;)V
  :L2
  .line 13
    invoke-direct { p0 }, Lcom/yalantis/ucrop/view/OverlayView;->updateGridPoints()V
    return-void
.end method
