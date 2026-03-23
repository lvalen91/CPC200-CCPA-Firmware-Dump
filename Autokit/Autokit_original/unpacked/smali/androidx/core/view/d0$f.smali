.class Landroidx/core/view/d0$f;
.super Ljava/lang/Object;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Landroidx/core/view/d0;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 10
  name = "f"
.end annotation

.field private final a:Landroidx/core/view/d0;

.field b:[Lc/g/d/b;

.method constructor <init>()V
  .registers 3
  .line 1
    new-instance v0, Landroidx/core/view/d0;
    const/4 v1, 0
    invoke-direct { v0, v1 }, Landroidx/core/view/d0;-><init>(Landroidx/core/view/d0;)V
    invoke-direct { p0, v0 }, Landroidx/core/view/d0$f;-><init>(Landroidx/core/view/d0;)V
    return-void
.end method

.method constructor <init>(Landroidx/core/view/d0;)V
  .registers 2
  .line 2
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
  .line 3
    iput-object p1, p0, Landroidx/core/view/d0$f;->a:Landroidx/core/view/d0;
    return-void
.end method

.method protected final a()V
  .registers 4
  .line 1
    iget-object v0, p0, Landroidx/core/view/d0$f;->b:[Lc/g/d/b;
    if-eqz v0, :L5
    const/4 v1, 1
  .line 2
    invoke-static { v1 }, Landroidx/core/view/d0$m;->a(I)I
    move-result v1
    aget-object v0, v0, v1
  .line 3
    iget-object v1, p0, Landroidx/core/view/d0$f;->b:[Lc/g/d/b;
    const/4 v2, 2
    invoke-static { v2 }, Landroidx/core/view/d0$m;->a(I)I
    move-result v2
    aget-object v1, v1, v2
    if-eqz v0, :L0
    if-eqz v1, :L0
  .line 4
    invoke-static { v0, v1 }, Lc/g/d/b;->a(Lc/g/d/b;Lc/g/d/b;)Lc/g/d/b;
    move-result-object v0
    invoke-virtual { p0, v0 }, Landroidx/core/view/d0$f;->f(Lc/g/d/b;)V
    goto :L2
  :L0
    if-eqz v0, :L1
  .line 5
    invoke-virtual { p0, v0 }, Landroidx/core/view/d0$f;->f(Lc/g/d/b;)V
    goto :L2
  :L1
    if-eqz v1, :L2
  .line 6
    invoke-virtual { p0, v1 }, Landroidx/core/view/d0$f;->f(Lc/g/d/b;)V
  :L2
  .line 7
    iget-object v0, p0, Landroidx/core/view/d0$f;->b:[Lc/g/d/b;
    const/16 v1, 16
    invoke-static { v1 }, Landroidx/core/view/d0$m;->a(I)I
    move-result v1
    aget-object v0, v0, v1
    if-eqz v0, :L3
  .line 8
    invoke-virtual { p0, v0 }, Landroidx/core/view/d0$f;->e(Lc/g/d/b;)V
  :L3
  .line 9
    iget-object v0, p0, Landroidx/core/view/d0$f;->b:[Lc/g/d/b;
    const/16 v1, 32
    invoke-static { v1 }, Landroidx/core/view/d0$m;->a(I)I
    move-result v1
    aget-object v0, v0, v1
    if-eqz v0, :L4
  .line 10
    invoke-virtual { p0, v0 }, Landroidx/core/view/d0$f;->c(Lc/g/d/b;)V
  :L4
  .line 11
    iget-object v0, p0, Landroidx/core/view/d0$f;->b:[Lc/g/d/b;
    const/16 v1, 64
    invoke-static { v1 }, Landroidx/core/view/d0$m;->a(I)I
    move-result v1
    aget-object v0, v0, v1
    if-eqz v0, :L5
  .line 12
    invoke-virtual { p0, v0 }, Landroidx/core/view/d0$f;->g(Lc/g/d/b;)V
  :L5
    return-void
.end method

.method b()Landroidx/core/view/d0;
  .registers 2
  .line 1
    invoke-virtual { p0 }, Landroidx/core/view/d0$f;->a()V
  .line 2
    iget-object v0, p0, Landroidx/core/view/d0$f;->a:Landroidx/core/view/d0;
    return-object v0
.end method

.method c(Lc/g/d/b;)V
  .registers 2
    return-void
.end method

.method d(Lc/g/d/b;)V
  .registers 2
    return-void
.end method

.method e(Lc/g/d/b;)V
  .registers 2
    return-void
.end method

.method f(Lc/g/d/b;)V
  .registers 2
    return-void
.end method

.method g(Lc/g/d/b;)V
  .registers 2
    return-void
.end method
