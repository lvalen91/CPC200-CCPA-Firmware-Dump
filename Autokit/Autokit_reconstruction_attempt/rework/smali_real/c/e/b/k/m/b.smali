.class public Lc/e/b/k/m/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/e/b/k/m/b$a;,
        Lc/e/b/k/m/b$b;
    }
.end annotation


# instance fields
.field private final a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lc/e/b/k/e;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lc/e/b/k/m/b$a;

.field private c:Lc/e/b/k/f;


# direct methods
.method public constructor <init>(Lc/e/b/k/f;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lc/e/b/k/m/b;->a:Ljava/util/ArrayList;

    .line 3
    new-instance v0, Lc/e/b/k/m/b$a;

    invoke-direct {v0}, Lc/e/b/k/m/b$a;-><init>()V

    iput-object v0, p0, Lc/e/b/k/m/b;->b:Lc/e/b/k/m/b$a;

    .line 4
    iput-object p1, p0, Lc/e/b/k/m/b;->c:Lc/e/b/k/f;

    return-void
.end method

.method private a(Lc/e/b/k/m/b$b;Lc/e/b/k/e;I)Z
    .registers 8

    .line 1
    iget-object v0, p0, Lc/e/b/k/m/b;->b:Lc/e/b/k/m/b$a;

    invoke-virtual {p2}, Lc/e/b/k/e;->y()Lc/e/b/k/e$b;

    move-result-object v1

    iput-object v1, v0, Lc/e/b/k/m/b$a;->a:Lc/e/b/k/e$b;

    .line 2
    iget-object v0, p0, Lc/e/b/k/m/b;->b:Lc/e/b/k/m/b$a;

    invoke-virtual {p2}, Lc/e/b/k/e;->O()Lc/e/b/k/e$b;

    move-result-object v1

    iput-object v1, v0, Lc/e/b/k/m/b$a;->b:Lc/e/b/k/e$b;

    .line 3
    iget-object v0, p0, Lc/e/b/k/m/b;->b:Lc/e/b/k/m/b$a;

    invoke-virtual {p2}, Lc/e/b/k/e;->R()I

    move-result v1

    iput v1, v0, Lc/e/b/k/m/b$a;->c:I

    .line 4
    iget-object v0, p0, Lc/e/b/k/m/b;->b:Lc/e/b/k/m/b$a;

    invoke-virtual {p2}, Lc/e/b/k/e;->v()I

    move-result v1

    iput v1, v0, Lc/e/b/k/m/b$a;->d:I

    .line 5
    iget-object v0, p0, Lc/e/b/k/m/b;->b:Lc/e/b/k/m/b$a;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lc/e/b/k/m/b$a;->i:Z

    .line 6
    iput p3, v0, Lc/e/b/k/m/b$a;->j:I

    .line 7
    iget-object p3, v0, Lc/e/b/k/m/b$a;->a:Lc/e/b/k/e$b;

    sget-object v0, Lc/e/b/k/e$b;->d:Lc/e/b/k/e$b;

    const/4 v2, 0x1

    if-ne p3, v0, :cond_30

    const/4 p3, 0x1

    goto :goto_31

    :cond_30
    const/4 p3, 0x0

    .line 8
    :goto_31
    iget-object v0, p0, Lc/e/b/k/m/b;->b:Lc/e/b/k/m/b$a;

    iget-object v0, v0, Lc/e/b/k/m/b$a;->b:Lc/e/b/k/e$b;

    sget-object v3, Lc/e/b/k/e$b;->d:Lc/e/b/k/e$b;

    if-ne v0, v3, :cond_3b

    const/4 v0, 0x1

    goto :goto_3c

    :cond_3b
    const/4 v0, 0x0

    :goto_3c
    const/4 v3, 0x0

    if-eqz p3, :cond_47

    .line 9
    iget p3, p2, Lc/e/b/k/e;->U:F

    cmpl-float p3, p3, v3

    if-lez p3, :cond_47

    const/4 p3, 0x1

    goto :goto_48

    :cond_47
    const/4 p3, 0x0

    :goto_48
    if-eqz v0, :cond_52

    .line 10
    iget v0, p2, Lc/e/b/k/e;->U:F

    cmpl-float v0, v0, v3

    if-lez v0, :cond_52

    const/4 v0, 0x1

    goto :goto_53

    :cond_52
    const/4 v0, 0x0

    :goto_53
    const/4 v3, 0x4

    if-eqz p3, :cond_62

    .line 11
    iget-object p3, p2, Lc/e/b/k/e;->p:[I

    aget p3, p3, v1

    if-ne p3, v3, :cond_62

    .line 12
    iget-object p3, p0, Lc/e/b/k/m/b;->b:Lc/e/b/k/m/b$a;

    sget-object v1, Lc/e/b/k/e$b;->b:Lc/e/b/k/e$b;

    iput-object v1, p3, Lc/e/b/k/m/b$a;->a:Lc/e/b/k/e$b;

    :cond_62
    if-eqz v0, :cond_70

    .line 13
    iget-object p3, p2, Lc/e/b/k/e;->p:[I

    aget p3, p3, v2

    if-ne p3, v3, :cond_70

    .line 14
    iget-object p3, p0, Lc/e/b/k/m/b;->b:Lc/e/b/k/m/b$a;

    sget-object v0, Lc/e/b/k/e$b;->b:Lc/e/b/k/e$b;

    iput-object v0, p3, Lc/e/b/k/m/b$a;->b:Lc/e/b/k/e$b;

    .line 15
    :cond_70
    iget-object p3, p0, Lc/e/b/k/m/b;->b:Lc/e/b/k/m/b$a;

    invoke-interface {p1, p2, p3}, Lc/e/b/k/m/b$b;->a(Lc/e/b/k/e;Lc/e/b/k/m/b$a;)V

    .line 16
    iget-object p1, p0, Lc/e/b/k/m/b;->b:Lc/e/b/k/m/b$a;

    iget p1, p1, Lc/e/b/k/m/b$a;->e:I

    invoke-virtual {p2, p1}, Lc/e/b/k/e;->U0(I)V

    .line 17
    iget-object p1, p0, Lc/e/b/k/m/b;->b:Lc/e/b/k/m/b$a;

    iget p1, p1, Lc/e/b/k/m/b$a;->f:I

    invoke-virtual {p2, p1}, Lc/e/b/k/e;->v0(I)V

    .line 18
    iget-object p1, p0, Lc/e/b/k/m/b;->b:Lc/e/b/k/m/b$a;

    iget-boolean p1, p1, Lc/e/b/k/m/b$a;->h:Z

    invoke-virtual {p2, p1}, Lc/e/b/k/e;->u0(Z)V

    .line 19
    iget-object p1, p0, Lc/e/b/k/m/b;->b:Lc/e/b/k/m/b$a;

    iget p1, p1, Lc/e/b/k/m/b$a;->g:I

    invoke-virtual {p2, p1}, Lc/e/b/k/e;->k0(I)V

    .line 20
    iget-object p1, p0, Lc/e/b/k/m/b;->b:Lc/e/b/k/m/b$a;

    sget p2, Lc/e/b/k/m/b$a;->k:I

    iput p2, p1, Lc/e/b/k/m/b$a;->j:I

    .line 21
    iget-boolean p1, p1, Lc/e/b/k/m/b$a;->i:Z

    return p1
.end method

.method private b(Lc/e/b/k/f;)V
    .registers 14

    .line 1
    iget-object v0, p1, Lc/e/b/k/l;->p0:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v1, 0x40

    .line 2
    invoke-virtual {p1, v1}, Lc/e/b/k/f;->B1(I)Z

    move-result v1

    .line 3
    invoke-virtual {p1}, Lc/e/b/k/f;->r1()Lc/e/b/k/m/b$b;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_12
    if-ge v4, v0, :cond_b6

    .line 4
    iget-object v5, p1, Lc/e/b/k/l;->p0:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lc/e/b/k/e;

    .line 5
    instance-of v6, v5, Lc/e/b/k/g;

    if-eqz v6, :cond_22

    goto/16 :goto_b2

    .line 6
    :cond_22
    instance-of v6, v5, Lc/e/b/k/a;

    if-eqz v6, :cond_28

    goto/16 :goto_b2

    .line 7
    :cond_28
    invoke-virtual {v5}, Lc/e/b/k/e;->c0()Z

    move-result v6

    if-eqz v6, :cond_30

    goto/16 :goto_b2

    :cond_30
    if-eqz v1, :cond_48

    .line 8
    iget-object v6, v5, Lc/e/b/k/e;->d:Lc/e/b/k/m/l;

    if-eqz v6, :cond_48

    iget-object v7, v5, Lc/e/b/k/e;->e:Lc/e/b/k/m/n;

    if-eqz v7, :cond_48

    iget-object v6, v6, Lc/e/b/k/m/p;->e:Lc/e/b/k/m/g;

    iget-boolean v6, v6, Lc/e/b/k/m/f;->j:Z

    if-eqz v6, :cond_48

    iget-object v6, v7, Lc/e/b/k/m/p;->e:Lc/e/b/k/m/g;

    iget-boolean v6, v6, Lc/e/b/k/m/f;->j:Z

    if-eqz v6, :cond_48

    goto/16 :goto_b2

    .line 9
    :cond_48
    invoke-virtual {v5, v3}, Lc/e/b/k/e;->s(I)Lc/e/b/k/e$b;

    move-result-object v6

    const/4 v7, 0x1

    .line 10
    invoke-virtual {v5, v7}, Lc/e/b/k/e;->s(I)Lc/e/b/k/e$b;

    move-result-object v8

    .line 11
    sget-object v9, Lc/e/b/k/e$b;->d:Lc/e/b/k/e$b;

    if-ne v6, v9, :cond_61

    iget v10, v5, Lc/e/b/k/e;->n:I

    if-eq v10, v7, :cond_61

    if-ne v8, v9, :cond_61

    iget v9, v5, Lc/e/b/k/e;->o:I

    if-eq v9, v7, :cond_61

    const/4 v9, 0x1

    goto :goto_62

    :cond_61
    const/4 v9, 0x0

    :goto_62
    if-nez v9, :cond_9e

    .line 12
    invoke-virtual {p1, v7}, Lc/e/b/k/f;->B1(I)Z

    move-result v10

    if-eqz v10, :cond_9e

    instance-of v10, v5, Lc/e/b/k/k;

    if-nez v10, :cond_9e

    .line 13
    sget-object v10, Lc/e/b/k/e$b;->d:Lc/e/b/k/e$b;

    if-ne v6, v10, :cond_7f

    iget v11, v5, Lc/e/b/k/e;->n:I

    if-nez v11, :cond_7f

    if-eq v8, v10, :cond_7f

    .line 14
    invoke-virtual {v5}, Lc/e/b/k/e;->Z()Z

    move-result v10

    if-nez v10, :cond_7f

    const/4 v9, 0x1

    .line 15
    :cond_7f
    sget-object v10, Lc/e/b/k/e$b;->d:Lc/e/b/k/e$b;

    if-ne v8, v10, :cond_90

    iget v11, v5, Lc/e/b/k/e;->o:I

    if-nez v11, :cond_90

    if-eq v6, v10, :cond_90

    .line 16
    invoke-virtual {v5}, Lc/e/b/k/e;->Z()Z

    move-result v10

    if-nez v10, :cond_90

    const/4 v9, 0x1

    .line 17
    :cond_90
    sget-object v10, Lc/e/b/k/e$b;->d:Lc/e/b/k/e$b;

    if-eq v6, v10, :cond_96

    if-ne v8, v10, :cond_9e

    :cond_96
    iget v6, v5, Lc/e/b/k/e;->U:F

    const/4 v8, 0x0

    cmpl-float v6, v6, v8

    if-lez v6, :cond_9e

    goto :goto_9f

    :cond_9e
    move v7, v9

    :goto_9f
    if-eqz v7, :cond_a2

    goto :goto_b2

    .line 18
    :cond_a2
    sget v6, Lc/e/b/k/m/b$a;->k:I

    invoke-direct {p0, v2, v5, v6}, Lc/e/b/k/m/b;->a(Lc/e/b/k/m/b$b;Lc/e/b/k/e;I)Z

    .line 19
    iget-object v5, p1, Lc/e/b/k/f;->u0:Lc/e/b/e;

    if-eqz v5, :cond_b2

    .line 20
    iget-wide v6, v5, Lc/e/b/e;->a:J

    const-wide/16 v8, 0x1

    add-long/2addr v6, v8

    iput-wide v6, v5, Lc/e/b/e;->a:J

    :cond_b2
    :goto_b2
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_12

    .line 21
    :cond_b6
    invoke-interface {v2}, Lc/e/b/k/m/b$b;->b()V

    return-void
.end method

.method private c(Lc/e/b/k/f;Ljava/lang/String;II)V
    .registers 7

    .line 1
    invoke-virtual {p1}, Lc/e/b/k/e;->G()I

    move-result p2

    .line 2
    invoke-virtual {p1}, Lc/e/b/k/e;->F()I

    move-result v0

    const/4 v1, 0x0

    .line 3
    invoke-virtual {p1, v1}, Lc/e/b/k/e;->K0(I)V

    .line 4
    invoke-virtual {p1, v1}, Lc/e/b/k/e;->J0(I)V

    .line 5
    invoke-virtual {p1, p3}, Lc/e/b/k/e;->U0(I)V

    .line 6
    invoke-virtual {p1, p4}, Lc/e/b/k/e;->v0(I)V

    .line 7
    invoke-virtual {p1, p2}, Lc/e/b/k/e;->K0(I)V

    .line 8
    invoke-virtual {p1, v0}, Lc/e/b/k/e;->J0(I)V

    .line 9
    iget-object p1, p0, Lc/e/b/k/m/b;->c:Lc/e/b/k/f;

    invoke-virtual {p1}, Lc/e/b/k/f;->b1()V

    return-void
.end method


# virtual methods
.method public d(Lc/e/b/k/f;IIIIIIIII)J
    .registers 33

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p5

    move/from16 v4, p7

    .line 1
    invoke-virtual/range {p1 .. p1}, Lc/e/b/k/f;->r1()Lc/e/b/k/m/b$b;

    move-result-object v5

    .line 2
    iget-object v6, v1, Lc/e/b/k/l;->p0:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 3
    invoke-virtual/range {p1 .. p1}, Lc/e/b/k/e;->R()I

    move-result v7

    .line 4
    invoke-virtual/range {p1 .. p1}, Lc/e/b/k/e;->v()I

    move-result v8

    const/16 v9, 0x80

    .line 5
    invoke-static {v2, v9}, Lc/e/b/k/j;->b(II)Z

    move-result v9

    const/4 v10, 0x0

    if-nez v9, :cond_30

    const/16 v12, 0x40

    .line 6
    invoke-static {v2, v12}, Lc/e/b/k/j;->b(II)Z

    move-result v2

    if-eqz v2, :cond_2e

    goto :goto_30

    :cond_2e
    const/4 v2, 0x0

    goto :goto_31

    :cond_30
    :goto_30
    const/4 v2, 0x1

    :goto_31
    if-eqz v2, :cond_8c

    const/4 v12, 0x0

    :goto_34
    if-ge v12, v6, :cond_8c

    .line 7
    iget-object v13, v1, Lc/e/b/k/l;->p0:Ljava/util/ArrayList;

    invoke-virtual {v13, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lc/e/b/k/e;

    .line 8
    invoke-virtual {v13}, Lc/e/b/k/e;->y()Lc/e/b/k/e$b;

    move-result-object v14

    sget-object v15, Lc/e/b/k/e$b;->d:Lc/e/b/k/e$b;

    if-ne v14, v15, :cond_48

    const/4 v14, 0x1

    goto :goto_49

    :cond_48
    const/4 v14, 0x0

    .line 9
    :goto_49
    invoke-virtual {v13}, Lc/e/b/k/e;->O()Lc/e/b/k/e$b;

    move-result-object v15

    sget-object v11, Lc/e/b/k/e$b;->d:Lc/e/b/k/e$b;

    if-ne v15, v11, :cond_53

    const/4 v11, 0x1

    goto :goto_54

    :cond_53
    const/4 v11, 0x0

    :goto_54
    if-eqz v14, :cond_63

    if-eqz v11, :cond_63

    .line 10
    invoke-virtual {v13}, Lc/e/b/k/e;->t()F

    move-result v11

    const/4 v14, 0x0

    cmpl-float v11, v11, v14

    if-lez v11, :cond_63

    const/4 v11, 0x1

    goto :goto_64

    :cond_63
    const/4 v11, 0x0

    .line 11
    :goto_64
    invoke-virtual {v13}, Lc/e/b/k/e;->Z()Z

    move-result v14

    if-eqz v14, :cond_6e

    if-eqz v11, :cond_6e

    :cond_6c
    :goto_6c
    const/4 v2, 0x0

    goto :goto_8c

    .line 12
    :cond_6e
    invoke-virtual {v13}, Lc/e/b/k/e;->b0()Z

    move-result v14

    if-eqz v14, :cond_77

    if-eqz v11, :cond_77

    goto :goto_6c

    .line 13
    :cond_77
    instance-of v11, v13, Lc/e/b/k/k;

    if-eqz v11, :cond_7c

    goto :goto_6c

    .line 14
    :cond_7c
    invoke-virtual {v13}, Lc/e/b/k/e;->Z()Z

    move-result v11

    if-nez v11, :cond_6c

    .line 15
    invoke-virtual {v13}, Lc/e/b/k/e;->b0()Z

    move-result v11

    if-eqz v11, :cond_89

    goto :goto_6c

    :cond_89
    add-int/lit8 v12, v12, 0x1

    goto :goto_34

    :cond_8c
    :goto_8c
    const-wide/16 v11, 0x1

    if-eqz v2, :cond_99

    .line 16
    sget-object v13, Lc/e/b/d;->x:Lc/e/b/e;

    if-eqz v13, :cond_99

    .line 17
    iget-wide v14, v13, Lc/e/b/e;->c:J

    add-long/2addr v14, v11

    iput-wide v14, v13, Lc/e/b/e;->c:J

    :cond_99
    const/high16 v13, 0x40000000    # 2.0f

    if-ne v3, v13, :cond_9f

    if-eq v4, v13, :cond_a1

    :cond_9f
    if-eqz v9, :cond_a3

    :cond_a1
    const/4 v14, 0x1

    goto :goto_a4

    :cond_a3
    const/4 v14, 0x0

    :goto_a4
    and-int/2addr v2, v14

    const/4 v14, 0x2

    if-eqz v2, :cond_10c

    .line 18
    invoke-virtual/range {p1 .. p1}, Lc/e/b/k/e;->E()I

    move-result v15

    move/from16 v11, p6

    invoke-static {v15, v11}, Ljava/lang/Math;->min(II)I

    move-result v11

    .line 19
    invoke-virtual/range {p1 .. p1}, Lc/e/b/k/e;->D()I

    move-result v12

    move/from16 v15, p8

    invoke-static {v12, v15}, Ljava/lang/Math;->min(II)I

    move-result v12

    if-ne v3, v13, :cond_ca

    .line 20
    invoke-virtual/range {p1 .. p1}, Lc/e/b/k/e;->R()I

    move-result v15

    if-eq v15, v11, :cond_ca

    .line 21
    invoke-virtual {v1, v11}, Lc/e/b/k/e;->U0(I)V

    .line 22
    invoke-virtual/range {p1 .. p1}, Lc/e/b/k/f;->u1()V

    :cond_ca
    if-ne v4, v13, :cond_d8

    .line 23
    invoke-virtual/range {p1 .. p1}, Lc/e/b/k/e;->v()I

    move-result v11

    if-eq v11, v12, :cond_d8

    .line 24
    invoke-virtual {v1, v12}, Lc/e/b/k/e;->v0(I)V

    .line 25
    invoke-virtual/range {p1 .. p1}, Lc/e/b/k/f;->u1()V

    :cond_d8
    if-ne v3, v13, :cond_e2

    if-ne v4, v13, :cond_e2

    .line 26
    invoke-virtual {v1, v9}, Lc/e/b/k/f;->o1(Z)Z

    move-result v9

    const/4 v12, 0x2

    goto :goto_fc

    .line 27
    :cond_e2
    invoke-virtual {v1, v9}, Lc/e/b/k/f;->p1(Z)Z

    move-result v11

    if-ne v3, v13, :cond_ef

    .line 28
    invoke-virtual {v1, v9, v10}, Lc/e/b/k/f;->q1(ZI)Z

    move-result v12

    and-int/2addr v11, v12

    const/4 v12, 0x1

    goto :goto_f0

    :cond_ef
    const/4 v12, 0x0

    :goto_f0
    if-ne v4, v13, :cond_fb

    const/4 v15, 0x1

    .line 29
    invoke-virtual {v1, v9, v15}, Lc/e/b/k/f;->q1(ZI)Z

    move-result v9

    and-int/2addr v9, v11

    add-int/lit8 v12, v12, 0x1

    goto :goto_fc

    :cond_fb
    move v9, v11

    :goto_fc
    if-eqz v9, :cond_10e

    if-ne v3, v13, :cond_102

    const/4 v15, 0x1

    goto :goto_103

    :cond_102
    const/4 v15, 0x0

    :goto_103
    if-ne v4, v13, :cond_107

    const/4 v3, 0x1

    goto :goto_108

    :cond_107
    const/4 v3, 0x0

    .line 30
    :goto_108
    invoke-virtual {v1, v15, v3}, Lc/e/b/k/f;->Y0(ZZ)V

    goto :goto_10e

    :cond_10c
    const/4 v9, 0x0

    const/4 v12, 0x0

    :cond_10e
    :goto_10e
    if-eqz v9, :cond_112

    if-eq v12, v14, :cond_32d

    .line 31
    :cond_112
    invoke-virtual/range {p1 .. p1}, Lc/e/b/k/f;->s1()I

    move-result v3

    if-lez v6, :cond_11b

    .line 32
    invoke-direct/range {p0 .. p1}, Lc/e/b/k/m/b;->b(Lc/e/b/k/f;)V

    .line 33
    :cond_11b
    invoke-virtual/range {p0 .. p1}, Lc/e/b/k/m/b;->e(Lc/e/b/k/f;)V

    .line 34
    iget-object v4, v0, Lc/e/b/k/m/b;->a:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v6, :cond_12b

    const-string v6, "First pass"

    .line 35
    invoke-direct {v0, v1, v6, v7, v8}, Lc/e/b/k/m/b;->c(Lc/e/b/k/f;Ljava/lang/String;II)V

    :cond_12b
    if-lez v4, :cond_329

    .line 36
    invoke-virtual/range {p1 .. p1}, Lc/e/b/k/e;->y()Lc/e/b/k/e$b;

    move-result-object v6

    sget-object v9, Lc/e/b/k/e$b;->c:Lc/e/b/k/e$b;

    if-ne v6, v9, :cond_137

    const/4 v15, 0x1

    goto :goto_138

    :cond_137
    const/4 v15, 0x0

    .line 37
    :goto_138
    invoke-virtual/range {p1 .. p1}, Lc/e/b/k/e;->O()Lc/e/b/k/e$b;

    move-result-object v6

    sget-object v9, Lc/e/b/k/e$b;->c:Lc/e/b/k/e$b;

    if-ne v6, v9, :cond_142

    const/4 v6, 0x1

    goto :goto_143

    :cond_142
    const/4 v6, 0x0

    .line 38
    :goto_143
    invoke-virtual/range {p1 .. p1}, Lc/e/b/k/e;->R()I

    move-result v9

    iget-object v11, v0, Lc/e/b/k/m/b;->c:Lc/e/b/k/f;

    invoke-virtual {v11}, Lc/e/b/k/e;->G()I

    move-result v11

    invoke-static {v9, v11}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 39
    invoke-virtual/range {p1 .. p1}, Lc/e/b/k/e;->v()I

    move-result v11

    iget-object v12, v0, Lc/e/b/k/m/b;->c:Lc/e/b/k/f;

    invoke-virtual {v12}, Lc/e/b/k/e;->F()I

    move-result v12

    invoke-static {v11, v12}, Ljava/lang/Math;->max(II)I

    move-result v11

    const/4 v12, 0x0

    const/4 v13, 0x0

    :goto_161
    if-ge v12, v4, :cond_1fd

    .line 40
    iget-object v10, v0, Lc/e/b/k/m/b;->a:Ljava/util/ArrayList;

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lc/e/b/k/e;

    .line 41
    instance-of v14, v10, Lc/e/b/k/k;

    if-nez v14, :cond_177

    move/from16 p5, v3

    move/from16 v16, v7

    move/from16 v17, v8

    goto/16 :goto_1f1

    .line 42
    :cond_177
    invoke-virtual {v10}, Lc/e/b/k/e;->R()I

    move-result v14

    move/from16 p5, v3

    .line 43
    invoke-virtual {v10}, Lc/e/b/k/e;->v()I

    move-result v3

    move/from16 v16, v7

    .line 44
    sget v7, Lc/e/b/k/m/b$a;->l:I

    invoke-direct {v0, v5, v10, v7}, Lc/e/b/k/m/b;->a(Lc/e/b/k/m/b$b;Lc/e/b/k/e;I)Z

    move-result v7

    or-int/2addr v7, v13

    .line 45
    iget-object v13, v1, Lc/e/b/k/f;->u0:Lc/e/b/e;

    move/from16 p6, v7

    move/from16 v17, v8

    if-eqz v13, :cond_19a

    .line 46
    iget-wide v7, v13, Lc/e/b/e;->b:J

    const-wide/16 v18, 0x1

    add-long v7, v7, v18

    iput-wide v7, v13, Lc/e/b/e;->b:J

    .line 47
    :cond_19a
    invoke-virtual {v10}, Lc/e/b/k/e;->R()I

    move-result v7

    .line 48
    invoke-virtual {v10}, Lc/e/b/k/e;->v()I

    move-result v8

    if-eq v7, v14, :cond_1c5

    .line 49
    invoke-virtual {v10, v7}, Lc/e/b/k/e;->U0(I)V

    if-eqz v15, :cond_1c3

    .line 50
    invoke-virtual {v10}, Lc/e/b/k/e;->K()I

    move-result v7

    if-le v7, v9, :cond_1c3

    .line 51
    invoke-virtual {v10}, Lc/e/b/k/e;->K()I

    move-result v7

    sget-object v13, Lc/e/b/k/d$b;->e:Lc/e/b/k/d$b;

    .line 52
    invoke-virtual {v10, v13}, Lc/e/b/k/e;->m(Lc/e/b/k/d$b;)Lc/e/b/k/d;

    move-result-object v13

    invoke-virtual {v13}, Lc/e/b/k/d;->e()I

    move-result v13

    add-int/2addr v7, v13

    .line 53
    invoke-static {v9, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    move v9, v7

    :cond_1c3
    const/4 v7, 0x1

    goto :goto_1c7

    :cond_1c5
    move/from16 v7, p6

    :goto_1c7
    if-eq v8, v3, :cond_1e9

    .line 54
    invoke-virtual {v10, v8}, Lc/e/b/k/e;->v0(I)V

    if-eqz v6, :cond_1e8

    .line 55
    invoke-virtual {v10}, Lc/e/b/k/e;->p()I

    move-result v3

    if-le v3, v11, :cond_1e8

    .line 56
    invoke-virtual {v10}, Lc/e/b/k/e;->p()I

    move-result v3

    sget-object v7, Lc/e/b/k/d$b;->f:Lc/e/b/k/d$b;

    .line 57
    invoke-virtual {v10, v7}, Lc/e/b/k/e;->m(Lc/e/b/k/d$b;)Lc/e/b/k/d;

    move-result-object v7

    invoke-virtual {v7}, Lc/e/b/k/d;->e()I

    move-result v7

    add-int/2addr v3, v7

    .line 58
    invoke-static {v11, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    move v11, v3

    :cond_1e8
    const/4 v7, 0x1

    .line 59
    :cond_1e9
    check-cast v10, Lc/e/b/k/k;

    .line 60
    invoke-virtual {v10}, Lc/e/b/k/k;->d1()Z

    move-result v3

    or-int v13, v7, v3

    :goto_1f1
    add-int/lit8 v12, v12, 0x1

    move/from16 v3, p5

    move/from16 v7, v16

    move/from16 v8, v17

    const/4 v10, 0x0

    const/4 v14, 0x2

    goto/16 :goto_161

    :cond_1fd
    move/from16 p5, v3

    move/from16 v16, v7

    move/from16 v17, v8

    const/4 v3, 0x0

    const/4 v7, 0x2

    :goto_205
    if-ge v3, v7, :cond_2fc

    const/4 v8, 0x0

    :goto_208
    if-ge v8, v4, :cond_2dd

    .line 61
    iget-object v10, v0, Lc/e/b/k/m/b;->a:Ljava/util/ArrayList;

    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lc/e/b/k/e;

    .line 62
    instance-of v12, v10, Lc/e/b/k/h;

    if-eqz v12, :cond_21a

    instance-of v12, v10, Lc/e/b/k/k;

    if-eqz v12, :cond_23f

    :cond_21a
    instance-of v12, v10, Lc/e/b/k/g;

    if-eqz v12, :cond_21f

    goto :goto_23f

    .line 63
    :cond_21f
    invoke-virtual {v10}, Lc/e/b/k/e;->Q()I

    move-result v12

    const/16 v14, 0x8

    if-ne v12, v14, :cond_228

    goto :goto_23f

    :cond_228
    if-eqz v2, :cond_23b

    .line 64
    iget-object v12, v10, Lc/e/b/k/e;->d:Lc/e/b/k/m/l;

    iget-object v12, v12, Lc/e/b/k/m/p;->e:Lc/e/b/k/m/g;

    iget-boolean v12, v12, Lc/e/b/k/m/f;->j:Z

    if-eqz v12, :cond_23b

    iget-object v12, v10, Lc/e/b/k/e;->e:Lc/e/b/k/m/n;

    iget-object v12, v12, Lc/e/b/k/m/p;->e:Lc/e/b/k/m/g;

    iget-boolean v12, v12, Lc/e/b/k/m/f;->j:Z

    if-eqz v12, :cond_23b

    goto :goto_23f

    .line 65
    :cond_23b
    instance-of v12, v10, Lc/e/b/k/k;

    if-eqz v12, :cond_249

    :cond_23f
    :goto_23f
    move/from16 v19, v2

    move/from16 p6, v4

    move-object/from16 v18, v5

    const-wide/16 v20, 0x1

    goto/16 :goto_2d2

    .line 66
    :cond_249
    invoke-virtual {v10}, Lc/e/b/k/e;->R()I

    move-result v12

    .line 67
    invoke-virtual {v10}, Lc/e/b/k/e;->v()I

    move-result v14

    .line 68
    invoke-virtual {v10}, Lc/e/b/k/e;->n()I

    move-result v7

    .line 69
    sget v18, Lc/e/b/k/m/b$a;->l:I

    move/from16 v19, v2

    const/4 v2, 0x1

    if-ne v3, v2, :cond_25e

    .line 70
    sget v18, Lc/e/b/k/m/b$a;->m:I

    :cond_25e
    move/from16 v2, v18

    .line 71
    invoke-direct {v0, v5, v10, v2}, Lc/e/b/k/m/b;->a(Lc/e/b/k/m/b$b;Lc/e/b/k/e;I)Z

    move-result v2

    or-int/2addr v2, v13

    .line 72
    iget-object v13, v1, Lc/e/b/k/f;->u0:Lc/e/b/e;

    move/from16 p6, v4

    move-object/from16 v18, v5

    if-eqz v13, :cond_276

    .line 73
    iget-wide v4, v13, Lc/e/b/e;->b:J

    const-wide/16 v20, 0x1

    add-long v4, v4, v20

    iput-wide v4, v13, Lc/e/b/e;->b:J

    goto :goto_278

    :cond_276
    const-wide/16 v20, 0x1

    .line 74
    :goto_278
    invoke-virtual {v10}, Lc/e/b/k/e;->R()I

    move-result v4

    .line 75
    invoke-virtual {v10}, Lc/e/b/k/e;->v()I

    move-result v5

    if-eq v4, v12, :cond_2a1

    .line 76
    invoke-virtual {v10, v4}, Lc/e/b/k/e;->U0(I)V

    if-eqz v15, :cond_2a0

    .line 77
    invoke-virtual {v10}, Lc/e/b/k/e;->K()I

    move-result v2

    if-le v2, v9, :cond_2a0

    .line 78
    invoke-virtual {v10}, Lc/e/b/k/e;->K()I

    move-result v2

    sget-object v4, Lc/e/b/k/d$b;->e:Lc/e/b/k/d$b;

    .line 79
    invoke-virtual {v10, v4}, Lc/e/b/k/e;->m(Lc/e/b/k/d$b;)Lc/e/b/k/d;

    move-result-object v4

    invoke-virtual {v4}, Lc/e/b/k/d;->e()I

    move-result v4

    add-int/2addr v2, v4

    .line 80
    invoke-static {v9, v2}, Ljava/lang/Math;->max(II)I

    move-result v9

    :cond_2a0
    const/4 v2, 0x1

    :cond_2a1
    if-eq v5, v14, :cond_2c3

    .line 81
    invoke-virtual {v10, v5}, Lc/e/b/k/e;->v0(I)V

    if-eqz v6, :cond_2c2

    .line 82
    invoke-virtual {v10}, Lc/e/b/k/e;->p()I

    move-result v2

    if-le v2, v11, :cond_2c2

    .line 83
    invoke-virtual {v10}, Lc/e/b/k/e;->p()I

    move-result v2

    sget-object v4, Lc/e/b/k/d$b;->f:Lc/e/b/k/d$b;

    .line 84
    invoke-virtual {v10, v4}, Lc/e/b/k/e;->m(Lc/e/b/k/d$b;)Lc/e/b/k/d;

    move-result-object v4

    invoke-virtual {v4}, Lc/e/b/k/d;->e()I

    move-result v4

    add-int/2addr v2, v4

    .line 85
    invoke-static {v11, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    move v11, v2

    :cond_2c2
    const/4 v2, 0x1

    .line 86
    :cond_2c3
    invoke-virtual {v10}, Lc/e/b/k/e;->U()Z

    move-result v4

    if-eqz v4, :cond_2d1

    invoke-virtual {v10}, Lc/e/b/k/e;->n()I

    move-result v4

    if-eq v7, v4, :cond_2d1

    const/4 v13, 0x1

    goto :goto_2d2

    :cond_2d1
    move v13, v2

    :goto_2d2
    add-int/lit8 v8, v8, 0x1

    move/from16 v4, p6

    move-object/from16 v5, v18

    move/from16 v2, v19

    const/4 v7, 0x2

    goto/16 :goto_208

    :cond_2dd
    move/from16 v19, v2

    move/from16 p6, v4

    move-object/from16 v18, v5

    const-wide/16 v20, 0x1

    if-eqz v13, :cond_2fc

    const-string v2, "intermediate pass"

    move/from16 v4, v16

    move/from16 v5, v17

    .line 87
    invoke-direct {v0, v1, v2, v4, v5}, Lc/e/b/k/m/b;->c(Lc/e/b/k/f;Ljava/lang/String;II)V

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v5, v18

    move/from16 v2, v19

    const/4 v7, 0x2

    const/4 v13, 0x0

    move/from16 v4, p6

    goto/16 :goto_205

    :cond_2fc
    move/from16 v4, v16

    move/from16 v5, v17

    if-eqz v13, :cond_326

    const-string v2, "2nd pass"

    .line 88
    invoke-direct {v0, v1, v2, v4, v5}, Lc/e/b/k/m/b;->c(Lc/e/b/k/f;Ljava/lang/String;II)V

    .line 89
    invoke-virtual/range {p1 .. p1}, Lc/e/b/k/e;->R()I

    move-result v2

    if-ge v2, v9, :cond_312

    .line 90
    invoke-virtual {v1, v9}, Lc/e/b/k/e;->U0(I)V

    const/4 v10, 0x1

    goto :goto_313

    :cond_312
    const/4 v10, 0x0

    .line 91
    :goto_313
    invoke-virtual/range {p1 .. p1}, Lc/e/b/k/e;->v()I

    move-result v2

    if-ge v2, v11, :cond_31e

    .line 92
    invoke-virtual {v1, v11}, Lc/e/b/k/e;->v0(I)V

    const/4 v11, 0x1

    goto :goto_31f

    :cond_31e
    move v11, v10

    :goto_31f
    if-eqz v11, :cond_326

    const-string v2, "3rd pass"

    .line 93
    invoke-direct {v0, v1, v2, v4, v5}, Lc/e/b/k/m/b;->c(Lc/e/b/k/f;Ljava/lang/String;II)V

    :cond_326
    move/from16 v2, p5

    goto :goto_32a

    :cond_329
    move v2, v3

    .line 94
    :goto_32a
    invoke-virtual {v1, v2}, Lc/e/b/k/f;->E1(I)V

    :cond_32d
    const-wide/16 v1, 0x0

    return-wide v1
.end method

.method public e(Lc/e/b/k/f;)V
    .registers 7

    .line 1
    iget-object v0, p0, Lc/e/b/k/m/b;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2
    iget-object v0, p1, Lc/e/b/k/l;->p0:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_c
    if-ge v1, v0, :cond_2e

    .line 3
    iget-object v2, p1, Lc/e/b/k/l;->p0:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc/e/b/k/e;

    .line 4
    invoke-virtual {v2}, Lc/e/b/k/e;->y()Lc/e/b/k/e$b;

    move-result-object v3

    sget-object v4, Lc/e/b/k/e$b;->d:Lc/e/b/k/e$b;

    if-eq v3, v4, :cond_26

    .line 5
    invoke-virtual {v2}, Lc/e/b/k/e;->O()Lc/e/b/k/e$b;

    move-result-object v3

    sget-object v4, Lc/e/b/k/e$b;->d:Lc/e/b/k/e$b;

    if-ne v3, v4, :cond_2b

    .line 6
    :cond_26
    iget-object v3, p0, Lc/e/b/k/m/b;->a:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2b
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 7
    :cond_2e
    invoke-virtual {p1}, Lc/e/b/k/f;->u1()V

    return-void
.end method
