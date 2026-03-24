.class public Lcom/yalantis/ucrop/util/RotationGestureDetector;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yalantis/ucrop/util/RotationGestureDetector$OnRotationGestureListener;,
        Lcom/yalantis/ucrop/util/RotationGestureDetector$SimpleOnRotationGestureListener;
    }
.end annotation


# static fields
.field private static final INVALID_POINTER_INDEX:I = -0x1


# instance fields
.field private fX:F

.field private fY:F

.field private mAngle:F

.field private mIsFirstTouch:Z

.field private mListener:Lcom/yalantis/ucrop/util/RotationGestureDetector$OnRotationGestureListener;

.field private mPointerIndex1:I

.field private mPointerIndex2:I

.field private sX:F

.field private sY:F


# direct methods
.method public constructor <init>(Lcom/yalantis/ucrop/util/RotationGestureDetector$OnRotationGestureListener;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/yalantis/ucrop/util/RotationGestureDetector;->mListener:Lcom/yalantis/ucrop/util/RotationGestureDetector$OnRotationGestureListener;

    const/4 p1, -0x1

    .line 3
    iput p1, p0, Lcom/yalantis/ucrop/util/RotationGestureDetector;->mPointerIndex1:I

    .line 4
    iput p1, p0, Lcom/yalantis/ucrop/util/RotationGestureDetector;->mPointerIndex2:I

    return-void
.end method

.method private calculateAngleBetweenLines(FFFFFFFF)F
    .registers 11

    sub-float/2addr p2, p4

    float-to-double v0, p2

    sub-float/2addr p1, p3

    float-to-double p1, p1

    .line 1
    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide p1

    double-to-float p1, p1

    float-to-double p1, p1

    invoke-static {p1, p2}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide p1

    double-to-float p1, p1

    sub-float/2addr p6, p8

    float-to-double p2, p6

    sub-float/2addr p5, p7

    float-to-double p4, p5

    .line 2
    invoke-static {p2, p3, p4, p5}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide p2

    double-to-float p2, p2

    float-to-double p2, p2

    invoke-static {p2, p3}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide p2

    double-to-float p2, p2

    .line 3
    invoke-direct {p0, p1, p2}, Lcom/yalantis/ucrop/util/RotationGestureDetector;->calculateAngleDelta(FF)F

    move-result p1

    return p1
.end method

.method private calculateAngleDelta(FF)F
    .registers 4

    const/high16 v0, 0x43b40000    # 360.0f

    rem-float/2addr p2, v0

    rem-float/2addr p1, v0

    sub-float/2addr p2, p1

    .line 1
    iput p2, p0, Lcom/yalantis/ucrop/util/RotationGestureDetector;->mAngle:F

    const/high16 p1, -0x3ccc0000    # -180.0f

    cmpg-float p1, p2, p1

    if-gez p1, :cond_11

    add-float/2addr p2, v0

    .line 2
    iput p2, p0, Lcom/yalantis/ucrop/util/RotationGestureDetector;->mAngle:F

    goto :goto_1a

    :cond_11
    const/high16 p1, 0x43340000    # 180.0f

    cmpl-float p1, p2, p1

    if-lez p1, :cond_1a

    sub-float/2addr p2, v0

    .line 3
    iput p2, p0, Lcom/yalantis/ucrop/util/RotationGestureDetector;->mAngle:F

    .line 4
    :cond_1a
    :goto_1a
    iget p1, p0, Lcom/yalantis/ucrop/util/RotationGestureDetector;->mAngle:F

    return p1
.end method


# virtual methods
.method public getAngle()F
    .registers 2

    .line 1
    iget v0, p0, Lcom/yalantis/ucrop/util/RotationGestureDetector;->mAngle:F

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 17

    move-object v9, p0

    move-object/from16 v0, p1

    .line 1
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v10, 0x1

    if-eqz v1, :cond_92

    const/4 v4, -0x1

    if-eq v1, v10, :cond_8f

    const/4 v5, 0x2

    if-eq v1, v5, :cond_3e

    const/4 v2, 0x5

    if-eq v1, v2, :cond_1e

    const/4 v0, 0x6

    if-eq v1, v0, :cond_1a

    goto/16 :goto_ac

    .line 2
    :cond_1a
    iput v4, v9, Lcom/yalantis/ucrop/util/RotationGestureDetector;->mPointerIndex2:I

    goto/16 :goto_ac

    .line 3
    :cond_1e
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iput v1, v9, Lcom/yalantis/ucrop/util/RotationGestureDetector;->fX:F

    .line 4
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iput v1, v9, Lcom/yalantis/ucrop/util/RotationGestureDetector;->fY:F

    .line 5
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    iput v0, v9, Lcom/yalantis/ucrop/util/RotationGestureDetector;->mPointerIndex2:I

    .line 6
    iput v3, v9, Lcom/yalantis/ucrop/util/RotationGestureDetector;->mAngle:F

    .line 7
    iput-boolean v10, v9, Lcom/yalantis/ucrop/util/RotationGestureDetector;->mIsFirstTouch:Z

    goto/16 :goto_ac

    .line 8
    :cond_3e
    iget v1, v9, Lcom/yalantis/ucrop/util/RotationGestureDetector;->mPointerIndex1:I

    if-eq v1, v4, :cond_ac

    iget v1, v9, Lcom/yalantis/ucrop/util/RotationGestureDetector;->mPointerIndex2:I

    if-eq v1, v4, :cond_ac

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    iget v4, v9, Lcom/yalantis/ucrop/util/RotationGestureDetector;->mPointerIndex2:I

    if-le v1, v4, :cond_ac

    .line 9
    iget v1, v9, Lcom/yalantis/ucrop/util/RotationGestureDetector;->mPointerIndex1:I

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v11

    .line 10
    iget v1, v9, Lcom/yalantis/ucrop/util/RotationGestureDetector;->mPointerIndex1:I

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v12

    .line 11
    iget v1, v9, Lcom/yalantis/ucrop/util/RotationGestureDetector;->mPointerIndex2:I

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v13

    .line 12
    iget v1, v9, Lcom/yalantis/ucrop/util/RotationGestureDetector;->mPointerIndex2:I

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v14

    .line 13
    iget-boolean v0, v9, Lcom/yalantis/ucrop/util/RotationGestureDetector;->mIsFirstTouch:Z

    if-eqz v0, :cond_6f

    .line 14
    iput v3, v9, Lcom/yalantis/ucrop/util/RotationGestureDetector;->mAngle:F

    .line 15
    iput-boolean v2, v9, Lcom/yalantis/ucrop/util/RotationGestureDetector;->mIsFirstTouch:Z

    goto :goto_7f

    .line 16
    :cond_6f
    iget v1, v9, Lcom/yalantis/ucrop/util/RotationGestureDetector;->fX:F

    iget v2, v9, Lcom/yalantis/ucrop/util/RotationGestureDetector;->fY:F

    iget v3, v9, Lcom/yalantis/ucrop/util/RotationGestureDetector;->sX:F

    iget v4, v9, Lcom/yalantis/ucrop/util/RotationGestureDetector;->sY:F

    move-object v0, p0

    move v5, v13

    move v6, v14

    move v7, v11

    move v8, v12

    invoke-direct/range {v0 .. v8}, Lcom/yalantis/ucrop/util/RotationGestureDetector;->calculateAngleBetweenLines(FFFFFFFF)F

    .line 17
    :goto_7f
    iget-object v0, v9, Lcom/yalantis/ucrop/util/RotationGestureDetector;->mListener:Lcom/yalantis/ucrop/util/RotationGestureDetector$OnRotationGestureListener;

    if-eqz v0, :cond_86

    .line 18
    invoke-interface {v0, p0}, Lcom/yalantis/ucrop/util/RotationGestureDetector$OnRotationGestureListener;->onRotation(Lcom/yalantis/ucrop/util/RotationGestureDetector;)Z

    .line 19
    :cond_86
    iput v13, v9, Lcom/yalantis/ucrop/util/RotationGestureDetector;->fX:F

    .line 20
    iput v14, v9, Lcom/yalantis/ucrop/util/RotationGestureDetector;->fY:F

    .line 21
    iput v11, v9, Lcom/yalantis/ucrop/util/RotationGestureDetector;->sX:F

    .line 22
    iput v12, v9, Lcom/yalantis/ucrop/util/RotationGestureDetector;->sY:F

    goto :goto_ac

    .line 23
    :cond_8f
    iput v4, v9, Lcom/yalantis/ucrop/util/RotationGestureDetector;->mPointerIndex1:I

    goto :goto_ac

    .line 24
    :cond_92
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iput v1, v9, Lcom/yalantis/ucrop/util/RotationGestureDetector;->sX:F

    .line 25
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iput v1, v9, Lcom/yalantis/ucrop/util/RotationGestureDetector;->sY:F

    .line 26
    invoke-virtual {v0, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    iput v0, v9, Lcom/yalantis/ucrop/util/RotationGestureDetector;->mPointerIndex1:I

    .line 27
    iput v3, v9, Lcom/yalantis/ucrop/util/RotationGestureDetector;->mAngle:F

    .line 28
    iput-boolean v10, v9, Lcom/yalantis/ucrop/util/RotationGestureDetector;->mIsFirstTouch:Z

    :cond_ac
    :goto_ac
    return v10
.end method
