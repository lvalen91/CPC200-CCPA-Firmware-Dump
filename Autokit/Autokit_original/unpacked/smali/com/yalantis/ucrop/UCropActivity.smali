.class public Lcom/yalantis/ucrop/UCropActivity;
.super Landroidx/appcompat/app/d;
.source "SourceFile"

.annotation system Ldalvik/annotation/MemberClasses;
  value = {
    Lcom/yalantis/ucrop/UCropActivity$GestureTypes;
  }
.end annotation

.field public final static ALL:I = 3

.field public final static DEFAULT_COMPRESS_FORMAT:Landroid/graphics/Bitmap$CompressFormat;

.field public final static DEFAULT_COMPRESS_QUALITY:I = 90

.field public final static NONE:I = 0

.field public final static ROTATE:I = 2

.field private final static ROTATE_WIDGET_SENSITIVITY_COEFFICIENT:I = 42

.field public final static SCALE:I = 1

.field private final static SCALE_WIDGET_SENSITIVITY_COEFFICIENT:I = 15000

.field private final static TABS_COUNT:I = 3

.field private final static TAG:Ljava/lang/String; = "UCropActivity"

.field private mActiveWidgetColor:I

.field private mAllowedGestures:[I

.field private mBlockingView:Landroid/view/View;

.field private mCompressFormat:Landroid/graphics/Bitmap$CompressFormat;

.field private mCompressQuality:I

.field private mCropAspectRatioViews:Ljava/util/List;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "Ljava/util/List<",
      "Landroid/view/ViewGroup;",
      ">;"
    }
  .end annotation
.end field

.field private mGestureCropImageView:Lcom/yalantis/ucrop/view/GestureCropImageView;

.field private mImageListener:Lcom/yalantis/ucrop/view/TransformImageView$TransformImageListener;

.field private mLayoutAspectRatio:Landroid/view/ViewGroup;

.field private mLayoutRotate:Landroid/view/ViewGroup;

.field private mLayoutScale:Landroid/view/ViewGroup;

.field private mLogoColor:I

.field private mOverlayView:Lcom/yalantis/ucrop/view/OverlayView;

.field private mShowBottomControls:Z

.field private mShowLoader:Z

.field private final mStateClickListener:Landroid/view/View$OnClickListener;

.field private mStatusBarColor:I

.field private mTextViewRotateAngle:Landroid/widget/TextView;

.field private mTextViewScalePercent:Landroid/widget/TextView;

.field private mToolbarColor:I

.field private mToolbarTitle:Ljava/lang/String;

.field private mToolbarWidgetColor:I

.field private mUCropView:Lcom/yalantis/ucrop/view/UCropView;

.field private mWrapperStateAspectRatio:Landroid/view/ViewGroup;

.field private mWrapperStateRotate:Landroid/view/ViewGroup;

.field private mWrapperStateScale:Landroid/view/ViewGroup;

.method static constructor <clinit>()V
  .registers 3
  .line 1
    const v0, 2398
    invoke-static { v0 }, Lcom/stub/StubApp;->interface11(I)V
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;
    sput-object v0, Lcom/yalantis/ucrop/UCropActivity;->DEFAULT_COMPRESS_FORMAT:Landroid/graphics/Bitmap$CompressFormat;
    return-void
.end method

.method public constructor <init>()V
  .registers 2
  .line 1
    invoke-direct { p0 }, Landroidx/appcompat/app/d;-><init>()V
    const/4 v0, 1
  .line 2
    iput-boolean v0, p0, Lcom/yalantis/ucrop/UCropActivity;->mShowLoader:Z
  .line 3
    new-instance v0, Ljava/util/ArrayList;
    invoke-direct { v0 }, Ljava/util/ArrayList;-><init>()V
    iput-object v0, p0, Lcom/yalantis/ucrop/UCropActivity;->mCropAspectRatioViews:Ljava/util/List;
  .line 4
    sget-object v0, Lcom/yalantis/ucrop/UCropActivity;->DEFAULT_COMPRESS_FORMAT:Landroid/graphics/Bitmap$CompressFormat;
    iput-object v0, p0, Lcom/yalantis/ucrop/UCropActivity;->mCompressFormat:Landroid/graphics/Bitmap$CompressFormat;
    const/16 v0, 90
  .line 5
    iput v0, p0, Lcom/yalantis/ucrop/UCropActivity;->mCompressQuality:I
    const/4 v0, 3
    new-array v0, v0, [I
  .line 6
    fill-array-data v0, :L0
    iput-object v0, p0, Lcom/yalantis/ucrop/UCropActivity;->mAllowedGestures:[I
  .line 7
    new-instance v0, Lcom/yalantis/ucrop/UCropActivity$1;
    invoke-direct { v0, p0 }, Lcom/yalantis/ucrop/UCropActivity$1;-><init>(Lcom/yalantis/ucrop/UCropActivity;)V
    iput-object v0, p0, Lcom/yalantis/ucrop/UCropActivity;->mImageListener:Lcom/yalantis/ucrop/view/TransformImageView$TransformImageListener;
  .line 8
    new-instance v0, Lcom/yalantis/ucrop/UCropActivity$7;
    invoke-direct { v0, p0 }, Lcom/yalantis/ucrop/UCropActivity$7;-><init>(Lcom/yalantis/ucrop/UCropActivity;)V
    iput-object v0, p0, Lcom/yalantis/ucrop/UCropActivity;->mStateClickListener:Landroid/view/View$OnClickListener;
    return-void
  :L0
  .array-data 4
    1t 0t 0t 0t
    2t 0t 0t 0t
    3t 0t 0t 0t
  .end array-data
.end method

.method static synthetic access$000(Lcom/yalantis/ucrop/UCropActivity;F)V
  .registers 2
  .line 1
    invoke-direct { p0, p1 }, Lcom/yalantis/ucrop/UCropActivity;->setAngleText(F)V
    return-void
.end method

.method static synthetic access$100(Lcom/yalantis/ucrop/UCropActivity;F)V
  .registers 2
  .line 1
    invoke-direct { p0, p1 }, Lcom/yalantis/ucrop/UCropActivity;->setScaleText(F)V
    return-void
.end method

.method static synthetic access$200(Lcom/yalantis/ucrop/UCropActivity;)Lcom/yalantis/ucrop/view/UCropView;
  .registers 1
  .line 1
    iget-object p0, p0, Lcom/yalantis/ucrop/UCropActivity;->mUCropView:Lcom/yalantis/ucrop/view/UCropView;
    return-object p0
.end method

.method static synthetic access$300(Lcom/yalantis/ucrop/UCropActivity;)Landroid/view/View;
  .registers 1
  .line 1
    iget-object p0, p0, Lcom/yalantis/ucrop/UCropActivity;->mBlockingView:Landroid/view/View;
    return-object p0
.end method

.method static synthetic access$402(Lcom/yalantis/ucrop/UCropActivity;Z)Z
  .registers 2
  .line 1
    iput-boolean p1, p0, Lcom/yalantis/ucrop/UCropActivity;->mShowLoader:Z
    return p1
.end method

.method static synthetic access$500(Lcom/yalantis/ucrop/UCropActivity;)Lcom/yalantis/ucrop/view/GestureCropImageView;
  .registers 1
  .line 1
    iget-object p0, p0, Lcom/yalantis/ucrop/UCropActivity;->mGestureCropImageView:Lcom/yalantis/ucrop/view/GestureCropImageView;
    return-object p0
.end method

.method static synthetic access$600(Lcom/yalantis/ucrop/UCropActivity;)Ljava/util/List;
  .registers 1
  .line 1
    iget-object p0, p0, Lcom/yalantis/ucrop/UCropActivity;->mCropAspectRatioViews:Ljava/util/List;
    return-object p0
.end method

.method static synthetic access$700(Lcom/yalantis/ucrop/UCropActivity;)V
  .registers 1
  .line 1
    invoke-direct { p0 }, Lcom/yalantis/ucrop/UCropActivity;->resetRotation()V
    return-void
.end method

.method static synthetic access$800(Lcom/yalantis/ucrop/UCropActivity;I)V
  .registers 2
  .line 1
    invoke-direct { p0, p1 }, Lcom/yalantis/ucrop/UCropActivity;->rotateByAngle(I)V
    return-void
.end method

.method static synthetic access$900(Lcom/yalantis/ucrop/UCropActivity;I)V
  .registers 2
  .line 1
    invoke-direct { p0, p1 }, Lcom/yalantis/ucrop/UCropActivity;->setWidgetState(I)V
    return-void
.end method

.method private addBlockingView()V
  .registers 4
  .line 1
    iget-object v0, p0, Lcom/yalantis/ucrop/UCropActivity;->mBlockingView:Landroid/view/View;
    if-nez v0, :L0
  .line 2
    new-instance v0, Landroid/view/View;
    invoke-direct { v0, p0 }, Landroid/view/View;-><init>(Landroid/content/Context;)V
    iput-object v0, p0, Lcom/yalantis/ucrop/UCropActivity;->mBlockingView:Landroid/view/View;
  .line 3
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v1, -1
    invoke-direct { v0, v1, v1 }, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V
    const/4 v1, 3
  .line 4
    sget v2, Lcom/yalantis/ucrop/R$id;->toolbar:I
    invoke-virtual { v0, v1, v2 }, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V
  .line 5
    iget-object v1, p0, Lcom/yalantis/ucrop/UCropActivity;->mBlockingView:Landroid/view/View;
    invoke-virtual { v1, v0 }, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
  .line 6
    iget-object v0, p0, Lcom/yalantis/ucrop/UCropActivity;->mBlockingView:Landroid/view/View;
    const/4 v1, 1
    invoke-virtual { v0, v1 }, Landroid/view/View;->setClickable(Z)V
  :L0
  .line 7
    sget v0, Lcom/yalantis/ucrop/R$id;->ucrop_photobox:I
    invoke-virtual { p0, v0 }, Landroidx/appcompat/app/d;->findViewById(I)Landroid/view/View;
    move-result-object v0
    check-cast v0, Landroid/widget/RelativeLayout;
    iget-object v1, p0, Lcom/yalantis/ucrop/UCropActivity;->mBlockingView:Landroid/view/View;
    invoke-virtual { v0, v1 }, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V
    return-void
.end method

.method private initiateRootViews()V
  .registers 4
  .line 1
    sget v0, Lcom/yalantis/ucrop/R$id;->ucrop:I
    invoke-virtual { p0, v0 }, Landroidx/appcompat/app/d;->findViewById(I)Landroid/view/View;
    move-result-object v0
    check-cast v0, Lcom/yalantis/ucrop/view/UCropView;
    iput-object v0, p0, Lcom/yalantis/ucrop/UCropActivity;->mUCropView:Lcom/yalantis/ucrop/view/UCropView;
  .line 2
    invoke-virtual { v0 }, Lcom/yalantis/ucrop/view/UCropView;->getCropImageView()Lcom/yalantis/ucrop/view/GestureCropImageView;
    move-result-object v0
    iput-object v0, p0, Lcom/yalantis/ucrop/UCropActivity;->mGestureCropImageView:Lcom/yalantis/ucrop/view/GestureCropImageView;
  .line 3
    iget-object v0, p0, Lcom/yalantis/ucrop/UCropActivity;->mUCropView:Lcom/yalantis/ucrop/view/UCropView;
    invoke-virtual { v0 }, Lcom/yalantis/ucrop/view/UCropView;->getOverlayView()Lcom/yalantis/ucrop/view/OverlayView;
    move-result-object v0
    iput-object v0, p0, Lcom/yalantis/ucrop/UCropActivity;->mOverlayView:Lcom/yalantis/ucrop/view/OverlayView;
  .line 4
    iget-object v0, p0, Lcom/yalantis/ucrop/UCropActivity;->mGestureCropImageView:Lcom/yalantis/ucrop/view/GestureCropImageView;
    iget-object v1, p0, Lcom/yalantis/ucrop/UCropActivity;->mImageListener:Lcom/yalantis/ucrop/view/TransformImageView$TransformImageListener;
    invoke-virtual { v0, v1 }, Lcom/yalantis/ucrop/view/TransformImageView;->setTransformImageListener(Lcom/yalantis/ucrop/view/TransformImageView$TransformImageListener;)V
  .line 5
    sget v0, Lcom/yalantis/ucrop/R$id;->image_view_logo:I
    invoke-virtual { p0, v0 }, Landroidx/appcompat/app/d;->findViewById(I)Landroid/view/View;
    move-result-object v0
    check-cast v0, Landroid/widget/ImageView;
    iget v1, p0, Lcom/yalantis/ucrop/UCropActivity;->mLogoColor:I
    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;
    invoke-virtual { v0, v1, v2 }, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V
    return-void
.end method

.method private processOptions(Landroid/content/Intent;)V
  .registers 9
    const-string v0, "com.yalantis.ucrop.CompressionFormatName"
  .line 1
    invoke-virtual { p1, v0 }, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v0
  .line 2
    invoke-static { v0 }, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    move-result v1
    if-nez v1, :L0
  .line 3
    invoke-static { v0 }, Landroid/graphics/Bitmap$CompressFormat;->valueOf(Ljava/lang/String;)Landroid/graphics/Bitmap$CompressFormat;
    move-result-object v0
    goto :L1
  :L0
    const/4 v0, 0
  :L1
    if-nez v0, :L2
  .line 4
    sget-object v0, Lcom/yalantis/ucrop/UCropActivity;->DEFAULT_COMPRESS_FORMAT:Landroid/graphics/Bitmap$CompressFormat;
  :L2
    iput-object v0, p0, Lcom/yalantis/ucrop/UCropActivity;->mCompressFormat:Landroid/graphics/Bitmap$CompressFormat;
    const/16 v0, 90
    const-string v1, "com.yalantis.ucrop.CompressionQuality"
  .line 5
    invoke-virtual { p1, v1, v0 }, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I
    move-result v0
    iput v0, p0, Lcom/yalantis/ucrop/UCropActivity;->mCompressQuality:I
    const-string v0, "com.yalantis.ucrop.AllowedGestures"
  .line 6
    invoke-virtual { p1, v0 }, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I
    move-result-object v0
    if-eqz v0, :L3
  .line 7
    array-length v1, v0
    const/4 v2, 3
    if-ne v1, v2, :L3
  .line 8
    iput-object v0, p0, Lcom/yalantis/ucrop/UCropActivity;->mAllowedGestures:[I
  :L3
  .line 9
    iget-object v0, p0, Lcom/yalantis/ucrop/UCropActivity;->mGestureCropImageView:Lcom/yalantis/ucrop/view/GestureCropImageView;
    const-string v1, "com.yalantis.ucrop.MaxBitmapSize"
    const/4 v2, 0
    invoke-virtual { p1, v1, v2 }, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I
    move-result v1
    invoke-virtual { v0, v1 }, Lcom/yalantis/ucrop/view/TransformImageView;->setMaxBitmapSize(I)V
  .line 10
    iget-object v0, p0, Lcom/yalantis/ucrop/UCropActivity;->mGestureCropImageView:Lcom/yalantis/ucrop/view/GestureCropImageView;
    const/high16 v1, 16672
    const-string v3, "com.yalantis.ucrop.MaxScaleMultiplier"
    invoke-virtual { p1, v3, v1 }, Landroid/content/Intent;->getFloatExtra(Ljava/lang/String;F)F
    move-result v1
    invoke-virtual { v0, v1 }, Lcom/yalantis/ucrop/view/CropImageView;->setMaxScaleMultiplier(F)V
  .line 11
    iget-object v0, p0, Lcom/yalantis/ucrop/UCropActivity;->mGestureCropImageView:Lcom/yalantis/ucrop/view/GestureCropImageView;
    const/16 v1, 500
    const-string v3, "com.yalantis.ucrop.ImageToCropBoundsAnimDuration"
    invoke-virtual { p1, v3, v1 }, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I
    move-result v1
    int-to-long v3, v1
    invoke-virtual { v0, v3, v4 }, Lcom/yalantis/ucrop/view/CropImageView;->setImageToWrapCropBoundsAnimDuration(J)V
  .line 12
    iget-object v0, p0, Lcom/yalantis/ucrop/UCropActivity;->mOverlayView:Lcom/yalantis/ucrop/view/OverlayView;
    const-string v1, "com.yalantis.ucrop.FreeStyleCrop"
    invoke-virtual { p1, v1, v2 }, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z
    move-result v1
    invoke-virtual { v0, v1 }, Lcom/yalantis/ucrop/view/OverlayView;->setFreestyleCropEnabled(Z)V
  .line 13
    iget-object v0, p0, Lcom/yalantis/ucrop/UCropActivity;->mOverlayView:Lcom/yalantis/ucrop/view/OverlayView;
    invoke-virtual { p0 }, Landroidx/appcompat/app/d;->getResources()Landroid/content/res/Resources;
    move-result-object v1
    sget v3, Lcom/yalantis/ucrop/R$color;->ucrop_color_default_dimmed:I
    invoke-virtual { v1, v3 }, Landroid/content/res/Resources;->getColor(I)I
    move-result v1
    const-string v3, "com.yalantis.ucrop.DimmedLayerColor"
    invoke-virtual { p1, v3, v1 }, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I
    move-result v1
    invoke-virtual { v0, v1 }, Lcom/yalantis/ucrop/view/OverlayView;->setDimmedColor(I)V
  .line 14
    iget-object v0, p0, Lcom/yalantis/ucrop/UCropActivity;->mOverlayView:Lcom/yalantis/ucrop/view/OverlayView;
    const-string v1, "com.yalantis.ucrop.CircleDimmedLayer"
    invoke-virtual { p1, v1, v2 }, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z
    move-result v1
    invoke-virtual { v0, v1 }, Lcom/yalantis/ucrop/view/OverlayView;->setCircleDimmedLayer(Z)V
  .line 15
    iget-object v0, p0, Lcom/yalantis/ucrop/UCropActivity;->mOverlayView:Lcom/yalantis/ucrop/view/OverlayView;
    const-string v1, "com.yalantis.ucrop.ShowCropFrame"
    const/4 v3, 1
    invoke-virtual { p1, v1, v3 }, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z
    move-result v1
    invoke-virtual { v0, v1 }, Lcom/yalantis/ucrop/view/OverlayView;->setShowCropFrame(Z)V
  .line 16
    iget-object v0, p0, Lcom/yalantis/ucrop/UCropActivity;->mOverlayView:Lcom/yalantis/ucrop/view/OverlayView;
    invoke-virtual { p0 }, Landroidx/appcompat/app/d;->getResources()Landroid/content/res/Resources;
    move-result-object v1
    sget v4, Lcom/yalantis/ucrop/R$color;->ucrop_color_default_crop_frame:I
    invoke-virtual { v1, v4 }, Landroid/content/res/Resources;->getColor(I)I
    move-result v1
    const-string v4, "com.yalantis.ucrop.CropFrameColor"
    invoke-virtual { p1, v4, v1 }, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I
    move-result v1
    invoke-virtual { v0, v1 }, Lcom/yalantis/ucrop/view/OverlayView;->setCropFrameColor(I)V
  .line 17
    iget-object v0, p0, Lcom/yalantis/ucrop/UCropActivity;->mOverlayView:Lcom/yalantis/ucrop/view/OverlayView;
    invoke-virtual { p0 }, Landroidx/appcompat/app/d;->getResources()Landroid/content/res/Resources;
    move-result-object v1
    sget v4, Lcom/yalantis/ucrop/R$dimen;->ucrop_default_crop_frame_stoke_width:I
    invoke-virtual { v1, v4 }, Landroid/content/res/Resources;->getDimensionPixelSize(I)I
    move-result v1
    const-string v4, "com.yalantis.ucrop.CropFrameStrokeWidth"
    invoke-virtual { p1, v4, v1 }, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I
    move-result v1
    invoke-virtual { v0, v1 }, Lcom/yalantis/ucrop/view/OverlayView;->setCropFrameStrokeWidth(I)V
  .line 18
    iget-object v0, p0, Lcom/yalantis/ucrop/UCropActivity;->mOverlayView:Lcom/yalantis/ucrop/view/OverlayView;
    const-string v1, "com.yalantis.ucrop.ShowCropGrid"
    invoke-virtual { p1, v1, v3 }, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z
    move-result v1
    invoke-virtual { v0, v1 }, Lcom/yalantis/ucrop/view/OverlayView;->setShowCropGrid(Z)V
  .line 19
    iget-object v0, p0, Lcom/yalantis/ucrop/UCropActivity;->mOverlayView:Lcom/yalantis/ucrop/view/OverlayView;
    const-string v1, "com.yalantis.ucrop.CropGridRowCount"
    const/4 v3, 2
    invoke-virtual { p1, v1, v3 }, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I
    move-result v1
    invoke-virtual { v0, v1 }, Lcom/yalantis/ucrop/view/OverlayView;->setCropGridRowCount(I)V
  .line 20
    iget-object v0, p0, Lcom/yalantis/ucrop/UCropActivity;->mOverlayView:Lcom/yalantis/ucrop/view/OverlayView;
    const-string v1, "com.yalantis.ucrop.CropGridColumnCount"
    invoke-virtual { p1, v1, v3 }, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I
    move-result v1
    invoke-virtual { v0, v1 }, Lcom/yalantis/ucrop/view/OverlayView;->setCropGridColumnCount(I)V
  .line 21
    iget-object v0, p0, Lcom/yalantis/ucrop/UCropActivity;->mOverlayView:Lcom/yalantis/ucrop/view/OverlayView;
    invoke-virtual { p0 }, Landroidx/appcompat/app/d;->getResources()Landroid/content/res/Resources;
    move-result-object v1
    sget v3, Lcom/yalantis/ucrop/R$color;->ucrop_color_default_crop_grid:I
    invoke-virtual { v1, v3 }, Landroid/content/res/Resources;->getColor(I)I
    move-result v1
    const-string v3, "com.yalantis.ucrop.CropGridColor"
    invoke-virtual { p1, v3, v1 }, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I
    move-result v1
    invoke-virtual { v0, v1 }, Lcom/yalantis/ucrop/view/OverlayView;->setCropGridColor(I)V
  .line 22
    iget-object v0, p0, Lcom/yalantis/ucrop/UCropActivity;->mOverlayView:Lcom/yalantis/ucrop/view/OverlayView;
    invoke-virtual { p0 }, Landroidx/appcompat/app/d;->getResources()Landroid/content/res/Resources;
    move-result-object v1
    sget v3, Lcom/yalantis/ucrop/R$dimen;->ucrop_default_crop_grid_stoke_width:I
    invoke-virtual { v1, v3 }, Landroid/content/res/Resources;->getDimensionPixelSize(I)I
    move-result v1
    const-string v3, "com.yalantis.ucrop.CropGridStrokeWidth"
    invoke-virtual { p1, v3, v1 }, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I
    move-result v1
    invoke-virtual { v0, v1 }, Lcom/yalantis/ucrop/view/OverlayView;->setCropGridStrokeWidth(I)V
    const-string v0, "com.yalantis.ucrop.AspectRatioX"
    const/4 v1, 0
  .line 23
    invoke-virtual { p1, v0, v1 }, Landroid/content/Intent;->getFloatExtra(Ljava/lang/String;F)F
    move-result v0
    const-string v3, "com.yalantis.ucrop.AspectRatioY"
  .line 24
    invoke-virtual { p1, v3, v1 }, Landroid/content/Intent;->getFloatExtra(Ljava/lang/String;F)F
    move-result v3
    const-string v4, "com.yalantis.ucrop.AspectRatioSelectedByDefault"
  .line 25
    invoke-virtual { p1, v4, v2 }, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I
    move-result v4
    const-string v5, "com.yalantis.ucrop.AspectRatioOptions"
  .line 26
    invoke-virtual { p1, v5 }, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;
    move-result-object v5
    cmpl-float v6, v0, v1
    if-lez v6, :L5
    cmpl-float v6, v3, v1
    if-lez v6, :L5
  .line 27
    iget-object v1, p0, Lcom/yalantis/ucrop/UCropActivity;->mWrapperStateAspectRatio:Landroid/view/ViewGroup;
    if-eqz v1, :L4
    const/16 v4, 8
  .line 28
    invoke-virtual { v1, v4 }, Landroid/view/ViewGroup;->setVisibility(I)V
  :L4
  .line 29
    iget-object v1, p0, Lcom/yalantis/ucrop/UCropActivity;->mGestureCropImageView:Lcom/yalantis/ucrop/view/GestureCropImageView;
    div-float/2addr v0, v3
    invoke-virtual { v1, v0 }, Lcom/yalantis/ucrop/view/CropImageView;->setTargetAspectRatio(F)V
    goto :L7
  :L5
    if-eqz v5, :L6
  .line 30
    invoke-virtual { v5 }, Ljava/util/ArrayList;->size()I
    move-result v0
    if-ge v4, v0, :L6
  .line 31
    iget-object v0, p0, Lcom/yalantis/ucrop/UCropActivity;->mGestureCropImageView:Lcom/yalantis/ucrop/view/GestureCropImageView;
    invoke-virtual { v5, v4 }, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
    move-result-object v1
    check-cast v1, Lcom/yalantis/ucrop/model/AspectRatio;
    invoke-virtual { v1 }, Lcom/yalantis/ucrop/model/AspectRatio;->getAspectRatioX()F
    move-result v1
  .line 32
    invoke-virtual { v5, v4 }, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
    move-result-object v3
    check-cast v3, Lcom/yalantis/ucrop/model/AspectRatio;
    invoke-virtual { v3 }, Lcom/yalantis/ucrop/model/AspectRatio;->getAspectRatioY()F
    move-result v3
    div-float/2addr v1, v3
  .line 33
    invoke-virtual { v0, v1 }, Lcom/yalantis/ucrop/view/CropImageView;->setTargetAspectRatio(F)V
    goto :L7
  :L6
  .line 34
    iget-object v0, p0, Lcom/yalantis/ucrop/UCropActivity;->mGestureCropImageView:Lcom/yalantis/ucrop/view/GestureCropImageView;
    invoke-virtual { v0, v1 }, Lcom/yalantis/ucrop/view/CropImageView;->setTargetAspectRatio(F)V
  :L7
    const-string v0, "com.yalantis.ucrop.MaxSizeX"
  .line 35
    invoke-virtual { p1, v0, v2 }, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I
    move-result v0
    const-string v1, "com.yalantis.ucrop.MaxSizeY"
  .line 36
    invoke-virtual { p1, v1, v2 }, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I
    move-result p1
    if-lez v0, :L8
    if-lez p1, :L8
  .line 37
    iget-object v1, p0, Lcom/yalantis/ucrop/UCropActivity;->mGestureCropImageView:Lcom/yalantis/ucrop/view/GestureCropImageView;
    invoke-virtual { v1, v0 }, Lcom/yalantis/ucrop/view/CropImageView;->setMaxResultImageSizeX(I)V
  .line 38
    iget-object v0, p0, Lcom/yalantis/ucrop/UCropActivity;->mGestureCropImageView:Lcom/yalantis/ucrop/view/GestureCropImageView;
    invoke-virtual { v0, p1 }, Lcom/yalantis/ucrop/view/CropImageView;->setMaxResultImageSizeY(I)V
  :L8
    return-void
.end method

.method private resetRotation()V
  .registers 3
  .line 1
    iget-object v0, p0, Lcom/yalantis/ucrop/UCropActivity;->mGestureCropImageView:Lcom/yalantis/ucrop/view/GestureCropImageView;
    invoke-virtual { v0 }, Lcom/yalantis/ucrop/view/TransformImageView;->getCurrentAngle()F
    move-result v1
    neg-float v1, v1
    invoke-virtual { v0, v1 }, Lcom/yalantis/ucrop/view/CropImageView;->postRotate(F)V
  .line 2
    iget-object v0, p0, Lcom/yalantis/ucrop/UCropActivity;->mGestureCropImageView:Lcom/yalantis/ucrop/view/GestureCropImageView;
    invoke-virtual { v0 }, Lcom/yalantis/ucrop/view/CropImageView;->setImageToWrapCropBounds()V
    return-void
.end method

.method private rotateByAngle(I)V
  .registers 3
  .line 1
    iget-object v0, p0, Lcom/yalantis/ucrop/UCropActivity;->mGestureCropImageView:Lcom/yalantis/ucrop/view/GestureCropImageView;
    int-to-float p1, p1
    invoke-virtual { v0, p1 }, Lcom/yalantis/ucrop/view/CropImageView;->postRotate(F)V
  .line 2
    iget-object p1, p0, Lcom/yalantis/ucrop/UCropActivity;->mGestureCropImageView:Lcom/yalantis/ucrop/view/GestureCropImageView;
    invoke-virtual { p1 }, Lcom/yalantis/ucrop/view/CropImageView;->setImageToWrapCropBounds()V
    return-void
.end method

.method private setAllowedGestures(I)V
  .registers 8
  .line 1
    iget-object v0, p0, Lcom/yalantis/ucrop/UCropActivity;->mGestureCropImageView:Lcom/yalantis/ucrop/view/GestureCropImageView;
    iget-object v1, p0, Lcom/yalantis/ucrop/UCropActivity;->mAllowedGestures:[I
    aget v2, v1, p1
    const/4 v3, 0
    const/4 v4, 3
    const/4 v5, 1
    if-eq v2, v4, :L1
    aget v1, v1, p1
    if-ne v1, v5, :L0
    goto :L1
  :L0
    const/4 v1, 0
    goto :L2
  :L1
    const/4 v1, 1
  :L2
    invoke-virtual { v0, v1 }, Lcom/yalantis/ucrop/view/GestureCropImageView;->setScaleEnabled(Z)V
  .line 2
    iget-object v0, p0, Lcom/yalantis/ucrop/UCropActivity;->mGestureCropImageView:Lcom/yalantis/ucrop/view/GestureCropImageView;
    iget-object v1, p0, Lcom/yalantis/ucrop/UCropActivity;->mAllowedGestures:[I
    aget v2, v1, p1
    if-eq v2, v4, :L3
    aget p1, v1, p1
    const/4 v1, 2
    if-ne p1, v1, :L4
  :L3
    const/4 v3, 1
  :L4
    invoke-virtual { v0, v3 }, Lcom/yalantis/ucrop/view/GestureCropImageView;->setRotateEnabled(Z)V
    return-void
.end method

.method private setAngleText(F)V
  .registers 6
  .line 1
    iget-object v0, p0, Lcom/yalantis/ucrop/UCropActivity;->mTextViewRotateAngle:Landroid/widget/TextView;
    if-eqz v0, :L0
  .line 2
    invoke-static { }, Ljava/util/Locale;->getDefault()Ljava/util/Locale;
    move-result-object v1
    const/4 v2, 1
    new-array v2, v2, [Ljava/lang/Object;
    const/4 v3, 0
    invoke-static { p1 }, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;
    move-result-object p1
    aput-object p1, v2, v3
    const-string p1, "%.1f\u00b0"
    invoke-static { v1, p1, v2 }, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    move-result-object p1
    invoke-virtual { v0, p1 }, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
  :L0
    return-void
.end method

.method private setImageData(Landroid/content/Intent;)V
  .catch Ljava/lang/Exception; { :L0 .. :L1 } :L2
  .registers 4
    const-string v0, "com.yalantis.ucrop.InputUri"
  .line 1
    invoke-virtual { p1, v0 }, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;
    move-result-object v0
    check-cast v0, Landroid/net/Uri;
    const-string v1, "com.yalantis.ucrop.OutputUri"
  .line 2
    invoke-virtual { p1, v1 }, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;
    move-result-object v1
    check-cast v1, Landroid/net/Uri;
  .line 3
    invoke-direct { p0, p1 }, Lcom/yalantis/ucrop/UCropActivity;->processOptions(Landroid/content/Intent;)V
    if-eqz v0, :L3
    if-eqz v1, :L3
  :L0
  .line 4
    iget-object p1, p0, Lcom/yalantis/ucrop/UCropActivity;->mGestureCropImageView:Lcom/yalantis/ucrop/view/GestureCropImageView;
    invoke-virtual { p1, v0, v1 }, Lcom/yalantis/ucrop/view/TransformImageView;->setImageUri(Landroid/net/Uri;Landroid/net/Uri;)V
  :L1
    goto :L4
  :L2
    move-exception p1
  .line 5
    invoke-virtual { p0, p1 }, Lcom/yalantis/ucrop/UCropActivity;->setResultError(Ljava/lang/Throwable;)V
  .line 6
    invoke-virtual { p0 }, Landroid/app/Activity;->finish()V
    goto :L4
  :L3
  .line 7
    new-instance p1, Ljava/lang/NullPointerException;
    sget v0, Lcom/yalantis/ucrop/R$string;->ucrop_error_input_data_is_absent:I
    invoke-virtual { p0, v0 }, Landroid/app/Activity;->getString(I)Ljava/lang/String;
    move-result-object v0
    invoke-direct { p1, v0 }, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V
    invoke-virtual { p0, p1 }, Lcom/yalantis/ucrop/UCropActivity;->setResultError(Ljava/lang/Throwable;)V
  .line 8
    invoke-virtual { p0 }, Landroid/app/Activity;->finish()V
  :L4
    return-void
.end method

.method private setInitialState()V
  .registers 2
  .line 1
    iget-boolean v0, p0, Lcom/yalantis/ucrop/UCropActivity;->mShowBottomControls:Z
    if-eqz v0, :L1
  .line 2
    iget-object v0, p0, Lcom/yalantis/ucrop/UCropActivity;->mWrapperStateAspectRatio:Landroid/view/ViewGroup;
    invoke-virtual { v0 }, Landroid/view/ViewGroup;->getVisibility()I
    move-result v0
    if-nez v0, :L0
  .line 3
    sget v0, Lcom/yalantis/ucrop/R$id;->state_aspect_ratio:I
    invoke-direct { p0, v0 }, Lcom/yalantis/ucrop/UCropActivity;->setWidgetState(I)V
    goto :L2
  :L0
  .line 4
    sget v0, Lcom/yalantis/ucrop/R$id;->state_scale:I
    invoke-direct { p0, v0 }, Lcom/yalantis/ucrop/UCropActivity;->setWidgetState(I)V
    goto :L2
  :L1
    const/4 v0, 0
  .line 5
    invoke-direct { p0, v0 }, Lcom/yalantis/ucrop/UCropActivity;->setAllowedGestures(I)V
  :L2
    return-void
.end method

.method private setScaleText(F)V
  .registers 7
  .line 1
    iget-object v0, p0, Lcom/yalantis/ucrop/UCropActivity;->mTextViewScalePercent:Landroid/widget/TextView;
    if-eqz v0, :L0
  .line 2
    invoke-static { }, Ljava/util/Locale;->getDefault()Ljava/util/Locale;
    move-result-object v1
    const/4 v2, 1
    new-array v2, v2, [Ljava/lang/Object;
    const/4 v3, 0
    const/high16 v4, 17096
    mul-float p1, p1, v4
    float-to-int p1, p1
    invoke-static { p1 }, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object p1
    aput-object p1, v2, v3
    const-string p1, "%d%%"
    invoke-static { v1, p1, v2 }, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    move-result-object p1
    invoke-virtual { v0, p1 }, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
  :L0
    return-void
.end method

.method private setStatusBarColor(I)V
  .annotation build Landroid/annotation/TargetApi;
    value = 21
  .end annotation
  .registers 4
  .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v1, 21
    if-lt v0, v1, :L0
  .line 2
    invoke-virtual { p0 }, Landroid/app/Activity;->getWindow()Landroid/view/Window;
    move-result-object v0
    if-eqz v0, :L0
    const/high16 v1, -32768
  .line 3
    invoke-virtual { v0, v1 }, Landroid/view/Window;->addFlags(I)V
  .line 4
    invoke-virtual { v0, p1 }, Landroid/view/Window;->setStatusBarColor(I)V
  :L0
    return-void
.end method

.method private setWidgetState(I)V
  .registers 7
  .line 1
    iget-boolean v0, p0, Lcom/yalantis/ucrop/UCropActivity;->mShowBottomControls:Z
    if-nez v0, :L0
    return-void
  :L0
  .line 2
    iget-object v0, p0, Lcom/yalantis/ucrop/UCropActivity;->mWrapperStateAspectRatio:Landroid/view/ViewGroup;
    sget v1, Lcom/yalantis/ucrop/R$id;->state_aspect_ratio:I
    const/4 v2, 1
    const/4 v3, 0
    if-ne p1, v1, :L1
    const/4 v1, 1
    goto :L2
  :L1
    const/4 v1, 0
  :L2
    invoke-virtual { v0, v1 }, Landroid/view/ViewGroup;->setSelected(Z)V
  .line 3
    iget-object v0, p0, Lcom/yalantis/ucrop/UCropActivity;->mWrapperStateRotate:Landroid/view/ViewGroup;
    sget v1, Lcom/yalantis/ucrop/R$id;->state_rotate:I
    if-ne p1, v1, :L3
    const/4 v1, 1
    goto :L4
  :L3
    const/4 v1, 0
  :L4
    invoke-virtual { v0, v1 }, Landroid/view/ViewGroup;->setSelected(Z)V
  .line 4
    iget-object v0, p0, Lcom/yalantis/ucrop/UCropActivity;->mWrapperStateScale:Landroid/view/ViewGroup;
    sget v1, Lcom/yalantis/ucrop/R$id;->state_scale:I
    if-ne p1, v1, :L5
    const/4 v1, 1
    goto :L6
  :L5
    const/4 v1, 0
  :L6
    invoke-virtual { v0, v1 }, Landroid/view/ViewGroup;->setSelected(Z)V
  .line 5
    iget-object v0, p0, Lcom/yalantis/ucrop/UCropActivity;->mLayoutAspectRatio:Landroid/view/ViewGroup;
    sget v1, Lcom/yalantis/ucrop/R$id;->state_aspect_ratio:I
    const/16 v4, 8
    if-ne p1, v1, :L7
    const/4 v1, 0
    goto :L8
  :L7
    const/16 v1, 8
  :L8
    invoke-virtual { v0, v1 }, Landroid/view/ViewGroup;->setVisibility(I)V
  .line 6
    iget-object v0, p0, Lcom/yalantis/ucrop/UCropActivity;->mLayoutRotate:Landroid/view/ViewGroup;
    sget v1, Lcom/yalantis/ucrop/R$id;->state_rotate:I
    if-ne p1, v1, :L9
    const/4 v1, 0
    goto :L10
  :L9
    const/16 v1, 8
  :L10
    invoke-virtual { v0, v1 }, Landroid/view/ViewGroup;->setVisibility(I)V
  .line 7
    iget-object v0, p0, Lcom/yalantis/ucrop/UCropActivity;->mLayoutScale:Landroid/view/ViewGroup;
    sget v1, Lcom/yalantis/ucrop/R$id;->state_scale:I
    if-ne p1, v1, :L11
    const/4 v4, 0
  :L11
    invoke-virtual { v0, v4 }, Landroid/view/ViewGroup;->setVisibility(I)V
  .line 8
    sget v0, Lcom/yalantis/ucrop/R$id;->state_scale:I
    if-ne p1, v0, :L12
  .line 9
    invoke-direct { p0, v3 }, Lcom/yalantis/ucrop/UCropActivity;->setAllowedGestures(I)V
    goto :L14
  :L12
  .line 10
    sget v0, Lcom/yalantis/ucrop/R$id;->state_rotate:I
    if-ne p1, v0, :L13
  .line 11
    invoke-direct { p0, v2 }, Lcom/yalantis/ucrop/UCropActivity;->setAllowedGestures(I)V
    goto :L14
  :L13
    const/4 p1, 2
  .line 12
    invoke-direct { p0, p1 }, Lcom/yalantis/ucrop/UCropActivity;->setAllowedGestures(I)V
  :L14
    return-void
.end method

.method private setupAppBar()V
  .registers 5
  .line 1
    iget v0, p0, Lcom/yalantis/ucrop/UCropActivity;->mStatusBarColor:I
    invoke-direct { p0, v0 }, Lcom/yalantis/ucrop/UCropActivity;->setStatusBarColor(I)V
  .line 2
    sget v0, Lcom/yalantis/ucrop/R$id;->toolbar:I
    invoke-virtual { p0, v0 }, Landroidx/appcompat/app/d;->findViewById(I)Landroid/view/View;
    move-result-object v0
    check-cast v0, Landroidx/appcompat/widget/Toolbar;
  .line 3
    iget v1, p0, Lcom/yalantis/ucrop/UCropActivity;->mToolbarColor:I
    invoke-virtual { v0, v1 }, Landroid/view/ViewGroup;->setBackgroundColor(I)V
  .line 4
    iget v1, p0, Lcom/yalantis/ucrop/UCropActivity;->mToolbarWidgetColor:I
    invoke-virtual { v0, v1 }, Landroidx/appcompat/widget/Toolbar;->setTitleTextColor(I)V
  .line 5
    sget v1, Lcom/yalantis/ucrop/R$id;->toolbar_title:I
    invoke-virtual { v0, v1 }, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;
    move-result-object v1
    check-cast v1, Landroid/widget/TextView;
  .line 6
    iget v2, p0, Lcom/yalantis/ucrop/UCropActivity;->mToolbarWidgetColor:I
    invoke-virtual { v1, v2 }, Landroid/widget/TextView;->setTextColor(I)V
  .line 7
    iget-object v2, p0, Lcom/yalantis/ucrop/UCropActivity;->mToolbarTitle:Ljava/lang/String;
    invoke-virtual { v1, v2 }, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
  .line 8
    sget v1, Lcom/yalantis/ucrop/R$drawable;->ucrop_ic_cross:I
    invoke-static { p0, v1 }, Landroidx/core/content/a;->d(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    move-result-object v1
    invoke-virtual { v1 }, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;
    move-result-object v1
  .line 9
    iget v2, p0, Lcom/yalantis/ucrop/UCropActivity;->mToolbarWidgetColor:I
    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;
    invoke-virtual { v1, v2, v3 }, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V
  .line 10
    invoke-virtual { v0, v1 }, Landroidx/appcompat/widget/Toolbar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V
  .line 11
    invoke-virtual { p0, v0 }, Landroidx/appcompat/app/d;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V
  .line 12
    invoke-virtual { p0 }, Landroidx/appcompat/app/d;->getSupportActionBar()Landroidx/appcompat/app/a;
    move-result-object v0
    if-eqz v0, :L0
    const/4 v1, 0
  .line 13
    invoke-virtual { v0, v1 }, Landroidx/appcompat/app/a;->t(Z)V
  :L0
    return-void
.end method

.method private setupAspectRatioWidget(Landroid/content/Intent;)V
  .registers 11
    const-string v0, "com.yalantis.ucrop.AspectRatioSelectedByDefault"
    const/4 v1, 0
  .line 1
    invoke-virtual { p1, v0, v1 }, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I
    move-result v0
    const-string v2, "com.yalantis.ucrop.AspectRatioOptions"
  .line 2
    invoke-virtual { p1, v2 }, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;
    move-result-object p1
    const/high16 v2, 16256
    const/4 v3, 0
    if-eqz p1, :L0
  .line 3
    invoke-virtual { p1 }, Ljava/util/ArrayList;->isEmpty()Z
    move-result v4
    if-eqz v4, :L1
  :L0
    const/4 v0, 2
  .line 4
    new-instance p1, Ljava/util/ArrayList;
    invoke-direct { p1 }, Ljava/util/ArrayList;-><init>()V
  .line 5
    new-instance v4, Lcom/yalantis/ucrop/model/AspectRatio;
    invoke-direct { v4, v3, v2, v2 }, Lcom/yalantis/ucrop/model/AspectRatio;-><init>(Ljava/lang/String;FF)V
    invoke-virtual { p1, v4 }, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
  .line 6
    new-instance v4, Lcom/yalantis/ucrop/model/AspectRatio;
    const/high16 v5, 16512
    const/high16 v6, 16448
    invoke-direct { v4, v3, v6, v5 }, Lcom/yalantis/ucrop/model/AspectRatio;-><init>(Ljava/lang/String;FF)V
    invoke-virtual { p1, v4 }, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
  .line 7
    new-instance v4, Lcom/yalantis/ucrop/model/AspectRatio;
    sget v5, Lcom/yalantis/ucrop/R$string;->ucrop_label_original:I
    invoke-virtual { p0, v5 }, Landroid/app/Activity;->getString(I)Ljava/lang/String;
    move-result-object v5
    invoke-virtual { v5 }, Ljava/lang/String;->toUpperCase()Ljava/lang/String;
    move-result-object v5
    const/4 v7, 0
    invoke-direct { v4, v5, v7, v7 }, Lcom/yalantis/ucrop/model/AspectRatio;-><init>(Ljava/lang/String;FF)V
    invoke-virtual { p1, v4 }, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
  .line 8
    new-instance v4, Lcom/yalantis/ucrop/model/AspectRatio;
    const/high16 v5, 16384
    invoke-direct { v4, v3, v6, v5 }, Lcom/yalantis/ucrop/model/AspectRatio;-><init>(Ljava/lang/String;FF)V
    invoke-virtual { p1, v4 }, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
  .line 9
    new-instance v4, Lcom/yalantis/ucrop/model/AspectRatio;
    const/high16 v5, 16768
    const/high16 v6, 16656
    invoke-direct { v4, v3, v5, v6 }, Lcom/yalantis/ucrop/model/AspectRatio;-><init>(Ljava/lang/String;FF)V
    invoke-virtual { p1, v4 }, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
  :L1
  .line 10
    sget v4, Lcom/yalantis/ucrop/R$id;->layout_aspect_ratio:I
    invoke-virtual { p0, v4 }, Landroidx/appcompat/app/d;->findViewById(I)Landroid/view/View;
    move-result-object v4
    check-cast v4, Landroid/widget/LinearLayout;
  .line 11
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;
    const/4 v6, -1
    invoke-direct { v5, v1, v6 }, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V
  .line 12
    iput v2, v5, Landroid/widget/LinearLayout$LayoutParams;->weight:F
  .line 13
    invoke-virtual { p1 }, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
    move-result-object p1
  :L2
    invoke-interface { p1 }, Ljava/util/Iterator;->hasNext()Z
    move-result v2
    if-eqz v2, :L3
    invoke-interface { p1 }, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object v2
    check-cast v2, Lcom/yalantis/ucrop/model/AspectRatio;
  .line 14
    invoke-virtual { p0 }, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;
    move-result-object v6
    sget v7, Lcom/yalantis/ucrop/R$layout;->ucrop_aspect_ratio:I
    invoke-virtual { v6, v7, v3 }, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
    move-result-object v6
    check-cast v6, Landroid/widget/FrameLayout;
  .line 15
    invoke-virtual { v6, v5 }, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
  .line 16
    invoke-virtual { v6, v1 }, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;
    move-result-object v7
    check-cast v7, Lcom/yalantis/ucrop/view/widget/AspectRatioTextView;
  .line 17
    iget v8, p0, Lcom/yalantis/ucrop/UCropActivity;->mActiveWidgetColor:I
    invoke-virtual { v7, v8 }, Lcom/yalantis/ucrop/view/widget/AspectRatioTextView;->setActiveColor(I)V
  .line 18
    invoke-virtual { v7, v2 }, Lcom/yalantis/ucrop/view/widget/AspectRatioTextView;->setAspectRatio(Lcom/yalantis/ucrop/model/AspectRatio;)V
  .line 19
    invoke-virtual { v4, v6 }, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V
  .line 20
    iget-object v2, p0, Lcom/yalantis/ucrop/UCropActivity;->mCropAspectRatioViews:Ljava/util/List;
    invoke-interface { v2, v6 }, Ljava/util/List;->add(Ljava/lang/Object;)Z
    goto :L2
  :L3
  .line 21
    iget-object p1, p0, Lcom/yalantis/ucrop/UCropActivity;->mCropAspectRatioViews:Ljava/util/List;
    invoke-interface { p1, v0 }, Ljava/util/List;->get(I)Ljava/lang/Object;
    move-result-object p1
    check-cast p1, Landroid/view/ViewGroup;
    const/4 v0, 1
    invoke-virtual { p1, v0 }, Landroid/view/ViewGroup;->setSelected(Z)V
  .line 22
    iget-object p1, p0, Lcom/yalantis/ucrop/UCropActivity;->mCropAspectRatioViews:Ljava/util/List;
    invoke-interface { p1 }, Ljava/util/List;->iterator()Ljava/util/Iterator;
    move-result-object p1
  :L4
    invoke-interface { p1 }, Ljava/util/Iterator;->hasNext()Z
    move-result v0
    if-eqz v0, :L5
    invoke-interface { p1 }, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Landroid/view/ViewGroup;
  .line 23
    new-instance v1, Lcom/yalantis/ucrop/UCropActivity$2;
    invoke-direct { v1, p0 }, Lcom/yalantis/ucrop/UCropActivity$2;-><init>(Lcom/yalantis/ucrop/UCropActivity;)V
    invoke-virtual { v0, v1 }, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    goto :L4
  :L5
    return-void
.end method

.method private setupRotateWidget()V
  .registers 3
  .line 1
    sget v0, Lcom/yalantis/ucrop/R$id;->text_view_rotate:I
    invoke-virtual { p0, v0 }, Landroidx/appcompat/app/d;->findViewById(I)Landroid/view/View;
    move-result-object v0
    check-cast v0, Landroid/widget/TextView;
    iput-object v0, p0, Lcom/yalantis/ucrop/UCropActivity;->mTextViewRotateAngle:Landroid/widget/TextView;
  .line 2
    sget v0, Lcom/yalantis/ucrop/R$id;->rotate_scroll_wheel:I
    invoke-virtual { p0, v0 }, Landroidx/appcompat/app/d;->findViewById(I)Landroid/view/View;
    move-result-object v0
    check-cast v0, Lcom/yalantis/ucrop/view/widget/HorizontalProgressWheelView;
    new-instance v1, Lcom/yalantis/ucrop/UCropActivity$3;
    invoke-direct { v1, p0 }, Lcom/yalantis/ucrop/UCropActivity$3;-><init>(Lcom/yalantis/ucrop/UCropActivity;)V
  .line 3
    invoke-virtual { v0, v1 }, Lcom/yalantis/ucrop/view/widget/HorizontalProgressWheelView;->setScrollingListener(Lcom/yalantis/ucrop/view/widget/HorizontalProgressWheelView$ScrollingListener;)V
  .line 4
    sget v0, Lcom/yalantis/ucrop/R$id;->rotate_scroll_wheel:I
    invoke-virtual { p0, v0 }, Landroidx/appcompat/app/d;->findViewById(I)Landroid/view/View;
    move-result-object v0
    check-cast v0, Lcom/yalantis/ucrop/view/widget/HorizontalProgressWheelView;
    iget v1, p0, Lcom/yalantis/ucrop/UCropActivity;->mActiveWidgetColor:I
    invoke-virtual { v0, v1 }, Lcom/yalantis/ucrop/view/widget/HorizontalProgressWheelView;->setMiddleLineColor(I)V
  .line 5
    sget v0, Lcom/yalantis/ucrop/R$id;->wrapper_reset_rotate:I
    invoke-virtual { p0, v0 }, Landroidx/appcompat/app/d;->findViewById(I)Landroid/view/View;
    move-result-object v0
    new-instance v1, Lcom/yalantis/ucrop/UCropActivity$4;
    invoke-direct { v1, p0 }, Lcom/yalantis/ucrop/UCropActivity$4;-><init>(Lcom/yalantis/ucrop/UCropActivity;)V
    invoke-virtual { v0, v1 }, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
  .line 6
    sget v0, Lcom/yalantis/ucrop/R$id;->wrapper_rotate_by_angle:I
    invoke-virtual { p0, v0 }, Landroidx/appcompat/app/d;->findViewById(I)Landroid/view/View;
    move-result-object v0
    new-instance v1, Lcom/yalantis/ucrop/UCropActivity$5;
    invoke-direct { v1, p0 }, Lcom/yalantis/ucrop/UCropActivity$5;-><init>(Lcom/yalantis/ucrop/UCropActivity;)V
    invoke-virtual { v0, v1 }, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    return-void
.end method

.method private setupScaleWidget()V
  .registers 3
  .line 1
    sget v0, Lcom/yalantis/ucrop/R$id;->text_view_scale:I
    invoke-virtual { p0, v0 }, Landroidx/appcompat/app/d;->findViewById(I)Landroid/view/View;
    move-result-object v0
    check-cast v0, Landroid/widget/TextView;
    iput-object v0, p0, Lcom/yalantis/ucrop/UCropActivity;->mTextViewScalePercent:Landroid/widget/TextView;
  .line 2
    sget v0, Lcom/yalantis/ucrop/R$id;->scale_scroll_wheel:I
    invoke-virtual { p0, v0 }, Landroidx/appcompat/app/d;->findViewById(I)Landroid/view/View;
    move-result-object v0
    check-cast v0, Lcom/yalantis/ucrop/view/widget/HorizontalProgressWheelView;
    new-instance v1, Lcom/yalantis/ucrop/UCropActivity$6;
    invoke-direct { v1, p0 }, Lcom/yalantis/ucrop/UCropActivity$6;-><init>(Lcom/yalantis/ucrop/UCropActivity;)V
  .line 3
    invoke-virtual { v0, v1 }, Lcom/yalantis/ucrop/view/widget/HorizontalProgressWheelView;->setScrollingListener(Lcom/yalantis/ucrop/view/widget/HorizontalProgressWheelView$ScrollingListener;)V
  .line 4
    sget v0, Lcom/yalantis/ucrop/R$id;->scale_scroll_wheel:I
    invoke-virtual { p0, v0 }, Landroidx/appcompat/app/d;->findViewById(I)Landroid/view/View;
    move-result-object v0
    check-cast v0, Lcom/yalantis/ucrop/view/widget/HorizontalProgressWheelView;
    iget v1, p0, Lcom/yalantis/ucrop/UCropActivity;->mActiveWidgetColor:I
    invoke-virtual { v0, v1 }, Lcom/yalantis/ucrop/view/widget/HorizontalProgressWheelView;->setMiddleLineColor(I)V
    return-void
.end method

.method private setupStatesWrapper()V
  .registers 7
  .line 1
    sget v0, Lcom/yalantis/ucrop/R$id;->image_view_state_scale:I
    invoke-virtual { p0, v0 }, Landroidx/appcompat/app/d;->findViewById(I)Landroid/view/View;
    move-result-object v0
    check-cast v0, Landroid/widget/ImageView;
  .line 2
    sget v1, Lcom/yalantis/ucrop/R$id;->image_view_state_rotate:I
    invoke-virtual { p0, v1 }, Landroidx/appcompat/app/d;->findViewById(I)Landroid/view/View;
    move-result-object v1
    check-cast v1, Landroid/widget/ImageView;
  .line 3
    sget v2, Lcom/yalantis/ucrop/R$id;->image_view_state_aspect_ratio:I
    invoke-virtual { p0, v2 }, Landroidx/appcompat/app/d;->findViewById(I)Landroid/view/View;
    move-result-object v2
    check-cast v2, Landroid/widget/ImageView;
  .line 4
    new-instance v3, Lcom/yalantis/ucrop/util/SelectedStateListDrawable;
    invoke-virtual { v0 }, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;
    move-result-object v4
    iget v5, p0, Lcom/yalantis/ucrop/UCropActivity;->mActiveWidgetColor:I
    invoke-direct { v3, v4, v5 }, Lcom/yalantis/ucrop/util/SelectedStateListDrawable;-><init>(Landroid/graphics/drawable/Drawable;I)V
    invoke-virtual { v0, v3 }, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
  .line 5
    new-instance v0, Lcom/yalantis/ucrop/util/SelectedStateListDrawable;
    invoke-virtual { v1 }, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;
    move-result-object v3
    iget v4, p0, Lcom/yalantis/ucrop/UCropActivity;->mActiveWidgetColor:I
    invoke-direct { v0, v3, v4 }, Lcom/yalantis/ucrop/util/SelectedStateListDrawable;-><init>(Landroid/graphics/drawable/Drawable;I)V
    invoke-virtual { v1, v0 }, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
  .line 6
    new-instance v0, Lcom/yalantis/ucrop/util/SelectedStateListDrawable;
    invoke-virtual { v2 }, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;
    move-result-object v1
    iget v3, p0, Lcom/yalantis/ucrop/UCropActivity;->mActiveWidgetColor:I
    invoke-direct { v0, v1, v3 }, Lcom/yalantis/ucrop/util/SelectedStateListDrawable;-><init>(Landroid/graphics/drawable/Drawable;I)V
    invoke-virtual { v2, v0 }, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    return-void
.end method

.method private setupViews(Landroid/content/Intent;)V
  .registers 4
  .line 1
    sget v0, Lcom/yalantis/ucrop/R$color;->ucrop_color_statusbar:I
    invoke-static { p0, v0 }, Landroidx/core/content/a;->b(Landroid/content/Context;I)I
    move-result v0
    const-string v1, "com.yalantis.ucrop.StatusBarColor"
    invoke-virtual { p1, v1, v0 }, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I
    move-result v0
    iput v0, p0, Lcom/yalantis/ucrop/UCropActivity;->mStatusBarColor:I
  .line 2
    sget v0, Lcom/yalantis/ucrop/R$color;->ucrop_color_toolbar:I
    invoke-static { p0, v0 }, Landroidx/core/content/a;->b(Landroid/content/Context;I)I
    move-result v0
    const-string v1, "com.yalantis.ucrop.ToolbarColor"
    invoke-virtual { p1, v1, v0 }, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I
    move-result v0
    iput v0, p0, Lcom/yalantis/ucrop/UCropActivity;->mToolbarColor:I
  .line 3
    sget v0, Lcom/yalantis/ucrop/R$color;->ucrop_color_widget_active:I
    invoke-static { p0, v0 }, Landroidx/core/content/a;->b(Landroid/content/Context;I)I
    move-result v0
    const-string v1, "com.yalantis.ucrop.UcropColorWidgetActive"
    invoke-virtual { p1, v1, v0 }, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I
    move-result v0
    iput v0, p0, Lcom/yalantis/ucrop/UCropActivity;->mActiveWidgetColor:I
  .line 4
    sget v0, Lcom/yalantis/ucrop/R$color;->ucrop_color_toolbar_widget:I
    invoke-static { p0, v0 }, Landroidx/core/content/a;->b(Landroid/content/Context;I)I
    move-result v0
    const-string v1, "com.yalantis.ucrop.UcropToolbarWidgetColor"
    invoke-virtual { p1, v1, v0 }, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I
    move-result v0
    iput v0, p0, Lcom/yalantis/ucrop/UCropActivity;->mToolbarWidgetColor:I
    const-string v0, "com.yalantis.ucrop.UcropToolbarTitleText"
  .line 5
    invoke-virtual { p1, v0 }, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v0
    iput-object v0, p0, Lcom/yalantis/ucrop/UCropActivity;->mToolbarTitle:Ljava/lang/String;
  .line 6
    invoke-static { v0 }, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    move-result v0
    if-nez v0, :L0
    iget-object v0, p0, Lcom/yalantis/ucrop/UCropActivity;->mToolbarTitle:Ljava/lang/String;
    goto :L1
  :L0
    invoke-virtual { p0 }, Landroidx/appcompat/app/d;->getResources()Landroid/content/res/Resources;
    move-result-object v0
    sget v1, Lcom/yalantis/ucrop/R$string;->ucrop_label_edit_photo:I
    invoke-virtual { v0, v1 }, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    move-result-object v0
  :L1
    iput-object v0, p0, Lcom/yalantis/ucrop/UCropActivity;->mToolbarTitle:Ljava/lang/String;
  .line 7
    sget v0, Lcom/yalantis/ucrop/R$color;->ucrop_color_default_logo:I
    invoke-static { p0, v0 }, Landroidx/core/content/a;->b(Landroid/content/Context;I)I
    move-result v0
    const-string v1, "com.yalantis.ucrop.UcropLogoColor"
    invoke-virtual { p1, v1, v0 }, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I
    move-result v0
    iput v0, p0, Lcom/yalantis/ucrop/UCropActivity;->mLogoColor:I
    const/4 v0, 0
    const-string v1, "com.yalantis.ucrop.HideBottomControls"
  .line 8
    invoke-virtual { p1, v1, v0 }, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z
    move-result v0
    xor-int/lit8 v0, v0, 1
    iput-boolean v0, p0, Lcom/yalantis/ucrop/UCropActivity;->mShowBottomControls:Z
  .line 9
    invoke-direct { p0 }, Lcom/yalantis/ucrop/UCropActivity;->setupAppBar()V
  .line 10
    invoke-direct { p0 }, Lcom/yalantis/ucrop/UCropActivity;->initiateRootViews()V
  .line 11
    iget-boolean v0, p0, Lcom/yalantis/ucrop/UCropActivity;->mShowBottomControls:Z
    if-eqz v0, :L2
  .line 12
    sget v0, Lcom/yalantis/ucrop/R$id;->ucrop_photobox:I
    invoke-virtual { p0, v0 }, Landroidx/appcompat/app/d;->findViewById(I)Landroid/view/View;
    move-result-object v0
    check-cast v0, Landroid/view/ViewGroup;
  .line 13
    sget v1, Lcom/yalantis/ucrop/R$layout;->ucrop_controls:I
    invoke-static { p0, v1, v0 }, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;
  .line 14
    sget v0, Lcom/yalantis/ucrop/R$id;->state_aspect_ratio:I
    invoke-virtual { p0, v0 }, Landroidx/appcompat/app/d;->findViewById(I)Landroid/view/View;
    move-result-object v0
    check-cast v0, Landroid/view/ViewGroup;
    iput-object v0, p0, Lcom/yalantis/ucrop/UCropActivity;->mWrapperStateAspectRatio:Landroid/view/ViewGroup;
  .line 15
    iget-object v1, p0, Lcom/yalantis/ucrop/UCropActivity;->mStateClickListener:Landroid/view/View$OnClickListener;
    invoke-virtual { v0, v1 }, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V
  .line 16
    sget v0, Lcom/yalantis/ucrop/R$id;->state_rotate:I
    invoke-virtual { p0, v0 }, Landroidx/appcompat/app/d;->findViewById(I)Landroid/view/View;
    move-result-object v0
    check-cast v0, Landroid/view/ViewGroup;
    iput-object v0, p0, Lcom/yalantis/ucrop/UCropActivity;->mWrapperStateRotate:Landroid/view/ViewGroup;
  .line 17
    iget-object v1, p0, Lcom/yalantis/ucrop/UCropActivity;->mStateClickListener:Landroid/view/View$OnClickListener;
    invoke-virtual { v0, v1 }, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V
  .line 18
    sget v0, Lcom/yalantis/ucrop/R$id;->state_scale:I
    invoke-virtual { p0, v0 }, Landroidx/appcompat/app/d;->findViewById(I)Landroid/view/View;
    move-result-object v0
    check-cast v0, Landroid/view/ViewGroup;
    iput-object v0, p0, Lcom/yalantis/ucrop/UCropActivity;->mWrapperStateScale:Landroid/view/ViewGroup;
  .line 19
    iget-object v1, p0, Lcom/yalantis/ucrop/UCropActivity;->mStateClickListener:Landroid/view/View$OnClickListener;
    invoke-virtual { v0, v1 }, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V
  .line 20
    sget v0, Lcom/yalantis/ucrop/R$id;->layout_aspect_ratio:I
    invoke-virtual { p0, v0 }, Landroidx/appcompat/app/d;->findViewById(I)Landroid/view/View;
    move-result-object v0
    check-cast v0, Landroid/view/ViewGroup;
    iput-object v0, p0, Lcom/yalantis/ucrop/UCropActivity;->mLayoutAspectRatio:Landroid/view/ViewGroup;
  .line 21
    sget v0, Lcom/yalantis/ucrop/R$id;->layout_rotate_wheel:I
    invoke-virtual { p0, v0 }, Landroidx/appcompat/app/d;->findViewById(I)Landroid/view/View;
    move-result-object v0
    check-cast v0, Landroid/view/ViewGroup;
    iput-object v0, p0, Lcom/yalantis/ucrop/UCropActivity;->mLayoutRotate:Landroid/view/ViewGroup;
  .line 22
    sget v0, Lcom/yalantis/ucrop/R$id;->layout_scale_wheel:I
    invoke-virtual { p0, v0 }, Landroidx/appcompat/app/d;->findViewById(I)Landroid/view/View;
    move-result-object v0
    check-cast v0, Landroid/view/ViewGroup;
    iput-object v0, p0, Lcom/yalantis/ucrop/UCropActivity;->mLayoutScale:Landroid/view/ViewGroup;
  .line 23
    invoke-direct { p0, p1 }, Lcom/yalantis/ucrop/UCropActivity;->setupAspectRatioWidget(Landroid/content/Intent;)V
  .line 24
    invoke-direct { p0 }, Lcom/yalantis/ucrop/UCropActivity;->setupRotateWidget()V
  .line 25
    invoke-direct { p0 }, Lcom/yalantis/ucrop/UCropActivity;->setupScaleWidget()V
  .line 26
    invoke-direct { p0 }, Lcom/yalantis/ucrop/UCropActivity;->setupStatesWrapper()V
  :L2
    return-void
.end method

.method protected cropAndSaveImage()V
  .registers 5
  .line 1
    iget-object v0, p0, Lcom/yalantis/ucrop/UCropActivity;->mBlockingView:Landroid/view/View;
    const/4 v1, 1
    invoke-virtual { v0, v1 }, Landroid/view/View;->setClickable(Z)V
  .line 2
    iput-boolean v1, p0, Lcom/yalantis/ucrop/UCropActivity;->mShowLoader:Z
  .line 3
    invoke-virtual { p0 }, Landroidx/appcompat/app/d;->supportInvalidateOptionsMenu()V
  .line 4
    iget-object v0, p0, Lcom/yalantis/ucrop/UCropActivity;->mGestureCropImageView:Lcom/yalantis/ucrop/view/GestureCropImageView;
    iget-object v1, p0, Lcom/yalantis/ucrop/UCropActivity;->mCompressFormat:Landroid/graphics/Bitmap$CompressFormat;
    iget v2, p0, Lcom/yalantis/ucrop/UCropActivity;->mCompressQuality:I
    new-instance v3, Lcom/yalantis/ucrop/UCropActivity$8;
    invoke-direct { v3, p0 }, Lcom/yalantis/ucrop/UCropActivity$8;-><init>(Lcom/yalantis/ucrop/UCropActivity;)V
    invoke-virtual { v0, v1, v2, v3 }, Lcom/yalantis/ucrop/view/CropImageView;->cropAndSaveImage(Landroid/graphics/Bitmap$CompressFormat;ILcom/yalantis/ucrop/callback/BitmapCropCallback;)V
    return-void
.end method

.method public native onCreate(Landroid/os/Bundle;)V
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
  .catch Ljava/lang/IllegalStateException; { :L0 .. :L1 } :L2
  .registers 7
  .line 1
    invoke-virtual { p0 }, Landroidx/appcompat/app/d;->getMenuInflater()Landroid/view/MenuInflater;
    move-result-object v0
    sget v1, Lcom/yalantis/ucrop/R$menu;->ucrop_menu_activity:I
    invoke-virtual { v0, v1, p1 }, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V
  .line 2
    sget v0, Lcom/yalantis/ucrop/R$id;->menu_loader:I
    invoke-interface { p1, v0 }, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;
    move-result-object v0
  .line 3
    invoke-interface { v0 }, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;
    move-result-object v1
    const/4 v2, 1
    if-eqz v1, :L4
  :L0
  .line 4
    invoke-virtual { v1 }, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;
  .line 5
    iget v3, p0, Lcom/yalantis/ucrop/UCropActivity;->mToolbarWidgetColor:I
    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;
    invoke-virtual { v1, v3, v4 }, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V
  .line 6
    invoke-interface { v0, v1 }, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;
  :L1
    goto :L3
  :L2
    move-exception v1
    const/4 v3, 2
    new-array v3, v3, [Ljava/lang/Object;
    const/4 v4, 0
  .line 7
    invoke-virtual { v1 }, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;
    move-result-object v1
    aput-object v1, v3, v4
    sget v1, Lcom/yalantis/ucrop/R$string;->ucrop_mutate_exception_hint:I
    invoke-virtual { p0, v1 }, Landroid/app/Activity;->getString(I)Ljava/lang/String;
    move-result-object v1
    aput-object v1, v3, v2
    const-string v1, "%s - %s"
    invoke-static { v1, v3 }, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
  :L3
  .line 8
    invoke-interface { v0 }, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;
    move-result-object v0
    check-cast v0, Landroid/graphics/drawable/Animatable;
    invoke-interface { v0 }, Landroid/graphics/drawable/Animatable;->start()V
  :L4
  .line 9
    sget v0, Lcom/yalantis/ucrop/R$id;->menu_crop:I
    invoke-interface { p1, v0 }, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;
    move-result-object p1
  .line 10
    invoke-interface { p1 }, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;
    move-result-object v0
    if-eqz v0, :L5
  .line 11
    invoke-virtual { v0 }, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;
  .line 12
    iget v1, p0, Lcom/yalantis/ucrop/UCropActivity;->mToolbarWidgetColor:I
    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;
    invoke-virtual { v0, v1, v3 }, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V
  .line 13
    invoke-interface { p1, v0 }, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;
  :L5
    return v2
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
  .registers 4
  .line 1
    invoke-interface { p1 }, Landroid/view/MenuItem;->getItemId()I
    move-result v0
    sget v1, Lcom/yalantis/ucrop/R$id;->menu_crop:I
    if-ne v0, v1, :L0
  .line 2
    invoke-virtual { p0 }, Lcom/yalantis/ucrop/UCropActivity;->cropAndSaveImage()V
    goto :L1
  :L0
  .line 3
    invoke-interface { p1 }, Landroid/view/MenuItem;->getItemId()I
    move-result v0
    const v1, 16908332
    if-ne v0, v1, :L1
  .line 4
    invoke-virtual { p0 }, Landroidx/activity/ComponentActivity;->onBackPressed()V
  :L1
  .line 5
    invoke-super { p0, p1 }, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z
    move-result p1
    return p1
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
  .registers 4
  .line 1
    sget v0, Lcom/yalantis/ucrop/R$id;->menu_crop:I
    invoke-interface { p1, v0 }, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;
    move-result-object v0
    iget-boolean v1, p0, Lcom/yalantis/ucrop/UCropActivity;->mShowLoader:Z
    xor-int/lit8 v1, v1, 1
    invoke-interface { v0, v1 }, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;
  .line 2
    sget v0, Lcom/yalantis/ucrop/R$id;->menu_loader:I
    invoke-interface { p1, v0 }, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;
    move-result-object v0
    iget-boolean v1, p0, Lcom/yalantis/ucrop/UCropActivity;->mShowLoader:Z
    invoke-interface { v0, v1 }, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;
  .line 3
    invoke-super { p0, p1 }, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z
    move-result p1
    return p1
.end method

.method protected onStop()V
  .registers 2
  .line 1
    invoke-super { p0 }, Landroidx/appcompat/app/d;->onStop()V
  .line 2
    iget-object v0, p0, Lcom/yalantis/ucrop/UCropActivity;->mGestureCropImageView:Lcom/yalantis/ucrop/view/GestureCropImageView;
    if-eqz v0, :L0
  .line 3
    invoke-virtual { v0 }, Lcom/yalantis/ucrop/view/CropImageView;->cancelAllAnimations()V
  :L0
    return-void
.end method

.method protected setResultError(Ljava/lang/Throwable;)V
  .registers 4
  .line 1
    new-instance v0, Landroid/content/Intent;
    invoke-direct { v0 }, Landroid/content/Intent;-><init>()V
    const-string v1, "com.yalantis.ucrop.Error"
    invoke-virtual { v0, v1, p1 }, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;
    move-result-object p1
    const/16 v0, 96
    invoke-virtual { p0, v0, p1 }, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V
    return-void
.end method

.method protected setResultUri(Landroid/net/Uri;FII)V
  .registers 7
  .line 1
    new-instance v0, Landroid/content/Intent;
    invoke-direct { v0 }, Landroid/content/Intent;-><init>()V
    const-string v1, "com.yalantis.ucrop.OutputUri"
  .line 2
    invoke-virtual { v0, v1, p1 }, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;
    move-result-object p1
    const-string v0, "com.yalantis.ucrop.CropAspectRatio"
  .line 3
    invoke-virtual { p1, v0, p2 }, Landroid/content/Intent;->putExtra(Ljava/lang/String;F)Landroid/content/Intent;
    move-result-object p1
    const-string p2, "com.yalantis.ucrop.ImageWidth"
  .line 4
    invoke-virtual { p1, p2, p3 }, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;
    move-result-object p1
    const-string p2, "com.yalantis.ucrop.ImageHeight"
  .line 5
    invoke-virtual { p1, p2, p4 }, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;
    move-result-object p1
    const/4 p2, -1
  .line 6
    invoke-virtual { p0, p2, p1 }, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V
    return-void
.end method
