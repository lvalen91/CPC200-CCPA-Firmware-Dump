.class public Lc/e/b/k/e;
.super Ljava/lang/Object;
.source "SourceFile"

.annotation system Ldalvik/annotation/MemberClasses;
  value = {
    Lc/e/b/k/e$b;
  }
.end annotation

.field public static o0:F = 0.5F

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

.method static constructor <clinit>()V
  .registers 2
    return-void
.end method

.method public constructor <init>()V
  .registers 11
  .line 1
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    const/4 v0, 0
  .line 2
    iput-boolean v0, p0, Lc/e/b/k/e;->a:Z
    const/4 v1, 0
  .line 3
    iput-object v1, p0, Lc/e/b/k/e;->d:Lc/e/b/k/m/l;
  .line 4
    iput-object v1, p0, Lc/e/b/k/e;->e:Lc/e/b/k/m/n;
    const/4 v2, 2
    new-array v3, v2, [Z
  .line 5
    fill-array-data v3, :L0
    iput-object v3, p0, Lc/e/b/k/e;->f:[Z
    const/4 v3, 1
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
    const/4 v4, -1
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
    const/high16 v5, 16256
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
    fill-array-data v5, :L1
    iput-object v5, p0, Lc/e/b/k/e;->y:[I
    const/4 v5, 0
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
    invoke-direct { v6, p0, v7 }, Lc/e/b/k/d;-><init>(Lc/e/b/k/e;Lc/e/b/k/d$b;)V
    iput-object v6, p0, Lc/e/b/k/e;->F:Lc/e/b/k/d;
  .line 31
    new-instance v6, Lc/e/b/k/d;
    sget-object v7, Lc/e/b/k/d$b;->d:Lc/e/b/k/d$b;
    invoke-direct { v6, p0, v7 }, Lc/e/b/k/d;-><init>(Lc/e/b/k/e;Lc/e/b/k/d$b;)V
    iput-object v6, p0, Lc/e/b/k/e;->G:Lc/e/b/k/d;
  .line 32
    new-instance v6, Lc/e/b/k/d;
    sget-object v7, Lc/e/b/k/d$b;->e:Lc/e/b/k/d$b;
    invoke-direct { v6, p0, v7 }, Lc/e/b/k/d;-><init>(Lc/e/b/k/e;Lc/e/b/k/d$b;)V
    iput-object v6, p0, Lc/e/b/k/e;->H:Lc/e/b/k/d;
  .line 33
    new-instance v6, Lc/e/b/k/d;
    sget-object v7, Lc/e/b/k/d$b;->f:Lc/e/b/k/d$b;
    invoke-direct { v6, p0, v7 }, Lc/e/b/k/d;-><init>(Lc/e/b/k/e;Lc/e/b/k/d$b;)V
    iput-object v6, p0, Lc/e/b/k/e;->I:Lc/e/b/k/d;
  .line 34
    new-instance v6, Lc/e/b/k/d;
    sget-object v7, Lc/e/b/k/d$b;->g:Lc/e/b/k/d$b;
    invoke-direct { v6, p0, v7 }, Lc/e/b/k/d;-><init>(Lc/e/b/k/e;Lc/e/b/k/d$b;)V
    iput-object v6, p0, Lc/e/b/k/e;->J:Lc/e/b/k/d;
  .line 35
    new-instance v6, Lc/e/b/k/d;
    sget-object v7, Lc/e/b/k/d$b;->i:Lc/e/b/k/d$b;
    invoke-direct { v6, p0, v7 }, Lc/e/b/k/d;-><init>(Lc/e/b/k/e;Lc/e/b/k/d$b;)V
    iput-object v6, p0, Lc/e/b/k/e;->K:Lc/e/b/k/d;
  .line 36
    new-instance v6, Lc/e/b/k/d;
    sget-object v7, Lc/e/b/k/d$b;->j:Lc/e/b/k/d$b;
    invoke-direct { v6, p0, v7 }, Lc/e/b/k/d;-><init>(Lc/e/b/k/e;Lc/e/b/k/d$b;)V
    iput-object v6, p0, Lc/e/b/k/e;->L:Lc/e/b/k/d;
  .line 37
    new-instance v6, Lc/e/b/k/d;
    sget-object v7, Lc/e/b/k/d$b;->h:Lc/e/b/k/d$b;
    invoke-direct { v6, p0, v7 }, Lc/e/b/k/d;-><init>(Lc/e/b/k/e;Lc/e/b/k/d$b;)V
    iput-object v6, p0, Lc/e/b/k/e;->M:Lc/e/b/k/d;
    const/4 v7, 6
    new-array v7, v7, [Lc/e/b/k/d;
  .line 38
    iget-object v8, p0, Lc/e/b/k/e;->F:Lc/e/b/k/d;
    aput-object v8, v7, v0
    iget-object v8, p0, Lc/e/b/k/e;->H:Lc/e/b/k/d;
    aput-object v8, v7, v3
    iget-object v8, p0, Lc/e/b/k/e;->G:Lc/e/b/k/d;
    aput-object v8, v7, v2
    iget-object v8, p0, Lc/e/b/k/e;->I:Lc/e/b/k/d;
    const/4 v9, 3
    aput-object v8, v7, v9
    iget-object v8, p0, Lc/e/b/k/e;->J:Lc/e/b/k/d;
    const/4 v9, 4
    aput-object v8, v7, v9
    const/4 v8, 5
    aput-object v6, v7, v8
    iput-object v7, p0, Lc/e/b/k/e;->N:[Lc/e/b/k/d;
  .line 39
    new-instance v6, Ljava/util/ArrayList;
    invoke-direct { v6 }, Ljava/util/ArrayList;-><init>()V
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
    fill-array-data v5, :L2
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
    invoke-direct { p0 }, Lc/e/b/k/e;->d()V
    return-void
  :L0
  .array-data 1
    1t
    1t
  .end array-data
  :L1
  .array-data 4
    -1t -1t -1t 127t
    -1t -1t -1t 127t
  .end array-data
  :L2
  .array-data 4
    0t 0t -128t -65t
    0t 0t -128t -65t
  .end array-data
.end method

.method private Y(I)Z
  .registers 6
    mul-int/lit8 p1, p1, 2
  .line 1
    iget-object v0, p0, Lc/e/b/k/e;->N:[Lc/e/b/k/d;
    aget-object v1, v0, p1
    iget-object v1, v1, Lc/e/b/k/d;->f:Lc/e/b/k/d;
    const/4 v2, 1
    if-eqz v1, :L0
    aget-object v1, v0, p1
    iget-object v1, v1, Lc/e/b/k/d;->f:Lc/e/b/k/d;
    iget-object v1, v1, Lc/e/b/k/d;->f:Lc/e/b/k/d;
    aget-object v3, v0, p1
    if-eq v1, v3, :L0
    add-int/2addr p1, v2
    aget-object v1, v0, p1
    iget-object v1, v1, Lc/e/b/k/d;->f:Lc/e/b/k/d;
    if-eqz v1, :L0
    aget-object v1, v0, p1
    iget-object v1, v1, Lc/e/b/k/d;->f:Lc/e/b/k/d;
    iget-object v1, v1, Lc/e/b/k/d;->f:Lc/e/b/k/d;
    aget-object p1, v0, p1
    if-ne v1, p1, :L0
    goto :L1
  :L0
    const/4 v2, 0
  :L1
    return v2
.end method

.method private d()V
  .registers 3
  .line 1
    iget-object v0, p0, Lc/e/b/k/e;->O:Ljava/util/ArrayList;
    iget-object v1, p0, Lc/e/b/k/e;->F:Lc/e/b/k/d;
    invoke-virtual { v0, v1 }, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
  .line 2
    iget-object v0, p0, Lc/e/b/k/e;->O:Ljava/util/ArrayList;
    iget-object v1, p0, Lc/e/b/k/e;->G:Lc/e/b/k/d;
    invoke-virtual { v0, v1 }, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
  .line 3
    iget-object v0, p0, Lc/e/b/k/e;->O:Ljava/util/ArrayList;
    iget-object v1, p0, Lc/e/b/k/e;->H:Lc/e/b/k/d;
    invoke-virtual { v0, v1 }, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
  .line 4
    iget-object v0, p0, Lc/e/b/k/e;->O:Ljava/util/ArrayList;
    iget-object v1, p0, Lc/e/b/k/e;->I:Lc/e/b/k/d;
    invoke-virtual { v0, v1 }, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
  .line 5
    iget-object v0, p0, Lc/e/b/k/e;->O:Ljava/util/ArrayList;
    iget-object v1, p0, Lc/e/b/k/e;->K:Lc/e/b/k/d;
    invoke-virtual { v0, v1 }, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
  .line 6
    iget-object v0, p0, Lc/e/b/k/e;->O:Ljava/util/ArrayList;
    iget-object v1, p0, Lc/e/b/k/e;->L:Lc/e/b/k/d;
    invoke-virtual { v0, v1 }, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
  .line 7
    iget-object v0, p0, Lc/e/b/k/e;->O:Ljava/util/ArrayList;
    iget-object v1, p0, Lc/e/b/k/e;->M:Lc/e/b/k/d;
    invoke-virtual { v0, v1 }, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
  .line 8
    iget-object v0, p0, Lc/e/b/k/e;->O:Ljava/util/ArrayList;
    iget-object v1, p0, Lc/e/b/k/e;->J:Lc/e/b/k/d;
    invoke-virtual { v0, v1 }, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
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
    invoke-virtual { v10, v13 }, Lc/e/b/d;->q(Ljava/lang/Object;)Lc/e/b/i;
    move-result-object v9
  .line 2
    invoke-virtual { v10, v14 }, Lc/e/b/d;->q(Ljava/lang/Object;)Lc/e/b/i;
    move-result-object v8
  .line 3
    invoke-virtual/range { p10 .. p10 }, Lc/e/b/k/d;->i()Lc/e/b/k/d;
    move-result-object v5
    invoke-virtual { v10, v5 }, Lc/e/b/d;->q(Ljava/lang/Object;)Lc/e/b/i;
    move-result-object v7
  .line 4
    invoke-virtual/range { p11 .. p11 }, Lc/e/b/k/d;->i()Lc/e/b/k/d;
    move-result-object v5
    invoke-virtual { v10, v5 }, Lc/e/b/d;->q(Ljava/lang/Object;)Lc/e/b/i;
    move-result-object v6
  .line 5
    invoke-static { }, Lc/e/b/d;->w()Lc/e/b/e;
    move-result-object v5
    if-eqz v5, :L0
  .line 6
    invoke-static { }, Lc/e/b/d;->w()Lc/e/b/e;
    move-result-object v5
    iget-wide v11, v5, Lc/e/b/e;->w:J
    const-wide/16 v16, 1
    add-long v11, v11, v16
    iput-wide v11, v5, Lc/e/b/e;->w:J
  :L0
  .line 7
    invoke-virtual/range { p10 .. p10 }, Lc/e/b/k/d;->n()Z
    move-result v11
  .line 8
    invoke-virtual/range { p11 .. p11 }, Lc/e/b/k/d;->n()Z
    move-result v12
  .line 9
    iget-object v5, v0, Lc/e/b/k/e;->M:Lc/e/b/k/d;
    invoke-virtual { v5 }, Lc/e/b/k/d;->n()Z
    move-result v16
    if-eqz v11, :L1
    const/16 v18, 1
    goto :L2
  :L1
    const/16 v18, 0
  :L2
    if-eqz v12, :L3
    add-int/lit8 v18, v18, 1
  :L3
    if-eqz v16, :L4
    add-int/lit8 v18, v18, 1
  :L4
    move/from16 v19, v18
    if-eqz p17, :L5
    const/16 v20, 3
    goto :L6
  :L5
    move/from16 v20, p22
  :L6
  .line 10
    sget-object v21, Lc/e/b/k/e$a;->b:[I
    invoke-virtual/range { p8 .. p8 }, Ljava/lang/Enum;->ordinal()I
    move-result v22
    aget v5, v21, v22
    const/4 v2, 2
    const/4 v14, 1
    if-eq v5, v14, :L7
    if-eq v5, v2, :L7
    const/4 v14, 3
    if-eq v5, v14, :L7
    const/4 v14, 4
    if-eq v5, v14, :L9
  :L7
    move/from16 v5, v20
  :L8
    const/16 v20, 0
    goto :L10
  :L9
    move/from16 v5, v20
    if-eq v5, v14, :L8
    const/16 v20, 1
  :L10
  .line 11
    iget v14, v0, Lc/e/b/k/e;->e0:I
    const/16 v2, 8
    if-ne v14, v2, :L11
    const/4 v14, 0
    const/16 v20, 0
    goto :L12
  :L11
    move/from16 v14, p13
  :L12
    if-eqz p27, :L14
    if-nez v11, :L13
    if-nez v12, :L13
    if-nez v16, :L13
    move/from16 v2, p12
  .line 12
    invoke-virtual { v10, v9, v2 }, Lc/e/b/d;->f(Lc/e/b/i;I)V
    goto :L14
  :L13
    if-eqz v11, :L14
    if-nez v12, :L14
  .line 13
    invoke-virtual/range { p10 .. p10 }, Lc/e/b/k/d;->e()I
    move-result v2
    move-object/from16 v22, v6
    const/16 v6, 8
    invoke-virtual { v10, v9, v7, v2, v6 }, Lc/e/b/d;->e(Lc/e/b/i;Lc/e/b/i;II)Lc/e/b/b;
    goto :L15
  :L14
    move-object/from16 v22, v6
    const/16 v6, 8
  :L15
    if-nez v20, :L20
    if-eqz p9, :L17
    const/4 v2, 0
    const/4 v6, 3
  .line 14
    invoke-virtual { v10, v8, v9, v2, v6 }, Lc/e/b/d;->e(Lc/e/b/i;Lc/e/b/i;II)Lc/e/b/b;
    const/16 v14, 8
    if-lez v15, :L16
  .line 15
    invoke-virtual { v10, v8, v9, v15, v14 }, Lc/e/b/d;->h(Lc/e/b/i;Lc/e/b/i;II)V
  :L16
    const v2, 2147483647
    if-ge v1, v2, :L18
  .line 16
    invoke-virtual { v10, v8, v9, v1, v14 }, Lc/e/b/d;->j(Lc/e/b/i;Lc/e/b/i;II)V
    goto :L18
  :L17
    const/16 v1, 8
    const/4 v6, 3
  .line 17
    invoke-virtual { v10, v8, v9, v14, v1 }, Lc/e/b/d;->e(Lc/e/b/i;Lc/e/b/i;II)Lc/e/b/b;
  :L18
    move/from16 v24, v5
    move-object v1, v7
    move-object v14, v8
    move/from16 v23, v20
    move-object/from16 v15, v22
    move/from16 v20, v3
    move/from16 v22, v19
  :L19
    move/from16 v19, p5
    goto/16 :L44
  :L20
    move/from16 v1, v19
    const/4 v2, 2
    const/4 v6, 3
    if-eq v1, v2, :L24
    if-nez p17, :L24
    const/4 v2, 1
    if-eq v5, v2, :L21
    if-nez v5, :L24
  :L21
  .line 18
    invoke-static { v3, v14 }, Ljava/lang/Math;->max(II)I
    move-result v2
    if-lez v4, :L22
  .line 19
    invoke-static { v4, v2 }, Ljava/lang/Math;->min(II)I
    move-result v2
  :L22
    const/16 v14, 8
  .line 20
    invoke-virtual { v10, v8, v9, v2, v14 }, Lc/e/b/d;->e(Lc/e/b/i;Lc/e/b/i;II)Lc/e/b/b;
    move/from16 v19, p5
    move/from16 v20, v3
    move/from16 v24, v5
    move-object v14, v8
    move-object/from16 v15, v22
    const/16 v23, 0
    move/from16 v22, v1
  :L23
    move-object v1, v7
    goto/16 :L44
  :L24
    const/4 v2, -2
    if-ne v3, v2, :L25
    move v3, v14
  :L25
    if-ne v4, v2, :L26
    move v2, v14
    goto :L27
  :L26
    move v2, v4
  :L27
    if-lez v14, :L28
    const/4 v4, 1
    if-eq v5, v4, :L28
    const/4 v14, 0
  :L28
    if-lez v3, :L29
    const/16 v4, 8
  .line 21
    invoke-virtual { v10, v8, v9, v3, v4 }, Lc/e/b/d;->h(Lc/e/b/i;Lc/e/b/i;II)V
  .line 22
    invoke-static { v14, v3 }, Ljava/lang/Math;->max(II)I
    move-result v14
  :L29
    if-lez v2, :L34
    if-eqz p3, :L30
    const/4 v4, 1
    if-ne v5, v4, :L30
    const/4 v4, 0
    goto :L31
  :L30
    const/4 v4, 1
  :L31
    if-eqz v4, :L32
    const/16 v4, 8
  .line 23
    invoke-virtual { v10, v8, v9, v2, v4 }, Lc/e/b/d;->j(Lc/e/b/i;Lc/e/b/i;II)V
    goto :L33
  :L32
    const/16 v4, 8
  :L33
  .line 24
    invoke-static { v14, v2 }, Ljava/lang/Math;->min(II)I
    move-result v14
    goto :L35
  :L34
    const/16 v4, 8
  :L35
    const/4 v6, 1
    if-ne v5, v6, :L39
    if-eqz p3, :L36
  .line 25
    invoke-virtual { v10, v8, v9, v14, v4 }, Lc/e/b/d;->e(Lc/e/b/i;Lc/e/b/i;II)Lc/e/b/b;
    goto :L38
  :L36
    if-eqz p19, :L37
    const/4 v6, 5
  .line 26
    invoke-virtual { v10, v8, v9, v14, v6 }, Lc/e/b/d;->e(Lc/e/b/i;Lc/e/b/i;II)Lc/e/b/b;
  .line 27
    invoke-virtual { v10, v8, v9, v14, v4 }, Lc/e/b/d;->j(Lc/e/b/i;Lc/e/b/i;II)V
    goto :L38
  :L37
    const/4 v6, 5
  .line 28
    invoke-virtual { v10, v8, v9, v14, v6 }, Lc/e/b/d;->e(Lc/e/b/i;Lc/e/b/i;II)Lc/e/b/b;
  .line 29
    invoke-virtual { v10, v8, v9, v14, v4 }, Lc/e/b/d;->j(Lc/e/b/i;Lc/e/b/i;II)V
  :L38
    move/from16 v19, p5
    move v4, v2
    move/from16 v24, v5
    move-object v14, v8
    move/from16 v23, v20
    move-object/from16 v15, v22
    move/from16 v22, v1
    move/from16 v20, v3
    goto :L23
  :L39
    const/4 v14, 2
    if-ne v5, v14, :L43
  .line 30
    invoke-virtual/range { p10 .. p10 }, Lc/e/b/k/d;->j()Lc/e/b/k/d$b;
    move-result-object v4
    sget-object v6, Lc/e/b/k/d$b;->d:Lc/e/b/k/d$b;
    if-eq v4, v6, :L41
    invoke-virtual/range { p10 .. p10 }, Lc/e/b/k/d;->j()Lc/e/b/k/d$b;
    move-result-object v4
    sget-object v6, Lc/e/b/k/d$b;->f:Lc/e/b/k/d$b;
    if-ne v4, v6, :L40
    goto :L41
  :L40
  .line 31
    iget-object v4, v0, Lc/e/b/k/e;->R:Lc/e/b/k/e;
    sget-object v6, Lc/e/b/k/d$b;->c:Lc/e/b/k/d$b;
    invoke-virtual { v4, v6 }, Lc/e/b/k/e;->m(Lc/e/b/k/d$b;)Lc/e/b/k/d;
    move-result-object v4
    invoke-virtual { v10, v4 }, Lc/e/b/d;->q(Ljava/lang/Object;)Lc/e/b/i;
    move-result-object v4
  .line 32
    iget-object v6, v0, Lc/e/b/k/e;->R:Lc/e/b/k/e;
    sget-object v14, Lc/e/b/k/d$b;->e:Lc/e/b/k/d$b;
    invoke-virtual { v6, v14 }, Lc/e/b/k/e;->m(Lc/e/b/k/d$b;)Lc/e/b/k/d;
    move-result-object v6
    invoke-virtual { v10, v6 }, Lc/e/b/d;->q(Ljava/lang/Object;)Lc/e/b/i;
    move-result-object v6
    goto :L42
  :L41
  .line 33
    iget-object v4, v0, Lc/e/b/k/e;->R:Lc/e/b/k/e;
    sget-object v6, Lc/e/b/k/d$b;->d:Lc/e/b/k/d$b;
    invoke-virtual { v4, v6 }, Lc/e/b/k/e;->m(Lc/e/b/k/d$b;)Lc/e/b/k/d;
    move-result-object v4
    invoke-virtual { v10, v4 }, Lc/e/b/d;->q(Ljava/lang/Object;)Lc/e/b/i;
    move-result-object v4
  .line 34
    iget-object v6, v0, Lc/e/b/k/e;->R:Lc/e/b/k/e;
    sget-object v14, Lc/e/b/k/d$b;->f:Lc/e/b/k/d$b;
    invoke-virtual { v6, v14 }, Lc/e/b/k/e;->m(Lc/e/b/k/d$b;)Lc/e/b/k/d;
    move-result-object v6
    invoke-virtual { v10, v6 }, Lc/e/b/d;->q(Ljava/lang/Object;)Lc/e/b/i;
    move-result-object v6
  :L42
    move-object v14, v4
  .line 35
    invoke-virtual/range { p1 .. p1 }, Lc/e/b/d;->r()Lc/e/b/b;
    move-result-object v4
    move/from16 v19, v3
    move-object v3, v4
    move/from16 p9, v2
    move-object v2, v4
    move-object v4, v8
    move/from16 v24, v5
    const/4 v15, 0
    move-object v5, v9
    move-object/from16 v15, v22
    move/from16 v22, v1
    move-object v1, v7
    move-object v7, v14
    move-object v14, v8
    move/from16 v8, p26
    invoke-virtual/range { v3 .. v8 }, Lc/e/b/b;->k(Lc/e/b/i;Lc/e/b/i;Lc/e/b/i;Lc/e/b/i;F)Lc/e/b/b;
    invoke-virtual { v10, v2 }, Lc/e/b/d;->d(Lc/e/b/b;)V
    move/from16 v4, p9
    move/from16 v20, v19
    const/16 v23, 0
    goto/16 :L19
  :L43
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
    const/16 v19, 1
  :L44
    if-eqz p27, :L127
    if-eqz p19, :L45
    move-object/from16 v2, p6
    move-object/from16 v3, p7
    move-object v6, v9
    move/from16 v5, v22
    const/4 v1, 2
    const/4 v4, 1
    const/16 v12, 8
    goto/16 :L128
  :L45
    if-nez v11, :L46
    if-nez v12, :L46
    if-nez v16, :L46
    goto/16 :L119
  :L46
    if-eqz v11, :L47
    if-nez v12, :L47
    goto/16 :L119
  :L47
    if-nez v11, :L50
    if-eqz v12, :L50
  .line 36
    invoke-virtual/range { p11 .. p11 }, Lc/e/b/k/d;->e()I
    move-result v1
    neg-int v1, v1
    const/16 v2, 8
    invoke-virtual { v10, v14, v15, v1, v2 }, Lc/e/b/d;->e(Lc/e/b/i;Lc/e/b/i;II)Lc/e/b/b;
    if-eqz p3, :L119
  .line 37
    iget-boolean v1, v0, Lc/e/b/k/e;->h:Z
    if-eqz v1, :L49
    iget-boolean v1, v9, Lc/e/b/i;->g:Z
    if-eqz v1, :L49
    iget-object v1, v0, Lc/e/b/k/e;->R:Lc/e/b/k/e;
    if-eqz v1, :L49
  .line 38
    check-cast v1, Lc/e/b/k/f;
    if-eqz p2, :L48
  .line 39
    invoke-virtual { v1, v13 }, Lc/e/b/k/f;->i1(Lc/e/b/k/d;)V
    goto/16 :L119
  :L48
  .line 40
    invoke-virtual { v1, v13 }, Lc/e/b/k/f;->n1(Lc/e/b/k/d;)V
    goto/16 :L119
  :L49
    move-object/from16 v8, p6
    const/4 v1, 5
    const/4 v2, 0
  .line 41
    invoke-virtual { v10, v9, v8, v2, v1 }, Lc/e/b/d;->h(Lc/e/b/i;Lc/e/b/i;II)V
    goto/16 :L119
  :L50
    move-object/from16 v8, p6
    if-eqz v11, :L119
    if-eqz v12, :L119
  .line 42
    iget-object v2, v13, Lc/e/b/k/d;->f:Lc/e/b/k/d;
    iget-object v11, v2, Lc/e/b/k/d;->d:Lc/e/b/k/e;
    move-object/from16 v7, p11
    const/4 v12, 4
  .line 43
    iget-object v2, v7, Lc/e/b/k/d;->f:Lc/e/b/k/d;
    iget-object v6, v2, Lc/e/b/k/d;->d:Lc/e/b/k/e;
  .line 44
    invoke-virtual/range { p0 .. p0 }, Lc/e/b/k/e;->I()Lc/e/b/k/e;
    move-result-object v5
    const/16 v16, 6
    if-eqz v23, :L75
    move/from16 v3, v24
    if-nez v3, :L56
    if-nez v4, :L52
    if-nez v20, :L52
  .line 45
    iget-boolean v2, v1, Lc/e/b/i;->g:Z
    if-eqz v2, :L51
    iget-boolean v2, v15, Lc/e/b/i;->g:Z
    if-eqz v2, :L51
  .line 46
    invoke-virtual/range { p10 .. p10 }, Lc/e/b/k/d;->e()I
    move-result v2
    const/16 v4, 8
    invoke-virtual { v10, v9, v1, v2, v4 }, Lc/e/b/d;->e(Lc/e/b/i;Lc/e/b/i;II)Lc/e/b/b;
  .line 47
    invoke-virtual/range { p11 .. p11 }, Lc/e/b/k/d;->e()I
    move-result v1
    neg-int v1, v1
    invoke-virtual { v10, v14, v15, v1, v4 }, Lc/e/b/d;->e(Lc/e/b/i;Lc/e/b/i;II)Lc/e/b/b;
    return-void
  :L51
    const/16 v4, 8
    const/4 v2, 0
    const/16 v21, 1
    const/16 v22, 0
    const/16 v24, 8
    const/16 v25, 8
    goto :L53
  :L52
    const/16 v4, 8
    const/4 v2, 1
    const/16 v21, 0
    const/16 v22, 1
    const/16 v24, 5
    const/16 v25, 5
  :L53
  .line 48
    instance-of v4, v11, Lc/e/b/k/a;
    if-nez v4, :L55
    instance-of v4, v6, Lc/e/b/k/a;
    if-eqz v4, :L54
    goto :L55
  :L54
    move-object/from16 v4, p7
    move/from16 v17, v22
    move/from16 v27, v25
    const/4 v12, 1
    const/16 v26, 6
    move/from16 v22, v2
    move/from16 v25, v24
    const/4 v2, 5
    move/from16 v24, v21
    goto/16 :L83
  :L55
    move-object/from16 v4, p7
    move/from16 v17, v22
    move/from16 v25, v24
    const/4 v12, 1
    const/16 v26, 6
    const/16 v27, 4
    move/from16 v22, v2
    move/from16 v24, v21
    const/4 v2, 5
    goto/16 :L83
  :L56
    const/4 v2, 1
    if-ne v3, v2, :L57
    move-object/from16 v4, p7
    const/4 v2, 5
    const/4 v12, 1
    const/16 v17, 1
    const/16 v22, 1
    const/16 v24, 0
    const/16 v25, 8
    goto/16 :L82
  :L57
    const/4 v2, 3
    if-ne v3, v2, :L74
  .line 49
    iget v2, v0, Lc/e/b/k/e;->w:I
    const/4 v12, -1
    if-ne v2, v12, :L61
    if-eqz p20, :L59
    move-object/from16 v4, p7
    const/4 v2, 5
    const/4 v12, 1
    const/16 v17, 1
    const/16 v22, 1
    const/16 v24, 1
    const/16 v25, 8
    if-eqz p3, :L58
    const/16 v26, 5
    goto :L60
  :L58
    const/16 v26, 4
    goto :L60
  :L59
    move-object/from16 v4, p7
    const/4 v2, 5
    const/4 v12, 1
    const/16 v17, 1
    const/16 v22, 1
    const/16 v24, 1
    const/16 v25, 8
    const/16 v26, 8
  :L60
    const/16 v27, 5
    goto/16 :L83
  :L61
    if-eqz p17, :L68
    move/from16 v2, p23
    const/4 v12, 2
    if-eq v2, v12, :L63
    const/4 v12, 1
    if-ne v2, v12, :L62
    goto :L64
  :L62
    const/4 v2, 0
    goto :L65
  :L63
    const/4 v12, 1
  :L64
    const/4 v2, 1
  :L65
    if-nez v2, :L66
    const/16 v2, 8
    const/4 v4, 5
    goto :L67
  :L66
    const/4 v2, 5
    const/4 v4, 4
  :L67
    move/from16 v25, v2
    move/from16 v27, v4
    const/4 v2, 5
    const/16 v17, 1
    const/16 v22, 1
    const/16 v24, 1
    const/16 v26, 6
    move-object/from16 v4, p7
    goto/16 :L83
  :L68
    const/4 v12, 1
    if-lez v4, :L69
    move-object/from16 v4, p7
    const/4 v2, 5
    const/16 v17, 1
    const/16 v22, 1
    const/16 v24, 1
    const/16 v25, 5
    const/16 v26, 6
    goto :L60
  :L69
    if-nez v4, :L73
    if-nez v20, :L73
    if-nez p20, :L70
    move-object/from16 v4, p7
    const/4 v2, 5
    const/16 v17, 1
    const/16 v22, 1
    const/16 v24, 1
    const/16 v25, 5
    const/16 v26, 6
    const/16 v27, 8
    goto/16 :L83
  :L70
    if-eq v11, v5, :L71
    if-eq v6, v5, :L71
    const/4 v2, 4
    goto :L72
  :L71
    const/4 v2, 5
  :L72
    move-object/from16 v4, p7
    move/from16 v25, v2
    const/4 v2, 5
    const/16 v17, 1
    const/16 v22, 1
    const/16 v24, 1
    goto :L82
  :L73
    move-object/from16 v4, p7
    const/4 v2, 5
    const/16 v17, 1
    const/16 v22, 1
    const/16 v24, 1
    goto :L81
  :L74
    const/4 v12, 1
    move-object/from16 v4, p7
    const/4 v2, 5
    const/16 v17, 0
    const/16 v22, 0
    goto :L80
  :L75
    move/from16 v3, v24
    const/4 v12, 1
  .line 50
    iget-boolean v2, v1, Lc/e/b/i;->g:Z
    if-eqz v2, :L79
    iget-boolean v2, v15, Lc/e/b/i;->g:Z
    if-eqz v2, :L79
  .line 51
    invoke-virtual/range { p10 .. p10 }, Lc/e/b/k/d;->e()I
    move-result v2
  .line 52
    invoke-virtual/range { p11 .. p11 }, Lc/e/b/k/d;->e()I
    move-result v3
    const/16 v4, 8
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
    invoke-virtual/range { p17 .. p25 }, Lc/e/b/d;->c(Lc/e/b/i;Lc/e/b/i;IFLc/e/b/i;Lc/e/b/i;II)V
    if-eqz p3, :L78
    if-eqz v19, :L78
  .line 54
    iget-object v1, v7, Lc/e/b/k/d;->f:Lc/e/b/k/d;
    if-eqz v1, :L76
  .line 55
    invoke-virtual/range { p11 .. p11 }, Lc/e/b/k/d;->e()I
    move-result v5
    move-object/from16 v4, p7
    goto :L77
  :L76
    move-object/from16 v4, p7
    const/4 v5, 0
  :L77
    if-eq v15, v4, :L78
    const/4 v2, 5
  .line 56
    invoke-virtual { v10, v4, v14, v5, v2 }, Lc/e/b/d;->h(Lc/e/b/i;Lc/e/b/i;II)V
  :L78
    return-void
  :L79
    move-object/from16 v4, p7
    const/4 v2, 5
    const/16 v17, 1
    const/16 v22, 1
  :L80
    const/16 v24, 0
  :L81
    const/16 v25, 5
  :L82
    const/16 v26, 6
    const/16 v27, 4
  :L83
    if-eqz v17, :L84
    if-ne v1, v15, :L84
    if-eq v11, v5, :L84
    const/16 v17, 0
    const/16 v28, 0
    goto :L85
  :L84
    const/16 v28, 1
  :L85
    if-eqz v22, :L88
    if-nez v23, :L86
    if-nez p18, :L86
    if-nez p20, :L86
    if-ne v1, v8, :L86
    if-ne v15, v4, :L86
    const/16 v22, 0
    const/16 v25, 8
    const/16 v26, 8
    const/16 v28, 0
    goto :L87
  :L86
    move/from16 v22, p3
  :L87
  .line 57
    invoke-virtual/range { p10 .. p10 }, Lc/e/b/k/d;->e()I
    move-result v29
  .line 58
    invoke-virtual/range { p11 .. p11 }, Lc/e/b/k/d;->e()I
    move-result v30
    move-object/from16 p5, v1
    move-object/from16 v1, p1
    const/16 v12, 8
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
    invoke-virtual/range { v1 .. v9 }, Lc/e/b/d;->c(Lc/e/b/i;Lc/e/b/i;IFLc/e/b/i;Lc/e/b/i;II)V
    goto :L89
  :L88
    move-object/from16 p5, v1
    move/from16 v31, v3
    move-object/from16 v32, v5
    move-object/from16 v33, v6
    move-object/from16 v34, v9
    const/16 v12, 8
    move/from16 v22, p3
  :L89
    move/from16 v5, v28
  .line 60
    iget v1, v0, Lc/e/b/k/e;->e0:I
    if-ne v1, v12, :L90
    invoke-virtual/range { p11 .. p11 }, Lc/e/b/k/d;->l()Z
    move-result v1
    if-nez v1, :L90
    return-void
  :L90
    move-object/from16 v1, p5
    if-eqz v17, :L96
    if-eqz v22, :L93
    if-eq v1, v15, :L93
    if-nez v23, :L93
  .line 61
    instance-of v2, v11, Lc/e/b/k/a;
    if-nez v2, :L91
    move-object/from16 v2, v33
    instance-of v3, v2, Lc/e/b/k/a;
    if-eqz v3, :L94
    goto :L92
  :L91
    move-object/from16 v2, v33
  :L92
    const/4 v3, 6
    goto :L95
  :L93
    move-object/from16 v2, v33
  :L94
    move/from16 v3, v25
  :L95
  .line 62
    invoke-virtual/range { p10 .. p10 }, Lc/e/b/k/d;->e()I
    move-result v4
    move-object/from16 v6, v34
    invoke-virtual { v10, v6, v1, v4, v3 }, Lc/e/b/d;->h(Lc/e/b/i;Lc/e/b/i;II)V
  .line 63
    invoke-virtual/range { p11 .. p11 }, Lc/e/b/k/d;->e()I
    move-result v4
    neg-int v4, v4
    invoke-virtual { v10, v14, v15, v4, v3 }, Lc/e/b/d;->j(Lc/e/b/i;Lc/e/b/i;II)V
    move/from16 v25, v3
    goto :L97
  :L96
    move-object/from16 v2, v33
    move-object/from16 v6, v34
  :L97
    if-eqz v22, :L98
    if-eqz p21, :L98
  .line 64
    instance-of v3, v11, Lc/e/b/k/a;
    if-nez v3, :L98
    instance-of v3, v2, Lc/e/b/k/a;
    if-nez v3, :L98
    const/4 v3, 6
    const/4 v4, 6
    const/4 v5, 1
    goto :L99
  :L98
    move/from16 v3, v25
    move/from16 v4, v27
  :L99
    if-eqz v5, :L114
    if-eqz v24, :L109
    if-eqz p20, :L100
    if-eqz p4, :L109
  :L100
    move-object/from16 v5, v32
    if-eq v11, v5, :L102
    if-ne v2, v5, :L101
    goto :L102
  :L101
    move/from16 v16, v4
  :L102
  .line 65
    instance-of v7, v11, Lc/e/b/k/g;
    if-nez v7, :L103
    instance-of v7, v2, Lc/e/b/k/g;
    if-eqz v7, :L104
  :L103
    const/16 v16, 5
  :L104
  .line 66
    instance-of v7, v11, Lc/e/b/k/a;
    if-nez v7, :L105
    instance-of v7, v2, Lc/e/b/k/a;
    if-eqz v7, :L106
  :L105
    const/16 v16, 5
  :L106
    if-eqz p20, :L107
    const/4 v7, 5
    goto :L108
  :L107
    move/from16 v7, v16
  :L108
  .line 67
    invoke-static { v7, v4 }, Ljava/lang/Math;->max(II)I
    move-result v4
    goto :L110
  :L109
    move-object/from16 v5, v32
  :L110
    if-eqz v22, :L113
  .line 68
    invoke-static { v3, v4 }, Ljava/lang/Math;->min(II)I
    move-result v3
    if-eqz p17, :L112
    if-nez p20, :L112
    if-eq v11, v5, :L111
    if-ne v2, v5, :L112
  :L111
    const/4 v4, 4
    goto :L113
  :L112
    move v4, v3
  :L113
  .line 69
    invoke-virtual/range { p10 .. p10 }, Lc/e/b/k/d;->e()I
    move-result v2
    invoke-virtual { v10, v6, v1, v2, v4 }, Lc/e/b/d;->e(Lc/e/b/i;Lc/e/b/i;II)Lc/e/b/b;
  .line 70
    invoke-virtual/range { p11 .. p11 }, Lc/e/b/k/d;->e()I
    move-result v2
    neg-int v2, v2
    invoke-virtual { v10, v14, v15, v2, v4 }, Lc/e/b/d;->e(Lc/e/b/i;Lc/e/b/i;II)Lc/e/b/b;
  :L114
    if-eqz v22, :L117
    move-object/from16 v2, p6
    if-ne v2, v1, :L115
  .line 71
    invoke-virtual/range { p10 .. p10 }, Lc/e/b/k/d;->e()I
    move-result v5
    goto :L116
  :L115
    const/4 v5, 0
  :L116
    if-eq v1, v2, :L117
    const/4 v1, 5
  .line 72
    invoke-virtual { v10, v6, v2, v5, v1 }, Lc/e/b/d;->h(Lc/e/b/i;Lc/e/b/i;II)V
  :L117
    if-eqz v22, :L120
    if-eqz v23, :L120
    if-nez p14, :L120
    if-nez v20, :L120
    if-eqz v23, :L118
    move/from16 v5, v31
    const/4 v1, 3
    if-ne v5, v1, :L118
    const/4 v1, 0
  .line 73
    invoke-virtual { v10, v14, v6, v1, v12 }, Lc/e/b/d;->h(Lc/e/b/i;Lc/e/b/i;II)V
    goto :L120
  :L118
    const/4 v1, 0
    const/4 v2, 5
  .line 74
    invoke-virtual { v10, v14, v6, v1, v2 }, Lc/e/b/d;->h(Lc/e/b/i;Lc/e/b/i;II)V
    goto :L120
  :L119
    move/from16 v22, p3
  :L120
    if-eqz v22, :L126
    if-eqz v19, :L126
    move-object/from16 v1, p11
  .line 75
    iget-object v2, v1, Lc/e/b/k/d;->f:Lc/e/b/k/d;
    if-eqz v2, :L121
  .line 76
    invoke-virtual/range { p11 .. p11 }, Lc/e/b/k/d;->e()I
    move-result v5
    move-object/from16 v3, p7
    goto :L122
  :L121
    move-object/from16 v3, p7
    const/4 v5, 0
  :L122
    if-eq v15, v3, :L126
  .line 77
    iget-boolean v2, v0, Lc/e/b/k/e;->h:Z
    if-eqz v2, :L125
    iget-boolean v2, v14, Lc/e/b/i;->g:Z
    if-eqz v2, :L125
    iget-object v2, v0, Lc/e/b/k/e;->R:Lc/e/b/k/e;
    if-eqz v2, :L125
  .line 78
    check-cast v2, Lc/e/b/k/f;
    if-eqz p2, :L123
  .line 79
    invoke-virtual { v2, v1 }, Lc/e/b/k/f;->h1(Lc/e/b/k/d;)V
    goto :L124
  :L123
  .line 80
    invoke-virtual { v2, v1 }, Lc/e/b/k/f;->m1(Lc/e/b/k/d;)V
  :L124
    return-void
  :L125
    const/4 v1, 5
  .line 81
    invoke-virtual { v10, v3, v14, v5, v1 }, Lc/e/b/d;->h(Lc/e/b/i;Lc/e/b/i;II)V
  :L126
    return-void
  :L127
    move-object/from16 v2, p6
    move-object/from16 v3, p7
    move-object v6, v9
    const/4 v1, 2
    const/4 v4, 1
    const/16 v12, 8
    move/from16 v5, v22
  :L128
    if-ge v5, v1, :L134
    if-eqz p3, :L134
    if-eqz v19, :L134
    const/4 v1, 0
  .line 82
    invoke-virtual { v10, v6, v2, v1, v12 }, Lc/e/b/d;->h(Lc/e/b/i;Lc/e/b/i;II)V
    if-nez p2, :L130
  .line 83
    iget-object v1, v0, Lc/e/b/k/e;->J:Lc/e/b/k/d;
    iget-object v1, v1, Lc/e/b/k/d;->f:Lc/e/b/k/d;
    if-nez v1, :L129
    goto :L130
  :L129
    const/4 v5, 0
    goto :L131
  :L130
    const/4 v5, 1
  :L131
    if-nez p2, :L133
  .line 84
    iget-object v1, v0, Lc/e/b/k/e;->J:Lc/e/b/k/d;
    iget-object v1, v1, Lc/e/b/k/d;->f:Lc/e/b/k/d;
    if-eqz v1, :L133
  .line 85
    iget-object v1, v1, Lc/e/b/k/d;->d:Lc/e/b/k/e;
  .line 86
    iget v2, v1, Lc/e/b/k/e;->U:F
    const/4 v5, 0
    cmpl-float v2, v2, v5
    if-eqz v2, :L132
    iget-object v1, v1, Lc/e/b/k/e;->Q:[Lc/e/b/k/e$b;
    const/4 v2, 0
    aget-object v5, v1, v2
    sget-object v2, Lc/e/b/k/e$b;->d:Lc/e/b/k/e$b;
    if-ne v5, v2, :L132
    aget-object v1, v1, v4
    if-ne v1, v2, :L132
    const/4 v5, 1
    goto :L133
  :L132
    const/4 v5, 0
  :L133
    if-eqz v5, :L134
    const/4 v1, 0
  .line 87
    invoke-virtual { v10, v3, v14, v1, v12 }, Lc/e/b/d;->h(Lc/e/b/i;Lc/e/b/i;II)V
  :L134
    return-void
.end method

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
    const p1, 2147483647
    if-ne p3, p1, :L0
    const/4 p3, 0
  :L0
  .line 3
    iput p3, p0, Lc/e/b/k/e;->r:I
  .line 4
    iput p4, p0, Lc/e/b/k/e;->s:F
    const/4 p1, 0
    cmpl-float p1, p4, p1
    if-lez p1, :L1
    const/high16 p1, 16256
    cmpg-float p1, p4, p1
    if-gez p1, :L1
  .line 5
    iget p1, p0, Lc/e/b/k/e;->n:I
    if-nez p1, :L1
    const/4 p1, 2
  .line 6
    iput p1, p0, Lc/e/b/k/e;->n:I
  :L1
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
    const/4 v1, 0
    aput p1, v0, v1
    return-void
.end method

.method public C(I)I
  .registers 3
    if-nez p1, :L0
  .line 1
    invoke-virtual { p0 }, Lc/e/b/k/e;->R()I
    move-result p1
    return p1
  :L0
    const/4 v0, 1
    if-ne p1, v0, :L1
  .line 2
    invoke-virtual { p0 }, Lc/e/b/k/e;->v()I
    move-result p1
    return p1
  :L1
    const/4 p1, 0
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
    const/4 v1, 1
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
    const/4 v1, 0
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
    const/4 p1, 0
  .line 3
    invoke-virtual { p0, p1 }, Lc/e/b/k/e;->I0(Z)V
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
    const/4 v1, 1
    aput p1, v0, v1
    return-void
.end method

.method public H(I)Lc/e/b/k/e;
  .registers 4
    if-nez p1, :L0
  .line 1
    iget-object p1, p0, Lc/e/b/k/e;->H:Lc/e/b/k/d;
    iget-object v0, p1, Lc/e/b/k/d;->f:Lc/e/b/k/d;
    if-eqz v0, :L1
    iget-object v1, v0, Lc/e/b/k/d;->f:Lc/e/b/k/d;
    if-ne v1, p1, :L1
  .line 2
    iget-object p1, v0, Lc/e/b/k/d;->d:Lc/e/b/k/e;
    return-object p1
  :L0
    const/4 v0, 1
    if-ne p1, v0, :L1
  .line 3
    iget-object p1, p0, Lc/e/b/k/e;->I:Lc/e/b/k/d;
    iget-object v0, p1, Lc/e/b/k/d;->f:Lc/e/b/k/d;
    if-eqz v0, :L1
    iget-object v1, v0, Lc/e/b/k/d;->f:Lc/e/b/k/d;
    if-ne v1, p1, :L1
  .line 4
    iget-object p1, v0, Lc/e/b/k/d;->d:Lc/e/b/k/e;
    return-object p1
  :L1
    const/4 p1, 0
    return-object p1
.end method

.method public H0(I)V
  .registers 4
  .line 1
    iget-object v0, p0, Lc/e/b/k/e;->y:[I
    const/4 v1, 0
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
    if-nez p1, :L0
  .line 1
    iget-object p1, p0, Lc/e/b/k/e;->F:Lc/e/b/k/d;
    iget-object v0, p1, Lc/e/b/k/d;->f:Lc/e/b/k/d;
    if-eqz v0, :L1
    iget-object v1, v0, Lc/e/b/k/d;->f:Lc/e/b/k/d;
    if-ne v1, p1, :L1
  .line 2
    iget-object p1, v0, Lc/e/b/k/d;->d:Lc/e/b/k/e;
    return-object p1
  :L0
    const/4 v0, 1
    if-ne p1, v0, :L1
  .line 3
    iget-object p1, p0, Lc/e/b/k/e;->G:Lc/e/b/k/d;
    iget-object v0, p1, Lc/e/b/k/d;->f:Lc/e/b/k/d;
    if-eqz v0, :L1
    iget-object v1, v0, Lc/e/b/k/d;->f:Lc/e/b/k/d;
    if-ne v1, p1, :L1
  .line 4
    iget-object p1, v0, Lc/e/b/k/d;->d:Lc/e/b/k/e;
    return-object p1
  :L1
    const/4 p1, 0
    return-object p1
.end method

.method public J0(I)V
  .registers 2
    if-gez p1, :L0
    const/4 p1, 0
  .line 1
    iput p1, p0, Lc/e/b/k/e;->a0:I
    goto :L1
  :L0
  .line 2
    iput p1, p0, Lc/e/b/k/e;->a0:I
  :L1
    return-void
.end method

.method public K()I
  .registers 3
  .line 1
    invoke-virtual { p0 }, Lc/e/b/k/e;->S()I
    move-result v0
    iget v1, p0, Lc/e/b/k/e;->S:I
    add-int/2addr v0, v1
    return v0
.end method

.method public K0(I)V
  .registers 2
    if-gez p1, :L0
    const/4 p1, 0
  .line 1
    iput p1, p0, Lc/e/b/k/e;->Z:I
    goto :L1
  :L0
  .line 2
    iput p1, p0, Lc/e/b/k/e;->Z:I
  :L1
    return-void
.end method

.method public L(I)Lc/e/b/k/m/p;
  .registers 3
    if-nez p1, :L0
  .line 1
    iget-object p1, p0, Lc/e/b/k/e;->d:Lc/e/b/k/m/l;
    return-object p1
  :L0
    const/4 v0, 1
    if-ne p1, v0, :L1
  .line 2
    iget-object p1, p0, Lc/e/b/k/e;->e:Lc/e/b/k/m/n;
    return-object p1
  :L1
    const/4 p1, 0
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
    const/4 v1, 1
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
    const/4 v1, 0
    if-eqz v0, :L0
  .line 2
    iget-object v0, p0, Lc/e/b/k/e;->G:Lc/e/b/k/d;
    iget v0, v0, Lc/e/b/k/d;->g:I
    add-int/2addr v1, v0
  :L0
  .line 3
    iget-object v0, p0, Lc/e/b/k/e;->H:Lc/e/b/k/d;
    if-eqz v0, :L1
  .line 4
    iget-object v0, p0, Lc/e/b/k/e;->I:Lc/e/b/k/d;
    iget v0, v0, Lc/e/b/k/d;->g:I
    add-int/2addr v1, v0
  :L1
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
    if-ge p2, p1, :L0
  .line 4
    iput p1, p0, Lc/e/b/k/e;->T:I
  :L0
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
    const/4 v1, 1
    aput-object p1, v0, v1
    return-void
.end method

.method public R()I
  .registers 3
  .line 1
    iget v0, p0, Lc/e/b/k/e;->e0:I
    const/16 v1, 8
    if-ne v0, v1, :L0
    const/4 v0, 0
    return v0
  :L0
  .line 2
    iget v0, p0, Lc/e/b/k/e;->S:I
    return v0
.end method

.method public R0(IIIF)V
  .registers 5
  .line 1
    iput p1, p0, Lc/e/b/k/e;->o:I
  .line 2
    iput p2, p0, Lc/e/b/k/e;->t:I
    const p1, 2147483647
    if-ne p3, p1, :L0
    const/4 p3, 0
  :L0
  .line 3
    iput p3, p0, Lc/e/b/k/e;->u:I
  .line 4
    iput p4, p0, Lc/e/b/k/e;->v:F
    const/4 p1, 0
    cmpl-float p1, p4, p1
    if-lez p1, :L1
    const/high16 p1, 16256
    cmpg-float p1, p4, p1
    if-gez p1, :L1
  .line 5
    iget p1, p0, Lc/e/b/k/e;->o:I
    if-nez p1, :L1
    const/4 p1, 2
  .line 6
    iput p1, p0, Lc/e/b/k/e;->o:I
  :L1
    return-void
.end method

.method public S()I
  .registers 3
  .line 1
    iget-object v0, p0, Lc/e/b/k/e;->R:Lc/e/b/k/e;
    if-eqz v0, :L0
    instance-of v1, v0, Lc/e/b/k/f;
    if-eqz v1, :L0
  .line 2
    check-cast v0, Lc/e/b/k/f;
    iget v0, v0, Lc/e/b/k/f;->w0:I
    iget v1, p0, Lc/e/b/k/e;->W:I
    add-int/2addr v0, v1
    return v0
  :L0
  .line 3
    iget v0, p0, Lc/e/b/k/e;->W:I
    return v0
.end method

.method public S0(F)V
  .registers 4
  .line 1
    iget-object v0, p0, Lc/e/b/k/e;->j0:[F
    const/4 v1, 1
    aput p1, v0, v1
    return-void
.end method

.method public T()I
  .registers 3
  .line 1
    iget-object v0, p0, Lc/e/b/k/e;->R:Lc/e/b/k/e;
    if-eqz v0, :L0
    instance-of v1, v0, Lc/e/b/k/f;
    if-eqz v1, :L0
  .line 2
    check-cast v0, Lc/e/b/k/f;
    iget v0, v0, Lc/e/b/k/f;->x0:I
    iget v1, p0, Lc/e/b/k/e;->X:I
    add-int/2addr v0, v1
    return v0
  :L0
  .line 3
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
    if-ge p1, v0, :L0
  .line 3
    iput v0, p0, Lc/e/b/k/e;->S:I
  :L0
    return-void
.end method

.method public V(I)Z
  .registers 6
    const/4 v0, 2
    const/4 v1, 1
    const/4 v2, 0
    if-nez p1, :L6
  .line 1
    iget-object p1, p0, Lc/e/b/k/e;->F:Lc/e/b/k/d;
    iget-object p1, p1, Lc/e/b/k/d;->f:Lc/e/b/k/d;
    if-eqz p1, :L0
    const/4 p1, 1
    goto :L1
  :L0
    const/4 p1, 0
  :L1
    iget-object v3, p0, Lc/e/b/k/e;->H:Lc/e/b/k/d;
    iget-object v3, v3, Lc/e/b/k/d;->f:Lc/e/b/k/d;
    if-eqz v3, :L2
    const/4 v3, 1
    goto :L3
  :L2
    const/4 v3, 0
  :L3
    add-int/2addr p1, v3
    if-ge p1, v0, :L4
    goto :L5
  :L4
    const/4 v1, 0
  :L5
    return v1
  :L6
  .line 2
    iget-object p1, p0, Lc/e/b/k/e;->G:Lc/e/b/k/d;
    iget-object p1, p1, Lc/e/b/k/d;->f:Lc/e/b/k/d;
    if-eqz p1, :L7
    const/4 p1, 1
    goto :L8
  :L7
    const/4 p1, 0
  :L8
    iget-object v3, p0, Lc/e/b/k/e;->I:Lc/e/b/k/d;
    iget-object v3, v3, Lc/e/b/k/d;->f:Lc/e/b/k/d;
    if-eqz v3, :L9
    const/4 v3, 1
    goto :L10
  :L9
    const/4 v3, 0
  :L10
    add-int/2addr p1, v3
    iget-object v3, p0, Lc/e/b/k/e;->J:Lc/e/b/k/d;
    iget-object v3, v3, Lc/e/b/k/d;->f:Lc/e/b/k/d;
    if-eqz v3, :L11
    const/4 v3, 1
    goto :L12
  :L11
    const/4 v3, 0
  :L12
    add-int/2addr p1, v3
    if-ge p1, v0, :L13
    goto :L14
  :L13
    const/4 v1, 0
  :L14
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
    invoke-virtual { v0 }, Ljava/util/ArrayList;->size()I
    move-result v0
    const/4 v1, 0
    const/4 v2, 0
  :L0
    if-ge v2, v0, :L2
  .line 2
    iget-object v3, p0, Lc/e/b/k/e;->O:Ljava/util/ArrayList;
    invoke-virtual { v3, v2 }, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
    move-result-object v3
    check-cast v3, Lc/e/b/k/d;
  .line 3
    invoke-virtual { v3 }, Lc/e/b/k/d;->l()Z
    move-result v3
    if-eqz v3, :L1
    const/4 v0, 1
    return v0
  :L1
    add-int/lit8 v2, v2, 1
    goto :L0
  :L2
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
    invoke-virtual { p0, p1 }, Lc/e/b/k/e;->m(Lc/e/b/k/d$b;)Lc/e/b/k/d;
    move-result-object p1
  .line 2
    invoke-virtual { p2, p3 }, Lc/e/b/k/e;->m(Lc/e/b/k/d$b;)Lc/e/b/k/d;
    move-result-object p2
    const/4 p3, 1
  .line 3
    invoke-virtual { p1, p2, p4, p5, p3 }, Lc/e/b/k/d;->a(Lc/e/b/k/d;IIZ)Z
    return-void
.end method

.method public X0(ZZZZ)V
  .registers 8
  .line 1
    iget p1, p0, Lc/e/b/k/e;->w:I
    const/high16 p2, 16256
    const/4 v0, 0
    const/4 v1, -1
    const/4 v2, 1
    if-ne p1, v1, :L1
    if-eqz p3, :L0
    if-nez p4, :L0
  .line 2
    iput v0, p0, Lc/e/b/k/e;->w:I
    goto :L1
  :L0
    if-nez p3, :L1
    if-eqz p4, :L1
  .line 3
    iput v2, p0, Lc/e/b/k/e;->w:I
  .line 4
    iget p1, p0, Lc/e/b/k/e;->V:I
    if-ne p1, v1, :L1
  .line 5
    iget p1, p0, Lc/e/b/k/e;->x:F
    div-float p1, p2, p1
    iput p1, p0, Lc/e/b/k/e;->x:F
  :L1
  .line 6
    iget p1, p0, Lc/e/b/k/e;->w:I
    if-nez p1, :L3
    iget-object p1, p0, Lc/e/b/k/e;->G:Lc/e/b/k/d;
    invoke-virtual { p1 }, Lc/e/b/k/d;->n()Z
    move-result p1
    if-eqz p1, :L2
    iget-object p1, p0, Lc/e/b/k/e;->I:Lc/e/b/k/d;
    invoke-virtual { p1 }, Lc/e/b/k/d;->n()Z
    move-result p1
    if-nez p1, :L3
  :L2
  .line 7
    iput v2, p0, Lc/e/b/k/e;->w:I
    goto :L5
  :L3
  .line 8
    iget p1, p0, Lc/e/b/k/e;->w:I
    if-ne p1, v2, :L5
    iget-object p1, p0, Lc/e/b/k/e;->F:Lc/e/b/k/d;
    invoke-virtual { p1 }, Lc/e/b/k/d;->n()Z
    move-result p1
    if-eqz p1, :L4
    iget-object p1, p0, Lc/e/b/k/e;->H:Lc/e/b/k/d;
    invoke-virtual { p1 }, Lc/e/b/k/d;->n()Z
    move-result p1
    if-nez p1, :L5
  :L4
  .line 9
    iput v0, p0, Lc/e/b/k/e;->w:I
  :L5
  .line 10
    iget p1, p0, Lc/e/b/k/e;->w:I
    if-ne p1, v1, :L8
  .line 11
    iget-object p1, p0, Lc/e/b/k/e;->G:Lc/e/b/k/d;
    invoke-virtual { p1 }, Lc/e/b/k/d;->n()Z
    move-result p1
    if-eqz p1, :L6
    iget-object p1, p0, Lc/e/b/k/e;->I:Lc/e/b/k/d;
    invoke-virtual { p1 }, Lc/e/b/k/d;->n()Z
    move-result p1
    if-eqz p1, :L6
    iget-object p1, p0, Lc/e/b/k/e;->F:Lc/e/b/k/d;
  .line 12
    invoke-virtual { p1 }, Lc/e/b/k/d;->n()Z
    move-result p1
    if-eqz p1, :L6
    iget-object p1, p0, Lc/e/b/k/e;->H:Lc/e/b/k/d;
    invoke-virtual { p1 }, Lc/e/b/k/d;->n()Z
    move-result p1
    if-nez p1, :L8
  :L6
  .line 13
    iget-object p1, p0, Lc/e/b/k/e;->G:Lc/e/b/k/d;
    invoke-virtual { p1 }, Lc/e/b/k/d;->n()Z
    move-result p1
    if-eqz p1, :L7
    iget-object p1, p0, Lc/e/b/k/e;->I:Lc/e/b/k/d;
    invoke-virtual { p1 }, Lc/e/b/k/d;->n()Z
    move-result p1
    if-eqz p1, :L7
  .line 14
    iput v0, p0, Lc/e/b/k/e;->w:I
    goto :L8
  :L7
  .line 15
    iget-object p1, p0, Lc/e/b/k/e;->F:Lc/e/b/k/d;
    invoke-virtual { p1 }, Lc/e/b/k/d;->n()Z
    move-result p1
    if-eqz p1, :L8
    iget-object p1, p0, Lc/e/b/k/e;->H:Lc/e/b/k/d;
    invoke-virtual { p1 }, Lc/e/b/k/d;->n()Z
    move-result p1
    if-eqz p1, :L8
  .line 16
    iget p1, p0, Lc/e/b/k/e;->x:F
    div-float p1, p2, p1
    iput p1, p0, Lc/e/b/k/e;->x:F
  .line 17
    iput v2, p0, Lc/e/b/k/e;->w:I
  :L8
  .line 18
    iget p1, p0, Lc/e/b/k/e;->w:I
    if-ne p1, v1, :L10
  .line 19
    iget p1, p0, Lc/e/b/k/e;->q:I
    if-lez p1, :L9
    iget p1, p0, Lc/e/b/k/e;->t:I
    if-nez p1, :L9
  .line 20
    iput v0, p0, Lc/e/b/k/e;->w:I
    goto :L10
  :L9
  .line 21
    iget p1, p0, Lc/e/b/k/e;->q:I
    if-nez p1, :L10
    iget p1, p0, Lc/e/b/k/e;->t:I
    if-lez p1, :L10
  .line 22
    iget p1, p0, Lc/e/b/k/e;->x:F
    div-float/2addr p2, p1
    iput p2, p0, Lc/e/b/k/e;->x:F
  .line 23
    iput v2, p0, Lc/e/b/k/e;->w:I
  :L10
    return-void
.end method

.method public Y0(ZZ)V
  .registers 10
  .line 1
    iget-object v0, p0, Lc/e/b/k/e;->d:Lc/e/b/k/m/l;
    invoke-virtual { v0 }, Lc/e/b/k/m/p;->k()Z
    move-result v0
    and-int/2addr p1, v0
  .line 2
    iget-object v0, p0, Lc/e/b/k/e;->e:Lc/e/b/k/m/n;
    invoke-virtual { v0 }, Lc/e/b/k/m/p;->k()Z
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
    const/4 v6, 0
    if-ltz v4, :L0
    if-ltz v5, :L0
    const/high16 v4, -32768
    if-eq v1, v4, :L0
    const v5, 2147483647
    if-eq v1, v5, :L0
    if-eq v3, v4, :L0
    if-eq v3, v5, :L0
    if-eq v0, v4, :L0
    if-eq v0, v5, :L0
    if-eq v2, v4, :L0
    if-ne v2, v5, :L1
  :L0
    const/4 v0, 0
    const/4 v1, 0
    const/4 v2, 0
    const/4 v3, 0
  :L1
    sub-int/2addr v0, v1
    sub-int/2addr v2, v3
    if-eqz p1, :L2
  .line 7
    iput v1, p0, Lc/e/b/k/e;->W:I
  :L2
    if-eqz p2, :L3
  .line 8
    iput v3, p0, Lc/e/b/k/e;->X:I
  :L3
  .line 9
    iget v1, p0, Lc/e/b/k/e;->e0:I
    const/16 v3, 8
    if-ne v1, v3, :L4
  .line 10
    iput v6, p0, Lc/e/b/k/e;->S:I
  .line 11
    iput v6, p0, Lc/e/b/k/e;->T:I
    return-void
  :L4
    if-eqz p1, :L6
  .line 12
    iget-object p1, p0, Lc/e/b/k/e;->Q:[Lc/e/b/k/e$b;
    aget-object p1, p1, v6
    sget-object v1, Lc/e/b/k/e$b;->b:Lc/e/b/k/e$b;
    if-ne p1, v1, :L5
    iget p1, p0, Lc/e/b/k/e;->S:I
    if-ge v0, p1, :L5
    move v0, p1
  :L5
  .line 13
    iput v0, p0, Lc/e/b/k/e;->S:I
  .line 14
    iget p1, p0, Lc/e/b/k/e;->Z:I
    if-ge v0, p1, :L6
  .line 15
    iput p1, p0, Lc/e/b/k/e;->S:I
  :L6
    if-eqz p2, :L8
  .line 16
    iget-object p1, p0, Lc/e/b/k/e;->Q:[Lc/e/b/k/e$b;
    const/4 p2, 1
    aget-object p1, p1, p2
    sget-object p2, Lc/e/b/k/e$b;->b:Lc/e/b/k/e$b;
    if-ne p1, p2, :L7
    iget p1, p0, Lc/e/b/k/e;->T:I
    if-ge v2, p1, :L7
    move v2, p1
  :L7
  .line 17
    iput v2, p0, Lc/e/b/k/e;->T:I
  .line 18
    iget p1, p0, Lc/e/b/k/e;->a0:I
    if-ge v2, p1, :L8
  .line 19
    iput p1, p0, Lc/e/b/k/e;->T:I
  :L8
    return-void
.end method

.method public Z()Z
  .registers 3
  .line 1
    iget-object v0, p0, Lc/e/b/k/e;->F:Lc/e/b/k/d;
    iget-object v1, v0, Lc/e/b/k/d;->f:Lc/e/b/k/d;
    if-eqz v1, :L0
    iget-object v1, v1, Lc/e/b/k/d;->f:Lc/e/b/k/d;
    if-eq v1, v0, :L1
  :L0
    iget-object v0, p0, Lc/e/b/k/e;->H:Lc/e/b/k/d;
    iget-object v1, v0, Lc/e/b/k/d;->f:Lc/e/b/k/d;
    if-eqz v1, :L2
    iget-object v1, v1, Lc/e/b/k/d;->f:Lc/e/b/k/d;
    if-ne v1, v0, :L2
  :L1
    const/4 v0, 1
    return v0
  :L2
    const/4 v0, 0
    return v0
.end method

.method public Z0(Lc/e/b/d;Z)V
  .registers 9
  .line 1
    iget-object v0, p0, Lc/e/b/k/e;->F:Lc/e/b/k/d;
    invoke-virtual { p1, v0 }, Lc/e/b/d;->x(Ljava/lang/Object;)I
    move-result v0
  .line 2
    iget-object v1, p0, Lc/e/b/k/e;->G:Lc/e/b/k/d;
    invoke-virtual { p1, v1 }, Lc/e/b/d;->x(Ljava/lang/Object;)I
    move-result v1
  .line 3
    iget-object v2, p0, Lc/e/b/k/e;->H:Lc/e/b/k/d;
    invoke-virtual { p1, v2 }, Lc/e/b/d;->x(Ljava/lang/Object;)I
    move-result v2
  .line 4
    iget-object v3, p0, Lc/e/b/k/e;->I:Lc/e/b/k/d;
    invoke-virtual { p1, v3 }, Lc/e/b/d;->x(Ljava/lang/Object;)I
    move-result p1
    if-eqz p2, :L0
  .line 5
    iget-object v3, p0, Lc/e/b/k/e;->d:Lc/e/b/k/m/l;
    if-eqz v3, :L0
    iget-object v4, v3, Lc/e/b/k/m/p;->h:Lc/e/b/k/m/f;
    iget-boolean v5, v4, Lc/e/b/k/m/f;->j:Z
    if-eqz v5, :L0
    iget-object v3, v3, Lc/e/b/k/m/p;->i:Lc/e/b/k/m/f;
    iget-boolean v5, v3, Lc/e/b/k/m/f;->j:Z
    if-eqz v5, :L0
  .line 6
    iget v0, v4, Lc/e/b/k/m/f;->g:I
  .line 7
    iget v2, v3, Lc/e/b/k/m/f;->g:I
  :L0
    if-eqz p2, :L1
  .line 8
    iget-object p2, p0, Lc/e/b/k/e;->e:Lc/e/b/k/m/n;
    if-eqz p2, :L1
    iget-object v3, p2, Lc/e/b/k/m/p;->h:Lc/e/b/k/m/f;
    iget-boolean v4, v3, Lc/e/b/k/m/f;->j:Z
    if-eqz v4, :L1
    iget-object p2, p2, Lc/e/b/k/m/p;->i:Lc/e/b/k/m/f;
    iget-boolean v4, p2, Lc/e/b/k/m/f;->j:Z
    if-eqz v4, :L1
  .line 9
    iget v1, v3, Lc/e/b/k/m/f;->g:I
  .line 10
    iget p1, p2, Lc/e/b/k/m/f;->g:I
  :L1
    sub-int p2, v2, v0
    sub-int v3, p1, v1
    const/4 v4, 0
    if-ltz p2, :L2
    if-ltz v3, :L2
    const/high16 p2, -32768
    if-eq v0, p2, :L2
    const v3, 2147483647
    if-eq v0, v3, :L2
    if-eq v1, p2, :L2
    if-eq v1, v3, :L2
    if-eq v2, p2, :L2
    if-eq v2, v3, :L2
    if-eq p1, p2, :L2
    if-ne p1, v3, :L3
  :L2
    const/4 p1, 0
    const/4 v0, 0
    const/4 v1, 0
    const/4 v2, 0
  :L3
  .line 11
    invoke-virtual { p0, v0, v1, v2, p1 }, Lc/e/b/k/e;->t0(IIII)V
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
    if-eqz v1, :L0
    iget-object v1, v1, Lc/e/b/k/d;->f:Lc/e/b/k/d;
    if-eq v1, v0, :L1
  :L0
    iget-object v0, p0, Lc/e/b/k/e;->I:Lc/e/b/k/d;
    iget-object v1, v0, Lc/e/b/k/d;->f:Lc/e/b/k/d;
    if-eqz v1, :L2
    iget-object v1, v1, Lc/e/b/k/d;->f:Lc/e/b/k/d;
    if-ne v1, v0, :L2
  :L1
    const/4 v0, 1
    return v0
  :L2
    const/4 v0, 0
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
    if-eqz v0, :L0
    iget v0, p0, Lc/e/b/k/e;->e0:I
    const/16 v1, 8
    if-eq v0, v1, :L0
    const/4 v0, 1
    goto :L1
  :L0
    const/4 v0, 0
  :L1
    return v0
.end method

.method public e(Lc/e/b/k/f;Lc/e/b/d;Ljava/util/HashSet;IZ)V
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
  .catchall { :L11 .. :L12 } :L14
  .registers 13
    if-eqz p5, :L1
  .line 1
    invoke-virtual { p3, p0 }, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z
    move-result p5
    if-nez p5, :L0
    return-void
  :L0
  .line 2
    invoke-static { p1, p2, p0 }, Lc/e/b/k/j;->a(Lc/e/b/k/f;Lc/e/b/d;Lc/e/b/k/e;)V
  .line 3
    invoke-virtual { p3, p0 }, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z
    const/16 p5, 64
  .line 4
    invoke-virtual { p1, p5 }, Lc/e/b/k/f;->B1(I)Z
    move-result p5
    invoke-virtual { p0, p2, p5 }, Lc/e/b/k/e;->g(Lc/e/b/d;Z)V
  :L1
    if-nez p4, :L5
  .line 5
    iget-object p5, p0, Lc/e/b/k/e;->F:Lc/e/b/k/d;
    invoke-virtual { p5 }, Lc/e/b/k/d;->c()Ljava/util/HashSet;
    move-result-object p5
    if-eqz p5, :L3
  .line 6
    invoke-virtual { p5 }, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;
    move-result-object p5
  :L2
    invoke-interface { p5 }, Ljava/util/Iterator;->hasNext()Z
    move-result v0
    if-eqz v0, :L3
    invoke-interface { p5 }, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Lc/e/b/k/d;
  .line 7
    iget-object v1, v0, Lc/e/b/k/d;->d:Lc/e/b/k/e;
    const/4 v6, 1
    move-object v2, p1
    move-object v3, p2
    move-object v4, p3
    move v5, p4
    invoke-virtual/range { v1 .. v6 }, Lc/e/b/k/e;->e(Lc/e/b/k/f;Lc/e/b/d;Ljava/util/HashSet;IZ)V
    goto :L2
  :L3
  .line 8
    iget-object p5, p0, Lc/e/b/k/e;->H:Lc/e/b/k/d;
    invoke-virtual { p5 }, Lc/e/b/k/d;->c()Ljava/util/HashSet;
    move-result-object p5
    if-eqz p5, :L13
  .line 9
    invoke-virtual { p5 }, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;
    move-result-object p5
  :L4
    invoke-interface { p5 }, Ljava/util/Iterator;->hasNext()Z
    move-result v0
    if-eqz v0, :L13
    invoke-interface { p5 }, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Lc/e/b/k/d;
  .line 10
    iget-object v1, v0, Lc/e/b/k/d;->d:Lc/e/b/k/e;
    const/4 v6, 1
    move-object v2, p1
    move-object v3, p2
    move-object v4, p3
    move v5, p4
    invoke-virtual/range { v1 .. v6 }, Lc/e/b/k/e;->e(Lc/e/b/k/f;Lc/e/b/d;Ljava/util/HashSet;IZ)V
    goto :L4
  :L5
  .line 11
    iget-object p5, p0, Lc/e/b/k/e;->G:Lc/e/b/k/d;
    invoke-virtual { p5 }, Lc/e/b/k/d;->c()Ljava/util/HashSet;
    move-result-object p5
    if-eqz p5, :L7
  .line 12
    invoke-virtual { p5 }, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;
    move-result-object p5
  :L6
    invoke-interface { p5 }, Ljava/util/Iterator;->hasNext()Z
    move-result v0
    if-eqz v0, :L7
    invoke-interface { p5 }, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Lc/e/b/k/d;
  .line 13
    iget-object v1, v0, Lc/e/b/k/d;->d:Lc/e/b/k/e;
    const/4 v6, 1
    move-object v2, p1
    move-object v3, p2
    move-object v4, p3
    move v5, p4
    invoke-virtual/range { v1 .. v6 }, Lc/e/b/k/e;->e(Lc/e/b/k/f;Lc/e/b/d;Ljava/util/HashSet;IZ)V
    goto :L6
  :L7
  .line 14
    iget-object p5, p0, Lc/e/b/k/e;->I:Lc/e/b/k/d;
    invoke-virtual { p5 }, Lc/e/b/k/d;->c()Ljava/util/HashSet;
    move-result-object p5
    if-eqz p5, :L9
  .line 15
    invoke-virtual { p5 }, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;
    move-result-object p5
  :L8
    invoke-interface { p5 }, Ljava/util/Iterator;->hasNext()Z
    move-result v0
    if-eqz v0, :L9
    invoke-interface { p5 }, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Lc/e/b/k/d;
  .line 16
    iget-object v1, v0, Lc/e/b/k/d;->d:Lc/e/b/k/e;
    const/4 v6, 1
    move-object v2, p1
    move-object v3, p2
    move-object v4, p3
    move v5, p4
    invoke-virtual/range { v1 .. v6 }, Lc/e/b/k/e;->e(Lc/e/b/k/f;Lc/e/b/d;Ljava/util/HashSet;IZ)V
    goto :L8
  :L9
  .line 17
    iget-object p5, p0, Lc/e/b/k/e;->J:Lc/e/b/k/d;
    invoke-virtual { p5 }, Lc/e/b/k/d;->c()Ljava/util/HashSet;
    move-result-object p5
    if-eqz p5, :L13
  .line 18
    invoke-virtual { p5 }, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;
    move-result-object p5
  :L10
    invoke-interface { p5 }, Ljava/util/Iterator;->hasNext()Z
    move-result v0
    if-eqz v0, :L13
    invoke-interface { p5 }, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Lc/e/b/k/d;
  .line 19
    iget-object v1, v0, Lc/e/b/k/d;->d:Lc/e/b/k/e;
    const/4 v6, 1
    move-object v2, p1
    move-object v3, p2
    move-object v4, p3
    move v5, p4
  :L11
    invoke-virtual/range { v1 .. v6 }, Lc/e/b/k/e;->e(Lc/e/b/k/f;Lc/e/b/d;Ljava/util/HashSet;IZ)V
  :L12
    goto :L10
  :L13
    return-void
  :L14
    move-exception p1
    goto :L16
  :L15
    throw p1
  :L16
    goto :L15
.end method

.method public e0()Z
  .registers 2
  .line 1
    iget-boolean v0, p0, Lc/e/b/k/e;->j:Z
    if-nez v0, :L1
    iget-object v0, p0, Lc/e/b/k/e;->F:Lc/e/b/k/d;
    invoke-virtual { v0 }, Lc/e/b/k/d;->m()Z
    move-result v0
    if-eqz v0, :L0
    iget-object v0, p0, Lc/e/b/k/e;->H:Lc/e/b/k/d;
    invoke-virtual { v0 }, Lc/e/b/k/d;->m()Z
    move-result v0
    if-eqz v0, :L0
    goto :L1
  :L0
    const/4 v0, 0
    goto :L2
  :L1
    const/4 v0, 1
  :L2
    return v0
.end method

.method f()Z
  .registers 2
  .line 1
    instance-of v0, p0, Lc/e/b/k/k;
    if-nez v0, :L1
    instance-of v0, p0, Lc/e/b/k/g;
    if-eqz v0, :L0
    goto :L1
  :L0
    const/4 v0, 0
    goto :L2
  :L1
    const/4 v0, 1
  :L2
    return v0
.end method

.method public f0()Z
  .registers 2
  .line 1
    iget-boolean v0, p0, Lc/e/b/k/e;->k:Z
    if-nez v0, :L1
    iget-object v0, p0, Lc/e/b/k/e;->G:Lc/e/b/k/d;
    invoke-virtual { v0 }, Lc/e/b/k/d;->m()Z
    move-result v0
    if-eqz v0, :L0
    iget-object v0, p0, Lc/e/b/k/e;->I:Lc/e/b/k/d;
    invoke-virtual { v0 }, Lc/e/b/k/d;->m()Z
    move-result v0
    if-eqz v0, :L0
    goto :L1
  :L0
    const/4 v0, 0
    goto :L2
  :L1
    const/4 v0, 1
  :L2
    return v0
.end method

.method public g(Lc/e/b/d;Z)V
  .registers 53
    move-object/from16 v15, p0
    move-object/from16 v14, p1
  .line 1
    iget-object v0, v15, Lc/e/b/k/e;->F:Lc/e/b/k/d;
    invoke-virtual { v14, v0 }, Lc/e/b/d;->q(Ljava/lang/Object;)Lc/e/b/i;
    move-result-object v13
  .line 2
    iget-object v0, v15, Lc/e/b/k/e;->H:Lc/e/b/k/d;
    invoke-virtual { v14, v0 }, Lc/e/b/d;->q(Ljava/lang/Object;)Lc/e/b/i;
    move-result-object v12
  .line 3
    iget-object v0, v15, Lc/e/b/k/e;->G:Lc/e/b/k/d;
    invoke-virtual { v14, v0 }, Lc/e/b/d;->q(Ljava/lang/Object;)Lc/e/b/i;
    move-result-object v11
  .line 4
    iget-object v0, v15, Lc/e/b/k/e;->I:Lc/e/b/k/d;
    invoke-virtual { v14, v0 }, Lc/e/b/d;->q(Ljava/lang/Object;)Lc/e/b/i;
    move-result-object v10
  .line 5
    iget-object v0, v15, Lc/e/b/k/e;->J:Lc/e/b/k/d;
    invoke-virtual { v14, v0 }, Lc/e/b/d;->q(Ljava/lang/Object;)Lc/e/b/i;
    move-result-object v9
  .line 6
    iget-object v0, v15, Lc/e/b/k/e;->R:Lc/e/b/k/e;
    const/4 v8, 1
    const/4 v7, 0
    if-eqz v0, :L4
    if-eqz v0, :L0
  .line 7
    iget-object v0, v0, Lc/e/b/k/e;->Q:[Lc/e/b/k/e$b;
    aget-object v0, v0, v7
    sget-object v1, Lc/e/b/k/e$b;->c:Lc/e/b/k/e$b;
    if-ne v0, v1, :L0
    const/4 v0, 1
    goto :L1
  :L0
    const/4 v0, 0
  :L1
  .line 8
    iget-object v1, v15, Lc/e/b/k/e;->R:Lc/e/b/k/e;
    if-eqz v1, :L2
    iget-object v1, v1, Lc/e/b/k/e;->Q:[Lc/e/b/k/e$b;
    aget-object v1, v1, v8
    sget-object v2, Lc/e/b/k/e$b;->c:Lc/e/b/k/e$b;
    if-ne v1, v2, :L2
    const/4 v1, 1
    goto :L3
  :L2
    const/4 v1, 0
  :L3
    move v5, v0
    move v6, v1
    goto :L5
  :L4
    const/4 v5, 0
    const/4 v6, 0
  :L5
  .line 9
    iget v0, v15, Lc/e/b/k/e;->e0:I
    const/16 v4, 8
    if-ne v0, v4, :L6
    invoke-virtual/range { p0 .. p0 }, Lc/e/b/k/e;->W()Z
    move-result v0
    if-nez v0, :L6
    iget-object v0, v15, Lc/e/b/k/e;->P:[Z
    aget-boolean v1, v0, v7
    if-nez v1, :L6
    aget-boolean v0, v0, v8
    if-nez v0, :L6
    return-void
  :L6
  .line 10
    iget-boolean v0, v15, Lc/e/b/k/e;->j:Z
    const/4 v3, 5
    if-nez v0, :L7
    iget-boolean v0, v15, Lc/e/b/k/e;->k:Z
    if-eqz v0, :L13
  :L7
  .line 11
    iget-boolean v0, v15, Lc/e/b/k/e;->j:Z
    if-eqz v0, :L9
  .line 12
    iget v0, v15, Lc/e/b/k/e;->W:I
    invoke-virtual { v14, v13, v0 }, Lc/e/b/d;->f(Lc/e/b/i;I)V
  .line 13
    iget v0, v15, Lc/e/b/k/e;->W:I
    iget v1, v15, Lc/e/b/k/e;->S:I
    add-int/2addr v0, v1
    invoke-virtual { v14, v12, v0 }, Lc/e/b/d;->f(Lc/e/b/i;I)V
    if-eqz v5, :L9
  .line 14
    iget-object v0, v15, Lc/e/b/k/e;->R:Lc/e/b/k/e;
    if-eqz v0, :L9
  .line 15
    iget-boolean v1, v15, Lc/e/b/k/e;->i:Z
    if-eqz v1, :L8
  .line 16
    check-cast v0, Lc/e/b/k/f;
  .line 17
    iget-object v1, v15, Lc/e/b/k/e;->F:Lc/e/b/k/d;
    invoke-virtual { v0, v1 }, Lc/e/b/k/f;->n1(Lc/e/b/k/d;)V
  .line 18
    iget-object v1, v15, Lc/e/b/k/e;->H:Lc/e/b/k/d;
    invoke-virtual { v0, v1 }, Lc/e/b/k/f;->h1(Lc/e/b/k/d;)V
    goto :L9
  :L8
  .line 19
    iget-object v0, v0, Lc/e/b/k/e;->H:Lc/e/b/k/d;
    invoke-virtual { v14, v0 }, Lc/e/b/d;->q(Ljava/lang/Object;)Lc/e/b/i;
    move-result-object v0
    invoke-virtual { v14, v0, v12, v7, v3 }, Lc/e/b/d;->h(Lc/e/b/i;Lc/e/b/i;II)V
  :L9
  .line 20
    iget-boolean v0, v15, Lc/e/b/k/e;->k:Z
    if-eqz v0, :L12
  .line 21
    iget v0, v15, Lc/e/b/k/e;->X:I
    invoke-virtual { v14, v11, v0 }, Lc/e/b/d;->f(Lc/e/b/i;I)V
  .line 22
    iget v0, v15, Lc/e/b/k/e;->X:I
    iget v1, v15, Lc/e/b/k/e;->T:I
    add-int/2addr v0, v1
    invoke-virtual { v14, v10, v0 }, Lc/e/b/d;->f(Lc/e/b/i;I)V
  .line 23
    iget-object v0, v15, Lc/e/b/k/e;->J:Lc/e/b/k/d;
    invoke-virtual { v0 }, Lc/e/b/k/d;->l()Z
    move-result v0
    if-eqz v0, :L10
  .line 24
    iget v0, v15, Lc/e/b/k/e;->X:I
    iget v1, v15, Lc/e/b/k/e;->Y:I
    add-int/2addr v0, v1
    invoke-virtual { v14, v9, v0 }, Lc/e/b/d;->f(Lc/e/b/i;I)V
  :L10
    if-eqz v6, :L12
  .line 25
    iget-object v0, v15, Lc/e/b/k/e;->R:Lc/e/b/k/e;
    if-eqz v0, :L12
  .line 26
    iget-boolean v1, v15, Lc/e/b/k/e;->i:Z
    if-eqz v1, :L11
  .line 27
    check-cast v0, Lc/e/b/k/f;
  .line 28
    iget-object v1, v15, Lc/e/b/k/e;->G:Lc/e/b/k/d;
    invoke-virtual { v0, v1 }, Lc/e/b/k/f;->n1(Lc/e/b/k/d;)V
  .line 29
    iget-object v1, v15, Lc/e/b/k/e;->I:Lc/e/b/k/d;
    invoke-virtual { v0, v1 }, Lc/e/b/k/f;->m1(Lc/e/b/k/d;)V
    goto :L12
  :L11
  .line 30
    iget-object v0, v0, Lc/e/b/k/e;->I:Lc/e/b/k/d;
    invoke-virtual { v14, v0 }, Lc/e/b/d;->q(Ljava/lang/Object;)Lc/e/b/i;
    move-result-object v0
    invoke-virtual { v14, v0, v10, v7, v3 }, Lc/e/b/d;->h(Lc/e/b/i;Lc/e/b/i;II)V
  :L12
  .line 31
    iget-boolean v0, v15, Lc/e/b/k/e;->j:Z
    if-eqz v0, :L13
    iget-boolean v0, v15, Lc/e/b/k/e;->k:Z
    if-eqz v0, :L13
  .line 32
    iput-boolean v7, v15, Lc/e/b/k/e;->j:Z
  .line 33
    iput-boolean v7, v15, Lc/e/b/k/e;->k:Z
    return-void
  :L13
  .line 34
    sget-object v0, Lc/e/b/d;->x:Lc/e/b/e;
    const-wide/16 v1, 1
    if-eqz v0, :L14
  .line 35
    iget-wide v3, v0, Lc/e/b/e;->y:J
    add-long/2addr v3, v1
    iput-wide v3, v0, Lc/e/b/e;->y:J
  :L14
    if-eqz p2, :L18
  .line 36
    iget-object v0, v15, Lc/e/b/k/e;->d:Lc/e/b/k/m/l;
    if-eqz v0, :L18
    iget-object v3, v15, Lc/e/b/k/e;->e:Lc/e/b/k/m/n;
    if-eqz v3, :L18
    iget-object v4, v0, Lc/e/b/k/m/p;->h:Lc/e/b/k/m/f;
    iget-boolean v4, v4, Lc/e/b/k/m/f;->j:Z
    if-eqz v4, :L18
    iget-object v0, v0, Lc/e/b/k/m/p;->i:Lc/e/b/k/m/f;
    iget-boolean v0, v0, Lc/e/b/k/m/f;->j:Z
    if-eqz v0, :L18
    iget-object v0, v3, Lc/e/b/k/m/p;->h:Lc/e/b/k/m/f;
    iget-boolean v0, v0, Lc/e/b/k/m/f;->j:Z
    if-eqz v0, :L18
    iget-object v0, v3, Lc/e/b/k/m/p;->i:Lc/e/b/k/m/f;
    iget-boolean v0, v0, Lc/e/b/k/m/f;->j:Z
    if-eqz v0, :L18
  .line 37
    sget-object v0, Lc/e/b/d;->x:Lc/e/b/e;
    if-eqz v0, :L15
  .line 38
    iget-wide v3, v0, Lc/e/b/e;->r:J
    add-long/2addr v3, v1
    iput-wide v3, v0, Lc/e/b/e;->r:J
  :L15
  .line 39
    iget-object v0, v15, Lc/e/b/k/e;->d:Lc/e/b/k/m/l;
    iget-object v0, v0, Lc/e/b/k/m/p;->h:Lc/e/b/k/m/f;
    iget v0, v0, Lc/e/b/k/m/f;->g:I
    invoke-virtual { v14, v13, v0 }, Lc/e/b/d;->f(Lc/e/b/i;I)V
  .line 40
    iget-object v0, v15, Lc/e/b/k/e;->d:Lc/e/b/k/m/l;
    iget-object v0, v0, Lc/e/b/k/m/p;->i:Lc/e/b/k/m/f;
    iget v0, v0, Lc/e/b/k/m/f;->g:I
    invoke-virtual { v14, v12, v0 }, Lc/e/b/d;->f(Lc/e/b/i;I)V
  .line 41
    iget-object v0, v15, Lc/e/b/k/e;->e:Lc/e/b/k/m/n;
    iget-object v0, v0, Lc/e/b/k/m/p;->h:Lc/e/b/k/m/f;
    iget v0, v0, Lc/e/b/k/m/f;->g:I
    invoke-virtual { v14, v11, v0 }, Lc/e/b/d;->f(Lc/e/b/i;I)V
  .line 42
    iget-object v0, v15, Lc/e/b/k/e;->e:Lc/e/b/k/m/n;
    iget-object v0, v0, Lc/e/b/k/m/p;->i:Lc/e/b/k/m/f;
    iget v0, v0, Lc/e/b/k/m/f;->g:I
    invoke-virtual { v14, v10, v0 }, Lc/e/b/d;->f(Lc/e/b/i;I)V
  .line 43
    iget-object v0, v15, Lc/e/b/k/e;->e:Lc/e/b/k/m/n;
    iget-object v0, v0, Lc/e/b/k/m/n;->k:Lc/e/b/k/m/f;
    iget v0, v0, Lc/e/b/k/m/f;->g:I
    invoke-virtual { v14, v9, v0 }, Lc/e/b/d;->f(Lc/e/b/i;I)V
  .line 44
    iget-object v0, v15, Lc/e/b/k/e;->R:Lc/e/b/k/e;
    if-eqz v0, :L17
    if-eqz v5, :L16
  .line 45
    iget-object v0, v15, Lc/e/b/k/e;->f:[Z
    aget-boolean v0, v0, v7
    if-eqz v0, :L16
    invoke-virtual/range { p0 .. p0 }, Lc/e/b/k/e;->Z()Z
    move-result v0
    if-nez v0, :L16
  .line 46
    iget-object v0, v15, Lc/e/b/k/e;->R:Lc/e/b/k/e;
    iget-object v0, v0, Lc/e/b/k/e;->H:Lc/e/b/k/d;
    invoke-virtual { v14, v0 }, Lc/e/b/d;->q(Ljava/lang/Object;)Lc/e/b/i;
    move-result-object v0
    const/16 v1, 8
  .line 47
    invoke-virtual { v14, v0, v12, v7, v1 }, Lc/e/b/d;->h(Lc/e/b/i;Lc/e/b/i;II)V
  :L16
    if-eqz v6, :L17
  .line 48
    iget-object v0, v15, Lc/e/b/k/e;->f:[Z
    aget-boolean v0, v0, v8
    if-eqz v0, :L17
    invoke-virtual/range { p0 .. p0 }, Lc/e/b/k/e;->b0()Z
    move-result v0
    if-nez v0, :L17
  .line 49
    iget-object v0, v15, Lc/e/b/k/e;->R:Lc/e/b/k/e;
    iget-object v0, v0, Lc/e/b/k/e;->I:Lc/e/b/k/d;
    invoke-virtual { v14, v0 }, Lc/e/b/d;->q(Ljava/lang/Object;)Lc/e/b/i;
    move-result-object v0
    const/16 v1, 8
  .line 50
    invoke-virtual { v14, v0, v10, v7, v1 }, Lc/e/b/d;->h(Lc/e/b/i;Lc/e/b/i;II)V
  :L17
  .line 51
    iput-boolean v7, v15, Lc/e/b/k/e;->j:Z
  .line 52
    iput-boolean v7, v15, Lc/e/b/k/e;->k:Z
    return-void
  :L18
  .line 53
    sget-object v0, Lc/e/b/d;->x:Lc/e/b/e;
    if-eqz v0, :L19
  .line 54
    iget-wide v3, v0, Lc/e/b/e;->s:J
    add-long/2addr v3, v1
    iput-wide v3, v0, Lc/e/b/e;->s:J
  :L19
  .line 55
    iget-object v0, v15, Lc/e/b/k/e;->R:Lc/e/b/k/e;
    if-eqz v0, :L26
  .line 56
    invoke-direct { v15, v7 }, Lc/e/b/k/e;->Y(I)Z
    move-result v0
    if-eqz v0, :L20
  .line 57
    iget-object v0, v15, Lc/e/b/k/e;->R:Lc/e/b/k/e;
    check-cast v0, Lc/e/b/k/f;
    invoke-virtual { v0, v15, v7 }, Lc/e/b/k/f;->e1(Lc/e/b/k/e;I)V
    const/4 v0, 1
    goto :L21
  :L20
  .line 58
    invoke-virtual/range { p0 .. p0 }, Lc/e/b/k/e;->Z()Z
    move-result v0
  :L21
  .line 59
    invoke-direct { v15, v8 }, Lc/e/b/k/e;->Y(I)Z
    move-result v1
    if-eqz v1, :L22
  .line 60
    iget-object v1, v15, Lc/e/b/k/e;->R:Lc/e/b/k/e;
    check-cast v1, Lc/e/b/k/f;
    invoke-virtual { v1, v15, v8 }, Lc/e/b/k/f;->e1(Lc/e/b/k/e;I)V
    const/4 v1, 1
    goto :L23
  :L22
  .line 61
    invoke-virtual/range { p0 .. p0 }, Lc/e/b/k/e;->b0()Z
    move-result v1
  :L23
    if-nez v0, :L24
    if-eqz v5, :L24
  .line 62
    iget v2, v15, Lc/e/b/k/e;->e0:I
    const/16 v3, 8
    if-eq v2, v3, :L24
    iget-object v2, v15, Lc/e/b/k/e;->F:Lc/e/b/k/d;
    iget-object v2, v2, Lc/e/b/k/d;->f:Lc/e/b/k/d;
    if-nez v2, :L24
    iget-object v2, v15, Lc/e/b/k/e;->H:Lc/e/b/k/d;
    iget-object v2, v2, Lc/e/b/k/d;->f:Lc/e/b/k/d;
    if-nez v2, :L24
  .line 63
    iget-object v2, v15, Lc/e/b/k/e;->R:Lc/e/b/k/e;
    iget-object v2, v2, Lc/e/b/k/e;->H:Lc/e/b/k/d;
    invoke-virtual { v14, v2 }, Lc/e/b/d;->q(Ljava/lang/Object;)Lc/e/b/i;
    move-result-object v2
  .line 64
    invoke-virtual { v14, v2, v12, v7, v8 }, Lc/e/b/d;->h(Lc/e/b/i;Lc/e/b/i;II)V
  :L24
    if-nez v1, :L25
    if-eqz v6, :L25
  .line 65
    iget v2, v15, Lc/e/b/k/e;->e0:I
    const/16 v3, 8
    if-eq v2, v3, :L25
    iget-object v2, v15, Lc/e/b/k/e;->G:Lc/e/b/k/d;
    iget-object v2, v2, Lc/e/b/k/d;->f:Lc/e/b/k/d;
    if-nez v2, :L25
    iget-object v2, v15, Lc/e/b/k/e;->I:Lc/e/b/k/d;
    iget-object v2, v2, Lc/e/b/k/d;->f:Lc/e/b/k/d;
    if-nez v2, :L25
    iget-object v2, v15, Lc/e/b/k/e;->J:Lc/e/b/k/d;
    if-nez v2, :L25
  .line 66
    iget-object v2, v15, Lc/e/b/k/e;->R:Lc/e/b/k/e;
    iget-object v2, v2, Lc/e/b/k/e;->I:Lc/e/b/k/d;
    invoke-virtual { v14, v2 }, Lc/e/b/d;->q(Ljava/lang/Object;)Lc/e/b/i;
    move-result-object v2
  .line 67
    invoke-virtual { v14, v2, v10, v7, v8 }, Lc/e/b/d;->h(Lc/e/b/i;Lc/e/b/i;II)V
  :L25
    move/from16 v29, v0
    move/from16 v28, v1
    goto :L27
  :L26
    const/16 v28, 0
    const/16 v29, 0
  :L27
  .line 68
    iget v0, v15, Lc/e/b/k/e;->S:I
  .line 69
    iget v1, v15, Lc/e/b/k/e;->Z:I
    if-ge v0, v1, :L28
    move v0, v1
  :L28
  .line 70
    iget v1, v15, Lc/e/b/k/e;->T:I
  .line 71
    iget v2, v15, Lc/e/b/k/e;->a0:I
    if-ge v1, v2, :L29
    move v1, v2
  :L29
  .line 72
    iget-object v2, v15, Lc/e/b/k/e;->Q:[Lc/e/b/k/e$b;
    aget-object v2, v2, v7
    sget-object v3, Lc/e/b/k/e$b;->d:Lc/e/b/k/e$b;
    if-eq v2, v3, :L30
    const/4 v2, 1
    goto :L31
  :L30
    const/4 v2, 0
  :L31
  .line 73
    iget-object v3, v15, Lc/e/b/k/e;->Q:[Lc/e/b/k/e$b;
    aget-object v3, v3, v8
    sget-object v4, Lc/e/b/k/e$b;->d:Lc/e/b/k/e$b;
    if-eq v3, v4, :L32
    const/4 v3, 1
    goto :L33
  :L32
    const/4 v3, 0
  :L33
  .line 74
    iget v4, v15, Lc/e/b/k/e;->V:I
    iput v4, v15, Lc/e/b/k/e;->w:I
  .line 75
    iget v4, v15, Lc/e/b/k/e;->U:F
    iput v4, v15, Lc/e/b/k/e;->x:F
  .line 76
    iget v8, v15, Lc/e/b/k/e;->n:I
  .line 77
    iget v7, v15, Lc/e/b/k/e;->o:I
    const/16 v20, 0
    const/16 v21, 4
    move/from16 v22, v0
    cmpl-float v4, v4, v20
    if-lez v4, :L45
  .line 78
    iget v4, v15, Lc/e/b/k/e;->e0:I
    const/16 v0, 8
    if-eq v4, v0, :L45
  .line 79
    iget-object v0, v15, Lc/e/b/k/e;->Q:[Lc/e/b/k/e$b;
    const/4 v4, 0
    aget-object v0, v0, v4
    sget-object v4, Lc/e/b/k/e$b;->d:Lc/e/b/k/e$b;
    move/from16 v23, v1
    if-ne v0, v4, :L34
    if-nez v8, :L34
    const/4 v8, 3
  :L34
  .line 80
    iget-object v0, v15, Lc/e/b/k/e;->Q:[Lc/e/b/k/e$b;
    const/4 v4, 1
    aget-object v0, v0, v4
    sget-object v4, Lc/e/b/k/e$b;->d:Lc/e/b/k/e$b;
    if-ne v0, v4, :L35
    if-nez v7, :L35
    const/4 v7, 3
  :L35
  .line 81
    iget-object v0, v15, Lc/e/b/k/e;->Q:[Lc/e/b/k/e$b;
    const/4 v4, 0
    aget-object v1, v0, v4
    sget-object v4, Lc/e/b/k/e$b;->d:Lc/e/b/k/e$b;
    if-ne v1, v4, :L36
    const/4 v1, 1
    aget-object v0, v0, v1
    if-ne v0, v4, :L36
    const/4 v0, 3
    if-ne v8, v0, :L37
    if-ne v7, v0, :L37
  .line 82
    invoke-virtual { v15, v5, v6, v2, v3 }, Lc/e/b/k/e;->X0(ZZZZ)V
    goto :L42
  :L36
    const/4 v0, 3
  :L37
  .line 83
    iget-object v1, v15, Lc/e/b/k/e;->Q:[Lc/e/b/k/e$b;
    const/4 v2, 0
    aget-object v3, v1, v2
    sget-object v4, Lc/e/b/k/e$b;->d:Lc/e/b/k/e$b;
    if-ne v3, v4, :L39
    if-ne v8, v0, :L39
  .line 84
    iput v2, v15, Lc/e/b/k/e;->w:I
  .line 85
    iget v0, v15, Lc/e/b/k/e;->x:F
    iget v2, v15, Lc/e/b/k/e;->T:I
    int-to-float v2, v2
    mul-float v0, v0, v2
    float-to-int v0, v0
    const/4 v2, 1
  .line 86
    aget-object v1, v1, v2
    move/from16 v32, v7
    if-eq v1, v4, :L38
    move/from16 v30, v23
    const/16 v31, 0
    const/16 v33, 4
    goto :L46
  :L38
    move/from16 v33, v8
    goto :L43
  :L39
    const/4 v2, 1
  .line 87
    iget-object v0, v15, Lc/e/b/k/e;->Q:[Lc/e/b/k/e$b;
    aget-object v0, v0, v2
    sget-object v1, Lc/e/b/k/e$b;->d:Lc/e/b/k/e$b;
    if-ne v0, v1, :L42
    const/4 v0, 3
    if-ne v7, v0, :L42
  .line 88
    iput v2, v15, Lc/e/b/k/e;->w:I
  .line 89
    iget v0, v15, Lc/e/b/k/e;->V:I
    const/4 v1, -1
    if-ne v0, v1, :L40
    const/high16 v0, 16256
  .line 90
    iget v1, v15, Lc/e/b/k/e;->x:F
    div-float/2addr v0, v1
    iput v0, v15, Lc/e/b/k/e;->x:F
  :L40
  .line 91
    iget v0, v15, Lc/e/b/k/e;->x:F
    iget v1, v15, Lc/e/b/k/e;->S:I
    int-to-float v1, v1
    mul-float v0, v0, v1
    float-to-int v1, v0
  .line 92
    iget-object v0, v15, Lc/e/b/k/e;->Q:[Lc/e/b/k/e$b;
    const/4 v2, 0
    aget-object v0, v0, v2
    sget-object v2, Lc/e/b/k/e$b;->d:Lc/e/b/k/e$b;
    move/from16 v30, v1
    if-eq v0, v2, :L41
    move/from16 v33, v8
    move/from16 v0, v22
    const/16 v31, 0
    const/16 v32, 4
    goto :L46
  :L41
    move/from16 v32, v7
    move/from16 v33, v8
    move/from16 v0, v22
    goto :L44
  :L42
    move/from16 v32, v7
    move/from16 v33, v8
    move/from16 v0, v22
  :L43
    move/from16 v30, v23
  :L44
    const/16 v31, 1
    goto :L46
  :L45
    move/from16 v23, v1
    move/from16 v32, v7
    move/from16 v33, v8
    move/from16 v0, v22
    move/from16 v30, v23
    const/16 v31, 0
  :L46
  .line 93
    iget-object v1, v15, Lc/e/b/k/e;->p:[I
    const/4 v2, 0
    aput v33, v1, v2
    const/4 v2, 1
  .line 94
    aput v32, v1, v2
    if-eqz v31, :L48
  .line 95
    iget v1, v15, Lc/e/b/k/e;->w:I
    const/4 v2, -1
    if-eqz v1, :L47
    if-ne v1, v2, :L49
  :L47
    const/16 v20, 1
    goto :L50
  :L48
    const/4 v2, -1
  :L49
    const/16 v20, 0
  :L50
    if-eqz v31, :L52
  .line 96
    iget v1, v15, Lc/e/b/k/e;->w:I
    const/4 v3, 1
    if-eq v1, v3, :L51
    if-ne v1, v2, :L52
  :L51
    const/16 v34, 1
    goto :L53
  :L52
    const/16 v34, 0
  :L53
  .line 97
    iget-object v1, v15, Lc/e/b/k/e;->Q:[Lc/e/b/k/e$b;
    const/4 v2, 0
    aget-object v1, v1, v2
    sget-object v2, Lc/e/b/k/e$b;->c:Lc/e/b/k/e$b;
    if-ne v1, v2, :L54
    instance-of v1, v15, Lc/e/b/k/f;
    if-eqz v1, :L54
    const/16 v21, 1
    goto :L55
  :L54
    const/16 v21, 0
  :L55
    if-eqz v21, :L56
    const/16 v22, 0
    goto :L57
  :L56
    move/from16 v22, v0
  :L57
  .line 98
    iget-object v0, v15, Lc/e/b/k/e;->M:Lc/e/b/k/d;
    invoke-virtual { v0 }, Lc/e/b/k/d;->n()Z
    move-result v0
    const/4 v1, 1
    xor-int/lit8 v35, v0, 1
  .line 99
    iget-object v0, v15, Lc/e/b/k/e;->P:[Z
    const/4 v2, 0
    aget-boolean v23, v0, v2
  .line 100
    aget-boolean v36, v0, v1
  .line 101
    iget v0, v15, Lc/e/b/k/e;->l:I
    const/4 v8, 2
    const/16 v37, 0
    if-eq v0, v8, :L66
    iget-boolean v0, v15, Lc/e/b/k/e;->j:Z
    if-nez v0, :L66
    if-eqz p2, :L59
  .line 102
    iget-object v0, v15, Lc/e/b/k/e;->d:Lc/e/b/k/m/l;
    if-eqz v0, :L59
    iget-object v1, v0, Lc/e/b/k/m/p;->h:Lc/e/b/k/m/f;
    iget-boolean v2, v1, Lc/e/b/k/m/f;->j:Z
    if-eqz v2, :L59
    iget-object v0, v0, Lc/e/b/k/m/p;->i:Lc/e/b/k/m/f;
    iget-boolean v0, v0, Lc/e/b/k/m/f;->j:Z
    if-nez v0, :L58
    goto :L59
  :L58
    if-eqz p2, :L66
  .line 103
    iget v0, v1, Lc/e/b/k/m/f;->g:I
    invoke-virtual { v14, v13, v0 }, Lc/e/b/d;->f(Lc/e/b/i;I)V
  .line 104
    iget-object v0, v15, Lc/e/b/k/e;->d:Lc/e/b/k/m/l;
    iget-object v0, v0, Lc/e/b/k/m/p;->i:Lc/e/b/k/m/f;
    iget v0, v0, Lc/e/b/k/m/f;->g:I
    invoke-virtual { v14, v12, v0 }, Lc/e/b/d;->f(Lc/e/b/i;I)V
  .line 105
    iget-object v0, v15, Lc/e/b/k/e;->R:Lc/e/b/k/e;
    if-eqz v0, :L66
    if-eqz v5, :L66
  .line 106
    iget-object v0, v15, Lc/e/b/k/e;->f:[Z
    const/4 v1, 0
    aget-boolean v0, v0, v1
    if-eqz v0, :L66
    invoke-virtual/range { p0 .. p0 }, Lc/e/b/k/e;->Z()Z
    move-result v0
    if-nez v0, :L66
  .line 107
    iget-object v0, v15, Lc/e/b/k/e;->R:Lc/e/b/k/e;
    iget-object v0, v0, Lc/e/b/k/e;->H:Lc/e/b/k/d;
    invoke-virtual { v14, v0 }, Lc/e/b/d;->q(Ljava/lang/Object;)Lc/e/b/i;
    move-result-object v0
    const/16 v4, 8
  .line 108
    invoke-virtual { v14, v0, v12, v1, v4 }, Lc/e/b/d;->h(Lc/e/b/i;Lc/e/b/i;II)V
    goto/16 :L66
  :L59
    const/16 v4, 8
  .line 109
    iget-object v0, v15, Lc/e/b/k/e;->R:Lc/e/b/k/e;
    if-eqz v0, :L60
    iget-object v0, v0, Lc/e/b/k/e;->H:Lc/e/b/k/d;
    invoke-virtual { v14, v0 }, Lc/e/b/d;->q(Ljava/lang/Object;)Lc/e/b/i;
    move-result-object v0
    move-object v7, v0
    goto :L61
  :L60
    move-object/from16 v7, v37
  :L61
  .line 110
    iget-object v0, v15, Lc/e/b/k/e;->R:Lc/e/b/k/e;
    if-eqz v0, :L62
    iget-object v0, v0, Lc/e/b/k/e;->F:Lc/e/b/k/d;
    invoke-virtual { v14, v0 }, Lc/e/b/d;->q(Ljava/lang/Object;)Lc/e/b/i;
    move-result-object v0
    move-object/from16 v16, v0
    goto :L63
  :L62
    move-object/from16 v16, v37
  :L63
  .line 111
    iget-object v0, v15, Lc/e/b/k/e;->f:[Z
    const/16 v19, 0
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
    const/16 v18, 1
    aget-object v0, v0, v18
    sget-object v8, Lc/e/b/k/e$b;->d:Lc/e/b/k/e$b;
    if-ne v0, v8, :L64
    const/16 v43, 1
    goto :L65
  :L64
    const/16 v43, 0
  :L65
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
    const/4 v2, 1
    move-object/from16 v17, v3
    const/4 v8, 5
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
    invoke-direct/range { v0 .. v27 }, Lc/e/b/k/e;->i(Lc/e/b/d;ZZZZLc/e/b/i;Lc/e/b/i;Lc/e/b/k/e$b;ZLc/e/b/k/d;Lc/e/b/k/d;IIIIFZZZZZIIIIFZ)V
    goto :L67
  :L66
    move/from16 v45, v5
    move/from16 v46, v6
    move-object/from16 v47, v9
    move-object/from16 v48, v10
    move-object/from16 v49, v11
    move-object/from16 v38, v12
    move-object/from16 v39, v13
  :L67
    if-eqz p2, :L72
    move-object/from16 v15, p0
  .line 112
    iget-object v0, v15, Lc/e/b/k/e;->e:Lc/e/b/k/m/n;
    if-eqz v0, :L71
    iget-object v1, v0, Lc/e/b/k/m/p;->h:Lc/e/b/k/m/f;
    iget-boolean v2, v1, Lc/e/b/k/m/f;->j:Z
    if-eqz v2, :L71
    iget-object v0, v0, Lc/e/b/k/m/p;->i:Lc/e/b/k/m/f;
    iget-boolean v0, v0, Lc/e/b/k/m/f;->j:Z
    if-eqz v0, :L71
  .line 113
    iget v0, v1, Lc/e/b/k/m/f;->g:I
    move-object/from16 v14, p1
    move-object/from16 v13, v49
    invoke-virtual { v14, v13, v0 }, Lc/e/b/d;->f(Lc/e/b/i;I)V
  .line 114
    iget-object v0, v15, Lc/e/b/k/e;->e:Lc/e/b/k/m/n;
    iget-object v0, v0, Lc/e/b/k/m/p;->i:Lc/e/b/k/m/f;
    iget v0, v0, Lc/e/b/k/m/f;->g:I
    move-object/from16 v12, v48
    invoke-virtual { v14, v12, v0 }, Lc/e/b/d;->f(Lc/e/b/i;I)V
  .line 115
    iget-object v0, v15, Lc/e/b/k/e;->e:Lc/e/b/k/m/n;
    iget-object v0, v0, Lc/e/b/k/m/n;->k:Lc/e/b/k/m/f;
    iget v0, v0, Lc/e/b/k/m/f;->g:I
    move-object/from16 v1, v47
    invoke-virtual { v14, v1, v0 }, Lc/e/b/d;->f(Lc/e/b/i;I)V
  .line 116
    iget-object v0, v15, Lc/e/b/k/e;->R:Lc/e/b/k/e;
    if-eqz v0, :L69
    if-nez v28, :L69
    if-eqz v46, :L69
  .line 117
    iget-object v2, v15, Lc/e/b/k/e;->f:[Z
    const/4 v11, 1
    aget-boolean v2, v2, v11
    if-eqz v2, :L68
  .line 118
    iget-object v0, v0, Lc/e/b/k/e;->I:Lc/e/b/k/d;
    invoke-virtual { v14, v0 }, Lc/e/b/d;->q(Ljava/lang/Object;)Lc/e/b/i;
    move-result-object v0
    const/16 v2, 8
    const/4 v10, 0
  .line 119
    invoke-virtual { v14, v0, v12, v10, v2 }, Lc/e/b/d;->h(Lc/e/b/i;Lc/e/b/i;II)V
    goto :L70
  :L68
    const/16 v2, 8
    const/4 v10, 0
    goto :L70
  :L69
    const/16 v2, 8
    const/4 v10, 0
    const/4 v11, 1
  :L70
    const/4 v8, 0
    goto :L74
  :L71
    move-object/from16 v14, p1
    move-object/from16 v1, v47
    move-object/from16 v12, v48
    move-object/from16 v13, v49
    const/16 v2, 8
    const/4 v10, 0
    const/4 v11, 1
    goto :L73
  :L72
    const/16 v2, 8
    const/4 v10, 0
    const/4 v11, 1
    move-object/from16 v15, p0
    move-object/from16 v14, p1
    move-object/from16 v1, v47
    move-object/from16 v12, v48
    move-object/from16 v13, v49
  :L73
    const/4 v8, 1
  :L74
  .line 120
    iget v0, v15, Lc/e/b/k/e;->m:I
    const/4 v3, 2
    if-ne v0, v3, :L75
    const/4 v7, 0
    goto :L76
  :L75
    move v7, v8
  :L76
    if-eqz v7, :L92
  .line 121
    iget-boolean v0, v15, Lc/e/b/k/e;->k:Z
    if-nez v0, :L92
  .line 122
    iget-object v0, v15, Lc/e/b/k/e;->Q:[Lc/e/b/k/e$b;
    aget-object v0, v0, v11
    sget-object v3, Lc/e/b/k/e$b;->c:Lc/e/b/k/e$b;
    if-ne v0, v3, :L77
    instance-of v0, v15, Lc/e/b/k/f;
    if-eqz v0, :L77
    const/4 v9, 1
    goto :L78
  :L77
    const/4 v9, 0
  :L78
    if-eqz v9, :L79
    const/16 v30, 0
  :L79
  .line 123
    iget-object v0, v15, Lc/e/b/k/e;->R:Lc/e/b/k/e;
    if-eqz v0, :L80
    iget-object v0, v0, Lc/e/b/k/e;->I:Lc/e/b/k/d;
    invoke-virtual { v14, v0 }, Lc/e/b/d;->q(Ljava/lang/Object;)Lc/e/b/i;
    move-result-object v0
    move-object v7, v0
    goto :L81
  :L80
    move-object/from16 v7, v37
  :L81
  .line 124
    iget-object v0, v15, Lc/e/b/k/e;->R:Lc/e/b/k/e;
    if-eqz v0, :L82
    iget-object v0, v0, Lc/e/b/k/e;->G:Lc/e/b/k/d;
    invoke-virtual { v14, v0 }, Lc/e/b/d;->q(Ljava/lang/Object;)Lc/e/b/i;
    move-result-object v0
    move-object v6, v0
    goto :L83
  :L82
    move-object/from16 v6, v37
  :L83
  .line 125
    iget v0, v15, Lc/e/b/k/e;->Y:I
    if-gtz v0, :L84
    iget v0, v15, Lc/e/b/k/e;->e0:I
    if-ne v0, v2, :L88
  :L84
  .line 126
    iget-object v0, v15, Lc/e/b/k/e;->J:Lc/e/b/k/d;
    iget-object v0, v0, Lc/e/b/k/d;->f:Lc/e/b/k/d;
    if-eqz v0, :L86
  .line 127
    invoke-virtual/range { p0 .. p0 }, Lc/e/b/k/e;->n()I
    move-result v0
    invoke-virtual { v14, v1, v13, v0, v2 }, Lc/e/b/d;->e(Lc/e/b/i;Lc/e/b/i;II)Lc/e/b/b;
  .line 128
    iget-object v0, v15, Lc/e/b/k/e;->J:Lc/e/b/k/d;
    iget-object v0, v0, Lc/e/b/k/d;->f:Lc/e/b/k/d;
    invoke-virtual { v14, v0 }, Lc/e/b/d;->q(Ljava/lang/Object;)Lc/e/b/i;
    move-result-object v0
  .line 129
    invoke-virtual { v14, v1, v0, v10, v2 }, Lc/e/b/d;->e(Lc/e/b/i;Lc/e/b/i;II)Lc/e/b/b;
    if-eqz v46, :L85
  .line 130
    iget-object v0, v15, Lc/e/b/k/e;->I:Lc/e/b/k/d;
    invoke-virtual { v14, v0 }, Lc/e/b/d;->q(Ljava/lang/Object;)Lc/e/b/i;
    move-result-object v0
    const/4 v1, 5
  .line 131
    invoke-virtual { v14, v7, v0, v10, v1 }, Lc/e/b/d;->h(Lc/e/b/i;Lc/e/b/i;II)V
  :L85
    const/16 v27, 0
    goto :L89
  :L86
  .line 132
    iget v0, v15, Lc/e/b/k/e;->e0:I
    if-ne v0, v2, :L87
  .line 133
    invoke-virtual { v14, v1, v13, v10, v2 }, Lc/e/b/d;->e(Lc/e/b/i;Lc/e/b/i;II)Lc/e/b/b;
    goto :L88
  :L87
  .line 134
    invoke-virtual/range { p0 .. p0 }, Lc/e/b/k/e;->n()I
    move-result v0
    invoke-virtual { v14, v1, v13, v0, v2 }, Lc/e/b/d;->e(Lc/e/b/i;Lc/e/b/i;II)Lc/e/b/b;
  :L88
    move/from16 v27, v35
  :L89
  .line 135
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
    const/16 v17, 0
    aget-object v0, v0, v17
    sget-object v11, Lc/e/b/k/e$b;->d:Lc/e/b/k/e$b;
    if-ne v0, v11, :L90
    const/16 v18, 1
    goto :L91
  :L90
    const/16 v18, 0
  :L91
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
    const/4 v2, 0
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
    invoke-direct/range { v0 .. v27 }, Lc/e/b/k/e;->i(Lc/e/b/d;ZZZZLc/e/b/i;Lc/e/b/i;Lc/e/b/k/e$b;ZLc/e/b/k/d;Lc/e/b/k/d;IIIIFZZZZZIIIIFZ)V
    goto :L93
  :L92
    move-object/from16 v35, v12
    move-object/from16 v37, v13
  :L93
    if-eqz v31, :L95
    const/16 v6, 8
    move-object/from16 v7, p0
  .line 136
    iget v0, v7, Lc/e/b/k/e;->w:I
    const/4 v1, 1
    if-ne v0, v1, :L94
  .line 137
    iget v5, v7, Lc/e/b/k/e;->x:F
    move-object/from16 v0, p1
    move-object/from16 v1, v35
    move-object/from16 v2, v37
    move-object/from16 v3, v38
    move-object/from16 v4, v39
    invoke-virtual/range { v0 .. v6 }, Lc/e/b/d;->k(Lc/e/b/i;Lc/e/b/i;Lc/e/b/i;Lc/e/b/i;FI)V
    goto :L96
  :L94
  .line 138
    iget v5, v7, Lc/e/b/k/e;->x:F
    const/16 v6, 8
    move-object/from16 v0, p1
    move-object/from16 v1, v38
    move-object/from16 v2, v39
    move-object/from16 v3, v35
    move-object/from16 v4, v37
    invoke-virtual/range { v0 .. v6 }, Lc/e/b/d;->k(Lc/e/b/i;Lc/e/b/i;Lc/e/b/i;Lc/e/b/i;FI)V
    goto :L96
  :L95
    move-object/from16 v7, p0
  :L96
  .line 139
    iget-object v0, v7, Lc/e/b/k/e;->M:Lc/e/b/k/d;
    invoke-virtual { v0 }, Lc/e/b/k/d;->n()Z
    move-result v0
    if-eqz v0, :L97
  .line 140
    iget-object v0, v7, Lc/e/b/k/e;->M:Lc/e/b/k/d;
    invoke-virtual { v0 }, Lc/e/b/k/d;->i()Lc/e/b/k/d;
    move-result-object v0
    invoke-virtual { v0 }, Lc/e/b/k/d;->g()Lc/e/b/k/e;
    move-result-object v0
    iget v1, v7, Lc/e/b/k/e;->z:F
    const/high16 v2, 17076
    add-float/2addr v1, v2
    float-to-double v1, v1
    invoke-static { v1, v2 }, Ljava/lang/Math;->toRadians(D)D
    move-result-wide v1
    double-to-float v1, v1
    iget-object v2, v7, Lc/e/b/k/e;->M:Lc/e/b/k/d;
    invoke-virtual { v2 }, Lc/e/b/k/d;->e()I
    move-result v2
    move-object/from16 v3, p1
    invoke-virtual { v3, v7, v0, v1, v2 }, Lc/e/b/d;->b(Lc/e/b/k/e;Lc/e/b/k/e;FI)V
  :L97
    const/4 v0, 0
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
    const/4 v1, 0
    aget-object v2, v0, v1
    sget-object v3, Lc/e/b/k/e$b;->d:Lc/e/b/k/e$b;
    const/4 v4, 1
    if-ne v2, v3, :L0
    aget-object v0, v0, v4
    if-ne v0, v3, :L0
    const/4 v1, 1
  :L0
    return v1
.end method

.method public h()Z
  .registers 3
  .line 1
    iget v0, p0, Lc/e/b/k/e;->e0:I
    const/16 v1, 8
    if-eq v0, v1, :L0
    const/4 v0, 1
    goto :L1
  :L0
    const/4 v0, 0
  :L1
    return v0
.end method

.method public h0()V
  .registers 7
  .line 1
    iget-object v0, p0, Lc/e/b/k/e;->F:Lc/e/b/k/d;
    invoke-virtual { v0 }, Lc/e/b/k/d;->p()V
  .line 2
    iget-object v0, p0, Lc/e/b/k/e;->G:Lc/e/b/k/d;
    invoke-virtual { v0 }, Lc/e/b/k/d;->p()V
  .line 3
    iget-object v0, p0, Lc/e/b/k/e;->H:Lc/e/b/k/d;
    invoke-virtual { v0 }, Lc/e/b/k/d;->p()V
  .line 4
    iget-object v0, p0, Lc/e/b/k/e;->I:Lc/e/b/k/d;
    invoke-virtual { v0 }, Lc/e/b/k/d;->p()V
  .line 5
    iget-object v0, p0, Lc/e/b/k/e;->J:Lc/e/b/k/d;
    invoke-virtual { v0 }, Lc/e/b/k/d;->p()V
  .line 6
    iget-object v0, p0, Lc/e/b/k/e;->K:Lc/e/b/k/d;
    invoke-virtual { v0 }, Lc/e/b/k/d;->p()V
  .line 7
    iget-object v0, p0, Lc/e/b/k/e;->L:Lc/e/b/k/d;
    invoke-virtual { v0 }, Lc/e/b/k/d;->p()V
  .line 8
    iget-object v0, p0, Lc/e/b/k/e;->M:Lc/e/b/k/d;
    invoke-virtual { v0 }, Lc/e/b/k/d;->p()V
    const/4 v0, 0
  .line 9
    iput-object v0, p0, Lc/e/b/k/e;->R:Lc/e/b/k/e;
    const/4 v1, 0
  .line 10
    iput v1, p0, Lc/e/b/k/e;->z:F
    const/4 v2, 0
  .line 11
    iput v2, p0, Lc/e/b/k/e;->S:I
  .line 12
    iput v2, p0, Lc/e/b/k/e;->T:I
  .line 13
    iput v1, p0, Lc/e/b/k/e;->U:F
    const/4 v1, -1
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
    const/4 v5, 1
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
    const/high16 v3, -16512
    aput v3, v0, v2
  .line 30
    aput v3, v0, v5
  .line 31
    iput v1, p0, Lc/e/b/k/e;->l:I
  .line 32
    iput v1, p0, Lc/e/b/k/e;->m:I
  .line 33
    iget-object v0, p0, Lc/e/b/k/e;->y:[I
    const v3, 2147483647
    aput v3, v0, v2
  .line 34
    aput v3, v0, v5
  .line 35
    iput v2, p0, Lc/e/b/k/e;->n:I
  .line 36
    iput v2, p0, Lc/e/b/k/e;->o:I
    const/high16 v0, 16256
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
    const/4 v0, 0
  .line 1
    iput-boolean v0, p0, Lc/e/b/k/e;->j:Z
  .line 2
    iput-boolean v0, p0, Lc/e/b/k/e;->k:Z
  .line 3
    iget-object v1, p0, Lc/e/b/k/e;->O:Ljava/util/ArrayList;
    invoke-virtual { v1 }, Ljava/util/ArrayList;->size()I
    move-result v1
  :L0
    if-ge v0, v1, :L1
  .line 4
    iget-object v2, p0, Lc/e/b/k/e;->O:Ljava/util/ArrayList;
    invoke-virtual { v2, v0 }, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
    move-result-object v2
    check-cast v2, Lc/e/b/k/d;
  .line 5
    invoke-virtual { v2 }, Lc/e/b/k/d;->q()V
    add-int/lit8 v0, v0, 1
    goto :L0
  :L1
    return-void
.end method

.method public j(Lc/e/b/k/e;FI)V
  .registers 10
  .line 1
    sget-object v3, Lc/e/b/k/d$b;->h:Lc/e/b/k/d$b;
    const/4 v5, 0
    move-object v0, p0
    move-object v1, v3
    move-object v2, p1
    move v4, p3
    invoke-virtual/range { v0 .. v5 }, Lc/e/b/k/e;->X(Lc/e/b/k/d$b;Lc/e/b/k/e;Lc/e/b/k/d$b;II)V
  .line 2
    iput p2, p0, Lc/e/b/k/e;->z:F
    return-void
.end method

.method public j0(Lc/e/b/c;)V
  .registers 3
  .line 1
    iget-object v0, p0, Lc/e/b/k/e;->F:Lc/e/b/k/d;
    invoke-virtual { v0, p1 }, Lc/e/b/k/d;->r(Lc/e/b/c;)V
  .line 2
    iget-object v0, p0, Lc/e/b/k/e;->G:Lc/e/b/k/d;
    invoke-virtual { v0, p1 }, Lc/e/b/k/d;->r(Lc/e/b/c;)V
  .line 3
    iget-object v0, p0, Lc/e/b/k/e;->H:Lc/e/b/k/d;
    invoke-virtual { v0, p1 }, Lc/e/b/k/d;->r(Lc/e/b/c;)V
  .line 4
    iget-object v0, p0, Lc/e/b/k/e;->I:Lc/e/b/k/d;
    invoke-virtual { v0, p1 }, Lc/e/b/k/d;->r(Lc/e/b/c;)V
  .line 5
    iget-object v0, p0, Lc/e/b/k/e;->J:Lc/e/b/k/d;
    invoke-virtual { v0, p1 }, Lc/e/b/k/d;->r(Lc/e/b/c;)V
  .line 6
    iget-object v0, p0, Lc/e/b/k/e;->M:Lc/e/b/k/d;
    invoke-virtual { v0, p1 }, Lc/e/b/k/d;->r(Lc/e/b/c;)V
  .line 7
    iget-object v0, p0, Lc/e/b/k/e;->K:Lc/e/b/k/d;
    invoke-virtual { v0, p1 }, Lc/e/b/k/d;->r(Lc/e/b/c;)V
  .line 8
    iget-object v0, p0, Lc/e/b/k/e;->L:Lc/e/b/k/d;
    invoke-virtual { v0, p1 }, Lc/e/b/k/d;->r(Lc/e/b/c;)V
    return-void
.end method

.method public k(Lc/e/b/d;)V
  .registers 3
  .line 1
    iget-object v0, p0, Lc/e/b/k/e;->F:Lc/e/b/k/d;
    invoke-virtual { p1, v0 }, Lc/e/b/d;->q(Ljava/lang/Object;)Lc/e/b/i;
  .line 2
    iget-object v0, p0, Lc/e/b/k/e;->G:Lc/e/b/k/d;
    invoke-virtual { p1, v0 }, Lc/e/b/d;->q(Ljava/lang/Object;)Lc/e/b/i;
  .line 3
    iget-object v0, p0, Lc/e/b/k/e;->H:Lc/e/b/k/d;
    invoke-virtual { p1, v0 }, Lc/e/b/d;->q(Ljava/lang/Object;)Lc/e/b/i;
  .line 4
    iget-object v0, p0, Lc/e/b/k/e;->I:Lc/e/b/k/d;
    invoke-virtual { p1, v0 }, Lc/e/b/d;->q(Ljava/lang/Object;)Lc/e/b/i;
  .line 5
    iget v0, p0, Lc/e/b/k/e;->Y:I
    if-lez v0, :L0
  .line 6
    iget-object v0, p0, Lc/e/b/k/e;->J:Lc/e/b/k/d;
    invoke-virtual { p1, v0 }, Lc/e/b/d;->q(Ljava/lang/Object;)Lc/e/b/i;
  :L0
    return-void
.end method

.method public k0(I)V
  .registers 2
  .line 1
    iput p1, p0, Lc/e/b/k/e;->Y:I
    if-lez p1, :L0
    const/4 p1, 1
    goto :L1
  :L0
    const/4 p1, 0
  :L1
  .line 2
    iput-boolean p1, p0, Lc/e/b/k/e;->A:Z
    return-void
.end method

.method public l()V
  .registers 2
  .line 1
    iget-object v0, p0, Lc/e/b/k/e;->d:Lc/e/b/k/m/l;
    if-nez v0, :L0
  .line 2
    new-instance v0, Lc/e/b/k/m/l;
    invoke-direct { v0, p0 }, Lc/e/b/k/m/l;-><init>(Lc/e/b/k/e;)V
    iput-object v0, p0, Lc/e/b/k/e;->d:Lc/e/b/k/m/l;
  :L0
  .line 3
    iget-object v0, p0, Lc/e/b/k/e;->e:Lc/e/b/k/m/n;
    if-nez v0, :L1
  .line 4
    new-instance v0, Lc/e/b/k/m/n;
    invoke-direct { v0, p0 }, Lc/e/b/k/m/n;-><init>(Lc/e/b/k/e;)V
    iput-object v0, p0, Lc/e/b/k/e;->e:Lc/e/b/k/m/n;
  :L1
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
    invoke-virtual { p1 }, Ljava/lang/Enum;->ordinal()I
    move-result v1
    aget v0, v0, v1
    packed-switch v0, :L9
  .line 2
    new-instance v0, Ljava/lang/AssertionError;
    invoke-virtual { p1 }, Ljava/lang/Enum;->name()Ljava/lang/String;
    move-result-object p1
    invoke-direct { v0, p1 }, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V
    throw v0
  :L0
    const/4 p1, 0
    return-object p1
  :L1
  .line 3
    iget-object p1, p0, Lc/e/b/k/e;->L:Lc/e/b/k/d;
    return-object p1
  :L2
  .line 4
    iget-object p1, p0, Lc/e/b/k/e;->K:Lc/e/b/k/d;
    return-object p1
  :L3
  .line 5
    iget-object p1, p0, Lc/e/b/k/e;->M:Lc/e/b/k/d;
    return-object p1
  :L4
  .line 6
    iget-object p1, p0, Lc/e/b/k/e;->J:Lc/e/b/k/d;
    return-object p1
  :L5
  .line 7
    iget-object p1, p0, Lc/e/b/k/e;->I:Lc/e/b/k/d;
    return-object p1
  :L6
  .line 8
    iget-object p1, p0, Lc/e/b/k/e;->H:Lc/e/b/k/d;
    return-object p1
  :L7
  .line 9
    iget-object p1, p0, Lc/e/b/k/e;->G:Lc/e/b/k/d;
    return-object p1
  :L8
  .line 10
    iget-object p1, p0, Lc/e/b/k/e;->F:Lc/e/b/k/d;
    return-object p1
  :L9
  .packed-switch 1
    :L8
    :L7
    :L6
    :L5
    :L4
    :L3
    :L2
    :L1
    :L0
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
  .catch Ljava/lang/NumberFormatException; { :L4 .. :L6 } :L10
  .catch Ljava/lang/NumberFormatException; { :L8 .. :L9 } :L10
  .registers 10
    const/4 v0, 0
    if-eqz p1, :L13
  .line 1
    invoke-virtual { p1 }, Ljava/lang/String;->length()I
    move-result v1
    if-nez v1, :L0
    goto/16 :L13
  :L0
    const/4 v1, -1
  .line 2
    invoke-virtual { p1 }, Ljava/lang/String;->length()I
    move-result v2
    const/16 v3, 44
  .line 3
    invoke-virtual { p1, v3 }, Ljava/lang/String;->indexOf(I)I
    move-result v3
    const/4 v4, 0
    const/4 v5, 1
    if-lez v3, :L3
    add-int/lit8 v6, v2, -1
    if-ge v3, v6, :L3
  .line 4
    invoke-virtual { p1, v4, v3 }, Ljava/lang/String;->substring(II)Ljava/lang/String;
    move-result-object v6
    const-string v7, "W"
  .line 5
    invoke-virtual { v6, v7 }, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    move-result v7
    if-eqz v7, :L1
    const/4 v1, 0
    goto :L2
  :L1
    const-string v4, "H"
  .line 6
    invoke-virtual { v6, v4 }, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    move-result v4
    if-eqz v4, :L2
    const/4 v1, 1
  :L2
    add-int/lit8 v4, v3, 1
  :L3
    const/16 v3, 58
  .line 7
    invoke-virtual { p1, v3 }, Ljava/lang/String;->indexOf(I)I
    move-result v3
    if-ltz v3, :L7
    sub-int/2addr v2, v5
    if-ge v3, v2, :L7
  .line 8
    invoke-virtual { p1, v4, v3 }, Ljava/lang/String;->substring(II)Ljava/lang/String;
    move-result-object v2
    add-int/2addr v3, v5
  .line 9
    invoke-virtual { p1, v3 }, Ljava/lang/String;->substring(I)Ljava/lang/String;
    move-result-object p1
  .line 10
    invoke-virtual { v2 }, Ljava/lang/String;->length()I
    move-result v3
    if-lez v3, :L10
    invoke-virtual { p1 }, Ljava/lang/String;->length()I
    move-result v3
    if-lez v3, :L10
  :L4
  .line 11
    invoke-static { v2 }, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    move-result v2
  .line 12
    invoke-static { p1 }, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    move-result p1
    cmpl-float v3, v2, v0
    if-lez v3, :L10
    cmpl-float v3, p1, v0
    if-lez v3, :L10
    if-ne v1, v5, :L5
    div-float/2addr p1, v2
  .line 13
    invoke-static { p1 }, Ljava/lang/Math;->abs(F)F
    move-result p1
    goto :L11
  :L5
    div-float/2addr v2, p1
  .line 14
    invoke-static { v2 }, Ljava/lang/Math;->abs(F)F
    move-result p1
  :L6
    goto :L11
  :L7
  .line 15
    invoke-virtual { p1, v4 }, Ljava/lang/String;->substring(I)Ljava/lang/String;
    move-result-object p1
  .line 16
    invoke-virtual { p1 }, Ljava/lang/String;->length()I
    move-result v2
    if-lez v2, :L10
  :L8
  .line 17
    invoke-static { p1 }, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    move-result p1
  :L9
    goto :L11
  :L10
    const/4 p1, 0
  :L11
    cmpl-float v0, p1, v0
    if-lez v0, :L12
  .line 18
    iput p1, p0, Lc/e/b/k/e;->U:F
  .line 19
    iput v1, p0, Lc/e/b/k/e;->V:I
  :L12
    return-void
  :L13
  .line 20
    iput v0, p0, Lc/e/b/k/e;->U:F
    return-void
.end method

.method public o(I)F
  .registers 3
    if-nez p1, :L0
  .line 1
    iget p1, p0, Lc/e/b/k/e;->b0:F
    return p1
  :L0
    const/4 v0, 1
    if-ne p1, v0, :L1
  .line 2
    iget p1, p0, Lc/e/b/k/e;->c0:F
    return p1
  :L1
    const/high16 p1, -16512
    return p1
.end method

.method public o0(I)V
  .registers 5
  .line 1
    iget-boolean v0, p0, Lc/e/b/k/e;->A:Z
    if-nez v0, :L0
    return-void
  :L0
  .line 2
    iget v0, p0, Lc/e/b/k/e;->Y:I
    sub-int v0, p1, v0
  .line 3
    iget v1, p0, Lc/e/b/k/e;->T:I
    add-int/2addr v1, v0
  .line 4
    iput v0, p0, Lc/e/b/k/e;->X:I
  .line 5
    iget-object v2, p0, Lc/e/b/k/e;->G:Lc/e/b/k/d;
    invoke-virtual { v2, v0 }, Lc/e/b/k/d;->s(I)V
  .line 6
    iget-object v0, p0, Lc/e/b/k/e;->I:Lc/e/b/k/d;
    invoke-virtual { v0, v1 }, Lc/e/b/k/d;->s(I)V
  .line 7
    iget-object v0, p0, Lc/e/b/k/e;->J:Lc/e/b/k/d;
    invoke-virtual { v0, p1 }, Lc/e/b/k/d;->s(I)V
    const/4 p1, 1
  .line 8
    iput-boolean p1, p0, Lc/e/b/k/e;->k:Z
    return-void
.end method

.method public p()I
  .registers 3
  .line 1
    invoke-virtual { p0 }, Lc/e/b/k/e;->T()I
    move-result v0
    iget v1, p0, Lc/e/b/k/e;->T:I
    add-int/2addr v0, v1
    return v0
.end method

.method public p0(II)V
  .registers 4
  .line 1
    iget-object v0, p0, Lc/e/b/k/e;->F:Lc/e/b/k/d;
    invoke-virtual { v0, p1 }, Lc/e/b/k/d;->s(I)V
  .line 2
    iget-object v0, p0, Lc/e/b/k/e;->H:Lc/e/b/k/d;
    invoke-virtual { v0, p2 }, Lc/e/b/k/d;->s(I)V
  .line 3
    iput p1, p0, Lc/e/b/k/e;->W:I
    sub-int/2addr p2, p1
  .line 4
    iput p2, p0, Lc/e/b/k/e;->S:I
    const/4 p1, 1
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
    invoke-virtual { v0, p1 }, Lc/e/b/k/d;->s(I)V
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
    invoke-virtual { v0, p1 }, Lc/e/b/k/d;->s(I)V
  .line 2
    iput p1, p0, Lc/e/b/k/e;->X:I
    return-void
.end method

.method public s(I)Lc/e/b/k/e$b;
  .registers 3
    if-nez p1, :L0
  .line 1
    invoke-virtual { p0 }, Lc/e/b/k/e;->y()Lc/e/b/k/e$b;
    move-result-object p1
    return-object p1
  :L0
    const/4 v0, 1
    if-ne p1, v0, :L1
  .line 2
    invoke-virtual { p0 }, Lc/e/b/k/e;->O()Lc/e/b/k/e$b;
    move-result-object p1
    return-object p1
  :L1
    const/4 p1, 0
    return-object p1
.end method

.method public s0(II)V
  .registers 4
  .line 1
    iget-object v0, p0, Lc/e/b/k/e;->G:Lc/e/b/k/d;
    invoke-virtual { v0, p1 }, Lc/e/b/k/d;->s(I)V
  .line 2
    iget-object v0, p0, Lc/e/b/k/e;->I:Lc/e/b/k/d;
    invoke-virtual { v0, p2 }, Lc/e/b/k/d;->s(I)V
  .line 3
    iput p1, p0, Lc/e/b/k/e;->X:I
    sub-int/2addr p2, p1
  .line 4
    iput p2, p0, Lc/e/b/k/e;->T:I
  .line 5
    iget-boolean p2, p0, Lc/e/b/k/e;->A:Z
    if-eqz p2, :L0
  .line 6
    iget-object p2, p0, Lc/e/b/k/e;->J:Lc/e/b/k/d;
    iget v0, p0, Lc/e/b/k/e;->Y:I
    add-int/2addr p1, v0
    invoke-virtual { p2, p1 }, Lc/e/b/k/d;->s(I)V
  :L0
    const/4 p1, 1
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
    const/4 p2, 0
    const/16 v0, 8
    if-ne p1, v0, :L0
  .line 4
    iput p2, p0, Lc/e/b/k/e;->S:I
  .line 5
    iput p2, p0, Lc/e/b/k/e;->T:I
    return-void
  :L0
  .line 6
    iget-object p1, p0, Lc/e/b/k/e;->Q:[Lc/e/b/k/e$b;
    aget-object p1, p1, p2
    sget-object p2, Lc/e/b/k/e$b;->b:Lc/e/b/k/e$b;
    if-ne p1, p2, :L1
    iget p1, p0, Lc/e/b/k/e;->S:I
    if-ge p3, p1, :L1
    move p3, p1
  :L1
  .line 7
    iget-object p1, p0, Lc/e/b/k/e;->Q:[Lc/e/b/k/e$b;
    const/4 p2, 1
    aget-object p1, p1, p2
    sget-object p2, Lc/e/b/k/e$b;->b:Lc/e/b/k/e$b;
    if-ne p1, p2, :L2
    iget p1, p0, Lc/e/b/k/e;->T:I
    if-ge p4, p1, :L2
    move p4, p1
  :L2
  .line 8
    iput p3, p0, Lc/e/b/k/e;->S:I
  .line 9
    iput p4, p0, Lc/e/b/k/e;->T:I
  .line 10
    iget p1, p0, Lc/e/b/k/e;->a0:I
    if-ge p4, p1, :L3
  .line 11
    iput p1, p0, Lc/e/b/k/e;->T:I
  :L3
  .line 12
    iget p1, p0, Lc/e/b/k/e;->S:I
    iget p2, p0, Lc/e/b/k/e;->Z:I
    if-ge p1, p2, :L4
  .line 13
    iput p2, p0, Lc/e/b/k/e;->S:I
  :L4
    return-void
.end method

.method public toString()Ljava/lang/String;
  .registers 6
  .line 1
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    iget-object v1, p0, Lc/e/b/k/e;->g0:Ljava/lang/String;
    const-string v2, " "
    const-string v3, ""
    if-eqz v1, :L0
    new-instance v1, Ljava/lang/StringBuilder;
    invoke-direct { v1 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v4, "type: "
    invoke-virtual { v1, v4 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget-object v4, p0, Lc/e/b/k/e;->g0:Ljava/lang/String;
    invoke-virtual { v1, v4 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v1
    goto :L1
  :L0
    move-object v1, v3
  :L1
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget-object v1, p0, Lc/e/b/k/e;->f0:Ljava/lang/String;
    if-eqz v1, :L2
    new-instance v1, Ljava/lang/StringBuilder;
    invoke-direct { v1 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v3, "id: "
    invoke-virtual { v1, v3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget-object v3, p0, Lc/e/b/k/e;->f0:Ljava/lang/String;
    invoke-virtual { v1, v3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v3
  :L2
    invoke-virtual { v0, v3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string v1, "("
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget v1, p0, Lc/e/b/k/e;->W:I
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    const-string v1, ", "
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget v1, p0, Lc/e/b/k/e;->X:I
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    const-string v1, ") - ("
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget v1, p0, Lc/e/b/k/e;->S:I
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    const-string v1, " x "
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget v1, p0, Lc/e/b/k/e;->T:I
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    const-string v1, ")"
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
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
    const/16 v1, 8
    if-ne v0, v1, :L0
    const/4 v0, 0
    return v0
  :L0
  .line 2
    iget v0, p0, Lc/e/b/k/e;->T:I
    return v0
.end method

.method public v0(I)V
  .registers 3
  .line 1
    iput p1, p0, Lc/e/b/k/e;->T:I
  .line 2
    iget v0, p0, Lc/e/b/k/e;->a0:I
    if-ge p1, v0, :L0
  .line 3
    iput v0, p0, Lc/e/b/k/e;->T:I
  :L0
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
    const/4 v1, 0
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
    if-ge p2, p1, :L0
  .line 4
    iput p1, p0, Lc/e/b/k/e;->S:I
  :L0
    return-void
.end method

.method public z()I
  .registers 3
  .line 1
    iget-object v0, p0, Lc/e/b/k/e;->F:Lc/e/b/k/d;
    const/4 v1, 0
    if-eqz v0, :L0
  .line 2
    iget v0, v0, Lc/e/b/k/d;->g:I
    add-int/2addr v1, v0
  :L0
  .line 3
    iget-object v0, p0, Lc/e/b/k/e;->H:Lc/e/b/k/d;
    if-eqz v0, :L1
  .line 4
    iget v0, v0, Lc/e/b/k/d;->g:I
    add-int/2addr v1, v0
  :L1
    return v1
.end method

.method public z0(Lc/e/b/k/e$b;)V
  .registers 4
  .line 1
    iget-object v0, p0, Lc/e/b/k/e;->Q:[Lc/e/b/k/e$b;
    const/4 v1, 0
    aput-object p1, v0, v1
    return-void
.end method
