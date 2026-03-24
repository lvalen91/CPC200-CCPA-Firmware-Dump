.class public Lcom/yalantis/ucrop/view/GestureCropImageView;
.super Lcom/yalantis/ucrop/view/CropImageView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yalantis/ucrop/view/GestureCropImageView$RotateListener;,
        Lcom/yalantis/ucrop/view/GestureCropImageView$GestureListener;,
        Lcom/yalantis/ucrop/view/GestureCropImageView$ScaleListener;
    }
.end annotation


# static fields
.field private static final DOUBLE_TAP_ZOOM_DURATION:I = 0xc8


# instance fields
.field private mDoubleTapScaleSteps:I

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mIsRotateEnabled:Z

.field private mIsScaleEnabled:Z

.field private mMidPntX:F

.field private mMidPntY:F

.field private mRotateDetector:Lcom/yalantis/ucrop/util/RotationGestureDetector;

.field private mScaleDetector:Landroid/view/ScaleGestureDetector;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/yalantis/ucrop/view/CropImageView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcom/yalantis/ucrop/view/GestureCropImageView;->mIsRotateEnabled:Z

    iput-boolean p1, p0, Lcom/yalantis/ucrop/view/GestureCropImageView;->mIsScaleEnabled:Z

    const/4 p1, 0x5

    .line 3
    iput p1, p0, Lcom/yalantis/ucrop/view/GestureCropImageView;->mDoubleTapScaleSteps:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    .line 4
    invoke-direct {p0, p1, p2, v0}, Lcom/yalantis/ucrop/view/GestureCropImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 5
    invoke-direct {p0, p1, p2, p3}, Lcom/yalantis/ucrop/view/CropImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x1

    .line 6
    iput-boolean p1, p0, Lcom/yalantis/ucrop/view/GestureCropImageView;->mIsRotateEnabled:Z

    iput-boolean p1, p0, Lcom/yalantis/ucrop/view/GestureCropImageView;->mIsScaleEnabled:Z

    const/4 p1, 0x5

    .line 7
    iput p1, p0, Lcom/yalantis/ucrop/view/GestureCropImageView;->mDoubleTapScaleSteps:I

    return-void
.end method

.method static synthetic access$300(Lcom/yalantis/ucrop/view/GestureCropImageView;)F
    .registers 1

    .line 1
    iget p0, p0, Lcom/yalantis/ucrop/view/GestureCropImageView;->mMidPntX:F

    return p0
.end method

.method static synthetic access$400(Lcom/yalantis/ucrop/view/GestureCropImageView;)F
    .registers 1

    .line 1
    iget p0, p0, Lcom/yalantis/ucrop/view/GestureCropImageView;->mMidPntY:F

    return p0
.end method

.method private setupGestureListeners()V
    .registers 6

    .line 1
    new-instance v0, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/yalantis/ucrop/view/GestureCropImageView$GestureListener;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/yalantis/ucrop/view/GestureCropImageView$GestureListener;-><init>(Lcom/yalantis/ucrop/view/GestureCropImageView;Lcom/yalantis/ucrop/view/GestureCropImageView$1;)V

    const/4 v4, 0x1

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;Landroid/os/Handler;Z)V

    iput-object v0, p0, Lcom/yalantis/ucrop/view/GestureCropImageView;->mGestureDetector:Landroid/view/GestureDetector;

    .line 2
    new-instance v0, Landroid/view/ScaleGestureDetector;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/yalantis/ucrop/view/GestureCropImageView$ScaleListener;

    invoke-direct {v2, p0, v3}, Lcom/yalantis/ucrop/view/GestureCropImageView$ScaleListener;-><init>(Lcom/yalantis/ucrop/view/GestureCropImageView;Lcom/yalantis/ucrop/view/GestureCropImageView$1;)V

    invoke-direct {v0, v1, v2}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v0, p0, Lcom/yalantis/ucrop/view/GestureCropImageView;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    .line 3
    new-instance v0, Lcom/yalantis/ucrop/util/RotationGestureDetector;

    new-instance v1, Lcom/yalantis/ucrop/view/GestureCropImageView$RotateListener;

    invoke-direct {v1, p0, v3}, Lcom/yalantis/ucrop/view/GestureCropImageView$RotateListener;-><init>(Lcom/yalantis/ucrop/view/GestureCropImageView;Lcom/yalantis/ucrop/view/GestureCropImageView$1;)V

    invoke-direct {v0, v1}, Lcom/yalantis/ucrop/util/RotationGestureDetector;-><init>(Lcom/yalantis/ucrop/util/RotationGestureDetector$OnRotationGestureListener;)V

    iput-object v0, p0, Lcom/yalantis/ucrop/view/GestureCropImageView;->mRotateDetector:Lcom/yalantis/ucrop/util/RotationGestureDetector;

    return-void
.end method


# virtual methods
.method public getDoubleTapScaleSteps()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/yalantis/ucrop/view/GestureCropImageView;->mDoubleTapScaleSteps:I

    return v0
.end method

.method protected getDoubleTapTargetScale()F
    .registers 6

    .line 1
    invoke-virtual {p0}, Lcom/yalantis/ucrop/view/TransformImageView;->getCurrentScale()F

    move-result v0

    invoke-virtual {p0}, Lcom/yalantis/ucrop/view/CropImageView;->getMaxScale()F

    move-result v1

    invoke-virtual {p0}, Lcom/yalantis/ucrop/view/CropImageView;->getMinScale()F

    move-result v2

    div-float/2addr v1, v2

    float-to-double v1, v1

    iget v3, p0, Lcom/yalantis/ucrop/view/GestureCropImageView;->mDoubleTapScaleSteps:I

    int-to-float v3, v3

    const/high16 v4, 0x3f800000    # 1.0f

    div-float/2addr v4, v3

    float-to-double v3, v4

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    double-to-float v1, v1

    mul-float v0, v0, v1

    return v0
.end method

.method protected init()V
    .registers 1

    .line 1
    invoke-super {p0}, Lcom/yalantis/ucrop/view/TransformImageView;->init()V

    .line 2
    invoke-direct {p0}, Lcom/yalantis/ucrop/view/GestureCropImageView;->setupGestureListeners()V

    return-void
.end method

.method public isRotateEnabled()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/yalantis/ucrop/view/GestureCropImageView;->mIsRotateEnabled:Z

    return v0
.end method

.method public isScaleEnabled()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/yalantis/ucrop/view/GestureCropImageView;->mIsScaleEnabled:Z

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 6

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    if-nez v0, :cond_b

    .line 2
    invoke-virtual {p0}, Lcom/yalantis/ucrop/view/CropImageView;->cancelAllAnimations()V

    .line 3
    :cond_b
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_2d

    const/4 v0, 0x0

    .line 4
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    add-float/2addr v2, v3

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    iput v2, p0, Lcom/yalantis/ucrop/view/GestureCropImageView;->mMidPntX:F

    .line 5
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    add-float/2addr v0, v2

    div-float/2addr v0, v3

    iput v0, p0, Lcom/yalantis/ucrop/view/GestureCropImageView;->mMidPntY:F

    .line 6
    :cond_2d
    iget-object v0, p0, Lcom/yalantis/ucrop/view/GestureCropImageView;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 7
    iget-boolean v0, p0, Lcom/yalantis/ucrop/view/GestureCropImageView;->mIsScaleEnabled:Z

    if-eqz v0, :cond_3b

    .line 8
    iget-object v0, p0, Lcom/yalantis/ucrop/view/GestureCropImageView;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 9
    :cond_3b
    iget-boolean v0, p0, Lcom/yalantis/ucrop/view/GestureCropImageView;->mIsRotateEnabled:Z

    if-eqz v0, :cond_44

    .line 10
    iget-object v0, p0, Lcom/yalantis/ucrop/view/GestureCropImageView;->mRotateDetector:Lcom/yalantis/ucrop/util/RotationGestureDetector;

    invoke-virtual {v0, p1}, Lcom/yalantis/ucrop/util/RotationGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 11
    :cond_44
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    and-int/lit16 p1, p1, 0xff

    if-ne p1, v1, :cond_4f

    .line 12
    invoke-virtual {p0}, Lcom/yalantis/ucrop/view/CropImageView;->setImageToWrapCropBounds()V

    :cond_4f
    return v1
.end method

.method public setDoubleTapScaleSteps(I)V
    .registers 2

    .line 1
    iput p1, p0, Lcom/yalantis/ucrop/view/GestureCropImageView;->mDoubleTapScaleSteps:I

    return-void
.end method

.method public setRotateEnabled(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Lcom/yalantis/ucrop/view/GestureCropImageView;->mIsRotateEnabled:Z

    return-void
.end method

.method public setScaleEnabled(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Lcom/yalantis/ucrop/view/GestureCropImageView;->mIsScaleEnabled:Z

    return-void
.end method
