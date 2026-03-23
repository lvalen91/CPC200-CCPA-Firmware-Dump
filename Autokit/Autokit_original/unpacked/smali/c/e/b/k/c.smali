.class public Lc/e/b/k/c;
.super Ljava/lang/Object;
.source "SourceFile"

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

.method public constructor <init>(Lc/e/b/k/e;IZ)V
  .registers 5
  .line 1
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    const/4 v0, 0
  .line 2
    iput v0, p0, Lc/e/b/k/c;->k:F
    const/4 v0, 0
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
    const/4 v1, 2
    mul-int/lit8 v0, v0, 2
  .line 2
    iget-object v2, p0, Lc/e/b/k/c;->a:Lc/e/b/k/e;
    const/4 v3, 0
    move-object v4, v2
    const/4 v5, 0
  :L0
    const/4 v6, 1
    if-nez v5, :L22
  .line 3
    iget v7, p0, Lc/e/b/k/c;->i:I
    add-int/2addr v7, v6
    iput v7, p0, Lc/e/b/k/c;->i:I
  .line 4
    iget-object v7, v2, Lc/e/b/k/e;->l0:[Lc/e/b/k/e;
    iget v8, p0, Lc/e/b/k/c;->o:I
    const/4 v9, 0
    aput-object v9, v7, v8
  .line 5
    iget-object v7, v2, Lc/e/b/k/e;->k0:[Lc/e/b/k/e;
    aput-object v9, v7, v8
  .line 6
    invoke-virtual { v2 }, Lc/e/b/k/e;->Q()I
    move-result v7
    const/16 v8, 8
    if-eq v7, v8, :L16
  .line 7
    iget v7, p0, Lc/e/b/k/c;->l:I
    add-int/2addr v7, v6
    iput v7, p0, Lc/e/b/k/c;->l:I
  .line 8
    iget v7, p0, Lc/e/b/k/c;->o:I
    invoke-virtual { v2, v7 }, Lc/e/b/k/e;->s(I)Lc/e/b/k/e$b;
    move-result-object v7
    sget-object v8, Lc/e/b/k/e$b;->d:Lc/e/b/k/e$b;
    if-eq v7, v8, :L1
  .line 9
    iget v7, p0, Lc/e/b/k/c;->m:I
    iget v8, p0, Lc/e/b/k/c;->o:I
    invoke-virtual { v2, v8 }, Lc/e/b/k/e;->C(I)I
    move-result v8
    add-int/2addr v7, v8
    iput v7, p0, Lc/e/b/k/c;->m:I
  :L1
  .line 10
    iget v7, p0, Lc/e/b/k/c;->m:I
    iget-object v8, v2, Lc/e/b/k/e;->N:[Lc/e/b/k/d;
    aget-object v8, v8, v0
    invoke-virtual { v8 }, Lc/e/b/k/d;->e()I
    move-result v8
    add-int/2addr v7, v8
    iput v7, p0, Lc/e/b/k/c;->m:I
  .line 11
    iget-object v8, v2, Lc/e/b/k/e;->N:[Lc/e/b/k/d;
    add-int/lit8 v10, v0, 1
    aget-object v8, v8, v10
    invoke-virtual { v8 }, Lc/e/b/k/d;->e()I
    move-result v8
    add-int/2addr v7, v8
    iput v7, p0, Lc/e/b/k/c;->m:I
  .line 12
    iget v7, p0, Lc/e/b/k/c;->n:I
    iget-object v8, v2, Lc/e/b/k/e;->N:[Lc/e/b/k/d;
    aget-object v8, v8, v0
    invoke-virtual { v8 }, Lc/e/b/k/d;->e()I
    move-result v8
    add-int/2addr v7, v8
    iput v7, p0, Lc/e/b/k/c;->n:I
  .line 13
    iget-object v8, v2, Lc/e/b/k/e;->N:[Lc/e/b/k/d;
    aget-object v8, v8, v10
    invoke-virtual { v8 }, Lc/e/b/k/d;->e()I
    move-result v8
    add-int/2addr v7, v8
    iput v7, p0, Lc/e/b/k/c;->n:I
  .line 14
    iget-object v7, p0, Lc/e/b/k/c;->b:Lc/e/b/k/e;
    if-nez v7, :L2
  .line 15
    iput-object v2, p0, Lc/e/b/k/c;->b:Lc/e/b/k/e;
  :L2
  .line 16
    iput-object v2, p0, Lc/e/b/k/c;->d:Lc/e/b/k/e;
  .line 17
    iget-object v7, v2, Lc/e/b/k/e;->Q:[Lc/e/b/k/e$b;
    iget v8, p0, Lc/e/b/k/c;->o:I
    aget-object v7, v7, v8
    sget-object v10, Lc/e/b/k/e$b;->d:Lc/e/b/k/e$b;
    if-ne v7, v10, :L16
  .line 18
    iget-object v7, v2, Lc/e/b/k/e;->p:[I
    aget v10, v7, v8
    const/4 v11, 0
    if-eqz v10, :L3
    aget v10, v7, v8
    const/4 v12, 3
    if-eq v10, v12, :L3
    aget v7, v7, v8
    if-ne v7, v1, :L11
  :L3
  .line 19
    iget v7, p0, Lc/e/b/k/c;->j:I
    add-int/2addr v7, v6
    iput v7, p0, Lc/e/b/k/c;->j:I
  .line 20
    iget-object v7, v2, Lc/e/b/k/e;->j0:[F
    iget v8, p0, Lc/e/b/k/c;->o:I
    aget v10, v7, v8
    cmpl-float v12, v10, v11
    if-lez v12, :L4
  .line 21
    iget v12, p0, Lc/e/b/k/c;->k:F
    aget v7, v7, v8
    add-float/2addr v12, v7
    iput v12, p0, Lc/e/b/k/c;->k:F
  :L4
  .line 22
    iget v7, p0, Lc/e/b/k/c;->o:I
    invoke-static { v2, v7 }, Lc/e/b/k/c;->c(Lc/e/b/k/e;I)Z
    move-result v7
    if-eqz v7, :L8
    cmpg-float v7, v10, v11
    if-gez v7, :L5
  .line 23
    iput-boolean v6, p0, Lc/e/b/k/c;->q:Z
    goto :L6
  :L5
  .line 24
    iput-boolean v6, p0, Lc/e/b/k/c;->r:Z
  :L6
  .line 25
    iget-object v7, p0, Lc/e/b/k/c;->h:Ljava/util/ArrayList;
    if-nez v7, :L7
  .line 26
    new-instance v7, Ljava/util/ArrayList;
    invoke-direct { v7 }, Ljava/util/ArrayList;-><init>()V
    iput-object v7, p0, Lc/e/b/k/c;->h:Ljava/util/ArrayList;
  :L7
  .line 27
    iget-object v7, p0, Lc/e/b/k/c;->h:Ljava/util/ArrayList;
    invoke-virtual { v7, v2 }, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
  :L8
  .line 28
    iget-object v7, p0, Lc/e/b/k/c;->f:Lc/e/b/k/e;
    if-nez v7, :L9
  .line 29
    iput-object v2, p0, Lc/e/b/k/c;->f:Lc/e/b/k/e;
  :L9
  .line 30
    iget-object v7, p0, Lc/e/b/k/c;->g:Lc/e/b/k/e;
    if-eqz v7, :L10
  .line 31
    iget-object v7, v7, Lc/e/b/k/e;->k0:[Lc/e/b/k/e;
    iget v8, p0, Lc/e/b/k/c;->o:I
    aput-object v2, v7, v8
  :L10
  .line 32
    iput-object v2, p0, Lc/e/b/k/c;->g:Lc/e/b/k/e;
  :L11
  .line 33
    iget v7, p0, Lc/e/b/k/c;->o:I
    if-nez v7, :L13
  .line 34
    iget v7, v2, Lc/e/b/k/e;->n:I
    if-eqz v7, :L12
    goto :L15
  :L12
  .line 35
    iget v7, v2, Lc/e/b/k/e;->q:I
    if-nez v7, :L15
    iget v7, v2, Lc/e/b/k/e;->r:I
    goto :L15
  :L13
  .line 36
    iget v7, v2, Lc/e/b/k/e;->o:I
    if-eqz v7, :L14
    goto :L15
  :L14
  .line 37
    iget v7, v2, Lc/e/b/k/e;->t:I
    if-nez v7, :L15
    iget v7, v2, Lc/e/b/k/e;->u:I
  :L15
  .line 38
    iget v7, v2, Lc/e/b/k/e;->U:F
    cmpl-float v7, v7, v11
  :L16
    if-eq v4, v2, :L17
  .line 39
    iget-object v4, v4, Lc/e/b/k/e;->l0:[Lc/e/b/k/e;
    iget v7, p0, Lc/e/b/k/c;->o:I
    aput-object v2, v4, v7
  :L17
  .line 40
    iget-object v4, v2, Lc/e/b/k/e;->N:[Lc/e/b/k/d;
    add-int/lit8 v7, v0, 1
    aget-object v4, v4, v7
    iget-object v4, v4, Lc/e/b/k/d;->f:Lc/e/b/k/d;
    if-eqz v4, :L19
  .line 41
    iget-object v4, v4, Lc/e/b/k/d;->d:Lc/e/b/k/e;
  .line 42
    iget-object v7, v4, Lc/e/b/k/e;->N:[Lc/e/b/k/d;
    aget-object v8, v7, v0
    iget-object v8, v8, Lc/e/b/k/d;->f:Lc/e/b/k/d;
    if-eqz v8, :L19
    aget-object v7, v7, v0
    iget-object v7, v7, Lc/e/b/k/d;->f:Lc/e/b/k/d;
    iget-object v7, v7, Lc/e/b/k/d;->d:Lc/e/b/k/e;
    if-eq v7, v2, :L18
    goto :L19
  :L18
    move-object v9, v4
  :L19
    if-eqz v9, :L20
    goto :L21
  :L20
    move-object v9, v2
    const/4 v5, 1
  :L21
    move-object v4, v2
    move-object v2, v9
    goto/16 :L0
  :L22
  .line 43
    iget-object v1, p0, Lc/e/b/k/c;->b:Lc/e/b/k/e;
    if-eqz v1, :L23
  .line 44
    iget v4, p0, Lc/e/b/k/c;->m:I
    iget-object v1, v1, Lc/e/b/k/e;->N:[Lc/e/b/k/d;
    aget-object v1, v1, v0
    invoke-virtual { v1 }, Lc/e/b/k/d;->e()I
    move-result v1
    sub-int/2addr v4, v1
    iput v4, p0, Lc/e/b/k/c;->m:I
  :L23
  .line 45
    iget-object v1, p0, Lc/e/b/k/c;->d:Lc/e/b/k/e;
    if-eqz v1, :L24
  .line 46
    iget v4, p0, Lc/e/b/k/c;->m:I
    iget-object v1, v1, Lc/e/b/k/e;->N:[Lc/e/b/k/d;
    add-int/2addr v0, v6
    aget-object v0, v1, v0
    invoke-virtual { v0 }, Lc/e/b/k/d;->e()I
    move-result v0
    sub-int/2addr v4, v0
    iput v4, p0, Lc/e/b/k/c;->m:I
  :L24
  .line 47
    iput-object v2, p0, Lc/e/b/k/c;->c:Lc/e/b/k/e;
  .line 48
    iget v0, p0, Lc/e/b/k/c;->o:I
    if-nez v0, :L25
    iget-boolean v0, p0, Lc/e/b/k/c;->p:Z
    if-eqz v0, :L25
  .line 49
    iput-object v2, p0, Lc/e/b/k/c;->e:Lc/e/b/k/e;
    goto :L26
  :L25
  .line 50
    iget-object v0, p0, Lc/e/b/k/c;->a:Lc/e/b/k/e;
    iput-object v0, p0, Lc/e/b/k/c;->e:Lc/e/b/k/e;
  :L26
  .line 51
    iget-boolean v0, p0, Lc/e/b/k/c;->r:Z
    if-eqz v0, :L27
    iget-boolean v0, p0, Lc/e/b/k/c;->q:Z
    if-eqz v0, :L27
    const/4 v3, 1
  :L27
    iput-boolean v3, p0, Lc/e/b/k/c;->s:Z
    return-void
.end method

.method private static c(Lc/e/b/k/e;I)Z
  .registers 4
  .line 1
    invoke-virtual { p0 }, Lc/e/b/k/e;->Q()I
    move-result v0
    const/16 v1, 8
    if-eq v0, v1, :L1
    iget-object v0, p0, Lc/e/b/k/e;->Q:[Lc/e/b/k/e$b;
    aget-object v0, v0, p1
    sget-object v1, Lc/e/b/k/e$b;->d:Lc/e/b/k/e$b;
    if-ne v0, v1, :L1
    iget-object p0, p0, Lc/e/b/k/e;->p:[I
    aget v0, p0, p1
    if-eqz v0, :L0
    aget p0, p0, p1
    const/4 p1, 3
    if-ne p0, p1, :L1
  :L0
    const/4 p0, 1
    goto :L2
  :L1
    const/4 p0, 0
  :L2
    return p0
.end method

.method public a()V
  .registers 2
  .line 1
    iget-boolean v0, p0, Lc/e/b/k/c;->t:Z
    if-nez v0, :L0
  .line 2
    invoke-direct { p0 }, Lc/e/b/k/c;->b()V
  :L0
    const/4 v0, 1
  .line 3
    iput-boolean v0, p0, Lc/e/b/k/c;->t:Z
    return-void
.end method
