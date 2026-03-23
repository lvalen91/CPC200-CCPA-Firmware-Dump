.class public abstract Landroidx/lifecycle/LiveData;
.super Ljava/lang/Object;
.source "SourceFile"

.annotation system Ldalvik/annotation/MemberClasses;
  value = {
    Landroidx/lifecycle/LiveData$a;,
    Landroidx/lifecycle/LiveData$b;,
    Landroidx/lifecycle/LiveData$LifecycleBoundObserver;
  }
.end annotation
.annotation system Ldalvik/annotation/Signature;
  value = {
    "<T:",
    "Ljava/lang/Object;",
    ">",
    "Ljava/lang/Object;"
  }
.end annotation

.field final static j:Ljava/lang/Object;

.field final a:Ljava/lang/Object;

.field private b:Lc/b/a/b/b;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "Lc/b/a/b/b<",
      "Landroidx/lifecycle/p<",
      "-TT;>;",
      "Landroidx/lifecycle/LiveData<",
      "TT;>.b;>;"
    }
  .end annotation
.end field

.field c:I

.field private d:Z

.field private volatile e:Ljava/lang/Object;

.field volatile f:Ljava/lang/Object;

.field private g:I

.field private h:Z

.field private i:Z

.method static constructor <clinit>()V
  .registers 1
  .line 1
    new-instance v0, Ljava/lang/Object;
    invoke-direct { v0 }, Ljava/lang/Object;-><init>()V
    sput-object v0, Landroidx/lifecycle/LiveData;->j:Ljava/lang/Object;
    return-void
.end method

.method public constructor <init>()V
  .registers 2
  .line 8
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
  .line 9
    new-instance v0, Ljava/lang/Object;
    invoke-direct { v0 }, Ljava/lang/Object;-><init>()V
    iput-object v0, p0, Landroidx/lifecycle/LiveData;->a:Ljava/lang/Object;
  .line 10
    new-instance v0, Lc/b/a/b/b;
    invoke-direct { v0 }, Lc/b/a/b/b;-><init>()V
    iput-object v0, p0, Landroidx/lifecycle/LiveData;->b:Lc/b/a/b/b;
    const/4 v0, 0
  .line 11
    iput v0, p0, Landroidx/lifecycle/LiveData;->c:I
  .line 12
    sget-object v0, Landroidx/lifecycle/LiveData;->j:Ljava/lang/Object;
    iput-object v0, p0, Landroidx/lifecycle/LiveData;->f:Ljava/lang/Object;
  .line 13
    sget-object v0, Landroidx/lifecycle/LiveData;->j:Ljava/lang/Object;
    iput-object v0, p0, Landroidx/lifecycle/LiveData;->e:Ljava/lang/Object;
    const/4 v0, -1
  .line 14
    iput v0, p0, Landroidx/lifecycle/LiveData;->g:I
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(TT;)V"
    }
  .end annotation
  .registers 4
  .line 1
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
  .line 2
    new-instance v0, Ljava/lang/Object;
    invoke-direct { v0 }, Ljava/lang/Object;-><init>()V
    iput-object v0, p0, Landroidx/lifecycle/LiveData;->a:Ljava/lang/Object;
  .line 3
    new-instance v0, Lc/b/a/b/b;
    invoke-direct { v0 }, Lc/b/a/b/b;-><init>()V
    iput-object v0, p0, Landroidx/lifecycle/LiveData;->b:Lc/b/a/b/b;
    const/4 v0, 0
  .line 4
    iput v0, p0, Landroidx/lifecycle/LiveData;->c:I
  .line 5
    sget-object v1, Landroidx/lifecycle/LiveData;->j:Ljava/lang/Object;
    iput-object v1, p0, Landroidx/lifecycle/LiveData;->f:Ljava/lang/Object;
  .line 6
    iput-object p1, p0, Landroidx/lifecycle/LiveData;->e:Ljava/lang/Object;
  .line 7
    iput v0, p0, Landroidx/lifecycle/LiveData;->g:I
    return-void
.end method

.method static a(Ljava/lang/String;)V
  .registers 4
  .line 1
    invoke-static { }, Lc/b/a/a/a;->b()Lc/b/a/a/a;
    move-result-object v0
    invoke-virtual { v0 }, Lc/b/a/a/a;->a()Z
    move-result v0
    if-eqz v0, :L0
    return-void
  :L0
  .line 2
    new-instance v0, Ljava/lang/IllegalStateException;
    new-instance v1, Ljava/lang/StringBuilder;
    invoke-direct { v1 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v2, "Cannot invoke "
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v1, p0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string p0, " on a background thread"
    invoke-virtual { v1, p0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p0
    invoke-direct { v0, p0 }, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
    throw v0
.end method

.method private c(Landroidx/lifecycle/LiveData$b;)V
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(",
      "Landroidx/lifecycle/LiveData<",
      "TT;>.b;)V"
    }
  .end annotation
  .registers 4
  .line 1
    iget-boolean v0, p1, Landroidx/lifecycle/LiveData$b;->b:Z
    if-nez v0, :L0
    return-void
  :L0
  .line 2
    invoke-virtual { p1 }, Landroidx/lifecycle/LiveData$b;->k()Z
    move-result v0
    if-nez v0, :L1
    const/4 v0, 0
  .line 3
    invoke-virtual { p1, v0 }, Landroidx/lifecycle/LiveData$b;->h(Z)V
    return-void
  :L1
  .line 4
    iget v0, p1, Landroidx/lifecycle/LiveData$b;->c:I
    iget v1, p0, Landroidx/lifecycle/LiveData;->g:I
    if-lt v0, v1, :L2
    return-void
  :L2
  .line 5
    iput v1, p1, Landroidx/lifecycle/LiveData$b;->c:I
  .line 6
    iget-object p1, p1, Landroidx/lifecycle/LiveData$b;->a:Landroidx/lifecycle/p;
    iget-object v0, p0, Landroidx/lifecycle/LiveData;->e:Ljava/lang/Object;
    invoke-interface { p1, v0 }, Landroidx/lifecycle/p;->c(Ljava/lang/Object;)V
    return-void
.end method

.method b(I)V
  .catchall { :L2 .. :L8 } :L10
  .registers 6
  .line 1
    iget v0, p0, Landroidx/lifecycle/LiveData;->c:I
    add-int/2addr p1, v0
  .line 2
    iput p1, p0, Landroidx/lifecycle/LiveData;->c:I
  .line 3
    iget-boolean p1, p0, Landroidx/lifecycle/LiveData;->d:Z
    if-eqz p1, :L0
    return-void
  :L0
    const/4 p1, 1
  .line 4
    iput-boolean p1, p0, Landroidx/lifecycle/LiveData;->d:Z
  :L1
    const/4 v1, 0
  :L2
  .line 5
    iget v2, p0, Landroidx/lifecycle/LiveData;->c:I
    if-eq v0, v2, :L9
    if-nez v0, :L3
  .line 6
    iget v2, p0, Landroidx/lifecycle/LiveData;->c:I
    if-lez v2, :L3
    const/4 v2, 1
    goto :L4
  :L3
    const/4 v2, 0
  :L4
    if-lez v0, :L5
  .line 7
    iget v0, p0, Landroidx/lifecycle/LiveData;->c:I
    if-nez v0, :L5
    const/4 v0, 1
    goto :L6
  :L5
    const/4 v0, 0
  :L6
  .line 8
    iget v3, p0, Landroidx/lifecycle/LiveData;->c:I
    if-eqz v2, :L7
  .line 9
    invoke-virtual { p0 }, Landroidx/lifecycle/LiveData;->h()V
    goto :L8
  :L7
    if-eqz v0, :L8
  .line 10
    invoke-virtual { p0 }, Landroidx/lifecycle/LiveData;->i()V
  :L8
    move v0, v3
    goto :L1
  :L9
  .line 11
    iput-boolean v1, p0, Landroidx/lifecycle/LiveData;->d:Z
    return-void
  :L10
    move-exception p1
    iput-boolean v1, p0, Landroidx/lifecycle/LiveData;->d:Z
  .line 12
    goto :L12
  :L11
    throw p1
  :L12
    goto :L11
.end method

.method d(Landroidx/lifecycle/LiveData$b;)V
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(",
      "Landroidx/lifecycle/LiveData<",
      "TT;>.b;)V"
    }
  .end annotation
  .registers 5
  .line 1
    iget-boolean v0, p0, Landroidx/lifecycle/LiveData;->h:Z
    const/4 v1, 1
    if-eqz v0, :L0
  .line 2
    iput-boolean v1, p0, Landroidx/lifecycle/LiveData;->i:Z
    return-void
  :L0
  .line 3
    iput-boolean v1, p0, Landroidx/lifecycle/LiveData;->h:Z
  :L1
    const/4 v0, 0
  .line 4
    iput-boolean v0, p0, Landroidx/lifecycle/LiveData;->i:Z
    if-eqz p1, :L2
  .line 5
    invoke-direct { p0, p1 }, Landroidx/lifecycle/LiveData;->c(Landroidx/lifecycle/LiveData$b;)V
    const/4 p1, 0
    goto :L4
  :L2
  .line 6
    iget-object v1, p0, Landroidx/lifecycle/LiveData;->b:Lc/b/a/b/b;
  .line 7
    invoke-virtual { v1 }, Lc/b/a/b/b;->d()Lc/b/a/b/b$d;
    move-result-object v1
  :L3
    invoke-interface { v1 }, Ljava/util/Iterator;->hasNext()Z
    move-result v2
    if-eqz v2, :L4
  .line 8
    invoke-interface { v1 }, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object v2
    check-cast v2, Ljava/util/Map$Entry;
    invoke-interface { v2 }, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;
    move-result-object v2
    check-cast v2, Landroidx/lifecycle/LiveData$b;
    invoke-direct { p0, v2 }, Landroidx/lifecycle/LiveData;->c(Landroidx/lifecycle/LiveData$b;)V
  .line 9
    iget-boolean v2, p0, Landroidx/lifecycle/LiveData;->i:Z
    if-eqz v2, :L3
  :L4
  .line 10
    iget-boolean v1, p0, Landroidx/lifecycle/LiveData;->i:Z
    if-nez v1, :L1
  .line 11
    iput-boolean v0, p0, Landroidx/lifecycle/LiveData;->h:Z
    return-void
.end method

.method public e()Ljava/lang/Object;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "()TT;"
    }
  .end annotation
  .registers 3
  .line 1
    iget-object v0, p0, Landroidx/lifecycle/LiveData;->e:Ljava/lang/Object;
  .line 2
    sget-object v1, Landroidx/lifecycle/LiveData;->j:Ljava/lang/Object;
    if-eq v0, v1, :L0
    return-object v0
  :L0
    const/4 v0, 0
    return-object v0
.end method

.method public f(Landroidx/lifecycle/j;Landroidx/lifecycle/p;)V
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(",
      "Landroidx/lifecycle/j;",
      "Landroidx/lifecycle/p<",
      "-TT;>;)V"
    }
  .end annotation
  .registers 5
    const-string v0, "observe"
  .line 1
    invoke-static { v0 }, Landroidx/lifecycle/LiveData;->a(Ljava/lang/String;)V
  .line 2
    invoke-interface { p1 }, Landroidx/lifecycle/j;->getLifecycle()Landroidx/lifecycle/f;
    move-result-object v0
    invoke-virtual { v0 }, Landroidx/lifecycle/f;->b()Landroidx/lifecycle/f$c;
    move-result-object v0
    sget-object v1, Landroidx/lifecycle/f$c;->b:Landroidx/lifecycle/f$c;
    if-ne v0, v1, :L0
    return-void
  :L0
  .line 3
    new-instance v0, Landroidx/lifecycle/LiveData$LifecycleBoundObserver;
    invoke-direct { v0, p0, p1, p2 }, Landroidx/lifecycle/LiveData$LifecycleBoundObserver;-><init>(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/j;Landroidx/lifecycle/p;)V
  .line 4
    iget-object v1, p0, Landroidx/lifecycle/LiveData;->b:Lc/b/a/b/b;
    invoke-virtual { v1, p2, v0 }, Lc/b/a/b/b;->g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object p2
    check-cast p2, Landroidx/lifecycle/LiveData$b;
    if-eqz p2, :L2
  .line 5
    invoke-virtual { p2, p1 }, Landroidx/lifecycle/LiveData$b;->j(Landroidx/lifecycle/j;)Z
    move-result v1
    if-eqz v1, :L1
    goto :L2
  :L1
  .line 6
    new-instance p1, Ljava/lang/IllegalArgumentException;
    const-string p2, "Cannot add the same observer with different lifecycles"
    invoke-direct { p1, p2 }, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
    throw p1
  :L2
    if-eqz p2, :L3
    return-void
  :L3
  .line 7
    invoke-interface { p1 }, Landroidx/lifecycle/j;->getLifecycle()Landroidx/lifecycle/f;
    move-result-object p1
    invoke-virtual { p1, v0 }, Landroidx/lifecycle/f;->a(Landroidx/lifecycle/i;)V
    return-void
.end method

.method public g(Landroidx/lifecycle/p;)V
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(",
      "Landroidx/lifecycle/p<",
      "-TT;>;)V"
    }
  .end annotation
  .registers 4
    const-string v0, "observeForever"
  .line 1
    invoke-static { v0 }, Landroidx/lifecycle/LiveData;->a(Ljava/lang/String;)V
  .line 2
    new-instance v0, Landroidx/lifecycle/LiveData$a;
    invoke-direct { v0, p0, p1 }, Landroidx/lifecycle/LiveData$a;-><init>(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/p;)V
  .line 3
    iget-object v1, p0, Landroidx/lifecycle/LiveData;->b:Lc/b/a/b/b;
    invoke-virtual { v1, p1, v0 }, Lc/b/a/b/b;->g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object p1
    check-cast p1, Landroidx/lifecycle/LiveData$b;
  .line 4
    instance-of v1, p1, Landroidx/lifecycle/LiveData$LifecycleBoundObserver;
    if-nez v1, :L1
    if-eqz p1, :L0
    return-void
  :L0
    const/4 p1, 1
  .line 5
    invoke-virtual { v0, p1 }, Landroidx/lifecycle/LiveData$b;->h(Z)V
    return-void
  :L1
  .line 6
    new-instance p1, Ljava/lang/IllegalArgumentException;
    const-string v0, "Cannot add the same observer with different lifecycles"
    invoke-direct { p1, v0 }, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
    throw p1
.end method

.method protected h()V
  .registers 1
    return-void
.end method

.method protected i()V
  .registers 1
    return-void
.end method

.method public j(Landroidx/lifecycle/p;)V
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(",
      "Landroidx/lifecycle/p<",
      "-TT;>;)V"
    }
  .end annotation
  .registers 3
    const-string v0, "removeObserver"
  .line 1
    invoke-static { v0 }, Landroidx/lifecycle/LiveData;->a(Ljava/lang/String;)V
  .line 2
    iget-object v0, p0, Landroidx/lifecycle/LiveData;->b:Lc/b/a/b/b;
    invoke-virtual { v0, p1 }, Lc/b/a/b/b;->h(Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object p1
    check-cast p1, Landroidx/lifecycle/LiveData$b;
    if-nez p1, :L0
    return-void
  :L0
  .line 3
    invoke-virtual { p1 }, Landroidx/lifecycle/LiveData$b;->i()V
    const/4 v0, 0
  .line 4
    invoke-virtual { p1, v0 }, Landroidx/lifecycle/LiveData$b;->h(Z)V
    return-void
.end method

.method protected k(Ljava/lang/Object;)V
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(TT;)V"
    }
  .end annotation
  .registers 3
    const-string v0, "setValue"
  .line 1
    invoke-static { v0 }, Landroidx/lifecycle/LiveData;->a(Ljava/lang/String;)V
  .line 2
    iget v0, p0, Landroidx/lifecycle/LiveData;->g:I
    add-int/lit8 v0, v0, 1
    iput v0, p0, Landroidx/lifecycle/LiveData;->g:I
  .line 3
    iput-object p1, p0, Landroidx/lifecycle/LiveData;->e:Ljava/lang/Object;
    const/4 p1, 0
  .line 4
    invoke-virtual { p0, p1 }, Landroidx/lifecycle/LiveData;->d(Landroidx/lifecycle/LiveData$b;)V
    return-void
.end method
