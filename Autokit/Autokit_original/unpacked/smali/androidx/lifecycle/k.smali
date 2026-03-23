.class public Landroidx/lifecycle/k;
.super Landroidx/lifecycle/f;
.source "SourceFile"

.annotation system Ldalvik/annotation/MemberClasses;
  value = {
    Landroidx/lifecycle/k$a;
  }
.end annotation

.field private a:Lc/b/a/b/a;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "Lc/b/a/b/a<",
      "Landroidx/lifecycle/i;",
      "Landroidx/lifecycle/k$a;",
      ">;"
    }
  .end annotation
.end field

.field private b:Landroidx/lifecycle/f$c;

.field private final c:Ljava/lang/ref/WeakReference;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "Ljava/lang/ref/WeakReference<",
      "Landroidx/lifecycle/j;",
      ">;"
    }
  .end annotation
.end field

.field private d:I

.field private e:Z

.field private f:Z

.field private g:Ljava/util/ArrayList;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "Ljava/util/ArrayList<",
      "Landroidx/lifecycle/f$c;",
      ">;"
    }
  .end annotation
.end field

.field private final h:Z

.method public constructor <init>(Landroidx/lifecycle/j;)V
  .registers 3
    const/4 v0, 1
  .line 1
    invoke-direct { p0, p1, v0 }, Landroidx/lifecycle/k;-><init>(Landroidx/lifecycle/j;Z)V
    return-void
.end method

.method private constructor <init>(Landroidx/lifecycle/j;Z)V
  .registers 4
  .line 2
    invoke-direct { p0 }, Landroidx/lifecycle/f;-><init>()V
  .line 3
    new-instance v0, Lc/b/a/b/a;
    invoke-direct { v0 }, Lc/b/a/b/a;-><init>()V
    iput-object v0, p0, Landroidx/lifecycle/k;->a:Lc/b/a/b/a;
    const/4 v0, 0
  .line 4
    iput v0, p0, Landroidx/lifecycle/k;->d:I
  .line 5
    iput-boolean v0, p0, Landroidx/lifecycle/k;->e:Z
  .line 6
    iput-boolean v0, p0, Landroidx/lifecycle/k;->f:Z
  .line 7
    new-instance v0, Ljava/util/ArrayList;
    invoke-direct { v0 }, Ljava/util/ArrayList;-><init>()V
    iput-object v0, p0, Landroidx/lifecycle/k;->g:Ljava/util/ArrayList;
  .line 8
    new-instance v0, Ljava/lang/ref/WeakReference;
    invoke-direct { v0, p1 }, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V
    iput-object v0, p0, Landroidx/lifecycle/k;->c:Ljava/lang/ref/WeakReference;
  .line 9
    sget-object p1, Landroidx/lifecycle/f$c;->c:Landroidx/lifecycle/f$c;
    iput-object p1, p0, Landroidx/lifecycle/k;->b:Landroidx/lifecycle/f$c;
  .line 10
    iput-boolean p2, p0, Landroidx/lifecycle/k;->h:Z
    return-void
.end method

.method private d(Landroidx/lifecycle/j;)V
  .registers 7
  .line 1
    iget-object v0, p0, Landroidx/lifecycle/k;->a:Lc/b/a/b/a;
  .line 2
    invoke-virtual { v0 }, Lc/b/a/b/b;->a()Ljava/util/Iterator;
    move-result-object v0
  :L0
  .line 3
    invoke-interface { v0 }, Ljava/util/Iterator;->hasNext()Z
    move-result v1
    if-eqz v1, :L3
    iget-boolean v1, p0, Landroidx/lifecycle/k;->f:Z
    if-nez v1, :L3
  .line 4
    invoke-interface { v0 }, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object v1
    check-cast v1, Ljava/util/Map$Entry;
  .line 5
    invoke-interface { v1 }, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;
    move-result-object v2
    check-cast v2, Landroidx/lifecycle/k$a;
  :L1
  .line 6
    iget-object v3, v2, Landroidx/lifecycle/k$a;->a:Landroidx/lifecycle/f$c;
    iget-object v4, p0, Landroidx/lifecycle/k;->b:Landroidx/lifecycle/f$c;
    invoke-virtual { v3, v4 }, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I
    move-result v3
    if-lez v3, :L0
    iget-boolean v3, p0, Landroidx/lifecycle/k;->f:Z
    if-nez v3, :L0
    iget-object v3, p0, Landroidx/lifecycle/k;->a:Lc/b/a/b/a;
  .line 7
    invoke-interface { v1 }, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;
    move-result-object v4
    invoke-virtual { v3, v4 }, Lc/b/a/b/a;->contains(Ljava/lang/Object;)Z
    move-result v3
    if-eqz v3, :L0
  .line 8
    iget-object v3, v2, Landroidx/lifecycle/k$a;->a:Landroidx/lifecycle/f$c;
    invoke-static { v3 }, Landroidx/lifecycle/f$b;->a(Landroidx/lifecycle/f$c;)Landroidx/lifecycle/f$b;
    move-result-object v3
    if-eqz v3, :L2
  .line 9
    invoke-virtual { v3 }, Landroidx/lifecycle/f$b;->b()Landroidx/lifecycle/f$c;
    move-result-object v4
    invoke-direct { p0, v4 }, Landroidx/lifecycle/k;->n(Landroidx/lifecycle/f$c;)V
  .line 10
    invoke-virtual { v2, p1, v3 }, Landroidx/lifecycle/k$a;->a(Landroidx/lifecycle/j;Landroidx/lifecycle/f$b;)V
  .line 11
    invoke-direct { p0 }, Landroidx/lifecycle/k;->m()V
    goto :L1
  :L2
  .line 12
    new-instance p1, Ljava/lang/IllegalStateException;
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "no event down from "
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget-object v1, v2, Landroidx/lifecycle/k$a;->a:Landroidx/lifecycle/f$c;
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    invoke-direct { p1, v0 }, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
    throw p1
  :L3
    return-void
.end method

.method private e(Landroidx/lifecycle/i;)Landroidx/lifecycle/f$c;
  .registers 4
  .line 1
    iget-object v0, p0, Landroidx/lifecycle/k;->a:Lc/b/a/b/a;
    invoke-virtual { v0, p1 }, Lc/b/a/b/a;->i(Ljava/lang/Object;)Ljava/util/Map$Entry;
    move-result-object p1
    const/4 v0, 0
    if-eqz p1, :L0
  .line 2
    invoke-interface { p1 }, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;
    move-result-object p1
    check-cast p1, Landroidx/lifecycle/k$a;
    iget-object p1, p1, Landroidx/lifecycle/k$a;->a:Landroidx/lifecycle/f$c;
    goto :L1
  :L0
    move-object p1, v0
  :L1
  .line 3
    iget-object v1, p0, Landroidx/lifecycle/k;->g:Ljava/util/ArrayList;
    invoke-virtual { v1 }, Ljava/util/ArrayList;->isEmpty()Z
    move-result v1
    if-nez v1, :L2
    iget-object v0, p0, Landroidx/lifecycle/k;->g:Ljava/util/ArrayList;
    invoke-virtual { v0 }, Ljava/util/ArrayList;->size()I
    move-result v1
    add-int/lit8 v1, v1, -1
    invoke-virtual { v0, v1 }, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Landroidx/lifecycle/f$c;
  :L2
  .line 4
    iget-object v1, p0, Landroidx/lifecycle/k;->b:Landroidx/lifecycle/f$c;
    invoke-static { v1, p1 }, Landroidx/lifecycle/k;->k(Landroidx/lifecycle/f$c;Landroidx/lifecycle/f$c;)Landroidx/lifecycle/f$c;
    move-result-object p1
    invoke-static { p1, v0 }, Landroidx/lifecycle/k;->k(Landroidx/lifecycle/f$c;Landroidx/lifecycle/f$c;)Landroidx/lifecycle/f$c;
    move-result-object p1
    return-object p1
.end method

.method private f(Ljava/lang/String;)V
  .annotation build Landroid/annotation/SuppressLint;
    value = {
      "RestrictedApi"
    }
  .end annotation
  .registers 5
  .line 1
    iget-boolean v0, p0, Landroidx/lifecycle/k;->h:Z
    if-eqz v0, :L1
  .line 2
    invoke-static { }, Lc/b/a/a/a;->b()Lc/b/a/a/a;
    move-result-object v0
    invoke-virtual { v0 }, Lc/b/a/a/a;->a()Z
    move-result v0
    if-eqz v0, :L0
    goto :L1
  :L0
  .line 3
    new-instance v0, Ljava/lang/IllegalStateException;
    new-instance v1, Ljava/lang/StringBuilder;
    invoke-direct { v1 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v2, "Method "
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v1, p1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string p1, " must be called on the main thread"
    invoke-virtual { v1, p1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p1
    invoke-direct { v0, p1 }, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
    throw v0
  :L1
    return-void
.end method

.method private g(Landroidx/lifecycle/j;)V
  .registers 7
  .line 1
    iget-object v0, p0, Landroidx/lifecycle/k;->a:Lc/b/a/b/a;
  .line 2
    invoke-virtual { v0 }, Lc/b/a/b/b;->d()Lc/b/a/b/b$d;
    move-result-object v0
  :L0
  .line 3
    invoke-interface { v0 }, Ljava/util/Iterator;->hasNext()Z
    move-result v1
    if-eqz v1, :L3
    iget-boolean v1, p0, Landroidx/lifecycle/k;->f:Z
    if-nez v1, :L3
  .line 4
    invoke-interface { v0 }, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object v1
    check-cast v1, Ljava/util/Map$Entry;
  .line 5
    invoke-interface { v1 }, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;
    move-result-object v2
    check-cast v2, Landroidx/lifecycle/k$a;
  :L1
  .line 6
    iget-object v3, v2, Landroidx/lifecycle/k$a;->a:Landroidx/lifecycle/f$c;
    iget-object v4, p0, Landroidx/lifecycle/k;->b:Landroidx/lifecycle/f$c;
    invoke-virtual { v3, v4 }, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I
    move-result v3
    if-gez v3, :L0
    iget-boolean v3, p0, Landroidx/lifecycle/k;->f:Z
    if-nez v3, :L0
    iget-object v3, p0, Landroidx/lifecycle/k;->a:Lc/b/a/b/a;
  .line 7
    invoke-interface { v1 }, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;
    move-result-object v4
    invoke-virtual { v3, v4 }, Lc/b/a/b/a;->contains(Ljava/lang/Object;)Z
    move-result v3
    if-eqz v3, :L0
  .line 8
    iget-object v3, v2, Landroidx/lifecycle/k$a;->a:Landroidx/lifecycle/f$c;
    invoke-direct { p0, v3 }, Landroidx/lifecycle/k;->n(Landroidx/lifecycle/f$c;)V
  .line 9
    iget-object v3, v2, Landroidx/lifecycle/k$a;->a:Landroidx/lifecycle/f$c;
    invoke-static { v3 }, Landroidx/lifecycle/f$b;->c(Landroidx/lifecycle/f$c;)Landroidx/lifecycle/f$b;
    move-result-object v3
    if-eqz v3, :L2
  .line 10
    invoke-virtual { v2, p1, v3 }, Landroidx/lifecycle/k$a;->a(Landroidx/lifecycle/j;Landroidx/lifecycle/f$b;)V
  .line 11
    invoke-direct { p0 }, Landroidx/lifecycle/k;->m()V
    goto :L1
  :L2
  .line 12
    new-instance p1, Ljava/lang/IllegalStateException;
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "no event up from "
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget-object v1, v2, Landroidx/lifecycle/k$a;->a:Landroidx/lifecycle/f$c;
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    invoke-direct { p1, v0 }, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
    throw p1
  :L3
    return-void
.end method

.method private i()Z
  .registers 4
  .line 1
    iget-object v0, p0, Landroidx/lifecycle/k;->a:Lc/b/a/b/a;
    invoke-virtual { v0 }, Lc/b/a/b/b;->size()I
    move-result v0
    const/4 v1, 1
    if-nez v0, :L0
    return v1
  :L0
  .line 2
    iget-object v0, p0, Landroidx/lifecycle/k;->a:Lc/b/a/b/a;
    invoke-virtual { v0 }, Lc/b/a/b/b;->b()Ljava/util/Map$Entry;
    move-result-object v0
    invoke-interface { v0 }, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Landroidx/lifecycle/k$a;
    iget-object v0, v0, Landroidx/lifecycle/k$a;->a:Landroidx/lifecycle/f$c;
  .line 3
    iget-object v2, p0, Landroidx/lifecycle/k;->a:Lc/b/a/b/a;
    invoke-virtual { v2 }, Lc/b/a/b/b;->e()Ljava/util/Map$Entry;
    move-result-object v2
    invoke-interface { v2 }, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;
    move-result-object v2
    check-cast v2, Landroidx/lifecycle/k$a;
    iget-object v2, v2, Landroidx/lifecycle/k$a;->a:Landroidx/lifecycle/f$c;
    if-ne v0, v2, :L1
  .line 4
    iget-object v0, p0, Landroidx/lifecycle/k;->b:Landroidx/lifecycle/f$c;
    if-ne v0, v2, :L1
    goto :L2
  :L1
    const/4 v1, 0
  :L2
    return v1
.end method

.method static k(Landroidx/lifecycle/f$c;Landroidx/lifecycle/f$c;)Landroidx/lifecycle/f$c;
  .registers 3
    if-eqz p1, :L0
  .line 1
    invoke-virtual { p1, p0 }, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I
    move-result v0
    if-gez v0, :L0
    move-object p0, p1
  :L0
    return-object p0
.end method

.method private l(Landroidx/lifecycle/f$c;)V
  .registers 3
  .line 1
    iget-object v0, p0, Landroidx/lifecycle/k;->b:Landroidx/lifecycle/f$c;
    if-ne v0, p1, :L0
    return-void
  :L0
  .line 2
    iput-object p1, p0, Landroidx/lifecycle/k;->b:Landroidx/lifecycle/f$c;
  .line 3
    iget-boolean p1, p0, Landroidx/lifecycle/k;->e:Z
    const/4 v0, 1
    if-nez p1, :L2
    iget p1, p0, Landroidx/lifecycle/k;->d:I
    if-eqz p1, :L1
    goto :L2
  :L1
  .line 4
    iput-boolean v0, p0, Landroidx/lifecycle/k;->e:Z
  .line 5
    invoke-direct { p0 }, Landroidx/lifecycle/k;->p()V
    const/4 p1, 0
  .line 6
    iput-boolean p1, p0, Landroidx/lifecycle/k;->e:Z
    return-void
  :L2
  .line 7
    iput-boolean v0, p0, Landroidx/lifecycle/k;->f:Z
    return-void
.end method

.method private m()V
  .registers 3
  .line 1
    iget-object v0, p0, Landroidx/lifecycle/k;->g:Ljava/util/ArrayList;
    invoke-virtual { v0 }, Ljava/util/ArrayList;->size()I
    move-result v1
    add-int/lit8 v1, v1, -1
    invoke-virtual { v0, v1 }, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
    return-void
.end method

.method private n(Landroidx/lifecycle/f$c;)V
  .registers 3
  .line 1
    iget-object v0, p0, Landroidx/lifecycle/k;->g:Ljava/util/ArrayList;
    invoke-virtual { v0, p1 }, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    return-void
.end method

.method private p()V
  .registers 4
  .line 1
    iget-object v0, p0, Landroidx/lifecycle/k;->c:Ljava/lang/ref/WeakReference;
    invoke-virtual { v0 }, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Landroidx/lifecycle/j;
    if-eqz v0, :L3
  :L0
  .line 2
    invoke-direct { p0 }, Landroidx/lifecycle/k;->i()Z
    move-result v1
    const/4 v2, 0
    if-nez v1, :L2
  .line 3
    iput-boolean v2, p0, Landroidx/lifecycle/k;->f:Z
  .line 4
    iget-object v1, p0, Landroidx/lifecycle/k;->b:Landroidx/lifecycle/f$c;
    iget-object v2, p0, Landroidx/lifecycle/k;->a:Lc/b/a/b/a;
    invoke-virtual { v2 }, Lc/b/a/b/b;->b()Ljava/util/Map$Entry;
    move-result-object v2
    invoke-interface { v2 }, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;
    move-result-object v2
    check-cast v2, Landroidx/lifecycle/k$a;
    iget-object v2, v2, Landroidx/lifecycle/k$a;->a:Landroidx/lifecycle/f$c;
    invoke-virtual { v1, v2 }, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I
    move-result v1
    if-gez v1, :L1
  .line 5
    invoke-direct { p0, v0 }, Landroidx/lifecycle/k;->d(Landroidx/lifecycle/j;)V
  :L1
  .line 6
    iget-object v1, p0, Landroidx/lifecycle/k;->a:Lc/b/a/b/a;
    invoke-virtual { v1 }, Lc/b/a/b/b;->e()Ljava/util/Map$Entry;
    move-result-object v1
  .line 7
    iget-boolean v2, p0, Landroidx/lifecycle/k;->f:Z
    if-nez v2, :L0
    if-eqz v1, :L0
    iget-object v2, p0, Landroidx/lifecycle/k;->b:Landroidx/lifecycle/f$c;
  .line 8
    invoke-interface { v1 }, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;
    move-result-object v1
    check-cast v1, Landroidx/lifecycle/k$a;
    iget-object v1, v1, Landroidx/lifecycle/k$a;->a:Landroidx/lifecycle/f$c;
    invoke-virtual { v2, v1 }, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I
    move-result v1
    if-lez v1, :L0
  .line 9
    invoke-direct { p0, v0 }, Landroidx/lifecycle/k;->g(Landroidx/lifecycle/j;)V
    goto :L0
  :L2
  .line 10
    iput-boolean v2, p0, Landroidx/lifecycle/k;->f:Z
    return-void
  :L3
  .line 11
    new-instance v0, Ljava/lang/IllegalStateException;
    const-string v1, "LifecycleOwner of this LifecycleRegistry is alreadygarbage collected. It is too late to change lifecycle state."
    invoke-direct { v0, v1 }, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
    goto :L5
  :L4
    throw v0
  :L5
    goto :L4
.end method

.method public a(Landroidx/lifecycle/i;)V
  .registers 8
    const-string v0, "addObserver"
  .line 1
    invoke-direct { p0, v0 }, Landroidx/lifecycle/k;->f(Ljava/lang/String;)V
  .line 2
    iget-object v0, p0, Landroidx/lifecycle/k;->b:Landroidx/lifecycle/f$c;
    sget-object v1, Landroidx/lifecycle/f$c;->b:Landroidx/lifecycle/f$c;
    if-ne v0, v1, :L0
    goto :L1
  :L0
    sget-object v1, Landroidx/lifecycle/f$c;->c:Landroidx/lifecycle/f$c;
  :L1
  .line 3
    new-instance v0, Landroidx/lifecycle/k$a;
    invoke-direct { v0, p1, v1 }, Landroidx/lifecycle/k$a;-><init>(Landroidx/lifecycle/i;Landroidx/lifecycle/f$c;)V
  .line 4
    iget-object v1, p0, Landroidx/lifecycle/k;->a:Lc/b/a/b/a;
    invoke-virtual { v1, p1, v0 }, Lc/b/a/b/a;->g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object v1
    check-cast v1, Landroidx/lifecycle/k$a;
    if-eqz v1, :L2
    return-void
  :L2
  .line 5
    iget-object v1, p0, Landroidx/lifecycle/k;->c:Ljava/lang/ref/WeakReference;
    invoke-virtual { v1 }, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
    move-result-object v1
    check-cast v1, Landroidx/lifecycle/j;
    if-nez v1, :L3
    return-void
  :L3
  .line 6
    iget v2, p0, Landroidx/lifecycle/k;->d:I
    const/4 v3, 1
    if-nez v2, :L5
    iget-boolean v2, p0, Landroidx/lifecycle/k;->e:Z
    if-eqz v2, :L4
    goto :L5
  :L4
    const/4 v2, 0
    goto :L6
  :L5
    const/4 v2, 1
  :L6
  .line 7
    invoke-direct { p0, p1 }, Landroidx/lifecycle/k;->e(Landroidx/lifecycle/i;)Landroidx/lifecycle/f$c;
    move-result-object v4
  .line 8
    iget v5, p0, Landroidx/lifecycle/k;->d:I
    add-int/2addr v5, v3
    iput v5, p0, Landroidx/lifecycle/k;->d:I
  :L7
  .line 9
    iget-object v5, v0, Landroidx/lifecycle/k$a;->a:Landroidx/lifecycle/f$c;
    invoke-virtual { v5, v4 }, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I
    move-result v4
    if-gez v4, :L9
    iget-object v4, p0, Landroidx/lifecycle/k;->a:Lc/b/a/b/a;
  .line 10
    invoke-virtual { v4, p1 }, Lc/b/a/b/a;->contains(Ljava/lang/Object;)Z
    move-result v4
    if-eqz v4, :L9
  .line 11
    iget-object v4, v0, Landroidx/lifecycle/k$a;->a:Landroidx/lifecycle/f$c;
    invoke-direct { p0, v4 }, Landroidx/lifecycle/k;->n(Landroidx/lifecycle/f$c;)V
  .line 12
    iget-object v4, v0, Landroidx/lifecycle/k$a;->a:Landroidx/lifecycle/f$c;
    invoke-static { v4 }, Landroidx/lifecycle/f$b;->c(Landroidx/lifecycle/f$c;)Landroidx/lifecycle/f$b;
    move-result-object v4
    if-eqz v4, :L8
  .line 13
    invoke-virtual { v0, v1, v4 }, Landroidx/lifecycle/k$a;->a(Landroidx/lifecycle/j;Landroidx/lifecycle/f$b;)V
  .line 14
    invoke-direct { p0 }, Landroidx/lifecycle/k;->m()V
  .line 15
    invoke-direct { p0, p1 }, Landroidx/lifecycle/k;->e(Landroidx/lifecycle/i;)Landroidx/lifecycle/f$c;
    move-result-object v4
    goto :L7
  :L8
  .line 16
    new-instance p1, Ljava/lang/IllegalStateException;
    new-instance v1, Ljava/lang/StringBuilder;
    invoke-direct { v1 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v2, "no event up from "
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget-object v0, v0, Landroidx/lifecycle/k$a;->a:Landroidx/lifecycle/f$c;
    invoke-virtual { v1, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    invoke-virtual { v1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    invoke-direct { p1, v0 }, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
    throw p1
  :L9
    if-nez v2, :L10
  .line 17
    invoke-direct { p0 }, Landroidx/lifecycle/k;->p()V
  :L10
  .line 18
    iget p1, p0, Landroidx/lifecycle/k;->d:I
    sub-int/2addr p1, v3
    iput p1, p0, Landroidx/lifecycle/k;->d:I
    return-void
.end method

.method public b()Landroidx/lifecycle/f$c;
  .registers 2
  .line 1
    iget-object v0, p0, Landroidx/lifecycle/k;->b:Landroidx/lifecycle/f$c;
    return-object v0
.end method

.method public c(Landroidx/lifecycle/i;)V
  .registers 3
    const-string v0, "removeObserver"
  .line 1
    invoke-direct { p0, v0 }, Landroidx/lifecycle/k;->f(Ljava/lang/String;)V
  .line 2
    iget-object v0, p0, Landroidx/lifecycle/k;->a:Lc/b/a/b/a;
    invoke-virtual { v0, p1 }, Lc/b/a/b/a;->h(Ljava/lang/Object;)Ljava/lang/Object;
    return-void
.end method

.method public h(Landroidx/lifecycle/f$b;)V
  .registers 3
    const-string v0, "handleLifecycleEvent"
  .line 1
    invoke-direct { p0, v0 }, Landroidx/lifecycle/k;->f(Ljava/lang/String;)V
  .line 2
    invoke-virtual { p1 }, Landroidx/lifecycle/f$b;->b()Landroidx/lifecycle/f$c;
    move-result-object p1
    invoke-direct { p0, p1 }, Landroidx/lifecycle/k;->l(Landroidx/lifecycle/f$c;)V
    return-void
.end method

.method public j(Landroidx/lifecycle/f$c;)V
  .annotation runtime Ljava/lang/Deprecated;
  .end annotation
  .registers 3
    const-string v0, "markState"
  .line 1
    invoke-direct { p0, v0 }, Landroidx/lifecycle/k;->f(Ljava/lang/String;)V
  .line 2
    invoke-virtual { p0, p1 }, Landroidx/lifecycle/k;->o(Landroidx/lifecycle/f$c;)V
    return-void
.end method

.method public o(Landroidx/lifecycle/f$c;)V
  .registers 3
    const-string v0, "setCurrentState"
  .line 1
    invoke-direct { p0, v0 }, Landroidx/lifecycle/k;->f(Ljava/lang/String;)V
  .line 2
    invoke-direct { p0, p1 }, Landroidx/lifecycle/k;->l(Landroidx/lifecycle/f$c;)V
    return-void
.end method
