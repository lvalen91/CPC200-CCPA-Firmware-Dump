.class public abstract Landroidx/recyclerview/widget/RecyclerView$k;
.super Ljava/lang/Object;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Landroidx/recyclerview/widget/RecyclerView;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 1033
  name = "k"
.end annotation
.annotation system Ldalvik/annotation/MemberClasses;
  value = {
    Landroidx/recyclerview/widget/RecyclerView$k$c;,
    Landroidx/recyclerview/widget/RecyclerView$k$a;,
    Landroidx/recyclerview/widget/RecyclerView$k$b;
  }
.end annotation

.field private a:Landroidx/recyclerview/widget/RecyclerView$k$b;

.field private b:Ljava/util/ArrayList;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "Ljava/util/ArrayList<",
      "Landroidx/recyclerview/widget/RecyclerView$k$a;",
      ">;"
    }
  .end annotation
.end field

.field private c:J

.field private d:J

.field private e:J

.field private f:J

.method public constructor <init>()V
  .registers 3
  .line 1
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    const/4 v0, 0
  .line 2
    iput-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$k;->a:Landroidx/recyclerview/widget/RecyclerView$k$b;
  .line 3
    new-instance v0, Ljava/util/ArrayList;
    invoke-direct { v0 }, Ljava/util/ArrayList;-><init>()V
    iput-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$k;->b:Ljava/util/ArrayList;
    const-wide/16 v0, 120
  .line 4
    iput-wide v0, p0, Landroidx/recyclerview/widget/RecyclerView$k;->c:J
  .line 5
    iput-wide v0, p0, Landroidx/recyclerview/widget/RecyclerView$k;->d:J
    const-wide/16 v0, 250
  .line 6
    iput-wide v0, p0, Landroidx/recyclerview/widget/RecyclerView$k;->e:J
  .line 7
    iput-wide v0, p0, Landroidx/recyclerview/widget/RecyclerView$k;->f:J
    return-void
.end method

.method static e(Landroidx/recyclerview/widget/RecyclerView$c0;)I
  .registers 4
  .line 1
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$c0;->j:I
    and-int/lit8 v0, v0, 14
  .line 2
    invoke-virtual { p0 }, Landroidx/recyclerview/widget/RecyclerView$c0;->t()Z
    move-result v1
    if-eqz v1, :L0
    const/4 p0, 4
    return p0
  :L0
    and-int/lit8 v1, v0, 4
    if-nez v1, :L1
  .line 3
    invoke-virtual { p0 }, Landroidx/recyclerview/widget/RecyclerView$c0;->n()I
    move-result v1
  .line 4
    invoke-virtual { p0 }, Landroidx/recyclerview/widget/RecyclerView$c0;->j()I
    move-result p0
    const/4 v2, -1
    if-eq v1, v2, :L1
    if-eq p0, v2, :L1
    if-eq v1, p0, :L1
    or-int/lit16 v0, v0, 2048
  :L1
    return v0
.end method

.method public abstract a(Landroidx/recyclerview/widget/RecyclerView$c0;Landroidx/recyclerview/widget/RecyclerView$k$c;Landroidx/recyclerview/widget/RecyclerView$k$c;)Z
.end method

.method public abstract b(Landroidx/recyclerview/widget/RecyclerView$c0;Landroidx/recyclerview/widget/RecyclerView$c0;Landroidx/recyclerview/widget/RecyclerView$k$c;Landroidx/recyclerview/widget/RecyclerView$k$c;)Z
.end method

.method public abstract c(Landroidx/recyclerview/widget/RecyclerView$c0;Landroidx/recyclerview/widget/RecyclerView$k$c;Landroidx/recyclerview/widget/RecyclerView$k$c;)Z
.end method

.method public abstract d(Landroidx/recyclerview/widget/RecyclerView$c0;Landroidx/recyclerview/widget/RecyclerView$k$c;Landroidx/recyclerview/widget/RecyclerView$k$c;)Z
.end method

.method public abstract f(Landroidx/recyclerview/widget/RecyclerView$c0;)Z
.end method

.method public g(Landroidx/recyclerview/widget/RecyclerView$c0;Ljava/util/List;)Z
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(",
      "Landroidx/recyclerview/widget/RecyclerView$c0;",
      "Ljava/util/List<",
      "Ljava/lang/Object;",
      ">;)Z"
    }
  .end annotation
  .registers 3
  .line 1
    invoke-virtual { p0, p1 }, Landroidx/recyclerview/widget/RecyclerView$k;->f(Landroidx/recyclerview/widget/RecyclerView$c0;)Z
    move-result p1
    return p1
.end method

.method public final h(Landroidx/recyclerview/widget/RecyclerView$c0;)V
  .registers 3
  .line 1
    invoke-virtual { p0, p1 }, Landroidx/recyclerview/widget/RecyclerView$k;->r(Landroidx/recyclerview/widget/RecyclerView$c0;)V
  .line 2
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$k;->a:Landroidx/recyclerview/widget/RecyclerView$k$b;
    if-eqz v0, :L0
  .line 3
    invoke-interface { v0, p1 }, Landroidx/recyclerview/widget/RecyclerView$k$b;->a(Landroidx/recyclerview/widget/RecyclerView$c0;)V
  :L0
    return-void
.end method

.method public final i()V
  .registers 4
  .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$k;->b:Ljava/util/ArrayList;
    invoke-virtual { v0 }, Ljava/util/ArrayList;->size()I
    move-result v0
    const/4 v1, 0
  :L0
    if-ge v1, v0, :L1
  .line 2
    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView$k;->b:Ljava/util/ArrayList;
    invoke-virtual { v2, v1 }, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
    move-result-object v2
    check-cast v2, Landroidx/recyclerview/widget/RecyclerView$k$a;
    invoke-interface { v2 }, Landroidx/recyclerview/widget/RecyclerView$k$a;->a()V
    add-int/lit8 v1, v1, 1
    goto :L0
  :L1
  .line 3
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$k;->b:Ljava/util/ArrayList;
    invoke-virtual { v0 }, Ljava/util/ArrayList;->clear()V
    return-void
.end method

.method public abstract j(Landroidx/recyclerview/widget/RecyclerView$c0;)V
.end method

.method public abstract k()V
.end method

.method public l()J
  .registers 3
  .line 1
    iget-wide v0, p0, Landroidx/recyclerview/widget/RecyclerView$k;->c:J
    return-wide v0
.end method

.method public m()J
  .registers 3
  .line 1
    iget-wide v0, p0, Landroidx/recyclerview/widget/RecyclerView$k;->f:J
    return-wide v0
.end method

.method public n()J
  .registers 3
  .line 1
    iget-wide v0, p0, Landroidx/recyclerview/widget/RecyclerView$k;->e:J
    return-wide v0
.end method

.method public o()J
  .registers 3
  .line 1
    iget-wide v0, p0, Landroidx/recyclerview/widget/RecyclerView$k;->d:J
    return-wide v0
.end method

.method public abstract p()Z
.end method

.method public q()Landroidx/recyclerview/widget/RecyclerView$k$c;
  .registers 2
  .line 1
    new-instance v0, Landroidx/recyclerview/widget/RecyclerView$k$c;
    invoke-direct { v0 }, Landroidx/recyclerview/widget/RecyclerView$k$c;-><init>()V
    return-object v0
.end method

.method public r(Landroidx/recyclerview/widget/RecyclerView$c0;)V
  .registers 2
    return-void
.end method

.method public s(Landroidx/recyclerview/widget/RecyclerView$z;Landroidx/recyclerview/widget/RecyclerView$c0;)Landroidx/recyclerview/widget/RecyclerView$k$c;
  .registers 3
  .line 1
    invoke-virtual { p0 }, Landroidx/recyclerview/widget/RecyclerView$k;->q()Landroidx/recyclerview/widget/RecyclerView$k$c;
    move-result-object p1
    invoke-virtual { p1, p2 }, Landroidx/recyclerview/widget/RecyclerView$k$c;->a(Landroidx/recyclerview/widget/RecyclerView$c0;)Landroidx/recyclerview/widget/RecyclerView$k$c;
    return-object p1
.end method

.method public t(Landroidx/recyclerview/widget/RecyclerView$z;Landroidx/recyclerview/widget/RecyclerView$c0;ILjava/util/List;)Landroidx/recyclerview/widget/RecyclerView$k$c;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(",
      "Landroidx/recyclerview/widget/RecyclerView$z;",
      "Landroidx/recyclerview/widget/RecyclerView$c0;",
      "I",
      "Ljava/util/List<",
      "Ljava/lang/Object;",
      ">;)",
      "Landroidx/recyclerview/widget/RecyclerView$k$c;"
    }
  .end annotation
  .registers 5
  .line 1
    invoke-virtual { p0 }, Landroidx/recyclerview/widget/RecyclerView$k;->q()Landroidx/recyclerview/widget/RecyclerView$k$c;
    move-result-object p1
    invoke-virtual { p1, p2 }, Landroidx/recyclerview/widget/RecyclerView$k$c;->a(Landroidx/recyclerview/widget/RecyclerView$c0;)Landroidx/recyclerview/widget/RecyclerView$k$c;
    return-object p1
.end method

.method public abstract u()V
.end method

.method v(Landroidx/recyclerview/widget/RecyclerView$k$b;)V
  .registers 2
  .line 1
    iput-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$k;->a:Landroidx/recyclerview/widget/RecyclerView$k$b;
    return-void
.end method
