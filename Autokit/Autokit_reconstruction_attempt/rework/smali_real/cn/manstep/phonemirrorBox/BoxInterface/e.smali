.class public Lcn/manstep/phonemirrorBox/BoxInterface/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:[F

.field public b:[F

.field public c:[I

.field public d:[I

.field public e:I


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x5

    new-array v1, v0, [F

    .line 2
    iput-object v1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/e;->a:[F

    new-array v1, v0, [F

    .line 3
    iput-object v1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/e;->b:[F

    new-array v1, v0, [I

    .line 4
    iput-object v1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/e;->c:[I

    new-array v0, v0, [I

    .line 5
    iput-object v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/e;->d:[I

    const/4 v0, 0x0

    .line 6
    iput v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/e;->e:I

    return-void
.end method

.method public static b(Landroid/view/MotionEvent;IIII)Z
    .registers 21

    move-object/from16 v0, p0

    move/from16 v1, p3

    move/from16 v2, p4

    .line 1
    new-instance v3, Lcn/manstep/phonemirrorBox/BoxInterface/e;

    invoke-direct {v3}, Lcn/manstep/phonemirrorBox/BoxInterface/e;-><init>()V

    .line 2
    invoke-virtual/range {p0 .. p0}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v4

    const/4 v5, 0x6

    const/4 v6, 0x2

    const/4 v7, 0x0

    const/4 v8, 0x5

    const/4 v9, 0x1

    if-eqz v4, :cond_1e

    if-eq v4, v9, :cond_1c

    if-eq v4, v6, :cond_1f

    if-eq v4, v8, :cond_1e

    :cond_1c
    const/4 v6, 0x0

    goto :goto_1f

    :cond_1e
    const/4 v6, 0x1

    .line 3
    :cond_1f
    :goto_1f
    invoke-virtual/range {p0 .. p0}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v4

    if-le v4, v8, :cond_26

    const/4 v4, 0x5

    :cond_26
    :goto_26
    if-ge v7, v4, :cond_a4

    .line 4
    invoke-virtual {v0, v7}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v10

    if-lt v10, v8, :cond_2f

    return v9

    .line 5
    :cond_2f
    invoke-virtual/range {p0 .. p0}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v11

    if-eq v11, v8, :cond_3b

    .line 6
    invoke-virtual/range {p0 .. p0}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v11

    if-ne v11, v5, :cond_46

    .line 7
    :cond_3b
    invoke-virtual/range {p0 .. p0}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v11

    invoke-virtual {v0, v11}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v11

    if-eq v10, v11, :cond_46

    goto :goto_a1

    .line 8
    :cond_46
    invoke-virtual {v0, v7}, Landroid/view/MotionEvent;->getX(I)F

    move-result v11

    float-to-int v11, v11

    sub-int v11, v11, p1

    .line 9
    invoke-virtual {v0, v7}, Landroid/view/MotionEvent;->getY(I)F

    move-result v12

    float-to-int v12, v12

    sub-int v12, v12, p2

    const/4 v13, 0x0

    const/high16 v14, 0x3f800000    # 1.0f

    if-le v11, v1, :cond_5c

    const/high16 v11, 0x3f800000    # 1.0f

    goto :goto_65

    :cond_5c
    if-lez v11, :cond_64

    int-to-float v11, v11

    mul-float v11, v11, v14

    int-to-float v15, v1

    div-float/2addr v11, v15

    goto :goto_65

    :cond_64
    const/4 v11, 0x0

    :goto_65
    if-le v12, v2, :cond_6a

    const/high16 v12, 0x3f800000    # 1.0f

    goto :goto_73

    :cond_6a
    if-lez v12, :cond_72

    int-to-float v12, v12

    mul-float v12, v12, v14

    int-to-float v15, v2

    div-float/2addr v12, v15

    goto :goto_73

    :cond_72
    const/4 v12, 0x0

    :goto_73
    cmpg-float v15, v11, v13

    if-gez v15, :cond_79

    const/4 v11, 0x0

    goto :goto_7f

    :cond_79
    cmpl-float v15, v11, v14

    if-lez v15, :cond_7f

    const/high16 v11, 0x3f800000    # 1.0f

    :cond_7f
    :goto_7f
    cmpg-float v15, v12, v13

    if-gez v15, :cond_84

    goto :goto_8c

    :cond_84
    cmpl-float v13, v12, v14

    if-lez v13, :cond_8b

    const/high16 v13, 0x3f800000    # 1.0f

    goto :goto_8c

    :cond_8b
    move v13, v12

    .line 10
    :goto_8c
    iget-object v12, v3, Lcn/manstep/phonemirrorBox/BoxInterface/e;->a:[F

    iget v14, v3, Lcn/manstep/phonemirrorBox/BoxInterface/e;->e:I

    aput v11, v12, v14

    .line 11
    iget-object v11, v3, Lcn/manstep/phonemirrorBox/BoxInterface/e;->b:[F

    aput v13, v11, v14

    .line 12
    iget-object v11, v3, Lcn/manstep/phonemirrorBox/BoxInterface/e;->c:[I

    aput v6, v11, v14

    .line 13
    iget-object v11, v3, Lcn/manstep/phonemirrorBox/BoxInterface/e;->d:[I

    aput v10, v11, v14

    add-int/2addr v14, v9

    .line 14
    iput v14, v3, Lcn/manstep/phonemirrorBox/BoxInterface/e;->e:I

    :goto_a1
    add-int/lit8 v7, v7, 0x1

    goto :goto_26

    .line 15
    :cond_a4
    invoke-static {v3}, Lcn/manstep/phonemirrorBox/v0/e;->K(Lcn/manstep/phonemirrorBox/BoxInterface/e;)V

    return v9
.end method


# virtual methods
.method a()I
    .registers 2

    .line 1
    iget v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/e;->e:I

    mul-int/lit8 v0, v0, 0x10

    return v0
.end method

.method c(Ljava/nio/ByteBuffer;I)V
    .registers 7

    const/4 v0, 0x0

    .line 1
    :goto_1
    iget v1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/e;->e:I

    if-ge v0, v1, :cond_32

    add-int/lit8 v1, p2, 0x0

    mul-int/lit8 v2, v0, 0x10

    add-int/2addr v1, v2

    .line 2
    iget-object v3, p0, Lcn/manstep/phonemirrorBox/BoxInterface/e;->a:[F

    aget v3, v3, v0

    invoke-virtual {p1, v1, v3}, Ljava/nio/ByteBuffer;->putFloat(IF)Ljava/nio/ByteBuffer;

    add-int/lit8 v1, p2, 0x4

    add-int/2addr v1, v2

    .line 3
    iget-object v3, p0, Lcn/manstep/phonemirrorBox/BoxInterface/e;->b:[F

    aget v3, v3, v0

    invoke-virtual {p1, v1, v3}, Ljava/nio/ByteBuffer;->putFloat(IF)Ljava/nio/ByteBuffer;

    add-int/lit8 v1, p2, 0x8

    add-int/2addr v1, v2

    .line 4
    iget-object v3, p0, Lcn/manstep/phonemirrorBox/BoxInterface/e;->c:[I

    aget v3, v3, v0

    invoke-virtual {p1, v1, v3}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    add-int/lit8 v1, p2, 0xc

    add-int/2addr v1, v2

    .line 5
    iget-object v2, p0, Lcn/manstep/phonemirrorBox/BoxInterface/e;->d:[I

    aget v2, v2, v0

    invoke-virtual {p1, v1, v2}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_32
    return-void
.end method
