.class final Landroidx/recyclerview/widget/e;
.super Ljava/lang/Object;
.implements Ljava/lang/Runnable;
.source "SourceFile"

.annotation system Ldalvik/annotation/MemberClasses;
  value = {
    Landroidx/recyclerview/widget/e$b;,
    Landroidx/recyclerview/widget/e$c;
  }
.end annotation

.field final static f:Ljava/lang/ThreadLocal;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "Ljava/lang/ThreadLocal<",
      "Landroidx/recyclerview/widget/e;",
      ">;"
    }
  .end annotation
.end field

.field static g:Ljava/util/Comparator;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "Ljava/util/Comparator<",
      "Landroidx/recyclerview/widget/e$c;",
      ">;"
    }
  .end annotation
.end field

.field b:Ljava/util/ArrayList;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "Ljava/util/ArrayList<",
      "Landroidx/recyclerview/widget/RecyclerView;",
      ">;"
    }
  .end annotation
.end field

.field c:J

.field d:J

.field private e:Ljava/util/ArrayList;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "Ljava/util/ArrayList<",
      "Landroidx/recyclerview/widget/e$c;",
      ">;"
    }
  .end annotation
.end field

.method static constructor <clinit>()V
  .registers 1
  .line 1
    new-instance v0, Ljava/lang/ThreadLocal;
    invoke-direct { v0 }, Ljava/lang/ThreadLocal;-><init>()V
    sput-object v0, Landroidx/recyclerview/widget/e;->f:Ljava/lang/ThreadLocal;
  .line 2
    new-instance v0, Landroidx/recyclerview/widget/e$a;
    invoke-direct { v0 }, Landroidx/recyclerview/widget/e$a;-><init>()V
    sput-object v0, Landroidx/recyclerview/widget/e;->g:Ljava/util/Comparator;
    return-void
.end method

.method constructor <init>()V
  .registers 2
  .line 1
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
  .line 2
    new-instance v0, Ljava/util/ArrayList;
    invoke-direct { v0 }, Ljava/util/ArrayList;-><init>()V
    iput-object v0, p0, Landroidx/recyclerview/widget/e;->b:Ljava/util/ArrayList;
  .line 3
    new-instance v0, Ljava/util/ArrayList;
    invoke-direct { v0 }, Ljava/util/ArrayList;-><init>()V
    iput-object v0, p0, Landroidx/recyclerview/widget/e;->e:Ljava/util/ArrayList;
    return-void
.end method

.method private b()V
  .registers 12
  .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/e;->b:Ljava/util/ArrayList;
    invoke-virtual { v0 }, Ljava/util/ArrayList;->size()I
    move-result v0
    const/4 v1, 0
    const/4 v2, 0
    const/4 v3, 0
  :L0
    if-ge v2, v0, :L2
  .line 2
    iget-object v4, p0, Landroidx/recyclerview/widget/e;->b:Ljava/util/ArrayList;
    invoke-virtual { v4, v2 }, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
    move-result-object v4
    check-cast v4, Landroidx/recyclerview/widget/RecyclerView;
  .line 3
    invoke-virtual { v4 }, Landroid/view/ViewGroup;->getWindowVisibility()I
    move-result v5
    if-nez v5, :L1
  .line 4
    iget-object v5, v4, Landroidx/recyclerview/widget/RecyclerView;->g0:Landroidx/recyclerview/widget/e$b;
    invoke-virtual { v5, v4, v1 }, Landroidx/recyclerview/widget/e$b;->c(Landroidx/recyclerview/widget/RecyclerView;Z)V
  .line 5
    iget-object v4, v4, Landroidx/recyclerview/widget/RecyclerView;->g0:Landroidx/recyclerview/widget/e$b;
    iget v4, v4, Landroidx/recyclerview/widget/e$b;->d:I
    add-int/2addr v3, v4
  :L1
    add-int/lit8 v2, v2, 1
    goto :L0
  :L2
  .line 6
    iget-object v2, p0, Landroidx/recyclerview/widget/e;->e:Ljava/util/ArrayList;
    invoke-virtual { v2, v3 }, Ljava/util/ArrayList;->ensureCapacity(I)V
    const/4 v2, 0
    const/4 v3, 0
  :L3
    if-ge v2, v0, :L11
  .line 7
    iget-object v4, p0, Landroidx/recyclerview/widget/e;->b:Ljava/util/ArrayList;
    invoke-virtual { v4, v2 }, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
    move-result-object v4
    check-cast v4, Landroidx/recyclerview/widget/RecyclerView;
  .line 8
    invoke-virtual { v4 }, Landroid/view/ViewGroup;->getWindowVisibility()I
    move-result v5
    if-eqz v5, :L4
    goto :L10
  :L4
  .line 9
    iget-object v5, v4, Landroidx/recyclerview/widget/RecyclerView;->g0:Landroidx/recyclerview/widget/e$b;
  .line 10
    iget v6, v5, Landroidx/recyclerview/widget/e$b;->a:I
    invoke-static { v6 }, Ljava/lang/Math;->abs(I)I
    move-result v6
    iget v7, v5, Landroidx/recyclerview/widget/e$b;->b:I
  .line 11
    invoke-static { v7 }, Ljava/lang/Math;->abs(I)I
    move-result v7
    add-int/2addr v6, v7
    const/4 v7, 0
  :L5
  .line 12
    iget v8, v5, Landroidx/recyclerview/widget/e$b;->d:I
    mul-int/lit8 v8, v8, 2
    if-ge v7, v8, :L10
  .line 13
    iget-object v8, p0, Landroidx/recyclerview/widget/e;->e:Ljava/util/ArrayList;
    invoke-virtual { v8 }, Ljava/util/ArrayList;->size()I
    move-result v8
    if-lt v3, v8, :L6
  .line 14
    new-instance v8, Landroidx/recyclerview/widget/e$c;
    invoke-direct { v8 }, Landroidx/recyclerview/widget/e$c;-><init>()V
  .line 15
    iget-object v9, p0, Landroidx/recyclerview/widget/e;->e:Ljava/util/ArrayList;
    invoke-virtual { v9, v8 }, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    goto :L7
  :L6
  .line 16
    iget-object v8, p0, Landroidx/recyclerview/widget/e;->e:Ljava/util/ArrayList;
    invoke-virtual { v8, v3 }, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
    move-result-object v8
    check-cast v8, Landroidx/recyclerview/widget/e$c;
  :L7
  .line 17
    iget-object v9, v5, Landroidx/recyclerview/widget/e$b;->c:[I
    add-int/lit8 v10, v7, 1
    aget v9, v9, v10
    if-gt v9, v6, :L8
    const/4 v10, 1
    goto :L9
  :L8
    const/4 v10, 0
  :L9
  .line 18
    iput-boolean v10, v8, Landroidx/recyclerview/widget/e$c;->a:Z
  .line 19
    iput v6, v8, Landroidx/recyclerview/widget/e$c;->b:I
  .line 20
    iput v9, v8, Landroidx/recyclerview/widget/e$c;->c:I
  .line 21
    iput-object v4, v8, Landroidx/recyclerview/widget/e$c;->d:Landroidx/recyclerview/widget/RecyclerView;
  .line 22
    iget-object v9, v5, Landroidx/recyclerview/widget/e$b;->c:[I
    aget v9, v9, v7
    iput v9, v8, Landroidx/recyclerview/widget/e$c;->e:I
    add-int/lit8 v3, v3, 1
    add-int/lit8 v7, v7, 2
    goto :L5
  :L10
    add-int/lit8 v2, v2, 1
    goto :L3
  :L11
  .line 23
    iget-object v0, p0, Landroidx/recyclerview/widget/e;->e:Ljava/util/ArrayList;
    sget-object v1, Landroidx/recyclerview/widget/e;->g:Ljava/util/Comparator;
    invoke-static { v0, v1 }, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V
    return-void
.end method

.method private c(Landroidx/recyclerview/widget/e$c;J)V
  .registers 7
  .line 1
    iget-boolean v0, p1, Landroidx/recyclerview/widget/e$c;->a:Z
    if-eqz v0, :L0
    const-wide v0, 9223372036854775807L
    goto :L1
  :L0
    move-wide v0, p2
  :L1
  .line 2
    iget-object v2, p1, Landroidx/recyclerview/widget/e$c;->d:Landroidx/recyclerview/widget/RecyclerView;
    iget p1, p1, Landroidx/recyclerview/widget/e$c;->e:I
    invoke-direct { p0, v2, p1, v0, v1 }, Landroidx/recyclerview/widget/e;->i(Landroidx/recyclerview/widget/RecyclerView;IJ)Landroidx/recyclerview/widget/RecyclerView$c0;
    move-result-object p1
    if-eqz p1, :L2
  .line 3
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$c0;->b:Ljava/lang/ref/WeakReference;
    if-eqz v0, :L2
  .line 4
    invoke-virtual { p1 }, Landroidx/recyclerview/widget/RecyclerView$c0;->s()Z
    move-result v0
    if-eqz v0, :L2
  .line 5
    invoke-virtual { p1 }, Landroidx/recyclerview/widget/RecyclerView$c0;->t()Z
    move-result v0
    if-nez v0, :L2
  .line 6
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$c0;->b:Ljava/lang/ref/WeakReference;
    invoke-virtual { p1 }, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
    move-result-object p1
    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;
    invoke-direct { p0, p1, p2, p3 }, Landroidx/recyclerview/widget/e;->h(Landroidx/recyclerview/widget/RecyclerView;J)V
  :L2
    return-void
.end method

.method private d(J)V
  .registers 6
    const/4 v0, 0
  :L0
  .line 1
    iget-object v1, p0, Landroidx/recyclerview/widget/e;->e:Ljava/util/ArrayList;
    invoke-virtual { v1 }, Ljava/util/ArrayList;->size()I
    move-result v1
    if-ge v0, v1, :L2
  .line 2
    iget-object v1, p0, Landroidx/recyclerview/widget/e;->e:Ljava/util/ArrayList;
    invoke-virtual { v1, v0 }, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
    move-result-object v1
    check-cast v1, Landroidx/recyclerview/widget/e$c;
  .line 3
    iget-object v2, v1, Landroidx/recyclerview/widget/e$c;->d:Landroidx/recyclerview/widget/RecyclerView;
    if-nez v2, :L1
    goto :L2
  :L1
  .line 4
    invoke-direct { p0, v1, p1, p2 }, Landroidx/recyclerview/widget/e;->c(Landroidx/recyclerview/widget/e$c;J)V
  .line 5
    invoke-virtual { v1 }, Landroidx/recyclerview/widget/e$c;->a()V
    add-int/lit8 v0, v0, 1
    goto :L0
  :L2
    return-void
.end method

.method static e(Landroidx/recyclerview/widget/RecyclerView;I)Z
  .registers 7
  .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->f:Landroidx/recyclerview/widget/b;
    invoke-virtual { v0 }, Landroidx/recyclerview/widget/b;->j()I
    move-result v0
    const/4 v1, 0
    const/4 v2, 0
  :L0
    if-ge v2, v0, :L2
  .line 2
    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView;->f:Landroidx/recyclerview/widget/b;
    invoke-virtual { v3, v2 }, Landroidx/recyclerview/widget/b;->i(I)Landroid/view/View;
    move-result-object v3
  .line 3
    invoke-static { v3 }, Landroidx/recyclerview/widget/RecyclerView;->f0(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$c0;
    move-result-object v3
  .line 4
    iget v4, v3, Landroidx/recyclerview/widget/RecyclerView$c0;->c:I
    if-ne v4, p1, :L1
    invoke-virtual { v3 }, Landroidx/recyclerview/widget/RecyclerView$c0;->t()Z
    move-result v3
    if-nez v3, :L1
    const/4 p0, 1
    return p0
  :L1
    add-int/lit8 v2, v2, 1
    goto :L0
  :L2
    return v1
.end method

.method private h(Landroidx/recyclerview/widget/RecyclerView;J)V
  .catchall { :L2 .. :L4 } :L6
  .registers 7
    if-nez p1, :L0
    return-void
  :L0
  .line 1
    iget-boolean v0, p1, Landroidx/recyclerview/widget/RecyclerView;->D:Z
    if-eqz v0, :L1
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView;->f:Landroidx/recyclerview/widget/b;
  .line 2
    invoke-virtual { v0 }, Landroidx/recyclerview/widget/b;->j()I
    move-result v0
    if-eqz v0, :L1
  .line 3
    invoke-virtual { p1 }, Landroidx/recyclerview/widget/RecyclerView;->T0()V
  :L1
  .line 4
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView;->g0:Landroidx/recyclerview/widget/e$b;
    const/4 v1, 1
  .line 5
    invoke-virtual { v0, p1, v1 }, Landroidx/recyclerview/widget/e$b;->c(Landroidx/recyclerview/widget/RecyclerView;Z)V
  .line 6
    iget v1, v0, Landroidx/recyclerview/widget/e$b;->d:I
    if-eqz v1, :L7
  :L2
    const-string v1, "RV Nested Prefetch"
  .line 7
    invoke-static { v1 }, Lc/g/g/c;->a(Ljava/lang/String;)V
  .line 8
    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView;->h0:Landroidx/recyclerview/widget/RecyclerView$z;
    iget-object v2, p1, Landroidx/recyclerview/widget/RecyclerView;->l:Landroidx/recyclerview/widget/RecyclerView$f;
    invoke-virtual { v1, v2 }, Landroidx/recyclerview/widget/RecyclerView$z;->f(Landroidx/recyclerview/widget/RecyclerView$f;)V
    const/4 v1, 0
  :L3
  .line 9
    iget v2, v0, Landroidx/recyclerview/widget/e$b;->d:I
    mul-int/lit8 v2, v2, 2
    if-ge v1, v2, :L5
  .line 10
    iget-object v2, v0, Landroidx/recyclerview/widget/e$b;->c:[I
    aget v2, v2, v1
  .line 11
    invoke-direct { p0, p1, v2, p2, p3 }, Landroidx/recyclerview/widget/e;->i(Landroidx/recyclerview/widget/RecyclerView;IJ)Landroidx/recyclerview/widget/RecyclerView$c0;
  :L4
    add-int/lit8 v1, v1, 2
    goto :L3
  :L5
  .line 12
    invoke-static { }, Lc/g/g/c;->b()V
    goto :L7
  :L6
    move-exception p1
    invoke-static { }, Lc/g/g/c;->b()V
  .line 13
    throw p1
  :L7
    return-void
.end method

.method private i(Landroidx/recyclerview/widget/RecyclerView;IJ)Landroidx/recyclerview/widget/RecyclerView$c0;
  .catchall { :L1 .. :L3 } :L4
  .registers 7
  .line 1
    invoke-static { p1, p2 }, Landroidx/recyclerview/widget/e;->e(Landroidx/recyclerview/widget/RecyclerView;I)Z
    move-result v0
    if-eqz v0, :L0
    const/4 p1, 0
    return-object p1
  :L0
  .line 2
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView;->c:Landroidx/recyclerview/widget/RecyclerView$u;
    const/4 v1, 0
  :L1
  .line 3
    invoke-virtual { p1 }, Landroidx/recyclerview/widget/RecyclerView;->F0()V
  .line 4
    invoke-virtual { v0, p2, v1, p3, p4 }, Landroidx/recyclerview/widget/RecyclerView$u;->I(IZJ)Landroidx/recyclerview/widget/RecyclerView$c0;
    move-result-object p2
    if-eqz p2, :L3
  .line 5
    invoke-virtual { p2 }, Landroidx/recyclerview/widget/RecyclerView$c0;->s()Z
    move-result p3
    if-eqz p3, :L2
    invoke-virtual { p2 }, Landroidx/recyclerview/widget/RecyclerView$c0;->t()Z
    move-result p3
    if-nez p3, :L2
  .line 6
    iget-object p3, p2, Landroidx/recyclerview/widget/RecyclerView$c0;->a:Landroid/view/View;
    invoke-virtual { v0, p3 }, Landroidx/recyclerview/widget/RecyclerView$u;->B(Landroid/view/View;)V
    goto :L3
  :L2
  .line 7
    invoke-virtual { v0, p2, v1 }, Landroidx/recyclerview/widget/RecyclerView$u;->a(Landroidx/recyclerview/widget/RecyclerView$c0;Z)V
  :L3
  .line 8
    invoke-virtual { p1, v1 }, Landroidx/recyclerview/widget/RecyclerView;->H0(Z)V
    return-object p2
  :L4
    move-exception p2
    invoke-virtual { p1, v1 }, Landroidx/recyclerview/widget/RecyclerView;->H0(Z)V
  .line 9
    throw p2
.end method

.method public a(Landroidx/recyclerview/widget/RecyclerView;)V
  .registers 3
  .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/e;->b:Ljava/util/ArrayList;
    invoke-virtual { v0, p1 }, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    return-void
.end method

.method f(Landroidx/recyclerview/widget/RecyclerView;II)V
  .registers 9
  .line 1
    invoke-virtual { p1 }, Landroidx/recyclerview/widget/RecyclerView;->isAttachedToWindow()Z
    move-result v0
    if-eqz v0, :L0
  .line 2
    iget-wide v0, p0, Landroidx/recyclerview/widget/e;->c:J
    const-wide/16 v2, 0
    cmp-long v4, v0, v2
    if-nez v4, :L0
  .line 3
    invoke-virtual { p1 }, Landroidx/recyclerview/widget/RecyclerView;->getNanoTime()J
    move-result-wide v0
    iput-wide v0, p0, Landroidx/recyclerview/widget/e;->c:J
  .line 4
    invoke-virtual { p1, p0 }, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z
  :L0
  .line 5
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView;->g0:Landroidx/recyclerview/widget/e$b;
    invoke-virtual { p1, p2, p3 }, Landroidx/recyclerview/widget/e$b;->e(II)V
    return-void
.end method

.method g(J)V
  .registers 3
  .line 1
    invoke-direct { p0 }, Landroidx/recyclerview/widget/e;->b()V
  .line 2
    invoke-direct { p0, p1, p2 }, Landroidx/recyclerview/widget/e;->d(J)V
    return-void
.end method

.method public j(Landroidx/recyclerview/widget/RecyclerView;)V
  .registers 3
  .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/e;->b:Ljava/util/ArrayList;
    invoke-virtual { v0, p1 }, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    return-void
.end method

.method public run()V
  .catchall { :L0 .. :L1 } :L9
  .catchall { :L3 .. :L8 } :L9
  .registers 9
    const-wide/16 v0, 0
  :L0
    const-string v2, "RV Prefetch"
  .line 1
    invoke-static { v2 }, Lc/g/g/c;->a(Ljava/lang/String;)V
  .line 2
    iget-object v2, p0, Landroidx/recyclerview/widget/e;->b:Ljava/util/ArrayList;
    invoke-virtual { v2 }, Ljava/util/ArrayList;->isEmpty()Z
    move-result v2
  :L1
    if-eqz v2, :L3
  :L2
  .line 3
    iput-wide v0, p0, Landroidx/recyclerview/widget/e;->c:J
  .line 4
    invoke-static { }, Lc/g/g/c;->b()V
    return-void
  :L3
  .line 5
    iget-object v2, p0, Landroidx/recyclerview/widget/e;->b:Ljava/util/ArrayList;
    invoke-virtual { v2 }, Ljava/util/ArrayList;->size()I
    move-result v2
    const/4 v3, 0
    move-wide v4, v0
  :L4
    if-ge v3, v2, :L6
  .line 6
    iget-object v6, p0, Landroidx/recyclerview/widget/e;->b:Ljava/util/ArrayList;
    invoke-virtual { v6, v3 }, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
    move-result-object v6
    check-cast v6, Landroidx/recyclerview/widget/RecyclerView;
  .line 7
    invoke-virtual { v6 }, Landroid/view/ViewGroup;->getWindowVisibility()I
    move-result v7
    if-nez v7, :L5
  .line 8
    invoke-virtual { v6 }, Landroid/view/ViewGroup;->getDrawingTime()J
    move-result-wide v6
    invoke-static { v6, v7, v4, v5 }, Ljava/lang/Math;->max(JJ)J
    move-result-wide v4
  :L5
    add-int/lit8 v3, v3, 1
    goto :L4
  :L6
    cmp-long v2, v4, v0
    if-nez v2, :L7
    goto :L2
  :L7
  .line 9
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;
    invoke-virtual { v2, v4, v5 }, Ljava/util/concurrent/TimeUnit;->toNanos(J)J
    move-result-wide v2
    iget-wide v4, p0, Landroidx/recyclerview/widget/e;->d:J
    add-long/2addr v2, v4
  .line 10
    invoke-virtual { p0, v2, v3 }, Landroidx/recyclerview/widget/e;->g(J)V
  :L8
  .line 11
    iput-wide v0, p0, Landroidx/recyclerview/widget/e;->c:J
  .line 12
    invoke-static { }, Lc/g/g/c;->b()V
    return-void
  :L9
    move-exception v2
  .line 13
    iput-wide v0, p0, Landroidx/recyclerview/widget/e;->c:J
  .line 14
    invoke-static { }, Lc/g/g/c;->b()V
  .line 15
    goto :L11
  :L10
    throw v2
  :L11
    goto :L10
.end method
