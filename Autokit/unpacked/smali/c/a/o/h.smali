.class public Lc/a/o/h;
.super Ljava/lang/Object;
.source "SourceFile"

.field final a:Ljava/util/ArrayList;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "Ljava/util/ArrayList<",
      "Landroidx/core/view/z;",
      ">;"
    }
  .end annotation
.end field

.field private b:J

.field private c:Landroid/view/animation/Interpolator;

.field d:Landroidx/core/view/a0;

.field private e:Z

.field private final f:Landroidx/core/view/b0;

.method public constructor <init>()V
  .registers 3
  .line 1
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    const-wide/16 v0, -1
  .line 2
    iput-wide v0, p0, Lc/a/o/h;->b:J
  .line 3
    new-instance v0, Lc/a/o/h$a;
    invoke-direct { v0, p0 }, Lc/a/o/h$a;-><init>(Lc/a/o/h;)V
    iput-object v0, p0, Lc/a/o/h;->f:Landroidx/core/view/b0;
  .line 4
    new-instance v0, Ljava/util/ArrayList;
    invoke-direct { v0 }, Ljava/util/ArrayList;-><init>()V
    iput-object v0, p0, Lc/a/o/h;->a:Ljava/util/ArrayList;
    return-void
.end method

.method public a()V
  .registers 3
  .line 1
    iget-boolean v0, p0, Lc/a/o/h;->e:Z
    if-nez v0, :L0
    return-void
  :L0
  .line 2
    iget-object v0, p0, Lc/a/o/h;->a:Ljava/util/ArrayList;
    invoke-virtual { v0 }, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
    move-result-object v0
  :L1
    invoke-interface { v0 }, Ljava/util/Iterator;->hasNext()Z
    move-result v1
    if-eqz v1, :L2
    invoke-interface { v0 }, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object v1
    check-cast v1, Landroidx/core/view/z;
  .line 3
    invoke-virtual { v1 }, Landroidx/core/view/z;->b()V
    goto :L1
  :L2
    const/4 v0, 0
  .line 4
    iput-boolean v0, p0, Lc/a/o/h;->e:Z
    return-void
.end method

.method b()V
  .registers 2
    const/4 v0, 0
  .line 1
    iput-boolean v0, p0, Lc/a/o/h;->e:Z
    return-void
.end method

.method public c(Landroidx/core/view/z;)Lc/a/o/h;
  .registers 3
  .line 1
    iget-boolean v0, p0, Lc/a/o/h;->e:Z
    if-nez v0, :L0
  .line 2
    iget-object v0, p0, Lc/a/o/h;->a:Ljava/util/ArrayList;
    invoke-virtual { v0, p1 }, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
  :L0
    return-object p0
.end method

.method public d(Landroidx/core/view/z;Landroidx/core/view/z;)Lc/a/o/h;
  .registers 5
  .line 1
    iget-object v0, p0, Lc/a/o/h;->a:Ljava/util/ArrayList;
    invoke-virtual { v0, p1 }, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
  .line 2
    invoke-virtual { p1 }, Landroidx/core/view/z;->c()J
    move-result-wide v0
    invoke-virtual { p2, v0, v1 }, Landroidx/core/view/z;->h(J)Landroidx/core/view/z;
  .line 3
    iget-object p1, p0, Lc/a/o/h;->a:Ljava/util/ArrayList;
    invoke-virtual { p1, p2 }, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    return-object p0
.end method

.method public e(J)Lc/a/o/h;
  .registers 4
  .line 1
    iget-boolean v0, p0, Lc/a/o/h;->e:Z
    if-nez v0, :L0
  .line 2
    iput-wide p1, p0, Lc/a/o/h;->b:J
  :L0
    return-object p0
.end method

.method public f(Landroid/view/animation/Interpolator;)Lc/a/o/h;
  .registers 3
  .line 1
    iget-boolean v0, p0, Lc/a/o/h;->e:Z
    if-nez v0, :L0
  .line 2
    iput-object p1, p0, Lc/a/o/h;->c:Landroid/view/animation/Interpolator;
  :L0
    return-object p0
.end method

.method public g(Landroidx/core/view/a0;)Lc/a/o/h;
  .registers 3
  .line 1
    iget-boolean v0, p0, Lc/a/o/h;->e:Z
    if-nez v0, :L0
  .line 2
    iput-object p1, p0, Lc/a/o/h;->d:Landroidx/core/view/a0;
  :L0
    return-object p0
.end method

.method public h()V
  .registers 8
  .line 1
    iget-boolean v0, p0, Lc/a/o/h;->e:Z
    if-eqz v0, :L0
    return-void
  :L0
  .line 2
    iget-object v0, p0, Lc/a/o/h;->a:Ljava/util/ArrayList;
    invoke-virtual { v0 }, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
    move-result-object v0
  :L1
    invoke-interface { v0 }, Ljava/util/Iterator;->hasNext()Z
    move-result v1
    if-eqz v1, :L5
    invoke-interface { v0 }, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object v1
    check-cast v1, Landroidx/core/view/z;
  .line 3
    iget-wide v2, p0, Lc/a/o/h;->b:J
    const-wide/16 v4, 0
    cmp-long v6, v2, v4
    if-ltz v6, :L2
  .line 4
    invoke-virtual { v1, v2, v3 }, Landroidx/core/view/z;->d(J)Landroidx/core/view/z;
  :L2
  .line 5
    iget-object v2, p0, Lc/a/o/h;->c:Landroid/view/animation/Interpolator;
    if-eqz v2, :L3
  .line 6
    invoke-virtual { v1, v2 }, Landroidx/core/view/z;->e(Landroid/view/animation/Interpolator;)Landroidx/core/view/z;
  :L3
  .line 7
    iget-object v2, p0, Lc/a/o/h;->d:Landroidx/core/view/a0;
    if-eqz v2, :L4
  .line 8
    iget-object v2, p0, Lc/a/o/h;->f:Landroidx/core/view/b0;
    invoke-virtual { v1, v2 }, Landroidx/core/view/z;->f(Landroidx/core/view/a0;)Landroidx/core/view/z;
  :L4
  .line 9
    invoke-virtual { v1 }, Landroidx/core/view/z;->j()V
    goto :L1
  :L5
    const/4 v0, 1
  .line 10
    iput-boolean v0, p0, Lc/a/o/h;->e:Z
    return-void
.end method
