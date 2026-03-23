.class public Lcn/manstep/phonemirrorBox/c0;
.super Ljava/lang/Object;
.source "SourceFile"

.field private static l:Lcn/manstep/phonemirrorBox/c0;

.field private final a:Lcn/manstep/phonemirrorBox/util/x;

.field private final b:Lcn/manstep/phonemirrorBox/util/x;

.field private final c:Lcn/manstep/phonemirrorBox/util/x;

.field private final d:Ljava/util/List;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "Ljava/util/List<",
      "Lcn/manstep/phonemirrorBox/util/x;",
      ">;"
    }
  .end annotation
.end field

.field private final e:Lcn/manstep/phonemirrorBox/util/x;

.field private final f:Lcn/manstep/phonemirrorBox/util/x;

.field private final g:Lcn/manstep/phonemirrorBox/util/x;

.field private final h:Ljava/util/List;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "Ljava/util/List<",
      "Ljava/lang/String;",
      ">;"
    }
  .end annotation
.end field

.field private i:I

.field private j:I

.field private k:I

.method private constructor <init>()V
  .registers 2
  .line 1
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    const/4 v0, 0
  .line 2
    iput v0, p0, Lcn/manstep/phonemirrorBox/c0;->i:I
    const/16 v0, 100
  .line 3
    iput v0, p0, Lcn/manstep/phonemirrorBox/c0;->j:I
  .line 4
    iput v0, p0, Lcn/manstep/phonemirrorBox/c0;->k:I
  .line 5
    new-instance v0, Lcn/manstep/phonemirrorBox/util/x;
    invoke-direct { v0 }, Lcn/manstep/phonemirrorBox/util/x;-><init>()V
    iput-object v0, p0, Lcn/manstep/phonemirrorBox/c0;->c:Lcn/manstep/phonemirrorBox/util/x;
  .line 6
    new-instance v0, Lcn/manstep/phonemirrorBox/util/x;
    invoke-direct { v0 }, Lcn/manstep/phonemirrorBox/util/x;-><init>()V
    iput-object v0, p0, Lcn/manstep/phonemirrorBox/c0;->a:Lcn/manstep/phonemirrorBox/util/x;
  .line 7
    new-instance v0, Lcn/manstep/phonemirrorBox/util/x;
    invoke-direct { v0 }, Lcn/manstep/phonemirrorBox/util/x;-><init>()V
    iput-object v0, p0, Lcn/manstep/phonemirrorBox/c0;->b:Lcn/manstep/phonemirrorBox/util/x;
  .line 8
    new-instance v0, Ljava/util/LinkedList;
    invoke-direct { v0 }, Ljava/util/LinkedList;-><init>()V
    iput-object v0, p0, Lcn/manstep/phonemirrorBox/c0;->d:Ljava/util/List;
  .line 9
    new-instance v0, Lcn/manstep/phonemirrorBox/util/x;
    invoke-direct { v0 }, Lcn/manstep/phonemirrorBox/util/x;-><init>()V
    iput-object v0, p0, Lcn/manstep/phonemirrorBox/c0;->g:Lcn/manstep/phonemirrorBox/util/x;
  .line 10
    new-instance v0, Lcn/manstep/phonemirrorBox/util/x;
    invoke-direct { v0 }, Lcn/manstep/phonemirrorBox/util/x;-><init>()V
    iput-object v0, p0, Lcn/manstep/phonemirrorBox/c0;->f:Lcn/manstep/phonemirrorBox/util/x;
  .line 11
    new-instance v0, Lcn/manstep/phonemirrorBox/util/x;
    invoke-direct { v0 }, Lcn/manstep/phonemirrorBox/util/x;-><init>()V
    iput-object v0, p0, Lcn/manstep/phonemirrorBox/c0;->e:Lcn/manstep/phonemirrorBox/util/x;
  .line 12
    new-instance v0, Ljava/util/LinkedList;
    invoke-direct { v0 }, Ljava/util/LinkedList;-><init>()V
    iput-object v0, p0, Lcn/manstep/phonemirrorBox/c0;->h:Ljava/util/List;
    return-void
.end method

.method public static a()Lcn/manstep/phonemirrorBox/util/x;
  .registers 2
  .line 1
    invoke-static { }, Lcn/manstep/phonemirrorBox/c0;->i()Lcn/manstep/phonemirrorBox/c0;
    move-result-object v0
    iget-object v0, v0, Lcn/manstep/phonemirrorBox/c0;->c:Lcn/manstep/phonemirrorBox/util/x;
    return-object v0
.end method

.method public static b(I)Lcn/manstep/phonemirrorBox/util/x;
  .registers 2
  .line 1
    invoke-static { }, Lcn/manstep/phonemirrorBox/c0;->i()Lcn/manstep/phonemirrorBox/c0;
    move-result-object v0
    invoke-direct { v0, p0 }, Lcn/manstep/phonemirrorBox/c0;->n(I)V
  .line 2
    invoke-static { }, Lcn/manstep/phonemirrorBox/c0;->a()Lcn/manstep/phonemirrorBox/util/x;
    move-result-object p0
    return-object p0
.end method

.method private c(Lcn/manstep/phonemirrorBox/util/x;)V
  .registers 18
    move-object/from16 v0, p0
    move-object/from16 v1, p1
  .line 1
    iget-object v2, v0, Lcn/manstep/phonemirrorBox/c0;->d:Ljava/util/List;
    invoke-interface { v2 }, Ljava/util/List;->clear()V
    const/16 v2, 800
    const/16 v3, 480
    if-eqz v1, :L12
  .line 2
    invoke-virtual/range { p1 .. p1 }, Lcn/manstep/phonemirrorBox/util/x;->k()Z
    move-result v4
    if-eqz v4, :L0
    goto/16 :L12
  :L0
    const/4 v4, 4
    new-array v5, v4, [I
  .line 3
    fill-array-data v5, :L13
    const/4 v6, 0
  :L1
    if-ge v6, v4, :L11
  .line 4
    aget v7, v5, v6
  .line 5
    new-instance v8, Lcn/manstep/phonemirrorBox/util/x;
    invoke-direct { v8, v1 }, Lcn/manstep/phonemirrorBox/util/x;-><init>(Lcn/manstep/phonemirrorBox/util/x;)V
  .line 6
    iget v9, v1, Lcn/manstep/phonemirrorBox/util/x;->c:I
    iget v10, v1, Lcn/manstep/phonemirrorBox/util/x;->b:I
    const/16 v11, 2560
    const/16 v12, 1280
    const/16 v13, 720
    const/16 v14, 1920
    const/16 v15, 1440
    const/16 v4, 1080
    if-ge v9, v10, :L5
    if-ne v7, v3, :L2
    const/16 v11, 800
    goto :L9
  :L2
    if-ne v7, v4, :L3
    const/16 v11, 1920
    goto :L9
  :L3
    if-ne v7, v15, :L4
    goto :L9
  :L4
    const/16 v7, 720
    const/16 v11, 1280
    goto :L9
  :L5
    if-ne v7, v3, :L6
    const/16 v7, 800
    const/16 v11, 480
    goto :L9
  :L6
    if-ne v7, v4, :L7
    const/16 v7, 1920
    const/16 v11, 1080
    goto :L9
  :L7
    if-ne v7, v15, :L8
    const/16 v7, 2560
    const/16 v11, 1440
    goto :L9
  :L8
    const/16 v7, 1280
    const/16 v11, 720
  :L9
  .line 7
    iput v7, v8, Lcn/manstep/phonemirrorBox/util/x;->c:I
    int-to-float v4, v7
    const/high16 v7, 16256
    mul-float v4, v4, v7
  .line 8
    iget v9, v1, Lcn/manstep/phonemirrorBox/util/x;->b:I
    int-to-float v9, v9
    mul-float v4, v4, v9
    iget v9, v1, Lcn/manstep/phonemirrorBox/util/x;->c:I
    int-to-float v10, v9
    div-float/2addr v4, v10
    float-to-int v4, v4
    const v10, 65534
    and-int/2addr v4, v10
    iput v4, v8, Lcn/manstep/phonemirrorBox/util/x;->b:I
    if-le v4, v11, :L10
  .line 9
    iput v11, v8, Lcn/manstep/phonemirrorBox/util/x;->b:I
    int-to-float v4, v11
    mul-float v4, v4, v7
    int-to-float v7, v9
    mul-float v4, v4, v7
  .line 10
    iget v7, v1, Lcn/manstep/phonemirrorBox/util/x;->b:I
    int-to-float v7, v7
    div-float/2addr v4, v7
    float-to-int v4, v4
    and-int/2addr v4, v10
    iput v4, v8, Lcn/manstep/phonemirrorBox/util/x;->c:I
  :L10
  .line 11
    iget-object v4, v0, Lcn/manstep/phonemirrorBox/c0;->d:Ljava/util/List;
    invoke-interface { v4, v8 }, Ljava/util/List;->add(Ljava/lang/Object;)Z
    add-int/lit8 v6, v6, 1
    const/4 v4, 4
    goto :L1
  :L11
    return-void
  :L12
  .line 12
    iget-object v1, v0, Lcn/manstep/phonemirrorBox/c0;->d:Ljava/util/List;
    new-instance v4, Lcn/manstep/phonemirrorBox/util/x;
    invoke-direct { v4, v2, v3 }, Lcn/manstep/phonemirrorBox/util/x;-><init>(II)V
    invoke-interface { v1, v4 }, Ljava/util/List;->add(Ljava/lang/Object;)Z
    return-void
  :L13
  .array-data 4
    -32t 1t 0t 0t
    -48t 2t 0t 0t
    56t 4t 0t 0t
    -96t 5t 0t 0t
  .end array-data
.end method

.method private d(II)I
  .registers 4
    mul-int p1, p1, p2
    const p2, 384000
    if-ge p1, p2, :L0
    const/16 p1, 100
    return p1
  :L0
    const/high16 v0, 16288
    sub-int/2addr p1, p2
    mul-int/lit8 p1, p1, 23
    const p2, 998400
  .line 1
    div-int/2addr p1, p2
    add-int/lit8 p1, p1, 120
    int-to-float p1, p1
    mul-float p1, p1, v0
    float-to-int p1, p1
  .line 2
    rem-int/lit8 p2, p1, 10
    rsub-int/lit8 p2, p2, 10
    sub-int/2addr p1, p2
    return p1
.end method

.method private e(IIIILjava/util/List;)I
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(IIII",
      "Ljava/util/List<",
      "Ljava/lang/String;",
      ">;)I"
    }
  .end annotation
  .registers 23
    move/from16 v0, p1
    move/from16 v1, p2
    move-object/from16 v2, p5
  .line 1
    new-instance v3, Ljava/util/LinkedList;
    invoke-direct { v3 }, Ljava/util/LinkedList;-><init>()V
    const/4 v4, 0
    const/4 v5, 0
  :L0
    const/16 v6, 10
    const-wide v7, 4587366580439587226L
    const-wide/high16 v9, 16368
    const-string v11, "x"
    if-ge v5, v6, :L5
    int-to-double v13, v0
    move-wide v15, v13
    int-to-double v12, v5
  .line 2
    invoke-static { v12, v13 }, Ljava/lang/Double;->isNaN(D)Z
    mul-double v12, v12, v7
    sub-double v12, v9, v12
    invoke-static/range { v15 .. v16 }, Ljava/lang/Double;->isNaN(D)Z
    mul-double v14, v15, v12
    invoke-static { v14, v15 }, Ljava/lang/Math;->ceil(D)D
    move-result-wide v14
    double-to-int v14, v14
  .line 3
    rem-int/lit8 v15, v14, 2
    const/4 v6, 1
    if-ne v15, v6, :L1
    add-int/lit8 v14, v14, -1
  :L1
    int-to-double v9, v1
  .line 4
    invoke-static { v9, v10 }, Ljava/lang/Double;->isNaN(D)Z
    mul-double v9, v9, v12
    invoke-static { v9, v10 }, Ljava/lang/Math;->ceil(D)D
    move-result-wide v9
    double-to-int v9, v9
  .line 5
    rem-int/lit8 v10, v9, 2
    const/4 v6, 1
    if-ne v10, v6, :L2
    add-int/lit8 v9, v9, -1
  :L2
    if-le v0, v1, :L3
    const/16 v10, 730
    if-lt v14, v10, :L5
    const/16 v10, 480
    if-ge v9, v10, :L4
    goto :L5
  :L3
    const/16 v10, 570
    if-lt v14, v10, :L5
    const/16 v10, 800
    if-ge v9, v10, :L4
    goto :L5
  :L4
  .line 6
    new-instance v6, Ljava/lang/StringBuilder;
    invoke-direct { v6 }, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual { v6, v14 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { v6, v11 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v6, v9 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { v6 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v6
  .line 7
    invoke-interface { v3, v6 }, Ljava/util/List;->add(Ljava/lang/Object;)Z
    add-int/lit8 v5, v5, 1
    goto :L0
  :L5
    if-eqz v2, :L8
  .line 8
    invoke-interface { v3 }, Ljava/util/List;->size()I
    move-result v5
    if-nez v5, :L6
  .line 9
    new-instance v3, Ljava/lang/StringBuilder;
    invoke-direct { v3 }, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual { v3, v0 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { v3, v11 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v3, v1 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { v3 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v3
    invoke-interface { v2, v3 }, Ljava/util/List;->add(Ljava/lang/Object;)Z
    goto :L8
  :L6
  .line 10
    invoke-interface { v3 }, Ljava/util/List;->size()I
    move-result v5
    const/4 v9, 3
    if-gt v5, v9, :L7
  .line 11
    invoke-interface { v2, v3 }, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    goto :L8
  :L7
  .line 12
    invoke-interface { v3, v4 }, Ljava/util/List;->get(I)Ljava/lang/Object;
    move-result-object v5
    check-cast v5, Ljava/lang/String;
  .line 13
    invoke-interface { v3 }, Ljava/util/List;->size()I
    move-result v9
    div-int/lit8 v9, v9, 2
    invoke-interface { v3, v9 }, Ljava/util/List;->get(I)Ljava/lang/Object;
    move-result-object v9
    check-cast v9, Ljava/lang/String;
  .line 14
    invoke-interface { v3 }, Ljava/util/List;->size()I
    move-result v10
    const/4 v6, 1
    sub-int/2addr v10, v6
    invoke-interface { v3, v10 }, Ljava/util/List;->get(I)Ljava/lang/Object;
    move-result-object v3
    check-cast v3, Ljava/lang/String;
  .line 15
    invoke-interface/range { p5 .. p5 }, Ljava/util/List;->clear()V
  .line 16
    invoke-interface { v2, v5 }, Ljava/util/List;->add(Ljava/lang/Object;)Z
  .line 17
    invoke-interface { v2, v9 }, Ljava/util/List;->add(Ljava/lang/Object;)Z
  .line 18
    invoke-interface { v2, v3 }, Ljava/util/List;->add(Ljava/lang/Object;)Z
  :L8
    const/16 v3, 1920
    if-ne v0, v3, :L9
    const/16 v3, 1080
    if-lt v1, v3, :L9
    const/16 v3, 1152
    if-ge v1, v3, :L9
    if-eqz v2, :L10
    const-string v3, "1920x1152"
  .line 19
    invoke-interface { v2, v3 }, Ljava/util/List;->add(Ljava/lang/Object;)Z
    goto :L10
  :L9
    const/16 v3, 1280
    if-ne v0, v3, :L10
    const/16 v3, 720
    if-lt v1, v3, :L10
    const/16 v3, 768
    if-ge v1, v3, :L10
    if-eqz v2, :L10
    const-string v3, "1088x768"
  .line 20
    invoke-interface { v2, v3 }, Ljava/util/List;->add(Ljava/lang/Object;)Z
  :L10
    if-eqz v2, :L14
    const/4 v3, 1
  :L11
    const/4 v5, 4
    if-ge v3, v5, :L14
    int-to-double v9, v0
    int-to-double v12, v3
  .line 21
    invoke-static { v12, v13 }, Ljava/lang/Double;->isNaN(D)Z
    mul-double v12, v12, v7
    const-wide/high16 v14, 16368
    add-double/2addr v12, v14
    invoke-static { v9, v10 }, Ljava/lang/Double;->isNaN(D)Z
    mul-double v9, v9, v12
    invoke-static { v9, v10 }, Ljava/lang/Math;->ceil(D)D
    move-result-wide v9
    double-to-int v5, v9
  .line 22
    rem-int/lit8 v9, v5, 2
    const/4 v6, 1
    if-ne v9, v6, :L12
    add-int/lit8 v5, v5, 1
  :L12
    int-to-double v9, v1
  .line 23
    invoke-static { v9, v10 }, Ljava/lang/Double;->isNaN(D)Z
    mul-double v9, v9, v12
    invoke-static { v9, v10 }, Ljava/lang/Math;->ceil(D)D
    move-result-wide v9
    double-to-int v9, v9
  .line 24
    rem-int/lit8 v10, v9, 2
    const/4 v6, 1
    if-ne v10, v6, :L13
    add-int/lit8 v9, v9, 1
  :L13
  .line 25
    new-instance v10, Ljava/lang/StringBuilder;
    invoke-direct { v10 }, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual { v10, v5 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { v10, v11 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v10, v9 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { v10 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v5
  .line 26
    invoke-interface { v2, v5 }, Ljava/util/List;->add(Ljava/lang/Object;)Z
    add-int/lit8 v3, v3, 1
    goto :L11
  :L14
    if-eqz v2, :L17
  .line 27
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    move/from16 v1, p3
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { v0, v11 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move/from16 v1, p4
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    const/4 v1, 0
  :L15
  .line 28
    invoke-interface/range { p5 .. p5 }, Ljava/util/List;->size()I
    move-result v3
    if-ge v1, v3, :L17
  .line 29
    invoke-interface { v2, v1 }, Ljava/util/List;->get(I)Ljava/lang/Object;
    move-result-object v3
    invoke-virtual { v0, v3 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v3
    if-eqz v3, :L16
    move v4, v1
    goto :L17
  :L16
    add-int/lit8 v1, v1, 1
    goto :L15
  :L17
    return v4
.end method

.method public static i()Lcn/manstep/phonemirrorBox/c0;
  .catchall { :L0 .. :L3 } :L2
  .registers 4
  .line 1
    sget-object v0, Lcn/manstep/phonemirrorBox/c0;->l:Lcn/manstep/phonemirrorBox/c0;
    if-nez v0, :L4
  .line 2
    const-class v0, Lcn/manstep/phonemirrorBox/c0;
    monitor-enter v0
  :L0
  .line 3
    sget-object v1, Lcn/manstep/phonemirrorBox/c0;->l:Lcn/manstep/phonemirrorBox/c0;
    if-nez v1, :L1
  .line 4
    new-instance v1, Lcn/manstep/phonemirrorBox/c0;
    invoke-direct { v1 }, Lcn/manstep/phonemirrorBox/c0;-><init>()V
    sput-object v1, Lcn/manstep/phonemirrorBox/c0;->l:Lcn/manstep/phonemirrorBox/c0;
  :L1
  .line 5
    monitor-exit v0
    goto :L4
  :L2
    move-exception v1
    monitor-exit v0
  :L3
    throw v1
  :L4
  .line 6
    sget-object v0, Lcn/manstep/phonemirrorBox/c0;->l:Lcn/manstep/phonemirrorBox/c0;
    return-object v0
.end method

.method public static j(IIIILjava/lang/String;I)Lcn/manstep/phonemirrorBox/c0;
  .registers 8
  .line 1
    invoke-static { }, Lcn/manstep/phonemirrorBox/c0;->i()Lcn/manstep/phonemirrorBox/c0;
  .line 2
    sget-object v0, Lcn/manstep/phonemirrorBox/c0;->l:Lcn/manstep/phonemirrorBox/c0;
    iget-object v0, v0, Lcn/manstep/phonemirrorBox/c0;->a:Lcn/manstep/phonemirrorBox/util/x;
    invoke-virtual { v0, p0, p1 }, Lcn/manstep/phonemirrorBox/util/x;->m(II)V
  .line 3
    sget-object v0, Lcn/manstep/phonemirrorBox/c0;->l:Lcn/manstep/phonemirrorBox/c0;
    iget-object v0, v0, Lcn/manstep/phonemirrorBox/c0;->b:Lcn/manstep/phonemirrorBox/util/x;
    invoke-virtual { v0, p2, p3 }, Lcn/manstep/phonemirrorBox/util/x;->m(II)V
  .line 4
    sget-object v0, Lcn/manstep/phonemirrorBox/c0;->l:Lcn/manstep/phonemirrorBox/c0;
    iput p5, v0, Lcn/manstep/phonemirrorBox/c0;->i:I
  .line 5
    invoke-static { }, Lcn/manstep/phonemirrorBox/u;->z()Lcn/manstep/phonemirrorBox/u;
    move-result-object p5
    invoke-virtual { p5 }, Lcn/manstep/phonemirrorBox/u;->Y()Z
    move-result p5
    if-nez p5, :L3
  .line 6
    invoke-static { }, Lcn/manstep/phonemirrorBox/u;->z()Lcn/manstep/phonemirrorBox/u;
    move-result-object p5
    invoke-virtual { p5 }, Lcn/manstep/phonemirrorBox/u;->u()Landroid/view/WindowManager$LayoutParams;
    move-result-object p5
    if-eqz p5, :L1
  .line 7
    iget v0, p5, Landroid/view/WindowManager$LayoutParams;->width:I
    if-lez v0, :L0
    move p1, p3
    move p0, v0
  :L0
  .line 8
    iget p5, p5, Landroid/view/WindowManager$LayoutParams;->height:I
    if-lez p5, :L1
    move p0, p2
    move p1, p5
  :L1
  .line 9
    invoke-static { }, Lcn/manstep/phonemirrorBox/u;->z()Lcn/manstep/phonemirrorBox/u;
    move-result-object p5
    invoke-static { }, Lcn/manstep/phonemirrorBox/MyApplication;->b()Lcn/manstep/phonemirrorBox/MyApplication;
    move-result-object v0
    invoke-virtual { v0 }, Landroid/app/Application;->getResources()Landroid/content/res/Resources;
    move-result-object v0
    const v1, 2131361823
    invoke-virtual { v0, v1 }, Landroid/content/res/Resources;->getInteger(I)I
    move-result v0
    invoke-virtual { p5, v0 }, Lcn/manstep/phonemirrorBox/u;->G(I)I
    move-result p5
    sub-int/2addr p0, p5
    if-le p1, p0, :L2
  .line 10
    sget-object p0, Lcn/manstep/phonemirrorBox/c0;->l:Lcn/manstep/phonemirrorBox/c0;
    invoke-direct { p0, p2, p3, p2, p3 }, Lcn/manstep/phonemirrorBox/c0;->p(IIII)Lcn/manstep/phonemirrorBox/c0;
    goto :L6
  :L2
  .line 11
    sget-object p2, Lcn/manstep/phonemirrorBox/c0;->l:Lcn/manstep/phonemirrorBox/c0;
    invoke-direct { p2, p0, p1, p0, p1 }, Lcn/manstep/phonemirrorBox/c0;->p(IIII)Lcn/manstep/phonemirrorBox/c0;
    goto :L6
  :L3
    const-string p5, "x"
    const-string v0, "vmaxwh"
    if-le p1, p0, :L4
  .line 12
    invoke-static { }, Lcn/manstep/phonemirrorBox/b0;->i()Lcn/manstep/phonemirrorBox/b0;
    move-result-object p0
    new-instance p1, Ljava/lang/StringBuilder;
    invoke-direct { p1 }, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual { p1, p2 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { p1, p5 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { p1, p3 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { p1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p1
    invoke-virtual { p0, v0, p1 }, Lcn/manstep/phonemirrorBox/b0;->n(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    move-result-object p0
    goto :L5
  :L4
  .line 13
    invoke-static { }, Lcn/manstep/phonemirrorBox/b0;->i()Lcn/manstep/phonemirrorBox/b0;
    move-result-object p2
    new-instance p3, Ljava/lang/StringBuilder;
    invoke-direct { p3 }, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual { p3, p0 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { p3, p5 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { p3, p1 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { p3 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p0
    invoke-virtual { p2, v0, p0 }, Lcn/manstep/phonemirrorBox/b0;->n(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    move-result-object p0
  :L5
  .line 14
    new-instance p1, Ljava/lang/StringBuilder;
    invoke-direct { p1 }, Ljava/lang/StringBuilder;-><init>()V
    const-string p2, "getInstance: "
    invoke-virtual { p1, p2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { p1, p0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { p1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p1
    const-string p2, "VideoSize"
    invoke-static { p2, p1 }, Lcn/manstep/phonemirrorBox/util/s;->d(Ljava/lang/String;Ljava/lang/String;)V
  .line 15
    invoke-static { p0 }, Lcn/manstep/phonemirrorBox/util/x;->l(Ljava/lang/String;)Lcn/manstep/phonemirrorBox/util/x;
    move-result-object p0
  .line 16
    sget-object p1, Lcn/manstep/phonemirrorBox/c0;->l:Lcn/manstep/phonemirrorBox/c0;
    iget p2, p0, Lcn/manstep/phonemirrorBox/util/x;->b:I
    iget p0, p0, Lcn/manstep/phonemirrorBox/util/x;->c:I
    invoke-virtual { p1, p2, p0 }, Lcn/manstep/phonemirrorBox/c0;->o(II)Lcn/manstep/phonemirrorBox/c0;
  :L6
  .line 17
    invoke-static { p4 }, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    move-result p0
    if-nez p0, :L7
  .line 18
    invoke-static { p4 }, Lcn/manstep/phonemirrorBox/util/x;->l(Ljava/lang/String;)Lcn/manstep/phonemirrorBox/util/x;
    move-result-object p0
  .line 19
    sget-object p1, Lcn/manstep/phonemirrorBox/c0;->l:Lcn/manstep/phonemirrorBox/c0;
    iget p2, p0, Lcn/manstep/phonemirrorBox/util/x;->b:I
    iget p0, p0, Lcn/manstep/phonemirrorBox/util/x;->c:I
    invoke-virtual { p1, p2, p0 }, Lcn/manstep/phonemirrorBox/c0;->r(II)V
  :L7
  .line 20
    sget-object p0, Lcn/manstep/phonemirrorBox/c0;->l:Lcn/manstep/phonemirrorBox/c0;
    return-object p0
.end method

.method private k(II)Z
  .registers 6
  .line 1
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual { v0, p1 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    const-string p1, "x"
    invoke-virtual { v0, p1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0, p2 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p1
    invoke-virtual { p1 }, Ljava/lang/String;->hashCode()I
    move-result p2
    const v0, 802059919
    const/4 v1, 0
    const/4 v2, 1
    if-eq p2, v0, :L1
    const v0, 807443360
    if-eq p2, v0, :L0
    goto :L2
  :L0
    const-string p2, "1088x768"
    invoke-virtual { p1, p2 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result p1
    if-eqz p1, :L2
    const/4 p1, 1
    goto :L3
  :L1
    const-string p2, "1920x1152"
    invoke-virtual { p1, p2 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result p1
    if-eqz p1, :L2
    const/4 p1, 0
    goto :L3
  :L2
    const/4 p1, -1
  :L3
    if-eqz p1, :L4
    if-eq p1, v2, :L4
    return v1
  :L4
    return v2
.end method

.method public static l()Ljava/util/List;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "()",
      "Ljava/util/List<",
      "Ljava/lang/String;",
      ">;"
    }
  .end annotation
  .registers 3
  .line 1
    invoke-static { }, Lcn/manstep/phonemirrorBox/c0;->i()Lcn/manstep/phonemirrorBox/c0;
    move-result-object v0
    iget-object v0, v0, Lcn/manstep/phonemirrorBox/c0;->h:Ljava/util/List;
    return-object v0
.end method

.method public static m()Lcn/manstep/phonemirrorBox/util/x;
  .registers 2
  .line 1
    invoke-static { }, Lcn/manstep/phonemirrorBox/c0;->i()Lcn/manstep/phonemirrorBox/c0;
    move-result-object v0
    iget-object v0, v0, Lcn/manstep/phonemirrorBox/c0;->e:Lcn/manstep/phonemirrorBox/util/x;
    return-object v0
.end method

.method private n(I)V
  .registers 5
  .line 1
    iput p1, p0, Lcn/manstep/phonemirrorBox/c0;->i:I
  .line 2
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/c0;->d:Ljava/util/List;
    invoke-interface { v0 }, Ljava/util/List;->size()I
    move-result v0
    const/4 v1, 0
    const/4 v2, 2
    if-ge v0, v2, :L0
  .line 3
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/c0;->c:Lcn/manstep/phonemirrorBox/util/x;
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/c0;->d:Ljava/util/List;
    invoke-interface { v0, v1 }, Ljava/util/List;->get(I)Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Lcn/manstep/phonemirrorBox/util/x;
    invoke-virtual { p1, v0 }, Lcn/manstep/phonemirrorBox/util/x;->n(Lcn/manstep/phonemirrorBox/util/x;)V
    goto :L5
  :L0
    const/16 v0, 1440
    if-ne p1, v0, :L1
  .line 4
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/c0;->c:Lcn/manstep/phonemirrorBox/util/x;
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/c0;->d:Ljava/util/List;
    const/4 v1, 3
    invoke-interface { v0, v1 }, Ljava/util/List;->get(I)Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Lcn/manstep/phonemirrorBox/util/x;
    invoke-virtual { p1, v0 }, Lcn/manstep/phonemirrorBox/util/x;->n(Lcn/manstep/phonemirrorBox/util/x;)V
    goto :L5
  :L1
    const/16 v0, 1080
    if-ne p1, v0, :L2
  .line 5
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/c0;->c:Lcn/manstep/phonemirrorBox/util/x;
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/c0;->d:Ljava/util/List;
    invoke-interface { v0, v2 }, Ljava/util/List;->get(I)Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Lcn/manstep/phonemirrorBox/util/x;
    invoke-virtual { p1, v0 }, Lcn/manstep/phonemirrorBox/util/x;->n(Lcn/manstep/phonemirrorBox/util/x;)V
    goto :L5
  :L2
    const/16 v0, 720
    const/4 v2, 1
    if-ne p1, v0, :L3
  .line 6
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/c0;->c:Lcn/manstep/phonemirrorBox/util/x;
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/c0;->d:Ljava/util/List;
    invoke-interface { v0, v2 }, Ljava/util/List;->get(I)Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Lcn/manstep/phonemirrorBox/util/x;
    invoke-virtual { p1, v0 }, Lcn/manstep/phonemirrorBox/util/x;->n(Lcn/manstep/phonemirrorBox/util/x;)V
    goto :L5
  :L3
    const/16 v0, 480
    if-ne p1, v0, :L4
  .line 7
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/c0;->c:Lcn/manstep/phonemirrorBox/util/x;
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/c0;->d:Ljava/util/List;
    invoke-interface { v0, v1 }, Ljava/util/List;->get(I)Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Lcn/manstep/phonemirrorBox/util/x;
    invoke-virtual { p1, v0 }, Lcn/manstep/phonemirrorBox/util/x;->n(Lcn/manstep/phonemirrorBox/util/x;)V
    goto :L5
  :L4
  .line 8
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/c0;->c:Lcn/manstep/phonemirrorBox/util/x;
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/c0;->d:Ljava/util/List;
    invoke-interface { v0, v2 }, Ljava/util/List;->get(I)Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Lcn/manstep/phonemirrorBox/util/x;
    invoke-virtual { p1, v0 }, Lcn/manstep/phonemirrorBox/util/x;->n(Lcn/manstep/phonemirrorBox/util/x;)V
  :L5
  .line 9
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/c0;->c:Lcn/manstep/phonemirrorBox/util/x;
    iget v0, p1, Lcn/manstep/phonemirrorBox/util/x;->b:I
    iget p1, p1, Lcn/manstep/phonemirrorBox/util/x;->c:I
    if-le v0, p1, :L6
    const v1, 1067030938
  .line 10
    invoke-direct { p0, v0, p1 }, Lcn/manstep/phonemirrorBox/c0;->d(II)I
    move-result p1
    int-to-float p1, p1
    mul-float p1, p1, v1
    float-to-int p1, p1
    iput p1, p0, Lcn/manstep/phonemirrorBox/c0;->k:I
    goto :L7
  :L6
  .line 11
    invoke-direct { p0, v0, p1 }, Lcn/manstep/phonemirrorBox/c0;->d(II)I
    move-result p1
    iput p1, p0, Lcn/manstep/phonemirrorBox/c0;->k:I
  :L7
  .line 12
    new-instance p1, Ljava/lang/StringBuilder;
    invoke-direct { p1 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v0, "setAutoSize: AndroidAuto dpi="
    invoke-virtual { p1, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget v0, p0, Lcn/manstep/phonemirrorBox/c0;->k:I
    invoke-virtual { p1, v0 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    const-string v0, ","
    invoke-virtual { p1, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/c0;->c:Lcn/manstep/phonemirrorBox/util/x;
    iget v0, v0, Lcn/manstep/phonemirrorBox/util/x;->b:I
    invoke-virtual { p1, v0 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    const-string v0, "x"
    invoke-virtual { p1, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/c0;->c:Lcn/manstep/phonemirrorBox/util/x;
    iget v0, v0, Lcn/manstep/phonemirrorBox/util/x;->c:I
    invoke-virtual { p1, v0 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { p1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p1
    const-string v0, "VideoSize"
    invoke-static { v0, p1 }, Lcn/manstep/phonemirrorBox/util/s;->d(Ljava/lang/String;Ljava/lang/String;)V
    return-void
.end method

.method private p(IIII)Lcn/manstep/phonemirrorBox/c0;
  .registers 13
  .line 1
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "setMax: "
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0, p1 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    const-string v1, "x"
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0, p2 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    const-string v2, ",def="
    invoke-virtual { v0, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0, p3 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0, p4 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    const-string v1, "VideoSize"
    invoke-static { v1, v0 }, Lcn/manstep/phonemirrorBox/util/s;->d(Ljava/lang/String;Ljava/lang/String;)V
    const/4 v0, -1
    if-ne p1, v0, :L0
  .line 2
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/c0;->a:Lcn/manstep/phonemirrorBox/util/x;
    iget p1, p1, Lcn/manstep/phonemirrorBox/util/x;->b:I
  :L0
    move v3, p1
    if-lez p2, :L2
    if-lez p4, :L2
    int-to-float p1, v3
    int-to-float v0, p2
    div-float/2addr p1, v0
    int-to-float v0, p3
    int-to-float v2, p4
    div-float/2addr v0, v2
    sub-float/2addr p1, v0
  .line 3
    invoke-static { p1 }, Ljava/lang/Math;->abs(F)F
    move-result p1
    const v0, 1008981770
    cmpg-float p1, p1, v0
    if-gez p1, :L1
  .line 4
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/c0;->g:Lcn/manstep/phonemirrorBox/util/x;
    invoke-virtual { p1, p3, p4 }, Lcn/manstep/phonemirrorBox/util/x;->m(II)V
    goto :L2
  :L1
  .line 5
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/c0;->g:Lcn/manstep/phonemirrorBox/util/x;
    invoke-virtual { p1, v3, p2 }, Lcn/manstep/phonemirrorBox/util/x;->m(II)V
  :L2
  .line 6
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/c0;->e:Lcn/manstep/phonemirrorBox/util/x;
    iget v0, p1, Lcn/manstep/phonemirrorBox/util/x;->b:I
    if-ne v0, v3, :L3
    iget p1, p1, Lcn/manstep/phonemirrorBox/util/x;->c:I
    if-eq p1, p2, :L4
  :L3
  .line 7
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/c0;->e:Lcn/manstep/phonemirrorBox/util/x;
    invoke-virtual { p1, v3, p2 }, Lcn/manstep/phonemirrorBox/util/x;->m(II)V
  .line 8
    iget-object v7, p0, Lcn/manstep/phonemirrorBox/c0;->h:Ljava/util/List;
    move-object v2, p0
    move v4, p2
    move v5, p3
    move v6, p4
    invoke-direct/range { v2 .. v7 }, Lcn/manstep/phonemirrorBox/c0;->e(IIIILjava/util/List;)I
    move-result p1
  .line 9
    iget-object p2, p0, Lcn/manstep/phonemirrorBox/c0;->e:Lcn/manstep/phonemirrorBox/util/x;
    invoke-direct { p0, p2 }, Lcn/manstep/phonemirrorBox/c0;->c(Lcn/manstep/phonemirrorBox/util/x;)V
  .line 10
    iget p2, p0, Lcn/manstep/phonemirrorBox/c0;->i:I
    invoke-direct { p0, p2 }, Lcn/manstep/phonemirrorBox/c0;->n(I)V
  .line 11
    iget-object p2, p0, Lcn/manstep/phonemirrorBox/c0;->h:Ljava/util/List;
    invoke-interface { p2, p1 }, Ljava/util/List;->get(I)Ljava/lang/Object;
    move-result-object p1
    check-cast p1, Ljava/lang/String;
    invoke-virtual { p0, p1 }, Lcn/manstep/phonemirrorBox/c0;->s(Ljava/lang/String;)V
  :L4
  .line 12
    new-instance p1, Ljava/lang/StringBuilder;
    invoke-direct { p1 }, Ljava/lang/StringBuilder;-><init>()V
    const-string p2, "setMax: videoMaxSize="
    invoke-virtual { p1, p2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget-object p2, p0, Lcn/manstep/phonemirrorBox/c0;->e:Lcn/manstep/phonemirrorBox/util/x;
    invoke-virtual { p1, p2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    const-string p2, ",videoSize="
    invoke-virtual { p1, p2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget-object p2, p0, Lcn/manstep/phonemirrorBox/c0;->f:Lcn/manstep/phonemirrorBox/util/x;
    invoke-virtual { p1, p2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    const-string p2, ",autoSize="
    invoke-virtual { p1, p2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget-object p2, p0, Lcn/manstep/phonemirrorBox/c0;->c:Lcn/manstep/phonemirrorBox/util/x;
    invoke-virtual { p1, p2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    invoke-virtual { p1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p1
    invoke-static { v1, p1 }, Lcn/manstep/phonemirrorBox/util/s;->d(Ljava/lang/String;Ljava/lang/String;)V
    return-object p0
.end method

.method public static t()Lcn/manstep/phonemirrorBox/util/x;
  .registers 3
  .line 1
    invoke-static { }, Lcn/manstep/phonemirrorBox/c0;->i()Lcn/manstep/phonemirrorBox/c0;
    move-result-object v0
    iget-object v0, v0, Lcn/manstep/phonemirrorBox/c0;->f:Lcn/manstep/phonemirrorBox/util/x;
    return-object v0
.end method

.method public f()I
  .registers 2
  .line 1
    iget v0, p0, Lcn/manstep/phonemirrorBox/c0;->k:I
    return v0
.end method

.method public g(II)Lcn/manstep/phonemirrorBox/util/x;
  .registers 8
  .line 1
    new-instance v0, Lcn/manstep/phonemirrorBox/util/x;
    invoke-direct { v0 }, Lcn/manstep/phonemirrorBox/util/x;-><init>()V
  .line 2
    iput p2, v0, Lcn/manstep/phonemirrorBox/util/x;->c:I
    int-to-float p2, p2
    const/high16 v1, 16256
    mul-float p2, p2, v1
  .line 3
    iget-object v2, p0, Lcn/manstep/phonemirrorBox/c0;->e:Lcn/manstep/phonemirrorBox/util/x;
    iget v3, v2, Lcn/manstep/phonemirrorBox/util/x;->b:I
    int-to-float v3, v3
    mul-float p2, p2, v3
    iget v3, v2, Lcn/manstep/phonemirrorBox/util/x;->c:I
    int-to-float v4, v3
    div-float/2addr p2, v4
    float-to-int p2, p2
    const v4, 65534
    and-int/2addr p2, v4
    iput p2, v0, Lcn/manstep/phonemirrorBox/util/x;->b:I
    if-le p2, p1, :L0
  .line 4
    iput p1, v0, Lcn/manstep/phonemirrorBox/util/x;->b:I
    int-to-float p1, p1
    mul-float p1, p1, v1
    int-to-float p2, v3
    mul-float p1, p1, p2
  .line 5
    iget p2, v2, Lcn/manstep/phonemirrorBox/util/x;->b:I
    int-to-float p2, p2
    div-float/2addr p1, p2
    float-to-int p1, p1
    and-int/2addr p1, v4
    iput p1, v0, Lcn/manstep/phonemirrorBox/util/x;->c:I
  :L0
    return-object v0
.end method

.method public h()I
  .registers 2
  .line 1
    iget v0, p0, Lcn/manstep/phonemirrorBox/c0;->j:I
    return v0
.end method

.method public o(II)Lcn/manstep/phonemirrorBox/c0;
  .registers 5
  .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/c0;->g:Lcn/manstep/phonemirrorBox/util/x;
    iget v1, v0, Lcn/manstep/phonemirrorBox/util/x;->b:I
    iget v0, v0, Lcn/manstep/phonemirrorBox/util/x;->c:I
    invoke-direct { p0, p1, p2, v1, v0 }, Lcn/manstep/phonemirrorBox/c0;->p(IIII)Lcn/manstep/phonemirrorBox/c0;
    return-object p0
.end method

.method public q(II)Lcn/manstep/phonemirrorBox/c0;
  .registers 6
    if-lez p1, :L1
    if-gtz p2, :L0
    goto :L1
  :L0
  .line 1
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "setMaxByMeasure: "
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0, p1 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    const-string v1, "x"
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0, p2 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    const-string v2, "VideoSize"
    invoke-static { v2, v0 }, Lcn/manstep/phonemirrorBox/util/s;->d(Ljava/lang/String;Ljava/lang/String;)V
  .line 2
    invoke-static { }, Lcn/manstep/phonemirrorBox/b0;->i()Lcn/manstep/phonemirrorBox/b0;
    move-result-object v0
    new-instance v2, Ljava/lang/StringBuilder;
    invoke-direct { v2 }, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual { v2, p1 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { v2, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v2, p2 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { v2 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v1
    const-string v2, "vmaxwh"
    invoke-virtual { v0, v2, v1 }, Lcn/manstep/phonemirrorBox/b0;->F(Ljava/lang/String;Ljava/lang/Object;)V
  .line 3
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/c0;->g:Lcn/manstep/phonemirrorBox/util/x;
    iget v1, v0, Lcn/manstep/phonemirrorBox/util/x;->b:I
    iget v0, v0, Lcn/manstep/phonemirrorBox/util/x;->c:I
    invoke-direct { p0, p1, p2, v1, v0 }, Lcn/manstep/phonemirrorBox/c0;->p(IIII)Lcn/manstep/phonemirrorBox/c0;
  :L1
    return-object p0
.end method

.method public r(II)V
  .registers 7
    if-lez p2, :L3
  .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/c0;->e:Lcn/manstep/phonemirrorBox/util/x;
    iget v1, v0, Lcn/manstep/phonemirrorBox/util/x;->c:I
    if-lez v1, :L3
    int-to-float v2, p1
    int-to-float v3, p2
    div-float/2addr v2, v3
  .line 2
    iget v0, v0, Lcn/manstep/phonemirrorBox/util/x;->b:I
    int-to-float v0, v0
    int-to-float v1, v1
    div-float/2addr v0, v1
    sub-float/2addr v2, v0
  .line 3
    invoke-static { v2 }, Ljava/lang/Math;->abs(F)F
    move-result v0
    const v1, 1008981770
    cmpg-float v0, v0, v1
    if-ltz v0, :L0
    invoke-direct { p0, p1, p2 }, Lcn/manstep/phonemirrorBox/c0;->k(II)Z
    move-result v0
    if-eqz v0, :L3
  :L0
  .line 4
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/c0;->g:Lcn/manstep/phonemirrorBox/util/x;
    invoke-virtual { v0, p1, p2 }, Lcn/manstep/phonemirrorBox/util/x;->m(II)V
  .line 5
    invoke-static { }, Lcn/manstep/phonemirrorBox/u;->z()Lcn/manstep/phonemirrorBox/u;
    move-result-object v0
    invoke-virtual { v0 }, Lcn/manstep/phonemirrorBox/u;->r()Lcn/manstep/phonemirrorBox/util/x;
    move-result-object v0
    if-nez v0, :L1
  .line 6
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/c0;->f:Lcn/manstep/phonemirrorBox/util/x;
    invoke-virtual { v0, p1, p2 }, Lcn/manstep/phonemirrorBox/util/x;->m(II)V
    goto :L2
  :L1
  .line 7
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/c0;->f:Lcn/manstep/phonemirrorBox/util/x;
    invoke-virtual { v1, v0 }, Lcn/manstep/phonemirrorBox/util/x;->n(Lcn/manstep/phonemirrorBox/util/x;)V
  :L2
    const v0, 1067030938
  .line 8
    invoke-direct { p0, p1, p2 }, Lcn/manstep/phonemirrorBox/c0;->d(II)I
    move-result p1
    int-to-float p1, p1
    mul-float p1, p1, v0
    float-to-int p1, p1
    iput p1, p0, Lcn/manstep/phonemirrorBox/c0;->j:I
  .line 9
    new-instance p1, Ljava/lang/StringBuilder;
    invoke-direct { p1 }, Ljava/lang/StringBuilder;-><init>()V
    const-string p2, "setSize: HiCar dpi="
    invoke-virtual { p1, p2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget p2, p0, Lcn/manstep/phonemirrorBox/c0;->j:I
    invoke-virtual { p1, p2 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { p1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p1
    const-string p2, "VideoSize"
    invoke-static { p2, p1 }, Lcn/manstep/phonemirrorBox/util/s;->d(Ljava/lang/String;Ljava/lang/String;)V
  :L3
    return-void
.end method

.method public s(Ljava/lang/String;)V
  .registers 3
  .line 1
    invoke-static { p1 }, Lcn/manstep/phonemirrorBox/util/x;->l(Ljava/lang/String;)Lcn/manstep/phonemirrorBox/util/x;
    move-result-object p1
  .line 2
    iget v0, p1, Lcn/manstep/phonemirrorBox/util/x;->b:I
    iget p1, p1, Lcn/manstep/phonemirrorBox/util/x;->c:I
    invoke-virtual { p0, v0, p1 }, Lcn/manstep/phonemirrorBox/c0;->r(II)V
    return-void
.end method
