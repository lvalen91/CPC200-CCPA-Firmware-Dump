.class Lc/e/b/k/m/m;
.super Ljava/lang/Object;
.source "SourceFile"

.field public static d:I

.field public a:Z

.field b:Lc/e/b/k/m/p;

.field c:Ljava/util/ArrayList;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "Ljava/util/ArrayList<",
      "Lc/e/b/k/m/p;",
      ">;"
    }
  .end annotation
.end field

.method public constructor <init>(Lc/e/b/k/m/p;I)V
  .registers 3
  .line 1
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    const/4 p2, 0
  .line 2
    iput-object p2, p0, Lc/e/b/k/m/m;->b:Lc/e/b/k/m/p;
  .line 3
    new-instance p2, Ljava/util/ArrayList;
    invoke-direct { p2 }, Ljava/util/ArrayList;-><init>()V
    iput-object p2, p0, Lc/e/b/k/m/m;->c:Ljava/util/ArrayList;
  .line 4
    sget p2, Lc/e/b/k/m/m;->d:I
    add-int/lit8 p2, p2, 1
  .line 5
    sput p2, Lc/e/b/k/m/m;->d:I
  .line 6
    iput-object p1, p0, Lc/e/b/k/m/m;->b:Lc/e/b/k/m/p;
    return-void
.end method

.method private c(Lc/e/b/k/m/f;J)J
  .registers 12
  .line 1
    iget-object v0, p1, Lc/e/b/k/m/f;->d:Lc/e/b/k/m/p;
  .line 2
    instance-of v1, v0, Lc/e/b/k/m/k;
    if-eqz v1, :L0
    return-wide p2
  :L0
  .line 3
    iget-object v1, p1, Lc/e/b/k/m/f;->k:Ljava/util/List;
    invoke-interface { v1 }, Ljava/util/List;->size()I
    move-result v1
    const/4 v2, 0
    move-wide v3, p2
  :L1
    if-ge v2, v1, :L4
  .line 4
    iget-object v5, p1, Lc/e/b/k/m/f;->k:Ljava/util/List;
    invoke-interface { v5, v2 }, Ljava/util/List;->get(I)Ljava/lang/Object;
    move-result-object v5
    check-cast v5, Lc/e/b/k/m/d;
  .line 5
    instance-of v6, v5, Lc/e/b/k/m/f;
    if-eqz v6, :L3
  .line 6
    check-cast v5, Lc/e/b/k/m/f;
  .line 7
    iget-object v6, v5, Lc/e/b/k/m/f;->d:Lc/e/b/k/m/p;
    if-ne v6, v0, :L2
    goto :L3
  :L2
  .line 8
    iget v6, v5, Lc/e/b/k/m/f;->f:I
    int-to-long v6, v6
    add-long/2addr v6, p2
    invoke-direct { p0, v5, v6, v7 }, Lc/e/b/k/m/m;->c(Lc/e/b/k/m/f;J)J
    move-result-wide v5
    invoke-static { v3, v4, v5, v6 }, Ljava/lang/Math;->min(JJ)J
    move-result-wide v3
  :L3
    add-int/lit8 v2, v2, 1
    goto :L1
  :L4
  .line 9
    iget-object v1, v0, Lc/e/b/k/m/p;->i:Lc/e/b/k/m/f;
    if-ne p1, v1, :L5
  .line 10
    invoke-virtual { v0 }, Lc/e/b/k/m/p;->j()J
    move-result-wide v1
  .line 11
    iget-object p1, v0, Lc/e/b/k/m/p;->h:Lc/e/b/k/m/f;
    sub-long/2addr p2, v1
    invoke-direct { p0, p1, p2, p3 }, Lc/e/b/k/m/m;->c(Lc/e/b/k/m/f;J)J
    move-result-wide v1
    invoke-static { v3, v4, v1, v2 }, Ljava/lang/Math;->min(JJ)J
    move-result-wide v1
  .line 12
    iget-object p1, v0, Lc/e/b/k/m/p;->h:Lc/e/b/k/m/f;
    iget p1, p1, Lc/e/b/k/m/f;->f:I
    int-to-long v3, p1
    sub-long/2addr p2, v3
    invoke-static { v1, v2, p2, p3 }, Ljava/lang/Math;->min(JJ)J
    move-result-wide v3
  :L5
    return-wide v3
.end method

.method private d(Lc/e/b/k/m/f;J)J
  .registers 12
  .line 1
    iget-object v0, p1, Lc/e/b/k/m/f;->d:Lc/e/b/k/m/p;
  .line 2
    instance-of v1, v0, Lc/e/b/k/m/k;
    if-eqz v1, :L0
    return-wide p2
  :L0
  .line 3
    iget-object v1, p1, Lc/e/b/k/m/f;->k:Ljava/util/List;
    invoke-interface { v1 }, Ljava/util/List;->size()I
    move-result v1
    const/4 v2, 0
    move-wide v3, p2
  :L1
    if-ge v2, v1, :L4
  .line 4
    iget-object v5, p1, Lc/e/b/k/m/f;->k:Ljava/util/List;
    invoke-interface { v5, v2 }, Ljava/util/List;->get(I)Ljava/lang/Object;
    move-result-object v5
    check-cast v5, Lc/e/b/k/m/d;
  .line 5
    instance-of v6, v5, Lc/e/b/k/m/f;
    if-eqz v6, :L3
  .line 6
    check-cast v5, Lc/e/b/k/m/f;
  .line 7
    iget-object v6, v5, Lc/e/b/k/m/f;->d:Lc/e/b/k/m/p;
    if-ne v6, v0, :L2
    goto :L3
  :L2
  .line 8
    iget v6, v5, Lc/e/b/k/m/f;->f:I
    int-to-long v6, v6
    add-long/2addr v6, p2
    invoke-direct { p0, v5, v6, v7 }, Lc/e/b/k/m/m;->d(Lc/e/b/k/m/f;J)J
    move-result-wide v5
    invoke-static { v3, v4, v5, v6 }, Ljava/lang/Math;->max(JJ)J
    move-result-wide v3
  :L3
    add-int/lit8 v2, v2, 1
    goto :L1
  :L4
  .line 9
    iget-object v1, v0, Lc/e/b/k/m/p;->h:Lc/e/b/k/m/f;
    if-ne p1, v1, :L5
  .line 10
    invoke-virtual { v0 }, Lc/e/b/k/m/p;->j()J
    move-result-wide v1
  .line 11
    iget-object p1, v0, Lc/e/b/k/m/p;->i:Lc/e/b/k/m/f;
    add-long/2addr p2, v1
    invoke-direct { p0, p1, p2, p3 }, Lc/e/b/k/m/m;->d(Lc/e/b/k/m/f;J)J
    move-result-wide v1
    invoke-static { v3, v4, v1, v2 }, Ljava/lang/Math;->max(JJ)J
    move-result-wide v1
  .line 12
    iget-object p1, v0, Lc/e/b/k/m/p;->i:Lc/e/b/k/m/f;
    iget p1, p1, Lc/e/b/k/m/f;->f:I
    int-to-long v3, p1
    sub-long/2addr p2, v3
    invoke-static { v1, v2, p2, p3 }, Ljava/lang/Math;->max(JJ)J
    move-result-wide v3
  :L5
    return-wide v3
.end method

.method public a(Lc/e/b/k/m/p;)V
  .registers 3
  .line 1
    iget-object v0, p0, Lc/e/b/k/m/m;->c:Ljava/util/ArrayList;
    invoke-virtual { v0, p1 }, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    return-void
.end method

.method public b(Lc/e/b/k/f;I)J
  .registers 14
  .line 1
    iget-object v0, p0, Lc/e/b/k/m/m;->b:Lc/e/b/k/m/p;
    instance-of v1, v0, Lc/e/b/k/m/c;
    const-wide/16 v2, 0
    if-eqz v1, :L0
  .line 2
    check-cast v0, Lc/e/b/k/m/c;
  .line 3
    iget v0, v0, Lc/e/b/k/m/p;->f:I
    if-eq v0, p2, :L2
    return-wide v2
  :L0
    if-nez p2, :L1
  .line 4
    instance-of v0, v0, Lc/e/b/k/m/l;
    if-nez v0, :L2
    return-wide v2
  :L1
  .line 5
    instance-of v0, v0, Lc/e/b/k/m/n;
    if-nez v0, :L2
    return-wide v2
  :L2
    if-nez p2, :L3
  .line 6
    iget-object v0, p1, Lc/e/b/k/e;->d:Lc/e/b/k/m/l;
    goto :L4
  :L3
    iget-object v0, p1, Lc/e/b/k/e;->e:Lc/e/b/k/m/n;
  :L4
    iget-object v0, v0, Lc/e/b/k/m/p;->h:Lc/e/b/k/m/f;
    if-nez p2, :L5
  .line 7
    iget-object p1, p1, Lc/e/b/k/e;->d:Lc/e/b/k/m/l;
    goto :L6
  :L5
    iget-object p1, p1, Lc/e/b/k/e;->e:Lc/e/b/k/m/n;
  :L6
    iget-object p1, p1, Lc/e/b/k/m/p;->i:Lc/e/b/k/m/f;
  .line 8
    iget-object v1, p0, Lc/e/b/k/m/m;->b:Lc/e/b/k/m/p;
    iget-object v1, v1, Lc/e/b/k/m/p;->h:Lc/e/b/k/m/f;
    iget-object v1, v1, Lc/e/b/k/m/f;->l:Ljava/util/List;
    invoke-interface { v1, v0 }, Ljava/util/List;->contains(Ljava/lang/Object;)Z
    move-result v0
  .line 9
    iget-object v1, p0, Lc/e/b/k/m/m;->b:Lc/e/b/k/m/p;
    iget-object v1, v1, Lc/e/b/k/m/p;->i:Lc/e/b/k/m/f;
    iget-object v1, v1, Lc/e/b/k/m/f;->l:Ljava/util/List;
    invoke-interface { v1, p1 }, Ljava/util/List;->contains(Ljava/lang/Object;)Z
    move-result p1
  .line 10
    iget-object v1, p0, Lc/e/b/k/m/m;->b:Lc/e/b/k/m/p;
    invoke-virtual { v1 }, Lc/e/b/k/m/p;->j()J
    move-result-wide v4
    if-eqz v0, :L10
    if-eqz p1, :L10
  .line 11
    iget-object p1, p0, Lc/e/b/k/m/m;->b:Lc/e/b/k/m/p;
    iget-object p1, p1, Lc/e/b/k/m/p;->h:Lc/e/b/k/m/f;
    invoke-direct { p0, p1, v2, v3 }, Lc/e/b/k/m/m;->d(Lc/e/b/k/m/f;J)J
    move-result-wide v0
  .line 12
    iget-object p1, p0, Lc/e/b/k/m/m;->b:Lc/e/b/k/m/p;
    iget-object p1, p1, Lc/e/b/k/m/p;->i:Lc/e/b/k/m/f;
    invoke-direct { p0, p1, v2, v3 }, Lc/e/b/k/m/m;->c(Lc/e/b/k/m/f;J)J
    move-result-wide v6
    sub-long/2addr v0, v4
  .line 13
    iget-object p1, p0, Lc/e/b/k/m/m;->b:Lc/e/b/k/m/p;
    iget-object p1, p1, Lc/e/b/k/m/p;->i:Lc/e/b/k/m/f;
    iget p1, p1, Lc/e/b/k/m/f;->f:I
    neg-int v8, p1
    int-to-long v8, v8
    cmp-long v10, v0, v8
    if-ltz v10, :L7
    int-to-long v8, p1
    add-long/2addr v0, v8
  :L7
    neg-long v6, v6
    sub-long/2addr v6, v4
  .line 14
    iget-object p1, p0, Lc/e/b/k/m/m;->b:Lc/e/b/k/m/p;
    iget-object p1, p1, Lc/e/b/k/m/p;->h:Lc/e/b/k/m/f;
    iget p1, p1, Lc/e/b/k/m/f;->f:I
    int-to-long v8, p1
    sub-long/2addr v6, v8
    int-to-long v8, p1
    cmp-long v10, v6, v8
    if-ltz v10, :L8
    int-to-long v8, p1
    sub-long/2addr v6, v8
  :L8
  .line 15
    iget-object p1, p0, Lc/e/b/k/m/m;->b:Lc/e/b/k/m/p;
    iget-object p1, p1, Lc/e/b/k/m/p;->b:Lc/e/b/k/e;
    invoke-virtual { p1, p2 }, Lc/e/b/k/e;->o(I)F
    move-result p1
    const/4 p2, 0
    const/high16 v8, 16256
    cmpl-float p2, p1, p2
    if-lez p2, :L9
    long-to-float p2, v6
    div-float/2addr p2, p1
    long-to-float v0, v0
    sub-float v1, v8, p1
    div-float/2addr v0, v1
    add-float/2addr p2, v0
    float-to-long v2, p2
  :L9
    long-to-float p2, v2
    mul-float v0, p2, p1
    const/high16 v1, 16128
    add-float/2addr v0, v1
    float-to-long v2, v0
    sub-float/2addr v8, p1
    mul-float p2, p2, v8
    add-float/2addr p2, v1
    float-to-long p1, p2
    add-long/2addr v2, v4
    add-long/2addr v2, p1
  .line 16
    iget-object p1, p0, Lc/e/b/k/m/m;->b:Lc/e/b/k/m/p;
    iget-object p2, p1, Lc/e/b/k/m/p;->h:Lc/e/b/k/m/f;
    iget p2, p2, Lc/e/b/k/m/f;->f:I
    int-to-long v0, p2
    add-long/2addr v0, v2
    iget-object p1, p1, Lc/e/b/k/m/p;->i:Lc/e/b/k/m/f;
    iget p1, p1, Lc/e/b/k/m/f;->f:I
    goto :L13
  :L10
    if-eqz v0, :L11
  .line 17
    iget-object p1, p0, Lc/e/b/k/m/m;->b:Lc/e/b/k/m/p;
    iget-object p1, p1, Lc/e/b/k/m/p;->h:Lc/e/b/k/m/f;
    iget p2, p1, Lc/e/b/k/m/f;->f:I
    int-to-long v0, p2
    invoke-direct { p0, p1, v0, v1 }, Lc/e/b/k/m/m;->d(Lc/e/b/k/m/f;J)J
    move-result-wide p1
  .line 18
    iget-object v0, p0, Lc/e/b/k/m/m;->b:Lc/e/b/k/m/p;
    iget-object v0, v0, Lc/e/b/k/m/p;->h:Lc/e/b/k/m/f;
    iget v0, v0, Lc/e/b/k/m/f;->f:I
    int-to-long v0, v0
    add-long/2addr v0, v4
  .line 19
    invoke-static { p1, p2, v0, v1 }, Ljava/lang/Math;->max(JJ)J
    move-result-wide v0
    goto :L14
  :L11
    if-eqz p1, :L12
  .line 20
    iget-object p1, p0, Lc/e/b/k/m/m;->b:Lc/e/b/k/m/p;
    iget-object p1, p1, Lc/e/b/k/m/p;->i:Lc/e/b/k/m/f;
    iget p2, p1, Lc/e/b/k/m/f;->f:I
    int-to-long v0, p2
    invoke-direct { p0, p1, v0, v1 }, Lc/e/b/k/m/m;->c(Lc/e/b/k/m/f;J)J
    move-result-wide p1
  .line 21
    iget-object v0, p0, Lc/e/b/k/m/m;->b:Lc/e/b/k/m/p;
    iget-object v0, v0, Lc/e/b/k/m/p;->i:Lc/e/b/k/m/f;
    iget v0, v0, Lc/e/b/k/m/f;->f:I
    neg-int v0, v0
    int-to-long v0, v0
    add-long/2addr v0, v4
    neg-long p1, p1
  .line 22
    invoke-static { p1, p2, v0, v1 }, Ljava/lang/Math;->max(JJ)J
    move-result-wide v0
    goto :L14
  :L12
  .line 23
    iget-object p1, p0, Lc/e/b/k/m/m;->b:Lc/e/b/k/m/p;
    iget-object p2, p1, Lc/e/b/k/m/p;->h:Lc/e/b/k/m/f;
    iget p2, p2, Lc/e/b/k/m/f;->f:I
    int-to-long v0, p2
    invoke-virtual { p1 }, Lc/e/b/k/m/p;->j()J
    move-result-wide p1
    add-long/2addr v0, p1
    iget-object p1, p0, Lc/e/b/k/m/m;->b:Lc/e/b/k/m/p;
    iget-object p1, p1, Lc/e/b/k/m/p;->i:Lc/e/b/k/m/f;
    iget p1, p1, Lc/e/b/k/m/f;->f:I
  :L13
    int-to-long p1, p1
    sub-long/2addr v0, p1
  :L14
    return-wide v0
.end method
