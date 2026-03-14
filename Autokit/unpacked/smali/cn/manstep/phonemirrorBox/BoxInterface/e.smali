.class public Lcn/manstep/phonemirrorBox/BoxInterface/e;
.super Ljava/lang/Object;
.source "SourceFile"

.field public a:[F

.field public b:[F

.field public c:[I

.field public d:[I

.field public e:I

.method public constructor <init>()V
  .registers 3
  .line 1
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    const/4 v0, 5
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
    const/4 v0, 0
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
    invoke-direct { v3 }, Lcn/manstep/phonemirrorBox/BoxInterface/e;-><init>()V
  .line 2
    invoke-virtual/range { p0 .. p0 }, Landroid/view/MotionEvent;->getActionMasked()I
    move-result v4
    const/4 v5, 6
    const/4 v6, 2
    const/4 v7, 0
    const/4 v8, 5
    const/4 v9, 1
    if-eqz v4, :L1
    if-eq v4, v9, :L0
    if-eq v4, v6, :L2
    if-eq v4, v8, :L1
  :L0
    const/4 v6, 0
    goto :L2
  :L1
    const/4 v6, 1
  :L2
  .line 3
    invoke-virtual/range { p0 .. p0 }, Landroid/view/MotionEvent;->getPointerCount()I
    move-result v4
    if-le v4, v8, :L3
    const/4 v4, 5
  :L3
    if-ge v7, v4, :L19
  .line 4
    invoke-virtual { v0, v7 }, Landroid/view/MotionEvent;->getPointerId(I)I
    move-result v10
    if-lt v10, v8, :L4
    return v9
  :L4
  .line 5
    invoke-virtual/range { p0 .. p0 }, Landroid/view/MotionEvent;->getActionMasked()I
    move-result v11
    if-eq v11, v8, :L5
  .line 6
    invoke-virtual/range { p0 .. p0 }, Landroid/view/MotionEvent;->getActionMasked()I
    move-result v11
    if-ne v11, v5, :L6
  :L5
  .line 7
    invoke-virtual/range { p0 .. p0 }, Landroid/view/MotionEvent;->getActionIndex()I
    move-result v11
    invoke-virtual { v0, v11 }, Landroid/view/MotionEvent;->getPointerId(I)I
    move-result v11
    if-eq v10, v11, :L6
    goto :L18
  :L6
  .line 8
    invoke-virtual { v0, v7 }, Landroid/view/MotionEvent;->getX(I)F
    move-result v11
    float-to-int v11, v11
    sub-int v11, v11, p1
  .line 9
    invoke-virtual { v0, v7 }, Landroid/view/MotionEvent;->getY(I)F
    move-result v12
    float-to-int v12, v12
    sub-int v12, v12, p2
    const/4 v13, 0
    const/high16 v14, 16256
    if-le v11, v1, :L7
    const/high16 v11, 16256
    goto :L9
  :L7
    if-lez v11, :L8
    int-to-float v11, v11
    mul-float v11, v11, v14
    int-to-float v15, v1
    div-float/2addr v11, v15
    goto :L9
  :L8
    const/4 v11, 0
  :L9
    if-le v12, v2, :L10
    const/high16 v12, 16256
    goto :L12
  :L10
    if-lez v12, :L11
    int-to-float v12, v12
    mul-float v12, v12, v14
    int-to-float v15, v2
    div-float/2addr v12, v15
    goto :L12
  :L11
    const/4 v12, 0
  :L12
    cmpg-float v15, v11, v13
    if-gez v15, :L13
    const/4 v11, 0
    goto :L14
  :L13
    cmpl-float v15, v11, v14
    if-lez v15, :L14
    const/high16 v11, 16256
  :L14
    cmpg-float v15, v12, v13
    if-gez v15, :L15
    goto :L17
  :L15
    cmpl-float v13, v12, v14
    if-lez v13, :L16
    const/high16 v13, 16256
    goto :L17
  :L16
    move v13, v12
  :L17
  .line 10
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
  :L18
    add-int/lit8 v7, v7, 1
    goto :L3
  :L19
  .line 15
    invoke-static { v3 }, Lcn/manstep/phonemirrorBox/v0/e;->K(Lcn/manstep/phonemirrorBox/BoxInterface/e;)V
    return v9
.end method

.method a()I
  .registers 2
  .line 1
    iget v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/e;->e:I
    mul-int/lit8 v0, v0, 16
    return v0
.end method

.method c(Ljava/nio/ByteBuffer;I)V
  .registers 7
    const/4 v0, 0
  :L0
  .line 1
    iget v1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/e;->e:I
    if-ge v0, v1, :L1
    add-int/lit8 v1, p2, 0
    mul-int/lit8 v2, v0, 16
    add-int/2addr v1, v2
  .line 2
    iget-object v3, p0, Lcn/manstep/phonemirrorBox/BoxInterface/e;->a:[F
    aget v3, v3, v0
    invoke-virtual { p1, v1, v3 }, Ljava/nio/ByteBuffer;->putFloat(IF)Ljava/nio/ByteBuffer;
    add-int/lit8 v1, p2, 4
    add-int/2addr v1, v2
  .line 3
    iget-object v3, p0, Lcn/manstep/phonemirrorBox/BoxInterface/e;->b:[F
    aget v3, v3, v0
    invoke-virtual { p1, v1, v3 }, Ljava/nio/ByteBuffer;->putFloat(IF)Ljava/nio/ByteBuffer;
    add-int/lit8 v1, p2, 8
    add-int/2addr v1, v2
  .line 4
    iget-object v3, p0, Lcn/manstep/phonemirrorBox/BoxInterface/e;->c:[I
    aget v3, v3, v0
    invoke-virtual { p1, v1, v3 }, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;
    add-int/lit8 v1, p2, 12
    add-int/2addr v1, v2
  .line 5
    iget-object v2, p0, Lcn/manstep/phonemirrorBox/BoxInterface/e;->d:[I
    aget v2, v2, v0
    invoke-virtual { p1, v1, v2 }, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;
    add-int/lit8 v0, v0, 1
    goto :L0
  :L1
    return-void
.end method
