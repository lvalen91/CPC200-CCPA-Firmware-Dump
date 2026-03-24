.class public Lc/e/b/k/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected a:Lc/e/b/k/e;

.field protected b:Lc/e/b/k/e;

.field protected c:Lc/e/b/k/e;

.field protected d:Lc/e/b/k/e;

.field protected e:Lc/e/b/k/e;

.field protected f:Lc/e/b/k/e;

.field protected g:Lc/e/b/k/e;

.field protected h:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lc/e/b/k/e;",
            ">;"
        }
    .end annotation
.end field

.field protected i:I

.field protected j:I

.field protected k:F

.field l:I

.field m:I

.field n:I

.field private o:I

.field private p:Z

.field protected q:Z

.field protected r:Z

.field protected s:Z

.field private t:Z


# direct methods
.method public constructor <init>(Lc/e/b/k/e;IZ)V
    .registers 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lc/e/b/k/c;->k:F

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lc/e/b/k/c;->p:Z

    .line 4
    iput-object p1, p0, Lc/e/b/k/c;->a:Lc/e/b/k/e;

    .line 5
    iput p2, p0, Lc/e/b/k/c;->o:I

    .line 6
    iput-boolean p3, p0, Lc/e/b/k/c;->p:Z

    return-void
.end method

.method private b()V
    .registers 14

    .line 1
    iget v0, p0, Lc/e/b/k/c;->o:I

    const/4 v1, 0x2

    mul-int/lit8 v0, v0, 0x2

    .line 2
    iget-object v2, p0, Lc/e/b/k/c;->a:Lc/e/b/k/e;

    const/4 v3, 0x0

    move-object v4, v2

    const/4 v5, 0x0

    :goto_a
    const/4 v6, 0x1

    if-nez v5, :cond_12a

    .line 3
    iget v7, p0, Lc/e/b/k/c;->i:I

    add-int/2addr v7, v6

    iput v7, p0, Lc/e/b/k/c;->i:I

    .line 4
    iget-object v7, v2, Lc/e/b/k/e;->l0:[Lc/e/b/k/e;

    iget v8, p0, Lc/e/b/k/c;->o:I

    const/4 v9, 0x0

    aput-object v9, v7, v8

    .line 5
    iget-object v7, v2, Lc/e/b/k/e;->k0:[Lc/e/b/k/e;

    aput-object v9, v7, v8

    .line 6
    invoke-virtual {v2}, Lc/e/b/k/e;->Q()I

    move-result v7

    const/16 v8, 0x8

    if-eq v7, v8, :cond_fb

    .line 7
    iget v7, p0, Lc/e/b/k/c;->l:I

    add-int/2addr v7, v6

    iput v7, p0, Lc/e/b/k/c;->l:I

    .line 8
    iget v7, p0, Lc/e/b/k/c;->o:I

    invoke-virtual {v2, v7}, Lc/e/b/k/e;->s(I)Lc/e/b/k/e$b;

    move-result-object v7

    sget-object v8, Lc/e/b/k/e$b;->d:Lc/e/b/k/e$b;

    if-eq v7, v8, :cond_3f

    .line 9
    iget v7, p0, Lc/e/b/k/c;->m:I

    iget v8, p0, Lc/e/b/k/c;->o:I

    invoke-virtual {v2, v8}, Lc/e/b/k/e;->C(I)I

    move-result v8

    add-int/2addr v7, v8

    iput v7, p0, Lc/e/b/k/c;->m:I

    .line 10
    :cond_3f
    iget v7, p0, Lc/e/b/k/c;->m:I

    iget-object v8, v2, Lc/e/b/k/e;->N:[Lc/e/b/k/d;

    aget-object v8, v8, v0

    invoke-virtual {v8}, Lc/e/b/k/d;->e()I

    move-result v8

    add-int/2addr v7, v8

    iput v7, p0, Lc/e/b/k/c;->m:I

    .line 11
    iget-object v8, v2, Lc/e/b/k/e;->N:[Lc/e/b/k/d;

    add-int/lit8 v10, v0, 0x1

    aget-object v8, v8, v10

    invoke-virtual {v8}, Lc/e/b/k/d;->e()I

    move-result v8

    add-int/2addr v7, v8

    iput v7, p0, Lc/e/b/k/c;->m:I

    .line 12
    iget v7, p0, Lc/e/b/k/c;->n:I

    iget-object v8, v2, Lc/e/b/k/e;->N:[Lc/e/b/k/d;

    aget-object v8, v8, v0

    invoke-virtual {v8}, Lc/e/b/k/d;->e()I

    move-result v8

    add-int/2addr v7, v8

    iput v7, p0, Lc/e/b/k/c;->n:I

    .line 13
    iget-object v8, v2, Lc/e/b/k/e;->N:[Lc/e/b/k/d;

    aget-object v8, v8, v10

    invoke-virtual {v8}, Lc/e/b/k/d;->e()I

    move-result v8

    add-int/2addr v7, v8

    iput v7, p0, Lc/e/b/k/c;->n:I

    .line 14
    iget-object v7, p0, Lc/e/b/k/c;->b:Lc/e/b/k/e;

    if-nez v7, :cond_77

    .line 15
    iput-object v2, p0, Lc/e/b/k/c;->b:Lc/e/b/k/e;

    .line 16
    :cond_77
    iput-object v2, p0, Lc/e/b/k/c;->d:Lc/e/b/k/e;

    .line 17
    iget-object v7, v2, Lc/e/b/k/e;->Q:[Lc/e/b/k/e$b;

    iget v8, p0, Lc/e/b/k/c;->o:I

    aget-object v7, v7, v8

    sget-object v10, Lc/e/b/k/e$b;->d:Lc/e/b/k/e$b;

    if-ne v7, v10, :cond_fb

    .line 18
    iget-object v7, v2, Lc/e/b/k/e;->p:[I

    aget v10, v7, v8

    const/4 v11, 0x0

    if-eqz v10, :cond_93

    aget v10, v7, v8

    const/4 v12, 0x3

    if-eq v10, v12, :cond_93

    aget v7, v7, v8

    if-ne v7, v1, :cond_dc

    .line 19
    :cond_93
    iget v7, p0, Lc/e/b/k/c;->j:I

    add-int/2addr v7, v6

    iput v7, p0, Lc/e/b/k/c;->j:I

    .line 20
    iget-object v7, v2, Lc/e/b/k/e;->j0:[F

    iget v8, p0, Lc/e/b/k/c;->o:I

    aget v10, v7, v8

    cmpl-float v12, v10, v11

    if-lez v12, :cond_a9

    .line 21
    iget v12, p0, Lc/e/b/k/c;->k:F

    aget v7, v7, v8

    add-float/2addr v12, v7

    iput v12, p0, Lc/e/b/k/c;->k:F

    .line 22
    :cond_a9
    iget v7, p0, Lc/e/b/k/c;->o:I

    invoke-static {v2, v7}, Lc/e/b/k/c;->c(Lc/e/b/k/e;I)Z

    move-result v7

    if-eqz v7, :cond_ca

    cmpg-float v7, v10, v11

    if-gez v7, :cond_b8

    .line 23
    iput-boolean v6, p0, Lc/e/b/k/c;->q:Z

    goto :goto_ba

    .line 24
    :cond_b8
    iput-boolean v6, p0, Lc/e/b/k/c;->r:Z

    .line 25
    :goto_ba
    iget-object v7, p0, Lc/e/b/k/c;->h:Ljava/util/ArrayList;

    if-nez v7, :cond_c5

    .line 26
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Lc/e/b/k/c;->h:Ljava/util/ArrayList;

    .line 27
    :cond_c5
    iget-object v7, p0, Lc/e/b/k/c;->h:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 28
    :cond_ca
    iget-object v7, p0, Lc/e/b/k/c;->f:Lc/e/b/k/e;

    if-nez v7, :cond_d0

    .line 29
    iput-object v2, p0, Lc/e/b/k/c;->f:Lc/e/b/k/e;

    .line 30
    :cond_d0
    iget-object v7, p0, Lc/e/b/k/c;->g:Lc/e/b/k/e;

    if-eqz v7, :cond_da

    .line 31
    iget-object v7, v7, Lc/e/b/k/e;->k0:[Lc/e/b/k/e;

    iget v8, p0, Lc/e/b/k/c;->o:I

    aput-object v2, v7, v8

    .line 32
    :cond_da
    iput-object v2, p0, Lc/e/b/k/c;->g:Lc/e/b/k/e;

    .line 33
    :cond_dc
    iget v7, p0, Lc/e/b/k/c;->o:I

    if-nez v7, :cond_ec

    .line 34
    iget v7, v2, Lc/e/b/k/e;->n:I

    if-eqz v7, :cond_e5

    goto :goto_f7

    .line 35
    :cond_e5
    iget v7, v2, Lc/e/b/k/e;->q:I

    if-nez v7, :cond_f7

    iget v7, v2, Lc/e/b/k/e;->r:I

    goto :goto_f7

    .line 36
    :cond_ec
    iget v7, v2, Lc/e/b/k/e;->o:I

    if-eqz v7, :cond_f1

    goto :goto_f7

    .line 37
    :cond_f1
    iget v7, v2, Lc/e/b/k/e;->t:I

    if-nez v7, :cond_f7

    iget v7, v2, Lc/e/b/k/e;->u:I

    .line 38
    :cond_f7
    :goto_f7
    iget v7, v2, Lc/e/b/k/e;->U:F

    cmpl-float v7, v7, v11

    :cond_fb
    if-eq v4, v2, :cond_103

    .line 39
    iget-object v4, v4, Lc/e/b/k/e;->l0:[Lc/e/b/k/e;

    iget v7, p0, Lc/e/b/k/c;->o:I

    aput-object v2, v4, v7

    .line 40
    :cond_103
    iget-object v4, v2, Lc/e/b/k/e;->N:[Lc/e/b/k/d;

    add-int/lit8 v7, v0, 0x1

    aget-object v4, v4, v7

    iget-object v4, v4, Lc/e/b/k/d;->f:Lc/e/b/k/d;

    if-eqz v4, :cond_121

    .line 41
    iget-object v4, v4, Lc/e/b/k/d;->d:Lc/e/b/k/e;

    .line 42
    iget-object v7, v4, Lc/e/b/k/e;->N:[Lc/e/b/k/d;

    aget-object v8, v7, v0

    iget-object v8, v8, Lc/e/b/k/d;->f:Lc/e/b/k/d;

    if-eqz v8, :cond_121

    aget-object v7, v7, v0

    iget-object v7, v7, Lc/e/b/k/d;->f:Lc/e/b/k/d;

    iget-object v7, v7, Lc/e/b/k/d;->d:Lc/e/b/k/e;

    if-eq v7, v2, :cond_120

    goto :goto_121

    :cond_120
    move-object v9, v4

    :cond_121
    :goto_121
    if-eqz v9, :cond_124

    goto :goto_126

    :cond_124
    move-object v9, v2

    const/4 v5, 0x1

    :goto_126
    move-object v4, v2

    move-object v2, v9

    goto/16 :goto_a

    .line 43
    :cond_12a
    iget-object v1, p0, Lc/e/b/k/c;->b:Lc/e/b/k/e;

    if-eqz v1, :cond_13b

    .line 44
    iget v4, p0, Lc/e/b/k/c;->m:I

    iget-object v1, v1, Lc/e/b/k/e;->N:[Lc/e/b/k/d;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lc/e/b/k/d;->e()I

    move-result v1

    sub-int/2addr v4, v1

    iput v4, p0, Lc/e/b/k/c;->m:I

    .line 45
    :cond_13b
    iget-object v1, p0, Lc/e/b/k/c;->d:Lc/e/b/k/e;

    if-eqz v1, :cond_14d

    .line 46
    iget v4, p0, Lc/e/b/k/c;->m:I

    iget-object v1, v1, Lc/e/b/k/e;->N:[Lc/e/b/k/d;

    add-int/2addr v0, v6

    aget-object v0, v1, v0

    invoke-virtual {v0}, Lc/e/b/k/d;->e()I

    move-result v0

    sub-int/2addr v4, v0

    iput v4, p0, Lc/e/b/k/c;->m:I

    .line 47
    :cond_14d
    iput-object v2, p0, Lc/e/b/k/c;->c:Lc/e/b/k/e;

    .line 48
    iget v0, p0, Lc/e/b/k/c;->o:I

    if-nez v0, :cond_15a

    iget-boolean v0, p0, Lc/e/b/k/c;->p:Z

    if-eqz v0, :cond_15a

    .line 49
    iput-object v2, p0, Lc/e/b/k/c;->e:Lc/e/b/k/e;

    goto :goto_15e

    .line 50
    :cond_15a
    iget-object v0, p0, Lc/e/b/k/c;->a:Lc/e/b/k/e;

    iput-object v0, p0, Lc/e/b/k/c;->e:Lc/e/b/k/e;

    .line 51
    :goto_15e
    iget-boolean v0, p0, Lc/e/b/k/c;->r:Z

    if-eqz v0, :cond_167

    iget-boolean v0, p0, Lc/e/b/k/c;->q:Z

    if-eqz v0, :cond_167

    const/4 v3, 0x1

    :cond_167
    iput-boolean v3, p0, Lc/e/b/k/c;->s:Z

    return-void
.end method

.method private static c(Lc/e/b/k/e;I)Z
    .registers 4

    .line 1
    invoke-virtual {p0}, Lc/e/b/k/e;->Q()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_1d

    iget-object v0, p0, Lc/e/b/k/e;->Q:[Lc/e/b/k/e$b;

    aget-object v0, v0, p1

    sget-object v1, Lc/e/b/k/e$b;->d:Lc/e/b/k/e$b;

    if-ne v0, v1, :cond_1d

    iget-object p0, p0, Lc/e/b/k/e;->p:[I

    aget v0, p0, p1

    if-eqz v0, :cond_1b

    aget p0, p0, p1

    const/4 p1, 0x3

    if-ne p0, p1, :cond_1d

    :cond_1b
    const/4 p0, 0x1

    goto :goto_1e

    :cond_1d
    const/4 p0, 0x0

    :goto_1e
    return p0
.end method


# virtual methods
.method public a()V
    .registers 2

    .line 1
    iget-boolean v0, p0, Lc/e/b/k/c;->t:Z

    if-nez v0, :cond_7

    .line 2
    invoke-direct {p0}, Lc/e/b/k/c;->b()V

    :cond_7
    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lc/e/b/k/c;->t:Z

    return-void
.end method
