.class public Lcn/manstep/phonemirrorBox/c0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static l:Lcn/manstep/phonemirrorBox/c0;


# instance fields
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


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcn/manstep/phonemirrorBox/c0;->i:I

    const/16 v0, 0x64

    .line 3
    iput v0, p0, Lcn/manstep/phonemirrorBox/c0;->j:I

    .line 4
    iput v0, p0, Lcn/manstep/phonemirrorBox/c0;->k:I

    .line 5
    new-instance v0, Lcn/manstep/phonemirrorBox/util/x;

    invoke-direct {v0}, Lcn/manstep/phonemirrorBox/util/x;-><init>()V

    iput-object v0, p0, Lcn/manstep/phonemirrorBox/c0;->c:Lcn/manstep/phonemirrorBox/util/x;

    .line 6
    new-instance v0, Lcn/manstep/phonemirrorBox/util/x;

    invoke-direct {v0}, Lcn/manstep/phonemirrorBox/util/x;-><init>()V

    iput-object v0, p0, Lcn/manstep/phonemirrorBox/c0;->a:Lcn/manstep/phonemirrorBox/util/x;

    .line 7
    new-instance v0, Lcn/manstep/phonemirrorBox/util/x;

    invoke-direct {v0}, Lcn/manstep/phonemirrorBox/util/x;-><init>()V

    iput-object v0, p0, Lcn/manstep/phonemirrorBox/c0;->b:Lcn/manstep/phonemirrorBox/util/x;

    .line 8
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcn/manstep/phonemirrorBox/c0;->d:Ljava/util/List;

    .line 9
    new-instance v0, Lcn/manstep/phonemirrorBox/util/x;

    invoke-direct {v0}, Lcn/manstep/phonemirrorBox/util/x;-><init>()V

    iput-object v0, p0, Lcn/manstep/phonemirrorBox/c0;->g:Lcn/manstep/phonemirrorBox/util/x;

    .line 10
    new-instance v0, Lcn/manstep/phonemirrorBox/util/x;

    invoke-direct {v0}, Lcn/manstep/phonemirrorBox/util/x;-><init>()V

    iput-object v0, p0, Lcn/manstep/phonemirrorBox/c0;->f:Lcn/manstep/phonemirrorBox/util/x;

    .line 11
    new-instance v0, Lcn/manstep/phonemirrorBox/util/x;

    invoke-direct {v0}, Lcn/manstep/phonemirrorBox/util/x;-><init>()V

    iput-object v0, p0, Lcn/manstep/phonemirrorBox/c0;->e:Lcn/manstep/phonemirrorBox/util/x;

    .line 12
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcn/manstep/phonemirrorBox/c0;->h:Ljava/util/List;

    return-void
.end method

.method public static a()Lcn/manstep/phonemirrorBox/util/x;
    .registers 2

    .line 1
    invoke-static {}, Lcn/manstep/phonemirrorBox/c0;->i()Lcn/manstep/phonemirrorBox/c0;

    move-result-object v0

    iget-object v0, v0, Lcn/manstep/phonemirrorBox/c0;->c:Lcn/manstep/phonemirrorBox/util/x;

    return-object v0
.end method

.method public static b(I)Lcn/manstep/phonemirrorBox/util/x;
    .registers 2

    .line 1
    invoke-static {}, Lcn/manstep/phonemirrorBox/c0;->i()Lcn/manstep/phonemirrorBox/c0;

    move-result-object v0

    invoke-direct {v0, p0}, Lcn/manstep/phonemirrorBox/c0;->n(I)V

    .line 2
    invoke-static {}, Lcn/manstep/phonemirrorBox/c0;->a()Lcn/manstep/phonemirrorBox/util/x;

    move-result-object p0

    return-object p0
.end method

.method private c(Lcn/manstep/phonemirrorBox/util/x;)V
    .registers 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    iget-object v2, v0, Lcn/manstep/phonemirrorBox/c0;->d:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    const/16 v2, 0x320

    const/16 v3, 0x1e0

    if-eqz v1, :cond_97

    .line 2
    invoke-virtual/range {p1 .. p1}, Lcn/manstep/phonemirrorBox/util/x;->k()Z

    move-result v4

    if-eqz v4, :cond_17

    goto/16 :goto_97

    :cond_17
    const/4 v4, 0x4

    new-array v5, v4, [I

    .line 3
    fill-array-data v5, :array_a2

    const/4 v6, 0x0

    :goto_1e
    if-ge v6, v4, :cond_96

    .line 4
    aget v7, v5, v6

    .line 5
    new-instance v8, Lcn/manstep/phonemirrorBox/util/x;

    invoke-direct {v8, v1}, Lcn/manstep/phonemirrorBox/util/x;-><init>(Lcn/manstep/phonemirrorBox/util/x;)V

    .line 6
    iget v9, v1, Lcn/manstep/phonemirrorBox/util/x;->c:I

    iget v10, v1, Lcn/manstep/phonemirrorBox/util/x;->b:I

    const/16 v11, 0xa00

    const/16 v12, 0x500

    const/16 v13, 0x2d0

    const/16 v14, 0x780

    const/16 v15, 0x5a0

    const/16 v4, 0x438

    if-ge v9, v10, :cond_4b

    if-ne v7, v3, :cond_3e

    const/16 v11, 0x320

    goto :goto_64

    :cond_3e
    if-ne v7, v4, :cond_43

    const/16 v11, 0x780

    goto :goto_64

    :cond_43
    if-ne v7, v15, :cond_46

    goto :goto_64

    :cond_46
    const/16 v7, 0x2d0

    const/16 v11, 0x500

    goto :goto_64

    :cond_4b
    if-ne v7, v3, :cond_52

    const/16 v7, 0x320

    const/16 v11, 0x1e0

    goto :goto_64

    :cond_52
    if-ne v7, v4, :cond_59

    const/16 v7, 0x780

    const/16 v11, 0x438

    goto :goto_64

    :cond_59
    if-ne v7, v15, :cond_60

    const/16 v7, 0xa00

    const/16 v11, 0x5a0

    goto :goto_64

    :cond_60
    const/16 v7, 0x500

    const/16 v11, 0x2d0

    .line 7
    :goto_64
    iput v7, v8, Lcn/manstep/phonemirrorBox/util/x;->c:I

    int-to-float v4, v7

    const/high16 v7, 0x3f800000    # 1.0f

    mul-float v4, v4, v7

    .line 8
    iget v9, v1, Lcn/manstep/phonemirrorBox/util/x;->b:I

    int-to-float v9, v9

    mul-float v4, v4, v9

    iget v9, v1, Lcn/manstep/phonemirrorBox/util/x;->c:I

    int-to-float v10, v9

    div-float/2addr v4, v10

    float-to-int v4, v4

    const v10, 0xfffe

    and-int/2addr v4, v10

    iput v4, v8, Lcn/manstep/phonemirrorBox/util/x;->b:I

    if-le v4, v11, :cond_8d

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

    .line 11
    :cond_8d
    iget-object v4, v0, Lcn/manstep/phonemirrorBox/c0;->d:Ljava/util/List;

    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    const/4 v4, 0x4

    goto :goto_1e

    :cond_96
    return-void

    .line 12
    :cond_97
    :goto_97
    iget-object v1, v0, Lcn/manstep/phonemirrorBox/c0;->d:Ljava/util/List;

    new-instance v4, Lcn/manstep/phonemirrorBox/util/x;

    invoke-direct {v4, v2, v3}, Lcn/manstep/phonemirrorBox/util/x;-><init>(II)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :array_a2
    .array-data 4
        0x1e0
        0x2d0
        0x438
        0x5a0
    .end array-data
.end method

.method private d(II)I
    .registers 4

    mul-int p1, p1, p2

    const p2, 0x5dc00

    if-ge p1, p2, :cond_a

    const/16 p1, 0x64

    return p1

    :cond_a
    const/high16 v0, 0x3fa00000    # 1.25f

    sub-int/2addr p1, p2

    mul-int/lit8 p1, p1, 0x17

    const p2, 0xf3c00

    .line 1
    div-int/2addr p1, p2

    add-int/lit8 p1, p1, 0x78

    int-to-float p1, p1

    mul-float p1, p1, v0

    float-to-int p1, p1

    .line 2
    rem-int/lit8 p2, p1, 0xa

    rsub-int/lit8 p2, p2, 0xa

    sub-int/2addr p1, p2

    return p1
.end method

.method private e(IIIILjava/util/List;)I
    .registers 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIII",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    move/from16 v0, p1

    move/from16 v1, p2

    move-object/from16 v2, p5

    .line 1
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_d
    const/16 v6, 0xa

    const-wide v7, 0x3fa999999999999aL    # 0.05

    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    const-string v11, "x"

    if-ge v5, v6, :cond_73

    int-to-double v13, v0

    move-wide v15, v13

    int-to-double v12, v5

    .line 2
    invoke-static {v12, v13}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v12, v12, v7

    sub-double v12, v9, v12

    invoke-static/range {v15 .. v16}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v14, v15, v12

    invoke-static {v14, v15}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v14

    double-to-int v14, v14

    .line 3
    rem-int/lit8 v15, v14, 0x2

    const/4 v6, 0x1

    if-ne v15, v6, :cond_35

    add-int/lit8 v14, v14, -0x1

    :cond_35
    int-to-double v9, v1

    .line 4
    invoke-static {v9, v10}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v9, v9, v12

    invoke-static {v9, v10}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v9

    double-to-int v9, v9

    .line 5
    rem-int/lit8 v10, v9, 0x2

    const/4 v6, 0x1

    if-ne v10, v6, :cond_47

    add-int/lit8 v9, v9, -0x1

    :cond_47
    if-le v0, v1, :cond_52

    const/16 v10, 0x2da

    if-lt v14, v10, :cond_73

    const/16 v10, 0x1e0

    if-ge v9, v10, :cond_5b

    goto :goto_73

    :cond_52
    const/16 v10, 0x23a

    if-lt v14, v10, :cond_73

    const/16 v10, 0x320

    if-ge v9, v10, :cond_5b

    goto :goto_73

    .line 6
    :cond_5b
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 7
    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_d

    :cond_73
    :goto_73
    if-eqz v2, :cond_c6

    .line 8
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_91

    .line 9
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_c6

    .line 10
    :cond_91
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    const/4 v9, 0x3

    if-gt v5, v9, :cond_9c

    .line 11
    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_c6

    .line 12
    :cond_9c
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 13
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v9

    div-int/lit8 v9, v9, 0x2

    invoke-interface {v3, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 14
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v10

    const/4 v6, 0x1

    sub-int/2addr v10, v6

    invoke-interface {v3, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 15
    invoke-interface/range {p5 .. p5}, Ljava/util/List;->clear()V

    .line 16
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 17
    invoke-interface {v2, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 18
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_c6
    :goto_c6
    const/16 v3, 0x780

    if-ne v0, v3, :cond_da

    const/16 v3, 0x438

    if-lt v1, v3, :cond_da

    const/16 v3, 0x480

    if-ge v1, v3, :cond_da

    if-eqz v2, :cond_ed

    const-string v3, "1920x1152"

    .line 19
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_ed

    :cond_da
    const/16 v3, 0x500

    if-ne v0, v3, :cond_ed

    const/16 v3, 0x2d0

    if-lt v1, v3, :cond_ed

    const/16 v3, 0x300

    if-ge v1, v3, :cond_ed

    if-eqz v2, :cond_ed

    const-string v3, "1088x768"

    .line 20
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_ed
    :goto_ed
    if-eqz v2, :cond_138

    const/4 v3, 0x1

    :goto_f0
    const/4 v5, 0x4

    if-ge v3, v5, :cond_138

    int-to-double v9, v0

    int-to-double v12, v3

    .line 21
    invoke-static {v12, v13}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v12, v12, v7

    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    add-double/2addr v12, v14

    invoke-static {v9, v10}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v9, v9, v12

    invoke-static {v9, v10}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v9

    double-to-int v5, v9

    .line 22
    rem-int/lit8 v9, v5, 0x2

    const/4 v6, 0x1

    if-ne v9, v6, :cond_10e

    add-int/lit8 v5, v5, 0x1

    :cond_10e
    int-to-double v9, v1

    .line 23
    invoke-static {v9, v10}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v9, v9, v12

    invoke-static {v9, v10}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v9

    double-to-int v9, v9

    .line 24
    rem-int/lit8 v10, v9, 0x2

    const/4 v6, 0x1

    if-ne v10, v6, :cond_120

    add-int/lit8 v9, v9, 0x1

    .line 25
    :cond_120
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 26
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_f0

    :cond_138
    if-eqz v2, :cond_166

    .line 27
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 28
    :goto_151
    invoke-interface/range {p5 .. p5}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_166

    .line 29
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_163

    move v4, v1

    goto :goto_166

    :cond_163
    add-int/lit8 v1, v1, 0x1

    goto :goto_151

    :cond_166
    :goto_166
    return v4
.end method

.method public static i()Lcn/manstep/phonemirrorBox/c0;
    .registers 4

    .line 1
    sget-object v0, Lcn/manstep/phonemirrorBox/c0;->l:Lcn/manstep/phonemirrorBox/c0;

    if-nez v0, :cond_17

    .line 2
    const-class v0, Lcn/manstep/phonemirrorBox/c0;

    monitor-enter v0

    .line 3
    :try_start_7
    sget-object v1, Lcn/manstep/phonemirrorBox/c0;->l:Lcn/manstep/phonemirrorBox/c0;

    if-nez v1, :cond_12

    .line 4
    new-instance v1, Lcn/manstep/phonemirrorBox/c0;

    invoke-direct {v1}, Lcn/manstep/phonemirrorBox/c0;-><init>()V

    sput-object v1, Lcn/manstep/phonemirrorBox/c0;->l:Lcn/manstep/phonemirrorBox/c0;

    .line 5
    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw v1

    .line 6
    :cond_17
    :goto_17
    sget-object v0, Lcn/manstep/phonemirrorBox/c0;->l:Lcn/manstep/phonemirrorBox/c0;

    return-object v0
.end method

.method public static j(IIIILjava/lang/String;I)Lcn/manstep/phonemirrorBox/c0;
    .registers 8

    .line 1
    invoke-static {}, Lcn/manstep/phonemirrorBox/c0;->i()Lcn/manstep/phonemirrorBox/c0;

    .line 2
    sget-object v0, Lcn/manstep/phonemirrorBox/c0;->l:Lcn/manstep/phonemirrorBox/c0;

    iget-object v0, v0, Lcn/manstep/phonemirrorBox/c0;->a:Lcn/manstep/phonemirrorBox/util/x;

    invoke-virtual {v0, p0, p1}, Lcn/manstep/phonemirrorBox/util/x;->m(II)V

    .line 3
    sget-object v0, Lcn/manstep/phonemirrorBox/c0;->l:Lcn/manstep/phonemirrorBox/c0;

    iget-object v0, v0, Lcn/manstep/phonemirrorBox/c0;->b:Lcn/manstep/phonemirrorBox/util/x;

    invoke-virtual {v0, p2, p3}, Lcn/manstep/phonemirrorBox/util/x;->m(II)V

    .line 4
    sget-object v0, Lcn/manstep/phonemirrorBox/c0;->l:Lcn/manstep/phonemirrorBox/c0;

    iput p5, v0, Lcn/manstep/phonemirrorBox/c0;->i:I

    .line 5
    invoke-static {}, Lcn/manstep/phonemirrorBox/u;->z()Lcn/manstep/phonemirrorBox/u;

    move-result-object p5

    invoke-virtual {p5}, Lcn/manstep/phonemirrorBox/u;->Y()Z

    move-result p5

    if-nez p5, :cond_5b

    .line 6
    invoke-static {}, Lcn/manstep/phonemirrorBox/u;->z()Lcn/manstep/phonemirrorBox/u;

    move-result-object p5

    invoke-virtual {p5}, Lcn/manstep/phonemirrorBox/u;->u()Landroid/view/WindowManager$LayoutParams;

    move-result-object p5

    if-eqz p5, :cond_35

    .line 7
    iget v0, p5, Landroid/view/WindowManager$LayoutParams;->width:I

    if-lez v0, :cond_2f

    move p1, p3

    move p0, v0

    .line 8
    :cond_2f
    iget p5, p5, Landroid/view/WindowManager$LayoutParams;->height:I

    if-lez p5, :cond_35

    move p0, p2

    move p1, p5

    .line 9
    :cond_35
    invoke-static {}, Lcn/manstep/phonemirrorBox/u;->z()Lcn/manstep/phonemirrorBox/u;

    move-result-object p5

    invoke-static {}, Lcn/manstep/phonemirrorBox/MyApplication;->b()Lcn/manstep/phonemirrorBox/MyApplication;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a001f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    invoke-virtual {p5, v0}, Lcn/manstep/phonemirrorBox/u;->G(I)I

    move-result p5

    sub-int/2addr p0, p5

    if-le p1, p0, :cond_55

    .line 10
    sget-object p0, Lcn/manstep/phonemirrorBox/c0;->l:Lcn/manstep/phonemirrorBox/c0;

    invoke-direct {p0, p2, p3, p2, p3}, Lcn/manstep/phonemirrorBox/c0;->p(IIII)Lcn/manstep/phonemirrorBox/c0;

    goto :goto_b9

    .line 11
    :cond_55
    sget-object p2, Lcn/manstep/phonemirrorBox/c0;->l:Lcn/manstep/phonemirrorBox/c0;

    invoke-direct {p2, p0, p1, p0, p1}, Lcn/manstep/phonemirrorBox/c0;->p(IIII)Lcn/manstep/phonemirrorBox/c0;

    goto :goto_b9

    :cond_5b
    const-string p5, "x"

    const-string v0, "vmaxwh"

    if-le p1, p0, :cond_7c

    .line 12
    invoke-static {}, Lcn/manstep/phonemirrorBox/b0;->i()Lcn/manstep/phonemirrorBox/b0;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcn/manstep/phonemirrorBox/b0;->n(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_96

    .line 13
    :cond_7c
    invoke-static {}, Lcn/manstep/phonemirrorBox/b0;->i()Lcn/manstep/phonemirrorBox/b0;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, v0, p0}, Lcn/manstep/phonemirrorBox/b0;->n(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 14
    :goto_96
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "getInstance: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "VideoSize"

    invoke-static {p2, p1}, Lcn/manstep/phonemirrorBox/util/s;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    invoke-static {p0}, Lcn/manstep/phonemirrorBox/util/x;->l(Ljava/lang/String;)Lcn/manstep/phonemirrorBox/util/x;

    move-result-object p0

    .line 16
    sget-object p1, Lcn/manstep/phonemirrorBox/c0;->l:Lcn/manstep/phonemirrorBox/c0;

    iget p2, p0, Lcn/manstep/phonemirrorBox/util/x;->b:I

    iget p0, p0, Lcn/manstep/phonemirrorBox/util/x;->c:I

    invoke-virtual {p1, p2, p0}, Lcn/manstep/phonemirrorBox/c0;->o(II)Lcn/manstep/phonemirrorBox/c0;

    .line 17
    :goto_b9
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_cc

    .line 18
    invoke-static {p4}, Lcn/manstep/phonemirrorBox/util/x;->l(Ljava/lang/String;)Lcn/manstep/phonemirrorBox/util/x;

    move-result-object p0

    .line 19
    sget-object p1, Lcn/manstep/phonemirrorBox/c0;->l:Lcn/manstep/phonemirrorBox/c0;

    iget p2, p0, Lcn/manstep/phonemirrorBox/util/x;->b:I

    iget p0, p0, Lcn/manstep/phonemirrorBox/util/x;->c:I

    invoke-virtual {p1, p2, p0}, Lcn/manstep/phonemirrorBox/c0;->r(II)V

    .line 20
    :cond_cc
    sget-object p0, Lcn/manstep/phonemirrorBox/c0;->l:Lcn/manstep/phonemirrorBox/c0;

    return-object p0
.end method

.method private k(II)Z
    .registers 6

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "x"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p2

    const v0, 0x2fce768f

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq p2, v0, :cond_2f

    const v0, 0x30209ba0

    if-eq p2, v0, :cond_25

    goto :goto_39

    :cond_25
    const-string p2, "1088x768"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_39

    const/4 p1, 0x1

    goto :goto_3a

    :cond_2f
    const-string p2, "1920x1152"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_39

    const/4 p1, 0x0

    goto :goto_3a

    :cond_39
    :goto_39
    const/4 p1, -0x1

    :goto_3a
    if-eqz p1, :cond_3f

    if-eq p1, v2, :cond_3f

    return v1

    :cond_3f
    return v2
.end method

.method public static l()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcn/manstep/phonemirrorBox/c0;->i()Lcn/manstep/phonemirrorBox/c0;

    move-result-object v0

    iget-object v0, v0, Lcn/manstep/phonemirrorBox/c0;->h:Ljava/util/List;

    return-object v0
.end method

.method public static m()Lcn/manstep/phonemirrorBox/util/x;
    .registers 2

    .line 1
    invoke-static {}, Lcn/manstep/phonemirrorBox/c0;->i()Lcn/manstep/phonemirrorBox/c0;

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

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-ge v0, v2, :cond_1a

    .line 3
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/c0;->c:Lcn/manstep/phonemirrorBox/util/x;

    iget-object v0, p0, Lcn/manstep/phonemirrorBox/c0;->d:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/manstep/phonemirrorBox/util/x;

    invoke-virtual {p1, v0}, Lcn/manstep/phonemirrorBox/util/x;->n(Lcn/manstep/phonemirrorBox/util/x;)V

    goto :goto_71

    :cond_1a
    const/16 v0, 0x5a0

    if-ne p1, v0, :cond_2d

    .line 4
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/c0;->c:Lcn/manstep/phonemirrorBox/util/x;

    iget-object v0, p0, Lcn/manstep/phonemirrorBox/c0;->d:Ljava/util/List;

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/manstep/phonemirrorBox/util/x;

    invoke-virtual {p1, v0}, Lcn/manstep/phonemirrorBox/util/x;->n(Lcn/manstep/phonemirrorBox/util/x;)V

    goto :goto_71

    :cond_2d
    const/16 v0, 0x438

    if-ne p1, v0, :cond_3f

    .line 5
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/c0;->c:Lcn/manstep/phonemirrorBox/util/x;

    iget-object v0, p0, Lcn/manstep/phonemirrorBox/c0;->d:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/manstep/phonemirrorBox/util/x;

    invoke-virtual {p1, v0}, Lcn/manstep/phonemirrorBox/util/x;->n(Lcn/manstep/phonemirrorBox/util/x;)V

    goto :goto_71

    :cond_3f
    const/16 v0, 0x2d0

    const/4 v2, 0x1

    if-ne p1, v0, :cond_52

    .line 6
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/c0;->c:Lcn/manstep/phonemirrorBox/util/x;

    iget-object v0, p0, Lcn/manstep/phonemirrorBox/c0;->d:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/manstep/phonemirrorBox/util/x;

    invoke-virtual {p1, v0}, Lcn/manstep/phonemirrorBox/util/x;->n(Lcn/manstep/phonemirrorBox/util/x;)V

    goto :goto_71

    :cond_52
    const/16 v0, 0x1e0

    if-ne p1, v0, :cond_64

    .line 7
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/c0;->c:Lcn/manstep/phonemirrorBox/util/x;

    iget-object v0, p0, Lcn/manstep/phonemirrorBox/c0;->d:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/manstep/phonemirrorBox/util/x;

    invoke-virtual {p1, v0}, Lcn/manstep/phonemirrorBox/util/x;->n(Lcn/manstep/phonemirrorBox/util/x;)V

    goto :goto_71

    .line 8
    :cond_64
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/c0;->c:Lcn/manstep/phonemirrorBox/util/x;

    iget-object v0, p0, Lcn/manstep/phonemirrorBox/c0;->d:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/manstep/phonemirrorBox/util/x;

    invoke-virtual {p1, v0}, Lcn/manstep/phonemirrorBox/util/x;->n(Lcn/manstep/phonemirrorBox/util/x;)V

    .line 9
    :goto_71
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/c0;->c:Lcn/manstep/phonemirrorBox/util/x;

    iget v0, p1, Lcn/manstep/phonemirrorBox/util/x;->b:I

    iget p1, p1, Lcn/manstep/phonemirrorBox/util/x;->c:I

    if-le v0, p1, :cond_87

    const v1, 0x3f99999a    # 1.2f

    .line 10
    invoke-direct {p0, v0, p1}, Lcn/manstep/phonemirrorBox/c0;->d(II)I

    move-result p1

    int-to-float p1, p1

    mul-float p1, p1, v1

    float-to-int p1, p1

    iput p1, p0, Lcn/manstep/phonemirrorBox/c0;->k:I

    goto :goto_8d

    .line 11
    :cond_87
    invoke-direct {p0, v0, p1}, Lcn/manstep/phonemirrorBox/c0;->d(II)I

    move-result p1

    iput p1, p0, Lcn/manstep/phonemirrorBox/c0;->k:I

    .line 12
    :goto_8d
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setAutoSize: AndroidAuto dpi="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcn/manstep/phonemirrorBox/c0;->k:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcn/manstep/phonemirrorBox/c0;->c:Lcn/manstep/phonemirrorBox/util/x;

    iget v0, v0, Lcn/manstep/phonemirrorBox/util/x;->b:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "x"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcn/manstep/phonemirrorBox/c0;->c:Lcn/manstep/phonemirrorBox/util/x;

    iget v0, v0, Lcn/manstep/phonemirrorBox/util/x;->c:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "VideoSize"

    invoke-static {v0, p1}, Lcn/manstep/phonemirrorBox/util/s;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private p(IIII)Lcn/manstep/phonemirrorBox/c0;
    .registers 13

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setMax: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",def="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VideoSize"

    invoke-static {v1, v0}, Lcn/manstep/phonemirrorBox/util/s;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, -0x1

    if-ne p1, v0, :cond_33

    .line 2
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/c0;->a:Lcn/manstep/phonemirrorBox/util/x;

    iget p1, p1, Lcn/manstep/phonemirrorBox/util/x;->b:I

    :cond_33
    move v3, p1

    if-lez p2, :cond_55

    if-lez p4, :cond_55

    int-to-float p1, v3

    int-to-float v0, p2

    div-float/2addr p1, v0

    int-to-float v0, p3

    int-to-float v2, p4

    div-float/2addr v0, v2

    sub-float/2addr p1, v0

    .line 3
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const v0, 0x3c23d70a    # 0.01f

    cmpg-float p1, p1, v0

    if-gez p1, :cond_50

    .line 4
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/c0;->g:Lcn/manstep/phonemirrorBox/util/x;

    invoke-virtual {p1, p3, p4}, Lcn/manstep/phonemirrorBox/util/x;->m(II)V

    goto :goto_55

    .line 5
    :cond_50
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/c0;->g:Lcn/manstep/phonemirrorBox/util/x;

    invoke-virtual {p1, v3, p2}, Lcn/manstep/phonemirrorBox/util/x;->m(II)V

    .line 6
    :cond_55
    :goto_55
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/c0;->e:Lcn/manstep/phonemirrorBox/util/x;

    iget v0, p1, Lcn/manstep/phonemirrorBox/util/x;->b:I

    if-ne v0, v3, :cond_5f

    iget p1, p1, Lcn/manstep/phonemirrorBox/util/x;->c:I

    if-eq p1, p2, :cond_83

    .line 7
    :cond_5f
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/c0;->e:Lcn/manstep/phonemirrorBox/util/x;

    invoke-virtual {p1, v3, p2}, Lcn/manstep/phonemirrorBox/util/x;->m(II)V

    .line 8
    iget-object v7, p0, Lcn/manstep/phonemirrorBox/c0;->h:Ljava/util/List;

    move-object v2, p0

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v2 .. v7}, Lcn/manstep/phonemirrorBox/c0;->e(IIIILjava/util/List;)I

    move-result p1

    .line 9
    iget-object p2, p0, Lcn/manstep/phonemirrorBox/c0;->e:Lcn/manstep/phonemirrorBox/util/x;

    invoke-direct {p0, p2}, Lcn/manstep/phonemirrorBox/c0;->c(Lcn/manstep/phonemirrorBox/util/x;)V

    .line 10
    iget p2, p0, Lcn/manstep/phonemirrorBox/c0;->i:I

    invoke-direct {p0, p2}, Lcn/manstep/phonemirrorBox/c0;->n(I)V

    .line 11
    iget-object p2, p0, Lcn/manstep/phonemirrorBox/c0;->h:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcn/manstep/phonemirrorBox/c0;->s(Ljava/lang/String;)V

    .line 12
    :cond_83
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "setMax: videoMaxSize="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcn/manstep/phonemirrorBox/c0;->e:Lcn/manstep/phonemirrorBox/util/x;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ",videoSize="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcn/manstep/phonemirrorBox/c0;->f:Lcn/manstep/phonemirrorBox/util/x;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ",autoSize="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcn/manstep/phonemirrorBox/c0;->c:Lcn/manstep/phonemirrorBox/util/x;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcn/manstep/phonemirrorBox/util/s;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public static t()Lcn/manstep/phonemirrorBox/util/x;
    .registers 3

    .line 1
    invoke-static {}, Lcn/manstep/phonemirrorBox/c0;->i()Lcn/manstep/phonemirrorBox/c0;

    move-result-object v0

    iget-object v0, v0, Lcn/manstep/phonemirrorBox/c0;->f:Lcn/manstep/phonemirrorBox/util/x;

    return-object v0
.end method


# virtual methods
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

    invoke-direct {v0}, Lcn/manstep/phonemirrorBox/util/x;-><init>()V

    .line 2
    iput p2, v0, Lcn/manstep/phonemirrorBox/util/x;->c:I

    int-to-float p2, p2

    const/high16 v1, 0x3f800000    # 1.0f

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

    const v4, 0xfffe

    and-int/2addr p2, v4

    iput p2, v0, Lcn/manstep/phonemirrorBox/util/x;->b:I

    if-le p2, p1, :cond_30

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

    :cond_30
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

    invoke-direct {p0, p1, p2, v1, v0}, Lcn/manstep/phonemirrorBox/c0;->p(IIII)Lcn/manstep/phonemirrorBox/c0;

    return-object p0
.end method

.method public q(II)Lcn/manstep/phonemirrorBox/c0;
    .registers 6

    if-lez p1, :cond_47

    if-gtz p2, :cond_5

    goto :goto_47

    .line 1
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setMaxByMeasure: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "VideoSize"

    invoke-static {v2, v0}, Lcn/manstep/phonemirrorBox/util/s;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lcn/manstep/phonemirrorBox/b0;->i()Lcn/manstep/phonemirrorBox/b0;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "vmaxwh"

    invoke-virtual {v0, v2, v1}, Lcn/manstep/phonemirrorBox/b0;->F(Ljava/lang/String;Ljava/lang/Object;)V

    .line 3
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/c0;->g:Lcn/manstep/phonemirrorBox/util/x;

    iget v1, v0, Lcn/manstep/phonemirrorBox/util/x;->b:I

    iget v0, v0, Lcn/manstep/phonemirrorBox/util/x;->c:I

    invoke-direct {p0, p1, p2, v1, v0}, Lcn/manstep/phonemirrorBox/c0;->p(IIII)Lcn/manstep/phonemirrorBox/c0;

    :cond_47
    :goto_47
    return-object p0
.end method

.method public r(II)V
    .registers 7

    if-lez p2, :cond_61

    .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/c0;->e:Lcn/manstep/phonemirrorBox/util/x;

    iget v1, v0, Lcn/manstep/phonemirrorBox/util/x;->c:I

    if-lez v1, :cond_61

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
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const v1, 0x3c23d70a    # 0.01f

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_22

    invoke-direct {p0, p1, p2}, Lcn/manstep/phonemirrorBox/c0;->k(II)Z

    move-result v0

    if-eqz v0, :cond_61

    .line 4
    :cond_22
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/c0;->g:Lcn/manstep/phonemirrorBox/util/x;

    invoke-virtual {v0, p1, p2}, Lcn/manstep/phonemirrorBox/util/x;->m(II)V

    .line 5
    invoke-static {}, Lcn/manstep/phonemirrorBox/u;->z()Lcn/manstep/phonemirrorBox/u;

    move-result-object v0

    invoke-virtual {v0}, Lcn/manstep/phonemirrorBox/u;->r()Lcn/manstep/phonemirrorBox/util/x;

    move-result-object v0

    if-nez v0, :cond_37

    .line 6
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/c0;->f:Lcn/manstep/phonemirrorBox/util/x;

    invoke-virtual {v0, p1, p2}, Lcn/manstep/phonemirrorBox/util/x;->m(II)V

    goto :goto_3c

    .line 7
    :cond_37
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/c0;->f:Lcn/manstep/phonemirrorBox/util/x;

    invoke-virtual {v1, v0}, Lcn/manstep/phonemirrorBox/util/x;->n(Lcn/manstep/phonemirrorBox/util/x;)V

    :goto_3c
    const v0, 0x3f99999a    # 1.2f

    .line 8
    invoke-direct {p0, p1, p2}, Lcn/manstep/phonemirrorBox/c0;->d(II)I

    move-result p1

    int-to-float p1, p1

    mul-float p1, p1, v0

    float-to-int p1, p1

    iput p1, p0, Lcn/manstep/phonemirrorBox/c0;->j:I

    .line 9
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "setSize: HiCar dpi="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcn/manstep/phonemirrorBox/c0;->j:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "VideoSize"

    invoke-static {p2, p1}, Lcn/manstep/phonemirrorBox/util/s;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_61
    return-void
.end method

.method public s(Ljava/lang/String;)V
    .registers 3

    .line 1
    invoke-static {p1}, Lcn/manstep/phonemirrorBox/util/x;->l(Ljava/lang/String;)Lcn/manstep/phonemirrorBox/util/x;

    move-result-object p1

    .line 2
    iget v0, p1, Lcn/manstep/phonemirrorBox/util/x;->b:I

    iget p1, p1, Lcn/manstep/phonemirrorBox/util/x;->c:I

    invoke-virtual {p0, v0, p1}, Lcn/manstep/phonemirrorBox/c0;->r(II)V

    return-void
.end method
