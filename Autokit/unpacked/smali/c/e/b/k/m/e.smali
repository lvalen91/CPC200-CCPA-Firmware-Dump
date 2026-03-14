.class public Lc/e/b/k/m/e;
.super Ljava/lang/Object;
.source "SourceFile"

.field private a:Lc/e/b/k/f;

.field private b:Z

.field private c:Z

.field private d:Lc/e/b/k/f;

.field private e:Ljava/util/ArrayList;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "Ljava/util/ArrayList<",
      "Lc/e/b/k/m/p;",
      ">;"
    }
  .end annotation
.end field

.field private f:Lc/e/b/k/m/b$b;

.field private g:Lc/e/b/k/m/b$a;

.field h:Ljava/util/ArrayList;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "Ljava/util/ArrayList<",
      "Lc/e/b/k/m/m;",
      ">;"
    }
  .end annotation
.end field

.method public constructor <init>(Lc/e/b/k/f;)V
  .registers 3
  .line 1
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    const/4 v0, 1
  .line 2
    iput-boolean v0, p0, Lc/e/b/k/m/e;->b:Z
  .line 3
    iput-boolean v0, p0, Lc/e/b/k/m/e;->c:Z
  .line 4
    new-instance v0, Ljava/util/ArrayList;
    invoke-direct { v0 }, Ljava/util/ArrayList;-><init>()V
    iput-object v0, p0, Lc/e/b/k/m/e;->e:Ljava/util/ArrayList;
  .line 5
    new-instance v0, Ljava/util/ArrayList;
    invoke-direct { v0 }, Ljava/util/ArrayList;-><init>()V
    const/4 v0, 0
  .line 6
    iput-object v0, p0, Lc/e/b/k/m/e;->f:Lc/e/b/k/m/b$b;
  .line 7
    new-instance v0, Lc/e/b/k/m/b$a;
    invoke-direct { v0 }, Lc/e/b/k/m/b$a;-><init>()V
    iput-object v0, p0, Lc/e/b/k/m/e;->g:Lc/e/b/k/m/b$a;
  .line 8
    new-instance v0, Ljava/util/ArrayList;
    invoke-direct { v0 }, Ljava/util/ArrayList;-><init>()V
    iput-object v0, p0, Lc/e/b/k/m/e;->h:Ljava/util/ArrayList;
  .line 9
    iput-object p1, p0, Lc/e/b/k/m/e;->a:Lc/e/b/k/f;
  .line 10
    iput-object p1, p0, Lc/e/b/k/m/e;->d:Lc/e/b/k/f;
    return-void
.end method

.method private a(Lc/e/b/k/m/f;IILc/e/b/k/m/f;Ljava/util/ArrayList;Lc/e/b/k/m/m;)V
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(",
      "Lc/e/b/k/m/f;",
      "II",
      "Lc/e/b/k/m/f;",
      "Ljava/util/ArrayList<",
      "Lc/e/b/k/m/m;",
      ">;",
      "Lc/e/b/k/m/m;",
      ")V"
    }
  .end annotation
  .catchall { :L15 .. :L16 } :L18
  .registers 15
  .line 1
    iget-object p1, p1, Lc/e/b/k/m/f;->d:Lc/e/b/k/m/p;
  .line 2
    iget-object v0, p1, Lc/e/b/k/m/p;->c:Lc/e/b/k/m/m;
    if-nez v0, :L17
    iget-object v0, p0, Lc/e/b/k/m/e;->a:Lc/e/b/k/f;
    iget-object v1, v0, Lc/e/b/k/e;->d:Lc/e/b/k/m/l;
    if-eq p1, v1, :L17
    iget-object v0, v0, Lc/e/b/k/e;->e:Lc/e/b/k/m/n;
    if-ne p1, v0, :L0
    goto/16 :L17
  :L0
    if-nez p6, :L1
  .line 3
    new-instance p6, Lc/e/b/k/m/m;
    invoke-direct { p6, p1, p3 }, Lc/e/b/k/m/m;-><init>(Lc/e/b/k/m/p;I)V
  .line 4
    invoke-virtual { p5, p6 }, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
  :L1
  .line 5
    iput-object p6, p1, Lc/e/b/k/m/p;->c:Lc/e/b/k/m/m;
  .line 6
    invoke-virtual { p6, p1 }, Lc/e/b/k/m/m;->a(Lc/e/b/k/m/p;)V
  .line 7
    iget-object p3, p1, Lc/e/b/k/m/p;->h:Lc/e/b/k/m/f;
    iget-object p3, p3, Lc/e/b/k/m/f;->k:Ljava/util/List;
    invoke-interface { p3 }, Ljava/util/List;->iterator()Ljava/util/Iterator;
    move-result-object p3
  :L2
    invoke-interface { p3 }, Ljava/util/Iterator;->hasNext()Z
    move-result v0
    if-eqz v0, :L3
    invoke-interface { p3 }, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Lc/e/b/k/m/d;
  .line 8
    instance-of v1, v0, Lc/e/b/k/m/f;
    if-eqz v1, :L2
  .line 9
    move-object v1, v0
    check-cast v1, Lc/e/b/k/m/f;
    const/4 v3, 0
    move-object v0, p0
    move v2, p2
    move-object v4, p4
    move-object v5, p5
    move-object v6, p6
    invoke-direct/range { v0 .. v6 }, Lc/e/b/k/m/e;->a(Lc/e/b/k/m/f;IILc/e/b/k/m/f;Ljava/util/ArrayList;Lc/e/b/k/m/m;)V
    goto :L2
  :L3
  .line 10
    iget-object p3, p1, Lc/e/b/k/m/p;->i:Lc/e/b/k/m/f;
    iget-object p3, p3, Lc/e/b/k/m/f;->k:Ljava/util/List;
    invoke-interface { p3 }, Ljava/util/List;->iterator()Ljava/util/Iterator;
    move-result-object p3
  :L4
    invoke-interface { p3 }, Ljava/util/Iterator;->hasNext()Z
    move-result v0
    if-eqz v0, :L5
    invoke-interface { p3 }, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Lc/e/b/k/m/d;
  .line 11
    instance-of v1, v0, Lc/e/b/k/m/f;
    if-eqz v1, :L4
  .line 12
    move-object v1, v0
    check-cast v1, Lc/e/b/k/m/f;
    const/4 v3, 1
    move-object v0, p0
    move v2, p2
    move-object v4, p4
    move-object v5, p5
    move-object v6, p6
    invoke-direct/range { v0 .. v6 }, Lc/e/b/k/m/e;->a(Lc/e/b/k/m/f;IILc/e/b/k/m/f;Ljava/util/ArrayList;Lc/e/b/k/m/m;)V
    goto :L4
  :L5
    const/4 p3, 1
    if-ne p2, p3, :L7
  .line 13
    instance-of v0, p1, Lc/e/b/k/m/n;
    if-eqz v0, :L7
  .line 14
    move-object v0, p1
    check-cast v0, Lc/e/b/k/m/n;
    iget-object v0, v0, Lc/e/b/k/m/n;->k:Lc/e/b/k/m/f;
    iget-object v0, v0, Lc/e/b/k/m/f;->k:Ljava/util/List;
    invoke-interface { v0 }, Ljava/util/List;->iterator()Ljava/util/Iterator;
    move-result-object v7
  :L6
    invoke-interface { v7 }, Ljava/util/Iterator;->hasNext()Z
    move-result v0
    if-eqz v0, :L7
    invoke-interface { v7 }, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Lc/e/b/k/m/d;
  .line 15
    instance-of v1, v0, Lc/e/b/k/m/f;
    if-eqz v1, :L6
  .line 16
    move-object v1, v0
    check-cast v1, Lc/e/b/k/m/f;
    const/4 v3, 2
    move-object v0, p0
    move v2, p2
    move-object v4, p4
    move-object v5, p5
    move-object v6, p6
    invoke-direct/range { v0 .. v6 }, Lc/e/b/k/m/e;->a(Lc/e/b/k/m/f;IILc/e/b/k/m/f;Ljava/util/ArrayList;Lc/e/b/k/m/m;)V
    goto :L6
  :L7
  .line 17
    iget-object v0, p1, Lc/e/b/k/m/p;->h:Lc/e/b/k/m/f;
    iget-object v0, v0, Lc/e/b/k/m/f;->l:Ljava/util/List;
    invoke-interface { v0 }, Ljava/util/List;->iterator()Ljava/util/Iterator;
    move-result-object v7
  :L8
    invoke-interface { v7 }, Ljava/util/Iterator;->hasNext()Z
    move-result v0
    if-eqz v0, :L10
    invoke-interface { v7 }, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object v0
    move-object v1, v0
    check-cast v1, Lc/e/b/k/m/f;
    if-ne v1, p4, :L9
  .line 18
    iput-boolean p3, p6, Lc/e/b/k/m/m;->a:Z
  :L9
    const/4 v3, 0
    move-object v0, p0
    move v2, p2
    move-object v4, p4
    move-object v5, p5
    move-object v6, p6
  .line 19
    invoke-direct/range { v0 .. v6 }, Lc/e/b/k/m/e;->a(Lc/e/b/k/m/f;IILc/e/b/k/m/f;Ljava/util/ArrayList;Lc/e/b/k/m/m;)V
    goto :L8
  :L10
  .line 20
    iget-object v0, p1, Lc/e/b/k/m/p;->i:Lc/e/b/k/m/f;
    iget-object v0, v0, Lc/e/b/k/m/f;->l:Ljava/util/List;
    invoke-interface { v0 }, Ljava/util/List;->iterator()Ljava/util/Iterator;
    move-result-object v7
  :L11
    invoke-interface { v7 }, Ljava/util/Iterator;->hasNext()Z
    move-result v0
    if-eqz v0, :L13
    invoke-interface { v7 }, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object v0
    move-object v1, v0
    check-cast v1, Lc/e/b/k/m/f;
    if-ne v1, p4, :L12
  .line 21
    iput-boolean p3, p6, Lc/e/b/k/m/m;->a:Z
  :L12
    const/4 v3, 1
    move-object v0, p0
    move v2, p2
    move-object v4, p4
    move-object v5, p5
    move-object v6, p6
  .line 22
    invoke-direct/range { v0 .. v6 }, Lc/e/b/k/m/e;->a(Lc/e/b/k/m/f;IILc/e/b/k/m/f;Ljava/util/ArrayList;Lc/e/b/k/m/m;)V
    goto :L11
  :L13
    if-ne p2, p3, :L17
  .line 23
    instance-of p3, p1, Lc/e/b/k/m/n;
    if-eqz p3, :L17
  .line 24
    check-cast p1, Lc/e/b/k/m/n;
    iget-object p1, p1, Lc/e/b/k/m/n;->k:Lc/e/b/k/m/f;
    iget-object p1, p1, Lc/e/b/k/m/f;->l:Ljava/util/List;
    invoke-interface { p1 }, Ljava/util/List;->iterator()Ljava/util/Iterator;
    move-result-object p1
  :L14
    invoke-interface { p1 }, Ljava/util/Iterator;->hasNext()Z
    move-result p3
    if-eqz p3, :L17
    invoke-interface { p1 }, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object p3
    move-object v1, p3
    check-cast v1, Lc/e/b/k/m/f;
    const/4 v3, 2
    move-object v0, p0
    move v2, p2
    move-object v4, p4
    move-object v5, p5
    move-object v6, p6
  :L15
  .line 25
    invoke-direct/range { v0 .. v6 }, Lc/e/b/k/m/e;->a(Lc/e/b/k/m/f;IILc/e/b/k/m/f;Ljava/util/ArrayList;Lc/e/b/k/m/m;)V
  :L16
    goto :L14
  :L17
    return-void
  :L18
    move-exception p1
    goto :L20
  :L19
    throw p1
  :L20
    goto :L19
.end method

.method private b(Lc/e/b/k/f;)Z
  .registers 15
  .line 1
    iget-object v0, p1, Lc/e/b/k/l;->p0:Ljava/util/ArrayList;
    invoke-virtual { v0 }, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
    move-result-object v0
  :L0
    invoke-interface { v0 }, Ljava/util/Iterator;->hasNext()Z
    move-result v1
    const/4 v2, 0
    if-eqz v1, :L42
    invoke-interface { v0 }, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object v1
    check-cast v1, Lc/e/b/k/e;
  .line 2
    iget-object v3, v1, Lc/e/b/k/e;->Q:[Lc/e/b/k/e$b;
    aget-object v4, v3, v2
    const/4 v9, 1
  .line 3
    aget-object v3, v3, v9
  .line 4
    invoke-virtual { v1 }, Lc/e/b/k/e;->Q()I
    move-result v5
    const/16 v6, 8
    if-ne v5, v6, :L1
  .line 5
    iput-boolean v9, v1, Lc/e/b/k/e;->a:Z
    goto :L0
  :L1
  .line 6
    iget v5, v1, Lc/e/b/k/e;->s:F
    const/high16 v10, 16256
    const/4 v6, 2
    cmpg-float v5, v5, v10
    if-gez v5, :L2
    sget-object v5, Lc/e/b/k/e$b;->d:Lc/e/b/k/e$b;
    if-ne v4, v5, :L2
  .line 7
    iput v6, v1, Lc/e/b/k/e;->n:I
  :L2
  .line 8
    iget v5, v1, Lc/e/b/k/e;->v:F
    cmpg-float v5, v5, v10
    if-gez v5, :L3
    sget-object v5, Lc/e/b/k/e$b;->d:Lc/e/b/k/e$b;
    if-ne v3, v5, :L3
  .line 9
    iput v6, v1, Lc/e/b/k/e;->o:I
  :L3
  .line 10
    invoke-virtual { v1 }, Lc/e/b/k/e;->t()F
    move-result v5
    const/4 v7, 0
    const/4 v8, 3
    cmpl-float v5, v5, v7
    if-lez v5, :L9
  .line 11
    sget-object v5, Lc/e/b/k/e$b;->d:Lc/e/b/k/e$b;
    if-ne v4, v5, :L5
    sget-object v5, Lc/e/b/k/e$b;->c:Lc/e/b/k/e$b;
    if-eq v3, v5, :L4
    sget-object v5, Lc/e/b/k/e$b;->b:Lc/e/b/k/e$b;
    if-ne v3, v5, :L5
  :L4
  .line 12
    iput v8, v1, Lc/e/b/k/e;->n:I
    goto :L9
  :L5
  .line 13
    sget-object v5, Lc/e/b/k/e$b;->d:Lc/e/b/k/e$b;
    if-ne v3, v5, :L7
    sget-object v5, Lc/e/b/k/e$b;->c:Lc/e/b/k/e$b;
    if-eq v4, v5, :L6
    sget-object v5, Lc/e/b/k/e$b;->b:Lc/e/b/k/e$b;
    if-ne v4, v5, :L7
  :L6
  .line 14
    iput v8, v1, Lc/e/b/k/e;->o:I
    goto :L9
  :L7
  .line 15
    sget-object v5, Lc/e/b/k/e$b;->d:Lc/e/b/k/e$b;
    if-ne v4, v5, :L9
    if-ne v3, v5, :L9
  .line 16
    iget v5, v1, Lc/e/b/k/e;->n:I
    if-nez v5, :L8
  .line 17
    iput v8, v1, Lc/e/b/k/e;->n:I
  :L8
  .line 18
    iget v5, v1, Lc/e/b/k/e;->o:I
    if-nez v5, :L9
  .line 19
    iput v8, v1, Lc/e/b/k/e;->o:I
  :L9
  .line 20
    sget-object v5, Lc/e/b/k/e$b;->d:Lc/e/b/k/e$b;
    if-ne v4, v5, :L11
    iget v5, v1, Lc/e/b/k/e;->n:I
    if-ne v5, v9, :L11
  .line 21
    iget-object v5, v1, Lc/e/b/k/e;->F:Lc/e/b/k/d;
    iget-object v5, v5, Lc/e/b/k/d;->f:Lc/e/b/k/d;
    if-eqz v5, :L10
    iget-object v5, v1, Lc/e/b/k/e;->H:Lc/e/b/k/d;
    iget-object v5, v5, Lc/e/b/k/d;->f:Lc/e/b/k/d;
    if-nez v5, :L11
  :L10
  .line 22
    sget-object v4, Lc/e/b/k/e$b;->c:Lc/e/b/k/e$b;
  :L11
    move-object v5, v4
  .line 23
    sget-object v4, Lc/e/b/k/e$b;->d:Lc/e/b/k/e$b;
    if-ne v3, v4, :L13
    iget v4, v1, Lc/e/b/k/e;->o:I
    if-ne v4, v9, :L13
  .line 24
    iget-object v4, v1, Lc/e/b/k/e;->G:Lc/e/b/k/d;
    iget-object v4, v4, Lc/e/b/k/d;->f:Lc/e/b/k/d;
    if-eqz v4, :L12
    iget-object v4, v1, Lc/e/b/k/e;->I:Lc/e/b/k/d;
    iget-object v4, v4, Lc/e/b/k/d;->f:Lc/e/b/k/d;
    if-nez v4, :L13
  :L12
  .line 25
    sget-object v3, Lc/e/b/k/e$b;->c:Lc/e/b/k/e$b;
  :L13
    move-object v7, v3
  .line 26
    iget-object v3, v1, Lc/e/b/k/e;->d:Lc/e/b/k/m/l;
    iput-object v5, v3, Lc/e/b/k/m/p;->d:Lc/e/b/k/e$b;
  .line 27
    iget v4, v1, Lc/e/b/k/e;->n:I
    iput v4, v3, Lc/e/b/k/m/p;->a:I
  .line 28
    iget-object v3, v1, Lc/e/b/k/e;->e:Lc/e/b/k/m/n;
    iput-object v7, v3, Lc/e/b/k/m/p;->d:Lc/e/b/k/e$b;
  .line 29
    iget v4, v1, Lc/e/b/k/e;->o:I
    iput v4, v3, Lc/e/b/k/m/p;->a:I
  .line 30
    sget-object v3, Lc/e/b/k/e$b;->e:Lc/e/b/k/e$b;
    if-eq v5, v3, :L14
    sget-object v3, Lc/e/b/k/e$b;->b:Lc/e/b/k/e$b;
    if-eq v5, v3, :L14
    sget-object v3, Lc/e/b/k/e$b;->c:Lc/e/b/k/e$b;
    if-ne v5, v3, :L15
  :L14
    sget-object v3, Lc/e/b/k/e$b;->e:Lc/e/b/k/e$b;
    if-eq v7, v3, :L37
    sget-object v3, Lc/e/b/k/e$b;->b:Lc/e/b/k/e$b;
    if-eq v7, v3, :L37
    sget-object v3, Lc/e/b/k/e$b;->c:Lc/e/b/k/e$b;
    if-ne v7, v3, :L15
    goto/16 :L37
  :L15
  .line 31
    sget-object v3, Lc/e/b/k/e$b;->d:Lc/e/b/k/e$b;
    const/high16 v11, 16128
    if-ne v5, v3, :L23
    sget-object v3, Lc/e/b/k/e$b;->c:Lc/e/b/k/e$b;
    if-eq v7, v3, :L16
    sget-object v3, Lc/e/b/k/e$b;->b:Lc/e/b/k/e$b;
    if-ne v7, v3, :L23
  :L16
  .line 32
    iget v3, v1, Lc/e/b/k/e;->n:I
    if-ne v3, v8, :L18
  .line 33
    sget-object v2, Lc/e/b/k/e$b;->c:Lc/e/b/k/e$b;
    if-ne v7, v2, :L17
    const/4 v6, 0
    const/4 v8, 0
    move-object v3, p0
    move-object v4, v1
    move-object v5, v2
    move-object v7, v2
  .line 34
    invoke-direct/range { v3 .. v8 }, Lc/e/b/k/m/e;->l(Lc/e/b/k/e;Lc/e/b/k/e$b;ILc/e/b/k/e$b;I)V
  :L17
  .line 35
    invoke-virtual { v1 }, Lc/e/b/k/e;->v()I
    move-result v8
    int-to-float v2, v8
  .line 36
    iget v3, v1, Lc/e/b/k/e;->U:F
    mul-float v2, v2, v3
    add-float/2addr v2, v11
    float-to-int v6, v2
  .line 37
    sget-object v7, Lc/e/b/k/e$b;->b:Lc/e/b/k/e$b;
    move-object v3, p0
    move-object v4, v1
    move-object v5, v7
    invoke-direct/range { v3 .. v8 }, Lc/e/b/k/m/e;->l(Lc/e/b/k/e;Lc/e/b/k/e$b;ILc/e/b/k/e$b;I)V
  .line 38
    iget-object v2, v1, Lc/e/b/k/e;->d:Lc/e/b/k/m/l;
    iget-object v2, v2, Lc/e/b/k/m/p;->e:Lc/e/b/k/m/g;
    invoke-virtual { v1 }, Lc/e/b/k/e;->R()I
    move-result v3
    invoke-virtual { v2, v3 }, Lc/e/b/k/m/g;->d(I)V
  .line 39
    iget-object v2, v1, Lc/e/b/k/e;->e:Lc/e/b/k/m/n;
    iget-object v2, v2, Lc/e/b/k/m/p;->e:Lc/e/b/k/m/g;
    invoke-virtual { v1 }, Lc/e/b/k/e;->v()I
    move-result v3
    invoke-virtual { v2, v3 }, Lc/e/b/k/m/g;->d(I)V
  .line 40
    iput-boolean v9, v1, Lc/e/b/k/e;->a:Z
    goto/16 :L0
  :L18
    if-ne v3, v9, :L19
  .line 41
    sget-object v5, Lc/e/b/k/e$b;->c:Lc/e/b/k/e$b;
    const/4 v6, 0
    const/4 v8, 0
    move-object v3, p0
    move-object v4, v1
    invoke-direct/range { v3 .. v8 }, Lc/e/b/k/m/e;->l(Lc/e/b/k/e;Lc/e/b/k/e$b;ILc/e/b/k/e$b;I)V
  .line 42
    iget-object v2, v1, Lc/e/b/k/e;->d:Lc/e/b/k/m/l;
    iget-object v2, v2, Lc/e/b/k/m/p;->e:Lc/e/b/k/m/g;
    invoke-virtual { v1 }, Lc/e/b/k/e;->R()I
    move-result v1
    iput v1, v2, Lc/e/b/k/m/g;->m:I
    goto/16 :L0
  :L19
    if-ne v3, v6, :L21
  .line 43
    iget-object v3, p1, Lc/e/b/k/e;->Q:[Lc/e/b/k/e$b;
    aget-object v4, v3, v2
    sget-object v12, Lc/e/b/k/e$b;->b:Lc/e/b/k/e$b;
    if-eq v4, v12, :L20
    aget-object v3, v3, v2
    sget-object v4, Lc/e/b/k/e$b;->e:Lc/e/b/k/e$b;
    if-ne v3, v4, :L23
  :L20
  .line 44
    iget v2, v1, Lc/e/b/k/e;->s:F
  .line 45
    invoke-virtual { p1 }, Lc/e/b/k/e;->R()I
    move-result v3
    int-to-float v3, v3
    mul-float v2, v2, v3
    add-float/2addr v2, v11
    float-to-int v6, v2
  .line 46
    invoke-virtual { v1 }, Lc/e/b/k/e;->v()I
    move-result v8
  .line 47
    sget-object v5, Lc/e/b/k/e$b;->b:Lc/e/b/k/e$b;
    move-object v3, p0
    move-object v4, v1
    invoke-direct/range { v3 .. v8 }, Lc/e/b/k/m/e;->l(Lc/e/b/k/e;Lc/e/b/k/e$b;ILc/e/b/k/e$b;I)V
  .line 48
    iget-object v2, v1, Lc/e/b/k/e;->d:Lc/e/b/k/m/l;
    iget-object v2, v2, Lc/e/b/k/m/p;->e:Lc/e/b/k/m/g;
    invoke-virtual { v1 }, Lc/e/b/k/e;->R()I
    move-result v3
    invoke-virtual { v2, v3 }, Lc/e/b/k/m/g;->d(I)V
  .line 49
    iget-object v2, v1, Lc/e/b/k/e;->e:Lc/e/b/k/m/n;
    iget-object v2, v2, Lc/e/b/k/m/p;->e:Lc/e/b/k/m/g;
    invoke-virtual { v1 }, Lc/e/b/k/e;->v()I
    move-result v3
    invoke-virtual { v2, v3 }, Lc/e/b/k/m/g;->d(I)V
  .line 50
    iput-boolean v9, v1, Lc/e/b/k/e;->a:Z
    goto/16 :L0
  :L21
  .line 51
    iget-object v3, v1, Lc/e/b/k/e;->N:[Lc/e/b/k/d;
    aget-object v4, v3, v2
    iget-object v4, v4, Lc/e/b/k/d;->f:Lc/e/b/k/d;
    if-eqz v4, :L22
    aget-object v3, v3, v9
    iget-object v3, v3, Lc/e/b/k/d;->f:Lc/e/b/k/d;
    if-nez v3, :L23
  :L22
  .line 52
    sget-object v5, Lc/e/b/k/e$b;->c:Lc/e/b/k/e$b;
    const/4 v6, 0
    const/4 v8, 0
    move-object v3, p0
    move-object v4, v1
    invoke-direct/range { v3 .. v8 }, Lc/e/b/k/m/e;->l(Lc/e/b/k/e;Lc/e/b/k/e$b;ILc/e/b/k/e$b;I)V
  .line 53
    iget-object v2, v1, Lc/e/b/k/e;->d:Lc/e/b/k/m/l;
    iget-object v2, v2, Lc/e/b/k/m/p;->e:Lc/e/b/k/m/g;
    invoke-virtual { v1 }, Lc/e/b/k/e;->R()I
    move-result v3
    invoke-virtual { v2, v3 }, Lc/e/b/k/m/g;->d(I)V
  .line 54
    iget-object v2, v1, Lc/e/b/k/e;->e:Lc/e/b/k/m/n;
    iget-object v2, v2, Lc/e/b/k/m/p;->e:Lc/e/b/k/m/g;
    invoke-virtual { v1 }, Lc/e/b/k/e;->v()I
    move-result v3
    invoke-virtual { v2, v3 }, Lc/e/b/k/m/g;->d(I)V
  .line 55
    iput-boolean v9, v1, Lc/e/b/k/e;->a:Z
    goto/16 :L0
  :L23
  .line 56
    sget-object v3, Lc/e/b/k/e$b;->d:Lc/e/b/k/e$b;
    if-ne v7, v3, :L32
    sget-object v3, Lc/e/b/k/e$b;->c:Lc/e/b/k/e$b;
    if-eq v5, v3, :L24
    sget-object v3, Lc/e/b/k/e$b;->b:Lc/e/b/k/e$b;
    if-ne v5, v3, :L32
  :L24
  .line 57
    iget v3, v1, Lc/e/b/k/e;->o:I
    if-ne v3, v8, :L27
  .line 58
    sget-object v7, Lc/e/b/k/e$b;->c:Lc/e/b/k/e$b;
    if-ne v5, v7, :L25
    const/4 v6, 0
    const/4 v8, 0
    move-object v3, p0
    move-object v4, v1
    move-object v5, v7
  .line 59
    invoke-direct/range { v3 .. v8 }, Lc/e/b/k/m/e;->l(Lc/e/b/k/e;Lc/e/b/k/e$b;ILc/e/b/k/e$b;I)V
  :L25
  .line 60
    invoke-virtual { v1 }, Lc/e/b/k/e;->R()I
    move-result v6
  .line 61
    iget v2, v1, Lc/e/b/k/e;->U:F
  .line 62
    invoke-virtual { v1 }, Lc/e/b/k/e;->u()I
    move-result v3
    const/4 v4, -1
    if-ne v3, v4, :L26
    div-float v2, v10, v2
  :L26
    int-to-float v3, v6
    mul-float v3, v3, v2
    add-float/2addr v3, v11
    float-to-int v8, v3
  .line 63
    sget-object v7, Lc/e/b/k/e$b;->b:Lc/e/b/k/e$b;
    move-object v3, p0
    move-object v4, v1
    move-object v5, v7
    invoke-direct/range { v3 .. v8 }, Lc/e/b/k/m/e;->l(Lc/e/b/k/e;Lc/e/b/k/e$b;ILc/e/b/k/e$b;I)V
  .line 64
    iget-object v2, v1, Lc/e/b/k/e;->d:Lc/e/b/k/m/l;
    iget-object v2, v2, Lc/e/b/k/m/p;->e:Lc/e/b/k/m/g;
    invoke-virtual { v1 }, Lc/e/b/k/e;->R()I
    move-result v3
    invoke-virtual { v2, v3 }, Lc/e/b/k/m/g;->d(I)V
  .line 65
    iget-object v2, v1, Lc/e/b/k/e;->e:Lc/e/b/k/m/n;
    iget-object v2, v2, Lc/e/b/k/m/p;->e:Lc/e/b/k/m/g;
    invoke-virtual { v1 }, Lc/e/b/k/e;->v()I
    move-result v3
    invoke-virtual { v2, v3 }, Lc/e/b/k/m/g;->d(I)V
  .line 66
    iput-boolean v9, v1, Lc/e/b/k/e;->a:Z
    goto/16 :L0
  :L27
    if-ne v3, v9, :L28
    const/4 v6, 0
  .line 67
    sget-object v7, Lc/e/b/k/e$b;->c:Lc/e/b/k/e$b;
    const/4 v8, 0
    move-object v3, p0
    move-object v4, v1
    invoke-direct/range { v3 .. v8 }, Lc/e/b/k/m/e;->l(Lc/e/b/k/e;Lc/e/b/k/e$b;ILc/e/b/k/e$b;I)V
  .line 68
    iget-object v2, v1, Lc/e/b/k/e;->e:Lc/e/b/k/m/n;
    iget-object v2, v2, Lc/e/b/k/m/p;->e:Lc/e/b/k/m/g;
    invoke-virtual { v1 }, Lc/e/b/k/e;->v()I
    move-result v1
    iput v1, v2, Lc/e/b/k/m/g;->m:I
    goto/16 :L0
  :L28
    if-ne v3, v6, :L30
  .line 69
    iget-object v3, p1, Lc/e/b/k/e;->Q:[Lc/e/b/k/e$b;
    aget-object v4, v3, v9
    sget-object v8, Lc/e/b/k/e$b;->b:Lc/e/b/k/e$b;
    if-eq v4, v8, :L29
    aget-object v3, v3, v9
    sget-object v4, Lc/e/b/k/e$b;->e:Lc/e/b/k/e$b;
    if-ne v3, v4, :L32
  :L29
  .line 70
    iget v2, v1, Lc/e/b/k/e;->v:F
  .line 71
    invoke-virtual { v1 }, Lc/e/b/k/e;->R()I
    move-result v6
  .line 72
    invoke-virtual { p1 }, Lc/e/b/k/e;->v()I
    move-result v3
    int-to-float v3, v3
    mul-float v2, v2, v3
    add-float/2addr v2, v11
    float-to-int v8, v2
  .line 73
    sget-object v7, Lc/e/b/k/e$b;->b:Lc/e/b/k/e$b;
    move-object v3, p0
    move-object v4, v1
    invoke-direct/range { v3 .. v8 }, Lc/e/b/k/m/e;->l(Lc/e/b/k/e;Lc/e/b/k/e$b;ILc/e/b/k/e$b;I)V
  .line 74
    iget-object v2, v1, Lc/e/b/k/e;->d:Lc/e/b/k/m/l;
    iget-object v2, v2, Lc/e/b/k/m/p;->e:Lc/e/b/k/m/g;
    invoke-virtual { v1 }, Lc/e/b/k/e;->R()I
    move-result v3
    invoke-virtual { v2, v3 }, Lc/e/b/k/m/g;->d(I)V
  .line 75
    iget-object v2, v1, Lc/e/b/k/e;->e:Lc/e/b/k/m/n;
    iget-object v2, v2, Lc/e/b/k/m/p;->e:Lc/e/b/k/m/g;
    invoke-virtual { v1 }, Lc/e/b/k/e;->v()I
    move-result v3
    invoke-virtual { v2, v3 }, Lc/e/b/k/m/g;->d(I)V
  .line 76
    iput-boolean v9, v1, Lc/e/b/k/e;->a:Z
    goto/16 :L0
  :L30
  .line 77
    iget-object v3, v1, Lc/e/b/k/e;->N:[Lc/e/b/k/d;
    aget-object v4, v3, v6
    iget-object v4, v4, Lc/e/b/k/d;->f:Lc/e/b/k/d;
    if-eqz v4, :L31
    aget-object v3, v3, v8
    iget-object v3, v3, Lc/e/b/k/d;->f:Lc/e/b/k/d;
    if-nez v3, :L32
  :L31
  .line 78
    sget-object v5, Lc/e/b/k/e$b;->c:Lc/e/b/k/e$b;
    const/4 v6, 0
    const/4 v8, 0
    move-object v3, p0
    move-object v4, v1
    invoke-direct/range { v3 .. v8 }, Lc/e/b/k/m/e;->l(Lc/e/b/k/e;Lc/e/b/k/e$b;ILc/e/b/k/e$b;I)V
  .line 79
    iget-object v2, v1, Lc/e/b/k/e;->d:Lc/e/b/k/m/l;
    iget-object v2, v2, Lc/e/b/k/m/p;->e:Lc/e/b/k/m/g;
    invoke-virtual { v1 }, Lc/e/b/k/e;->R()I
    move-result v3
    invoke-virtual { v2, v3 }, Lc/e/b/k/m/g;->d(I)V
  .line 80
    iget-object v2, v1, Lc/e/b/k/e;->e:Lc/e/b/k/m/n;
    iget-object v2, v2, Lc/e/b/k/m/p;->e:Lc/e/b/k/m/g;
    invoke-virtual { v1 }, Lc/e/b/k/e;->v()I
    move-result v3
    invoke-virtual { v2, v3 }, Lc/e/b/k/m/g;->d(I)V
  .line 81
    iput-boolean v9, v1, Lc/e/b/k/e;->a:Z
    goto/16 :L0
  :L32
  .line 82
    sget-object v3, Lc/e/b/k/e$b;->d:Lc/e/b/k/e$b;
    if-ne v5, v3, :L0
    if-ne v7, v3, :L0
  .line 83
    iget v3, v1, Lc/e/b/k/e;->n:I
    if-eq v3, v9, :L36
    iget v4, v1, Lc/e/b/k/e;->o:I
    if-ne v4, v9, :L33
    goto :L36
  :L33
    if-ne v4, v6, :L0
    if-ne v3, v6, :L0
  .line 84
    iget-object v3, p1, Lc/e/b/k/e;->Q:[Lc/e/b/k/e$b;
    aget-object v4, v3, v2
    sget-object v5, Lc/e/b/k/e$b;->b:Lc/e/b/k/e$b;
    if-eq v4, v5, :L34
    aget-object v2, v3, v2
    if-ne v2, v5, :L0
  :L34
    iget-object v2, p1, Lc/e/b/k/e;->Q:[Lc/e/b/k/e$b;
    aget-object v3, v2, v9
    sget-object v4, Lc/e/b/k/e$b;->b:Lc/e/b/k/e$b;
    if-eq v3, v4, :L35
    aget-object v2, v2, v9
    if-ne v2, v4, :L0
  :L35
  .line 85
    iget v2, v1, Lc/e/b/k/e;->s:F
  .line 86
    iget v3, v1, Lc/e/b/k/e;->v:F
  .line 87
    invoke-virtual { p1 }, Lc/e/b/k/e;->R()I
    move-result v4
    int-to-float v4, v4
    mul-float v2, v2, v4
    add-float/2addr v2, v11
    float-to-int v6, v2
  .line 88
    invoke-virtual { p1 }, Lc/e/b/k/e;->v()I
    move-result v2
    int-to-float v2, v2
    mul-float v3, v3, v2
    add-float/2addr v3, v11
    float-to-int v8, v3
  .line 89
    sget-object v7, Lc/e/b/k/e$b;->b:Lc/e/b/k/e$b;
    move-object v3, p0
    move-object v4, v1
    move-object v5, v7
    invoke-direct/range { v3 .. v8 }, Lc/e/b/k/m/e;->l(Lc/e/b/k/e;Lc/e/b/k/e$b;ILc/e/b/k/e$b;I)V
  .line 90
    iget-object v2, v1, Lc/e/b/k/e;->d:Lc/e/b/k/m/l;
    iget-object v2, v2, Lc/e/b/k/m/p;->e:Lc/e/b/k/m/g;
    invoke-virtual { v1 }, Lc/e/b/k/e;->R()I
    move-result v3
    invoke-virtual { v2, v3 }, Lc/e/b/k/m/g;->d(I)V
  .line 91
    iget-object v2, v1, Lc/e/b/k/e;->e:Lc/e/b/k/m/n;
    iget-object v2, v2, Lc/e/b/k/m/p;->e:Lc/e/b/k/m/g;
    invoke-virtual { v1 }, Lc/e/b/k/e;->v()I
    move-result v3
    invoke-virtual { v2, v3 }, Lc/e/b/k/m/g;->d(I)V
  .line 92
    iput-boolean v9, v1, Lc/e/b/k/e;->a:Z
    goto/16 :L0
  :L36
  .line 93
    sget-object v7, Lc/e/b/k/e$b;->c:Lc/e/b/k/e$b;
    const/4 v6, 0
    const/4 v8, 0
    move-object v3, p0
    move-object v4, v1
    move-object v5, v7
    invoke-direct/range { v3 .. v8 }, Lc/e/b/k/m/e;->l(Lc/e/b/k/e;Lc/e/b/k/e$b;ILc/e/b/k/e$b;I)V
  .line 94
    iget-object v2, v1, Lc/e/b/k/e;->d:Lc/e/b/k/m/l;
    iget-object v2, v2, Lc/e/b/k/m/p;->e:Lc/e/b/k/m/g;
    invoke-virtual { v1 }, Lc/e/b/k/e;->R()I
    move-result v3
    iput v3, v2, Lc/e/b/k/m/g;->m:I
  .line 95
    iget-object v2, v1, Lc/e/b/k/e;->e:Lc/e/b/k/m/n;
    iget-object v2, v2, Lc/e/b/k/m/p;->e:Lc/e/b/k/m/g;
    invoke-virtual { v1 }, Lc/e/b/k/e;->v()I
    move-result v1
    iput v1, v2, Lc/e/b/k/m/g;->m:I
    goto/16 :L0
  :L37
  .line 96
    invoke-virtual { v1 }, Lc/e/b/k/e;->R()I
    move-result v2
  .line 97
    sget-object v3, Lc/e/b/k/e$b;->e:Lc/e/b/k/e$b;
    if-ne v5, v3, :L38
  .line 98
    invoke-virtual { p1 }, Lc/e/b/k/e;->R()I
    move-result v2
    iget-object v3, v1, Lc/e/b/k/e;->F:Lc/e/b/k/d;
    iget v3, v3, Lc/e/b/k/d;->g:I
    sub-int/2addr v2, v3
    iget-object v3, v1, Lc/e/b/k/e;->H:Lc/e/b/k/d;
    iget v3, v3, Lc/e/b/k/d;->g:I
    sub-int/2addr v2, v3
  .line 99
    sget-object v3, Lc/e/b/k/e$b;->b:Lc/e/b/k/e$b;
    move v6, v2
    move-object v5, v3
    goto :L39
  :L38
    move v6, v2
  :L39
  .line 100
    invoke-virtual { v1 }, Lc/e/b/k/e;->v()I
    move-result v2
  .line 101
    sget-object v3, Lc/e/b/k/e$b;->e:Lc/e/b/k/e$b;
    if-ne v7, v3, :L40
  .line 102
    invoke-virtual { p1 }, Lc/e/b/k/e;->v()I
    move-result v2
    iget-object v3, v1, Lc/e/b/k/e;->G:Lc/e/b/k/d;
    iget v3, v3, Lc/e/b/k/d;->g:I
    sub-int/2addr v2, v3
    iget-object v3, v1, Lc/e/b/k/e;->I:Lc/e/b/k/d;
    iget v3, v3, Lc/e/b/k/d;->g:I
    sub-int/2addr v2, v3
  .line 103
    sget-object v3, Lc/e/b/k/e$b;->b:Lc/e/b/k/e$b;
    move v8, v2
    move-object v7, v3
    goto :L41
  :L40
    move v8, v2
  :L41
    move-object v3, p0
    move-object v4, v1
  .line 104
    invoke-direct/range { v3 .. v8 }, Lc/e/b/k/m/e;->l(Lc/e/b/k/e;Lc/e/b/k/e$b;ILc/e/b/k/e$b;I)V
  .line 105
    iget-object v2, v1, Lc/e/b/k/e;->d:Lc/e/b/k/m/l;
    iget-object v2, v2, Lc/e/b/k/m/p;->e:Lc/e/b/k/m/g;
    invoke-virtual { v1 }, Lc/e/b/k/e;->R()I
    move-result v3
    invoke-virtual { v2, v3 }, Lc/e/b/k/m/g;->d(I)V
  .line 106
    iget-object v2, v1, Lc/e/b/k/e;->e:Lc/e/b/k/m/n;
    iget-object v2, v2, Lc/e/b/k/m/p;->e:Lc/e/b/k/m/g;
    invoke-virtual { v1 }, Lc/e/b/k/e;->v()I
    move-result v3
    invoke-virtual { v2, v3 }, Lc/e/b/k/m/g;->d(I)V
  .line 107
    iput-boolean v9, v1, Lc/e/b/k/e;->a:Z
    goto/16 :L0
  :L42
    return v2
.end method

.method private e(Lc/e/b/k/f;I)I
  .registers 9
  .line 1
    iget-object v0, p0, Lc/e/b/k/m/e;->h:Ljava/util/ArrayList;
    invoke-virtual { v0 }, Ljava/util/ArrayList;->size()I
    move-result v0
    const-wide/16 v1, 0
    const/4 v3, 0
  :L0
    if-ge v3, v0, :L1
  .line 2
    iget-object v4, p0, Lc/e/b/k/m/e;->h:Ljava/util/ArrayList;
    invoke-virtual { v4, v3 }, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
    move-result-object v4
    check-cast v4, Lc/e/b/k/m/m;
  .line 3
    invoke-virtual { v4, p1, p2 }, Lc/e/b/k/m/m;->b(Lc/e/b/k/f;I)J
    move-result-wide v4
  .line 4
    invoke-static { v1, v2, v4, v5 }, Ljava/lang/Math;->max(JJ)J
    move-result-wide v1
    add-int/lit8 v3, v3, 1
    goto :L0
  :L1
    long-to-int p1, v1
    return p1
.end method

.method private i(Lc/e/b/k/m/p;ILjava/util/ArrayList;)V
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(",
      "Lc/e/b/k/m/p;",
      "I",
      "Ljava/util/ArrayList<",
      "Lc/e/b/k/m/m;",
      ">;)V"
    }
  .end annotation
  .registers 14
  .line 1
    iget-object v0, p1, Lc/e/b/k/m/p;->h:Lc/e/b/k/m/f;
    iget-object v0, v0, Lc/e/b/k/m/f;->k:Ljava/util/List;
    invoke-interface { v0 }, Ljava/util/List;->iterator()Ljava/util/Iterator;
    move-result-object v0
  :L0
    invoke-interface { v0 }, Ljava/util/Iterator;->hasNext()Z
    move-result v1
    if-eqz v1, :L2
    invoke-interface { v0 }, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object v1
    check-cast v1, Lc/e/b/k/m/d;
  .line 2
    instance-of v2, v1, Lc/e/b/k/m/f;
    if-eqz v2, :L1
  .line 3
    move-object v4, v1
    check-cast v4, Lc/e/b/k/m/f;
    const/4 v6, 0
  .line 4
    iget-object v7, p1, Lc/e/b/k/m/p;->i:Lc/e/b/k/m/f;
    const/4 v9, 0
    move-object v3, p0
    move v5, p2
    move-object v8, p3
    invoke-direct/range { v3 .. v9 }, Lc/e/b/k/m/e;->a(Lc/e/b/k/m/f;IILc/e/b/k/m/f;Ljava/util/ArrayList;Lc/e/b/k/m/m;)V
    goto :L0
  :L1
  .line 5
    instance-of v2, v1, Lc/e/b/k/m/p;
    if-eqz v2, :L0
  .line 6
    check-cast v1, Lc/e/b/k/m/p;
  .line 7
    iget-object v3, v1, Lc/e/b/k/m/p;->h:Lc/e/b/k/m/f;
    const/4 v5, 0
    iget-object v6, p1, Lc/e/b/k/m/p;->i:Lc/e/b/k/m/f;
    const/4 v8, 0
    move-object v2, p0
    move v4, p2
    move-object v7, p3
    invoke-direct/range { v2 .. v8 }, Lc/e/b/k/m/e;->a(Lc/e/b/k/m/f;IILc/e/b/k/m/f;Ljava/util/ArrayList;Lc/e/b/k/m/m;)V
    goto :L0
  :L2
  .line 8
    iget-object v0, p1, Lc/e/b/k/m/p;->i:Lc/e/b/k/m/f;
    iget-object v0, v0, Lc/e/b/k/m/f;->k:Ljava/util/List;
    invoke-interface { v0 }, Ljava/util/List;->iterator()Ljava/util/Iterator;
    move-result-object v0
  :L3
    invoke-interface { v0 }, Ljava/util/Iterator;->hasNext()Z
    move-result v1
    if-eqz v1, :L5
    invoke-interface { v0 }, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object v1
    check-cast v1, Lc/e/b/k/m/d;
  .line 9
    instance-of v2, v1, Lc/e/b/k/m/f;
    if-eqz v2, :L4
  .line 10
    move-object v4, v1
    check-cast v4, Lc/e/b/k/m/f;
    const/4 v6, 1
  .line 11
    iget-object v7, p1, Lc/e/b/k/m/p;->h:Lc/e/b/k/m/f;
    const/4 v9, 0
    move-object v3, p0
    move v5, p2
    move-object v8, p3
    invoke-direct/range { v3 .. v9 }, Lc/e/b/k/m/e;->a(Lc/e/b/k/m/f;IILc/e/b/k/m/f;Ljava/util/ArrayList;Lc/e/b/k/m/m;)V
    goto :L3
  :L4
  .line 12
    instance-of v2, v1, Lc/e/b/k/m/p;
    if-eqz v2, :L3
  .line 13
    check-cast v1, Lc/e/b/k/m/p;
  .line 14
    iget-object v3, v1, Lc/e/b/k/m/p;->i:Lc/e/b/k/m/f;
    const/4 v5, 1
    iget-object v6, p1, Lc/e/b/k/m/p;->h:Lc/e/b/k/m/f;
    const/4 v8, 0
    move-object v2, p0
    move v4, p2
    move-object v7, p3
    invoke-direct/range { v2 .. v8 }, Lc/e/b/k/m/e;->a(Lc/e/b/k/m/f;IILc/e/b/k/m/f;Ljava/util/ArrayList;Lc/e/b/k/m/m;)V
    goto :L3
  :L5
    const/4 v0, 1
    if-ne p2, v0, :L7
  .line 15
    check-cast p1, Lc/e/b/k/m/n;
    iget-object p1, p1, Lc/e/b/k/m/n;->k:Lc/e/b/k/m/f;
    iget-object p1, p1, Lc/e/b/k/m/f;->k:Ljava/util/List;
    invoke-interface { p1 }, Ljava/util/List;->iterator()Ljava/util/Iterator;
    move-result-object p1
  :L6
    invoke-interface { p1 }, Ljava/util/Iterator;->hasNext()Z
    move-result v0
    if-eqz v0, :L7
    invoke-interface { p1 }, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Lc/e/b/k/m/d;
  .line 16
    instance-of v1, v0, Lc/e/b/k/m/f;
    if-eqz v1, :L6
  .line 17
    move-object v3, v0
    check-cast v3, Lc/e/b/k/m/f;
    const/4 v5, 2
    const/4 v6, 0
    const/4 v8, 0
    move-object v2, p0
    move v4, p2
    move-object v7, p3
  .line 18
    invoke-direct/range { v2 .. v8 }, Lc/e/b/k/m/e;->a(Lc/e/b/k/m/f;IILc/e/b/k/m/f;Ljava/util/ArrayList;Lc/e/b/k/m/m;)V
    goto :L6
  :L7
    return-void
.end method

.method private l(Lc/e/b/k/e;Lc/e/b/k/e$b;ILc/e/b/k/e$b;I)V
  .registers 7
  .line 1
    iget-object v0, p0, Lc/e/b/k/m/e;->g:Lc/e/b/k/m/b$a;
    iput-object p2, v0, Lc/e/b/k/m/b$a;->a:Lc/e/b/k/e$b;
  .line 2
    iput-object p4, v0, Lc/e/b/k/m/b$a;->b:Lc/e/b/k/e$b;
  .line 3
    iput p3, v0, Lc/e/b/k/m/b$a;->c:I
  .line 4
    iput p5, v0, Lc/e/b/k/m/b$a;->d:I
  .line 5
    iget-object p2, p0, Lc/e/b/k/m/e;->f:Lc/e/b/k/m/b$b;
    invoke-interface { p2, p1, v0 }, Lc/e/b/k/m/b$b;->a(Lc/e/b/k/e;Lc/e/b/k/m/b$a;)V
  .line 6
    iget-object p2, p0, Lc/e/b/k/m/e;->g:Lc/e/b/k/m/b$a;
    iget p2, p2, Lc/e/b/k/m/b$a;->e:I
    invoke-virtual { p1, p2 }, Lc/e/b/k/e;->U0(I)V
  .line 7
    iget-object p2, p0, Lc/e/b/k/m/e;->g:Lc/e/b/k/m/b$a;
    iget p2, p2, Lc/e/b/k/m/b$a;->f:I
    invoke-virtual { p1, p2 }, Lc/e/b/k/e;->v0(I)V
  .line 8
    iget-object p2, p0, Lc/e/b/k/m/e;->g:Lc/e/b/k/m/b$a;
    iget-boolean p2, p2, Lc/e/b/k/m/b$a;->h:Z
    invoke-virtual { p1, p2 }, Lc/e/b/k/e;->u0(Z)V
  .line 9
    iget-object p2, p0, Lc/e/b/k/m/e;->g:Lc/e/b/k/m/b$a;
    iget p2, p2, Lc/e/b/k/m/b$a;->g:I
    invoke-virtual { p1, p2 }, Lc/e/b/k/e;->k0(I)V
    return-void
.end method

.method public c()V
  .registers 5
  .line 1
    iget-object v0, p0, Lc/e/b/k/m/e;->e:Ljava/util/ArrayList;
    invoke-virtual { p0, v0 }, Lc/e/b/k/m/e;->d(Ljava/util/ArrayList;)V
  .line 2
    iget-object v0, p0, Lc/e/b/k/m/e;->h:Ljava/util/ArrayList;
    invoke-virtual { v0 }, Ljava/util/ArrayList;->clear()V
    const/4 v0, 0
  .line 3
    sput v0, Lc/e/b/k/m/m;->d:I
  .line 4
    iget-object v1, p0, Lc/e/b/k/m/e;->a:Lc/e/b/k/f;
    iget-object v1, v1, Lc/e/b/k/e;->d:Lc/e/b/k/m/l;
    iget-object v2, p0, Lc/e/b/k/m/e;->h:Ljava/util/ArrayList;
    invoke-direct { p0, v1, v0, v2 }, Lc/e/b/k/m/e;->i(Lc/e/b/k/m/p;ILjava/util/ArrayList;)V
  .line 5
    iget-object v1, p0, Lc/e/b/k/m/e;->a:Lc/e/b/k/f;
    iget-object v1, v1, Lc/e/b/k/e;->e:Lc/e/b/k/m/n;
    iget-object v2, p0, Lc/e/b/k/m/e;->h:Ljava/util/ArrayList;
    const/4 v3, 1
    invoke-direct { p0, v1, v3, v2 }, Lc/e/b/k/m/e;->i(Lc/e/b/k/m/p;ILjava/util/ArrayList;)V
  .line 6
    iput-boolean v0, p0, Lc/e/b/k/m/e;->b:Z
    return-void
.end method

.method public d(Ljava/util/ArrayList;)V
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(",
      "Ljava/util/ArrayList<",
      "Lc/e/b/k/m/p;",
      ">;)V"
    }
  .end annotation
  .registers 7
  .line 1
    invoke-virtual { p1 }, Ljava/util/ArrayList;->clear()V
  .line 2
    iget-object v0, p0, Lc/e/b/k/m/e;->d:Lc/e/b/k/f;
    iget-object v0, v0, Lc/e/b/k/e;->d:Lc/e/b/k/m/l;
    invoke-virtual { v0 }, Lc/e/b/k/m/l;->f()V
  .line 3
    iget-object v0, p0, Lc/e/b/k/m/e;->d:Lc/e/b/k/f;
    iget-object v0, v0, Lc/e/b/k/e;->e:Lc/e/b/k/m/n;
    invoke-virtual { v0 }, Lc/e/b/k/m/n;->f()V
  .line 4
    iget-object v0, p0, Lc/e/b/k/m/e;->d:Lc/e/b/k/f;
    iget-object v0, v0, Lc/e/b/k/e;->d:Lc/e/b/k/m/l;
    invoke-virtual { p1, v0 }, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
  .line 5
    iget-object v0, p0, Lc/e/b/k/m/e;->d:Lc/e/b/k/f;
    iget-object v0, v0, Lc/e/b/k/e;->e:Lc/e/b/k/m/n;
    invoke-virtual { p1, v0 }, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
  .line 6
    iget-object v0, p0, Lc/e/b/k/m/e;->d:Lc/e/b/k/f;
    iget-object v0, v0, Lc/e/b/k/l;->p0:Ljava/util/ArrayList;
    invoke-virtual { v0 }, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
    move-result-object v0
    const/4 v1, 0
  :L0
    invoke-interface { v0 }, Ljava/util/Iterator;->hasNext()Z
    move-result v2
    if-eqz v2, :L10
    invoke-interface { v0 }, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object v2
    check-cast v2, Lc/e/b/k/e;
  .line 7
    instance-of v3, v2, Lc/e/b/k/g;
    if-eqz v3, :L1
  .line 8
    new-instance v3, Lc/e/b/k/m/j;
    invoke-direct { v3, v2 }, Lc/e/b/k/m/j;-><init>(Lc/e/b/k/e;)V
    invoke-virtual { p1, v3 }, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    goto :L0
  :L1
  .line 9
    invoke-virtual { v2 }, Lc/e/b/k/e;->Z()Z
    move-result v3
    if-eqz v3, :L4
  .line 10
    iget-object v3, v2, Lc/e/b/k/e;->b:Lc/e/b/k/m/c;
    if-nez v3, :L2
  .line 11
    new-instance v3, Lc/e/b/k/m/c;
    const/4 v4, 0
    invoke-direct { v3, v2, v4 }, Lc/e/b/k/m/c;-><init>(Lc/e/b/k/e;I)V
  .line 12
    iput-object v3, v2, Lc/e/b/k/e;->b:Lc/e/b/k/m/c;
  :L2
    if-nez v1, :L3
  .line 13
    new-instance v1, Ljava/util/HashSet;
    invoke-direct { v1 }, Ljava/util/HashSet;-><init>()V
  :L3
  .line 14
    iget-object v3, v2, Lc/e/b/k/e;->b:Lc/e/b/k/m/c;
    invoke-virtual { v1, v3 }, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    goto :L5
  :L4
  .line 15
    iget-object v3, v2, Lc/e/b/k/e;->d:Lc/e/b/k/m/l;
    invoke-virtual { p1, v3 }, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
  :L5
  .line 16
    invoke-virtual { v2 }, Lc/e/b/k/e;->b0()Z
    move-result v3
    if-eqz v3, :L8
  .line 17
    iget-object v3, v2, Lc/e/b/k/e;->c:Lc/e/b/k/m/c;
    if-nez v3, :L6
  .line 18
    new-instance v3, Lc/e/b/k/m/c;
    const/4 v4, 1
    invoke-direct { v3, v2, v4 }, Lc/e/b/k/m/c;-><init>(Lc/e/b/k/e;I)V
  .line 19
    iput-object v3, v2, Lc/e/b/k/e;->c:Lc/e/b/k/m/c;
  :L6
    if-nez v1, :L7
  .line 20
    new-instance v1, Ljava/util/HashSet;
    invoke-direct { v1 }, Ljava/util/HashSet;-><init>()V
  :L7
  .line 21
    iget-object v3, v2, Lc/e/b/k/e;->c:Lc/e/b/k/m/c;
    invoke-virtual { v1, v3 }, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    goto :L9
  :L8
  .line 22
    iget-object v3, v2, Lc/e/b/k/e;->e:Lc/e/b/k/m/n;
    invoke-virtual { p1, v3 }, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
  :L9
  .line 23
    instance-of v3, v2, Lc/e/b/k/i;
    if-eqz v3, :L0
  .line 24
    new-instance v3, Lc/e/b/k/m/k;
    invoke-direct { v3, v2 }, Lc/e/b/k/m/k;-><init>(Lc/e/b/k/e;)V
    invoke-virtual { p1, v3 }, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    goto :L0
  :L10
    if-eqz v1, :L11
  .line 25
    invoke-virtual { p1, v1 }, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z
  :L11
  .line 26
    invoke-virtual { p1 }, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
    move-result-object v0
  :L12
    invoke-interface { v0 }, Ljava/util/Iterator;->hasNext()Z
    move-result v1
    if-eqz v1, :L13
    invoke-interface { v0 }, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object v1
    check-cast v1, Lc/e/b/k/m/p;
  .line 27
    invoke-virtual { v1 }, Lc/e/b/k/m/p;->f()V
    goto :L12
  :L13
  .line 28
    invoke-virtual { p1 }, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
    move-result-object p1
  :L14
    invoke-interface { p1 }, Ljava/util/Iterator;->hasNext()Z
    move-result v0
    if-eqz v0, :L16
    invoke-interface { p1 }, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Lc/e/b/k/m/p;
  .line 29
    iget-object v1, v0, Lc/e/b/k/m/p;->b:Lc/e/b/k/e;
    iget-object v2, p0, Lc/e/b/k/m/e;->d:Lc/e/b/k/f;
    if-ne v1, v2, :L15
    goto :L14
  :L15
  .line 30
    invoke-virtual { v0 }, Lc/e/b/k/m/p;->d()V
    goto :L14
  :L16
    return-void
.end method

.method public f(Z)Z
  .registers 10
    const/4 v0, 1
    and-int/2addr p1, v0
  .line 1
    iget-boolean v1, p0, Lc/e/b/k/m/e;->b:Z
    const/4 v2, 0
    if-nez v1, :L0
    iget-boolean v1, p0, Lc/e/b/k/m/e;->c:Z
    if-eqz v1, :L3
  :L0
  .line 2
    iget-object v1, p0, Lc/e/b/k/m/e;->a:Lc/e/b/k/f;
    iget-object v1, v1, Lc/e/b/k/l;->p0:Ljava/util/ArrayList;
    invoke-virtual { v1 }, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
    move-result-object v1
  :L1
    invoke-interface { v1 }, Ljava/util/Iterator;->hasNext()Z
    move-result v3
    if-eqz v3, :L2
    invoke-interface { v1 }, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object v3
    check-cast v3, Lc/e/b/k/e;
  .line 3
    invoke-virtual { v3 }, Lc/e/b/k/e;->l()V
  .line 4
    iput-boolean v2, v3, Lc/e/b/k/e;->a:Z
  .line 5
    iget-object v4, v3, Lc/e/b/k/e;->d:Lc/e/b/k/m/l;
    invoke-virtual { v4 }, Lc/e/b/k/m/l;->r()V
  .line 6
    iget-object v3, v3, Lc/e/b/k/e;->e:Lc/e/b/k/m/n;
    invoke-virtual { v3 }, Lc/e/b/k/m/n;->q()V
    goto :L1
  :L2
  .line 7
    iget-object v1, p0, Lc/e/b/k/m/e;->a:Lc/e/b/k/f;
    invoke-virtual { v1 }, Lc/e/b/k/e;->l()V
  .line 8
    iget-object v1, p0, Lc/e/b/k/m/e;->a:Lc/e/b/k/f;
    iput-boolean v2, v1, Lc/e/b/k/e;->a:Z
  .line 9
    iget-object v1, v1, Lc/e/b/k/e;->d:Lc/e/b/k/m/l;
    invoke-virtual { v1 }, Lc/e/b/k/m/l;->r()V
  .line 10
    iget-object v1, p0, Lc/e/b/k/m/e;->a:Lc/e/b/k/f;
    iget-object v1, v1, Lc/e/b/k/e;->e:Lc/e/b/k/m/n;
    invoke-virtual { v1 }, Lc/e/b/k/m/n;->q()V
  .line 11
    iput-boolean v2, p0, Lc/e/b/k/m/e;->c:Z
  :L3
  .line 12
    iget-object v1, p0, Lc/e/b/k/m/e;->d:Lc/e/b/k/f;
    invoke-direct { p0, v1 }, Lc/e/b/k/m/e;->b(Lc/e/b/k/f;)Z
    move-result v1
    if-eqz v1, :L4
    return v2
  :L4
  .line 13
    iget-object v1, p0, Lc/e/b/k/m/e;->a:Lc/e/b/k/f;
    invoke-virtual { v1, v2 }, Lc/e/b/k/e;->V0(I)V
  .line 14
    iget-object v1, p0, Lc/e/b/k/m/e;->a:Lc/e/b/k/f;
    invoke-virtual { v1, v2 }, Lc/e/b/k/e;->W0(I)V
  .line 15
    iget-object v1, p0, Lc/e/b/k/m/e;->a:Lc/e/b/k/f;
    invoke-virtual { v1, v2 }, Lc/e/b/k/e;->s(I)Lc/e/b/k/e$b;
    move-result-object v1
  .line 16
    iget-object v3, p0, Lc/e/b/k/m/e;->a:Lc/e/b/k/f;
    invoke-virtual { v3, v0 }, Lc/e/b/k/e;->s(I)Lc/e/b/k/e$b;
    move-result-object v3
  .line 17
    iget-boolean v4, p0, Lc/e/b/k/m/e;->b:Z
    if-eqz v4, :L5
  .line 18
    invoke-virtual { p0 }, Lc/e/b/k/m/e;->c()V
  :L5
  .line 19
    iget-object v4, p0, Lc/e/b/k/m/e;->a:Lc/e/b/k/f;
    invoke-virtual { v4 }, Lc/e/b/k/e;->S()I
    move-result v4
  .line 20
    iget-object v5, p0, Lc/e/b/k/m/e;->a:Lc/e/b/k/f;
    invoke-virtual { v5 }, Lc/e/b/k/e;->T()I
    move-result v5
  .line 21
    iget-object v6, p0, Lc/e/b/k/m/e;->a:Lc/e/b/k/f;
    iget-object v6, v6, Lc/e/b/k/e;->d:Lc/e/b/k/m/l;
    iget-object v6, v6, Lc/e/b/k/m/p;->h:Lc/e/b/k/m/f;
    invoke-virtual { v6, v4 }, Lc/e/b/k/m/f;->d(I)V
  .line 22
    iget-object v6, p0, Lc/e/b/k/m/e;->a:Lc/e/b/k/f;
    iget-object v6, v6, Lc/e/b/k/e;->e:Lc/e/b/k/m/n;
    iget-object v6, v6, Lc/e/b/k/m/p;->h:Lc/e/b/k/m/f;
    invoke-virtual { v6, v5 }, Lc/e/b/k/m/f;->d(I)V
  .line 23
    invoke-virtual { p0 }, Lc/e/b/k/m/e;->m()V
  .line 24
    sget-object v6, Lc/e/b/k/e$b;->c:Lc/e/b/k/e$b;
    if-eq v1, v6, :L6
    if-ne v3, v6, :L10
  :L6
    if-eqz p1, :L8
  .line 25
    iget-object v6, p0, Lc/e/b/k/m/e;->e:Ljava/util/ArrayList;
    invoke-virtual { v6 }, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
    move-result-object v6
  :L7
    invoke-interface { v6 }, Ljava/util/Iterator;->hasNext()Z
    move-result v7
    if-eqz v7, :L8
    invoke-interface { v6 }, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object v7
    check-cast v7, Lc/e/b/k/m/p;
  .line 26
    invoke-virtual { v7 }, Lc/e/b/k/m/p;->m()Z
    move-result v7
    if-nez v7, :L7
    const/4 p1, 0
  :L8
    if-eqz p1, :L9
  .line 27
    sget-object v6, Lc/e/b/k/e$b;->c:Lc/e/b/k/e$b;
    if-ne v1, v6, :L9
  .line 28
    iget-object v6, p0, Lc/e/b/k/m/e;->a:Lc/e/b/k/f;
    sget-object v7, Lc/e/b/k/e$b;->b:Lc/e/b/k/e$b;
    invoke-virtual { v6, v7 }, Lc/e/b/k/e;->z0(Lc/e/b/k/e$b;)V
  .line 29
    iget-object v6, p0, Lc/e/b/k/m/e;->a:Lc/e/b/k/f;
    invoke-direct { p0, v6, v2 }, Lc/e/b/k/m/e;->e(Lc/e/b/k/f;I)I
    move-result v7
    invoke-virtual { v6, v7 }, Lc/e/b/k/e;->U0(I)V
  .line 30
    iget-object v6, p0, Lc/e/b/k/m/e;->a:Lc/e/b/k/f;
    iget-object v7, v6, Lc/e/b/k/e;->d:Lc/e/b/k/m/l;
    iget-object v7, v7, Lc/e/b/k/m/p;->e:Lc/e/b/k/m/g;
    invoke-virtual { v6 }, Lc/e/b/k/e;->R()I
    move-result v6
    invoke-virtual { v7, v6 }, Lc/e/b/k/m/g;->d(I)V
  :L9
    if-eqz p1, :L10
  .line 31
    sget-object p1, Lc/e/b/k/e$b;->c:Lc/e/b/k/e$b;
    if-ne v3, p1, :L10
  .line 32
    iget-object p1, p0, Lc/e/b/k/m/e;->a:Lc/e/b/k/f;
    sget-object v6, Lc/e/b/k/e$b;->b:Lc/e/b/k/e$b;
    invoke-virtual { p1, v6 }, Lc/e/b/k/e;->Q0(Lc/e/b/k/e$b;)V
  .line 33
    iget-object p1, p0, Lc/e/b/k/m/e;->a:Lc/e/b/k/f;
    invoke-direct { p0, p1, v0 }, Lc/e/b/k/m/e;->e(Lc/e/b/k/f;I)I
    move-result v6
    invoke-virtual { p1, v6 }, Lc/e/b/k/e;->v0(I)V
  .line 34
    iget-object p1, p0, Lc/e/b/k/m/e;->a:Lc/e/b/k/f;
    iget-object v6, p1, Lc/e/b/k/e;->e:Lc/e/b/k/m/n;
    iget-object v6, v6, Lc/e/b/k/m/p;->e:Lc/e/b/k/m/g;
    invoke-virtual { p1 }, Lc/e/b/k/e;->v()I
    move-result p1
    invoke-virtual { v6, p1 }, Lc/e/b/k/m/g;->d(I)V
  :L10
  .line 35
    iget-object p1, p0, Lc/e/b/k/m/e;->a:Lc/e/b/k/f;
    iget-object p1, p1, Lc/e/b/k/e;->Q:[Lc/e/b/k/e$b;
    aget-object v6, p1, v2
    sget-object v7, Lc/e/b/k/e$b;->b:Lc/e/b/k/e$b;
    if-eq v6, v7, :L12
    aget-object p1, p1, v2
    sget-object v6, Lc/e/b/k/e$b;->e:Lc/e/b/k/e$b;
    if-ne p1, v6, :L11
    goto :L12
  :L11
    const/4 p1, 0
    goto :L15
  :L12
  .line 36
    iget-object p1, p0, Lc/e/b/k/m/e;->a:Lc/e/b/k/f;
    invoke-virtual { p1 }, Lc/e/b/k/e;->R()I
    move-result p1
    add-int/2addr p1, v4
  .line 37
    iget-object v6, p0, Lc/e/b/k/m/e;->a:Lc/e/b/k/f;
    iget-object v6, v6, Lc/e/b/k/e;->d:Lc/e/b/k/m/l;
    iget-object v6, v6, Lc/e/b/k/m/p;->i:Lc/e/b/k/m/f;
    invoke-virtual { v6, p1 }, Lc/e/b/k/m/f;->d(I)V
  .line 38
    iget-object v6, p0, Lc/e/b/k/m/e;->a:Lc/e/b/k/f;
    iget-object v6, v6, Lc/e/b/k/e;->d:Lc/e/b/k/m/l;
    iget-object v6, v6, Lc/e/b/k/m/p;->e:Lc/e/b/k/m/g;
    sub-int/2addr p1, v4
    invoke-virtual { v6, p1 }, Lc/e/b/k/m/g;->d(I)V
  .line 39
    invoke-virtual { p0 }, Lc/e/b/k/m/e;->m()V
  .line 40
    iget-object p1, p0, Lc/e/b/k/m/e;->a:Lc/e/b/k/f;
    iget-object p1, p1, Lc/e/b/k/e;->Q:[Lc/e/b/k/e$b;
    aget-object v4, p1, v0
    sget-object v6, Lc/e/b/k/e$b;->b:Lc/e/b/k/e$b;
    if-eq v4, v6, :L13
    aget-object p1, p1, v0
    sget-object v4, Lc/e/b/k/e$b;->e:Lc/e/b/k/e$b;
    if-ne p1, v4, :L14
  :L13
  .line 41
    iget-object p1, p0, Lc/e/b/k/m/e;->a:Lc/e/b/k/f;
    invoke-virtual { p1 }, Lc/e/b/k/e;->v()I
    move-result p1
    add-int/2addr p1, v5
  .line 42
    iget-object v4, p0, Lc/e/b/k/m/e;->a:Lc/e/b/k/f;
    iget-object v4, v4, Lc/e/b/k/e;->e:Lc/e/b/k/m/n;
    iget-object v4, v4, Lc/e/b/k/m/p;->i:Lc/e/b/k/m/f;
    invoke-virtual { v4, p1 }, Lc/e/b/k/m/f;->d(I)V
  .line 43
    iget-object v4, p0, Lc/e/b/k/m/e;->a:Lc/e/b/k/f;
    iget-object v4, v4, Lc/e/b/k/e;->e:Lc/e/b/k/m/n;
    iget-object v4, v4, Lc/e/b/k/m/p;->e:Lc/e/b/k/m/g;
    sub-int/2addr p1, v5
    invoke-virtual { v4, p1 }, Lc/e/b/k/m/g;->d(I)V
  :L14
  .line 44
    invoke-virtual { p0 }, Lc/e/b/k/m/e;->m()V
    const/4 p1, 1
  :L15
  .line 45
    iget-object v4, p0, Lc/e/b/k/m/e;->e:Ljava/util/ArrayList;
    invoke-virtual { v4 }, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
    move-result-object v4
  :L16
    invoke-interface { v4 }, Ljava/util/Iterator;->hasNext()Z
    move-result v5
    if-eqz v5, :L18
    invoke-interface { v4 }, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object v5
    check-cast v5, Lc/e/b/k/m/p;
  .line 46
    iget-object v6, v5, Lc/e/b/k/m/p;->b:Lc/e/b/k/e;
    iget-object v7, p0, Lc/e/b/k/m/e;->a:Lc/e/b/k/f;
    if-ne v6, v7, :L17
    iget-boolean v6, v5, Lc/e/b/k/m/p;->g:Z
    if-nez v6, :L17
    goto :L16
  :L17
  .line 47
    invoke-virtual { v5 }, Lc/e/b/k/m/p;->e()V
    goto :L16
  :L18
  .line 48
    iget-object v4, p0, Lc/e/b/k/m/e;->e:Ljava/util/ArrayList;
    invoke-virtual { v4 }, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
    move-result-object v4
  :L19
    invoke-interface { v4 }, Ljava/util/Iterator;->hasNext()Z
    move-result v5
    if-eqz v5, :L24
    invoke-interface { v4 }, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object v5
    check-cast v5, Lc/e/b/k/m/p;
    if-nez p1, :L20
  .line 49
    iget-object v6, v5, Lc/e/b/k/m/p;->b:Lc/e/b/k/e;
    iget-object v7, p0, Lc/e/b/k/m/e;->a:Lc/e/b/k/f;
    if-ne v6, v7, :L20
    goto :L19
  :L20
  .line 50
    iget-object v6, v5, Lc/e/b/k/m/p;->h:Lc/e/b/k/m/f;
    iget-boolean v6, v6, Lc/e/b/k/m/f;->j:Z
    if-nez v6, :L22
  :L21
    const/4 v0, 0
    goto :L24
  :L22
  .line 51
    iget-object v6, v5, Lc/e/b/k/m/p;->i:Lc/e/b/k/m/f;
    iget-boolean v6, v6, Lc/e/b/k/m/f;->j:Z
    if-nez v6, :L23
    instance-of v6, v5, Lc/e/b/k/m/j;
    if-nez v6, :L23
    goto :L21
  :L23
  .line 52
    iget-object v6, v5, Lc/e/b/k/m/p;->e:Lc/e/b/k/m/g;
    iget-boolean v6, v6, Lc/e/b/k/m/f;->j:Z
    if-nez v6, :L19
    instance-of v6, v5, Lc/e/b/k/m/c;
    if-nez v6, :L19
    instance-of v5, v5, Lc/e/b/k/m/j;
    if-nez v5, :L19
    goto :L21
  :L24
  .line 53
    iget-object p1, p0, Lc/e/b/k/m/e;->a:Lc/e/b/k/f;
    invoke-virtual { p1, v1 }, Lc/e/b/k/e;->z0(Lc/e/b/k/e$b;)V
  .line 54
    iget-object p1, p0, Lc/e/b/k/m/e;->a:Lc/e/b/k/f;
    invoke-virtual { p1, v3 }, Lc/e/b/k/e;->Q0(Lc/e/b/k/e$b;)V
    return v0
.end method

.method public g(Z)Z
  .registers 6
  .line 1
    iget-boolean p1, p0, Lc/e/b/k/m/e;->b:Z
    const/4 v0, 0
    if-eqz p1, :L2
  .line 2
    iget-object p1, p0, Lc/e/b/k/m/e;->a:Lc/e/b/k/f;
    iget-object p1, p1, Lc/e/b/k/l;->p0:Ljava/util/ArrayList;
    invoke-virtual { p1 }, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
    move-result-object p1
  :L0
    invoke-interface { p1 }, Ljava/util/Iterator;->hasNext()Z
    move-result v1
    if-eqz v1, :L1
    invoke-interface { p1 }, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object v1
    check-cast v1, Lc/e/b/k/e;
  .line 3
    invoke-virtual { v1 }, Lc/e/b/k/e;->l()V
  .line 4
    iput-boolean v0, v1, Lc/e/b/k/e;->a:Z
  .line 5
    iget-object v2, v1, Lc/e/b/k/e;->d:Lc/e/b/k/m/l;
    iget-object v3, v2, Lc/e/b/k/m/p;->e:Lc/e/b/k/m/g;
    iput-boolean v0, v3, Lc/e/b/k/m/f;->j:Z
  .line 6
    iput-boolean v0, v2, Lc/e/b/k/m/p;->g:Z
  .line 7
    invoke-virtual { v2 }, Lc/e/b/k/m/l;->r()V
  .line 8
    iget-object v1, v1, Lc/e/b/k/e;->e:Lc/e/b/k/m/n;
    iget-object v2, v1, Lc/e/b/k/m/p;->e:Lc/e/b/k/m/g;
    iput-boolean v0, v2, Lc/e/b/k/m/f;->j:Z
  .line 9
    iput-boolean v0, v1, Lc/e/b/k/m/p;->g:Z
  .line 10
    invoke-virtual { v1 }, Lc/e/b/k/m/n;->q()V
    goto :L0
  :L1
  .line 11
    iget-object p1, p0, Lc/e/b/k/m/e;->a:Lc/e/b/k/f;
    invoke-virtual { p1 }, Lc/e/b/k/e;->l()V
  .line 12
    iget-object p1, p0, Lc/e/b/k/m/e;->a:Lc/e/b/k/f;
    iput-boolean v0, p1, Lc/e/b/k/e;->a:Z
  .line 13
    iget-object p1, p1, Lc/e/b/k/e;->d:Lc/e/b/k/m/l;
    iget-object v1, p1, Lc/e/b/k/m/p;->e:Lc/e/b/k/m/g;
    iput-boolean v0, v1, Lc/e/b/k/m/f;->j:Z
  .line 14
    iput-boolean v0, p1, Lc/e/b/k/m/p;->g:Z
  .line 15
    invoke-virtual { p1 }, Lc/e/b/k/m/l;->r()V
  .line 16
    iget-object p1, p0, Lc/e/b/k/m/e;->a:Lc/e/b/k/f;
    iget-object p1, p1, Lc/e/b/k/e;->e:Lc/e/b/k/m/n;
    iget-object v1, p1, Lc/e/b/k/m/p;->e:Lc/e/b/k/m/g;
    iput-boolean v0, v1, Lc/e/b/k/m/f;->j:Z
  .line 17
    iput-boolean v0, p1, Lc/e/b/k/m/p;->g:Z
  .line 18
    invoke-virtual { p1 }, Lc/e/b/k/m/n;->q()V
  .line 19
    invoke-virtual { p0 }, Lc/e/b/k/m/e;->c()V
  :L2
  .line 20
    iget-object p1, p0, Lc/e/b/k/m/e;->d:Lc/e/b/k/f;
    invoke-direct { p0, p1 }, Lc/e/b/k/m/e;->b(Lc/e/b/k/f;)Z
    move-result p1
    if-eqz p1, :L3
    return v0
  :L3
  .line 21
    iget-object p1, p0, Lc/e/b/k/m/e;->a:Lc/e/b/k/f;
    invoke-virtual { p1, v0 }, Lc/e/b/k/e;->V0(I)V
  .line 22
    iget-object p1, p0, Lc/e/b/k/m/e;->a:Lc/e/b/k/f;
    invoke-virtual { p1, v0 }, Lc/e/b/k/e;->W0(I)V
  .line 23
    iget-object p1, p0, Lc/e/b/k/m/e;->a:Lc/e/b/k/f;
    iget-object p1, p1, Lc/e/b/k/e;->d:Lc/e/b/k/m/l;
    iget-object p1, p1, Lc/e/b/k/m/p;->h:Lc/e/b/k/m/f;
    invoke-virtual { p1, v0 }, Lc/e/b/k/m/f;->d(I)V
  .line 24
    iget-object p1, p0, Lc/e/b/k/m/e;->a:Lc/e/b/k/f;
    iget-object p1, p1, Lc/e/b/k/e;->e:Lc/e/b/k/m/n;
    iget-object p1, p1, Lc/e/b/k/m/p;->h:Lc/e/b/k/m/f;
    invoke-virtual { p1, v0 }, Lc/e/b/k/m/f;->d(I)V
    const/4 p1, 1
    return p1
.end method

.method public h(ZI)Z
  .registers 12
    const/4 v0, 1
    and-int/2addr p1, v0
  .line 1
    iget-object v1, p0, Lc/e/b/k/m/e;->a:Lc/e/b/k/f;
    const/4 v2, 0
    invoke-virtual { v1, v2 }, Lc/e/b/k/e;->s(I)Lc/e/b/k/e$b;
    move-result-object v1
  .line 2
    iget-object v3, p0, Lc/e/b/k/m/e;->a:Lc/e/b/k/f;
    invoke-virtual { v3, v0 }, Lc/e/b/k/e;->s(I)Lc/e/b/k/e$b;
    move-result-object v3
  .line 3
    iget-object v4, p0, Lc/e/b/k/m/e;->a:Lc/e/b/k/f;
    invoke-virtual { v4 }, Lc/e/b/k/e;->S()I
    move-result v4
  .line 4
    iget-object v5, p0, Lc/e/b/k/m/e;->a:Lc/e/b/k/f;
    invoke-virtual { v5 }, Lc/e/b/k/e;->T()I
    move-result v5
    if-eqz p1, :L4
  .line 5
    sget-object v6, Lc/e/b/k/e$b;->c:Lc/e/b/k/e$b;
    if-eq v1, v6, :L0
    if-ne v3, v6, :L4
  :L0
  .line 6
    iget-object v6, p0, Lc/e/b/k/m/e;->e:Ljava/util/ArrayList;
    invoke-virtual { v6 }, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
    move-result-object v6
  :L1
    invoke-interface { v6 }, Ljava/util/Iterator;->hasNext()Z
    move-result v7
    if-eqz v7, :L2
    invoke-interface { v6 }, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object v7
    check-cast v7, Lc/e/b/k/m/p;
  .line 7
    iget v8, v7, Lc/e/b/k/m/p;->f:I
    if-ne v8, p2, :L1
  .line 8
    invoke-virtual { v7 }, Lc/e/b/k/m/p;->m()Z
    move-result v7
    if-nez v7, :L1
    const/4 p1, 0
  :L2
    if-nez p2, :L3
    if-eqz p1, :L4
  .line 9
    sget-object p1, Lc/e/b/k/e$b;->c:Lc/e/b/k/e$b;
    if-ne v1, p1, :L4
  .line 10
    iget-object p1, p0, Lc/e/b/k/m/e;->a:Lc/e/b/k/f;
    sget-object v6, Lc/e/b/k/e$b;->b:Lc/e/b/k/e$b;
    invoke-virtual { p1, v6 }, Lc/e/b/k/e;->z0(Lc/e/b/k/e$b;)V
  .line 11
    iget-object p1, p0, Lc/e/b/k/m/e;->a:Lc/e/b/k/f;
    invoke-direct { p0, p1, v2 }, Lc/e/b/k/m/e;->e(Lc/e/b/k/f;I)I
    move-result v6
    invoke-virtual { p1, v6 }, Lc/e/b/k/e;->U0(I)V
  .line 12
    iget-object p1, p0, Lc/e/b/k/m/e;->a:Lc/e/b/k/f;
    iget-object v6, p1, Lc/e/b/k/e;->d:Lc/e/b/k/m/l;
    iget-object v6, v6, Lc/e/b/k/m/p;->e:Lc/e/b/k/m/g;
    invoke-virtual { p1 }, Lc/e/b/k/e;->R()I
    move-result p1
    invoke-virtual { v6, p1 }, Lc/e/b/k/m/g;->d(I)V
    goto :L4
  :L3
    if-eqz p1, :L4
  .line 13
    sget-object p1, Lc/e/b/k/e$b;->c:Lc/e/b/k/e$b;
    if-ne v3, p1, :L4
  .line 14
    iget-object p1, p0, Lc/e/b/k/m/e;->a:Lc/e/b/k/f;
    sget-object v6, Lc/e/b/k/e$b;->b:Lc/e/b/k/e$b;
    invoke-virtual { p1, v6 }, Lc/e/b/k/e;->Q0(Lc/e/b/k/e$b;)V
  .line 15
    iget-object p1, p0, Lc/e/b/k/m/e;->a:Lc/e/b/k/f;
    invoke-direct { p0, p1, v0 }, Lc/e/b/k/m/e;->e(Lc/e/b/k/f;I)I
    move-result v6
    invoke-virtual { p1, v6 }, Lc/e/b/k/e;->v0(I)V
  .line 16
    iget-object p1, p0, Lc/e/b/k/m/e;->a:Lc/e/b/k/f;
    iget-object v6, p1, Lc/e/b/k/e;->e:Lc/e/b/k/m/n;
    iget-object v6, v6, Lc/e/b/k/m/p;->e:Lc/e/b/k/m/g;
    invoke-virtual { p1 }, Lc/e/b/k/e;->v()I
    move-result p1
    invoke-virtual { v6, p1 }, Lc/e/b/k/m/g;->d(I)V
  :L4
    if-nez p2, :L6
  .line 17
    iget-object p1, p0, Lc/e/b/k/m/e;->a:Lc/e/b/k/f;
    iget-object p1, p1, Lc/e/b/k/e;->Q:[Lc/e/b/k/e$b;
    aget-object v5, p1, v2
    sget-object v6, Lc/e/b/k/e$b;->b:Lc/e/b/k/e$b;
    if-eq v5, v6, :L5
    aget-object p1, p1, v2
    sget-object v5, Lc/e/b/k/e$b;->e:Lc/e/b/k/e$b;
    if-ne p1, v5, :L7
  :L5
  .line 18
    iget-object p1, p0, Lc/e/b/k/m/e;->a:Lc/e/b/k/f;
    invoke-virtual { p1 }, Lc/e/b/k/e;->R()I
    move-result p1
    add-int/2addr p1, v4
  .line 19
    iget-object v5, p0, Lc/e/b/k/m/e;->a:Lc/e/b/k/f;
    iget-object v5, v5, Lc/e/b/k/e;->d:Lc/e/b/k/m/l;
    iget-object v5, v5, Lc/e/b/k/m/p;->i:Lc/e/b/k/m/f;
    invoke-virtual { v5, p1 }, Lc/e/b/k/m/f;->d(I)V
  .line 20
    iget-object v5, p0, Lc/e/b/k/m/e;->a:Lc/e/b/k/f;
    iget-object v5, v5, Lc/e/b/k/e;->d:Lc/e/b/k/m/l;
    iget-object v5, v5, Lc/e/b/k/m/p;->e:Lc/e/b/k/m/g;
    sub-int/2addr p1, v4
    invoke-virtual { v5, p1 }, Lc/e/b/k/m/g;->d(I)V
    goto :L9
  :L6
  .line 21
    iget-object p1, p0, Lc/e/b/k/m/e;->a:Lc/e/b/k/f;
    iget-object p1, p1, Lc/e/b/k/e;->Q:[Lc/e/b/k/e$b;
    aget-object v4, p1, v0
    sget-object v6, Lc/e/b/k/e$b;->b:Lc/e/b/k/e$b;
    if-eq v4, v6, :L8
    aget-object p1, p1, v0
    sget-object v4, Lc/e/b/k/e$b;->e:Lc/e/b/k/e$b;
    if-ne p1, v4, :L7
    goto :L8
  :L7
    const/4 p1, 0
    goto :L10
  :L8
  .line 22
    iget-object p1, p0, Lc/e/b/k/m/e;->a:Lc/e/b/k/f;
    invoke-virtual { p1 }, Lc/e/b/k/e;->v()I
    move-result p1
    add-int/2addr p1, v5
  .line 23
    iget-object v4, p0, Lc/e/b/k/m/e;->a:Lc/e/b/k/f;
    iget-object v4, v4, Lc/e/b/k/e;->e:Lc/e/b/k/m/n;
    iget-object v4, v4, Lc/e/b/k/m/p;->i:Lc/e/b/k/m/f;
    invoke-virtual { v4, p1 }, Lc/e/b/k/m/f;->d(I)V
  .line 24
    iget-object v4, p0, Lc/e/b/k/m/e;->a:Lc/e/b/k/f;
    iget-object v4, v4, Lc/e/b/k/e;->e:Lc/e/b/k/m/n;
    iget-object v4, v4, Lc/e/b/k/m/p;->e:Lc/e/b/k/m/g;
    sub-int/2addr p1, v5
    invoke-virtual { v4, p1 }, Lc/e/b/k/m/g;->d(I)V
  :L9
    const/4 p1, 1
  :L10
  .line 25
    invoke-virtual { p0 }, Lc/e/b/k/m/e;->m()V
  .line 26
    iget-object v4, p0, Lc/e/b/k/m/e;->e:Ljava/util/ArrayList;
    invoke-virtual { v4 }, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
    move-result-object v4
  :L11
    invoke-interface { v4 }, Ljava/util/Iterator;->hasNext()Z
    move-result v5
    if-eqz v5, :L14
    invoke-interface { v4 }, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object v5
    check-cast v5, Lc/e/b/k/m/p;
  .line 27
    iget v6, v5, Lc/e/b/k/m/p;->f:I
    if-eq v6, p2, :L12
    goto :L11
  :L12
  .line 28
    iget-object v6, v5, Lc/e/b/k/m/p;->b:Lc/e/b/k/e;
    iget-object v7, p0, Lc/e/b/k/m/e;->a:Lc/e/b/k/f;
    if-ne v6, v7, :L13
    iget-boolean v6, v5, Lc/e/b/k/m/p;->g:Z
    if-nez v6, :L13
    goto :L11
  :L13
  .line 29
    invoke-virtual { v5 }, Lc/e/b/k/m/p;->e()V
    goto :L11
  :L14
  .line 30
    iget-object v4, p0, Lc/e/b/k/m/e;->e:Ljava/util/ArrayList;
    invoke-virtual { v4 }, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
    move-result-object v4
  :L15
    invoke-interface { v4 }, Ljava/util/Iterator;->hasNext()Z
    move-result v5
    if-eqz v5, :L21
    invoke-interface { v4 }, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object v5
    check-cast v5, Lc/e/b/k/m/p;
  .line 31
    iget v6, v5, Lc/e/b/k/m/p;->f:I
    if-eq v6, p2, :L16
    goto :L15
  :L16
    if-nez p1, :L17
  .line 32
    iget-object v6, v5, Lc/e/b/k/m/p;->b:Lc/e/b/k/e;
    iget-object v7, p0, Lc/e/b/k/m/e;->a:Lc/e/b/k/f;
    if-ne v6, v7, :L17
    goto :L15
  :L17
  .line 33
    iget-object v6, v5, Lc/e/b/k/m/p;->h:Lc/e/b/k/m/f;
    iget-boolean v6, v6, Lc/e/b/k/m/f;->j:Z
    if-nez v6, :L19
  :L18
    const/4 v0, 0
    goto :L21
  :L19
  .line 34
    iget-object v6, v5, Lc/e/b/k/m/p;->i:Lc/e/b/k/m/f;
    iget-boolean v6, v6, Lc/e/b/k/m/f;->j:Z
    if-nez v6, :L20
    goto :L18
  :L20
  .line 35
    instance-of v6, v5, Lc/e/b/k/m/c;
    if-nez v6, :L15
    iget-object v5, v5, Lc/e/b/k/m/p;->e:Lc/e/b/k/m/g;
    iget-boolean v5, v5, Lc/e/b/k/m/f;->j:Z
    if-nez v5, :L15
    goto :L18
  :L21
  .line 36
    iget-object p1, p0, Lc/e/b/k/m/e;->a:Lc/e/b/k/f;
    invoke-virtual { p1, v1 }, Lc/e/b/k/e;->z0(Lc/e/b/k/e$b;)V
  .line 37
    iget-object p1, p0, Lc/e/b/k/m/e;->a:Lc/e/b/k/f;
    invoke-virtual { p1, v3 }, Lc/e/b/k/e;->Q0(Lc/e/b/k/e$b;)V
    return v0
.end method

.method public j()V
  .registers 2
    const/4 v0, 1
  .line 1
    iput-boolean v0, p0, Lc/e/b/k/m/e;->b:Z
    return-void
.end method

.method public k()V
  .registers 2
    const/4 v0, 1
  .line 1
    iput-boolean v0, p0, Lc/e/b/k/m/e;->c:Z
    return-void
.end method

.method public m()V
  .registers 12
  .line 1
    iget-object v0, p0, Lc/e/b/k/m/e;->a:Lc/e/b/k/f;
    iget-object v0, v0, Lc/e/b/k/l;->p0:Ljava/util/ArrayList;
    invoke-virtual { v0 }, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
    move-result-object v0
  :L0
    invoke-interface { v0 }, Ljava/util/Iterator;->hasNext()Z
    move-result v1
    if-eqz v1, :L12
    invoke-interface { v0 }, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object v1
    check-cast v1, Lc/e/b/k/e;
  .line 2
    iget-boolean v2, v1, Lc/e/b/k/e;->a:Z
    if-eqz v2, :L1
    goto :L0
  :L1
  .line 3
    iget-object v2, v1, Lc/e/b/k/e;->Q:[Lc/e/b/k/e$b;
    const/4 v3, 0
    aget-object v8, v2, v3
    const/4 v9, 1
  .line 4
    aget-object v10, v2, v9
  .line 5
    iget v2, v1, Lc/e/b/k/e;->n:I
  .line 6
    iget v4, v1, Lc/e/b/k/e;->o:I
  .line 7
    sget-object v5, Lc/e/b/k/e$b;->c:Lc/e/b/k/e$b;
    if-eq v8, v5, :L3
    sget-object v5, Lc/e/b/k/e$b;->d:Lc/e/b/k/e$b;
    if-ne v8, v5, :L2
    if-ne v2, v9, :L2
    goto :L3
  :L2
    const/4 v2, 0
    goto :L4
  :L3
    const/4 v2, 1
  :L4
  .line 8
    sget-object v5, Lc/e/b/k/e$b;->c:Lc/e/b/k/e$b;
    if-eq v10, v5, :L5
    sget-object v5, Lc/e/b/k/e$b;->d:Lc/e/b/k/e$b;
    if-ne v10, v5, :L6
    if-ne v4, v9, :L6
  :L5
    const/4 v3, 1
  :L6
  .line 9
    iget-object v4, v1, Lc/e/b/k/e;->d:Lc/e/b/k/m/l;
    iget-object v4, v4, Lc/e/b/k/m/p;->e:Lc/e/b/k/m/g;
    iget-boolean v5, v4, Lc/e/b/k/m/f;->j:Z
  .line 10
    iget-object v6, v1, Lc/e/b/k/e;->e:Lc/e/b/k/m/n;
    iget-object v6, v6, Lc/e/b/k/m/p;->e:Lc/e/b/k/m/g;
    iget-boolean v7, v6, Lc/e/b/k/m/f;->j:Z
    if-eqz v5, :L7
    if-eqz v7, :L7
  .line 11
    sget-object v7, Lc/e/b/k/e$b;->b:Lc/e/b/k/e$b;
    iget v5, v4, Lc/e/b/k/m/f;->g:I
    iget v8, v6, Lc/e/b/k/m/f;->g:I
    move-object v2, p0
    move-object v3, v1
    move-object v4, v7
    move-object v6, v7
    move v7, v8
    invoke-direct/range { v2 .. v7 }, Lc/e/b/k/m/e;->l(Lc/e/b/k/e;Lc/e/b/k/e$b;ILc/e/b/k/e$b;I)V
  .line 12
    iput-boolean v9, v1, Lc/e/b/k/e;->a:Z
    goto/16 :L11
  :L7
    if-eqz v5, :L9
    if-eqz v3, :L9
  .line 13
    sget-object v4, Lc/e/b/k/e$b;->b:Lc/e/b/k/e$b;
    iget-object v2, v1, Lc/e/b/k/e;->d:Lc/e/b/k/m/l;
    iget-object v2, v2, Lc/e/b/k/m/p;->e:Lc/e/b/k/m/g;
    iget v5, v2, Lc/e/b/k/m/f;->g:I
    sget-object v6, Lc/e/b/k/e$b;->c:Lc/e/b/k/e$b;
    iget-object v2, v1, Lc/e/b/k/e;->e:Lc/e/b/k/m/n;
    iget-object v2, v2, Lc/e/b/k/m/p;->e:Lc/e/b/k/m/g;
    iget v7, v2, Lc/e/b/k/m/f;->g:I
    move-object v2, p0
    move-object v3, v1
    invoke-direct/range { v2 .. v7 }, Lc/e/b/k/m/e;->l(Lc/e/b/k/e;Lc/e/b/k/e$b;ILc/e/b/k/e$b;I)V
  .line 14
    sget-object v2, Lc/e/b/k/e$b;->d:Lc/e/b/k/e$b;
    if-ne v10, v2, :L8
  .line 15
    iget-object v2, v1, Lc/e/b/k/e;->e:Lc/e/b/k/m/n;
    iget-object v2, v2, Lc/e/b/k/m/p;->e:Lc/e/b/k/m/g;
    invoke-virtual { v1 }, Lc/e/b/k/e;->v()I
    move-result v3
    iput v3, v2, Lc/e/b/k/m/g;->m:I
    goto :L11
  :L8
  .line 16
    iget-object v2, v1, Lc/e/b/k/e;->e:Lc/e/b/k/m/n;
    iget-object v2, v2, Lc/e/b/k/m/p;->e:Lc/e/b/k/m/g;
    invoke-virtual { v1 }, Lc/e/b/k/e;->v()I
    move-result v3
    invoke-virtual { v2, v3 }, Lc/e/b/k/m/g;->d(I)V
  .line 17
    iput-boolean v9, v1, Lc/e/b/k/e;->a:Z
    goto :L11
  :L9
    if-eqz v7, :L11
    if-eqz v2, :L11
  .line 18
    sget-object v4, Lc/e/b/k/e$b;->c:Lc/e/b/k/e$b;
    iget-object v2, v1, Lc/e/b/k/e;->d:Lc/e/b/k/m/l;
    iget-object v2, v2, Lc/e/b/k/m/p;->e:Lc/e/b/k/m/g;
    iget v5, v2, Lc/e/b/k/m/f;->g:I
    sget-object v6, Lc/e/b/k/e$b;->b:Lc/e/b/k/e$b;
    iget-object v2, v1, Lc/e/b/k/e;->e:Lc/e/b/k/m/n;
    iget-object v2, v2, Lc/e/b/k/m/p;->e:Lc/e/b/k/m/g;
    iget v7, v2, Lc/e/b/k/m/f;->g:I
    move-object v2, p0
    move-object v3, v1
    invoke-direct/range { v2 .. v7 }, Lc/e/b/k/m/e;->l(Lc/e/b/k/e;Lc/e/b/k/e$b;ILc/e/b/k/e$b;I)V
  .line 19
    sget-object v2, Lc/e/b/k/e$b;->d:Lc/e/b/k/e$b;
    if-ne v8, v2, :L10
  .line 20
    iget-object v2, v1, Lc/e/b/k/e;->d:Lc/e/b/k/m/l;
    iget-object v2, v2, Lc/e/b/k/m/p;->e:Lc/e/b/k/m/g;
    invoke-virtual { v1 }, Lc/e/b/k/e;->R()I
    move-result v3
    iput v3, v2, Lc/e/b/k/m/g;->m:I
    goto :L11
  :L10
  .line 21
    iget-object v2, v1, Lc/e/b/k/e;->d:Lc/e/b/k/m/l;
    iget-object v2, v2, Lc/e/b/k/m/p;->e:Lc/e/b/k/m/g;
    invoke-virtual { v1 }, Lc/e/b/k/e;->R()I
    move-result v3
    invoke-virtual { v2, v3 }, Lc/e/b/k/m/g;->d(I)V
  .line 22
    iput-boolean v9, v1, Lc/e/b/k/e;->a:Z
  :L11
  .line 23
    iget-boolean v2, v1, Lc/e/b/k/e;->a:Z
    if-eqz v2, :L0
    iget-object v2, v1, Lc/e/b/k/e;->e:Lc/e/b/k/m/n;
    iget-object v2, v2, Lc/e/b/k/m/n;->l:Lc/e/b/k/m/g;
    if-eqz v2, :L0
  .line 24
    invoke-virtual { v1 }, Lc/e/b/k/e;->n()I
    move-result v1
    invoke-virtual { v2, v1 }, Lc/e/b/k/m/g;->d(I)V
    goto/16 :L0
  :L12
    return-void
.end method

.method public n(Lc/e/b/k/m/b$b;)V
  .registers 2
  .line 1
    iput-object p1, p0, Lc/e/b/k/m/e;->f:Lc/e/b/k/m/b$b;
    return-void
.end method
