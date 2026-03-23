.class public Lc/g/d/c$b;
.super Ljava/lang/Object;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Lc/g/d/c;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 9
  name = "b"
.end annotation

.field public a:C

.field public b:[F

.method constructor <init>(C[F)V
  .registers 3
  .line 1
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
  .line 2
    iput-char p1, p0, Lc/g/d/c$b;->a:C
  .line 3
    iput-object p2, p0, Lc/g/d/c$b;->b:[F
    return-void
.end method

.method constructor <init>(Lc/g/d/c$b;)V
  .registers 4
  .line 4
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
  .line 5
    iget-char v0, p1, Lc/g/d/c$b;->a:C
    iput-char v0, p0, Lc/g/d/c$b;->a:C
  .line 6
    iget-object p1, p1, Lc/g/d/c$b;->b:[F
    array-length v0, p1
    const/4 v1, 0
    invoke-static { p1, v1, v0 }, Lc/g/d/c;->c([FII)[F
    move-result-object p1
    iput-object p1, p0, Lc/g/d/c$b;->b:[F
    return-void
.end method

.method private static a(Landroid/graphics/Path;[FCC[F)V
  .registers 30
    move-object/from16 v10, p0
    move/from16 v11, p3
    move-object/from16 v12, p4
    const/4 v13, 0
  .line 1
    aget v0, p1, v13
    const/4 v14, 1
  .line 2
    aget v1, p1, v14
    const/4 v15, 2
  .line 3
    aget v2, p1, v15
    const/16 v16, 3
  .line 4
    aget v3, p1, v16
    const/16 v17, 4
  .line 5
    aget v4, p1, v17
    const/16 v18, 5
  .line 6
    aget v5, p1, v18
    sparse-switch v11, :L54
  :L0
    const/16 v19, 2
    goto :L6
  :L1
  .line 7
    invoke-virtual/range { p0 .. p0 }, Landroid/graphics/Path;->close()V
  .line 8
    invoke-virtual { v10, v4, v5 }, Landroid/graphics/Path;->moveTo(FF)V
    move v0, v4
    move v2, v0
    move v1, v5
    move v3, v1
    goto :L0
  :L2
    const/16 v19, 4
    goto :L6
  :L3
    const/16 v19, 1
    goto :L6
  :L4
    const/4 v6, 6
    const/16 v19, 6
    goto :L6
  :L5
    const/4 v6, 7
    const/16 v19, 7
  :L6
    move v9, v0
    move v8, v1
    move/from16 v20, v4
    move/from16 v21, v5
    const/4 v7, 0
    move/from16 v0, p2
  :L7
  .line 9
    array-length v1, v12
    if-ge v7, v1, :L53
    const/16 v1, 65
    if-eq v11, v1, :L46
    const/16 v1, 67
    if-eq v11, v1, :L45
    const/16 v5, 72
    if-eq v11, v5, :L44
    const/16 v5, 81
    if-eq v11, v5, :L43
    const/16 v6, 86
    if-eq v11, v6, :L42
    const/16 v6, 97
    if-eq v11, v6, :L37
    const/16 v6, 99
    if-eq v11, v6, :L34
    const/16 v15, 104
    if-eq v11, v15, :L33
    const/16 v15, 113
    if-eq v11, v15, :L32
    const/16 v14, 118
    if-eq v11, v14, :L31
    const/16 v14, 76
    if-eq v11, v14, :L30
    const/16 v14, 77
    if-eq v11, v14, :L27
    const/16 v14, 115
    const/16 v13, 83
    const/high16 v22, 16384
    if-eq v11, v13, :L24
    const/16 v4, 116
    const/16 v13, 84
    if-eq v11, v13, :L21
    const/16 v1, 108
    if-eq v11, v1, :L19
    const/16 v1, 109
    if-eq v11, v1, :L17
    if-eq v11, v14, :L13
    if-eq v11, v4, :L9
  :L8
    move/from16 v24, v7
    goto/16 :L52
  :L9
    if-eq v0, v15, :L11
    if-eq v0, v4, :L11
    if-eq v0, v5, :L11
    if-ne v0, v13, :L10
    goto :L11
  :L10
    const/4 v0, 0
    const/4 v4, 0
    goto :L12
  :L11
    sub-float v4, v9, v2
    sub-float v0, v8, v3
  :L12
    add-int/lit8 v1, v7, 0
  .line 10
    aget v2, v12, v1
    add-int/lit8 v3, v7, 1
    aget v5, v12, v3
    invoke-virtual { v10, v4, v0, v2, v5 }, Landroid/graphics/Path;->rQuadTo(FFFF)V
    add-float/2addr v4, v9
    add-float/2addr v0, v8
  .line 11
    aget v1, v12, v1
    add-float/2addr v9, v1
  .line 12
    aget v1, v12, v3
    add-float/2addr v8, v1
    move v3, v0
    move v2, v4
    goto :L8
  :L13
    if-eq v0, v6, :L15
    if-eq v0, v14, :L15
    const/16 v1, 67
    if-eq v0, v1, :L15
    const/16 v1, 83
    if-ne v0, v1, :L14
    goto :L15
  :L14
    const/4 v1, 0
    const/4 v2, 0
    goto :L16
  :L15
    sub-float v0, v9, v2
    sub-float v1, v8, v3
    move v2, v1
    move v1, v0
  :L16
    add-int/lit8 v13, v7, 0
  .line 13
    aget v3, v12, v13
    add-int/lit8 v14, v7, 1
    aget v4, v12, v14
    add-int/lit8 v15, v7, 2
    aget v5, v12, v15
    add-int/lit8 v22, v7, 3
    aget v6, v12, v22
    move-object/from16 v0, p0
    invoke-virtual/range { v0 .. v6 }, Landroid/graphics/Path;->rCubicTo(FFFFFF)V
  .line 14
    aget v0, v12, v13
    add-float/2addr v0, v9
  .line 15
    aget v1, v12, v14
    add-float/2addr v1, v8
  .line 16
    aget v2, v12, v15
    add-float/2addr v9, v2
  .line 17
    aget v2, v12, v22
    goto/16 :L35
  :L17
    add-int/lit8 v0, v7, 0
  .line 18
    aget v1, v12, v0
    add-float/2addr v9, v1
    add-int/lit8 v1, v7, 1
  .line 19
    aget v4, v12, v1
    add-float/2addr v8, v4
    if-lez v7, :L18
  .line 20
    aget v0, v12, v0
    aget v1, v12, v1
    invoke-virtual { v10, v0, v1 }, Landroid/graphics/Path;->rLineTo(FF)V
    goto :L8
  :L18
  .line 21
    aget v0, v12, v0
    aget v1, v12, v1
    invoke-virtual { v10, v0, v1 }, Landroid/graphics/Path;->rMoveTo(FF)V
    goto/16 :L29
  :L19
    add-int/lit8 v0, v7, 0
  .line 22
    aget v1, v12, v0
    add-int/lit8 v4, v7, 1
    aget v5, v12, v4
    invoke-virtual { v10, v1, v5 }, Landroid/graphics/Path;->rLineTo(FF)V
  .line 23
    aget v0, v12, v0
    add-float/2addr v9, v0
  .line 24
    aget v0, v12, v4
  :L20
    add-float/2addr v8, v0
    goto/16 :L8
  :L21
    if-eq v0, v15, :L22
    if-eq v0, v4, :L22
    if-eq v0, v5, :L22
    if-ne v0, v13, :L23
  :L22
    mul-float v9, v9, v22
    sub-float/2addr v9, v2
    mul-float v8, v8, v22
    sub-float/2addr v8, v3
  :L23
    add-int/lit8 v0, v7, 0
  .line 25
    aget v1, v12, v0
    add-int/lit8 v2, v7, 1
    aget v3, v12, v2
    invoke-virtual { v10, v9, v8, v1, v3 }, Landroid/graphics/Path;->quadTo(FFFF)V
  .line 26
    aget v0, v12, v0
  .line 27
    aget v1, v12, v2
    move/from16 v24, v7
    move v3, v8
    move v2, v9
    move v9, v0
    move v8, v1
    goto/16 :L52
  :L24
    if-eq v0, v6, :L25
    if-eq v0, v14, :L25
    const/16 v1, 67
    if-eq v0, v1, :L25
    const/16 v1, 83
    if-ne v0, v1, :L26
  :L25
    mul-float v9, v9, v22
    sub-float/2addr v9, v2
    mul-float v8, v8, v22
    sub-float/2addr v8, v3
  :L26
    move v2, v8
    move v1, v9
    add-int/lit8 v8, v7, 0
  .line 28
    aget v3, v12, v8
    add-int/lit8 v9, v7, 1
    aget v4, v12, v9
    add-int/lit8 v13, v7, 2
    aget v5, v12, v13
    add-int/lit8 v14, v7, 3
    aget v6, v12, v14
    move-object/from16 v0, p0
    invoke-virtual/range { v0 .. v6 }, Landroid/graphics/Path;->cubicTo(FFFFFF)V
  .line 29
    aget v0, v12, v8
  .line 30
    aget v1, v12, v9
  .line 31
    aget v9, v12, v13
  .line 32
    aget v8, v12, v14
    goto/16 :L36
  :L27
    add-int/lit8 v0, v7, 0
  .line 33
    aget v9, v12, v0
    add-int/lit8 v1, v7, 1
  .line 34
    aget v8, v12, v1
    if-lez v7, :L28
  .line 35
    aget v0, v12, v0
    aget v1, v12, v1
    invoke-virtual { v10, v0, v1 }, Landroid/graphics/Path;->lineTo(FF)V
    goto/16 :L8
  :L28
  .line 36
    aget v0, v12, v0
    aget v1, v12, v1
    invoke-virtual { v10, v0, v1 }, Landroid/graphics/Path;->moveTo(FF)V
  :L29
    move/from16 v24, v7
    move/from16 v21, v8
    move/from16 v20, v9
    goto/16 :L52
  :L30
    add-int/lit8 v0, v7, 0
  .line 37
    aget v1, v12, v0
    add-int/lit8 v4, v7, 1
    aget v5, v12, v4
    invoke-virtual { v10, v1, v5 }, Landroid/graphics/Path;->lineTo(FF)V
  .line 38
    aget v9, v12, v0
  .line 39
    aget v8, v12, v4
    goto/16 :L8
  :L31
    add-int/lit8 v0, v7, 0
  .line 40
    aget v1, v12, v0
    const/4 v4, 0
    invoke-virtual { v10, v4, v1 }, Landroid/graphics/Path;->rLineTo(FF)V
  .line 41
    aget v0, v12, v0
    goto/16 :L20
  :L32
    add-int/lit8 v0, v7, 0
  .line 42
    aget v1, v12, v0
    add-int/lit8 v2, v7, 1
    aget v3, v12, v2
    add-int/lit8 v4, v7, 2
    aget v5, v12, v4
    add-int/lit8 v6, v7, 3
    aget v13, v12, v6
    invoke-virtual { v10, v1, v3, v5, v13 }, Landroid/graphics/Path;->rQuadTo(FFFF)V
  .line 43
    aget v0, v12, v0
    add-float/2addr v0, v9
  .line 44
    aget v1, v12, v2
    add-float/2addr v1, v8
  .line 45
    aget v2, v12, v4
    add-float/2addr v9, v2
  .line 46
    aget v2, v12, v6
    goto :L35
  :L33
    add-int/lit8 v0, v7, 0
  .line 47
    aget v1, v12, v0
    const/4 v4, 0
    invoke-virtual { v10, v1, v4 }, Landroid/graphics/Path;->rLineTo(FF)V
  .line 48
    aget v0, v12, v0
    add-float/2addr v9, v0
    goto/16 :L8
  :L34
    add-int/lit8 v0, v7, 0
  .line 49
    aget v1, v12, v0
    add-int/lit8 v0, v7, 1
    aget v2, v12, v0
    add-int/lit8 v13, v7, 2
    aget v3, v12, v13
    add-int/lit8 v14, v7, 3
    aget v4, v12, v14
    add-int/lit8 v15, v7, 4
    aget v5, v12, v15
    add-int/lit8 v22, v7, 5
    aget v6, v12, v22
    move-object/from16 v0, p0
    invoke-virtual/range { v0 .. v6 }, Landroid/graphics/Path;->rCubicTo(FFFFFF)V
  .line 50
    aget v0, v12, v13
    add-float/2addr v0, v9
  .line 51
    aget v1, v12, v14
    add-float/2addr v1, v8
  .line 52
    aget v2, v12, v15
    add-float/2addr v9, v2
  .line 53
    aget v2, v12, v22
  :L35
    add-float/2addr v8, v2
  :L36
    move v2, v0
    move v3, v1
    goto/16 :L8
  :L37
    add-int/lit8 v13, v7, 5
  .line 54
    aget v0, v12, v13
    add-float v3, v0, v9
    add-int/lit8 v14, v7, 6
    aget v0, v12, v14
    add-float v4, v0, v8
    add-int/lit8 v0, v7, 0
    aget v5, v12, v0
    add-int/lit8 v0, v7, 1
    aget v6, v12, v0
    add-int/lit8 v0, v7, 2
    aget v15, v12, v0
    add-int/lit8 v0, v7, 3
    aget v0, v12, v0
    const/4 v1, 0
    cmpl-float v0, v0, v1
    if-eqz v0, :L38
    const/16 v22, 1
    goto :L39
  :L38
    const/16 v22, 0
  :L39
    add-int/lit8 v0, v7, 4
    aget v0, v12, v0
    cmpl-float v0, v0, v1
    if-eqz v0, :L40
    const/16 v23, 1
    goto :L41
  :L40
    const/16 v23, 0
  :L41
    move-object/from16 v0, p0
    move v1, v9
    move v2, v8
    move/from16 v24, v7
    move v7, v15
    move v15, v8
    move/from16 v8, v22
    move v11, v9
    move/from16 v9, v23
    invoke-static/range { v0 .. v9 }, Lc/g/d/c$b;->c(Landroid/graphics/Path;FFFFFFFZZ)V
  .line 55
    aget v0, v12, v13
    add-float v9, v11, v0
  .line 56
    aget v0, v12, v14
    add-float v8, v15, v0
    goto/16 :L51
  :L42
    move/from16 v24, v7
    move v11, v9
    add-int/lit8 v7, v24, 0
  .line 57
    aget v0, v12, v7
    invoke-virtual { v10, v11, v0 }, Landroid/graphics/Path;->lineTo(FF)V
  .line 58
    aget v8, v12, v7
    goto/16 :L52
  :L43
    move/from16 v24, v7
    add-int/lit8 v7, v24, 0
  .line 59
    aget v0, v12, v7
    add-int/lit8 v1, v24, 1
    aget v2, v12, v1
    add-int/lit8 v3, v24, 2
    aget v4, v12, v3
    add-int/lit8 v5, v24, 3
    aget v6, v12, v5
    invoke-virtual { v10, v0, v2, v4, v6 }, Landroid/graphics/Path;->quadTo(FFFF)V
  .line 60
    aget v0, v12, v7
  .line 61
    aget v1, v12, v1
  .line 62
    aget v9, v12, v3
  .line 63
    aget v8, v12, v5
    move v2, v0
    move v3, v1
    goto/16 :L52
  :L44
    move/from16 v24, v7
    move v15, v8
    add-int/lit8 v7, v24, 0
  .line 64
    aget v0, v12, v7
    invoke-virtual { v10, v0, v15 }, Landroid/graphics/Path;->lineTo(FF)V
  .line 65
    aget v9, v12, v7
    goto/16 :L52
  :L45
    move/from16 v24, v7
    add-int/lit8 v7, v24, 0
  .line 66
    aget v1, v12, v7
    add-int/lit8 v7, v24, 1
    aget v2, v12, v7
    add-int/lit8 v7, v24, 2
    aget v3, v12, v7
    add-int/lit8 v8, v24, 3
    aget v4, v12, v8
    add-int/lit8 v9, v24, 4
    aget v5, v12, v9
    add-int/lit8 v11, v24, 5
    aget v6, v12, v11
    move-object/from16 v0, p0
    invoke-virtual/range { v0 .. v6 }, Landroid/graphics/Path;->cubicTo(FFFFFF)V
  .line 67
    aget v9, v12, v9
  .line 68
    aget v0, v12, v11
  .line 69
    aget v1, v12, v7
  .line 70
    aget v2, v12, v8
    move v8, v0
    move v3, v2
    move v2, v1
    goto :L52
  :L46
    move/from16 v24, v7
    move v15, v8
    move v11, v9
    add-int/lit8 v13, v24, 5
  .line 71
    aget v3, v12, v13
    add-int/lit8 v14, v24, 6
    aget v4, v12, v14
    add-int/lit8 v7, v24, 0
    aget v5, v12, v7
    add-int/lit8 v7, v24, 1
    aget v6, v12, v7
    add-int/lit8 v7, v24, 2
    aget v7, v12, v7
    add-int/lit8 v0, v24, 3
    aget v0, v12, v0
    const/4 v1, 0
    cmpl-float v0, v0, v1
    if-eqz v0, :L47
    const/4 v8, 1
    goto :L48
  :L47
    const/4 v8, 0
  :L48
    add-int/lit8 v0, v24, 4
    aget v0, v12, v0
    cmpl-float v0, v0, v1
    if-eqz v0, :L49
    const/4 v9, 1
    goto :L50
  :L49
    const/4 v9, 0
  :L50
    move-object/from16 v0, p0
    move v1, v11
    move v2, v15
    invoke-static/range { v0 .. v9 }, Lc/g/d/c$b;->c(Landroid/graphics/Path;FFFFFFFZZ)V
  .line 72
    aget v9, v12, v13
  .line 73
    aget v8, v12, v14
  :L51
    move v3, v8
    move v2, v9
  :L52
    add-int v7, v24, v19
    move/from16 v0, p3
    move v11, v0
    const/4 v13, 0
    const/4 v14, 1
    const/4 v15, 2
    goto/16 :L7
  :L53
    move v15, v8
    move v11, v9
    const/4 v0, 0
  .line 74
    aput v11, p1, v0
    const/4 v0, 1
  .line 75
    aput v15, p1, v0
    const/4 v0, 2
  .line 76
    aput v2, p1, v0
  .line 77
    aput v3, p1, v16
  .line 78
    aput v20, p1, v17
  .line 79
    aput v21, p1, v18
    return-void
  :L54
  .sparse-switch
    65 -> :L5
    67 -> :L4
    72 -> :L3
    76 -> :L0
    77 -> :L0
    81 -> :L2
    83 -> :L2
    84 -> :L0
    86 -> :L3
    90 -> :L1
    97 -> :L5
    99 -> :L4
    104 -> :L3
    108 -> :L0
    109 -> :L0
    113 -> :L2
    115 -> :L2
    116 -> :L0
    118 -> :L3
    122 -> :L1
  .end sparse-switch
.end method

.method private static b(Landroid/graphics/Path;DDDDDDDDD)V
  .registers 68
    move-wide/from16 v0, p5
    const-wide/high16 v2, 16400
    mul-double v4, p17, v2
    const-wide v6, 4614256656552045848L
    div-double/2addr v4, v6
  .line 1
    invoke-static { v4, v5 }, Ljava/lang/Math;->abs(D)D
    move-result-wide v4
    invoke-static { v4, v5 }, Ljava/lang/Math;->ceil(D)D
    move-result-wide v4
    double-to-int v4, v4
  .line 2
    invoke-static/range { p13 .. p14 }, Ljava/lang/Math;->cos(D)D
    move-result-wide v5
  .line 3
    invoke-static/range { p13 .. p14 }, Ljava/lang/Math;->sin(D)D
    move-result-wide v7
  .line 4
    invoke-static/range { p15 .. p16 }, Ljava/lang/Math;->cos(D)D
    move-result-wide v9
  .line 5
    invoke-static/range { p15 .. p16 }, Ljava/lang/Math;->sin(D)D
    move-result-wide v11
    neg-double v13, v0
    mul-double v15, v13, v5
    mul-double v17, v15, v11
    mul-double v19, p7, v7
    mul-double v21, v19, v9
    sub-double v17, v17, v21
    mul-double v13, v13, v7
    mul-double v11, v11, v13
    mul-double v21, p7, v5
    mul-double v9, v9, v21
    add-double/2addr v11, v9
    int-to-double v9, v4
  .line 6
    invoke-static { v9, v10 }, Ljava/lang/Double;->isNaN(D)Z
    div-double v9, p17, v9
    const/16 v23, 0
    move-wide/from16 v23, p15
    move-wide/from16 v25, v11
    move-wide/from16 v27, v17
    const/4 v2, 0
    move-wide/from16 v11, p9
    move-wide/from16 v17, p11
  :L0
    if-ge v2, v4, :L1
    add-double v31, v23, v9
  .line 7
    invoke-static/range { v31 .. v32 }, Ljava/lang/Math;->sin(D)D
    move-result-wide v33
  .line 8
    invoke-static/range { v31 .. v32 }, Ljava/lang/Math;->cos(D)D
    move-result-wide v35
    mul-double v37, v0, v5
    mul-double v37, v37, v35
    add-double v37, p1, v37
    mul-double v39, v19, v33
    move/from16 v41, v4
    sub-double v3, v37, v39
    mul-double v37, v0, v7
    mul-double v37, v37, v35
    add-double v37, p3, v37
    mul-double v39, v21, v33
    add-double v0, v37, v39
    mul-double v37, v15, v33
    mul-double v39, v19, v35
    sub-double v37, v37, v39
    mul-double v33, v33, v13
    mul-double v35, v35, v21
    add-double v33, v33, v35
    sub-double v23, v31, v23
    const-wide/high16 v35, 16384
    div-double v35, v23, v35
  .line 9
    invoke-static/range { v35 .. v36 }, Ljava/lang/Math;->tan(D)D
    move-result-wide v35
  .line 10
    invoke-static/range { v23 .. v24 }, Ljava/lang/Math;->sin(D)D
    move-result-wide v23
    const-wide/high16 v39, 16392
    mul-double v42, v35, v39
    mul-double v42, v42, v35
    const-wide/high16 v29, 16400
    add-double v42, v42, v29
    invoke-static/range { v42 .. v43 }, Ljava/lang/Math;->sqrt(D)D
    move-result-wide v35
    const-wide/high16 v42, 16368
    sub-double v35, v35, v42
    mul-double v23, v23, v35
    div-double v23, v23, v39
    mul-double v27, v27, v23
    add-double v11, v11, v27
    mul-double v25, v25, v23
    move-wide/from16 v27, v5
    add-double v5, v17, v25
    mul-double v17, v23, v37
    move-wide/from16 p13, v7
    sub-double v7, v3, v17
    mul-double v23, v23, v33
    move-wide/from16 p7, v9
    sub-double v9, v0, v23
    move-wide/from16 v17, v13
    const/4 v13, 0
    move-object/from16 v14, p0
  .line 11
    invoke-virtual { v14, v13, v13 }, Landroid/graphics/Path;->rLineTo(FF)V
    double-to-float v11, v11
    double-to-float v5, v5
    double-to-float v6, v7
    double-to-float v7, v9
    double-to-float v8, v3
    double-to-float v9, v0
    move-object/from16 v42, p0
    move/from16 v43, v11
    move/from16 v44, v5
    move/from16 v45, v6
    move/from16 v46, v7
    move/from16 v47, v8
    move/from16 v48, v9
  .line 12
    invoke-virtual/range { v42 .. v48 }, Landroid/graphics/Path;->cubicTo(FFFFFF)V
    add-int/lit8 v2, v2, 1
    move-wide/from16 v9, p7
    move-wide/from16 v7, p13
    move-wide v11, v3
    move-wide/from16 v13, v17
    move-wide/from16 v5, v27
    move-wide/from16 v23, v31
    move-wide/from16 v25, v33
    move-wide/from16 v27, v37
    move/from16 v4, v41
    move-wide/from16 v17, v0
    move-wide/from16 v0, p5
    goto/16 :L0
  :L1
    return-void
.end method

.method private static c(Landroid/graphics/Path;FFFFFFFZZ)V
  .registers 51
    move/from16 v1, p1
    move/from16 v3, p3
    move/from16 v0, p5
    move/from16 v2, p6
    move/from16 v7, p7
    move/from16 v9, p9
    float-to-double v4, v7
  .line 1
    invoke-static { v4, v5 }, Ljava/lang/Math;->toRadians(D)D
    move-result-wide v19
  .line 2
    invoke-static/range { v19 .. v20 }, Ljava/lang/Math;->cos(D)D
    move-result-wide v4
  .line 3
    invoke-static/range { v19 .. v20 }, Ljava/lang/Math;->sin(D)D
    move-result-wide v10
    float-to-double v13, v1
  .line 4
    invoke-static { v13, v14 }, Ljava/lang/Double;->isNaN(D)Z
    mul-double v15, v13, v4
    move/from16 v6, p2
    move-wide/from16 v17, v13
    float-to-double v13, v6
    invoke-static { v13, v14 }, Ljava/lang/Double;->isNaN(D)Z
    mul-double v21, v13, v10
    add-double v15, v15, v21
    float-to-double v6, v0
    invoke-static { v6, v7 }, Ljava/lang/Double;->isNaN(D)Z
    div-double/2addr v15, v6
    neg-float v8, v1
    float-to-double v8, v8
  .line 5
    invoke-static { v8, v9 }, Ljava/lang/Double;->isNaN(D)Z
    mul-double v8, v8, v10
    invoke-static { v13, v14 }, Ljava/lang/Double;->isNaN(D)Z
    mul-double v21, v13, v4
    add-double v8, v8, v21
    move-wide/from16 v21, v13
    float-to-double v13, v2
    invoke-static { v13, v14 }, Ljava/lang/Double;->isNaN(D)Z
    div-double/2addr v8, v13
    float-to-double v1, v3
  .line 6
    invoke-static { v1, v2 }, Ljava/lang/Double;->isNaN(D)Z
    mul-double v1, v1, v4
    move/from16 v12, p4
    move-wide/from16 v23, v8
    float-to-double v8, v12
    invoke-static { v8, v9 }, Ljava/lang/Double;->isNaN(D)Z
    mul-double v25, v8, v10
    add-double v1, v1, v25
    invoke-static { v6, v7 }, Ljava/lang/Double;->isNaN(D)Z
    div-double/2addr v1, v6
    neg-float v12, v3
    move-wide/from16 v25, v6
    float-to-double v6, v12
  .line 7
    invoke-static { v6, v7 }, Ljava/lang/Double;->isNaN(D)Z
    mul-double v6, v6, v10
    invoke-static { v8, v9 }, Ljava/lang/Double;->isNaN(D)Z
    mul-double v8, v8, v4
    add-double/2addr v6, v8
    invoke-static { v13, v14 }, Ljava/lang/Double;->isNaN(D)Z
    div-double/2addr v6, v13
    sub-double v8, v15, v1
    sub-double v27, v23, v6
    add-double v29, v15, v1
    const-wide/high16 v31, 16384
    div-double v29, v29, v31
    add-double v33, v23, v6
    div-double v33, v33, v31
    mul-double v31, v8, v8
    mul-double v35, v27, v27
    move-wide/from16 v37, v10
    add-double v10, v31, v35
    const-wide/16 v31, 0
    cmpl-double v12, v10, v31
    if-nez v12, :L0
    return-void
  :L0
    const-wide/high16 v35, 16368
    div-double v35, v35, v10
    const-wide/high16 v39, 16336
    sub-double v35, v35, v39
    cmpg-double v12, v35, v31
    if-gez v12, :L1
  .line 8
    new-instance v1, Ljava/lang/StringBuilder;
    invoke-direct { v1 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v2, "Points are too far apart "
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v1, v10, v11 }, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;
    invoke-virtual { v1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
  .line 9
    invoke-static { v10, v11 }, Ljava/lang/Math;->sqrt(D)D
    move-result-wide v1
    const-wide v4, 4611685973391391630L
    div-double/2addr v1, v4
    double-to-float v1, v1
    mul-float v5, v0, v1
    mul-float v6, p6, v1
    move-object/from16 v0, p0
    move/from16 v1, p1
    move/from16 v2, p2
    move/from16 v3, p3
    move/from16 v4, p4
    move/from16 v7, p7
    move/from16 v8, p8
    move/from16 v9, p9
  .line 10
    invoke-static/range { v0 .. v9 }, Lc/g/d/c$b;->c(Landroid/graphics/Path;FFFFFFFZZ)V
    return-void
  :L1
  .line 11
    invoke-static/range { v35 .. v36 }, Ljava/lang/Math;->sqrt(D)D
    move-result-wide v10
    mul-double v8, v8, v10
    mul-double v10, v10, v27
    move/from16 v0, p8
    move/from16 v3, p9
    if-ne v0, v3, :L2
    sub-double v29, v29, v10
    add-double v33, v33, v8
    goto :L3
  :L2
    add-double v29, v29, v10
    sub-double v33, v33, v8
  :L3
    sub-double v8, v23, v33
    sub-double v10, v15, v29
  .line 12
    invoke-static { v8, v9, v10, v11 }, Ljava/lang/Math;->atan2(DD)D
    move-result-wide v23
    sub-double v6, v6, v33
    sub-double v1, v1, v29
  .line 13
    invoke-static { v6, v7, v1, v2 }, Ljava/lang/Math;->atan2(DD)D
    move-result-wide v0
    sub-double v0, v0, v23
    cmpl-double v2, v0, v31
    if-ltz v2, :L4
    const/4 v2, 1
    goto :L5
  :L4
    const/4 v2, 0
  :L5
    if-eq v3, v2, :L7
    const-wide v2, 4618760256179416344L
    cmpl-double v6, v0, v31
    if-lez v6, :L6
    sub-double/2addr v0, v2
    goto :L7
  :L6
    add-double/2addr v0, v2
  :L7
  .line 14
    invoke-static/range { v25 .. v26 }, Ljava/lang/Double;->isNaN(D)Z
    mul-double v29, v29, v25
  .line 15
    invoke-static { v13, v14 }, Ljava/lang/Double;->isNaN(D)Z
    mul-double v33, v33, v13
    mul-double v2, v29, v4
    mul-double v10, v33, v37
    sub-double v7, v2, v10
    move-wide/from16 v2, v25
    mul-double v29, v29, v37
    mul-double v33, v33, v4
    add-double v9, v29, v33
    move-object/from16 v6, p0
    move-wide v11, v2
    move-wide/from16 v2, v17
    move-wide/from16 v4, v21
    move-wide v15, v2
    move-wide/from16 v17, v4
    move-wide/from16 v21, v23
    move-wide/from16 v23, v0
  .line 16
    invoke-static/range { v6 .. v24 }, Lc/g/d/c$b;->b(Landroid/graphics/Path;DDDDDDDDD)V
    return-void
.end method

.method public static e([Lc/g/d/c$b;Landroid/graphics/Path;)V
  .registers 7
    const/4 v0, 6
    new-array v0, v0, [F
    const/16 v1, 109
    const/4 v2, 0
  :L0
  .line 1
    array-length v3, p0
    if-ge v2, v3, :L1
  .line 2
    aget-object v3, p0, v2
    iget-char v3, v3, Lc/g/d/c$b;->a:C
    aget-object v4, p0, v2
    iget-object v4, v4, Lc/g/d/c$b;->b:[F
    invoke-static { p1, v0, v1, v3, v4 }, Lc/g/d/c$b;->a(Landroid/graphics/Path;[FCC[F)V
  .line 3
    aget-object v1, p0, v2
    iget-char v1, v1, Lc/g/d/c$b;->a:C
    add-int/lit8 v2, v2, 1
    goto :L0
  :L1
    return-void
.end method

.method public d(Lc/g/d/c$b;Lc/g/d/c$b;F)V
  .registers 8
  .line 1
    iget-char v0, p1, Lc/g/d/c$b;->a:C
    iput-char v0, p0, Lc/g/d/c$b;->a:C
    const/4 v0, 0
  :L0
  .line 2
    iget-object v1, p1, Lc/g/d/c$b;->b:[F
    array-length v2, v1
    if-ge v0, v2, :L1
  .line 3
    iget-object v2, p0, Lc/g/d/c$b;->b:[F
    aget v1, v1, v0
    const/high16 v3, 16256
    sub-float/2addr v3, p3
    mul-float v1, v1, v3
    iget-object v3, p2, Lc/g/d/c$b;->b:[F
    aget v3, v3, v0
    mul-float v3, v3, p3
    add-float/2addr v1, v3
    aput v1, v2, v0
    add-int/lit8 v0, v0, 1
    goto :L0
  :L1
    return-void
.end method
