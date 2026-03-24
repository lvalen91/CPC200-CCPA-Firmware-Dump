.class public Lcom/yalantis/ucrop/model/ImageState;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mCropRect:Landroid/graphics/RectF;

.field private mCurrentAngle:F

.field private mCurrentImageRect:Landroid/graphics/RectF;

.field private mCurrentScale:F


# direct methods
.method public constructor <init>(Landroid/graphics/RectF;Landroid/graphics/RectF;FF)V
    .registers 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/yalantis/ucrop/model/ImageState;->mCropRect:Landroid/graphics/RectF;

    .line 3
    iput-object p2, p0, Lcom/yalantis/ucrop/model/ImageState;->mCurrentImageRect:Landroid/graphics/RectF;

    .line 4
    iput p3, p0, Lcom/yalantis/ucrop/model/ImageState;->mCurrentScale:F

    .line 5
    iput p4, p0, Lcom/yalantis/ucrop/model/ImageState;->mCurrentAngle:F

    return-void
.end method


# virtual methods
.method public getCropRect()Landroid/graphics/RectF;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/yalantis/ucrop/model/ImageState;->mCropRect:Landroid/graphics/RectF;

    return-object v0
.end method

.method public getCurrentAngle()F
    .registers 2

    .line 1
    iget v0, p0, Lcom/yalantis/ucrop/model/ImageState;->mCurrentAngle:F

    return v0
.end method

.method public getCurrentImageRect()Landroid/graphics/RectF;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/yalantis/ucrop/model/ImageState;->mCurrentImageRect:Landroid/graphics/RectF;

    return-object v0
.end method

.method public getCurrentScale()F
    .registers 2

    .line 1
    iget v0, p0, Lcom/yalantis/ucrop/model/ImageState;->mCurrentScale:F

    return v0
.end method
