.class Landroidx/recyclerview/widget/a;
.super Ljava/lang/Object;
.implements Landroidx/recyclerview/widget/h$a;
.source "SourceFile"

.annotation system Ldalvik/annotation/MemberClasses;
  value = {
    Landroidx/recyclerview/widget/a$a;,
    Landroidx/recyclerview/widget/a$b;
  }
.end annotation

.field private a:Lc/g/j/e;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "Lc/g/j/e<",
      "Landroidx/recyclerview/widget/a$b;",
      ">;"
    }
  .end annotation
.end field

.field final b:Ljava/util/ArrayList;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "Ljava/util/ArrayList<",
      "Landroidx/recyclerview/widget/a$b;",
      ">;"
    }
  .end annotation
.end field

.field final c:Ljava/util/ArrayList;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "Ljava/util/ArrayList<",
      "Landroidx/recyclerview/widget/a$b;",
      ">;"
    }
  .end annotation
.end field

.field final d:Landroidx/recyclerview/widget/a$a;

.field e:Ljava/lang/Runnable;

.field final f:Z

.field final g:Landroidx/recyclerview/widget/h;

.field private h:I

.method constructor <init>(Landroidx/recyclerview/widget/a$a;)V
  .registers 3
    const/4 v0, 0
  .line 1
    invoke-direct { p0, p1, v0 }, Landroidx/recyclerview/widget/a;-><init>(Landroidx/recyclerview/widget/a$a;Z)V
    return-void
.end method

.method constructor <init>(Landroidx/recyclerview/widget/a$a;Z)V
  .registers 5
  .line 2
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
  .line 3
    new-instance v0, Lc/g/j/f;
    const/16 v1, 30
    invoke-direct { v0, v1 }, Lc/g/j/f;-><init>(I)V
    iput-object v0, p0, Landroidx/recyclerview/widget/a;->a:Lc/g/j/e;
  .line 4
    new-instance v0, Ljava/util/ArrayList;
    invoke-direct { v0 }, Ljava/util/ArrayList;-><init>()V
    iput-object v0, p0, Landroidx/recyclerview/widget/a;->b:Ljava/util/ArrayList;
  .line 5
    new-instance v0, Ljava/util/ArrayList;
    invoke-direct { v0 }, Ljava/util/ArrayList;-><init>()V
    iput-object v0, p0, Landroidx/recyclerview/widget/a;->c:Ljava/util/ArrayList;
    const/4 v0, 0
  .line 6
    iput v0, p0, Landroidx/recyclerview/widget/a;->h:I
  .line 7
    iput-object p1, p0, Landroidx/recyclerview/widget/a;->d:Landroidx/recyclerview/widget/a$a;
  .line 8
    iput-boolean p2, p0, Landroidx/recyclerview/widget/a;->f:Z
  .line 9
    new-instance p1, Landroidx/recyclerview/widget/h;
    invoke-direct { p1, p0 }, Landroidx/recyclerview/widget/h;-><init>(Landroidx/recyclerview/widget/h$a;)V
    iput-object p1, p0, Landroidx/recyclerview/widget/a;->g:Landroidx/recyclerview/widget/h;
    return-void
.end method

.method private c(Landroidx/recyclerview/widget/a$b;)V
  .registers 2
  .line 1
    invoke-direct { p0, p1 }, Landroidx/recyclerview/widget/a;->r(Landroidx/recyclerview/widget/a$b;)V
    return-void
.end method

.method private d(Landroidx/recyclerview/widget/a$b;)V
  .registers 2
  .line 1
    invoke-direct { p0, p1 }, Landroidx/recyclerview/widget/a;->r(Landroidx/recyclerview/widget/a$b;)V
    return-void
.end method

.method private f(Landroidx/recyclerview/widget/a$b;)V
  .registers 12
  .line 1
    iget v0, p1, Landroidx/recyclerview/widget/a$b;->b:I
  .line 2
    iget v1, p1, Landroidx/recyclerview/widget/a$b;->d:I
    add-int/2addr v1, v0
    const/4 v2, 0
    const/4 v3, -1
    move v4, v0
    const/4 v5, 0
  :L0
    const/4 v6, 0
    const/4 v7, 2
    if-ge v4, v1, :L10
  .line 3
    iget-object v8, p0, Landroidx/recyclerview/widget/a;->d:Landroidx/recyclerview/widget/a$a;
    invoke-interface { v8, v4 }, Landroidx/recyclerview/widget/a$a;->c(I)Landroidx/recyclerview/widget/RecyclerView$c0;
    move-result-object v8
    const/4 v9, 1
    if-nez v8, :L4
  .line 4
    invoke-direct { p0, v4 }, Landroidx/recyclerview/widget/a;->h(I)Z
    move-result v8
    if-eqz v8, :L1
    goto :L4
  :L1
    if-ne v3, v9, :L2
  .line 5
    invoke-virtual { p0, v7, v0, v5, v6 }, Landroidx/recyclerview/widget/a;->b(IIILjava/lang/Object;)Landroidx/recyclerview/widget/a$b;
    move-result-object v3
  .line 6
    invoke-direct { p0, v3 }, Landroidx/recyclerview/widget/a;->r(Landroidx/recyclerview/widget/a$b;)V
    const/4 v3, 1
    goto :L3
  :L2
    const/4 v3, 0
  :L3
    const/4 v6, 0
    goto :L7
  :L4
    if-nez v3, :L5
  .line 7
    invoke-virtual { p0, v7, v0, v5, v6 }, Landroidx/recyclerview/widget/a;->b(IIILjava/lang/Object;)Landroidx/recyclerview/widget/a$b;
    move-result-object v3
  .line 8
    invoke-direct { p0, v3 }, Landroidx/recyclerview/widget/a;->k(Landroidx/recyclerview/widget/a$b;)V
    const/4 v3, 1
    goto :L6
  :L5
    const/4 v3, 0
  :L6
    const/4 v6, 1
  :L7
    if-eqz v3, :L8
    sub-int/2addr v4, v5
    sub-int/2addr v1, v5
    const/4 v5, 1
    goto :L9
  :L8
    add-int/lit8 v5, v5, 1
  :L9
    add-int/2addr v4, v9
    move v3, v6
    goto :L0
  :L10
  .line 9
    iget v1, p1, Landroidx/recyclerview/widget/a$b;->d:I
    if-eq v5, v1, :L11
  .line 10
    invoke-virtual { p0, p1 }, Landroidx/recyclerview/widget/a;->a(Landroidx/recyclerview/widget/a$b;)V
  .line 11
    invoke-virtual { p0, v7, v0, v5, v6 }, Landroidx/recyclerview/widget/a;->b(IIILjava/lang/Object;)Landroidx/recyclerview/widget/a$b;
    move-result-object p1
  :L11
    if-nez v3, :L12
  .line 12
    invoke-direct { p0, p1 }, Landroidx/recyclerview/widget/a;->k(Landroidx/recyclerview/widget/a$b;)V
    goto :L13
  :L12
  .line 13
    invoke-direct { p0, p1 }, Landroidx/recyclerview/widget/a;->r(Landroidx/recyclerview/widget/a$b;)V
  :L13
    return-void
.end method

.method private g(Landroidx/recyclerview/widget/a$b;)V
  .registers 11
  .line 1
    iget v0, p1, Landroidx/recyclerview/widget/a$b;->b:I
  .line 2
    iget v1, p1, Landroidx/recyclerview/widget/a$b;->d:I
    add-int/2addr v1, v0
    const/4 v2, 0
    const/4 v3, -1
    move v3, v0
    const/4 v4, -1
    const/4 v5, 0
  :L0
    const/4 v6, 4
    if-ge v0, v1, :L6
  .line 3
    iget-object v7, p0, Landroidx/recyclerview/widget/a;->d:Landroidx/recyclerview/widget/a$a;
    invoke-interface { v7, v0 }, Landroidx/recyclerview/widget/a$a;->c(I)Landroidx/recyclerview/widget/RecyclerView$c0;
    move-result-object v7
    const/4 v8, 1
    if-nez v7, :L3
  .line 4
    invoke-direct { p0, v0 }, Landroidx/recyclerview/widget/a;->h(I)Z
    move-result v7
    if-eqz v7, :L1
    goto :L3
  :L1
    if-ne v4, v8, :L2
  .line 5
    iget-object v4, p1, Landroidx/recyclerview/widget/a$b;->c:Ljava/lang/Object;
    invoke-virtual { p0, v6, v3, v5, v4 }, Landroidx/recyclerview/widget/a;->b(IIILjava/lang/Object;)Landroidx/recyclerview/widget/a$b;
    move-result-object v3
  .line 6
    invoke-direct { p0, v3 }, Landroidx/recyclerview/widget/a;->r(Landroidx/recyclerview/widget/a$b;)V
    move v3, v0
    const/4 v5, 0
  :L2
    const/4 v4, 0
    goto :L5
  :L3
    if-nez v4, :L4
  .line 7
    iget-object v4, p1, Landroidx/recyclerview/widget/a$b;->c:Ljava/lang/Object;
    invoke-virtual { p0, v6, v3, v5, v4 }, Landroidx/recyclerview/widget/a;->b(IIILjava/lang/Object;)Landroidx/recyclerview/widget/a$b;
    move-result-object v3
  .line 8
    invoke-direct { p0, v3 }, Landroidx/recyclerview/widget/a;->k(Landroidx/recyclerview/widget/a$b;)V
    move v3, v0
    const/4 v5, 0
  :L4
    const/4 v4, 1
  :L5
    add-int/2addr v5, v8
    add-int/lit8 v0, v0, 1
    goto :L0
  :L6
  .line 9
    iget v0, p1, Landroidx/recyclerview/widget/a$b;->d:I
    if-eq v5, v0, :L7
  .line 10
    iget-object v0, p1, Landroidx/recyclerview/widget/a$b;->c:Ljava/lang/Object;
  .line 11
    invoke-virtual { p0, p1 }, Landroidx/recyclerview/widget/a;->a(Landroidx/recyclerview/widget/a$b;)V
  .line 12
    invoke-virtual { p0, v6, v3, v5, v0 }, Landroidx/recyclerview/widget/a;->b(IIILjava/lang/Object;)Landroidx/recyclerview/widget/a$b;
    move-result-object p1
  :L7
    if-nez v4, :L8
  .line 13
    invoke-direct { p0, p1 }, Landroidx/recyclerview/widget/a;->k(Landroidx/recyclerview/widget/a$b;)V
    goto :L9
  :L8
  .line 14
    invoke-direct { p0, p1 }, Landroidx/recyclerview/widget/a;->r(Landroidx/recyclerview/widget/a$b;)V
  :L9
    return-void
.end method

.method private h(I)Z
  .registers 9
  .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/a;->c:Ljava/util/ArrayList;
    invoke-virtual { v0 }, Ljava/util/ArrayList;->size()I
    move-result v0
    const/4 v1, 0
    const/4 v2, 0
  :L0
    if-ge v2, v0, :L5
  .line 2
    iget-object v3, p0, Landroidx/recyclerview/widget/a;->c:Ljava/util/ArrayList;
    invoke-virtual { v3, v2 }, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
    move-result-object v3
    check-cast v3, Landroidx/recyclerview/widget/a$b;
  .line 3
    iget v4, v3, Landroidx/recyclerview/widget/a$b;->a:I
    const/16 v5, 8
    const/4 v6, 1
    if-ne v4, v5, :L1
  .line 4
    iget v3, v3, Landroidx/recyclerview/widget/a$b;->d:I
    add-int/lit8 v4, v2, 1
    invoke-virtual { p0, v3, v4 }, Landroidx/recyclerview/widget/a;->n(II)I
    move-result v3
    if-ne v3, p1, :L4
    return v6
  :L1
    if-ne v4, v6, :L4
  .line 5
    iget v4, v3, Landroidx/recyclerview/widget/a$b;->b:I
    iget v3, v3, Landroidx/recyclerview/widget/a$b;->d:I
    add-int/2addr v3, v4
  :L2
    if-ge v4, v3, :L4
    add-int/lit8 v5, v2, 1
  .line 6
    invoke-virtual { p0, v4, v5 }, Landroidx/recyclerview/widget/a;->n(II)I
    move-result v5
    if-ne v5, p1, :L3
    return v6
  :L3
    add-int/lit8 v4, v4, 1
    goto :L2
  :L4
    add-int/lit8 v2, v2, 1
    goto :L0
  :L5
    return v1
.end method

.method private k(Landroidx/recyclerview/widget/a$b;)V
  .registers 14
  .line 1
    iget v0, p1, Landroidx/recyclerview/widget/a$b;->a:I
    const/4 v1, 1
    if-eq v0, v1, :L14
    const/16 v2, 8
    if-eq v0, v2, :L14
  .line 2
    iget v2, p1, Landroidx/recyclerview/widget/a$b;->b:I
    invoke-direct { p0, v2, v0 }, Landroidx/recyclerview/widget/a;->v(II)I
    move-result v0
  .line 3
    iget v2, p1, Landroidx/recyclerview/widget/a$b;->b:I
  .line 4
    iget v3, p1, Landroidx/recyclerview/widget/a$b;->a:I
    const/4 v4, 2
    const/4 v5, 4
    const/4 v6, 0
    if-eq v3, v4, :L1
    if-ne v3, v5, :L0
    const/4 v3, 1
    goto :L2
  :L0
  .line 5
    new-instance v0, Ljava/lang/IllegalArgumentException;
    new-instance v1, Ljava/lang/StringBuilder;
    invoke-direct { v1 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v2, "op should be remove or update."
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v1, p1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    invoke-virtual { v1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p1
    invoke-direct { v0, p1 }, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
    throw v0
  :L1
    const/4 v3, 0
  :L2
    const/4 v7, 1
    const/4 v8, 1
  :L3
  .line 6
    iget v9, p1, Landroidx/recyclerview/widget/a$b;->d:I
    if-ge v7, v9, :L12
  .line 7
    iget v9, p1, Landroidx/recyclerview/widget/a$b;->b:I
    mul-int v10, v3, v7
    add-int/2addr v9, v10
  .line 8
    iget v10, p1, Landroidx/recyclerview/widget/a$b;->a:I
    invoke-direct { p0, v9, v10 }, Landroidx/recyclerview/widget/a;->v(II)I
    move-result v9
  .line 9
    iget v10, p1, Landroidx/recyclerview/widget/a$b;->a:I
    if-eq v10, v4, :L7
    if-eq v10, v5, :L5
  :L4
    const/4 v10, 0
    goto :L8
  :L5
    add-int/lit8 v10, v0, 1
    if-ne v9, v10, :L4
  :L6
    const/4 v10, 1
    goto :L8
  :L7
    if-ne v9, v0, :L4
    goto :L6
  :L8
    if-eqz v10, :L9
    add-int/lit8 v8, v8, 1
    goto :L11
  :L9
  .line 10
    iget v10, p1, Landroidx/recyclerview/widget/a$b;->a:I
    iget-object v11, p1, Landroidx/recyclerview/widget/a$b;->c:Ljava/lang/Object;
    invoke-virtual { p0, v10, v0, v8, v11 }, Landroidx/recyclerview/widget/a;->b(IIILjava/lang/Object;)Landroidx/recyclerview/widget/a$b;
    move-result-object v0
  .line 11
    invoke-virtual { p0, v0, v2 }, Landroidx/recyclerview/widget/a;->l(Landroidx/recyclerview/widget/a$b;I)V
  .line 12
    invoke-virtual { p0, v0 }, Landroidx/recyclerview/widget/a;->a(Landroidx/recyclerview/widget/a$b;)V
  .line 13
    iget v0, p1, Landroidx/recyclerview/widget/a$b;->a:I
    if-ne v0, v5, :L10
    add-int/2addr v2, v8
  :L10
    move v0, v9
    const/4 v8, 1
  :L11
    add-int/lit8 v7, v7, 1
    goto :L3
  :L12
  .line 14
    iget-object v1, p1, Landroidx/recyclerview/widget/a$b;->c:Ljava/lang/Object;
  .line 15
    invoke-virtual { p0, p1 }, Landroidx/recyclerview/widget/a;->a(Landroidx/recyclerview/widget/a$b;)V
    if-lez v8, :L13
  .line 16
    iget p1, p1, Landroidx/recyclerview/widget/a$b;->a:I
    invoke-virtual { p0, p1, v0, v8, v1 }, Landroidx/recyclerview/widget/a;->b(IIILjava/lang/Object;)Landroidx/recyclerview/widget/a$b;
    move-result-object p1
  .line 17
    invoke-virtual { p0, p1, v2 }, Landroidx/recyclerview/widget/a;->l(Landroidx/recyclerview/widget/a$b;I)V
  .line 18
    invoke-virtual { p0, p1 }, Landroidx/recyclerview/widget/a;->a(Landroidx/recyclerview/widget/a$b;)V
  :L13
    return-void
  :L14
  .line 19
    new-instance p1, Ljava/lang/IllegalArgumentException;
    const-string v0, "should not dispatch add or move for pre layout"
    invoke-direct { p1, v0 }, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
    goto :L16
  :L15
    throw p1
  :L16
    goto :L15
.end method

.method private r(Landroidx/recyclerview/widget/a$b;)V
  .registers 5
  .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/a;->c:Ljava/util/ArrayList;
    invoke-virtual { v0, p1 }, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
  .line 2
    iget v0, p1, Landroidx/recyclerview/widget/a$b;->a:I
    const/4 v1, 1
    if-eq v0, v1, :L3
    const/4 v1, 2
    if-eq v0, v1, :L2
    const/4 v1, 4
    if-eq v0, v1, :L1
    const/16 v1, 8
    if-ne v0, v1, :L0
  .line 3
    iget-object v0, p0, Landroidx/recyclerview/widget/a;->d:Landroidx/recyclerview/widget/a$a;
    iget v1, p1, Landroidx/recyclerview/widget/a$b;->b:I
    iget p1, p1, Landroidx/recyclerview/widget/a$b;->d:I
    invoke-interface { v0, v1, p1 }, Landroidx/recyclerview/widget/a$a;->a(II)V
    goto :L4
  :L0
  .line 4
    new-instance v0, Ljava/lang/IllegalArgumentException;
    new-instance v1, Ljava/lang/StringBuilder;
    invoke-direct { v1 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v2, "Unknown update op type for "
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v1, p1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    invoke-virtual { v1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p1
    invoke-direct { v0, p1 }, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
    throw v0
  :L1
  .line 5
    iget-object v0, p0, Landroidx/recyclerview/widget/a;->d:Landroidx/recyclerview/widget/a$a;
    iget v1, p1, Landroidx/recyclerview/widget/a$b;->b:I
    iget v2, p1, Landroidx/recyclerview/widget/a$b;->d:I
    iget-object p1, p1, Landroidx/recyclerview/widget/a$b;->c:Ljava/lang/Object;
    invoke-interface { v0, v1, v2, p1 }, Landroidx/recyclerview/widget/a$a;->h(IILjava/lang/Object;)V
    goto :L4
  :L2
  .line 6
    iget-object v0, p0, Landroidx/recyclerview/widget/a;->d:Landroidx/recyclerview/widget/a$a;
    iget v1, p1, Landroidx/recyclerview/widget/a$b;->b:I
    iget p1, p1, Landroidx/recyclerview/widget/a$b;->d:I
    invoke-interface { v0, v1, p1 }, Landroidx/recyclerview/widget/a$a;->e(II)V
    goto :L4
  :L3
  .line 7
    iget-object v0, p0, Landroidx/recyclerview/widget/a;->d:Landroidx/recyclerview/widget/a$a;
    iget v1, p1, Landroidx/recyclerview/widget/a$b;->b:I
    iget p1, p1, Landroidx/recyclerview/widget/a$b;->d:I
    invoke-interface { v0, v1, p1 }, Landroidx/recyclerview/widget/a$a;->g(II)V
  :L4
    return-void
.end method

.method private v(II)I
  .registers 10
  .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/a;->c:Ljava/util/ArrayList;
    invoke-virtual { v0 }, Ljava/util/ArrayList;->size()I
    move-result v0
    const/4 v1, 1
    sub-int/2addr v0, v1
  :L0
    const/16 v2, 8
    if-ltz v0, :L15
  .line 2
    iget-object v3, p0, Landroidx/recyclerview/widget/a;->c:Ljava/util/ArrayList;
    invoke-virtual { v3, v0 }, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
    move-result-object v3
    check-cast v3, Landroidx/recyclerview/widget/a$b;
  .line 3
    iget v4, v3, Landroidx/recyclerview/widget/a$b;->a:I
    const/4 v5, 2
    if-ne v4, v2, :L10
  .line 4
    iget v2, v3, Landroidx/recyclerview/widget/a$b;->b:I
    iget v4, v3, Landroidx/recyclerview/widget/a$b;->d:I
    if-ge v2, v4, :L1
    goto :L2
  :L1
    move v6, v4
    move v4, v2
    move v2, v6
  :L2
    if-lt p1, v2, :L8
    if-gt p1, v4, :L8
  .line 5
    iget v4, v3, Landroidx/recyclerview/widget/a$b;->b:I
    if-ne v2, v4, :L5
    if-ne p2, v1, :L3
  .line 6
    iget v2, v3, Landroidx/recyclerview/widget/a$b;->d:I
    add-int/2addr v2, v1
    iput v2, v3, Landroidx/recyclerview/widget/a$b;->d:I
    goto :L4
  :L3
    if-ne p2, v5, :L4
  .line 7
    iget v2, v3, Landroidx/recyclerview/widget/a$b;->d:I
    sub-int/2addr v2, v1
    iput v2, v3, Landroidx/recyclerview/widget/a$b;->d:I
  :L4
    add-int/lit8 p1, p1, 1
    goto :L14
  :L5
    if-ne p2, v1, :L6
    add-int/lit8 v4, v4, 1
  .line 8
    iput v4, v3, Landroidx/recyclerview/widget/a$b;->b:I
    goto :L7
  :L6
    if-ne p2, v5, :L7
    add-int/lit8 v4, v4, -1
  .line 9
    iput v4, v3, Landroidx/recyclerview/widget/a$b;->b:I
  :L7
    add-int/lit8 p1, p1, -1
    goto :L14
  :L8
  .line 10
    iget v2, v3, Landroidx/recyclerview/widget/a$b;->b:I
    if-ge p1, v2, :L14
    if-ne p2, v1, :L9
    add-int/lit8 v2, v2, 1
  .line 11
    iput v2, v3, Landroidx/recyclerview/widget/a$b;->b:I
  .line 12
    iget v2, v3, Landroidx/recyclerview/widget/a$b;->d:I
    add-int/2addr v2, v1
    iput v2, v3, Landroidx/recyclerview/widget/a$b;->d:I
    goto :L14
  :L9
    if-ne p2, v5, :L14
    add-int/lit8 v2, v2, -1
  .line 13
    iput v2, v3, Landroidx/recyclerview/widget/a$b;->b:I
  .line 14
    iget v2, v3, Landroidx/recyclerview/widget/a$b;->d:I
    sub-int/2addr v2, v1
    iput v2, v3, Landroidx/recyclerview/widget/a$b;->d:I
    goto :L14
  :L10
  .line 15
    iget v2, v3, Landroidx/recyclerview/widget/a$b;->b:I
    if-gt v2, p1, :L12
    if-ne v4, v1, :L11
  .line 16
    iget v2, v3, Landroidx/recyclerview/widget/a$b;->d:I
    sub-int/2addr p1, v2
    goto :L14
  :L11
    if-ne v4, v5, :L14
  .line 17
    iget v2, v3, Landroidx/recyclerview/widget/a$b;->d:I
    add-int/2addr p1, v2
    goto :L14
  :L12
    if-ne p2, v1, :L13
    add-int/lit8 v2, v2, 1
  .line 18
    iput v2, v3, Landroidx/recyclerview/widget/a$b;->b:I
    goto :L14
  :L13
    if-ne p2, v5, :L14
    add-int/lit8 v2, v2, -1
  .line 19
    iput v2, v3, Landroidx/recyclerview/widget/a$b;->b:I
  :L14
    add-int/lit8 v0, v0, -1
    goto/16 :L0
  :L15
  .line 20
    iget-object p2, p0, Landroidx/recyclerview/widget/a;->c:Ljava/util/ArrayList;
    invoke-virtual { p2 }, Ljava/util/ArrayList;->size()I
    move-result p2
    sub-int/2addr p2, v1
  :L16
    if-ltz p2, :L20
  .line 21
    iget-object v0, p0, Landroidx/recyclerview/widget/a;->c:Ljava/util/ArrayList;
    invoke-virtual { v0, p2 }, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Landroidx/recyclerview/widget/a$b;
  .line 22
    iget v1, v0, Landroidx/recyclerview/widget/a$b;->a:I
    if-ne v1, v2, :L18
  .line 23
    iget v1, v0, Landroidx/recyclerview/widget/a$b;->d:I
    iget v3, v0, Landroidx/recyclerview/widget/a$b;->b:I
    if-eq v1, v3, :L17
    if-gez v1, :L19
  :L17
  .line 24
    iget-object v1, p0, Landroidx/recyclerview/widget/a;->c:Ljava/util/ArrayList;
    invoke-virtual { v1, p2 }, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
  .line 25
    invoke-virtual { p0, v0 }, Landroidx/recyclerview/widget/a;->a(Landroidx/recyclerview/widget/a$b;)V
    goto :L19
  :L18
  .line 26
    iget v1, v0, Landroidx/recyclerview/widget/a$b;->d:I
    if-gtz v1, :L19
  .line 27
    iget-object v1, p0, Landroidx/recyclerview/widget/a;->c:Ljava/util/ArrayList;
    invoke-virtual { v1, p2 }, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
  .line 28
    invoke-virtual { p0, v0 }, Landroidx/recyclerview/widget/a;->a(Landroidx/recyclerview/widget/a$b;)V
  :L19
    add-int/lit8 p2, p2, -1
    goto :L16
  :L20
    return p1
.end method

.method public a(Landroidx/recyclerview/widget/a$b;)V
  .registers 3
  .line 1
    iget-boolean v0, p0, Landroidx/recyclerview/widget/a;->f:Z
    if-nez v0, :L0
    const/4 v0, 0
  .line 2
    iput-object v0, p1, Landroidx/recyclerview/widget/a$b;->c:Ljava/lang/Object;
  .line 3
    iget-object v0, p0, Landroidx/recyclerview/widget/a;->a:Lc/g/j/e;
    invoke-interface { v0, p1 }, Lc/g/j/e;->a(Ljava/lang/Object;)Z
  :L0
    return-void
.end method

.method public b(IIILjava/lang/Object;)Landroidx/recyclerview/widget/a$b;
  .registers 6
  .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/a;->a:Lc/g/j/e;
    invoke-interface { v0 }, Lc/g/j/e;->b()Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Landroidx/recyclerview/widget/a$b;
    if-nez v0, :L0
  .line 2
    new-instance v0, Landroidx/recyclerview/widget/a$b;
    invoke-direct { v0, p1, p2, p3, p4 }, Landroidx/recyclerview/widget/a$b;-><init>(IIILjava/lang/Object;)V
    goto :L1
  :L0
  .line 3
    iput p1, v0, Landroidx/recyclerview/widget/a$b;->a:I
  .line 4
    iput p2, v0, Landroidx/recyclerview/widget/a$b;->b:I
  .line 5
    iput p3, v0, Landroidx/recyclerview/widget/a$b;->d:I
  .line 6
    iput-object p4, v0, Landroidx/recyclerview/widget/a$b;->c:Ljava/lang/Object;
  :L1
    return-object v0
.end method

.method public e(I)I
  .registers 7
  .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/a;->b:Ljava/util/ArrayList;
    invoke-virtual { v0 }, Ljava/util/ArrayList;->size()I
    move-result v0
    const/4 v1, 0
  :L0
    if-ge v1, v0, :L8
  .line 2
    iget-object v2, p0, Landroidx/recyclerview/widget/a;->b:Ljava/util/ArrayList;
    invoke-virtual { v2, v1 }, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
    move-result-object v2
    check-cast v2, Landroidx/recyclerview/widget/a$b;
  .line 3
    iget v3, v2, Landroidx/recyclerview/widget/a$b;->a:I
    const/4 v4, 1
    if-eq v3, v4, :L6
    const/4 v4, 2
    if-eq v3, v4, :L4
    const/16 v4, 8
    if-eq v3, v4, :L1
    goto :L7
  :L1
  .line 4
    iget v3, v2, Landroidx/recyclerview/widget/a$b;->b:I
    if-ne v3, p1, :L2
  .line 5
    iget p1, v2, Landroidx/recyclerview/widget/a$b;->d:I
    goto :L7
  :L2
    if-ge v3, p1, :L3
    add-int/lit8 p1, p1, -1
  :L3
  .line 6
    iget v2, v2, Landroidx/recyclerview/widget/a$b;->d:I
    if-gt v2, p1, :L7
    add-int/lit8 p1, p1, 1
    goto :L7
  :L4
  .line 7
    iget v3, v2, Landroidx/recyclerview/widget/a$b;->b:I
    if-gt v3, p1, :L7
  .line 8
    iget v2, v2, Landroidx/recyclerview/widget/a$b;->d:I
    add-int/2addr v3, v2
    if-le v3, p1, :L5
    const/4 p1, -1
    return p1
  :L5
    sub-int/2addr p1, v2
    goto :L7
  :L6
  .line 9
    iget v3, v2, Landroidx/recyclerview/widget/a$b;->b:I
    if-gt v3, p1, :L7
  .line 10
    iget v2, v2, Landroidx/recyclerview/widget/a$b;->d:I
    add-int/2addr p1, v2
  :L7
    add-int/lit8 v1, v1, 1
    goto :L0
  :L8
    return p1
.end method

.method i()V
  .registers 6
  .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/a;->c:Ljava/util/ArrayList;
    invoke-virtual { v0 }, Ljava/util/ArrayList;->size()I
    move-result v0
    const/4 v1, 0
    const/4 v2, 0
  :L0
    if-ge v2, v0, :L1
  .line 2
    iget-object v3, p0, Landroidx/recyclerview/widget/a;->d:Landroidx/recyclerview/widget/a$a;
    iget-object v4, p0, Landroidx/recyclerview/widget/a;->c:Ljava/util/ArrayList;
    invoke-virtual { v4, v2 }, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
    move-result-object v4
    check-cast v4, Landroidx/recyclerview/widget/a$b;
    invoke-interface { v3, v4 }, Landroidx/recyclerview/widget/a$a;->b(Landroidx/recyclerview/widget/a$b;)V
    add-int/lit8 v2, v2, 1
    goto :L0
  :L1
  .line 3
    iget-object v0, p0, Landroidx/recyclerview/widget/a;->c:Ljava/util/ArrayList;
    invoke-virtual { p0, v0 }, Landroidx/recyclerview/widget/a;->t(Ljava/util/List;)V
  .line 4
    iput v1, p0, Landroidx/recyclerview/widget/a;->h:I
    return-void
.end method

.method j()V
  .registers 8
  .line 1
    invoke-virtual { p0 }, Landroidx/recyclerview/widget/a;->i()V
  .line 2
    iget-object v0, p0, Landroidx/recyclerview/widget/a;->b:Ljava/util/ArrayList;
    invoke-virtual { v0 }, Ljava/util/ArrayList;->size()I
    move-result v0
    const/4 v1, 0
    const/4 v2, 0
  :L0
    if-ge v2, v0, :L7
  .line 3
    iget-object v3, p0, Landroidx/recyclerview/widget/a;->b:Ljava/util/ArrayList;
    invoke-virtual { v3, v2 }, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
    move-result-object v3
    check-cast v3, Landroidx/recyclerview/widget/a$b;
  .line 4
    iget v4, v3, Landroidx/recyclerview/widget/a$b;->a:I
    const/4 v5, 1
    if-eq v4, v5, :L4
    const/4 v5, 2
    if-eq v4, v5, :L3
    const/4 v5, 4
    if-eq v4, v5, :L2
    const/16 v5, 8
    if-eq v4, v5, :L1
    goto :L5
  :L1
  .line 5
    iget-object v4, p0, Landroidx/recyclerview/widget/a;->d:Landroidx/recyclerview/widget/a$a;
    invoke-interface { v4, v3 }, Landroidx/recyclerview/widget/a$a;->b(Landroidx/recyclerview/widget/a$b;)V
  .line 6
    iget-object v4, p0, Landroidx/recyclerview/widget/a;->d:Landroidx/recyclerview/widget/a$a;
    iget v5, v3, Landroidx/recyclerview/widget/a$b;->b:I
    iget v3, v3, Landroidx/recyclerview/widget/a$b;->d:I
    invoke-interface { v4, v5, v3 }, Landroidx/recyclerview/widget/a$a;->a(II)V
    goto :L5
  :L2
  .line 7
    iget-object v4, p0, Landroidx/recyclerview/widget/a;->d:Landroidx/recyclerview/widget/a$a;
    invoke-interface { v4, v3 }, Landroidx/recyclerview/widget/a$a;->b(Landroidx/recyclerview/widget/a$b;)V
  .line 8
    iget-object v4, p0, Landroidx/recyclerview/widget/a;->d:Landroidx/recyclerview/widget/a$a;
    iget v5, v3, Landroidx/recyclerview/widget/a$b;->b:I
    iget v6, v3, Landroidx/recyclerview/widget/a$b;->d:I
    iget-object v3, v3, Landroidx/recyclerview/widget/a$b;->c:Ljava/lang/Object;
    invoke-interface { v4, v5, v6, v3 }, Landroidx/recyclerview/widget/a$a;->h(IILjava/lang/Object;)V
    goto :L5
  :L3
  .line 9
    iget-object v4, p0, Landroidx/recyclerview/widget/a;->d:Landroidx/recyclerview/widget/a$a;
    invoke-interface { v4, v3 }, Landroidx/recyclerview/widget/a$a;->b(Landroidx/recyclerview/widget/a$b;)V
  .line 10
    iget-object v4, p0, Landroidx/recyclerview/widget/a;->d:Landroidx/recyclerview/widget/a$a;
    iget v5, v3, Landroidx/recyclerview/widget/a$b;->b:I
    iget v3, v3, Landroidx/recyclerview/widget/a$b;->d:I
    invoke-interface { v4, v5, v3 }, Landroidx/recyclerview/widget/a$a;->d(II)V
    goto :L5
  :L4
  .line 11
    iget-object v4, p0, Landroidx/recyclerview/widget/a;->d:Landroidx/recyclerview/widget/a$a;
    invoke-interface { v4, v3 }, Landroidx/recyclerview/widget/a$a;->b(Landroidx/recyclerview/widget/a$b;)V
  .line 12
    iget-object v4, p0, Landroidx/recyclerview/widget/a;->d:Landroidx/recyclerview/widget/a$a;
    iget v5, v3, Landroidx/recyclerview/widget/a$b;->b:I
    iget v3, v3, Landroidx/recyclerview/widget/a$b;->d:I
    invoke-interface { v4, v5, v3 }, Landroidx/recyclerview/widget/a$a;->g(II)V
  :L5
  .line 13
    iget-object v3, p0, Landroidx/recyclerview/widget/a;->e:Ljava/lang/Runnable;
    if-eqz v3, :L6
  .line 14
    invoke-interface { v3 }, Ljava/lang/Runnable;->run()V
  :L6
    add-int/lit8 v2, v2, 1
    goto :L0
  :L7
  .line 15
    iget-object v0, p0, Landroidx/recyclerview/widget/a;->b:Ljava/util/ArrayList;
    invoke-virtual { p0, v0 }, Landroidx/recyclerview/widget/a;->t(Ljava/util/List;)V
  .line 16
    iput v1, p0, Landroidx/recyclerview/widget/a;->h:I
    return-void
.end method

.method l(Landroidx/recyclerview/widget/a$b;I)V
  .registers 5
  .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/a;->d:Landroidx/recyclerview/widget/a$a;
    invoke-interface { v0, p1 }, Landroidx/recyclerview/widget/a$a;->f(Landroidx/recyclerview/widget/a$b;)V
  .line 2
    iget v0, p1, Landroidx/recyclerview/widget/a$b;->a:I
    const/4 v1, 2
    if-eq v0, v1, :L1
    const/4 v1, 4
    if-ne v0, v1, :L0
  .line 3
    iget-object v0, p0, Landroidx/recyclerview/widget/a;->d:Landroidx/recyclerview/widget/a$a;
    iget v1, p1, Landroidx/recyclerview/widget/a$b;->d:I
    iget-object p1, p1, Landroidx/recyclerview/widget/a$b;->c:Ljava/lang/Object;
    invoke-interface { v0, p2, v1, p1 }, Landroidx/recyclerview/widget/a$a;->h(IILjava/lang/Object;)V
    goto :L2
  :L0
  .line 4
    new-instance p1, Ljava/lang/IllegalArgumentException;
    const-string p2, "only remove and update ops can be dispatched in first pass"
    invoke-direct { p1, p2 }, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
    throw p1
  :L1
  .line 5
    iget-object v0, p0, Landroidx/recyclerview/widget/a;->d:Landroidx/recyclerview/widget/a$a;
    iget p1, p1, Landroidx/recyclerview/widget/a$b;->d:I
    invoke-interface { v0, p2, p1 }, Landroidx/recyclerview/widget/a$a;->d(II)V
  :L2
    return-void
.end method

.method m(I)I
  .registers 3
    const/4 v0, 0
  .line 1
    invoke-virtual { p0, p1, v0 }, Landroidx/recyclerview/widget/a;->n(II)I
    move-result p1
    return p1
.end method

.method n(II)I
  .registers 8
  .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/a;->c:Ljava/util/ArrayList;
    invoke-virtual { v0 }, Ljava/util/ArrayList;->size()I
    move-result v0
  :L0
    if-ge p2, v0, :L7
  .line 2
    iget-object v1, p0, Landroidx/recyclerview/widget/a;->c:Ljava/util/ArrayList;
    invoke-virtual { v1, p2 }, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
    move-result-object v1
    check-cast v1, Landroidx/recyclerview/widget/a$b;
  .line 3
    iget v2, v1, Landroidx/recyclerview/widget/a$b;->a:I
    const/16 v3, 8
    if-ne v2, v3, :L3
  .line 4
    iget v2, v1, Landroidx/recyclerview/widget/a$b;->b:I
    if-ne v2, p1, :L1
  .line 5
    iget p1, v1, Landroidx/recyclerview/widget/a$b;->d:I
    goto :L6
  :L1
    if-ge v2, p1, :L2
    add-int/lit8 p1, p1, -1
  :L2
  .line 6
    iget v1, v1, Landroidx/recyclerview/widget/a$b;->d:I
    if-gt v1, p1, :L6
    add-int/lit8 p1, p1, 1
    goto :L6
  :L3
  .line 7
    iget v3, v1, Landroidx/recyclerview/widget/a$b;->b:I
    if-gt v3, p1, :L6
    const/4 v4, 2
    if-ne v2, v4, :L5
  .line 8
    iget v1, v1, Landroidx/recyclerview/widget/a$b;->d:I
    add-int/2addr v3, v1
    if-ge p1, v3, :L4
    const/4 p1, -1
    return p1
  :L4
    sub-int/2addr p1, v1
    goto :L6
  :L5
    const/4 v3, 1
    if-ne v2, v3, :L6
  .line 9
    iget v1, v1, Landroidx/recyclerview/widget/a$b;->d:I
    add-int/2addr p1, v1
  :L6
    add-int/lit8 p2, p2, 1
    goto :L0
  :L7
    return p1
.end method

.method o(I)Z
  .registers 3
  .line 1
    iget v0, p0, Landroidx/recyclerview/widget/a;->h:I
    and-int/2addr p1, v0
    if-eqz p1, :L0
    const/4 p1, 1
    goto :L1
  :L0
    const/4 p1, 0
  :L1
    return p1
.end method

.method p()Z
  .registers 2
  .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/a;->b:Ljava/util/ArrayList;
    invoke-virtual { v0 }, Ljava/util/ArrayList;->size()I
    move-result v0
    if-lez v0, :L0
    const/4 v0, 1
    goto :L1
  :L0
    const/4 v0, 0
  :L1
    return v0
.end method

.method q()Z
  .registers 2
  .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/a;->c:Ljava/util/ArrayList;
    invoke-virtual { v0 }, Ljava/util/ArrayList;->isEmpty()Z
    move-result v0
    if-nez v0, :L0
    iget-object v0, p0, Landroidx/recyclerview/widget/a;->b:Ljava/util/ArrayList;
    invoke-virtual { v0 }, Ljava/util/ArrayList;->isEmpty()Z
    move-result v0
    if-nez v0, :L0
    const/4 v0, 1
    goto :L1
  :L0
    const/4 v0, 0
  :L1
    return v0
.end method

.method s()V
  .registers 6
  .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/a;->g:Landroidx/recyclerview/widget/h;
    iget-object v1, p0, Landroidx/recyclerview/widget/a;->b:Ljava/util/ArrayList;
    invoke-virtual { v0, v1 }, Landroidx/recyclerview/widget/h;->b(Ljava/util/List;)V
  .line 2
    iget-object v0, p0, Landroidx/recyclerview/widget/a;->b:Ljava/util/ArrayList;
    invoke-virtual { v0 }, Ljava/util/ArrayList;->size()I
    move-result v0
    const/4 v1, 0
  :L0
    if-ge v1, v0, :L7
  .line 3
    iget-object v2, p0, Landroidx/recyclerview/widget/a;->b:Ljava/util/ArrayList;
    invoke-virtual { v2, v1 }, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
    move-result-object v2
    check-cast v2, Landroidx/recyclerview/widget/a$b;
  .line 4
    iget v3, v2, Landroidx/recyclerview/widget/a$b;->a:I
    const/4 v4, 1
    if-eq v3, v4, :L4
    const/4 v4, 2
    if-eq v3, v4, :L3
    const/4 v4, 4
    if-eq v3, v4, :L2
    const/16 v4, 8
    if-eq v3, v4, :L1
    goto :L5
  :L1
  .line 5
    invoke-direct { p0, v2 }, Landroidx/recyclerview/widget/a;->d(Landroidx/recyclerview/widget/a$b;)V
    goto :L5
  :L2
  .line 6
    invoke-direct { p0, v2 }, Landroidx/recyclerview/widget/a;->g(Landroidx/recyclerview/widget/a$b;)V
    goto :L5
  :L3
  .line 7
    invoke-direct { p0, v2 }, Landroidx/recyclerview/widget/a;->f(Landroidx/recyclerview/widget/a$b;)V
    goto :L5
  :L4
  .line 8
    invoke-direct { p0, v2 }, Landroidx/recyclerview/widget/a;->c(Landroidx/recyclerview/widget/a$b;)V
  :L5
  .line 9
    iget-object v2, p0, Landroidx/recyclerview/widget/a;->e:Ljava/lang/Runnable;
    if-eqz v2, :L6
  .line 10
    invoke-interface { v2 }, Ljava/lang/Runnable;->run()V
  :L6
    add-int/lit8 v1, v1, 1
    goto :L0
  :L7
  .line 11
    iget-object v0, p0, Landroidx/recyclerview/widget/a;->b:Ljava/util/ArrayList;
    invoke-virtual { v0 }, Ljava/util/ArrayList;->clear()V
    return-void
.end method

.method t(Ljava/util/List;)V
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(",
      "Ljava/util/List<",
      "Landroidx/recyclerview/widget/a$b;",
      ">;)V"
    }
  .end annotation
  .registers 5
  .line 1
    invoke-interface { p1 }, Ljava/util/List;->size()I
    move-result v0
    const/4 v1, 0
  :L0
    if-ge v1, v0, :L1
  .line 2
    invoke-interface { p1, v1 }, Ljava/util/List;->get(I)Ljava/lang/Object;
    move-result-object v2
    check-cast v2, Landroidx/recyclerview/widget/a$b;
    invoke-virtual { p0, v2 }, Landroidx/recyclerview/widget/a;->a(Landroidx/recyclerview/widget/a$b;)V
    add-int/lit8 v1, v1, 1
    goto :L0
  :L1
  .line 3
    invoke-interface { p1 }, Ljava/util/List;->clear()V
    return-void
.end method

.method u()V
  .registers 2
  .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/a;->b:Ljava/util/ArrayList;
    invoke-virtual { p0, v0 }, Landroidx/recyclerview/widget/a;->t(Ljava/util/List;)V
  .line 2
    iget-object v0, p0, Landroidx/recyclerview/widget/a;->c:Ljava/util/ArrayList;
    invoke-virtual { p0, v0 }, Landroidx/recyclerview/widget/a;->t(Ljava/util/List;)V
    const/4 v0, 0
  .line 3
    iput v0, p0, Landroidx/recyclerview/widget/a;->h:I
    return-void
.end method
