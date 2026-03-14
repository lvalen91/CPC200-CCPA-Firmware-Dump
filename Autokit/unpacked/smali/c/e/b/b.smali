.class public Lc/e/b/b;
.super Ljava/lang/Object;
.implements Lc/e/b/d$a;
.source "SourceFile"

.annotation system Ldalvik/annotation/MemberClasses;
  value = {
    Lc/e/b/b$a;
  }
.end annotation

.field a:Lc/e/b/i;

.field b:F

.field c:Z

.field d:Ljava/util/ArrayList;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "Ljava/util/ArrayList<",
      "Lc/e/b/i;",
      ">;"
    }
  .end annotation
.end field

.field public e:Lc/e/b/b$a;

.field f:Z

.method public constructor <init>()V
  .registers 2
  .line 1
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    const/4 v0, 0
  .line 2
    iput-object v0, p0, Lc/e/b/b;->a:Lc/e/b/i;
    const/4 v0, 0
  .line 3
    iput v0, p0, Lc/e/b/b;->b:F
  .line 4
    new-instance v0, Ljava/util/ArrayList;
    invoke-direct { v0 }, Ljava/util/ArrayList;-><init>()V
    iput-object v0, p0, Lc/e/b/b;->d:Ljava/util/ArrayList;
    const/4 v0, 0
  .line 5
    iput-boolean v0, p0, Lc/e/b/b;->f:Z
    return-void
.end method

.method public constructor <init>(Lc/e/b/c;)V
  .registers 3
  .line 6
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    const/4 v0, 0
  .line 7
    iput-object v0, p0, Lc/e/b/b;->a:Lc/e/b/i;
    const/4 v0, 0
  .line 8
    iput v0, p0, Lc/e/b/b;->b:F
  .line 9
    new-instance v0, Ljava/util/ArrayList;
    invoke-direct { v0 }, Ljava/util/ArrayList;-><init>()V
    iput-object v0, p0, Lc/e/b/b;->d:Ljava/util/ArrayList;
    const/4 v0, 0
  .line 10
    iput-boolean v0, p0, Lc/e/b/b;->f:Z
  .line 11
    new-instance v0, Lc/e/b/a;
    invoke-direct { v0, p0, p1 }, Lc/e/b/a;-><init>(Lc/e/b/b;Lc/e/b/c;)V
    iput-object v0, p0, Lc/e/b/b;->e:Lc/e/b/b$a;
    return-void
.end method

.method private u(Lc/e/b/i;Lc/e/b/d;)Z
  .registers 3
  .line 1
    iget p1, p1, Lc/e/b/i;->m:I
    const/4 p2, 1
    if-gt p1, p2, :L0
    goto :L1
  :L0
    const/4 p2, 0
  :L1
    return p2
.end method

.method private w([ZLc/e/b/i;)Lc/e/b/i;
  .registers 12
  .line 1
    iget-object v0, p0, Lc/e/b/b;->e:Lc/e/b/b$a;
    invoke-interface { v0 }, Lc/e/b/b$a;->k()I
    move-result v0
    const/4 v1, 0
    const/4 v2, 0
    const/4 v3, 0
    const/4 v4, 0
  :L0
    if-ge v3, v0, :L4
  .line 2
    iget-object v5, p0, Lc/e/b/b;->e:Lc/e/b/b$a;
    invoke-interface { v5, v3 }, Lc/e/b/b$a;->a(I)F
    move-result v5
    cmpg-float v6, v5, v1
    if-gez v6, :L3
  .line 3
    iget-object v6, p0, Lc/e/b/b;->e:Lc/e/b/b$a;
    invoke-interface { v6, v3 }, Lc/e/b/b$a;->f(I)Lc/e/b/i;
    move-result-object v6
    if-eqz p1, :L1
  .line 4
    iget v7, v6, Lc/e/b/i;->c:I
    aget-boolean v7, p1, v7
    if-nez v7, :L3
  :L1
    if-eq v6, p2, :L3
  .line 5
    iget-object v7, v6, Lc/e/b/i;->j:Lc/e/b/i$a;
    sget-object v8, Lc/e/b/i$a;->d:Lc/e/b/i$a;
    if-eq v7, v8, :L2
    sget-object v8, Lc/e/b/i$a;->e:Lc/e/b/i$a;
    if-ne v7, v8, :L3
  :L2
    cmpg-float v7, v5, v4
    if-gez v7, :L3
    move v4, v5
    move-object v2, v6
  :L3
    add-int/lit8 v3, v3, 1
    goto :L0
  :L4
    return-object v2
.end method

.method public A(Lc/e/b/d;Lc/e/b/i;Z)V
  .registers 7
  .line 1
    iget-boolean v0, p2, Lc/e/b/i;->g:Z
    if-nez v0, :L0
    return-void
  :L0
  .line 2
    iget-object v0, p0, Lc/e/b/b;->e:Lc/e/b/b$a;
    invoke-interface { v0, p2 }, Lc/e/b/b$a;->g(Lc/e/b/i;)F
    move-result v0
  .line 3
    iget v1, p0, Lc/e/b/b;->b:F
    iget v2, p2, Lc/e/b/i;->f:F
    mul-float v2, v2, v0
    add-float/2addr v1, v2
    iput v1, p0, Lc/e/b/b;->b:F
  .line 4
    iget-object v0, p0, Lc/e/b/b;->e:Lc/e/b/b$a;
    invoke-interface { v0, p2, p3 }, Lc/e/b/b$a;->d(Lc/e/b/i;Z)F
    if-eqz p3, :L1
  .line 5
    invoke-virtual { p2, p0 }, Lc/e/b/i;->c(Lc/e/b/b;)V
  :L1
  .line 6
    sget-boolean p3, Lc/e/b/d;->t:Z
    if-eqz p3, :L2
    if-eqz p2, :L2
    iget-object p2, p0, Lc/e/b/b;->e:Lc/e/b/b$a;
  .line 7
    invoke-interface { p2 }, Lc/e/b/b$a;->k()I
    move-result p2
    if-nez p2, :L2
    const/4 p2, 1
  .line 8
    iput-boolean p2, p0, Lc/e/b/b;->f:Z
  .line 9
    iput-boolean p2, p1, Lc/e/b/d;->a:Z
  :L2
    return-void
.end method

.method public B(Lc/e/b/d;Lc/e/b/b;Z)V
  .registers 7
  .line 1
    iget-object v0, p0, Lc/e/b/b;->e:Lc/e/b/b$a;
    invoke-interface { v0, p2, p3 }, Lc/e/b/b$a;->b(Lc/e/b/b;Z)F
    move-result v0
  .line 2
    iget v1, p0, Lc/e/b/b;->b:F
    iget v2, p2, Lc/e/b/b;->b:F
    mul-float v2, v2, v0
    add-float/2addr v1, v2
    iput v1, p0, Lc/e/b/b;->b:F
    if-eqz p3, :L0
  .line 3
    iget-object p2, p2, Lc/e/b/b;->a:Lc/e/b/i;
    invoke-virtual { p2, p0 }, Lc/e/b/i;->c(Lc/e/b/b;)V
  :L0
  .line 4
    sget-boolean p2, Lc/e/b/d;->t:Z
    if-eqz p2, :L1
    iget-object p2, p0, Lc/e/b/b;->a:Lc/e/b/i;
    if-eqz p2, :L1
    iget-object p2, p0, Lc/e/b/b;->e:Lc/e/b/b$a;
  .line 5
    invoke-interface { p2 }, Lc/e/b/b$a;->k()I
    move-result p2
    if-nez p2, :L1
    const/4 p2, 1
  .line 6
    iput-boolean p2, p0, Lc/e/b/b;->f:Z
  .line 7
    iput-boolean p2, p1, Lc/e/b/d;->a:Z
  :L1
    return-void
.end method

.method public C(Lc/e/b/d;Lc/e/b/i;Z)V
  .registers 8
  .line 1
    iget-boolean v0, p2, Lc/e/b/i;->n:Z
    if-nez v0, :L0
    return-void
  :L0
  .line 2
    iget-object v0, p0, Lc/e/b/b;->e:Lc/e/b/b$a;
    invoke-interface { v0, p2 }, Lc/e/b/b$a;->g(Lc/e/b/i;)F
    move-result v0
  .line 3
    iget v1, p0, Lc/e/b/b;->b:F
    iget v2, p2, Lc/e/b/i;->p:F
    mul-float v2, v2, v0
    add-float/2addr v1, v2
    iput v1, p0, Lc/e/b/b;->b:F
  .line 4
    iget-object v1, p0, Lc/e/b/b;->e:Lc/e/b/b$a;
    invoke-interface { v1, p2, p3 }, Lc/e/b/b$a;->d(Lc/e/b/i;Z)F
    if-eqz p3, :L1
  .line 5
    invoke-virtual { p2, p0 }, Lc/e/b/i;->c(Lc/e/b/b;)V
  :L1
  .line 6
    iget-object v1, p0, Lc/e/b/b;->e:Lc/e/b/b$a;
    iget-object v2, p1, Lc/e/b/d;->n:Lc/e/b/c;
    iget-object v2, v2, Lc/e/b/c;->d:[Lc/e/b/i;
    iget v3, p2, Lc/e/b/i;->o:I
    aget-object v2, v2, v3
    invoke-interface { v1, v2, v0, p3 }, Lc/e/b/b$a;->e(Lc/e/b/i;FZ)V
  .line 7
    sget-boolean p3, Lc/e/b/d;->t:Z
    if-eqz p3, :L2
    if-eqz p2, :L2
    iget-object p2, p0, Lc/e/b/b;->e:Lc/e/b/b$a;
  .line 8
    invoke-interface { p2 }, Lc/e/b/b$a;->k()I
    move-result p2
    if-nez p2, :L2
    const/4 p2, 1
  .line 9
    iput-boolean p2, p0, Lc/e/b/b;->f:Z
  .line 10
    iput-boolean p2, p1, Lc/e/b/d;->a:Z
  :L2
    return-void
.end method

.method public D(Lc/e/b/d;)V
  .registers 10
  .line 1
    iget-object v0, p1, Lc/e/b/d;->g:[Lc/e/b/b;
    array-length v0, v0
    if-nez v0, :L0
    return-void
  :L0
    const/4 v0, 0
    const/4 v1, 0
  :L1
    const/4 v2, 1
    if-nez v1, :L12
  .line 2
    iget-object v3, p0, Lc/e/b/b;->e:Lc/e/b/b$a;
    invoke-interface { v3 }, Lc/e/b/b$a;->k()I
    move-result v3
    const/4 v4, 0
  :L2
    if-ge v4, v3, :L5
  .line 3
    iget-object v5, p0, Lc/e/b/b;->e:Lc/e/b/b$a;
    invoke-interface { v5, v4 }, Lc/e/b/b$a;->f(I)Lc/e/b/i;
    move-result-object v5
  .line 4
    iget v6, v5, Lc/e/b/i;->d:I
    const/4 v7, -1
    if-ne v6, v7, :L3
    iget-boolean v6, v5, Lc/e/b/i;->g:Z
    if-nez v6, :L3
    iget-boolean v6, v5, Lc/e/b/i;->n:Z
    if-eqz v6, :L4
  :L3
  .line 5
    iget-object v6, p0, Lc/e/b/b;->d:Ljava/util/ArrayList;
    invoke-virtual { v6, v5 }, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
  :L4
    add-int/lit8 v4, v4, 1
    goto :L2
  :L5
  .line 6
    iget-object v3, p0, Lc/e/b/b;->d:Ljava/util/ArrayList;
    invoke-virtual { v3 }, Ljava/util/ArrayList;->size()I
    move-result v3
    if-lez v3, :L11
    const/4 v4, 0
  :L6
    if-ge v4, v3, :L10
  .line 7
    iget-object v5, p0, Lc/e/b/b;->d:Ljava/util/ArrayList;
    invoke-virtual { v5, v4 }, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
    move-result-object v5
    check-cast v5, Lc/e/b/i;
  .line 8
    iget-boolean v6, v5, Lc/e/b/i;->g:Z
    if-eqz v6, :L7
  .line 9
    invoke-virtual { p0, p1, v5, v2 }, Lc/e/b/b;->A(Lc/e/b/d;Lc/e/b/i;Z)V
    goto :L9
  :L7
  .line 10
    iget-boolean v6, v5, Lc/e/b/i;->n:Z
    if-eqz v6, :L8
  .line 11
    invoke-virtual { p0, p1, v5, v2 }, Lc/e/b/b;->C(Lc/e/b/d;Lc/e/b/i;Z)V
    goto :L9
  :L8
  .line 12
    iget-object v6, p1, Lc/e/b/d;->g:[Lc/e/b/b;
    iget v5, v5, Lc/e/b/i;->d:I
    aget-object v5, v6, v5
    invoke-virtual { p0, p1, v5, v2 }, Lc/e/b/b;->B(Lc/e/b/d;Lc/e/b/b;Z)V
  :L9
    add-int/lit8 v4, v4, 1
    goto :L6
  :L10
  .line 13
    iget-object v2, p0, Lc/e/b/b;->d:Ljava/util/ArrayList;
    invoke-virtual { v2 }, Ljava/util/ArrayList;->clear()V
    goto :L1
  :L11
    const/4 v1, 1
    goto :L1
  :L12
  .line 14
    sget-boolean v0, Lc/e/b/d;->t:Z
    if-eqz v0, :L13
    iget-object v0, p0, Lc/e/b/b;->a:Lc/e/b/i;
    if-eqz v0, :L13
    iget-object v0, p0, Lc/e/b/b;->e:Lc/e/b/b$a;
  .line 15
    invoke-interface { v0 }, Lc/e/b/b$a;->k()I
    move-result v0
    if-nez v0, :L13
  .line 16
    iput-boolean v2, p0, Lc/e/b/b;->f:Z
  .line 17
    iput-boolean v2, p1, Lc/e/b/d;->a:Z
  :L13
    return-void
.end method

.method public a(Lc/e/b/d$a;)V
  .registers 7
  .line 1
    instance-of v0, p1, Lc/e/b/b;
    if-eqz v0, :L1
  .line 2
    check-cast p1, Lc/e/b/b;
    const/4 v0, 0
  .line 3
    iput-object v0, p0, Lc/e/b/b;->a:Lc/e/b/i;
  .line 4
    iget-object v0, p0, Lc/e/b/b;->e:Lc/e/b/b$a;
    invoke-interface { v0 }, Lc/e/b/b$a;->clear()V
    const/4 v0, 0
  :L0
  .line 5
    iget-object v1, p1, Lc/e/b/b;->e:Lc/e/b/b$a;
    invoke-interface { v1 }, Lc/e/b/b$a;->k()I
    move-result v1
    if-ge v0, v1, :L1
  .line 6
    iget-object v1, p1, Lc/e/b/b;->e:Lc/e/b/b$a;
    invoke-interface { v1, v0 }, Lc/e/b/b$a;->f(I)Lc/e/b/i;
    move-result-object v1
  .line 7
    iget-object v2, p1, Lc/e/b/b;->e:Lc/e/b/b$a;
    invoke-interface { v2, v0 }, Lc/e/b/b$a;->a(I)F
    move-result v2
  .line 8
    iget-object v3, p0, Lc/e/b/b;->e:Lc/e/b/b$a;
    const/4 v4, 1
    invoke-interface { v3, v1, v2, v4 }, Lc/e/b/b$a;->e(Lc/e/b/i;FZ)V
    add-int/lit8 v0, v0, 1
    goto :L0
  :L1
    return-void
.end method

.method public b(Lc/e/b/i;)V
  .registers 5
  .line 1
    iget v0, p1, Lc/e/b/i;->e:I
    const/high16 v1, 16256
    const/4 v2, 1
    if-ne v0, v2, :L0
    goto :L4
  :L0
    const/4 v2, 2
    if-ne v0, v2, :L1
    const/high16 v1, 17530
    goto :L4
  :L1
    const/4 v2, 3
    if-ne v0, v2, :L2
    const v1, 1232348160
    goto :L4
  :L2
    const/4 v2, 4
    if-ne v0, v2, :L3
    const v1, 1315859240
    goto :L4
  :L3
    const/4 v2, 5
    if-ne v0, v2, :L4
    const v1, 1399379109
  :L4
  .line 2
    iget-object v0, p0, Lc/e/b/b;->e:Lc/e/b/b$a;
    invoke-interface { v0, p1, v1 }, Lc/e/b/b$a;->c(Lc/e/b/i;F)V
    return-void
.end method

.method public c(Lc/e/b/d;[Z)Lc/e/b/i;
  .registers 3
    const/4 p1, 0
  .line 1
    invoke-direct { p0, p2, p1 }, Lc/e/b/b;->w([ZLc/e/b/i;)Lc/e/b/i;
    move-result-object p1
    return-object p1
.end method

.method public clear()V
  .registers 2
  .line 1
    iget-object v0, p0, Lc/e/b/b;->e:Lc/e/b/b$a;
    invoke-interface { v0 }, Lc/e/b/b$a;->clear()V
    const/4 v0, 0
  .line 2
    iput-object v0, p0, Lc/e/b/b;->a:Lc/e/b/i;
    const/4 v0, 0
  .line 3
    iput v0, p0, Lc/e/b/b;->b:F
    return-void
.end method

.method public d(Lc/e/b/d;I)Lc/e/b/b;
  .registers 6
  .line 1
    iget-object v0, p0, Lc/e/b/b;->e:Lc/e/b/b$a;
    const-string v1, "ep"
    invoke-virtual { p1, p2, v1 }, Lc/e/b/d;->o(ILjava/lang/String;)Lc/e/b/i;
    move-result-object v1
    const/high16 v2, 16256
    invoke-interface { v0, v1, v2 }, Lc/e/b/b$a;->c(Lc/e/b/i;F)V
  .line 2
    iget-object v0, p0, Lc/e/b/b;->e:Lc/e/b/b$a;
    const-string v1, "em"
    invoke-virtual { p1, p2, v1 }, Lc/e/b/d;->o(ILjava/lang/String;)Lc/e/b/i;
    move-result-object p1
    const/high16 p2, -16512
    invoke-interface { v0, p1, p2 }, Lc/e/b/b$a;->c(Lc/e/b/i;F)V
    return-object p0
.end method

.method e(Lc/e/b/i;I)Lc/e/b/b;
  .registers 4
  .line 1
    iget-object v0, p0, Lc/e/b/b;->e:Lc/e/b/b$a;
    int-to-float p2, p2
    invoke-interface { v0, p1, p2 }, Lc/e/b/b$a;->c(Lc/e/b/i;F)V
    return-object p0
.end method

.method f(Lc/e/b/d;)Z
  .registers 4
  .line 1
    invoke-virtual { p0, p1 }, Lc/e/b/b;->g(Lc/e/b/d;)Lc/e/b/i;
    move-result-object p1
    const/4 v0, 1
    if-nez p1, :L0
    const/4 p1, 1
    goto :L1
  :L0
  .line 2
    invoke-virtual { p0, p1 }, Lc/e/b/b;->x(Lc/e/b/i;)V
    const/4 p1, 0
  :L1
  .line 3
    iget-object v1, p0, Lc/e/b/b;->e:Lc/e/b/b$a;
    invoke-interface { v1 }, Lc/e/b/b$a;->k()I
    move-result v1
    if-nez v1, :L2
  .line 4
    iput-boolean v0, p0, Lc/e/b/b;->f:Z
  :L2
    return p1
.end method

.method g(Lc/e/b/d;)Lc/e/b/i;
  .registers 16
  .line 1
    iget-object v0, p0, Lc/e/b/b;->e:Lc/e/b/b$a;
    invoke-interface { v0 }, Lc/e/b/b$a;->k()I
    move-result v0
    const/4 v1, 0
    const/4 v2, 0
    const/4 v3, 0
    move-object v2, v1
    const/4 v4, 0
    const/4 v5, 0
    const/4 v6, 0
    const/4 v7, 0
    const/4 v8, 0
  :L0
    if-ge v4, v0, :L9
  .line 2
    iget-object v9, p0, Lc/e/b/b;->e:Lc/e/b/b$a;
    invoke-interface { v9, v4 }, Lc/e/b/b$a;->a(I)F
    move-result v9
  .line 3
    iget-object v10, p0, Lc/e/b/b;->e:Lc/e/b/b$a;
    invoke-interface { v10, v4 }, Lc/e/b/b$a;->f(I)Lc/e/b/i;
    move-result-object v10
  .line 4
    iget-object v11, v10, Lc/e/b/i;->j:Lc/e/b/i$a;
    sget-object v12, Lc/e/b/i$a;->b:Lc/e/b/i$a;
    const/4 v13, 1
    if-ne v11, v12, :L4
    if-nez v1, :L2
  .line 5
    invoke-direct { p0, v10, p1 }, Lc/e/b/b;->u(Lc/e/b/i;Lc/e/b/d;)Z
    move-result v1
  :L1
    move v5, v1
    move v7, v9
    move-object v1, v10
    goto :L8
  :L2
    cmpl-float v11, v7, v9
    if-lez v11, :L3
  .line 6
    invoke-direct { p0, v10, p1 }, Lc/e/b/b;->u(Lc/e/b/i;Lc/e/b/d;)Z
    move-result v1
    goto :L1
  :L3
    if-nez v5, :L8
  .line 7
    invoke-direct { p0, v10, p1 }, Lc/e/b/b;->u(Lc/e/b/i;Lc/e/b/d;)Z
    move-result v11
    if-eqz v11, :L8
    move v7, v9
    move-object v1, v10
    const/4 v5, 1
    goto :L8
  :L4
    if-nez v1, :L8
    cmpg-float v11, v9, v3
    if-gez v11, :L8
    if-nez v2, :L6
  .line 8
    invoke-direct { p0, v10, p1 }, Lc/e/b/b;->u(Lc/e/b/i;Lc/e/b/d;)Z
    move-result v2
  :L5
    move v6, v2
    move v8, v9
    move-object v2, v10
    goto :L8
  :L6
    cmpl-float v11, v8, v9
    if-lez v11, :L7
  .line 9
    invoke-direct { p0, v10, p1 }, Lc/e/b/b;->u(Lc/e/b/i;Lc/e/b/d;)Z
    move-result v2
    goto :L5
  :L7
    if-nez v6, :L8
  .line 10
    invoke-direct { p0, v10, p1 }, Lc/e/b/b;->u(Lc/e/b/i;Lc/e/b/d;)Z
    move-result v11
    if-eqz v11, :L8
    move v8, v9
    move-object v2, v10
    const/4 v6, 1
  :L8
    add-int/lit8 v4, v4, 1
    goto :L0
  :L9
    if-eqz v1, :L10
    return-object v1
  :L10
    return-object v2
.end method

.method public getKey()Lc/e/b/i;
  .registers 2
  .line 1
    iget-object v0, p0, Lc/e/b/b;->a:Lc/e/b/i;
    return-object v0
.end method

.method h(Lc/e/b/i;Lc/e/b/i;IFLc/e/b/i;Lc/e/b/i;I)Lc/e/b/b;
  .registers 13
    const/high16 v0, 16256
    if-ne p2, p5, :L0
  .line 1
    iget-object p3, p0, Lc/e/b/b;->e:Lc/e/b/b$a;
    invoke-interface { p3, p1, v0 }, Lc/e/b/b$a;->c(Lc/e/b/i;F)V
  .line 2
    iget-object p1, p0, Lc/e/b/b;->e:Lc/e/b/b$a;
    invoke-interface { p1, p6, v0 }, Lc/e/b/b$a;->c(Lc/e/b/i;F)V
  .line 3
    iget-object p1, p0, Lc/e/b/b;->e:Lc/e/b/b$a;
    const/high16 p3, -16384
    invoke-interface { p1, p2, p3 }, Lc/e/b/b$a;->c(Lc/e/b/i;F)V
    return-object p0
  :L0
    const/high16 v1, 16128
    const/high16 v2, -16512
    cmpl-float v1, p4, v1
    if-nez v1, :L2
  .line 4
    iget-object p4, p0, Lc/e/b/b;->e:Lc/e/b/b$a;
    invoke-interface { p4, p1, v0 }, Lc/e/b/b$a;->c(Lc/e/b/i;F)V
  .line 5
    iget-object p1, p0, Lc/e/b/b;->e:Lc/e/b/b$a;
    invoke-interface { p1, p2, v2 }, Lc/e/b/b$a;->c(Lc/e/b/i;F)V
  .line 6
    iget-object p1, p0, Lc/e/b/b;->e:Lc/e/b/b$a;
    invoke-interface { p1, p5, v2 }, Lc/e/b/b$a;->c(Lc/e/b/i;F)V
  .line 7
    iget-object p1, p0, Lc/e/b/b;->e:Lc/e/b/b$a;
    invoke-interface { p1, p6, v0 }, Lc/e/b/b$a;->c(Lc/e/b/i;F)V
    if-gtz p3, :L1
    if-lez p7, :L6
  :L1
    neg-int p1, p3
    add-int/2addr p1, p7
    int-to-float p1, p1
  .line 8
    iput p1, p0, Lc/e/b/b;->b:F
    goto :L6
  :L2
    const/4 v1, 0
    cmpg-float v1, p4, v1
    if-gtz v1, :L3
  .line 9
    iget-object p4, p0, Lc/e/b/b;->e:Lc/e/b/b$a;
    invoke-interface { p4, p1, v2 }, Lc/e/b/b$a;->c(Lc/e/b/i;F)V
  .line 10
    iget-object p1, p0, Lc/e/b/b;->e:Lc/e/b/b$a;
    invoke-interface { p1, p2, v0 }, Lc/e/b/b$a;->c(Lc/e/b/i;F)V
    int-to-float p1, p3
  .line 11
    iput p1, p0, Lc/e/b/b;->b:F
    goto :L6
  :L3
    cmpl-float v1, p4, v0
    if-ltz v1, :L4
  .line 12
    iget-object p1, p0, Lc/e/b/b;->e:Lc/e/b/b$a;
    invoke-interface { p1, p6, v2 }, Lc/e/b/b$a;->c(Lc/e/b/i;F)V
  .line 13
    iget-object p1, p0, Lc/e/b/b;->e:Lc/e/b/b$a;
    invoke-interface { p1, p5, v0 }, Lc/e/b/b$a;->c(Lc/e/b/i;F)V
    neg-int p1, p7
    int-to-float p1, p1
  .line 14
    iput p1, p0, Lc/e/b/b;->b:F
    goto :L6
  :L4
  .line 15
    iget-object v1, p0, Lc/e/b/b;->e:Lc/e/b/b$a;
    sub-float v3, v0, p4
    mul-float v4, v3, v0
    invoke-interface { v1, p1, v4 }, Lc/e/b/b$a;->c(Lc/e/b/i;F)V
  .line 16
    iget-object p1, p0, Lc/e/b/b;->e:Lc/e/b/b$a;
    mul-float v1, v3, v2
    invoke-interface { p1, p2, v1 }, Lc/e/b/b$a;->c(Lc/e/b/i;F)V
  .line 17
    iget-object p1, p0, Lc/e/b/b;->e:Lc/e/b/b$a;
    mul-float v2, v2, p4
    invoke-interface { p1, p5, v2 }, Lc/e/b/b$a;->c(Lc/e/b/i;F)V
  .line 18
    iget-object p1, p0, Lc/e/b/b;->e:Lc/e/b/b$a;
    mul-float v0, v0, p4
    invoke-interface { p1, p6, v0 }, Lc/e/b/b$a;->c(Lc/e/b/i;F)V
    if-gtz p3, :L5
    if-lez p7, :L6
  :L5
    neg-int p1, p3
    int-to-float p1, p1
    mul-float p1, p1, v3
    int-to-float p2, p7
    mul-float p2, p2, p4
    add-float/2addr p1, p2
  .line 19
    iput p1, p0, Lc/e/b/b;->b:F
  :L6
    return-object p0
.end method

.method i(Lc/e/b/i;I)Lc/e/b/b;
  .registers 3
  .line 1
    iput-object p1, p0, Lc/e/b/b;->a:Lc/e/b/i;
    int-to-float p2, p2
  .line 2
    iput p2, p1, Lc/e/b/i;->f:F
  .line 3
    iput p2, p0, Lc/e/b/b;->b:F
    const/4 p1, 1
  .line 4
    iput-boolean p1, p0, Lc/e/b/b;->f:Z
    return-object p0
.end method

.method public isEmpty()Z
  .registers 3
  .line 1
    iget-object v0, p0, Lc/e/b/b;->a:Lc/e/b/i;
    if-nez v0, :L0
    iget v0, p0, Lc/e/b/b;->b:F
    const/4 v1, 0
    cmpl-float v0, v0, v1
    if-nez v0, :L0
    iget-object v0, p0, Lc/e/b/b;->e:Lc/e/b/b$a;
    invoke-interface { v0 }, Lc/e/b/b$a;->k()I
    move-result v0
    if-nez v0, :L0
    const/4 v0, 1
    goto :L1
  :L0
    const/4 v0, 0
  :L1
    return v0
.end method

.method j(Lc/e/b/i;Lc/e/b/i;F)Lc/e/b/b;
  .registers 6
  .line 1
    iget-object v0, p0, Lc/e/b/b;->e:Lc/e/b/b$a;
    const/high16 v1, -16512
    invoke-interface { v0, p1, v1 }, Lc/e/b/b$a;->c(Lc/e/b/i;F)V
  .line 2
    iget-object p1, p0, Lc/e/b/b;->e:Lc/e/b/b$a;
    invoke-interface { p1, p2, p3 }, Lc/e/b/b$a;->c(Lc/e/b/i;F)V
    return-object p0
.end method

.method public k(Lc/e/b/i;Lc/e/b/i;Lc/e/b/i;Lc/e/b/i;F)Lc/e/b/b;
  .registers 8
  .line 1
    iget-object v0, p0, Lc/e/b/b;->e:Lc/e/b/b$a;
    const/high16 v1, -16512
    invoke-interface { v0, p1, v1 }, Lc/e/b/b$a;->c(Lc/e/b/i;F)V
  .line 2
    iget-object p1, p0, Lc/e/b/b;->e:Lc/e/b/b$a;
    const/high16 v0, 16256
    invoke-interface { p1, p2, v0 }, Lc/e/b/b$a;->c(Lc/e/b/i;F)V
  .line 3
    iget-object p1, p0, Lc/e/b/b;->e:Lc/e/b/b$a;
    invoke-interface { p1, p3, p5 }, Lc/e/b/b$a;->c(Lc/e/b/i;F)V
  .line 4
    iget-object p1, p0, Lc/e/b/b;->e:Lc/e/b/b$a;
    neg-float p2, p5
    invoke-interface { p1, p4, p2 }, Lc/e/b/b$a;->c(Lc/e/b/i;F)V
    return-object p0
.end method

.method public l(FFFLc/e/b/i;Lc/e/b/i;Lc/e/b/i;Lc/e/b/i;)Lc/e/b/b;
  .registers 12
    const/4 v0, 0
  .line 1
    iput v0, p0, Lc/e/b/b;->b:F
    const/high16 v1, -16512
    const/high16 v2, 16256
    cmpl-float v3, p2, v0
    if-eqz v3, :L3
    cmpl-float v3, p1, p3
    if-nez v3, :L0
    goto :L3
  :L0
    cmpl-float v3, p1, v0
    if-nez v3, :L1
  .line 2
    iget-object p1, p0, Lc/e/b/b;->e:Lc/e/b/b$a;
    invoke-interface { p1, p4, v2 }, Lc/e/b/b$a;->c(Lc/e/b/i;F)V
  .line 3
    iget-object p1, p0, Lc/e/b/b;->e:Lc/e/b/b$a;
    invoke-interface { p1, p5, v1 }, Lc/e/b/b$a;->c(Lc/e/b/i;F)V
    goto :L4
  :L1
    cmpl-float v0, p3, v0
    if-nez v0, :L2
  .line 4
    iget-object p1, p0, Lc/e/b/b;->e:Lc/e/b/b$a;
    invoke-interface { p1, p6, v2 }, Lc/e/b/b$a;->c(Lc/e/b/i;F)V
  .line 5
    iget-object p1, p0, Lc/e/b/b;->e:Lc/e/b/b$a;
    invoke-interface { p1, p7, v1 }, Lc/e/b/b$a;->c(Lc/e/b/i;F)V
    goto :L4
  :L2
    div-float/2addr p1, p2
    div-float/2addr p3, p2
    div-float/2addr p1, p3
  .line 6
    iget-object p2, p0, Lc/e/b/b;->e:Lc/e/b/b$a;
    invoke-interface { p2, p4, v2 }, Lc/e/b/b$a;->c(Lc/e/b/i;F)V
  .line 7
    iget-object p2, p0, Lc/e/b/b;->e:Lc/e/b/b$a;
    invoke-interface { p2, p5, v1 }, Lc/e/b/b$a;->c(Lc/e/b/i;F)V
  .line 8
    iget-object p2, p0, Lc/e/b/b;->e:Lc/e/b/b$a;
    invoke-interface { p2, p7, p1 }, Lc/e/b/b$a;->c(Lc/e/b/i;F)V
  .line 9
    iget-object p2, p0, Lc/e/b/b;->e:Lc/e/b/b$a;
    neg-float p1, p1
    invoke-interface { p2, p6, p1 }, Lc/e/b/b$a;->c(Lc/e/b/i;F)V
    goto :L4
  :L3
  .line 10
    iget-object p1, p0, Lc/e/b/b;->e:Lc/e/b/b$a;
    invoke-interface { p1, p4, v2 }, Lc/e/b/b$a;->c(Lc/e/b/i;F)V
  .line 11
    iget-object p1, p0, Lc/e/b/b;->e:Lc/e/b/b$a;
    invoke-interface { p1, p5, v1 }, Lc/e/b/b$a;->c(Lc/e/b/i;F)V
  .line 12
    iget-object p1, p0, Lc/e/b/b;->e:Lc/e/b/b$a;
    invoke-interface { p1, p7, v2 }, Lc/e/b/b$a;->c(Lc/e/b/i;F)V
  .line 13
    iget-object p1, p0, Lc/e/b/b;->e:Lc/e/b/b$a;
    invoke-interface { p1, p6, v1 }, Lc/e/b/b$a;->c(Lc/e/b/i;F)V
  :L4
    return-object p0
.end method

.method public m(Lc/e/b/i;I)Lc/e/b/b;
  .registers 4
    if-gez p2, :L0
    mul-int/lit8 p2, p2, -1
    int-to-float p2, p2
  .line 1
    iput p2, p0, Lc/e/b/b;->b:F
  .line 2
    iget-object p2, p0, Lc/e/b/b;->e:Lc/e/b/b$a;
    const/high16 v0, 16256
    invoke-interface { p2, p1, v0 }, Lc/e/b/b$a;->c(Lc/e/b/i;F)V
    goto :L1
  :L0
    int-to-float p2, p2
  .line 3
    iput p2, p0, Lc/e/b/b;->b:F
  .line 4
    iget-object p2, p0, Lc/e/b/b;->e:Lc/e/b/b$a;
    const/high16 v0, -16512
    invoke-interface { p2, p1, v0 }, Lc/e/b/b$a;->c(Lc/e/b/i;F)V
  :L1
    return-object p0
.end method

.method public n(Lc/e/b/i;Lc/e/b/i;I)Lc/e/b/b;
  .registers 6
    const/4 v0, 0
    if-eqz p3, :L1
    if-gez p3, :L0
    mul-int/lit8 p3, p3, -1
    const/4 v0, 1
  :L0
    int-to-float p3, p3
  .line 1
    iput p3, p0, Lc/e/b/b;->b:F
  :L1
    const/high16 p3, -16512
    const/high16 v1, 16256
    if-nez v0, :L2
  .line 2
    iget-object v0, p0, Lc/e/b/b;->e:Lc/e/b/b$a;
    invoke-interface { v0, p1, p3 }, Lc/e/b/b$a;->c(Lc/e/b/i;F)V
  .line 3
    iget-object p1, p0, Lc/e/b/b;->e:Lc/e/b/b$a;
    invoke-interface { p1, p2, v1 }, Lc/e/b/b$a;->c(Lc/e/b/i;F)V
    goto :L3
  :L2
  .line 4
    iget-object v0, p0, Lc/e/b/b;->e:Lc/e/b/b$a;
    invoke-interface { v0, p1, v1 }, Lc/e/b/b$a;->c(Lc/e/b/i;F)V
  .line 5
    iget-object p1, p0, Lc/e/b/b;->e:Lc/e/b/b$a;
    invoke-interface { p1, p2, p3 }, Lc/e/b/b$a;->c(Lc/e/b/i;F)V
  :L3
    return-object p0
.end method

.method public o(Lc/e/b/i;Lc/e/b/i;Lc/e/b/i;I)Lc/e/b/b;
  .registers 7
    const/4 v0, 0
    if-eqz p4, :L1
    if-gez p4, :L0
    mul-int/lit8 p4, p4, -1
    const/4 v0, 1
  :L0
    int-to-float p4, p4
  .line 1
    iput p4, p0, Lc/e/b/b;->b:F
  :L1
    const/high16 p4, -16512
    const/high16 v1, 16256
    if-nez v0, :L2
  .line 2
    iget-object v0, p0, Lc/e/b/b;->e:Lc/e/b/b$a;
    invoke-interface { v0, p1, p4 }, Lc/e/b/b$a;->c(Lc/e/b/i;F)V
  .line 3
    iget-object p1, p0, Lc/e/b/b;->e:Lc/e/b/b$a;
    invoke-interface { p1, p2, v1 }, Lc/e/b/b$a;->c(Lc/e/b/i;F)V
  .line 4
    iget-object p1, p0, Lc/e/b/b;->e:Lc/e/b/b$a;
    invoke-interface { p1, p3, v1 }, Lc/e/b/b$a;->c(Lc/e/b/i;F)V
    goto :L3
  :L2
  .line 5
    iget-object v0, p0, Lc/e/b/b;->e:Lc/e/b/b$a;
    invoke-interface { v0, p1, v1 }, Lc/e/b/b$a;->c(Lc/e/b/i;F)V
  .line 6
    iget-object p1, p0, Lc/e/b/b;->e:Lc/e/b/b$a;
    invoke-interface { p1, p2, p4 }, Lc/e/b/b$a;->c(Lc/e/b/i;F)V
  .line 7
    iget-object p1, p0, Lc/e/b/b;->e:Lc/e/b/b$a;
    invoke-interface { p1, p3, p4 }, Lc/e/b/b$a;->c(Lc/e/b/i;F)V
  :L3
    return-object p0
.end method

.method public p(Lc/e/b/i;Lc/e/b/i;Lc/e/b/i;I)Lc/e/b/b;
  .registers 7
    const/4 v0, 0
    if-eqz p4, :L1
    if-gez p4, :L0
    mul-int/lit8 p4, p4, -1
    const/4 v0, 1
  :L0
    int-to-float p4, p4
  .line 1
    iput p4, p0, Lc/e/b/b;->b:F
  :L1
    const/high16 p4, -16512
    const/high16 v1, 16256
    if-nez v0, :L2
  .line 2
    iget-object v0, p0, Lc/e/b/b;->e:Lc/e/b/b$a;
    invoke-interface { v0, p1, p4 }, Lc/e/b/b$a;->c(Lc/e/b/i;F)V
  .line 3
    iget-object p1, p0, Lc/e/b/b;->e:Lc/e/b/b$a;
    invoke-interface { p1, p2, v1 }, Lc/e/b/b$a;->c(Lc/e/b/i;F)V
  .line 4
    iget-object p1, p0, Lc/e/b/b;->e:Lc/e/b/b$a;
    invoke-interface { p1, p3, p4 }, Lc/e/b/b$a;->c(Lc/e/b/i;F)V
    goto :L3
  :L2
  .line 5
    iget-object v0, p0, Lc/e/b/b;->e:Lc/e/b/b$a;
    invoke-interface { v0, p1, v1 }, Lc/e/b/b$a;->c(Lc/e/b/i;F)V
  .line 6
    iget-object p1, p0, Lc/e/b/b;->e:Lc/e/b/b$a;
    invoke-interface { p1, p2, p4 }, Lc/e/b/b$a;->c(Lc/e/b/i;F)V
  .line 7
    iget-object p1, p0, Lc/e/b/b;->e:Lc/e/b/b$a;
    invoke-interface { p1, p3, v1 }, Lc/e/b/b$a;->c(Lc/e/b/i;F)V
  :L3
    return-object p0
.end method

.method public q(Lc/e/b/i;Lc/e/b/i;Lc/e/b/i;Lc/e/b/i;F)Lc/e/b/b;
  .registers 8
  .line 1
    iget-object v0, p0, Lc/e/b/b;->e:Lc/e/b/b$a;
    const/high16 v1, 16128
    invoke-interface { v0, p3, v1 }, Lc/e/b/b$a;->c(Lc/e/b/i;F)V
  .line 2
    iget-object p3, p0, Lc/e/b/b;->e:Lc/e/b/b$a;
    invoke-interface { p3, p4, v1 }, Lc/e/b/b$a;->c(Lc/e/b/i;F)V
  .line 3
    iget-object p3, p0, Lc/e/b/b;->e:Lc/e/b/b$a;
    const/high16 p4, -16640
    invoke-interface { p3, p1, p4 }, Lc/e/b/b$a;->c(Lc/e/b/i;F)V
  .line 4
    iget-object p1, p0, Lc/e/b/b;->e:Lc/e/b/b$a;
    invoke-interface { p1, p2, p4 }, Lc/e/b/b$a;->c(Lc/e/b/i;F)V
    neg-float p1, p5
  .line 5
    iput p1, p0, Lc/e/b/b;->b:F
    return-object p0
.end method

.method r()V
  .registers 3
  .line 1
    iget v0, p0, Lc/e/b/b;->b:F
    const/4 v1, 0
    cmpg-float v1, v0, v1
    if-gez v1, :L0
    const/high16 v1, -16512
    mul-float v0, v0, v1
  .line 2
    iput v0, p0, Lc/e/b/b;->b:F
  .line 3
    iget-object v0, p0, Lc/e/b/b;->e:Lc/e/b/b$a;
    invoke-interface { v0 }, Lc/e/b/b$a;->j()V
  :L0
    return-void
.end method

.method s()Z
  .registers 3
  .line 1
    iget-object v0, p0, Lc/e/b/b;->a:Lc/e/b/i;
    if-eqz v0, :L1
    iget-object v0, v0, Lc/e/b/i;->j:Lc/e/b/i$a;
    sget-object v1, Lc/e/b/i$a;->b:Lc/e/b/i$a;
    if-eq v0, v1, :L0
    iget v0, p0, Lc/e/b/b;->b:F
    const/4 v1, 0
    cmpg-float v0, v0, v1
    if-ltz v0, :L1
  :L0
    const/4 v0, 1
    goto :L2
  :L1
    const/4 v0, 0
  :L2
    return v0
.end method

.method t(Lc/e/b/i;)Z
  .registers 3
  .line 1
    iget-object v0, p0, Lc/e/b/b;->e:Lc/e/b/b$a;
    invoke-interface { v0, p1 }, Lc/e/b/b$a;->h(Lc/e/b/i;)Z
    move-result p1
    return p1
.end method

.method public toString()Ljava/lang/String;
  .registers 2
  .line 1
    invoke-virtual { p0 }, Lc/e/b/b;->z()Ljava/lang/String;
    move-result-object v0
    return-object v0
.end method

.method public v(Lc/e/b/i;)Lc/e/b/i;
  .registers 3
    const/4 v0, 0
  .line 1
    invoke-direct { p0, v0, p1 }, Lc/e/b/b;->w([ZLc/e/b/i;)Lc/e/b/i;
    move-result-object p1
    return-object p1
.end method

.method x(Lc/e/b/i;)V
  .registers 5
  .line 1
    iget-object v0, p0, Lc/e/b/b;->a:Lc/e/b/i;
    const/high16 v1, -16512
    if-eqz v0, :L0
  .line 2
    iget-object v2, p0, Lc/e/b/b;->e:Lc/e/b/b$a;
    invoke-interface { v2, v0, v1 }, Lc/e/b/b$a;->c(Lc/e/b/i;F)V
  .line 3
    iget-object v0, p0, Lc/e/b/b;->a:Lc/e/b/i;
    const/4 v2, -1
    iput v2, v0, Lc/e/b/i;->d:I
    const/4 v0, 0
  .line 4
    iput-object v0, p0, Lc/e/b/b;->a:Lc/e/b/i;
  :L0
  .line 5
    iget-object v0, p0, Lc/e/b/b;->e:Lc/e/b/b$a;
    const/4 v2, 1
    invoke-interface { v0, p1, v2 }, Lc/e/b/b$a;->d(Lc/e/b/i;Z)F
    move-result v0
    mul-float v0, v0, v1
  .line 6
    iput-object p1, p0, Lc/e/b/b;->a:Lc/e/b/i;
    const/high16 p1, 16256
    cmpl-float p1, v0, p1
    if-nez p1, :L1
    return-void
  :L1
  .line 7
    iget p1, p0, Lc/e/b/b;->b:F
    div-float/2addr p1, v0
    iput p1, p0, Lc/e/b/b;->b:F
  .line 8
    iget-object p1, p0, Lc/e/b/b;->e:Lc/e/b/b$a;
    invoke-interface { p1, v0 }, Lc/e/b/b$a;->i(F)V
    return-void
.end method

.method public y()V
  .registers 2
    const/4 v0, 0
  .line 1
    iput-object v0, p0, Lc/e/b/b;->a:Lc/e/b/i;
  .line 2
    iget-object v0, p0, Lc/e/b/b;->e:Lc/e/b/b$a;
    invoke-interface { v0 }, Lc/e/b/b$a;->clear()V
    const/4 v0, 0
  .line 3
    iput v0, p0, Lc/e/b/b;->b:F
    const/4 v0, 0
  .line 4
    iput-boolean v0, p0, Lc/e/b/b;->f:Z
    return-void
.end method

.method z()Ljava/lang/String;
  .registers 10
  .line 1
    iget-object v0, p0, Lc/e/b/b;->a:Lc/e/b/i;
    const-string v1, ""
    if-nez v0, :L0
  .line 2
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string v1, "0"
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    goto :L1
  :L0
  .line 3
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget-object v1, p0, Lc/e/b/b;->a:Lc/e/b/i;
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
  :L1
  .line 4
    new-instance v1, Ljava/lang/StringBuilder;
    invoke-direct { v1 }, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual { v1, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string v0, " = "
    invoke-virtual { v1, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
  .line 5
    iget v1, p0, Lc/e/b/b;->b:F
    const/4 v2, 0
    const/4 v3, 1
    const/4 v4, 0
    cmpl-float v1, v1, v4
    if-eqz v1, :L2
  .line 6
    new-instance v1, Ljava/lang/StringBuilder;
    invoke-direct { v1 }, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual { v1, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget v0, p0, Lc/e/b/b;->b:F
    invoke-virtual { v1, v0 }, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;
    invoke-virtual { v1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    const/4 v1, 1
    goto :L3
  :L2
    const/4 v1, 0
  :L3
  .line 7
    iget-object v5, p0, Lc/e/b/b;->e:Lc/e/b/b$a;
    invoke-interface { v5 }, Lc/e/b/b$a;->k()I
    move-result v5
  :L4
    if-ge v2, v5, :L14
  .line 8
    iget-object v6, p0, Lc/e/b/b;->e:Lc/e/b/b$a;
    invoke-interface { v6, v2 }, Lc/e/b/b$a;->f(I)Lc/e/b/i;
    move-result-object v6
    if-nez v6, :L5
    goto/16 :L13
  :L5
  .line 9
    iget-object v7, p0, Lc/e/b/b;->e:Lc/e/b/b$a;
    invoke-interface { v7, v2 }, Lc/e/b/b$a;->a(I)F
    move-result v7
    cmpl-float v8, v7, v4
    if-nez v8, :L6
    goto/16 :L13
  :L6
  .line 10
    invoke-virtual { v6 }, Lc/e/b/i;->toString()Ljava/lang/String;
    move-result-object v6
    const/high16 v8, -16512
    if-nez v1, :L7
    cmpg-float v1, v7, v4
    if-gez v1, :L10
  .line 11
    new-instance v1, Ljava/lang/StringBuilder;
    invoke-direct { v1 }, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual { v1, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string v0, "- "
    invoke-virtual { v1, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    goto :L9
  :L7
    cmpl-float v1, v7, v4
    if-lez v1, :L8
  .line 12
    new-instance v1, Ljava/lang/StringBuilder;
    invoke-direct { v1 }, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual { v1, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string v0, " + "
    invoke-virtual { v1, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    goto :L10
  :L8
  .line 13
    new-instance v1, Ljava/lang/StringBuilder;
    invoke-direct { v1 }, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual { v1, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string v0, " - "
    invoke-virtual { v1, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
  :L9
    mul-float v7, v7, v8
  :L10
    const/high16 v1, 16256
    cmpl-float v1, v7, v1
    if-nez v1, :L11
  .line 14
    new-instance v1, Ljava/lang/StringBuilder;
    invoke-direct { v1 }, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual { v1, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v1, v6 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    goto :L12
  :L11
  .line 15
    new-instance v1, Ljava/lang/StringBuilder;
    invoke-direct { v1 }, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual { v1, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v1, v7 }, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;
    const-string v0, " "
    invoke-virtual { v1, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v1, v6 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
  :L12
    const/4 v1, 1
  :L13
    add-int/lit8 v2, v2, 1
    goto/16 :L4
  :L14
    if-nez v1, :L15
  .line 16
    new-instance v1, Ljava/lang/StringBuilder;
    invoke-direct { v1 }, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual { v1, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string v0, "0.0"
    invoke-virtual { v1, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
  :L15
    return-object v0
.end method
