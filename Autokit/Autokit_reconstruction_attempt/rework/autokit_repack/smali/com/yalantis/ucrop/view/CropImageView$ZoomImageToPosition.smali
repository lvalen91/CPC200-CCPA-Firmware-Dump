.class Lcom/yalantis/ucrop/view/CropImageView$ZoomImageToPosition;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yalantis/ucrop/view/CropImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ZoomImageToPosition"
.end annotation


# instance fields
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

.field private final mDestX:F

.field private final mDestY:F

.field private final mDurationMs:J

.field private final mOldScale:F

.field private final mStartTime:J


# direct methods
.method public constructor <init>(Lcom/yalantis/ucrop/view/CropImageView;JFFFF)V
    .registers 10

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/yalantis/ucrop/view/CropImageView$ZoomImageToPosition;->mCropImageView:Ljava/lang/ref/WeakReference;

    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/yalantis/ucrop/view/CropImageView$ZoomImageToPosition;->mStartTime:J

    .line 4
    iput-wide p2, p0, Lcom/yalantis/ucrop/view/CropImageView$ZoomImageToPosition;->mDurationMs:J

    .line 5
    iput p4, p0, Lcom/yalantis/ucrop/view/CropImageView$ZoomImageToPosition;->mOldScale:F

    .line 6
    iput p5, p0, Lcom/yalantis/ucrop/view/CropImageView$ZoomImageToPosition;->mDeltaScale:F

    .line 7
    iput p6, p0, Lcom/yalantis/ucrop/view/CropImageView$ZoomImageToPosition;->mDestX:F

    .line 8
    iput p7, p0, Lcom/yalantis/ucrop/view/CropImageView$ZoomImageToPosition;->mDestY:F

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .line 1
    iget-object v0, p0, Lcom/yalantis/ucrop/view/CropImageView$ZoomImageToPosition;->mCropImageView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yalantis/ucrop/view/CropImageView;

    if-nez v0, :cond_b

    return-void

    .line 2
    :cond_b
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 3
    iget-wide v3, p0, Lcom/yalantis/ucrop/view/CropImageView$ZoomImageToPosition;->mDurationMs:J

    iget-wide v5, p0, Lcom/yalantis/ucrop/view/CropImageView$ZoomImageToPosition;->mStartTime:J

    sub-long/2addr v1, v5

    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    long-to-float v1, v1

    const/4 v2, 0x0

    .line 4
    iget v3, p0, Lcom/yalantis/ucrop/view/CropImageView$ZoomImageToPosition;->mDeltaScale:F

    iget-wide v4, p0, Lcom/yalantis/ucrop/view/CropImageView$ZoomImageToPosition;->mDurationMs:J

    long-to-float v4, v4

    invoke-static {v1, v2, v3, v4}, Lcom/yalantis/ucrop/util/CubicEasing;->easeInOut(FFFF)F

    move-result v2

    .line 5
    iget-wide v3, p0, Lcom/yalantis/ucrop/view/CropImageView$ZoomImageToPosition;->mDurationMs:J

    long-to-float v3, v3

    cmpg-float v1, v1, v3

    if-gez v1, :cond_38

    .line 6
    iget v1, p0, Lcom/yalantis/ucrop/view/CropImageView$ZoomImageToPosition;->mOldScale:F

    add-float/2addr v1, v2

    iget v2, p0, Lcom/yalantis/ucrop/view/CropImageView$ZoomImageToPosition;->mDestX:F

    iget v3, p0, Lcom/yalantis/ucrop/view/CropImageView$ZoomImageToPosition;->mDestY:F

    invoke-virtual {v0, v1, v2, v3}, Lcom/yalantis/ucrop/view/CropImageView;->zoomInImage(FFF)V

    .line 7
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->post(Ljava/lang/Runnable;)Z

    goto :goto_3b

    .line 8
    :cond_38
    invoke-virtual {v0}, Lcom/yalantis/ucrop/view/CropImageView;->setImageToWrapCropBounds()V

    :goto_3b
    return-void
.end method
