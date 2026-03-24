.class public Lc/e/b/k/e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/e/b/k/e$b;
    }
.end annotation


# static fields
.field public static o0:F = 0.5f


# instance fields
.field private A:Z

.field private B:Z

.field private C:Z

.field private D:I

.field private E:I

.field public F:Lc/e/b/k/d;

.field public G:Lc/e/b/k/d;

.field public H:Lc/e/b/k/d;

.field public I:Lc/e/b/k/d;

.field public J:Lc/e/b/k/d;

.field K:Lc/e/b/k/d;

.field L:Lc/e/b/k/d;

.field public M:Lc/e/b/k/d;

.field public N:[Lc/e/b/k/d;

.field protected O:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lc/e/b/k/d;",
            ">;"
        }
    .end annotation
.end field

.field private P:[Z

.field public Q:[Lc/e/b/k/e$b;

.field public R:Lc/e/b/k/e;

.field S:I

.field T:I

.field public U:F

.field protected V:I

.field protected W:I

.field protected X:I

.field Y:I

.field protected Z:I

.field public a:Z

.field protected a0:I

.field public b:Lc/e/b/k/m/c;

.field b0:F

.field public c:Lc/e/b/k/m/c;

.field c0:F

.field public d:Lc/e/b/k/m/l;

.field private d0:Ljava/lang/Object;

.field public e:Lc/e/b/k/m/n;

.field private e0:I

.field public f:[Z

.field private f0:Ljava/lang/String;

.field private g:Z

.field private g0:Ljava/lang/String;

.field private h:Z

.field h0:I

.field private i:Z

.field i0:I

.field private j:Z

.field public j0:[F

.field private k:Z

.field protected k0:[Lc/e/b/k/e;

.field public l:I

.field protected l0:[Lc/e/b/k/e;

.field public m:I

.field public m0:I

.field public n:I

.field public n0:I

.field public o:I

.field public p:[I

.field public q:I

.field public r:I

.field public s:F

.field public t:I

.field public u:I

.field public v:F

.field w:I

.field x:F

.field private y:[I

.field private z:F


# direct methods
.method static constructor <clinit>()V
    .registers 2

    return-void
.end method

.method public constructor <init>()V
    .registers 11

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lc/e/b/k/e;->a:Z

    const/4 v1, 0x0

    .line 3
    iput-object v1, p0, Lc/e/b/k/e;->d:Lc/e/b/k/m/l;

    .line 4
    iput-object v1, p0, Lc/e/b/k/e;->e:Lc/e/b/k/m/n;

    const/4 v2, 0x2

    new-array v3, v2, [Z

    .line 5
    fill-array-data v3, :array_10a

    iput-object v3, p0, Lc/e/b/k/e;->f:[Z

    const/4 v3, 0x1

    .line 6
    iput-boolean v3, p0, Lc/e/b/k/e;->g:Z

    .line 7
    iput-boolean v0, p0, Lc/e/b/k/e;->h:Z

    .line 8
    iput-boolean v3, p0, Lc/e/b/k/e;->i:Z

    .line 9
    iput-boolean v0, p0, Lc/e/b/k/e;->j:Z

    .line 10
    iput-boolean v0, p0, Lc/e/b/k/e;->k:Z

    const/4 v4, -0x1

    .line 11
    iput v4, p0, Lc/e/b/k/e;->l:I

    .line 12
    iput v4, p0, Lc/e/b/k/e;->m:I

    .line 13
    iput v0, p0, Lc/e/b/k/e;->n:I

    .line 14
    iput v0, p0, Lc/e/b/k/e;->o:I

    new-array v5, v2, [I

    .line 15
    iput-object v5, p0, Lc/e/b/k/e;->p:[I

    .line 16
    iput v0, p0, Lc/e/b/k/e;->q:I

    .line 17
    iput v0, p0, Lc/e/b/k/e;->r:I

    const/high16 v5, 0x3f800000    # 1.0f

    .line 18
    iput v5, p0, Lc/e/b/k/e;->s:F

    .line 19
    iput v0, p0, Lc/e/b/k/e;->t:I

    .line 20
    iput v0, p0, Lc/e/b/k/e;->u:I

    .line 21
    iput v5, p0, Lc/e/b/k/e;->v:F

    .line 22
    iput v4, p0, Lc/e/b/k/e;->w:I

    .line 23
    iput v5, p0, Lc/e/b/k/e;->x:F

    new-array v5, v2, [I

    .line 24
    fill-array-data v5, :array_110

    iput-object v5, p0, Lc/e/b/k/e;->y:[I

    const/4 v5, 0x0

    .line 25
    iput v5, p0, Lc/e/b/k/e;->z:F

    .line 26
    iput-boolean v0, p0, Lc/e/b/k/e;->A:Z

    .line 27
    iput-boolean v0, p0, Lc/e/b/k/e;->C:Z

    .line 28
    iput v0, p0, Lc/e/b/k/e;->D:I

    .line 29
    iput v0, p0, Lc/e/b/k/e;->E:I

    .line 30
    new-instance v6, Lc/e/b/k/d;

    sget-object v7, Lc/e/b/k/d$b;->c:Lc/e/b/k/d$b;

    invoke-direct {v6, p0, v7}, Lc/e/b/k/d;-><init>(Lc/e/b/k/e;Lc/e/b/k/d$b;)V

    iput-object v6, p0, Lc/e/b/k/e;->F:Lc/e/b/k/d;

    .line 31
    new-instance v6, Lc/e/b/k/d;

    sget-object v7, Lc/e/b/k/d$b;->d:Lc/e/b/k/d$b;

    invoke-direct {v6, p0, v7}, Lc/e/b/k/d;-><init>(Lc/e/b/k/e;Lc/e/b/k/d$b;)V

    iput-object v6, p0, Lc/e/b/k/e;->G:Lc/e/b/k/d;

    .line 32
    new-instance v6, Lc/e/b/k/d;

    sget-object v7, Lc/e/b/k/d$b;->e:Lc/e/b/k/d$b;

    invoke-direct {v6, p0, v7}, Lc/e/b/k/d;-><init>(Lc/e/b/k/e;Lc/e/b/k/d$b;)V

    iput-object v6, p0, Lc/e/b/k/e;->H:Lc/e/b/k/d;

    .line 33
    new-instance v6, Lc/e/b/k/d;

    sget-object v7, Lc/e/b/k/d$b;->f:Lc/e/b/k/d$b;

    invoke-direct {v6, p0, v7}, Lc/e/b/k/d;-><init>(Lc/e/b/k/e;Lc/e/b/k/d$b;)V

    iput-object v6, p0, Lc/e/b/k/e;->I:Lc/e/b/k/d;

    .line 34
    new-instance v6, Lc/e/b/k/d;

    sget-object v7, Lc/e/b/k/d$b;->g:Lc/e/b/k/d$b;

    invoke-direct {v6, p0, v7}, Lc/e/b/k/d;-><init>(Lc/e/b/k/e;Lc/e/b/k/d$b;)V

    iput-object v6, p0, Lc/e/b/k/e;->J:Lc/e/b/k/d;

    .line 35
    new-instance v6, Lc/e/b/k/d;

    sget-object v7, Lc/e/b/k/d$b;->i:Lc/e/b/k/d$b;

    invoke-direct {v6, p0, v7}, Lc/e/b/k/d;-><init>(Lc/e/b/k/e;Lc/e/b/k/d$b;)V

    iput-object v6, p0, Lc/e/b/k/e;->K:Lc/e/b/k/d;

    .line 36
    new-instance v6, Lc/e/b/k/d;

    sget-object v7, Lc/e/b/k/d$b;->j:Lc/e/b/k/d$b;

    invoke-direct {v6, p0, v7}, Lc/e/b/k/d;-><init>(Lc/e/b/k/e;Lc/e/b/k/d$b;)V

    iput-object v6, p0, Lc/e/b/k/e;->L:Lc/e/b/k/d;

    .line 37
    new-instance v6, Lc/e/b/k/d;

    sget-object v7, Lc/e/b/k/d$b;->h:Lc/e/b/k/d$b;

    invoke-direct {v6, p0, v7}, Lc/e/b/k/d;-><init>(Lc/e/b/k/e;Lc/e/b/k/d$b;)V

    iput-object v6, p0, Lc/e/b/k/e;->M:Lc/e/b/k/d;

    const/4 v7, 0x6

    new-array v7, v7, [Lc/e/b/k/d;

    .line 38
    iget-object v8, p0, Lc/e/b/k/e;->F:Lc/e/b/k/d;

    aput-object v8, v7, v0

    iget-object v8, p0, Lc/e/b/k/e;->H:Lc/e/b/k/d;

    aput-object v8, v7, v3

    iget-object v8, p0, Lc/e/b/k/e;->G:Lc/e/b/k/d;

    aput-object v8, v7, v2

    iget-object v8, p0, Lc/e/b/k/e;->I:Lc/e/b/k/d;

    const/4 v9, 0x3

    aput-object v8, v7, v9

    iget-object v8, p0, Lc/e/b/k/e;->J:Lc/e/b/k/d;

    const/4 v9, 0x4

    aput-object v8, v7, v9

    const/4 v8, 0x5

    aput-object v6, v7, v8

    iput-object v7, p0, Lc/e/b/k/e;->N:[Lc/e/b/k/d;

    .line 39
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lc/e/b/k/e;->O:Ljava/util/ArrayList;

    new-array v6, v2, [Z

    .line 40
    iput-object v6, p0, Lc/e/b/k/e;->P:[Z

    new-array v6, v2, [Lc/e/b/k/e$b;

    .line 41
    sget-object v7, Lc/e/b/k/e$b;->b:Lc/e/b/k/e$b;

    aput-object v7, v6, v0

    aput-object v7, v6, v3

    iput-object v6, p0, Lc/e/b/k/e;->Q:[Lc/e/b/k/e$b;

    .line 42
    iput-object v1, p0, Lc/e/b/k/e;->R:Lc/e/b/k/e;

    .line 43
    iput v0, p0, Lc/e/b/k/e;->S:I

    .line 44
    iput v0, p0, Lc/e/b/k/e;->T:I

    .line 45
    iput v5, p0, Lc/e/b/k/e;->U:F

    .line 46
    iput v4, p0, Lc/e/b/k/e;->V:I

    .line 47
    iput v0, p0, Lc/e/b/k/e;->W:I

    .line 48
    iput v0, p0, Lc/e/b/k/e;->X:I

    .line 49
    iput v0, p0, Lc/e/b/k/e;->Y:I

    .line 50
    sget v5, Lc/e/b/k/e;->o0:F

    iput v5, p0, Lc/e/b/k/e;->b0:F

    .line 51
    iput v5, p0, Lc/e/b/k/e;->c0:F

    .line 52
    iput v0, p0, Lc/e/b/k/e;->e0:I

    .line 53
    iput-object v1, p0, Lc/e/b/k/e;->f0:Ljava/lang/String;

    .line 54
    iput-object v1, p0, Lc/e/b/k/e;->g0:Ljava/lang/String;

    .line 55
    iput v0, p0, Lc/e/b/k/e;->h0:I

    .line 56
    iput v0, p0, Lc/e/b/k/e;->i0:I

    new-array v5, v2, [F

    .line 57
    fill-array-data v5, :array_118

    iput-object v5, p0, Lc/e/b/k/e;->j0:[F

    new-array v5, v2, [Lc/e/b/k/e;

    aput-object v1, v5, v0

    aput-object v1, v5, v3

    .line 58
    iput-object v5, p0, Lc/e/b/k/e;->k0:[Lc/e/b/k/e;

    new-array v2, v2, [Lc/e/b/k/e;

    aput-object v1, v2, v0

    aput-object v1, v2, v3

    .line 59
    iput-object v2, p0, Lc/e/b/k/e;->l0:[Lc/e/b/k/e;

    .line 60
    iput v4, p0, Lc/e/b/k/e;->m0:I

    .line 61
    iput v4, p0, Lc/e/b/k/e;->n0:I

    .line 62
    invoke-direct {p0}, Lc/e/b/k/e;->d()V

    return-void

    nop

    :array_10a
    .array-data 1
        0x1t
        0x1t
    .end array-data

    nop

    :array_110
    .array-data 4
        0x7fffffff
        0x7fffffff
    .end array-data

    :array_118
    .array-data 4
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
    .end array-data
.end method

.method private Y(I)Z
    .registers 6

    mul-int/lit8 p1, p1, 0x2

    .line 1
    iget-object v0, p0, Lc/e/b/k/e;->N:[Lc/e/b/k/d;

    aget-object v1, v0, p1

    iget-object v1, v1, Lc/e/b/k/d;->f:Lc/e/b/k/d;

    const/4 v2, 0x1

    if-eqz v1, :cond_27

    aget-object v1, v0, p1

    iget-object v1, v1, Lc/e/b/k/d;->f:Lc/e/b/k/d;

    iget-object v1, v1, Lc/e/b/k/d;->f:Lc/e/b/k/d;

    aget-object v3, v0, p1

    if-eq v1, v3, :cond_27

    add-int/2addr p1, v2

    aget-object v1, v0, p1

    iget-object v1, v1, Lc/e/b/k/d;->f:Lc/e/b/k/d;

    if-eqz v1, :cond_27

    aget-object v1, v0, p1

    iget-object v1, v1, Lc/e/b/k/d;->f:Lc/e/b/k/d;

    iget-object v1, v1, Lc/e/b/k/d;->f:Lc/e/b/k/d;

    aget-object p1, v0, p1

    if-ne v1, p1, :cond_27

    goto :goto_28

    :cond_27
    const/4 v2, 0x0

    :goto_28
    return v2
.end method

.method private d()V
    .registers 3

    .line 1
    iget-object v0, p0, Lc/e/b/k/e;->O:Ljava/util/ArrayList;

    iget-object v1, p0, Lc/e/b/k/e;->F:Lc/e/b/k/d;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2
    iget-object v0, p0, Lc/e/b/k/e;->O:Ljava/util/ArrayList;

    iget-object v1, p0, Lc/e/b/k/e;->G:Lc/e/b/k/d;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3
    iget-object v0, p0, Lc/e/b/k/e;->O:Ljava/util/ArrayList;

    iget-object v1, p0, Lc/e/b/k/e;->H:Lc/e/b/k/d;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4
    iget-object v0, p0, Lc/e/b/k/e;->O:Ljava/util/ArrayList;

    iget-object v1, p0, Lc/e/b/k/e;->I:Lc/e/b/k/d;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5
    iget-object v0, p0, Lc/e/b/k/e;->O:Ljava/util/ArrayList;

    iget-object v1, p0, Lc/e/b/k/e;->K:Lc/e/b/k/d;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6
    iget-object v0, p0, Lc/e/b/k/e;->O:Ljava/util/ArrayList;

    iget-object v1, p0, Lc/e/b/k/e;->L:Lc/e/b/k/d;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7
    iget-object v0, p0, Lc/e/b/k/e;->O:Ljava/util/ArrayList;

    iget-object v1, p0, Lc/e/b/k/e;->M:Lc/e/b/k/d;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8
    iget-object v0, p0, Lc/e/b/k/e;->O:Ljava/util/ArrayList;

    iget-object v1, p0, Lc/e/b/k/e;->J:Lc/e/b/k/d;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private i(Lc/e/b/d;ZZZZLc/e/b/i;Lc/e/b/i;Lc/e/b/k/e$b;ZLc/e/b/k/d;Lc/e/b/k/d;IIIIFZZZZZIIIIFZ)V
    .registers 63

    move-object/from16 v0, p0

    move-object/from16 v10, p1

    move-object/from16 v11, p6

    move-object/from16 v12, p7

    move-object/from16 v13, p10

    move-object/from16 v14, p11

    move/from16 v15, p14

    move/from16 v1, p15

    move/from16 v2, p23

    move/from16 v3, p24

    move/from16 v4, p25

    .line 1
    invoke-virtual {v10, v13}, Lc/e/b/d;->q(Ljava/lang/Object;)Lc/e/b/i;

    move-result-object v9

    .line 2
    invoke-virtual {v10, v14}, Lc/e/b/d;->q(Ljava/lang/Object;)Lc/e/b/i;

    move-result-object v8

    .line 3
    invoke-virtual/range {p10 .. p10}, Lc/e/b/k/d;->i()Lc/e/b/k/d;

    move-result-object v5

    invoke-virtual {v10, v5}, Lc/e/b/d;->q(Ljava/lang/Object;)Lc/e/b/i;

    move-result-object v7

    .line 4
    invoke-virtual/range {p11 .. p11}, Lc/e/b/k/d;->i()Lc/e/b/k/d;

    move-result-object v5

    invoke-virtual {v10, v5}, Lc/e/b/d;->q(Ljava/lang/Object;)Lc/e/b/i;

    move-result-object v6

    .line 5
    invoke-static {}, Lc/e/b/d;->w()Lc/e/b/e;

    move-result-object v5

    if-eqz v5, :cond_40

    .line 6
    invoke-static {}, Lc/e/b/d;->w()Lc/e/b/e;

    move-result-object v5

    iget-wide v11, v5, Lc/e/b/e;->w:J

    const-wide/16 v16, 0x1

    add-long v11, v11, v16

    iput-wide v11, v5, Lc/e/b/e;->w:J

    .line 7
    :cond_40
    invoke-virtual/range {p10 .. p10}, Lc/e/b/k/d;->n()Z

    move-result v11

    .line 8
    invoke-virtual/range {p11 .. p11}, Lc/e/b/k/d;->n()Z

    move-result v12

    .line 9
    iget-object v5, v0, Lc/e/b/k/e;->M:Lc/e/b/k/d;

    invoke-virtual {v5}, Lc/e/b/k/d;->n()Z

    move-result v16

    if-eqz v11, :cond_53

    const/16 v18, 0x1

    goto :goto_55

    :cond_53
    const/16 v18, 0x0

    :goto_55
    if-eqz v12, :cond_59

    add-int/lit8 v18, v18, 0x1

    :cond_59
    if-eqz v16, :cond_5d

    add-int/lit8 v18, v18, 0x1

    :cond_5d
    move/from16 v19, v18

    if-eqz p17, :cond_64

    const/16 v20, 0x3

    goto :goto_66

    :cond_64
    move/from16 v20, p22

    .line 10
    :goto_66
    sget-object v21, Lc/e/b/k/e$a;->b:[I

    invoke-virtual/range {p8 .. p8}, Ljava/lang/Enum;->ordinal()I

    move-result v22

    aget v5, v21, v22

    const/4 v2, 0x2

    const/4 v14, 0x1

    if-eq v5, v14, :cond_7a

    if-eq v5, v2, :cond_7a

    const/4 v14, 0x3

    if-eq v5, v14, :cond_7a

    const/4 v14, 0x4

    if-eq v5, v14, :cond_7f

    :cond_7a
    move/from16 v5, v20

    :cond_7c
    const/16 v20, 0x0

    goto :goto_85

    :cond_7f
    move/from16 v5, v20

    if-eq v5, v14, :cond_7c

    const/16 v20, 0x1

    .line 11
    :goto_85
    iget v14, v0, Lc/e/b/k/e;->e0:I

    const/16 v2, 0x8

    if-ne v14, v2, :cond_8f

    const/4 v14, 0x0

    const/16 v20, 0x0

    goto :goto_91

    :cond_8f
    move/from16 v14, p13

    :goto_91
    if-eqz p27, :cond_af

    if-nez v11, :cond_9f

    if-nez v12, :cond_9f

    if-nez v16, :cond_9f

    move/from16 v2, p12

    .line 12
    invoke-virtual {v10, v9, v2}, Lc/e/b/d;->f(Lc/e/b/i;I)V

    goto :goto_af

    :cond_9f
    if-eqz v11, :cond_af

    if-nez v12, :cond_af

    .line 13
    invoke-virtual/range {p10 .. p10}, Lc/e/b/k/d;->e()I

    move-result v2

    move-object/from16 v22, v6

    const/16 v6, 0x8

    invoke-virtual {v10, v9, v7, v2, v6}, Lc/e/b/d;->e(Lc/e/b/i;Lc/e/b/i;II)Lc/e/b/b;

    goto :goto_b3

    :cond_af
    :goto_af
    move-object/from16 v22, v6

    const/16 v6, 0x8

    :goto_b3
    if-nez v20, :cond_e2

    if-eqz p9, :cond_cc

    const/4 v2, 0x0

    const/4 v6, 0x3

    .line 14
    invoke-virtual {v10, v8, v9, v2, v6}, Lc/e/b/d;->e(Lc/e/b/i;Lc/e/b/i;II)Lc/e/b/b;

    const/16 v14, 0x8

    if-lez v15, :cond_c3

    .line 15
    invoke-virtual {v10, v8, v9, v15, v14}, Lc/e/b/d;->h(Lc/e/b/i;Lc/e/b/i;II)V

    :cond_c3
    const v2, 0x7fffffff

    if-ge v1, v2, :cond_d2

    .line 16
    invoke-virtual {v10, v8, v9, v1, v14}, Lc/e/b/d;->j(Lc/e/b/i;Lc/e/b/i;II)V

    goto :goto_d2

    :cond_cc
    const/16 v1, 0x8

    const/4 v6, 0x3

    .line 17
    invoke-virtual {v10, v8, v9, v14, v1}, Lc/e/b/d;->e(Lc/e/b/i;Lc/e/b/i;II)Lc/e/b/b;

    :cond_d2
    :goto_d2
    move/from16 v24, v5

    move-object v1, v7

    move-object v14, v8

    move/from16 v23, v20

    move-object/from16 v15, v22

    move/from16 v20, v3

    move/from16 v22, v19

    :goto_de
    move/from16 v19, p5

    goto/16 :goto_1ec

    :cond_e2
    move/from16 v1, v19

    const/4 v2, 0x2

    const/4 v6, 0x3

    if-eq v1, v2, :cond_10e

    if-nez p17, :cond_10e

    const/4 v2, 0x1

    if-eq v5, v2, :cond_ef

    if-nez v5, :cond_10e

    .line 18
    :cond_ef
    invoke-static {v3, v14}, Ljava/lang/Math;->max(II)I

    move-result v2

    if-lez v4, :cond_f9

    .line 19
    invoke-static {v4, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    :cond_f9
    const/16 v14, 0x8

    .line 20
    invoke-virtual {v10, v8, v9, v2, v14}, Lc/e/b/d;->e(Lc/e/b/i;Lc/e/b/i;II)Lc/e/b/b;

    move/from16 v19, p5

    move/from16 v20, v3

    move/from16 v24, v5

    move-object v14, v8

    move-object/from16 v15, v22

    const/16 v23, 0x0

    move/from16 v22, v1

    :goto_10b
    move-object v1, v7

    goto/16 :goto_1ec

    :cond_10e
    const/4 v2, -0x2

    if-ne v3, v2, :cond_112

    move v3, v14

    :cond_112
    if-ne v4, v2, :cond_116

    move v2, v14

    goto :goto_117

    :cond_116
    move v2, v4

    :goto_117
    if-lez v14, :cond_11d

    const/4 v4, 0x1

    if-eq v5, v4, :cond_11d

    const/4 v14, 0x0

    :cond_11d
    if-lez v3, :cond_128

    const/16 v4, 0x8

    .line 21
    invoke-virtual {v10, v8, v9, v3, v4}, Lc/e/b/d;->h(Lc/e/b/i;Lc/e/b/i;II)V

    .line 22
    invoke-static {v14, v3}, Ljava/lang/Math;->max(II)I

    move-result v14

    :cond_128
    if-lez v2, :cond_141

    if-eqz p3, :cond_131

    const/4 v4, 0x1

    if-ne v5, v4, :cond_131

    const/4 v4, 0x0

    goto :goto_132

    :cond_131
    const/4 v4, 0x1

    :goto_132
    if-eqz v4, :cond_13a

    const/16 v4, 0x8

    .line 23
    invoke-virtual {v10, v8, v9, v2, v4}, Lc/e/b/d;->j(Lc/e/b/i;Lc/e/b/i;II)V

    goto :goto_13c

    :cond_13a
    const/16 v4, 0x8

    .line 24
    :goto_13c
    invoke-static {v14, v2}, Ljava/lang/Math;->min(II)I

    move-result v14

    goto :goto_143

    :cond_141
    const/16 v4, 0x8

    :goto_143
    const/4 v6, 0x1

    if-ne v5, v6, :cond_16c

    if-eqz p3, :cond_14c

    .line 25
    invoke-virtual {v10, v8, v9, v14, v4}, Lc/e/b/d;->e(Lc/e/b/i;Lc/e/b/i;II)Lc/e/b/b;

    goto :goto_15d

    :cond_14c
    if-eqz p19, :cond_156

    const/4 v6, 0x5

    .line 26
    invoke-virtual {v10, v8, v9, v14, v6}, Lc/e/b/d;->e(Lc/e/b/i;Lc/e/b/i;II)Lc/e/b/b;

    .line 27
    invoke-virtual {v10, v8, v9, v14, v4}, Lc/e/b/d;->j(Lc/e/b/i;Lc/e/b/i;II)V

    goto :goto_15d

    :cond_156
    const/4 v6, 0x5

    .line 28
    invoke-virtual {v10, v8, v9, v14, v6}, Lc/e/b/d;->e(Lc/e/b/i;Lc/e/b/i;II)Lc/e/b/b;

    .line 29
    invoke-virtual {v10, v8, v9, v14, v4}, Lc/e/b/d;->j(Lc/e/b/i;Lc/e/b/i;II)V

    :goto_15d
    move/from16 v19, p5

    move v4, v2

    move/from16 v24, v5

    move-object v14, v8

    move/from16 v23, v20

    move-object/from16 v15, v22

    move/from16 v22, v1

    move/from16 v20, v3

    goto :goto_10b

    :cond_16c
    const/4 v14, 0x2

    if-ne v5, v14, :cond_1d8

    .line 30
    invoke-virtual/range {p10 .. p10}, Lc/e/b/k/d;->j()Lc/e/b/k/d$b;

    move-result-object v4

    sget-object v6, Lc/e/b/k/d$b;->d:Lc/e/b/k/d$b;

    if-eq v4, v6, :cond_199

    invoke-virtual/range {p10 .. p10}, Lc/e/b/k/d;->j()Lc/e/b/k/d$b;

    move-result-object v4

    sget-object v6, Lc/e/b/k/d$b;->f:Lc/e/b/k/d$b;

    if-ne v4, v6, :cond_180

    goto :goto_199

    .line 31
    :cond_180
    iget-object v4, v0, Lc/e/b/k/e;->R:Lc/e/b/k/e;

    sget-object v6, Lc/e/b/k/d$b;->c:Lc/e/b/k/d$b;

    invoke-virtual {v4, v6}, Lc/e/b/k/e;->m(Lc/e/b/k/d$b;)Lc/e/b/k/d;

    move-result-object v4

    invoke-virtual {v10, v4}, Lc/e/b/d;->q(Ljava/lang/Object;)Lc/e/b/i;

    move-result-object v4

    .line 32
    iget-object v6, v0, Lc/e/b/k/e;->R:Lc/e/b/k/e;

    sget-object v14, Lc/e/b/k/d$b;->e:Lc/e/b/k/d$b;

    invoke-virtual {v6, v14}, Lc/e/b/k/e;->m(Lc/e/b/k/d$b;)Lc/e/b/k/d;

    move-result-object v6

    invoke-virtual {v10, v6}, Lc/e/b/d;->q(Ljava/lang/Object;)Lc/e/b/i;

    move-result-object v6

    goto :goto_1b1

    .line 33
    :cond_199
    :goto_199
    iget-object v4, v0, Lc/e/b/k/e;->R:Lc/e/b/k/e;

    sget-object v6, Lc/e/b/k/d$b;->d:Lc/e/b/k/d$b;

    invoke-virtual {v4, v6}, Lc/e/b/k/e;->m(Lc/e/b/k/d$b;)Lc/e/b/k/d;

    move-result-object v4

    invoke-virtual {v10, v4}, Lc/e/b/d;->q(Ljava/lang/Object;)Lc/e/b/i;

    move-result-object v4

    .line 34
    iget-object v6, v0, Lc/e/b/k/e;->R:Lc/e/b/k/e;

    sget-object v14, Lc/e/b/k/d$b;->f:Lc/e/b/k/d$b;

    invoke-virtual {v6, v14}, Lc/e/b/k/e;->m(Lc/e/b/k/d$b;)Lc/e/b/k/d;

    move-result-object v6

    invoke-virtual {v10, v6}, Lc/e/b/d;->q(Ljava/lang/Object;)Lc/e/b/i;

    move-result-object v6

    :goto_1b1
    move-object v14, v4

    .line 35
    invoke-virtual/range {p1 .. p1}, Lc/e/b/d;->r()Lc/e/b/b;

    move-result-object v4

    move/from16 v19, v3

    move-object v3, v4

    move/from16 p9, v2

    move-object v2, v4

    move-object v4, v8

    move/from16 v24, v5

    const/4 v15, 0x0

    move-object v5, v9

    move-object/from16 v15, v22

    move/from16 v22, v1

    move-object v1, v7

    move-object v7, v14

    move-object v14, v8

    move/from16 v8, p26

    invoke-virtual/range {v3 .. v8}, Lc/e/b/b;->k(Lc/e/b/i;Lc/e/b/i;Lc/e/b/i;Lc/e/b/i;F)Lc/e/b/b;

    invoke-virtual {v10, v2}, Lc/e/b/d;->d(Lc/e/b/b;)V

    move/from16 v4, p9

    move/from16 v20, v19

    const/16 v23, 0x0

    goto/16 :goto_de

    :cond_1d8
    move/from16 p9, v2

    move/from16 v19, v3

    move/from16 v24, v5

    move-object v14, v8

    move-object/from16 v15, v22

    move/from16 v22, v1

    move-object v1, v7

    move/from16 v4, p9

    move/from16 v23, v20

    move/from16 v20, v19

    const/16 v19, 0x1

    :goto_1ec
    if-eqz p27, :cond_528

    if-eqz p19, :cond_1fd

    move-object/from16 v2, p6

    move-object/from16 v3, p7

    move-object v6, v9

    move/from16 v5, v22

    const/4 v1, 0x2

    const/4 v4, 0x1

    const/16 v12, 0x8

    goto/16 :goto_533

    :cond_1fd
    if-nez v11, :cond_205

    if-nez v12, :cond_205

    if-nez v16, :cond_205

    goto/16 :goto_4f3

    :cond_205
    if-eqz v11, :cond_20b

    if-nez v12, :cond_20b

    goto/16 :goto_4f3

    :cond_20b
    if-nez v11, :cond_23e

    if-eqz v12, :cond_23e

    .line 36
    invoke-virtual/range {p11 .. p11}, Lc/e/b/k/d;->e()I

    move-result v1

    neg-int v1, v1

    const/16 v2, 0x8

    invoke-virtual {v10, v14, v15, v1, v2}, Lc/e/b/d;->e(Lc/e/b/i;Lc/e/b/i;II)Lc/e/b/b;

    if-eqz p3, :cond_4f3

    .line 37
    iget-boolean v1, v0, Lc/e/b/k/e;->h:Z

    if-eqz v1, :cond_235

    iget-boolean v1, v9, Lc/e/b/i;->g:Z

    if-eqz v1, :cond_235

    iget-object v1, v0, Lc/e/b/k/e;->R:Lc/e/b/k/e;

    if-eqz v1, :cond_235

    .line 38
    check-cast v1, Lc/e/b/k/f;

    if-eqz p2, :cond_230

    .line 39
    invoke-virtual {v1, v13}, Lc/e/b/k/f;->i1(Lc/e/b/k/d;)V

    goto/16 :goto_4f3

    .line 40
    :cond_230
    invoke-virtual {v1, v13}, Lc/e/b/k/f;->n1(Lc/e/b/k/d;)V

    goto/16 :goto_4f3

    :cond_235
    move-object/from16 v8, p6

    const/4 v1, 0x5

    const/4 v2, 0x0

    .line 41
    invoke-virtual {v10, v9, v8, v2, v1}, Lc/e/b/d;->h(Lc/e/b/i;Lc/e/b/i;II)V

    goto/16 :goto_4f3

    :cond_23e
    move-object/from16 v8, p6

    if-eqz v11, :cond_4f3

    if-eqz v12, :cond_4f3

    .line 42
    iget-object v2, v13, Lc/e/b/k/d;->f:Lc/e/b/k/d;

    iget-object v11, v2, Lc/e/b/k/d;->d:Lc/e/b/k/e;

    move-object/from16 v7, p11

    const/4 v12, 0x4

    .line 43
    iget-object v2, v7, Lc/e/b/k/d;->f:Lc/e/b/k/d;

    iget-object v6, v2, Lc/e/b/k/d;->d:Lc/e/b/k/e;

    .line 44
    invoke-virtual/range {p0 .. p0}, Lc/e/b/k/e;->I()Lc/e/b/k/e;

    move-result-object v5

    const/16 v16, 0x6

    if-eqz v23, :cond_374

    move/from16 v3, v24

    if-nez v3, :cond_2bd

    if-nez v4, :cond_285

    if-nez v20, :cond_285

    .line 45
    iget-boolean v2, v1, Lc/e/b/i;->g:Z

    if-eqz v2, :cond_279

    iget-boolean v2, v15, Lc/e/b/i;->g:Z

    if-eqz v2, :cond_279

    .line 46
    invoke-virtual/range {p10 .. p10}, Lc/e/b/k/d;->e()I

    move-result v2

    const/16 v4, 0x8

    invoke-virtual {v10, v9, v1, v2, v4}, Lc/e/b/d;->e(Lc/e/b/i;Lc/e/b/i;II)Lc/e/b/b;

    .line 47
    invoke-virtual/range {p11 .. p11}, Lc/e/b/k/d;->e()I

    move-result v1

    neg-int v1, v1

    invoke-virtual {v10, v14, v15, v1, v4}, Lc/e/b/d;->e(Lc/e/b/i;Lc/e/b/i;II)Lc/e/b/b;

    return-void

    :cond_279
    const/16 v4, 0x8

    const/4 v2, 0x0

    const/16 v21, 0x1

    const/16 v22, 0x0

    const/16 v24, 0x8

    const/16 v25, 0x8

    goto :goto_290

    :cond_285
    const/16 v4, 0x8

    const/4 v2, 0x1

    const/16 v21, 0x0

    const/16 v22, 0x1

    const/16 v24, 0x5

    const/16 v25, 0x5

    .line 48
    :goto_290
    instance-of v4, v11, Lc/e/b/k/a;

    if-nez v4, :cond_2ab

    instance-of v4, v6, Lc/e/b/k/a;

    if-eqz v4, :cond_299

    goto :goto_2ab

    :cond_299
    move-object/from16 v4, p7

    move/from16 v17, v22

    move/from16 v27, v25

    const/4 v12, 0x1

    const/16 v26, 0x6

    move/from16 v22, v2

    move/from16 v25, v24

    const/4 v2, 0x5

    move/from16 v24, v21

    goto/16 :goto_3c6

    :cond_2ab
    :goto_2ab
    move-object/from16 v4, p7

    move/from16 v17, v22

    move/from16 v25, v24

    const/4 v12, 0x1

    const/16 v26, 0x6

    const/16 v27, 0x4

    move/from16 v22, v2

    move/from16 v24, v21

    const/4 v2, 0x5

    goto/16 :goto_3c6

    :cond_2bd
    const/4 v2, 0x1

    if-ne v3, v2, :cond_2ce

    move-object/from16 v4, p7

    const/4 v2, 0x5

    const/4 v12, 0x1

    const/16 v17, 0x1

    const/16 v22, 0x1

    const/16 v24, 0x0

    const/16 v25, 0x8

    goto/16 :goto_3c2

    :cond_2ce
    const/4 v2, 0x3

    if-ne v3, v2, :cond_36b

    .line 49
    iget v2, v0, Lc/e/b/k/e;->w:I

    const/4 v12, -0x1

    if-ne v2, v12, :cond_2fe

    if-eqz p20, :cond_2ec

    move-object/from16 v4, p7

    const/4 v2, 0x5

    const/4 v12, 0x1

    const/16 v17, 0x1

    const/16 v22, 0x1

    const/16 v24, 0x1

    const/16 v25, 0x8

    if-eqz p3, :cond_2e9

    const/16 v26, 0x5

    goto :goto_2fa

    :cond_2e9
    const/16 v26, 0x4

    goto :goto_2fa

    :cond_2ec
    move-object/from16 v4, p7

    const/4 v2, 0x5

    const/4 v12, 0x1

    const/16 v17, 0x1

    const/16 v22, 0x1

    const/16 v24, 0x1

    const/16 v25, 0x8

    const/16 v26, 0x8

    :goto_2fa
    const/16 v27, 0x5

    goto/16 :goto_3c6

    :cond_2fe
    if-eqz p17, :cond_326

    move/from16 v2, p23

    const/4 v12, 0x2

    if-eq v2, v12, :cond_30b

    const/4 v12, 0x1

    if-ne v2, v12, :cond_309

    goto :goto_30c

    :cond_309
    const/4 v2, 0x0

    goto :goto_30d

    :cond_30b
    const/4 v12, 0x1

    :goto_30c
    const/4 v2, 0x1

    :goto_30d
    if-nez v2, :cond_313

    const/16 v2, 0x8

    const/4 v4, 0x5

    goto :goto_315

    :cond_313
    const/4 v2, 0x5

    const/4 v4, 0x4

    :goto_315
    move/from16 v25, v2

    move/from16 v27, v4

    const/4 v2, 0x5

    const/16 v17, 0x1

    const/16 v22, 0x1

    const/16 v24, 0x1

    const/16 v26, 0x6

    move-object/from16 v4, p7

    goto/16 :goto_3c6

    :cond_326
    const/4 v12, 0x1

    if-lez v4, :cond_337

    move-object/from16 v4, p7

    const/4 v2, 0x5

    const/16 v17, 0x1

    const/16 v22, 0x1

    const/16 v24, 0x1

    const/16 v25, 0x5

    const/16 v26, 0x6

    goto :goto_2fa

    :cond_337
    if-nez v4, :cond_361

    if-nez v20, :cond_361

    if-nez p20, :cond_34e

    move-object/from16 v4, p7

    const/4 v2, 0x5

    const/16 v17, 0x1

    const/16 v22, 0x1

    const/16 v24, 0x1

    const/16 v25, 0x5

    const/16 v26, 0x6

    const/16 v27, 0x8

    goto/16 :goto_3c6

    :cond_34e
    if-eq v11, v5, :cond_354

    if-eq v6, v5, :cond_354

    const/4 v2, 0x4

    goto :goto_355

    :cond_354
    const/4 v2, 0x5

    :goto_355
    move-object/from16 v4, p7

    move/from16 v25, v2

    const/4 v2, 0x5

    const/16 v17, 0x1

    const/16 v22, 0x1

    const/16 v24, 0x1

    goto :goto_3c2

    :cond_361
    move-object/from16 v4, p7

    const/4 v2, 0x5

    const/16 v17, 0x1

    const/16 v22, 0x1

    const/16 v24, 0x1

    goto :goto_3c0

    :cond_36b
    const/4 v12, 0x1

    move-object/from16 v4, p7

    const/4 v2, 0x5

    const/16 v17, 0x0

    const/16 v22, 0x0

    goto :goto_3be

    :cond_374
    move/from16 v3, v24

    const/4 v12, 0x1

    .line 50
    iget-boolean v2, v1, Lc/e/b/i;->g:Z

    if-eqz v2, :cond_3b7

    iget-boolean v2, v15, Lc/e/b/i;->g:Z

    if-eqz v2, :cond_3b7

    .line 51
    invoke-virtual/range {p10 .. p10}, Lc/e/b/k/d;->e()I

    move-result v2

    .line 52
    invoke-virtual/range {p11 .. p11}, Lc/e/b/k/d;->e()I

    move-result v3

    const/16 v4, 0x8

    move-object/from16 p17, p1

    move-object/from16 p18, v9

    move-object/from16 p19, v1

    move/from16 p20, v2

    move/from16 p21, p16

    move-object/from16 p22, v15

    move-object/from16 p23, v14

    move/from16 p24, v3

    move/from16 p25, v4

    .line 53
    invoke-virtual/range {p17 .. p25}, Lc/e/b/d;->c(Lc/e/b/i;Lc/e/b/i;IFLc/e/b/i;Lc/e/b/i;II)V

    if-eqz p3, :cond_3b6

    if-eqz v19, :cond_3b6

    .line 54
    iget-object v1, v7, Lc/e/b/k/d;->f:Lc/e/b/k/d;

    if-eqz v1, :cond_3ad

    .line 55
    invoke-virtual/range {p11 .. p11}, Lc/e/b/k/d;->e()I

    move-result v5

    move-object/from16 v4, p7

    goto :goto_3b0

    :cond_3ad
    move-object/from16 v4, p7

    const/4 v5, 0x0

    :goto_3b0
    if-eq v15, v4, :cond_3b6

    const/4 v2, 0x5

    .line 56
    invoke-virtual {v10, v4, v14, v5, v2}, Lc/e/b/d;->h(Lc/e/b/i;Lc/e/b/i;II)V

    :cond_3b6
    return-void

    :cond_3b7
    move-object/from16 v4, p7

    const/4 v2, 0x5

    const/16 v17, 0x1

    const/16 v22, 0x1

    :goto_3be
    const/16 v24, 0x0

    :goto_3c0
    const/16 v25, 0x5

    :goto_3c2
    const/16 v26, 0x6

    const/16 v27, 0x4

    :goto_3c6
    if-eqz v17, :cond_3d1

    if-ne v1, v15, :cond_3d1

    if-eq v11, v5, :cond_3d1

    const/16 v17, 0x0

    const/16 v28, 0x0

    goto :goto_3d3

    :cond_3d1
    const/16 v28, 0x1

    :goto_3d3
    if-eqz v22, :cond_411

    if-nez v23, :cond_3e8

    if-nez p18, :cond_3e8

    if-nez p20, :cond_3e8

    if-ne v1, v8, :cond_3e8

    if-ne v15, v4, :cond_3e8

    const/16 v22, 0x0

    const/16 v25, 0x8

    const/16 v26, 0x8

    const/16 v28, 0x0

    goto :goto_3ea

    :cond_3e8
    move/from16 v22, p3

    .line 57
    :goto_3ea
    invoke-virtual/range {p10 .. p10}, Lc/e/b/k/d;->e()I

    move-result v29

    .line 58
    invoke-virtual/range {p11 .. p11}, Lc/e/b/k/d;->e()I

    move-result v30

    move-object/from16 p5, v1

    move-object/from16 v1, p1

    const/16 v12, 0x8

    move-object v2, v9

    move/from16 v31, v3

    move-object/from16 v3, p5

    move/from16 v4, v29

    move-object/from16 v32, v5

    move/from16 v5, p16

    move-object/from16 v33, v6

    move-object v6, v15

    move-object v7, v14

    move/from16 v8, v30

    move-object/from16 v34, v9

    move/from16 v9, v26

    .line 59
    invoke-virtual/range {v1 .. v9}, Lc/e/b/d;->c(Lc/e/b/i;Lc/e/b/i;IFLc/e/b/i;Lc/e/b/i;II)V

    goto :goto_41f

    :cond_411
    move-object/from16 p5, v1

    move/from16 v31, v3

    move-object/from16 v32, v5

    move-object/from16 v33, v6

    move-object/from16 v34, v9

    const/16 v12, 0x8

    move/from16 v22, p3

    :goto_41f
    move/from16 v5, v28

    .line 60
    iget v1, v0, Lc/e/b/k/e;->e0:I

    if-ne v1, v12, :cond_42c

    invoke-virtual/range {p11 .. p11}, Lc/e/b/k/d;->l()Z

    move-result v1

    if-nez v1, :cond_42c

    return-void

    :cond_42c
    move-object/from16 v1, p5

    if-eqz v17, :cond_45d

    if-eqz v22, :cond_445

    if-eq v1, v15, :cond_445

    if-nez v23, :cond_445

    .line 61
    instance-of v2, v11, Lc/e/b/k/a;

    if-nez v2, :cond_441

    move-object/from16 v2, v33

    instance-of v3, v2, Lc/e/b/k/a;

    if-eqz v3, :cond_447

    goto :goto_443

    :cond_441
    move-object/from16 v2, v33

    :goto_443
    const/4 v3, 0x6

    goto :goto_449

    :cond_445
    move-object/from16 v2, v33

    :cond_447
    move/from16 v3, v25

    .line 62
    :goto_449
    invoke-virtual/range {p10 .. p10}, Lc/e/b/k/d;->e()I

    move-result v4

    move-object/from16 v6, v34

    invoke-virtual {v10, v6, v1, v4, v3}, Lc/e/b/d;->h(Lc/e/b/i;Lc/e/b/i;II)V

    .line 63
    invoke-virtual/range {p11 .. p11}, Lc/e/b/k/d;->e()I

    move-result v4

    neg-int v4, v4

    invoke-virtual {v10, v14, v15, v4, v3}, Lc/e/b/d;->j(Lc/e/b/i;Lc/e/b/i;II)V

    move/from16 v25, v3

    goto :goto_461

    :cond_45d
    move-object/from16 v2, v33

    move-object/from16 v6, v34

    :goto_461
    if-eqz v22, :cond_471

    if-eqz p21, :cond_471

    .line 64
    instance-of v3, v11, Lc/e/b/k/a;

    if-nez v3, :cond_471

    instance-of v3, v2, Lc/e/b/k/a;

    if-nez v3, :cond_471

    const/4 v3, 0x6

    const/4 v4, 0x6

    const/4 v5, 0x1

    goto :goto_475

    :cond_471
    move/from16 v3, v25

    move/from16 v4, v27

    :goto_475
    if-eqz v5, :cond_4c7

    if-eqz v24, :cond_4a5

    if-eqz p20, :cond_47d

    if-eqz p4, :cond_4a5

    :cond_47d
    move-object/from16 v5, v32

    if-eq v11, v5, :cond_486

    if-ne v2, v5, :cond_484

    goto :goto_486

    :cond_484
    move/from16 v16, v4

    .line 65
    :cond_486
    :goto_486
    instance-of v7, v11, Lc/e/b/k/g;

    if-nez v7, :cond_48e

    instance-of v7, v2, Lc/e/b/k/g;

    if-eqz v7, :cond_490

    :cond_48e
    const/16 v16, 0x5

    .line 66
    :cond_490
    instance-of v7, v11, Lc/e/b/k/a;

    if-nez v7, :cond_498

    instance-of v7, v2, Lc/e/b/k/a;

    if-eqz v7, :cond_49a

    :cond_498
    const/16 v16, 0x5

    :cond_49a
    if-eqz p20, :cond_49e

    const/4 v7, 0x5

    goto :goto_4a0

    :cond_49e
    move/from16 v7, v16

    .line 67
    :goto_4a0
    invoke-static {v7, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    goto :goto_4a7

    :cond_4a5
    move-object/from16 v5, v32

    :goto_4a7
    if-eqz v22, :cond_4b8

    .line 68
    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    if-eqz p17, :cond_4b7

    if-nez p20, :cond_4b7

    if-eq v11, v5, :cond_4b5

    if-ne v2, v5, :cond_4b7

    :cond_4b5
    const/4 v4, 0x4

    goto :goto_4b8

    :cond_4b7
    move v4, v3

    .line 69
    :cond_4b8
    :goto_4b8
    invoke-virtual/range {p10 .. p10}, Lc/e/b/k/d;->e()I

    move-result v2

    invoke-virtual {v10, v6, v1, v2, v4}, Lc/e/b/d;->e(Lc/e/b/i;Lc/e/b/i;II)Lc/e/b/b;

    .line 70
    invoke-virtual/range {p11 .. p11}, Lc/e/b/k/d;->e()I

    move-result v2

    neg-int v2, v2

    invoke-virtual {v10, v14, v15, v2, v4}, Lc/e/b/d;->e(Lc/e/b/i;Lc/e/b/i;II)Lc/e/b/b;

    :cond_4c7
    if-eqz v22, :cond_4d9

    move-object/from16 v2, p6

    if-ne v2, v1, :cond_4d2

    .line 71
    invoke-virtual/range {p10 .. p10}, Lc/e/b/k/d;->e()I

    move-result v5

    goto :goto_4d3

    :cond_4d2
    const/4 v5, 0x0

    :goto_4d3
    if-eq v1, v2, :cond_4d9

    const/4 v1, 0x5

    .line 72
    invoke-virtual {v10, v6, v2, v5, v1}, Lc/e/b/d;->h(Lc/e/b/i;Lc/e/b/i;II)V

    :cond_4d9
    if-eqz v22, :cond_4f5

    if-eqz v23, :cond_4f5

    if-nez p14, :cond_4f5

    if-nez v20, :cond_4f5

    if-eqz v23, :cond_4ed

    move/from16 v5, v31

    const/4 v1, 0x3

    if-ne v5, v1, :cond_4ed

    const/4 v1, 0x0

    .line 73
    invoke-virtual {v10, v14, v6, v1, v12}, Lc/e/b/d;->h(Lc/e/b/i;Lc/e/b/i;II)V

    goto :goto_4f5

    :cond_4ed
    const/4 v1, 0x0

    const/4 v2, 0x5

    .line 74
    invoke-virtual {v10, v14, v6, v1, v2}, Lc/e/b/d;->h(Lc/e/b/i;Lc/e/b/i;II)V

    goto :goto_4f5

    :cond_4f3
    :goto_4f3
    move/from16 v22, p3

    :cond_4f5
    :goto_4f5
    if-eqz v22, :cond_527

    if-eqz v19, :cond_527

    move-object/from16 v1, p11

    .line 75
    iget-object v2, v1, Lc/e/b/k/d;->f:Lc/e/b/k/d;

    if-eqz v2, :cond_506

    .line 76
    invoke-virtual/range {p11 .. p11}, Lc/e/b/k/d;->e()I

    move-result v5

    move-object/from16 v3, p7

    goto :goto_509

    :cond_506
    move-object/from16 v3, p7

    const/4 v5, 0x0

    :goto_509
    if-eq v15, v3, :cond_527

    .line 77
    iget-boolean v2, v0, Lc/e/b/k/e;->h:Z

    if-eqz v2, :cond_523

    iget-boolean v2, v14, Lc/e/b/i;->g:Z

    if-eqz v2, :cond_523

    iget-object v2, v0, Lc/e/b/k/e;->R:Lc/e/b/k/e;

    if-eqz v2, :cond_523

    .line 78
    check-cast v2, Lc/e/b/k/f;

    if-eqz p2, :cond_51f

    .line 79
    invoke-virtual {v2, v1}, Lc/e/b/k/f;->h1(Lc/e/b/k/d;)V

    goto :goto_522

    .line 80
    :cond_51f
    invoke-virtual {v2, v1}, Lc/e/b/k/f;->m1(Lc/e/b/k/d;)V

    :goto_522
    return-void

    :cond_523
    const/4 v1, 0x5

    .line 81
    invoke-virtual {v10, v3, v14, v5, v1}, Lc/e/b/d;->h(Lc/e/b/i;Lc/e/b/i;II)V

    :cond_527
    return-void

    :cond_528
    move-object/from16 v2, p6

    move-object/from16 v3, p7

    move-object v6, v9

    const/4 v1, 0x2

    const/4 v4, 0x1

    const/16 v12, 0x8

    move/from16 v5, v22

    :goto_533
    if-ge v5, v1, :cond_570

    if-eqz p3, :cond_570

    if-eqz v19, :cond_570

    const/4 v1, 0x0

    .line 82
    invoke-virtual {v10, v6, v2, v1, v12}, Lc/e/b/d;->h(Lc/e/b/i;Lc/e/b/i;II)V

    if-nez p2, :cond_548

    .line 83
    iget-object v1, v0, Lc/e/b/k/e;->J:Lc/e/b/k/d;

    iget-object v1, v1, Lc/e/b/k/d;->f:Lc/e/b/k/d;

    if-nez v1, :cond_546

    goto :goto_548

    :cond_546
    const/4 v5, 0x0

    goto :goto_549

    :cond_548
    :goto_548
    const/4 v5, 0x1

    :goto_549
    if-nez p2, :cond_56a

    .line 84
    iget-object v1, v0, Lc/e/b/k/e;->J:Lc/e/b/k/d;

    iget-object v1, v1, Lc/e/b/k/d;->f:Lc/e/b/k/d;

    if-eqz v1, :cond_56a

    .line 85
    iget-object v1, v1, Lc/e/b/k/d;->d:Lc/e/b/k/e;

    .line 86
    iget v2, v1, Lc/e/b/k/e;->U:F

    const/4 v5, 0x0

    cmpl-float v2, v2, v5

    if-eqz v2, :cond_569

    iget-object v1, v1, Lc/e/b/k/e;->Q:[Lc/e/b/k/e$b;

    const/4 v2, 0x0

    aget-object v5, v1, v2

    sget-object v2, Lc/e/b/k/e$b;->d:Lc/e/b/k/e$b;

    if-ne v5, v2, :cond_569

    aget-object v1, v1, v4

    if-ne v1, v2, :cond_569

    const/4 v5, 0x1

    goto :goto_56a

    :cond_569
    const/4 v5, 0x0

    :cond_56a
    :goto_56a
    if-eqz v5, :cond_570

    const/4 v1, 0x0

    .line 87
    invoke-virtual {v10, v3, v14, v1, v12}, Lc/e/b/d;->h(Lc/e/b/i;Lc/e/b/i;II)V

    :cond_570
    return-void
.end method


# virtual methods
.method public A()I
    .registers 2

    .line 1
    iget v0, p0, Lc/e/b/k/e;->D:I

    return v0
.end method

.method public A0(IIIF)V
    .registers 5

    .line 1
    iput p1, p0, Lc/e/b/k/e;->n:I

    .line 2
    iput p2, p0, Lc/e/b/k/e;->q:I

    const p1, 0x7fffffff

    if-ne p3, p1, :cond_a

    const/4 p3, 0x0

    .line 3
    :cond_a
    iput p3, p0, Lc/e/b/k/e;->r:I

    .line 4
    iput p4, p0, Lc/e/b/k/e;->s:F

    const/4 p1, 0x0

    cmpl-float p1, p4, p1

    if-lez p1, :cond_20

    const/high16 p1, 0x3f800000    # 1.0f

    cmpg-float p1, p4, p1

    if-gez p1, :cond_20

    .line 5
    iget p1, p0, Lc/e/b/k/e;->n:I

    if-nez p1, :cond_20

    const/4 p1, 0x2

    .line 6
    iput p1, p0, Lc/e/b/k/e;->n:I

    :cond_20
    return-void
.end method

.method public B()I
    .registers 2

    .line 1
    iget v0, p0, Lc/e/b/k/e;->E:I

    return v0
.end method

.method public B0(F)V
    .registers 4

    .line 1
    iget-object v0, p0, Lc/e/b/k/e;->j0:[F

    const/4 v1, 0x0

    aput p1, v0, v1

    return-void
.end method

.method public C(I)I
    .registers 3

    if-nez p1, :cond_7

    .line 1
    invoke-virtual {p0}, Lc/e/b/k/e;->R()I

    move-result p1

    return p1

    :cond_7
    const/4 v0, 0x1

    if-ne p1, v0, :cond_f

    .line 2
    invoke-virtual {p0}, Lc/e/b/k/e;->v()I

    move-result p1

    return p1

    :cond_f
    const/4 p1, 0x0

    return p1
.end method

.method protected C0(IZ)V
    .registers 4

    .line 1
    iget-object v0, p0, Lc/e/b/k/e;->P:[Z

    aput-boolean p2, v0, p1

    return-void
.end method

.method public D()I
    .registers 3

    .line 1
    iget-object v0, p0, Lc/e/b/k/e;->y:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    return v0
.end method

.method public D0(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Lc/e/b/k/e;->B:Z

    return-void
.end method

.method public E()I
    .registers 3

    .line 1
    iget-object v0, p0, Lc/e/b/k/e;->y:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method public E0(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Lc/e/b/k/e;->C:Z

    return-void
.end method

.method public F()I
    .registers 2

    .line 1
    iget v0, p0, Lc/e/b/k/e;->a0:I

    return v0
.end method

.method public F0(II)V
    .registers 3

    .line 1
    iput p1, p0, Lc/e/b/k/e;->D:I

    .line 2
    iput p2, p0, Lc/e/b/k/e;->E:I

    const/4 p1, 0x0

    .line 3
    invoke-virtual {p0, p1}, Lc/e/b/k/e;->I0(Z)V

    return-void
.end method

.method public G()I
    .registers 2

    .line 1
    iget v0, p0, Lc/e/b/k/e;->Z:I

    return v0
.end method

.method public G0(I)V
    .registers 4

    .line 1
    iget-object v0, p0, Lc/e/b/k/e;->y:[I

    const/4 v1, 0x1

    aput p1, v0, v1

    return-void
.end method

.method public H(I)Lc/e/b/k/e;
    .registers 4

    if-nez p1, :cond_f

    .line 1
    iget-object p1, p0, Lc/e/b/k/e;->H:Lc/e/b/k/d;

    iget-object v0, p1, Lc/e/b/k/d;->f:Lc/e/b/k/d;

    if-eqz v0, :cond_1f

    iget-object v1, v0, Lc/e/b/k/d;->f:Lc/e/b/k/d;

    if-ne v1, p1, :cond_1f

    .line 2
    iget-object p1, v0, Lc/e/b/k/d;->d:Lc/e/b/k/e;

    return-object p1

    :cond_f
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1f

    .line 3
    iget-object p1, p0, Lc/e/b/k/e;->I:Lc/e/b/k/d;

    iget-object v0, p1, Lc/e/b/k/d;->f:Lc/e/b/k/d;

    if-eqz v0, :cond_1f

    iget-object v1, v0, Lc/e/b/k/d;->f:Lc/e/b/k/d;

    if-ne v1, p1, :cond_1f

    .line 4
    iget-object p1, v0, Lc/e/b/k/d;->d:Lc/e/b/k/e;

    return-object p1

    :cond_1f
    const/4 p1, 0x0

    return-object p1
.end method

.method public H0(I)V
    .registers 4

    .line 1
    iget-object v0, p0, Lc/e/b/k/e;->y:[I

    const/4 v1, 0x0

    aput p1, v0, v1

    return-void
.end method

.method public I()Lc/e/b/k/e;
    .registers 2

    .line 1
    iget-object v0, p0, Lc/e/b/k/e;->R:Lc/e/b/k/e;

    return-object v0
.end method

.method public I0(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Lc/e/b/k/e;->g:Z

    return-void
.end method

.method public J(I)Lc/e/b/k/e;
    .registers 4

    if-nez p1, :cond_f

    .line 1
    iget-object p1, p0, Lc/e/b/k/e;->F:Lc/e/b/k/d;

    iget-object v0, p1, Lc/e/b/k/d;->f:Lc/e/b/k/d;

    if-eqz v0, :cond_1f

    iget-object v1, v0, Lc/e/b/k/d;->f:Lc/e/b/k/d;

    if-ne v1, p1, :cond_1f

    .line 2
    iget-object p1, v0, Lc/e/b/k/d;->d:Lc/e/b/k/e;

    return-object p1

    :cond_f
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1f

    .line 3
    iget-object p1, p0, Lc/e/b/k/e;->G:Lc/e/b/k/d;

    iget-object v0, p1, Lc/e/b/k/d;->f:Lc/e/b/k/d;

    if-eqz v0, :cond_1f

    iget-object v1, v0, Lc/e/b/k/d;->f:Lc/e/b/k/d;

    if-ne v1, p1, :cond_1f

    .line 4
    iget-object p1, v0, Lc/e/b/k/d;->d:Lc/e/b/k/e;

    return-object p1

    :cond_1f
    const/4 p1, 0x0

    return-object p1
.end method

.method public J0(I)V
    .registers 2

    if-gez p1, :cond_6

    const/4 p1, 0x0

    .line 1
    iput p1, p0, Lc/e/b/k/e;->a0:I

    goto :goto_8

    .line 2
    :cond_6
    iput p1, p0, Lc/e/b/k/e;->a0:I

    :goto_8
    return-void
.end method

.method public K()I
    .registers 3

    .line 1
    invoke-virtual {p0}, Lc/e/b/k/e;->S()I

    move-result v0

    iget v1, p0, Lc/e/b/k/e;->S:I

    add-int/2addr v0, v1

    return v0
.end method

.method public K0(I)V
    .registers 2

    if-gez p1, :cond_6

    const/4 p1, 0x0

    .line 1
    iput p1, p0, Lc/e/b/k/e;->Z:I

    goto :goto_8

    .line 2
    :cond_6
    iput p1, p0, Lc/e/b/k/e;->Z:I

    :goto_8
    return-void
.end method

.method public L(I)Lc/e/b/k/m/p;
    .registers 3

    if-nez p1, :cond_5

    .line 1
    iget-object p1, p0, Lc/e/b/k/e;->d:Lc/e/b/k/m/l;

    return-object p1

    :cond_5
    const/4 v0, 0x1

    if-ne p1, v0, :cond_b

    .line 2
    iget-object p1, p0, Lc/e/b/k/e;->e:Lc/e/b/k/m/n;

    return-object p1

    :cond_b
    const/4 p1, 0x0

    return-object p1
.end method

.method public L0(II)V
    .registers 3

    .line 1
    iput p1, p0, Lc/e/b/k/e;->W:I

    .line 2
    iput p2, p0, Lc/e/b/k/e;->X:I

    return-void
.end method

.method public M()F
    .registers 2

    .line 1
    iget v0, p0, Lc/e/b/k/e;->c0:F

    return v0
.end method

.method public M0(Lc/e/b/k/e;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lc/e/b/k/e;->R:Lc/e/b/k/e;

    return-void
.end method

.method public N()I
    .registers 2

    .line 1
    iget v0, p0, Lc/e/b/k/e;->i0:I

    return v0
.end method

.method public N0(F)V
    .registers 2

    .line 1
    iput p1, p0, Lc/e/b/k/e;->c0:F

    return-void
.end method

.method public O()Lc/e/b/k/e$b;
    .registers 3

    .line 1
    iget-object v0, p0, Lc/e/b/k/e;->Q:[Lc/e/b/k/e$b;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public O0(I)V
    .registers 2

    .line 1
    iput p1, p0, Lc/e/b/k/e;->i0:I

    return-void
.end method

.method public P()I
    .registers 3

    .line 1
    iget-object v0, p0, Lc/e/b/k/e;->F:Lc/e/b/k/d;

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    .line 2
    iget-object v0, p0, Lc/e/b/k/e;->G:Lc/e/b/k/d;

    iget v0, v0, Lc/e/b/k/d;->g:I

    add-int/2addr v1, v0

    .line 3
    :cond_a
    iget-object v0, p0, Lc/e/b/k/e;->H:Lc/e/b/k/d;

    if-eqz v0, :cond_13

    .line 4
    iget-object v0, p0, Lc/e/b/k/e;->I:Lc/e/b/k/d;

    iget v0, v0, Lc/e/b/k/d;->g:I

    add-int/2addr v1, v0

    :cond_13
    return v1
.end method

.method public P0(II)V
    .registers 3

    .line 1
    iput p1, p0, Lc/e/b/k/e;->X:I

    sub-int/2addr p2, p1

    .line 2
    iput p2, p0, Lc/e/b/k/e;->T:I

    .line 3
    iget p1, p0, Lc/e/b/k/e;->a0:I

    if-ge p2, p1, :cond_b

    .line 4
    iput p1, p0, Lc/e/b/k/e;->T:I

    :cond_b
    return-void
.end method

.method public Q()I
    .registers 2

    .line 1
    iget v0, p0, Lc/e/b/k/e;->e0:I

    return v0
.end method

.method public Q0(Lc/e/b/k/e$b;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lc/e/b/k/e;->Q:[Lc/e/b/k/e$b;

    const/4 v1, 0x1

    aput-object p1, v0, v1

    return-void
.end method

.method public R()I
    .registers 3

    .line 1
    iget v0, p0, Lc/e/b/k/e;->e0:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_8

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_8
    iget v0, p0, Lc/e/b/k/e;->S:I

    return v0
.end method

.method public R0(IIIF)V
    .registers 5

    .line 1
    iput p1, p0, Lc/e/b/k/e;->o:I

    .line 2
    iput p2, p0, Lc/e/b/k/e;->t:I

    const p1, 0x7fffffff

    if-ne p3, p1, :cond_a

    const/4 p3, 0x0

    .line 3
    :cond_a
    iput p3, p0, Lc/e/b/k/e;->u:I

    .line 4
    iput p4, p0, Lc/e/b/k/e;->v:F

    const/4 p1, 0x0

    cmpl-float p1, p4, p1

    if-lez p1, :cond_20

    const/high16 p1, 0x3f800000    # 1.0f

    cmpg-float p1, p4, p1

    if-gez p1, :cond_20

    .line 5
    iget p1, p0, Lc/e/b/k/e;->o:I

    if-nez p1, :cond_20

    const/4 p1, 0x2

    .line 6
    iput p1, p0, Lc/e/b/k/e;->o:I

    :cond_20
    return-void
.end method

.method public S()I
    .registers 3

    .line 1
    iget-object v0, p0, Lc/e/b/k/e;->R:Lc/e/b/k/e;

    if-eqz v0, :cond_10

    instance-of v1, v0, Lc/e/b/k/f;

    if-eqz v1, :cond_10

    .line 2
    check-cast v0, Lc/e/b/k/f;

    iget v0, v0, Lc/e/b/k/f;->w0:I

    iget v1, p0, Lc/e/b/k/e;->W:I

    add-int/2addr v0, v1

    return v0

    .line 3
    :cond_10
    iget v0, p0, Lc/e/b/k/e;->W:I

    return v0
.end method

.method public S0(F)V
    .registers 4

    .line 1
    iget-object v0, p0, Lc/e/b/k/e;->j0:[F

    const/4 v1, 0x1

    aput p1, v0, v1

    return-void
.end method

.method public T()I
    .registers 3

    .line 1
    iget-object v0, p0, Lc/e/b/k/e;->R:Lc/e/b/k/e;

    if-eqz v0, :cond_10

    instance-of v1, v0, Lc/e/b/k/f;

    if-eqz v1, :cond_10

    .line 2
    check-cast v0, Lc/e/b/k/f;

    iget v0, v0, Lc/e/b/k/f;->x0:I

    iget v1, p0, Lc/e/b/k/e;->X:I

    add-int/2addr v0, v1

    return v0

    .line 3
    :cond_10
    iget v0, p0, Lc/e/b/k/e;->X:I

    return v0
.end method

.method public T0(I)V
    .registers 2

    .line 1
    iput p1, p0, Lc/e/b/k/e;->e0:I

    return-void
.end method

.method public U()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lc/e/b/k/e;->A:Z

    return v0
.end method

.method public U0(I)V
    .registers 3

    .line 1
    iput p1, p0, Lc/e/b/k/e;->S:I

    .line 2
    iget v0, p0, Lc/e/b/k/e;->Z:I

    if-ge p1, v0, :cond_8

    .line 3
    iput v0, p0, Lc/e/b/k/e;->S:I

    :cond_8
    return-void
.end method

.method public V(I)Z
    .registers 6

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez p1, :cond_1d

    .line 1
    iget-object p1, p0, Lc/e/b/k/e;->F:Lc/e/b/k/d;

    iget-object p1, p1, Lc/e/b/k/d;->f:Lc/e/b/k/d;

    if-eqz p1, :cond_d

    const/4 p1, 0x1

    goto :goto_e

    :cond_d
    const/4 p1, 0x0

    :goto_e
    iget-object v3, p0, Lc/e/b/k/e;->H:Lc/e/b/k/d;

    iget-object v3, v3, Lc/e/b/k/d;->f:Lc/e/b/k/d;

    if-eqz v3, :cond_16

    const/4 v3, 0x1

    goto :goto_17

    :cond_16
    const/4 v3, 0x0

    :goto_17
    add-int/2addr p1, v3

    if-ge p1, v0, :cond_1b

    goto :goto_1c

    :cond_1b
    const/4 v1, 0x0

    :goto_1c
    return v1

    .line 2
    :cond_1d
    iget-object p1, p0, Lc/e/b/k/e;->G:Lc/e/b/k/d;

    iget-object p1, p1, Lc/e/b/k/d;->f:Lc/e/b/k/d;

    if-eqz p1, :cond_25

    const/4 p1, 0x1

    goto :goto_26

    :cond_25
    const/4 p1, 0x0

    :goto_26
    iget-object v3, p0, Lc/e/b/k/e;->I:Lc/e/b/k/d;

    iget-object v3, v3, Lc/e/b/k/d;->f:Lc/e/b/k/d;

    if-eqz v3, :cond_2e

    const/4 v3, 0x1

    goto :goto_2f

    :cond_2e
    const/4 v3, 0x0

    :goto_2f
    add-int/2addr p1, v3

    iget-object v3, p0, Lc/e/b/k/e;->J:Lc/e/b/k/d;

    iget-object v3, v3, Lc/e/b/k/d;->f:Lc/e/b/k/d;

    if-eqz v3, :cond_38

    const/4 v3, 0x1

    goto :goto_39

    :cond_38
    const/4 v3, 0x0

    :goto_39
    add-int/2addr p1, v3

    if-ge p1, v0, :cond_3d

    goto :goto_3e

    :cond_3d
    const/4 v1, 0x0

    :goto_3e
    return v1
.end method

.method public V0(I)V
    .registers 2

    .line 1
    iput p1, p0, Lc/e/b/k/e;->W:I

    return-void
.end method

.method public W()Z
    .registers 5

    .line 1
    iget-object v0, p0, Lc/e/b/k/e;->O:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_8
    if-ge v2, v0, :cond_1d

    .line 2
    iget-object v3, p0, Lc/e/b/k/e;->O:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lc/e/b/k/d;

    .line 3
    invoke-virtual {v3}, Lc/e/b/k/d;->l()Z

    move-result v3

    if-eqz v3, :cond_1a

    const/4 v0, 0x1

    return v0

    :cond_1a
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_1d
    return v1
.end method

.method public W0(I)V
    .registers 2

    .line 1
    iput p1, p0, Lc/e/b/k/e;->X:I

    return-void
.end method

.method public X(Lc/e/b/k/d$b;Lc/e/b/k/e;Lc/e/b/k/d$b;II)V
    .registers 6

    .line 1
    invoke-virtual {p0, p1}, Lc/e/b/k/e;->m(Lc/e/b/k/d$b;)Lc/e/b/k/d;

    move-result-object p1

    .line 2
    invoke-virtual {p2, p3}, Lc/e/b/k/e;->m(Lc/e/b/k/d$b;)Lc/e/b/k/d;

    move-result-object p2

    const/4 p3, 0x1

    .line 3
    invoke-virtual {p1, p2, p4, p5, p3}, Lc/e/b/k/d;->a(Lc/e/b/k/d;IIZ)Z

    return-void
.end method

.method public X0(ZZZZ)V
    .registers 8

    .line 1
    iget p1, p0, Lc/e/b/k/e;->w:I

    const/high16 p2, 0x3f800000    # 1.0f

    const/4 v0, 0x0

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-ne p1, v1, :cond_20

    if-eqz p3, :cond_10

    if-nez p4, :cond_10

    .line 2
    iput v0, p0, Lc/e/b/k/e;->w:I

    goto :goto_20

    :cond_10
    if-nez p3, :cond_20

    if-eqz p4, :cond_20

    .line 3
    iput v2, p0, Lc/e/b/k/e;->w:I

    .line 4
    iget p1, p0, Lc/e/b/k/e;->V:I

    if-ne p1, v1, :cond_20

    .line 5
    iget p1, p0, Lc/e/b/k/e;->x:F

    div-float p1, p2, p1

    iput p1, p0, Lc/e/b/k/e;->x:F

    .line 6
    :cond_20
    :goto_20
    iget p1, p0, Lc/e/b/k/e;->w:I

    if-nez p1, :cond_37

    iget-object p1, p0, Lc/e/b/k/e;->G:Lc/e/b/k/d;

    invoke-virtual {p1}, Lc/e/b/k/d;->n()Z

    move-result p1

    if-eqz p1, :cond_34

    iget-object p1, p0, Lc/e/b/k/e;->I:Lc/e/b/k/d;

    invoke-virtual {p1}, Lc/e/b/k/d;->n()Z

    move-result p1

    if-nez p1, :cond_37

    .line 7
    :cond_34
    iput v2, p0, Lc/e/b/k/e;->w:I

    goto :goto_4d

    .line 8
    :cond_37
    iget p1, p0, Lc/e/b/k/e;->w:I

    if-ne p1, v2, :cond_4d

    iget-object p1, p0, Lc/e/b/k/e;->F:Lc/e/b/k/d;

    invoke-virtual {p1}, Lc/e/b/k/d;->n()Z

    move-result p1

    if-eqz p1, :cond_4b

    iget-object p1, p0, Lc/e/b/k/e;->H:Lc/e/b/k/d;

    invoke-virtual {p1}, Lc/e/b/k/d;->n()Z

    move-result p1

    if-nez p1, :cond_4d

    .line 9
    :cond_4b
    iput v0, p0, Lc/e/b/k/e;->w:I

    .line 10
    :cond_4d
    :goto_4d
    iget p1, p0, Lc/e/b/k/e;->w:I

    if-ne p1, v1, :cond_9c

    .line 11
    iget-object p1, p0, Lc/e/b/k/e;->G:Lc/e/b/k/d;

    invoke-virtual {p1}, Lc/e/b/k/d;->n()Z

    move-result p1

    if-eqz p1, :cond_71

    iget-object p1, p0, Lc/e/b/k/e;->I:Lc/e/b/k/d;

    invoke-virtual {p1}, Lc/e/b/k/d;->n()Z

    move-result p1

    if-eqz p1, :cond_71

    iget-object p1, p0, Lc/e/b/k/e;->F:Lc/e/b/k/d;

    .line 12
    invoke-virtual {p1}, Lc/e/b/k/d;->n()Z

    move-result p1

    if-eqz p1, :cond_71

    iget-object p1, p0, Lc/e/b/k/e;->H:Lc/e/b/k/d;

    invoke-virtual {p1}, Lc/e/b/k/d;->n()Z

    move-result p1

    if-nez p1, :cond_9c

    .line 13
    :cond_71
    iget-object p1, p0, Lc/e/b/k/e;->G:Lc/e/b/k/d;

    invoke-virtual {p1}, Lc/e/b/k/d;->n()Z

    move-result p1

    if-eqz p1, :cond_84

    iget-object p1, p0, Lc/e/b/k/e;->I:Lc/e/b/k/d;

    invoke-virtual {p1}, Lc/e/b/k/d;->n()Z

    move-result p1

    if-eqz p1, :cond_84

    .line 14
    iput v0, p0, Lc/e/b/k/e;->w:I

    goto :goto_9c

    .line 15
    :cond_84
    iget-object p1, p0, Lc/e/b/k/e;->F:Lc/e/b/k/d;

    invoke-virtual {p1}, Lc/e/b/k/d;->n()Z

    move-result p1

    if-eqz p1, :cond_9c

    iget-object p1, p0, Lc/e/b/k/e;->H:Lc/e/b/k/d;

    invoke-virtual {p1}, Lc/e/b/k/d;->n()Z

    move-result p1

    if-eqz p1, :cond_9c

    .line 16
    iget p1, p0, Lc/e/b/k/e;->x:F

    div-float p1, p2, p1

    iput p1, p0, Lc/e/b/k/e;->x:F

    .line 17
    iput v2, p0, Lc/e/b/k/e;->w:I

    .line 18
    :cond_9c
    :goto_9c
    iget p1, p0, Lc/e/b/k/e;->w:I

    if-ne p1, v1, :cond_ba

    .line 19
    iget p1, p0, Lc/e/b/k/e;->q:I

    if-lez p1, :cond_ab

    iget p1, p0, Lc/e/b/k/e;->t:I

    if-nez p1, :cond_ab

    .line 20
    iput v0, p0, Lc/e/b/k/e;->w:I

    goto :goto_ba

    .line 21
    :cond_ab
    iget p1, p0, Lc/e/b/k/e;->q:I

    if-nez p1, :cond_ba

    iget p1, p0, Lc/e/b/k/e;->t:I

    if-lez p1, :cond_ba

    .line 22
    iget p1, p0, Lc/e/b/k/e;->x:F

    div-float/2addr p2, p1

    iput p2, p0, Lc/e/b/k/e;->x:F

    .line 23
    iput v2, p0, Lc/e/b/k/e;->w:I

    :cond_ba
    :goto_ba
    return-void
.end method

.method public Y0(ZZ)V
    .registers 10

    .line 1
    iget-object v0, p0, Lc/e/b/k/e;->d:Lc/e/b/k/m/l;

    invoke-virtual {v0}, Lc/e/b/k/m/p;->k()Z

    move-result v0

    and-int/2addr p1, v0

    .line 2
    iget-object v0, p0, Lc/e/b/k/e;->e:Lc/e/b/k/m/n;

    invoke-virtual {v0}, Lc/e/b/k/m/p;->k()Z

    move-result v0

    and-int/2addr p2, v0

    .line 3
    iget-object v0, p0, Lc/e/b/k/e;->d:Lc/e/b/k/m/l;

    iget-object v1, v0, Lc/e/b/k/m/p;->h:Lc/e/b/k/m/f;

    iget v1, v1, Lc/e/b/k/m/f;->g:I

    .line 4
    iget-object v2, p0, Lc/e/b/k/e;->e:Lc/e/b/k/m/n;

    iget-object v3, v2, Lc/e/b/k/m/p;->h:Lc/e/b/k/m/f;

    iget v3, v3, Lc/e/b/k/m/f;->g:I

    .line 5
    iget-object v0, v0, Lc/e/b/k/m/p;->i:Lc/e/b/k/m/f;

    iget v0, v0, Lc/e/b/k/m/f;->g:I

    .line 6
    iget-object v2, v2, Lc/e/b/k/m/p;->i:Lc/e/b/k/m/f;

    iget v2, v2, Lc/e/b/k/m/f;->g:I

    sub-int v4, v0, v1

    sub-int v5, v2, v3

    const/4 v6, 0x0

    if-ltz v4, :cond_40

    if-ltz v5, :cond_40

    const/high16 v4, -0x80000000

    if-eq v1, v4, :cond_40

    const v5, 0x7fffffff

    if-eq v1, v5, :cond_40

    if-eq v3, v4, :cond_40

    if-eq v3, v5, :cond_40

    if-eq v0, v4, :cond_40

    if-eq v0, v5, :cond_40

    if-eq v2, v4, :cond_40

    if-ne v2, v5, :cond_44

    :cond_40
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :cond_44
    sub-int/2addr v0, v1

    sub-int/2addr v2, v3

    if-eqz p1, :cond_4a

    .line 7
    iput v1, p0, Lc/e/b/k/e;->W:I

    :cond_4a
    if-eqz p2, :cond_4e

    .line 8
    iput v3, p0, Lc/e/b/k/e;->X:I

    .line 9
    :cond_4e
    iget v1, p0, Lc/e/b/k/e;->e0:I

    const/16 v3, 0x8

    if-ne v1, v3, :cond_59

    .line 10
    iput v6, p0, Lc/e/b/k/e;->S:I

    .line 11
    iput v6, p0, Lc/e/b/k/e;->T:I

    return-void

    :cond_59
    if-eqz p1, :cond_70

    .line 12
    iget-object p1, p0, Lc/e/b/k/e;->Q:[Lc/e/b/k/e$b;

    aget-object p1, p1, v6

    sget-object v1, Lc/e/b/k/e$b;->b:Lc/e/b/k/e$b;

    if-ne p1, v1, :cond_68

    iget p1, p0, Lc/e/b/k/e;->S:I

    if-ge v0, p1, :cond_68

    move v0, p1

    .line 13
    :cond_68
    iput v0, p0, Lc/e/b/k/e;->S:I

    .line 14
    iget p1, p0, Lc/e/b/k/e;->Z:I

    if-ge v0, p1, :cond_70

    .line 15
    iput p1, p0, Lc/e/b/k/e;->S:I

    :cond_70
    if-eqz p2, :cond_88

    .line 16
    iget-object p1, p0, Lc/e/b/k/e;->Q:[Lc/e/b/k/e$b;

    const/4 p2, 0x1

    aget-object p1, p1, p2

    sget-object p2, Lc/e/b/k/e$b;->b:Lc/e/b/k/e$b;

    if-ne p1, p2, :cond_80

    iget p1, p0, Lc/e/b/k/e;->T:I

    if-ge v2, p1, :cond_80

    move v2, p1

    .line 17
    :cond_80
    iput v2, p0, Lc/e/b/k/e;->T:I

    .line 18
    iget p1, p0, Lc/e/b/k/e;->a0:I

    if-ge v2, p1, :cond_88

    .line 19
    iput p1, p0, Lc/e/b/k/e;->T:I

    :cond_88
    return-void
.end method

.method public Z()Z
    .registers 3

    .line 1
    iget-object v0, p0, Lc/e/b/k/e;->F:Lc/e/b/k/d;

    iget-object v1, v0, Lc/e/b/k/d;->f:Lc/e/b/k/d;

    if-eqz v1, :cond_a

    iget-object v1, v1, Lc/e/b/k/d;->f:Lc/e/b/k/d;

    if-eq v1, v0, :cond_14

    :cond_a
    iget-object v0, p0, Lc/e/b/k/e;->H:Lc/e/b/k/d;

    iget-object v1, v0, Lc/e/b/k/d;->f:Lc/e/b/k/d;

    if-eqz v1, :cond_16

    iget-object v1, v1, Lc/e/b/k/d;->f:Lc/e/b/k/d;

    if-ne v1, v0, :cond_16

    :cond_14
    const/4 v0, 0x1

    return v0

    :cond_16
    const/4 v0, 0x0

    return v0
.end method

.method public Z0(Lc/e/b/d;Z)V
    .registers 9

    .line 1
    iget-object v0, p0, Lc/e/b/k/e;->F:Lc/e/b/k/d;

    invoke-virtual {p1, v0}, Lc/e/b/d;->x(Ljava/lang/Object;)I

    move-result v0

    .line 2
    iget-object v1, p0, Lc/e/b/k/e;->G:Lc/e/b/k/d;

    invoke-virtual {p1, v1}, Lc/e/b/d;->x(Ljava/lang/Object;)I

    move-result v1

    .line 3
    iget-object v2, p0, Lc/e/b/k/e;->H:Lc/e/b/k/d;

    invoke-virtual {p1, v2}, Lc/e/b/d;->x(Ljava/lang/Object;)I

    move-result v2

    .line 4
    iget-object v3, p0, Lc/e/b/k/e;->I:Lc/e/b/k/d;

    invoke-virtual {p1, v3}, Lc/e/b/d;->x(Ljava/lang/Object;)I

    move-result p1

    if-eqz p2, :cond_2e

    .line 5
    iget-object v3, p0, Lc/e/b/k/e;->d:Lc/e/b/k/m/l;

    if-eqz v3, :cond_2e

    iget-object v4, v3, Lc/e/b/k/m/p;->h:Lc/e/b/k/m/f;

    iget-boolean v5, v4, Lc/e/b/k/m/f;->j:Z

    if-eqz v5, :cond_2e

    iget-object v3, v3, Lc/e/b/k/m/p;->i:Lc/e/b/k/m/f;

    iget-boolean v5, v3, Lc/e/b/k/m/f;->j:Z

    if-eqz v5, :cond_2e

    .line 6
    iget v0, v4, Lc/e/b/k/m/f;->g:I

    .line 7
    iget v2, v3, Lc/e/b/k/m/f;->g:I

    :cond_2e
    if-eqz p2, :cond_44

    .line 8
    iget-object p2, p0, Lc/e/b/k/e;->e:Lc/e/b/k/m/n;

    if-eqz p2, :cond_44

    iget-object v3, p2, Lc/e/b/k/m/p;->h:Lc/e/b/k/m/f;

    iget-boolean v4, v3, Lc/e/b/k/m/f;->j:Z

    if-eqz v4, :cond_44

    iget-object p2, p2, Lc/e/b/k/m/p;->i:Lc/e/b/k/m/f;

    iget-boolean v4, p2, Lc/e/b/k/m/f;->j:Z

    if-eqz v4, :cond_44

    .line 9
    iget v1, v3, Lc/e/b/k/m/f;->g:I

    .line 10
    iget p1, p2, Lc/e/b/k/m/f;->g:I

    :cond_44
    sub-int p2, v2, v0

    sub-int v3, p1, v1

    const/4 v4, 0x0

    if-ltz p2, :cond_62

    if-ltz v3, :cond_62

    const/high16 p2, -0x80000000

    if-eq v0, p2, :cond_62

    const v3, 0x7fffffff

    if-eq v0, v3, :cond_62

    if-eq v1, p2, :cond_62

    if-eq v1, v3, :cond_62

    if-eq v2, p2, :cond_62

    if-eq v2, v3, :cond_62

    if-eq p1, p2, :cond_62

    if-ne p1, v3, :cond_66

    :cond_62
    const/4 p1, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 11
    :cond_66
    invoke-virtual {p0, v0, v1, v2, p1}, Lc/e/b/k/e;->t0(IIII)V

    return-void
.end method

.method public a0()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lc/e/b/k/e;->B:Z

    return v0
.end method

.method public b0()Z
    .registers 3

    .line 1
    iget-object v0, p0, Lc/e/b/k/e;->G:Lc/e/b/k/d;

    iget-object v1, v0, Lc/e/b/k/d;->f:Lc/e/b/k/d;

    if-eqz v1, :cond_a

    iget-object v1, v1, Lc/e/b/k/d;->f:Lc/e/b/k/d;

    if-eq v1, v0, :cond_14

    :cond_a
    iget-object v0, p0, Lc/e/b/k/e;->I:Lc/e/b/k/d;

    iget-object v1, v0, Lc/e/b/k/d;->f:Lc/e/b/k/d;

    if-eqz v1, :cond_16

    iget-object v1, v1, Lc/e/b/k/d;->f:Lc/e/b/k/d;

    if-ne v1, v0, :cond_16

    :cond_14
    const/4 v0, 0x1

    return v0

    :cond_16
    const/4 v0, 0x0

    return v0
.end method

.method public c0()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lc/e/b/k/e;->C:Z

    return v0
.end method

.method public d0()Z
    .registers 3

    .line 1
    iget-boolean v0, p0, Lc/e/b/k/e;->g:Z

    if-eqz v0, :cond_c

    iget v0, p0, Lc/e/b/k/e;->e0:I

    const/16 v1, 0x8

    if-eq v0, v1, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public e(Lc/e/b/k/f;Lc/e/b/d;Ljava/util/HashSet;IZ)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/e/b/k/f;",
            "Lc/e/b/d;",
            "Ljava/util/HashSet<",
            "Lc/e/b/k/e;",
            ">;IZ)V"
        }
    .end annotation

    if-eqz p5, :cond_18

    .line 1
    invoke-virtual {p3, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p5

    if-nez p5, :cond_9

    return-void

    .line 2
    :cond_9
    invoke-static {p1, p2, p0}, Lc/e/b/k/j;->a(Lc/e/b/k/f;Lc/e/b/d;Lc/e/b/k/e;)V

    .line 3
    invoke-virtual {p3, p0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    const/16 p5, 0x40

    .line 4
    invoke-virtual {p1, p5}, Lc/e/b/k/f;->B1(I)Z

    move-result p5

    invoke-virtual {p0, p2, p5}, Lc/e/b/k/e;->g(Lc/e/b/d;Z)V

    :cond_18
    if-nez p4, :cond_60

    .line 5
    iget-object p5, p0, Lc/e/b/k/e;->F:Lc/e/b/k/d;

    invoke-virtual {p5}, Lc/e/b/k/d;->c()Ljava/util/HashSet;

    move-result-object p5

    if-eqz p5, :cond_3d

    .line 6
    invoke-virtual {p5}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p5

    :goto_26
    invoke-interface {p5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3d

    invoke-interface {p5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/e/b/k/d;

    .line 7
    iget-object v1, v0, Lc/e/b/k/d;->d:Lc/e/b/k/e;

    const/4 v6, 0x1

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-virtual/range {v1 .. v6}, Lc/e/b/k/e;->e(Lc/e/b/k/f;Lc/e/b/d;Ljava/util/HashSet;IZ)V

    goto :goto_26

    .line 8
    :cond_3d
    iget-object p5, p0, Lc/e/b/k/e;->H:Lc/e/b/k/d;

    invoke-virtual {p5}, Lc/e/b/k/d;->c()Ljava/util/HashSet;

    move-result-object p5

    if-eqz p5, :cond_c9

    .line 9
    invoke-virtual {p5}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p5

    :goto_49
    invoke-interface {p5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c9

    invoke-interface {p5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/e/b/k/d;

    .line 10
    iget-object v1, v0, Lc/e/b/k/d;->d:Lc/e/b/k/e;

    const/4 v6, 0x1

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-virtual/range {v1 .. v6}, Lc/e/b/k/e;->e(Lc/e/b/k/f;Lc/e/b/d;Ljava/util/HashSet;IZ)V

    goto :goto_49

    .line 11
    :cond_60
    iget-object p5, p0, Lc/e/b/k/e;->G:Lc/e/b/k/d;

    invoke-virtual {p5}, Lc/e/b/k/d;->c()Ljava/util/HashSet;

    move-result-object p5

    if-eqz p5, :cond_83

    .line 12
    invoke-virtual {p5}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p5

    :goto_6c
    invoke-interface {p5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_83

    invoke-interface {p5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/e/b/k/d;

    .line 13
    iget-object v1, v0, Lc/e/b/k/d;->d:Lc/e/b/k/e;

    const/4 v6, 0x1

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-virtual/range {v1 .. v6}, Lc/e/b/k/e;->e(Lc/e/b/k/f;Lc/e/b/d;Ljava/util/HashSet;IZ)V

    goto :goto_6c

    .line 14
    :cond_83
    iget-object p5, p0, Lc/e/b/k/e;->I:Lc/e/b/k/d;

    invoke-virtual {p5}, Lc/e/b/k/d;->c()Ljava/util/HashSet;

    move-result-object p5

    if-eqz p5, :cond_a6

    .line 15
    invoke-virtual {p5}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p5

    :goto_8f
    invoke-interface {p5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a6

    invoke-interface {p5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/e/b/k/d;

    .line 16
    iget-object v1, v0, Lc/e/b/k/d;->d:Lc/e/b/k/e;

    const/4 v6, 0x1

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-virtual/range {v1 .. v6}, Lc/e/b/k/e;->e(Lc/e/b/k/f;Lc/e/b/d;Ljava/util/HashSet;IZ)V

    goto :goto_8f

    .line 17
    :cond_a6
    iget-object p5, p0, Lc/e/b/k/e;->J:Lc/e/b/k/d;

    invoke-virtual {p5}, Lc/e/b/k/d;->c()Ljava/util/HashSet;

    move-result-object p5

    if-eqz p5, :cond_c9

    .line 18
    invoke-virtual {p5}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p5

    :goto_b2
    invoke-interface {p5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c9

    invoke-interface {p5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/e/b/k/d;

    .line 19
    iget-object v1, v0, Lc/e/b/k/d;->d:Lc/e/b/k/e;

    const/4 v6, 0x1

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    :try_start_c5
    invoke-virtual/range {v1 .. v6}, Lc/e/b/k/e;->e(Lc/e/b/k/f;Lc/e/b/d;Ljava/util/HashSet;IZ)V
    :try_end_c8
    .catchall {:try_start_c5 .. :try_end_c8} :catchall_ca

    goto :goto_b2

    :cond_c9
    return-void

    :catchall_ca
    move-exception p1

    goto :goto_cd

    :goto_cc
    throw p1

    :goto_cd
    goto :goto_cc
.end method

.method public e0()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lc/e/b/k/e;->j:Z

    if-nez v0, :cond_17

    iget-object v0, p0, Lc/e/b/k/e;->F:Lc/e/b/k/d;

    invoke-virtual {v0}, Lc/e/b/k/d;->m()Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Lc/e/b/k/e;->H:Lc/e/b/k/d;

    invoke-virtual {v0}, Lc/e/b/k/d;->m()Z

    move-result v0

    if-eqz v0, :cond_15

    goto :goto_17

    :cond_15
    const/4 v0, 0x0

    goto :goto_18

    :cond_17
    :goto_17
    const/4 v0, 0x1

    :goto_18
    return v0
.end method

.method f()Z
    .registers 2

    .line 1
    instance-of v0, p0, Lc/e/b/k/k;

    if-nez v0, :cond_b

    instance-of v0, p0, Lc/e/b/k/g;

    if-eqz v0, :cond_9

    goto :goto_b

    :cond_9
    const/4 v0, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 v0, 0x1

    :goto_c
    return v0
.end method

.method public f0()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lc/e/b/k/e;->k:Z

    if-nez v0, :cond_17

    iget-object v0, p0, Lc/e/b/k/e;->G:Lc/e/b/k/d;

    invoke-virtual {v0}, Lc/e/b/k/d;->m()Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Lc/e/b/k/e;->I:Lc/e/b/k/d;

    invoke-virtual {v0}, Lc/e/b/k/d;->m()Z

    move-result v0

    if-eqz v0, :cond_15

    goto :goto_17

    :cond_15
    const/4 v0, 0x0

    goto :goto_18

    :cond_17
    :goto_17
    const/4 v0, 0x1

    :goto_18
    return v0
.end method

.method public g(Lc/e/b/d;Z)V
    .registers 53

    move-object/from16 v15, p0

    move-object/from16 v14, p1

    .line 1
    iget-object v0, v15, Lc/e/b/k/e;->F:Lc/e/b/k/d;

    invoke-virtual {v14, v0}, Lc/e/b/d;->q(Ljava/lang/Object;)Lc/e/b/i;

    move-result-object v13

    .line 2
    iget-object v0, v15, Lc/e/b/k/e;->H:Lc/e/b/k/d;

    invoke-virtual {v14, v0}, Lc/e/b/d;->q(Ljava/lang/Object;)Lc/e/b/i;

    move-result-object v12

    .line 3
    iget-object v0, v15, Lc/e/b/k/e;->G:Lc/e/b/k/d;

    invoke-virtual {v14, v0}, Lc/e/b/d;->q(Ljava/lang/Object;)Lc/e/b/i;

    move-result-object v11

    .line 4
    iget-object v0, v15, Lc/e/b/k/e;->I:Lc/e/b/k/d;

    invoke-virtual {v14, v0}, Lc/e/b/d;->q(Ljava/lang/Object;)Lc/e/b/i;

    move-result-object v10

    .line 5
    iget-object v0, v15, Lc/e/b/k/e;->J:Lc/e/b/k/d;

    invoke-virtual {v14, v0}, Lc/e/b/d;->q(Ljava/lang/Object;)Lc/e/b/i;

    move-result-object v9

    .line 6
    iget-object v0, v15, Lc/e/b/k/e;->R:Lc/e/b/k/e;

    const/4 v8, 0x1

    const/4 v7, 0x0

    if-eqz v0, :cond_47

    if-eqz v0, :cond_34

    .line 7
    iget-object v0, v0, Lc/e/b/k/e;->Q:[Lc/e/b/k/e$b;

    aget-object v0, v0, v7

    sget-object v1, Lc/e/b/k/e$b;->c:Lc/e/b/k/e$b;

    if-ne v0, v1, :cond_34

    const/4 v0, 0x1

    goto :goto_35

    :cond_34
    const/4 v0, 0x0

    .line 8
    :goto_35
    iget-object v1, v15, Lc/e/b/k/e;->R:Lc/e/b/k/e;

    if-eqz v1, :cond_43

    iget-object v1, v1, Lc/e/b/k/e;->Q:[Lc/e/b/k/e$b;

    aget-object v1, v1, v8

    sget-object v2, Lc/e/b/k/e$b;->c:Lc/e/b/k/e$b;

    if-ne v1, v2, :cond_43

    const/4 v1, 0x1

    goto :goto_44

    :cond_43
    const/4 v1, 0x0

    :goto_44
    move v5, v0

    move v6, v1

    goto :goto_49

    :cond_47
    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 9
    :goto_49
    iget v0, v15, Lc/e/b/k/e;->e0:I

    const/16 v4, 0x8

    if-ne v0, v4, :cond_60

    invoke-virtual/range {p0 .. p0}, Lc/e/b/k/e;->W()Z

    move-result v0

    if-nez v0, :cond_60

    iget-object v0, v15, Lc/e/b/k/e;->P:[Z

    aget-boolean v1, v0, v7

    if-nez v1, :cond_60

    aget-boolean v0, v0, v8

    if-nez v0, :cond_60

    return-void

    .line 10
    :cond_60
    iget-boolean v0, v15, Lc/e/b/k/e;->j:Z

    const/4 v3, 0x5

    if-nez v0, :cond_69

    iget-boolean v0, v15, Lc/e/b/k/e;->k:Z

    if-eqz v0, :cond_e8

    .line 11
    :cond_69
    iget-boolean v0, v15, Lc/e/b/k/e;->j:Z

    if-eqz v0, :cond_9a

    .line 12
    iget v0, v15, Lc/e/b/k/e;->W:I

    invoke-virtual {v14, v13, v0}, Lc/e/b/d;->f(Lc/e/b/i;I)V

    .line 13
    iget v0, v15, Lc/e/b/k/e;->W:I

    iget v1, v15, Lc/e/b/k/e;->S:I

    add-int/2addr v0, v1

    invoke-virtual {v14, v12, v0}, Lc/e/b/d;->f(Lc/e/b/i;I)V

    if-eqz v5, :cond_9a

    .line 14
    iget-object v0, v15, Lc/e/b/k/e;->R:Lc/e/b/k/e;

    if-eqz v0, :cond_9a

    .line 15
    iget-boolean v1, v15, Lc/e/b/k/e;->i:Z

    if-eqz v1, :cond_91

    .line 16
    check-cast v0, Lc/e/b/k/f;

    .line 17
    iget-object v1, v15, Lc/e/b/k/e;->F:Lc/e/b/k/d;

    invoke-virtual {v0, v1}, Lc/e/b/k/f;->n1(Lc/e/b/k/d;)V

    .line 18
    iget-object v1, v15, Lc/e/b/k/e;->H:Lc/e/b/k/d;

    invoke-virtual {v0, v1}, Lc/e/b/k/f;->h1(Lc/e/b/k/d;)V

    goto :goto_9a

    .line 19
    :cond_91
    iget-object v0, v0, Lc/e/b/k/e;->H:Lc/e/b/k/d;

    invoke-virtual {v14, v0}, Lc/e/b/d;->q(Ljava/lang/Object;)Lc/e/b/i;

    move-result-object v0

    invoke-virtual {v14, v0, v12, v7, v3}, Lc/e/b/d;->h(Lc/e/b/i;Lc/e/b/i;II)V

    .line 20
    :cond_9a
    :goto_9a
    iget-boolean v0, v15, Lc/e/b/k/e;->k:Z

    if-eqz v0, :cond_db

    .line 21
    iget v0, v15, Lc/e/b/k/e;->X:I

    invoke-virtual {v14, v11, v0}, Lc/e/b/d;->f(Lc/e/b/i;I)V

    .line 22
    iget v0, v15, Lc/e/b/k/e;->X:I

    iget v1, v15, Lc/e/b/k/e;->T:I

    add-int/2addr v0, v1

    invoke-virtual {v14, v10, v0}, Lc/e/b/d;->f(Lc/e/b/i;I)V

    .line 23
    iget-object v0, v15, Lc/e/b/k/e;->J:Lc/e/b/k/d;

    invoke-virtual {v0}, Lc/e/b/k/d;->l()Z

    move-result v0

    if-eqz v0, :cond_bb

    .line 24
    iget v0, v15, Lc/e/b/k/e;->X:I

    iget v1, v15, Lc/e/b/k/e;->Y:I

    add-int/2addr v0, v1

    invoke-virtual {v14, v9, v0}, Lc/e/b/d;->f(Lc/e/b/i;I)V

    :cond_bb
    if-eqz v6, :cond_db

    .line 25
    iget-object v0, v15, Lc/e/b/k/e;->R:Lc/e/b/k/e;

    if-eqz v0, :cond_db

    .line 26
    iget-boolean v1, v15, Lc/e/b/k/e;->i:Z

    if-eqz v1, :cond_d2

    .line 27
    check-cast v0, Lc/e/b/k/f;

    .line 28
    iget-object v1, v15, Lc/e/b/k/e;->G:Lc/e/b/k/d;

    invoke-virtual {v0, v1}, Lc/e/b/k/f;->n1(Lc/e/b/k/d;)V

    .line 29
    iget-object v1, v15, Lc/e/b/k/e;->I:Lc/e/b/k/d;

    invoke-virtual {v0, v1}, Lc/e/b/k/f;->m1(Lc/e/b/k/d;)V

    goto :goto_db

    .line 30
    :cond_d2
    iget-object v0, v0, Lc/e/b/k/e;->I:Lc/e/b/k/d;

    invoke-virtual {v14, v0}, Lc/e/b/d;->q(Ljava/lang/Object;)Lc/e/b/i;

    move-result-object v0

    invoke-virtual {v14, v0, v10, v7, v3}, Lc/e/b/d;->h(Lc/e/b/i;Lc/e/b/i;II)V

    .line 31
    :cond_db
    :goto_db
    iget-boolean v0, v15, Lc/e/b/k/e;->j:Z

    if-eqz v0, :cond_e8

    iget-boolean v0, v15, Lc/e/b/k/e;->k:Z

    if-eqz v0, :cond_e8

    .line 32
    iput-boolean v7, v15, Lc/e/b/k/e;->j:Z

    .line 33
    iput-boolean v7, v15, Lc/e/b/k/e;->k:Z

    return-void

    .line 34
    :cond_e8
    sget-object v0, Lc/e/b/d;->x:Lc/e/b/e;

    const-wide/16 v1, 0x1

    if-eqz v0, :cond_f3

    .line 35
    iget-wide v3, v0, Lc/e/b/e;->y:J

    add-long/2addr v3, v1

    iput-wide v3, v0, Lc/e/b/e;->y:J

    :cond_f3
    if-eqz p2, :cond_18a

    .line 36
    iget-object v0, v15, Lc/e/b/k/e;->d:Lc/e/b/k/m/l;

    if-eqz v0, :cond_18a

    iget-object v3, v15, Lc/e/b/k/e;->e:Lc/e/b/k/m/n;

    if-eqz v3, :cond_18a

    iget-object v4, v0, Lc/e/b/k/m/p;->h:Lc/e/b/k/m/f;

    iget-boolean v4, v4, Lc/e/b/k/m/f;->j:Z

    if-eqz v4, :cond_18a

    iget-object v0, v0, Lc/e/b/k/m/p;->i:Lc/e/b/k/m/f;

    iget-boolean v0, v0, Lc/e/b/k/m/f;->j:Z

    if-eqz v0, :cond_18a

    iget-object v0, v3, Lc/e/b/k/m/p;->h:Lc/e/b/k/m/f;

    iget-boolean v0, v0, Lc/e/b/k/m/f;->j:Z

    if-eqz v0, :cond_18a

    iget-object v0, v3, Lc/e/b/k/m/p;->i:Lc/e/b/k/m/f;

    iget-boolean v0, v0, Lc/e/b/k/m/f;->j:Z

    if-eqz v0, :cond_18a

    .line 37
    sget-object v0, Lc/e/b/d;->x:Lc/e/b/e;

    if-eqz v0, :cond_11e

    .line 38
    iget-wide v3, v0, Lc/e/b/e;->r:J

    add-long/2addr v3, v1

    iput-wide v3, v0, Lc/e/b/e;->r:J

    .line 39
    :cond_11e
    iget-object v0, v15, Lc/e/b/k/e;->d:Lc/e/b/k/m/l;

    iget-object v0, v0, Lc/e/b/k/m/p;->h:Lc/e/b/k/m/f;

    iget v0, v0, Lc/e/b/k/m/f;->g:I

    invoke-virtual {v14, v13, v0}, Lc/e/b/d;->f(Lc/e/b/i;I)V

    .line 40
    iget-object v0, v15, Lc/e/b/k/e;->d:Lc/e/b/k/m/l;

    iget-object v0, v0, Lc/e/b/k/m/p;->i:Lc/e/b/k/m/f;

    iget v0, v0, Lc/e/b/k/m/f;->g:I

    invoke-virtual {v14, v12, v0}, Lc/e/b/d;->f(Lc/e/b/i;I)V

    .line 41
    iget-object v0, v15, Lc/e/b/k/e;->e:Lc/e/b/k/m/n;

    iget-object v0, v0, Lc/e/b/k/m/p;->h:Lc/e/b/k/m/f;

    iget v0, v0, Lc/e/b/k/m/f;->g:I

    invoke-virtual {v14, v11, v0}, Lc/e/b/d;->f(Lc/e/b/i;I)V

    .line 42
    iget-object v0, v15, Lc/e/b/k/e;->e:Lc/e/b/k/m/n;

    iget-object v0, v0, Lc/e/b/k/m/p;->i:Lc/e/b/k/m/f;

    iget v0, v0, Lc/e/b/k/m/f;->g:I

    invoke-virtual {v14, v10, v0}, Lc/e/b/d;->f(Lc/e/b/i;I)V

    .line 43
    iget-object v0, v15, Lc/e/b/k/e;->e:Lc/e/b/k/m/n;

    iget-object v0, v0, Lc/e/b/k/m/n;->k:Lc/e/b/k/m/f;

    iget v0, v0, Lc/e/b/k/m/f;->g:I

    invoke-virtual {v14, v9, v0}, Lc/e/b/d;->f(Lc/e/b/i;I)V

    .line 44
    iget-object v0, v15, Lc/e/b/k/e;->R:Lc/e/b/k/e;

    if-eqz v0, :cond_185

    if-eqz v5, :cond_16a

    .line 45
    iget-object v0, v15, Lc/e/b/k/e;->f:[Z

    aget-boolean v0, v0, v7

    if-eqz v0, :cond_16a

    invoke-virtual/range {p0 .. p0}, Lc/e/b/k/e;->Z()Z

    move-result v0

    if-nez v0, :cond_16a

    .line 46
    iget-object v0, v15, Lc/e/b/k/e;->R:Lc/e/b/k/e;

    iget-object v0, v0, Lc/e/b/k/e;->H:Lc/e/b/k/d;

    invoke-virtual {v14, v0}, Lc/e/b/d;->q(Ljava/lang/Object;)Lc/e/b/i;

    move-result-object v0

    const/16 v1, 0x8

    .line 47
    invoke-virtual {v14, v0, v12, v7, v1}, Lc/e/b/d;->h(Lc/e/b/i;Lc/e/b/i;II)V

    :cond_16a
    if-eqz v6, :cond_185

    .line 48
    iget-object v0, v15, Lc/e/b/k/e;->f:[Z

    aget-boolean v0, v0, v8

    if-eqz v0, :cond_185

    invoke-virtual/range {p0 .. p0}, Lc/e/b/k/e;->b0()Z

    move-result v0

    if-nez v0, :cond_185

    .line 49
    iget-object v0, v15, Lc/e/b/k/e;->R:Lc/e/b/k/e;

    iget-object v0, v0, Lc/e/b/k/e;->I:Lc/e/b/k/d;

    invoke-virtual {v14, v0}, Lc/e/b/d;->q(Ljava/lang/Object;)Lc/e/b/i;

    move-result-object v0

    const/16 v1, 0x8

    .line 50
    invoke-virtual {v14, v0, v10, v7, v1}, Lc/e/b/d;->h(Lc/e/b/i;Lc/e/b/i;II)V

    .line 51
    :cond_185
    iput-boolean v7, v15, Lc/e/b/k/e;->j:Z

    .line 52
    iput-boolean v7, v15, Lc/e/b/k/e;->k:Z

    return-void

    .line 53
    :cond_18a
    sget-object v0, Lc/e/b/d;->x:Lc/e/b/e;

    if-eqz v0, :cond_193

    .line 54
    iget-wide v3, v0, Lc/e/b/e;->s:J

    add-long/2addr v3, v1

    iput-wide v3, v0, Lc/e/b/e;->s:J

    .line 55
    :cond_193
    iget-object v0, v15, Lc/e/b/k/e;->R:Lc/e/b/k/e;

    if-eqz v0, :cond_208

    .line 56
    invoke-direct {v15, v7}, Lc/e/b/k/e;->Y(I)Z

    move-result v0

    if-eqz v0, :cond_1a6

    .line 57
    iget-object v0, v15, Lc/e/b/k/e;->R:Lc/e/b/k/e;

    check-cast v0, Lc/e/b/k/f;

    invoke-virtual {v0, v15, v7}, Lc/e/b/k/f;->e1(Lc/e/b/k/e;I)V

    const/4 v0, 0x1

    goto :goto_1aa

    .line 58
    :cond_1a6
    invoke-virtual/range {p0 .. p0}, Lc/e/b/k/e;->Z()Z

    move-result v0

    .line 59
    :goto_1aa
    invoke-direct {v15, v8}, Lc/e/b/k/e;->Y(I)Z

    move-result v1

    if-eqz v1, :cond_1b9

    .line 60
    iget-object v1, v15, Lc/e/b/k/e;->R:Lc/e/b/k/e;

    check-cast v1, Lc/e/b/k/f;

    invoke-virtual {v1, v15, v8}, Lc/e/b/k/f;->e1(Lc/e/b/k/e;I)V

    const/4 v1, 0x1

    goto :goto_1bd

    .line 61
    :cond_1b9
    invoke-virtual/range {p0 .. p0}, Lc/e/b/k/e;->b0()Z

    move-result v1

    :goto_1bd
    if-nez v0, :cond_1de

    if-eqz v5, :cond_1de

    .line 62
    iget v2, v15, Lc/e/b/k/e;->e0:I

    const/16 v3, 0x8

    if-eq v2, v3, :cond_1de

    iget-object v2, v15, Lc/e/b/k/e;->F:Lc/e/b/k/d;

    iget-object v2, v2, Lc/e/b/k/d;->f:Lc/e/b/k/d;

    if-nez v2, :cond_1de

    iget-object v2, v15, Lc/e/b/k/e;->H:Lc/e/b/k/d;

    iget-object v2, v2, Lc/e/b/k/d;->f:Lc/e/b/k/d;

    if-nez v2, :cond_1de

    .line 63
    iget-object v2, v15, Lc/e/b/k/e;->R:Lc/e/b/k/e;

    iget-object v2, v2, Lc/e/b/k/e;->H:Lc/e/b/k/d;

    invoke-virtual {v14, v2}, Lc/e/b/d;->q(Ljava/lang/Object;)Lc/e/b/i;

    move-result-object v2

    .line 64
    invoke-virtual {v14, v2, v12, v7, v8}, Lc/e/b/d;->h(Lc/e/b/i;Lc/e/b/i;II)V

    :cond_1de
    if-nez v1, :cond_203

    if-eqz v6, :cond_203

    .line 65
    iget v2, v15, Lc/e/b/k/e;->e0:I

    const/16 v3, 0x8

    if-eq v2, v3, :cond_203

    iget-object v2, v15, Lc/e/b/k/e;->G:Lc/e/b/k/d;

    iget-object v2, v2, Lc/e/b/k/d;->f:Lc/e/b/k/d;

    if-nez v2, :cond_203

    iget-object v2, v15, Lc/e/b/k/e;->I:Lc/e/b/k/d;

    iget-object v2, v2, Lc/e/b/k/d;->f:Lc/e/b/k/d;

    if-nez v2, :cond_203

    iget-object v2, v15, Lc/e/b/k/e;->J:Lc/e/b/k/d;

    if-nez v2, :cond_203

    .line 66
    iget-object v2, v15, Lc/e/b/k/e;->R:Lc/e/b/k/e;

    iget-object v2, v2, Lc/e/b/k/e;->I:Lc/e/b/k/d;

    invoke-virtual {v14, v2}, Lc/e/b/d;->q(Ljava/lang/Object;)Lc/e/b/i;

    move-result-object v2

    .line 67
    invoke-virtual {v14, v2, v10, v7, v8}, Lc/e/b/d;->h(Lc/e/b/i;Lc/e/b/i;II)V

    :cond_203
    move/from16 v29, v0

    move/from16 v28, v1

    goto :goto_20c

    :cond_208
    const/16 v28, 0x0

    const/16 v29, 0x0

    .line 68
    :goto_20c
    iget v0, v15, Lc/e/b/k/e;->S:I

    .line 69
    iget v1, v15, Lc/e/b/k/e;->Z:I

    if-ge v0, v1, :cond_213

    move v0, v1

    .line 70
    :cond_213
    iget v1, v15, Lc/e/b/k/e;->T:I

    .line 71
    iget v2, v15, Lc/e/b/k/e;->a0:I

    if-ge v1, v2, :cond_21a

    move v1, v2

    .line 72
    :cond_21a
    iget-object v2, v15, Lc/e/b/k/e;->Q:[Lc/e/b/k/e$b;

    aget-object v2, v2, v7

    sget-object v3, Lc/e/b/k/e$b;->d:Lc/e/b/k/e$b;

    if-eq v2, v3, :cond_224

    const/4 v2, 0x1

    goto :goto_225

    :cond_224
    const/4 v2, 0x0

    .line 73
    :goto_225
    iget-object v3, v15, Lc/e/b/k/e;->Q:[Lc/e/b/k/e$b;

    aget-object v3, v3, v8

    sget-object v4, Lc/e/b/k/e$b;->d:Lc/e/b/k/e$b;

    if-eq v3, v4, :cond_22f

    const/4 v3, 0x1

    goto :goto_230

    :cond_22f
    const/4 v3, 0x0

    .line 74
    :goto_230
    iget v4, v15, Lc/e/b/k/e;->V:I

    iput v4, v15, Lc/e/b/k/e;->w:I

    .line 75
    iget v4, v15, Lc/e/b/k/e;->U:F

    iput v4, v15, Lc/e/b/k/e;->x:F

    .line 76
    iget v8, v15, Lc/e/b/k/e;->n:I

    .line 77
    iget v7, v15, Lc/e/b/k/e;->o:I

    const/16 v20, 0x0

    const/16 v21, 0x4

    move/from16 v22, v0

    cmpl-float v4, v4, v20

    if-lez v4, :cond_2ec

    .line 78
    iget v4, v15, Lc/e/b/k/e;->e0:I

    const/16 v0, 0x8

    if-eq v4, v0, :cond_2ec

    .line 79
    iget-object v0, v15, Lc/e/b/k/e;->Q:[Lc/e/b/k/e$b;

    const/4 v4, 0x0

    aget-object v0, v0, v4

    sget-object v4, Lc/e/b/k/e$b;->d:Lc/e/b/k/e$b;

    move/from16 v23, v1

    if-ne v0, v4, :cond_25a

    if-nez v8, :cond_25a

    const/4 v8, 0x3

    .line 80
    :cond_25a
    iget-object v0, v15, Lc/e/b/k/e;->Q:[Lc/e/b/k/e$b;

    const/4 v4, 0x1

    aget-object v0, v0, v4

    sget-object v4, Lc/e/b/k/e$b;->d:Lc/e/b/k/e$b;

    if-ne v0, v4, :cond_266

    if-nez v7, :cond_266

    const/4 v7, 0x3

    .line 81
    :cond_266
    iget-object v0, v15, Lc/e/b/k/e;->Q:[Lc/e/b/k/e$b;

    const/4 v4, 0x0

    aget-object v1, v0, v4

    sget-object v4, Lc/e/b/k/e$b;->d:Lc/e/b/k/e$b;

    if-ne v1, v4, :cond_27d

    const/4 v1, 0x1

    aget-object v0, v0, v1

    if-ne v0, v4, :cond_27d

    const/4 v0, 0x3

    if-ne v8, v0, :cond_27e

    if-ne v7, v0, :cond_27e

    .line 82
    invoke-virtual {v15, v5, v6, v2, v3}, Lc/e/b/k/e;->X0(ZZZZ)V

    goto :goto_2e1

    :cond_27d
    const/4 v0, 0x3

    .line 83
    :cond_27e
    iget-object v1, v15, Lc/e/b/k/e;->Q:[Lc/e/b/k/e$b;

    const/4 v2, 0x0

    aget-object v3, v1, v2

    sget-object v4, Lc/e/b/k/e$b;->d:Lc/e/b/k/e$b;

    if-ne v3, v4, :cond_2a4

    if-ne v8, v0, :cond_2a4

    .line 84
    iput v2, v15, Lc/e/b/k/e;->w:I

    .line 85
    iget v0, v15, Lc/e/b/k/e;->x:F

    iget v2, v15, Lc/e/b/k/e;->T:I

    int-to-float v2, v2

    mul-float v0, v0, v2

    float-to-int v0, v0

    const/4 v2, 0x1

    .line 86
    aget-object v1, v1, v2

    move/from16 v32, v7

    if-eq v1, v4, :cond_2a1

    move/from16 v30, v23

    const/16 v31, 0x0

    const/16 v33, 0x4

    goto :goto_2f8

    :cond_2a1
    move/from16 v33, v8

    goto :goto_2e7

    :cond_2a4
    const/4 v2, 0x1

    .line 87
    iget-object v0, v15, Lc/e/b/k/e;->Q:[Lc/e/b/k/e$b;

    aget-object v0, v0, v2

    sget-object v1, Lc/e/b/k/e$b;->d:Lc/e/b/k/e$b;

    if-ne v0, v1, :cond_2e1

    const/4 v0, 0x3

    if-ne v7, v0, :cond_2e1

    .line 88
    iput v2, v15, Lc/e/b/k/e;->w:I

    .line 89
    iget v0, v15, Lc/e/b/k/e;->V:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2be

    const/high16 v0, 0x3f800000    # 1.0f

    .line 90
    iget v1, v15, Lc/e/b/k/e;->x:F

    div-float/2addr v0, v1

    iput v0, v15, Lc/e/b/k/e;->x:F

    .line 91
    :cond_2be
    iget v0, v15, Lc/e/b/k/e;->x:F

    iget v1, v15, Lc/e/b/k/e;->S:I

    int-to-float v1, v1

    mul-float v0, v0, v1

    float-to-int v1, v0

    .line 92
    iget-object v0, v15, Lc/e/b/k/e;->Q:[Lc/e/b/k/e$b;

    const/4 v2, 0x0

    aget-object v0, v0, v2

    sget-object v2, Lc/e/b/k/e$b;->d:Lc/e/b/k/e$b;

    move/from16 v30, v1

    if-eq v0, v2, :cond_2da

    move/from16 v33, v8

    move/from16 v0, v22

    const/16 v31, 0x0

    const/16 v32, 0x4

    goto :goto_2f8

    :cond_2da
    move/from16 v32, v7

    move/from16 v33, v8

    move/from16 v0, v22

    goto :goto_2e9

    :cond_2e1
    :goto_2e1
    move/from16 v32, v7

    move/from16 v33, v8

    move/from16 v0, v22

    :goto_2e7
    move/from16 v30, v23

    :goto_2e9
    const/16 v31, 0x1

    goto :goto_2f8

    :cond_2ec
    move/from16 v23, v1

    move/from16 v32, v7

    move/from16 v33, v8

    move/from16 v0, v22

    move/from16 v30, v23

    const/16 v31, 0x0

    .line 93
    :goto_2f8
    iget-object v1, v15, Lc/e/b/k/e;->p:[I

    const/4 v2, 0x0

    aput v33, v1, v2

    const/4 v2, 0x1

    .line 94
    aput v32, v1, v2

    if-eqz v31, :cond_30c

    .line 95
    iget v1, v15, Lc/e/b/k/e;->w:I

    const/4 v2, -0x1

    if-eqz v1, :cond_309

    if-ne v1, v2, :cond_30d

    :cond_309
    const/16 v20, 0x1

    goto :goto_30f

    :cond_30c
    const/4 v2, -0x1

    :cond_30d
    const/16 v20, 0x0

    :goto_30f
    if-eqz v31, :cond_31b

    .line 96
    iget v1, v15, Lc/e/b/k/e;->w:I

    const/4 v3, 0x1

    if-eq v1, v3, :cond_318

    if-ne v1, v2, :cond_31b

    :cond_318
    const/16 v34, 0x1

    goto :goto_31d

    :cond_31b
    const/16 v34, 0x0

    .line 97
    :goto_31d
    iget-object v1, v15, Lc/e/b/k/e;->Q:[Lc/e/b/k/e$b;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    sget-object v2, Lc/e/b/k/e$b;->c:Lc/e/b/k/e$b;

    if-ne v1, v2, :cond_32d

    instance-of v1, v15, Lc/e/b/k/f;

    if-eqz v1, :cond_32d

    const/16 v21, 0x1

    goto :goto_32f

    :cond_32d
    const/16 v21, 0x0

    :goto_32f
    if-eqz v21, :cond_334

    const/16 v22, 0x0

    goto :goto_336

    :cond_334
    move/from16 v22, v0

    .line 98
    :goto_336
    iget-object v0, v15, Lc/e/b/k/e;->M:Lc/e/b/k/d;

    invoke-virtual {v0}, Lc/e/b/k/d;->n()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/lit8 v35, v0, 0x1

    .line 99
    iget-object v0, v15, Lc/e/b/k/e;->P:[Z

    const/4 v2, 0x0

    aget-boolean v23, v0, v2

    .line 100
    aget-boolean v36, v0, v1

    .line 101
    iget v0, v15, Lc/e/b/k/e;->l:I

    const/4 v8, 0x2

    const/16 v37, 0x0

    if-eq v0, v8, :cond_432

    iget-boolean v0, v15, Lc/e/b/k/e;->j:Z

    if-nez v0, :cond_432

    if-eqz p2, :cond_396

    .line 102
    iget-object v0, v15, Lc/e/b/k/e;->d:Lc/e/b/k/m/l;

    if-eqz v0, :cond_396

    iget-object v1, v0, Lc/e/b/k/m/p;->h:Lc/e/b/k/m/f;

    iget-boolean v2, v1, Lc/e/b/k/m/f;->j:Z

    if-eqz v2, :cond_396

    iget-object v0, v0, Lc/e/b/k/m/p;->i:Lc/e/b/k/m/f;

    iget-boolean v0, v0, Lc/e/b/k/m/f;->j:Z

    if-nez v0, :cond_364

    goto :goto_396

    :cond_364
    if-eqz p2, :cond_432

    .line 103
    iget v0, v1, Lc/e/b/k/m/f;->g:I

    invoke-virtual {v14, v13, v0}, Lc/e/b/d;->f(Lc/e/b/i;I)V

    .line 104
    iget-object v0, v15, Lc/e/b/k/e;->d:Lc/e/b/k/m/l;

    iget-object v0, v0, Lc/e/b/k/m/p;->i:Lc/e/b/k/m/f;

    iget v0, v0, Lc/e/b/k/m/f;->g:I

    invoke-virtual {v14, v12, v0}, Lc/e/b/d;->f(Lc/e/b/i;I)V

    .line 105
    iget-object v0, v15, Lc/e/b/k/e;->R:Lc/e/b/k/e;

    if-eqz v0, :cond_432

    if-eqz v5, :cond_432

    .line 106
    iget-object v0, v15, Lc/e/b/k/e;->f:[Z

    const/4 v1, 0x0

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_432

    invoke-virtual/range {p0 .. p0}, Lc/e/b/k/e;->Z()Z

    move-result v0

    if-nez v0, :cond_432

    .line 107
    iget-object v0, v15, Lc/e/b/k/e;->R:Lc/e/b/k/e;

    iget-object v0, v0, Lc/e/b/k/e;->H:Lc/e/b/k/d;

    invoke-virtual {v14, v0}, Lc/e/b/d;->q(Ljava/lang/Object;)Lc/e/b/i;

    move-result-object v0

    const/16 v4, 0x8

    .line 108
    invoke-virtual {v14, v0, v12, v1, v4}, Lc/e/b/d;->h(Lc/e/b/i;Lc/e/b/i;II)V

    goto/16 :goto_432

    :cond_396
    :goto_396
    const/16 v4, 0x8

    .line 109
    iget-object v0, v15, Lc/e/b/k/e;->R:Lc/e/b/k/e;

    if-eqz v0, :cond_3a4

    iget-object v0, v0, Lc/e/b/k/e;->H:Lc/e/b/k/d;

    invoke-virtual {v14, v0}, Lc/e/b/d;->q(Ljava/lang/Object;)Lc/e/b/i;

    move-result-object v0

    move-object v7, v0

    goto :goto_3a6

    :cond_3a4
    move-object/from16 v7, v37

    .line 110
    :goto_3a6
    iget-object v0, v15, Lc/e/b/k/e;->R:Lc/e/b/k/e;

    if-eqz v0, :cond_3b3

    iget-object v0, v0, Lc/e/b/k/e;->F:Lc/e/b/k/d;

    invoke-virtual {v14, v0}, Lc/e/b/d;->q(Ljava/lang/Object;)Lc/e/b/i;

    move-result-object v0

    move-object/from16 v16, v0

    goto :goto_3b5

    :cond_3b3
    move-object/from16 v16, v37

    .line 111
    :goto_3b5
    iget-object v0, v15, Lc/e/b/k/e;->f:[Z

    const/16 v19, 0x0

    aget-boolean v27, v0, v19

    iget-object v0, v15, Lc/e/b/k/e;->Q:[Lc/e/b/k/e$b;

    aget-object v38, v0, v19

    iget-object v3, v15, Lc/e/b/k/e;->F:Lc/e/b/k/d;

    iget-object v1, v15, Lc/e/b/k/e;->H:Lc/e/b/k/d;

    iget v2, v15, Lc/e/b/k/e;->W:I

    move/from16 v40, v2

    iget v2, v15, Lc/e/b/k/e;->Z:I

    iget-object v4, v15, Lc/e/b/k/e;->y:[I

    aget v42, v4, v19

    iget v4, v15, Lc/e/b/k/e;->b0:F

    const/16 v18, 0x1

    aget-object v0, v0, v18

    sget-object v8, Lc/e/b/k/e$b;->d:Lc/e/b/k/e$b;

    if-ne v0, v8, :cond_3da

    const/16 v43, 0x1

    goto :goto_3dc

    :cond_3da
    const/16 v43, 0x0

    :goto_3dc
    iget v0, v15, Lc/e/b/k/e;->q:I

    move/from16 v24, v0

    iget v0, v15, Lc/e/b/k/e;->r:I

    move/from16 v25, v0

    iget v0, v15, Lc/e/b/k/e;->s:F

    move/from16 v26, v0

    move-object/from16 v0, p0

    move-object/from16 v44, v1

    move-object/from16 v1, p1

    move/from16 v39, v40

    move/from16 v40, v2

    const/4 v2, 0x1

    move-object/from16 v17, v3

    const/4 v8, 0x5

    move v3, v5

    move/from16 v41, v4

    move v4, v6

    move/from16 v45, v5

    move/from16 v5, v27

    move/from16 v46, v6

    move-object/from16 v6, v16

    move-object/from16 v8, v38

    move-object/from16 v47, v9

    move/from16 v9, v21

    move-object/from16 v48, v10

    move-object/from16 v10, v17

    move-object/from16 v49, v11

    move-object/from16 v11, v44

    move-object/from16 v38, v12

    move/from16 v12, v39

    move-object/from16 v39, v13

    move/from16 v13, v22

    move/from16 v14, v40

    move/from16 v15, v42

    move/from16 v16, v41

    move/from16 v17, v20

    move/from16 v18, v43

    move/from16 v19, v29

    move/from16 v20, v28

    move/from16 v21, v23

    move/from16 v22, v33

    move/from16 v23, v32

    move/from16 v27, v35

    invoke-direct/range {v0 .. v27}, Lc/e/b/k/e;->i(Lc/e/b/d;ZZZZLc/e/b/i;Lc/e/b/i;Lc/e/b/k/e$b;ZLc/e/b/k/d;Lc/e/b/k/d;IIIIFZZZZZIIIIFZ)V

    goto :goto_440

    :cond_432
    :goto_432
    move/from16 v45, v5

    move/from16 v46, v6

    move-object/from16 v47, v9

    move-object/from16 v48, v10

    move-object/from16 v49, v11

    move-object/from16 v38, v12

    move-object/from16 v39, v13

    :goto_440
    if-eqz p2, :cond_4a6

    move-object/from16 v15, p0

    .line 112
    iget-object v0, v15, Lc/e/b/k/e;->e:Lc/e/b/k/m/n;

    if-eqz v0, :cond_499

    iget-object v1, v0, Lc/e/b/k/m/p;->h:Lc/e/b/k/m/f;

    iget-boolean v2, v1, Lc/e/b/k/m/f;->j:Z

    if-eqz v2, :cond_499

    iget-object v0, v0, Lc/e/b/k/m/p;->i:Lc/e/b/k/m/f;

    iget-boolean v0, v0, Lc/e/b/k/m/f;->j:Z

    if-eqz v0, :cond_499

    .line 113
    iget v0, v1, Lc/e/b/k/m/f;->g:I

    move-object/from16 v14, p1

    move-object/from16 v13, v49

    invoke-virtual {v14, v13, v0}, Lc/e/b/d;->f(Lc/e/b/i;I)V

    .line 114
    iget-object v0, v15, Lc/e/b/k/e;->e:Lc/e/b/k/m/n;

    iget-object v0, v0, Lc/e/b/k/m/p;->i:Lc/e/b/k/m/f;

    iget v0, v0, Lc/e/b/k/m/f;->g:I

    move-object/from16 v12, v48

    invoke-virtual {v14, v12, v0}, Lc/e/b/d;->f(Lc/e/b/i;I)V

    .line 115
    iget-object v0, v15, Lc/e/b/k/e;->e:Lc/e/b/k/m/n;

    iget-object v0, v0, Lc/e/b/k/m/n;->k:Lc/e/b/k/m/f;

    iget v0, v0, Lc/e/b/k/m/f;->g:I

    move-object/from16 v1, v47

    invoke-virtual {v14, v1, v0}, Lc/e/b/d;->f(Lc/e/b/i;I)V

    .line 116
    iget-object v0, v15, Lc/e/b/k/e;->R:Lc/e/b/k/e;

    if-eqz v0, :cond_493

    if-nez v28, :cond_493

    if-eqz v46, :cond_493

    .line 117
    iget-object v2, v15, Lc/e/b/k/e;->f:[Z

    const/4 v11, 0x1

    aget-boolean v2, v2, v11

    if-eqz v2, :cond_48f

    .line 118
    iget-object v0, v0, Lc/e/b/k/e;->I:Lc/e/b/k/d;

    invoke-virtual {v14, v0}, Lc/e/b/d;->q(Ljava/lang/Object;)Lc/e/b/i;

    move-result-object v0

    const/16 v2, 0x8

    const/4 v10, 0x0

    .line 119
    invoke-virtual {v14, v0, v12, v10, v2}, Lc/e/b/d;->h(Lc/e/b/i;Lc/e/b/i;II)V

    goto :goto_497

    :cond_48f
    const/16 v2, 0x8

    const/4 v10, 0x0

    goto :goto_497

    :cond_493
    const/16 v2, 0x8

    const/4 v10, 0x0

    const/4 v11, 0x1

    :goto_497
    const/4 v8, 0x0

    goto :goto_4b5

    :cond_499
    move-object/from16 v14, p1

    move-object/from16 v1, v47

    move-object/from16 v12, v48

    move-object/from16 v13, v49

    const/16 v2, 0x8

    const/4 v10, 0x0

    const/4 v11, 0x1

    goto :goto_4b4

    :cond_4a6
    const/16 v2, 0x8

    const/4 v10, 0x0

    const/4 v11, 0x1

    move-object/from16 v15, p0

    move-object/from16 v14, p1

    move-object/from16 v1, v47

    move-object/from16 v12, v48

    move-object/from16 v13, v49

    :goto_4b4
    const/4 v8, 0x1

    .line 120
    :goto_4b5
    iget v0, v15, Lc/e/b/k/e;->m:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_4bc

    const/4 v7, 0x0

    goto :goto_4bd

    :cond_4bc
    move v7, v8

    :goto_4bd
    if-eqz v7, :cond_593

    .line 121
    iget-boolean v0, v15, Lc/e/b/k/e;->k:Z

    if-nez v0, :cond_593

    .line 122
    iget-object v0, v15, Lc/e/b/k/e;->Q:[Lc/e/b/k/e$b;

    aget-object v0, v0, v11

    sget-object v3, Lc/e/b/k/e$b;->c:Lc/e/b/k/e$b;

    if-ne v0, v3, :cond_4d1

    instance-of v0, v15, Lc/e/b/k/f;

    if-eqz v0, :cond_4d1

    const/4 v9, 0x1

    goto :goto_4d2

    :cond_4d1
    const/4 v9, 0x0

    :goto_4d2
    if-eqz v9, :cond_4d6

    const/16 v30, 0x0

    .line 123
    :cond_4d6
    iget-object v0, v15, Lc/e/b/k/e;->R:Lc/e/b/k/e;

    if-eqz v0, :cond_4e2

    iget-object v0, v0, Lc/e/b/k/e;->I:Lc/e/b/k/d;

    invoke-virtual {v14, v0}, Lc/e/b/d;->q(Ljava/lang/Object;)Lc/e/b/i;

    move-result-object v0

    move-object v7, v0

    goto :goto_4e4

    :cond_4e2
    move-object/from16 v7, v37

    .line 124
    :goto_4e4
    iget-object v0, v15, Lc/e/b/k/e;->R:Lc/e/b/k/e;

    if-eqz v0, :cond_4f0

    iget-object v0, v0, Lc/e/b/k/e;->G:Lc/e/b/k/d;

    invoke-virtual {v14, v0}, Lc/e/b/d;->q(Ljava/lang/Object;)Lc/e/b/i;

    move-result-object v0

    move-object v6, v0

    goto :goto_4f2

    :cond_4f0
    move-object/from16 v6, v37

    .line 125
    :goto_4f2
    iget v0, v15, Lc/e/b/k/e;->Y:I

    if-gtz v0, :cond_4fa

    iget v0, v15, Lc/e/b/k/e;->e0:I

    if-ne v0, v2, :cond_530

    .line 126
    :cond_4fa
    iget-object v0, v15, Lc/e/b/k/e;->J:Lc/e/b/k/d;

    iget-object v0, v0, Lc/e/b/k/d;->f:Lc/e/b/k/d;

    if-eqz v0, :cond_521

    .line 127
    invoke-virtual/range {p0 .. p0}, Lc/e/b/k/e;->n()I

    move-result v0

    invoke-virtual {v14, v1, v13, v0, v2}, Lc/e/b/d;->e(Lc/e/b/i;Lc/e/b/i;II)Lc/e/b/b;

    .line 128
    iget-object v0, v15, Lc/e/b/k/e;->J:Lc/e/b/k/d;

    iget-object v0, v0, Lc/e/b/k/d;->f:Lc/e/b/k/d;

    invoke-virtual {v14, v0}, Lc/e/b/d;->q(Ljava/lang/Object;)Lc/e/b/i;

    move-result-object v0

    .line 129
    invoke-virtual {v14, v1, v0, v10, v2}, Lc/e/b/d;->e(Lc/e/b/i;Lc/e/b/i;II)Lc/e/b/b;

    if-eqz v46, :cond_51e

    .line 130
    iget-object v0, v15, Lc/e/b/k/e;->I:Lc/e/b/k/d;

    invoke-virtual {v14, v0}, Lc/e/b/d;->q(Ljava/lang/Object;)Lc/e/b/i;

    move-result-object v0

    const/4 v1, 0x5

    .line 131
    invoke-virtual {v14, v7, v0, v10, v1}, Lc/e/b/d;->h(Lc/e/b/i;Lc/e/b/i;II)V

    :cond_51e
    const/16 v27, 0x0

    goto :goto_532

    .line 132
    :cond_521
    iget v0, v15, Lc/e/b/k/e;->e0:I

    if-ne v0, v2, :cond_529

    .line 133
    invoke-virtual {v14, v1, v13, v10, v2}, Lc/e/b/d;->e(Lc/e/b/i;Lc/e/b/i;II)Lc/e/b/b;

    goto :goto_530

    .line 134
    :cond_529
    invoke-virtual/range {p0 .. p0}, Lc/e/b/k/e;->n()I

    move-result v0

    invoke-virtual {v14, v1, v13, v0, v2}, Lc/e/b/d;->e(Lc/e/b/i;Lc/e/b/i;II)Lc/e/b/b;

    :cond_530
    :goto_530
    move/from16 v27, v35

    .line 135
    :goto_532
    iget-object v0, v15, Lc/e/b/k/e;->f:[Z

    aget-boolean v5, v0, v11

    iget-object v0, v15, Lc/e/b/k/e;->Q:[Lc/e/b/k/e$b;

    aget-object v8, v0, v11

    iget-object v4, v15, Lc/e/b/k/e;->G:Lc/e/b/k/d;

    iget-object v3, v15, Lc/e/b/k/e;->I:Lc/e/b/k/d;

    iget v1, v15, Lc/e/b/k/e;->X:I

    iget v2, v15, Lc/e/b/k/e;->a0:I

    iget-object v10, v15, Lc/e/b/k/e;->y:[I

    aget v16, v10, v11

    iget v10, v15, Lc/e/b/k/e;->c0:F

    const/16 v17, 0x0

    aget-object v0, v0, v17

    sget-object v11, Lc/e/b/k/e$b;->d:Lc/e/b/k/e$b;

    if-ne v0, v11, :cond_553

    const/16 v18, 0x1

    goto :goto_555

    :cond_553
    const/16 v18, 0x0

    :goto_555
    iget v0, v15, Lc/e/b/k/e;->t:I

    move/from16 v24, v0

    iget v0, v15, Lc/e/b/k/e;->u:I

    move/from16 v25, v0

    iget v0, v15, Lc/e/b/k/e;->v:F

    move/from16 v26, v0

    move-object/from16 v0, p0

    move/from16 v19, v1

    move-object/from16 v1, p1

    move/from16 v20, v2

    const/4 v2, 0x0

    move-object v11, v3

    move/from16 v3, v46

    move-object/from16 v21, v4

    move/from16 v4, v45

    move/from16 v17, v10

    move-object/from16 v10, v21

    move-object/from16 v35, v12

    move/from16 v12, v19

    move-object/from16 v37, v13

    move/from16 v13, v30

    move/from16 v14, v20

    move/from16 v15, v16

    move/from16 v16, v17

    move/from16 v17, v34

    move/from16 v19, v28

    move/from16 v20, v29

    move/from16 v21, v36

    move/from16 v22, v32

    move/from16 v23, v33

    invoke-direct/range {v0 .. v27}, Lc/e/b/k/e;->i(Lc/e/b/d;ZZZZLc/e/b/i;Lc/e/b/i;Lc/e/b/k/e$b;ZLc/e/b/k/d;Lc/e/b/k/d;IIIIFZZZZZIIIIFZ)V

    goto :goto_597

    :cond_593
    move-object/from16 v35, v12

    move-object/from16 v37, v13

    :goto_597
    if-eqz v31, :cond_5c4

    const/16 v6, 0x8

    move-object/from16 v7, p0

    .line 136
    iget v0, v7, Lc/e/b/k/e;->w:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_5b2

    .line 137
    iget v5, v7, Lc/e/b/k/e;->x:F

    move-object/from16 v0, p1

    move-object/from16 v1, v35

    move-object/from16 v2, v37

    move-object/from16 v3, v38

    move-object/from16 v4, v39

    invoke-virtual/range {v0 .. v6}, Lc/e/b/d;->k(Lc/e/b/i;Lc/e/b/i;Lc/e/b/i;Lc/e/b/i;FI)V

    goto :goto_5c6

    .line 138
    :cond_5b2
    iget v5, v7, Lc/e/b/k/e;->x:F

    const/16 v6, 0x8

    move-object/from16 v0, p1

    move-object/from16 v1, v38

    move-object/from16 v2, v39

    move-object/from16 v3, v35

    move-object/from16 v4, v37

    invoke-virtual/range {v0 .. v6}, Lc/e/b/d;->k(Lc/e/b/i;Lc/e/b/i;Lc/e/b/i;Lc/e/b/i;FI)V

    goto :goto_5c6

    :cond_5c4
    move-object/from16 v7, p0

    .line 139
    :goto_5c6
    iget-object v0, v7, Lc/e/b/k/e;->M:Lc/e/b/k/d;

    invoke-virtual {v0}, Lc/e/b/k/d;->n()Z

    move-result v0

    if-eqz v0, :cond_5ee

    .line 140
    iget-object v0, v7, Lc/e/b/k/e;->M:Lc/e/b/k/d;

    invoke-virtual {v0}, Lc/e/b/k/d;->i()Lc/e/b/k/d;

    move-result-object v0

    invoke-virtual {v0}, Lc/e/b/k/d;->g()Lc/e/b/k/e;

    move-result-object v0

    iget v1, v7, Lc/e/b/k/e;->z:F

    const/high16 v2, 0x42b40000    # 90.0f

    add-float/2addr v1, v2

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v1

    double-to-float v1, v1

    iget-object v2, v7, Lc/e/b/k/e;->M:Lc/e/b/k/d;

    invoke-virtual {v2}, Lc/e/b/k/d;->e()I

    move-result v2

    move-object/from16 v3, p1

    invoke-virtual {v3, v7, v0, v1, v2}, Lc/e/b/d;->b(Lc/e/b/k/e;Lc/e/b/k/e;FI)V

    :cond_5ee
    const/4 v0, 0x0

    .line 141
    iput-boolean v0, v7, Lc/e/b/k/e;->j:Z

    .line 142
    iput-boolean v0, v7, Lc/e/b/k/e;->k:Z

    return-void
.end method

.method public g0()Z
    .registers 6

    .line 1
    iget-object v0, p0, Lc/e/b/k/e;->Q:[Lc/e/b/k/e$b;

    const/4 v1, 0x0

    aget-object v2, v0, v1

    sget-object v3, Lc/e/b/k/e$b;->d:Lc/e/b/k/e$b;

    const/4 v4, 0x1

    if-ne v2, v3, :cond_f

    aget-object v0, v0, v4

    if-ne v0, v3, :cond_f

    const/4 v1, 0x1

    :cond_f
    return v1
.end method

.method public h()Z
    .registers 3

    .line 1
    iget v0, p0, Lc/e/b/k/e;->e0:I

    const/16 v1, 0x8

    if-eq v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public h0()V
    .registers 7

    .line 1
    iget-object v0, p0, Lc/e/b/k/e;->F:Lc/e/b/k/d;

    invoke-virtual {v0}, Lc/e/b/k/d;->p()V

    .line 2
    iget-object v0, p0, Lc/e/b/k/e;->G:Lc/e/b/k/d;

    invoke-virtual {v0}, Lc/e/b/k/d;->p()V

    .line 3
    iget-object v0, p0, Lc/e/b/k/e;->H:Lc/e/b/k/d;

    invoke-virtual {v0}, Lc/e/b/k/d;->p()V

    .line 4
    iget-object v0, p0, Lc/e/b/k/e;->I:Lc/e/b/k/d;

    invoke-virtual {v0}, Lc/e/b/k/d;->p()V

    .line 5
    iget-object v0, p0, Lc/e/b/k/e;->J:Lc/e/b/k/d;

    invoke-virtual {v0}, Lc/e/b/k/d;->p()V

    .line 6
    iget-object v0, p0, Lc/e/b/k/e;->K:Lc/e/b/k/d;

    invoke-virtual {v0}, Lc/e/b/k/d;->p()V

    .line 7
    iget-object v0, p0, Lc/e/b/k/e;->L:Lc/e/b/k/d;

    invoke-virtual {v0}, Lc/e/b/k/d;->p()V

    .line 8
    iget-object v0, p0, Lc/e/b/k/e;->M:Lc/e/b/k/d;

    invoke-virtual {v0}, Lc/e/b/k/d;->p()V

    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lc/e/b/k/e;->R:Lc/e/b/k/e;

    const/4 v1, 0x0

    .line 10
    iput v1, p0, Lc/e/b/k/e;->z:F

    const/4 v2, 0x0

    .line 11
    iput v2, p0, Lc/e/b/k/e;->S:I

    .line 12
    iput v2, p0, Lc/e/b/k/e;->T:I

    .line 13
    iput v1, p0, Lc/e/b/k/e;->U:F

    const/4 v1, -0x1

    .line 14
    iput v1, p0, Lc/e/b/k/e;->V:I

    .line 15
    iput v2, p0, Lc/e/b/k/e;->W:I

    .line 16
    iput v2, p0, Lc/e/b/k/e;->X:I

    .line 17
    iput v2, p0, Lc/e/b/k/e;->Y:I

    .line 18
    iput v2, p0, Lc/e/b/k/e;->Z:I

    .line 19
    iput v2, p0, Lc/e/b/k/e;->a0:I

    .line 20
    sget v3, Lc/e/b/k/e;->o0:F

    iput v3, p0, Lc/e/b/k/e;->b0:F

    .line 21
    iput v3, p0, Lc/e/b/k/e;->c0:F

    .line 22
    iget-object v3, p0, Lc/e/b/k/e;->Q:[Lc/e/b/k/e$b;

    sget-object v4, Lc/e/b/k/e$b;->b:Lc/e/b/k/e$b;

    aput-object v4, v3, v2

    const/4 v5, 0x1

    .line 23
    aput-object v4, v3, v5

    .line 24
    iput-object v0, p0, Lc/e/b/k/e;->d0:Ljava/lang/Object;

    .line 25
    iput v2, p0, Lc/e/b/k/e;->e0:I

    .line 26
    iput-object v0, p0, Lc/e/b/k/e;->g0:Ljava/lang/String;

    .line 27
    iput v2, p0, Lc/e/b/k/e;->h0:I

    .line 28
    iput v2, p0, Lc/e/b/k/e;->i0:I

    .line 29
    iget-object v0, p0, Lc/e/b/k/e;->j0:[F

    const/high16 v3, -0x40800000    # -1.0f

    aput v3, v0, v2

    .line 30
    aput v3, v0, v5

    .line 31
    iput v1, p0, Lc/e/b/k/e;->l:I

    .line 32
    iput v1, p0, Lc/e/b/k/e;->m:I

    .line 33
    iget-object v0, p0, Lc/e/b/k/e;->y:[I

    const v3, 0x7fffffff

    aput v3, v0, v2

    .line 34
    aput v3, v0, v5

    .line 35
    iput v2, p0, Lc/e/b/k/e;->n:I

    .line 36
    iput v2, p0, Lc/e/b/k/e;->o:I

    const/high16 v0, 0x3f800000    # 1.0f

    .line 37
    iput v0, p0, Lc/e/b/k/e;->s:F

    .line 38
    iput v0, p0, Lc/e/b/k/e;->v:F

    .line 39
    iput v3, p0, Lc/e/b/k/e;->r:I

    .line 40
    iput v3, p0, Lc/e/b/k/e;->u:I

    .line 41
    iput v2, p0, Lc/e/b/k/e;->q:I

    .line 42
    iput v2, p0, Lc/e/b/k/e;->t:I

    .line 43
    iput v1, p0, Lc/e/b/k/e;->w:I

    .line 44
    iput v0, p0, Lc/e/b/k/e;->x:F

    .line 45
    iget-object v0, p0, Lc/e/b/k/e;->f:[Z

    aput-boolean v5, v0, v2

    .line 46
    aput-boolean v5, v0, v5

    .line 47
    iput-boolean v2, p0, Lc/e/b/k/e;->C:Z

    .line 48
    iget-object v0, p0, Lc/e/b/k/e;->P:[Z

    aput-boolean v2, v0, v2

    .line 49
    aput-boolean v2, v0, v5

    .line 50
    iput-boolean v5, p0, Lc/e/b/k/e;->g:Z

    return-void
.end method

.method public i0()V
    .registers 4

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lc/e/b/k/e;->j:Z

    .line 2
    iput-boolean v0, p0, Lc/e/b/k/e;->k:Z

    .line 3
    iget-object v1, p0, Lc/e/b/k/e;->O:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_b
    if-ge v0, v1, :cond_1b

    .line 4
    iget-object v2, p0, Lc/e/b/k/e;->O:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc/e/b/k/d;

    .line 5
    invoke-virtual {v2}, Lc/e/b/k/d;->q()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    :cond_1b
    return-void
.end method

.method public j(Lc/e/b/k/e;FI)V
    .registers 10

    .line 1
    sget-object v3, Lc/e/b/k/d$b;->h:Lc/e/b/k/d$b;

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, v3

    move-object v2, p1

    move v4, p3

    invoke-virtual/range {v0 .. v5}, Lc/e/b/k/e;->X(Lc/e/b/k/d$b;Lc/e/b/k/e;Lc/e/b/k/d$b;II)V

    .line 2
    iput p2, p0, Lc/e/b/k/e;->z:F

    return-void
.end method

.method public j0(Lc/e/b/c;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lc/e/b/k/e;->F:Lc/e/b/k/d;

    invoke-virtual {v0, p1}, Lc/e/b/k/d;->r(Lc/e/b/c;)V

    .line 2
    iget-object v0, p0, Lc/e/b/k/e;->G:Lc/e/b/k/d;

    invoke-virtual {v0, p1}, Lc/e/b/k/d;->r(Lc/e/b/c;)V

    .line 3
    iget-object v0, p0, Lc/e/b/k/e;->H:Lc/e/b/k/d;

    invoke-virtual {v0, p1}, Lc/e/b/k/d;->r(Lc/e/b/c;)V

    .line 4
    iget-object v0, p0, Lc/e/b/k/e;->I:Lc/e/b/k/d;

    invoke-virtual {v0, p1}, Lc/e/b/k/d;->r(Lc/e/b/c;)V

    .line 5
    iget-object v0, p0, Lc/e/b/k/e;->J:Lc/e/b/k/d;

    invoke-virtual {v0, p1}, Lc/e/b/k/d;->r(Lc/e/b/c;)V

    .line 6
    iget-object v0, p0, Lc/e/b/k/e;->M:Lc/e/b/k/d;

    invoke-virtual {v0, p1}, Lc/e/b/k/d;->r(Lc/e/b/c;)V

    .line 7
    iget-object v0, p0, Lc/e/b/k/e;->K:Lc/e/b/k/d;

    invoke-virtual {v0, p1}, Lc/e/b/k/d;->r(Lc/e/b/c;)V

    .line 8
    iget-object v0, p0, Lc/e/b/k/e;->L:Lc/e/b/k/d;

    invoke-virtual {v0, p1}, Lc/e/b/k/d;->r(Lc/e/b/c;)V

    return-void
.end method

.method public k(Lc/e/b/d;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lc/e/b/k/e;->F:Lc/e/b/k/d;

    invoke-virtual {p1, v0}, Lc/e/b/d;->q(Ljava/lang/Object;)Lc/e/b/i;

    .line 2
    iget-object v0, p0, Lc/e/b/k/e;->G:Lc/e/b/k/d;

    invoke-virtual {p1, v0}, Lc/e/b/d;->q(Ljava/lang/Object;)Lc/e/b/i;

    .line 3
    iget-object v0, p0, Lc/e/b/k/e;->H:Lc/e/b/k/d;

    invoke-virtual {p1, v0}, Lc/e/b/d;->q(Ljava/lang/Object;)Lc/e/b/i;

    .line 4
    iget-object v0, p0, Lc/e/b/k/e;->I:Lc/e/b/k/d;

    invoke-virtual {p1, v0}, Lc/e/b/d;->q(Ljava/lang/Object;)Lc/e/b/i;

    .line 5
    iget v0, p0, Lc/e/b/k/e;->Y:I

    if-lez v0, :cond_1d

    .line 6
    iget-object v0, p0, Lc/e/b/k/e;->J:Lc/e/b/k/d;

    invoke-virtual {p1, v0}, Lc/e/b/d;->q(Ljava/lang/Object;)Lc/e/b/i;

    :cond_1d
    return-void
.end method

.method public k0(I)V
    .registers 2

    .line 1
    iput p1, p0, Lc/e/b/k/e;->Y:I

    if-lez p1, :cond_6

    const/4 p1, 0x1

    goto :goto_7

    :cond_6
    const/4 p1, 0x0

    .line 2
    :goto_7
    iput-boolean p1, p0, Lc/e/b/k/e;->A:Z

    return-void
.end method

.method public l()V
    .registers 2

    .line 1
    iget-object v0, p0, Lc/e/b/k/e;->d:Lc/e/b/k/m/l;

    if-nez v0, :cond_b

    .line 2
    new-instance v0, Lc/e/b/k/m/l;

    invoke-direct {v0, p0}, Lc/e/b/k/m/l;-><init>(Lc/e/b/k/e;)V

    iput-object v0, p0, Lc/e/b/k/e;->d:Lc/e/b/k/m/l;

    .line 3
    :cond_b
    iget-object v0, p0, Lc/e/b/k/e;->e:Lc/e/b/k/m/n;

    if-nez v0, :cond_16

    .line 4
    new-instance v0, Lc/e/b/k/m/n;

    invoke-direct {v0, p0}, Lc/e/b/k/m/n;-><init>(Lc/e/b/k/e;)V

    iput-object v0, p0, Lc/e/b/k/e;->e:Lc/e/b/k/m/n;

    :cond_16
    return-void
.end method

.method public l0(Ljava/lang/Object;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lc/e/b/k/e;->d0:Ljava/lang/Object;

    return-void
.end method

.method public m(Lc/e/b/k/d$b;)Lc/e/b/k/d;
    .registers 4

    .line 1
    sget-object v0, Lc/e/b/k/e$a;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_30

    .line 2
    new-instance v0, Ljava/lang/AssertionError;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :pswitch_15
    const/4 p1, 0x0

    return-object p1

    .line 3
    :pswitch_17
    iget-object p1, p0, Lc/e/b/k/e;->L:Lc/e/b/k/d;

    return-object p1

    .line 4
    :pswitch_1a
    iget-object p1, p0, Lc/e/b/k/e;->K:Lc/e/b/k/d;

    return-object p1

    .line 5
    :pswitch_1d
    iget-object p1, p0, Lc/e/b/k/e;->M:Lc/e/b/k/d;

    return-object p1

    .line 6
    :pswitch_20
    iget-object p1, p0, Lc/e/b/k/e;->J:Lc/e/b/k/d;

    return-object p1

    .line 7
    :pswitch_23
    iget-object p1, p0, Lc/e/b/k/e;->I:Lc/e/b/k/d;

    return-object p1

    .line 8
    :pswitch_26
    iget-object p1, p0, Lc/e/b/k/e;->H:Lc/e/b/k/d;

    return-object p1

    .line 9
    :pswitch_29
    iget-object p1, p0, Lc/e/b/k/e;->G:Lc/e/b/k/d;

    return-object p1

    .line 10
    :pswitch_2c
    iget-object p1, p0, Lc/e/b/k/e;->F:Lc/e/b/k/d;

    return-object p1

    nop

    :pswitch_data_30
    .packed-switch 0x1
        :pswitch_2c
        :pswitch_29
        :pswitch_26
        :pswitch_23
        :pswitch_20
        :pswitch_1d
        :pswitch_1a
        :pswitch_17
        :pswitch_15
    .end packed-switch
.end method

.method public m0(Ljava/lang/String;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lc/e/b/k/e;->f0:Ljava/lang/String;

    return-void
.end method

.method public n()I
    .registers 2

    .line 1
    iget v0, p0, Lc/e/b/k/e;->Y:I

    return v0
.end method

.method public n0(Ljava/lang/String;)V
    .registers 10

    const/4 v0, 0x0

    if-eqz p1, :cond_8e

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_b

    goto/16 :goto_8e

    :cond_b
    const/4 v1, -0x1

    .line 2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x2c

    .line 3
    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-lez v3, :cond_37

    add-int/lit8 v6, v2, -0x1

    if-ge v3, v6, :cond_37

    .line 4
    invoke-virtual {p1, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    const-string v7, "W"

    .line 5
    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2c

    const/4 v1, 0x0

    goto :goto_35

    :cond_2c
    const-string v4, "H"

    .line 6
    invoke-virtual {v6, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_35

    const/4 v1, 0x1

    :cond_35
    :goto_35
    add-int/lit8 v4, v3, 0x1

    :cond_37
    const/16 v3, 0x3a

    .line 7
    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-ltz v3, :cond_75

    sub-int/2addr v2, v5

    if-ge v3, v2, :cond_75

    .line 8
    invoke-virtual {p1, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    add-int/2addr v3, v5

    .line 9
    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 10
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_84

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_84

    .line 11
    :try_start_57
    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    .line 12
    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1

    cmpl-float v3, v2, v0

    if-lez v3, :cond_84

    cmpl-float v3, p1, v0

    if-lez v3, :cond_84

    if-ne v1, v5, :cond_6f

    div-float/2addr p1, v2

    .line 13
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    goto :goto_85

    :cond_6f
    div-float/2addr v2, p1

    .line 14
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result p1
    :try_end_74
    .catch Ljava/lang/NumberFormatException; {:try_start_57 .. :try_end_74} :catch_84

    goto :goto_85

    .line 15
    :cond_75
    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 16
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_84

    .line 17
    :try_start_7f
    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1
    :try_end_83
    .catch Ljava/lang/NumberFormatException; {:try_start_7f .. :try_end_83} :catch_84

    goto :goto_85

    :catch_84
    :cond_84
    const/4 p1, 0x0

    :goto_85
    cmpl-float v0, p1, v0

    if-lez v0, :cond_8d

    .line 18
    iput p1, p0, Lc/e/b/k/e;->U:F

    .line 19
    iput v1, p0, Lc/e/b/k/e;->V:I

    :cond_8d
    return-void

    .line 20
    :cond_8e
    :goto_8e
    iput v0, p0, Lc/e/b/k/e;->U:F

    return-void
.end method

.method public o(I)F
    .registers 3

    if-nez p1, :cond_5

    .line 1
    iget p1, p0, Lc/e/b/k/e;->b0:F

    return p1

    :cond_5
    const/4 v0, 0x1

    if-ne p1, v0, :cond_b

    .line 2
    iget p1, p0, Lc/e/b/k/e;->c0:F

    return p1

    :cond_b
    const/high16 p1, -0x40800000    # -1.0f

    return p1
.end method

.method public o0(I)V
    .registers 5

    .line 1
    iget-boolean v0, p0, Lc/e/b/k/e;->A:Z

    if-nez v0, :cond_5

    return-void

    .line 2
    :cond_5
    iget v0, p0, Lc/e/b/k/e;->Y:I

    sub-int v0, p1, v0

    .line 3
    iget v1, p0, Lc/e/b/k/e;->T:I

    add-int/2addr v1, v0

    .line 4
    iput v0, p0, Lc/e/b/k/e;->X:I

    .line 5
    iget-object v2, p0, Lc/e/b/k/e;->G:Lc/e/b/k/d;

    invoke-virtual {v2, v0}, Lc/e/b/k/d;->s(I)V

    .line 6
    iget-object v0, p0, Lc/e/b/k/e;->I:Lc/e/b/k/d;

    invoke-virtual {v0, v1}, Lc/e/b/k/d;->s(I)V

    .line 7
    iget-object v0, p0, Lc/e/b/k/e;->J:Lc/e/b/k/d;

    invoke-virtual {v0, p1}, Lc/e/b/k/d;->s(I)V

    const/4 p1, 0x1

    .line 8
    iput-boolean p1, p0, Lc/e/b/k/e;->k:Z

    return-void
.end method

.method public p()I
    .registers 3

    .line 1
    invoke-virtual {p0}, Lc/e/b/k/e;->T()I

    move-result v0

    iget v1, p0, Lc/e/b/k/e;->T:I

    add-int/2addr v0, v1

    return v0
.end method

.method public p0(II)V
    .registers 4

    .line 1
    iget-object v0, p0, Lc/e/b/k/e;->F:Lc/e/b/k/d;

    invoke-virtual {v0, p1}, Lc/e/b/k/d;->s(I)V

    .line 2
    iget-object v0, p0, Lc/e/b/k/e;->H:Lc/e/b/k/d;

    invoke-virtual {v0, p2}, Lc/e/b/k/d;->s(I)V

    .line 3
    iput p1, p0, Lc/e/b/k/e;->W:I

    sub-int/2addr p2, p1

    .line 4
    iput p2, p0, Lc/e/b/k/e;->S:I

    const/4 p1, 0x1

    .line 5
    iput-boolean p1, p0, Lc/e/b/k/e;->j:Z

    return-void
.end method

.method public q()Ljava/lang/Object;
    .registers 2

    .line 1
    iget-object v0, p0, Lc/e/b/k/e;->d0:Ljava/lang/Object;

    return-object v0
.end method

.method public q0(I)V
    .registers 3

    .line 1
    iget-object v0, p0, Lc/e/b/k/e;->F:Lc/e/b/k/d;

    invoke-virtual {v0, p1}, Lc/e/b/k/d;->s(I)V

    .line 2
    iput p1, p0, Lc/e/b/k/e;->W:I

    return-void
.end method

.method public r()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lc/e/b/k/e;->f0:Ljava/lang/String;

    return-object v0
.end method

.method public r0(I)V
    .registers 3

    .line 1
    iget-object v0, p0, Lc/e/b/k/e;->G:Lc/e/b/k/d;

    invoke-virtual {v0, p1}, Lc/e/b/k/d;->s(I)V

    .line 2
    iput p1, p0, Lc/e/b/k/e;->X:I

    return-void
.end method

.method public s(I)Lc/e/b/k/e$b;
    .registers 3

    if-nez p1, :cond_7

    .line 1
    invoke-virtual {p0}, Lc/e/b/k/e;->y()Lc/e/b/k/e$b;

    move-result-object p1

    return-object p1

    :cond_7
    const/4 v0, 0x1

    if-ne p1, v0, :cond_f

    .line 2
    invoke-virtual {p0}, Lc/e/b/k/e;->O()Lc/e/b/k/e$b;

    move-result-object p1

    return-object p1

    :cond_f
    const/4 p1, 0x0

    return-object p1
.end method

.method public s0(II)V
    .registers 4

    .line 1
    iget-object v0, p0, Lc/e/b/k/e;->G:Lc/e/b/k/d;

    invoke-virtual {v0, p1}, Lc/e/b/k/d;->s(I)V

    .line 2
    iget-object v0, p0, Lc/e/b/k/e;->I:Lc/e/b/k/d;

    invoke-virtual {v0, p2}, Lc/e/b/k/d;->s(I)V

    .line 3
    iput p1, p0, Lc/e/b/k/e;->X:I

    sub-int/2addr p2, p1

    .line 4
    iput p2, p0, Lc/e/b/k/e;->T:I

    .line 5
    iget-boolean p2, p0, Lc/e/b/k/e;->A:Z

    if-eqz p2, :cond_1b

    .line 6
    iget-object p2, p0, Lc/e/b/k/e;->J:Lc/e/b/k/d;

    iget v0, p0, Lc/e/b/k/e;->Y:I

    add-int/2addr p1, v0

    invoke-virtual {p2, p1}, Lc/e/b/k/d;->s(I)V

    :cond_1b
    const/4 p1, 0x1

    .line 7
    iput-boolean p1, p0, Lc/e/b/k/e;->k:Z

    return-void
.end method

.method public t()F
    .registers 2

    .line 1
    iget v0, p0, Lc/e/b/k/e;->U:F

    return v0
.end method

.method public t0(IIII)V
    .registers 6

    sub-int/2addr p3, p1

    sub-int/2addr p4, p2

    .line 1
    iput p1, p0, Lc/e/b/k/e;->W:I

    .line 2
    iput p2, p0, Lc/e/b/k/e;->X:I

    .line 3
    iget p1, p0, Lc/e/b/k/e;->e0:I

    const/4 p2, 0x0

    const/16 v0, 0x8

    if-ne p1, v0, :cond_12

    .line 4
    iput p2, p0, Lc/e/b/k/e;->S:I

    .line 5
    iput p2, p0, Lc/e/b/k/e;->T:I

    return-void

    .line 6
    :cond_12
    iget-object p1, p0, Lc/e/b/k/e;->Q:[Lc/e/b/k/e$b;

    aget-object p1, p1, p2

    sget-object p2, Lc/e/b/k/e$b;->b:Lc/e/b/k/e$b;

    if-ne p1, p2, :cond_1f

    iget p1, p0, Lc/e/b/k/e;->S:I

    if-ge p3, p1, :cond_1f

    move p3, p1

    .line 7
    :cond_1f
    iget-object p1, p0, Lc/e/b/k/e;->Q:[Lc/e/b/k/e$b;

    const/4 p2, 0x1

    aget-object p1, p1, p2

    sget-object p2, Lc/e/b/k/e$b;->b:Lc/e/b/k/e$b;

    if-ne p1, p2, :cond_2d

    iget p1, p0, Lc/e/b/k/e;->T:I

    if-ge p4, p1, :cond_2d

    move p4, p1

    .line 8
    :cond_2d
    iput p3, p0, Lc/e/b/k/e;->S:I

    .line 9
    iput p4, p0, Lc/e/b/k/e;->T:I

    .line 10
    iget p1, p0, Lc/e/b/k/e;->a0:I

    if-ge p4, p1, :cond_37

    .line 11
    iput p1, p0, Lc/e/b/k/e;->T:I

    .line 12
    :cond_37
    iget p1, p0, Lc/e/b/k/e;->S:I

    iget p2, p0, Lc/e/b/k/e;->Z:I

    if-ge p1, p2, :cond_3f

    .line 13
    iput p2, p0, Lc/e/b/k/e;->S:I

    :cond_3f
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lc/e/b/k/e;->g0:Ljava/lang/String;

    const-string v2, " "

    const-string v3, ""

    if-eqz v1, :cond_24

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "type: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lc/e/b/k/e;->g0:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_25

    :cond_24
    move-object v1, v3

    :goto_25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lc/e/b/k/e;->f0:Ljava/lang/String;

    if-eqz v1, :cond_42

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "id: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lc/e/b/k/e;->f0:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_42
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lc/e/b/k/e;->W:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lc/e/b/k/e;->X:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ") - ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lc/e/b/k/e;->S:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " x "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lc/e/b/k/e;->T:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u()I
    .registers 2

    .line 1
    iget v0, p0, Lc/e/b/k/e;->V:I

    return v0
.end method

.method public u0(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Lc/e/b/k/e;->A:Z

    return-void
.end method

.method public v()I
    .registers 3

    .line 1
    iget v0, p0, Lc/e/b/k/e;->e0:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_8

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_8
    iget v0, p0, Lc/e/b/k/e;->T:I

    return v0
.end method

.method public v0(I)V
    .registers 3

    .line 1
    iput p1, p0, Lc/e/b/k/e;->T:I

    .line 2
    iget v0, p0, Lc/e/b/k/e;->a0:I

    if-ge p1, v0, :cond_8

    .line 3
    iput v0, p0, Lc/e/b/k/e;->T:I

    :cond_8
    return-void
.end method

.method public w()F
    .registers 2

    .line 1
    iget v0, p0, Lc/e/b/k/e;->b0:F

    return v0
.end method

.method public w0(F)V
    .registers 2

    .line 1
    iput p1, p0, Lc/e/b/k/e;->b0:F

    return-void
.end method

.method public x()I
    .registers 2

    .line 1
    iget v0, p0, Lc/e/b/k/e;->h0:I

    return v0
.end method

.method public x0(I)V
    .registers 2

    .line 1
    iput p1, p0, Lc/e/b/k/e;->h0:I

    return-void
.end method

.method public y()Lc/e/b/k/e$b;
    .registers 3

    .line 1
    iget-object v0, p0, Lc/e/b/k/e;->Q:[Lc/e/b/k/e$b;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0
.end method

.method public y0(II)V
    .registers 3

    .line 1
    iput p1, p0, Lc/e/b/k/e;->W:I

    sub-int/2addr p2, p1

    .line 2
    iput p2, p0, Lc/e/b/k/e;->S:I

    .line 3
    iget p1, p0, Lc/e/b/k/e;->Z:I

    if-ge p2, p1, :cond_b

    .line 4
    iput p1, p0, Lc/e/b/k/e;->S:I

    :cond_b
    return-void
.end method

.method public z()I
    .registers 3

    .line 1
    iget-object v0, p0, Lc/e/b/k/e;->F:Lc/e/b/k/d;

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 2
    iget v0, v0, Lc/e/b/k/d;->g:I

    add-int/2addr v1, v0

    .line 3
    :cond_8
    iget-object v0, p0, Lc/e/b/k/e;->H:Lc/e/b/k/d;

    if-eqz v0, :cond_f

    .line 4
    iget v0, v0, Lc/e/b/k/d;->g:I

    add-int/2addr v1, v0

    :cond_f
    return v1
.end method

.method public z0(Lc/e/b/k/e$b;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lc/e/b/k/e;->Q:[Lc/e/b/k/e$b;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    return-void
.end method
