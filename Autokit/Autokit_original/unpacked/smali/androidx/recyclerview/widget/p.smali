.class Landroidx/recyclerview/widget/p;
.super Ljava/lang/Object;
.source "SourceFile"

.annotation system Ldalvik/annotation/MemberClasses;
  value = {
    Landroidx/recyclerview/widget/p$a;,
    Landroidx/recyclerview/widget/p$b;
  }
.end annotation

.field final a:Lc/d/g;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "Lc/d/g<",
      "Landroidx/recyclerview/widget/RecyclerView$c0;",
      "Landroidx/recyclerview/widget/p$a;",
      ">;"
    }
  .end annotation
.end field

.field final b:Lc/d/d;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "Lc/d/d<",
      "Landroidx/recyclerview/widget/RecyclerView$c0;",
      ">;"
    }
  .end annotation
.end field

.method constructor <init>()V
  .registers 2
  .line 1
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
  .line 2
    new-instance v0, Lc/d/g;
    invoke-direct { v0 }, Lc/d/g;-><init>()V
    iput-object v0, p0, Landroidx/recyclerview/widget/p;->a:Lc/d/g;
  .line 3
    new-instance v0, Lc/d/d;
    invoke-direct { v0 }, Lc/d/d;-><init>()V
    iput-object v0, p0, Landroidx/recyclerview/widget/p;->b:Lc/d/d;
    return-void
.end method

.method private l(Landroidx/recyclerview/widget/RecyclerView$c0;I)Landroidx/recyclerview/widget/RecyclerView$k$c;
  .registers 7
  .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/p;->a:Lc/d/g;
    invoke-virtual { v0, p1 }, Lc/d/g;->f(Ljava/lang/Object;)I
    move-result p1
    const/4 v0, 0
    if-gez p1, :L0
    return-object v0
  :L0
  .line 2
    iget-object v1, p0, Landroidx/recyclerview/widget/p;->a:Lc/d/g;
    invoke-virtual { v1, p1 }, Lc/d/g;->m(I)Ljava/lang/Object;
    move-result-object v1
    check-cast v1, Landroidx/recyclerview/widget/p$a;
    if-eqz v1, :L5
  .line 3
    iget v2, v1, Landroidx/recyclerview/widget/p$a;->a:I
    and-int v3, v2, p2
    if-eqz v3, :L5
    xor-int/lit8 v0, p2, -1
    and-int/2addr v0, v2
  .line 4
    iput v0, v1, Landroidx/recyclerview/widget/p$a;->a:I
    const/4 v0, 4
    if-ne p2, v0, :L1
  .line 5
    iget-object p2, v1, Landroidx/recyclerview/widget/p$a;->b:Landroidx/recyclerview/widget/RecyclerView$k$c;
    goto :L2
  :L1
    const/16 v0, 8
    if-ne p2, v0, :L4
  .line 6
    iget-object p2, v1, Landroidx/recyclerview/widget/p$a;->c:Landroidx/recyclerview/widget/RecyclerView$k$c;
  :L2
  .line 7
    iget v0, v1, Landroidx/recyclerview/widget/p$a;->a:I
    and-int/lit8 v0, v0, 12
    if-nez v0, :L3
  .line 8
    iget-object v0, p0, Landroidx/recyclerview/widget/p;->a:Lc/d/g;
    invoke-virtual { v0, p1 }, Lc/d/g;->k(I)Ljava/lang/Object;
  .line 9
    invoke-static { v1 }, Landroidx/recyclerview/widget/p$a;->c(Landroidx/recyclerview/widget/p$a;)V
  :L3
    return-object p2
  :L4
  .line 10
    new-instance p1, Ljava/lang/IllegalArgumentException;
    const-string p2, "Must provide flag PRE or POST"
    invoke-direct { p1, p2 }, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
    throw p1
  :L5
    return-object v0
.end method

.method a(Landroidx/recyclerview/widget/RecyclerView$c0;Landroidx/recyclerview/widget/RecyclerView$k$c;)V
  .registers 5
  .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/p;->a:Lc/d/g;
    invoke-virtual { v0, p1 }, Lc/d/g;->get(Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Landroidx/recyclerview/widget/p$a;
    if-nez v0, :L0
  .line 2
    invoke-static { }, Landroidx/recyclerview/widget/p$a;->b()Landroidx/recyclerview/widget/p$a;
    move-result-object v0
  .line 3
    iget-object v1, p0, Landroidx/recyclerview/widget/p;->a:Lc/d/g;
    invoke-virtual { v1, p1, v0 }, Lc/d/g;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
  :L0
  .line 4
    iget p1, v0, Landroidx/recyclerview/widget/p$a;->a:I
    or-int/lit8 p1, p1, 2
    iput p1, v0, Landroidx/recyclerview/widget/p$a;->a:I
  .line 5
    iput-object p2, v0, Landroidx/recyclerview/widget/p$a;->b:Landroidx/recyclerview/widget/RecyclerView$k$c;
    return-void
.end method

.method b(Landroidx/recyclerview/widget/RecyclerView$c0;)V
  .registers 4
  .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/p;->a:Lc/d/g;
    invoke-virtual { v0, p1 }, Lc/d/g;->get(Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Landroidx/recyclerview/widget/p$a;
    if-nez v0, :L0
  .line 2
    invoke-static { }, Landroidx/recyclerview/widget/p$a;->b()Landroidx/recyclerview/widget/p$a;
    move-result-object v0
  .line 3
    iget-object v1, p0, Landroidx/recyclerview/widget/p;->a:Lc/d/g;
    invoke-virtual { v1, p1, v0 }, Lc/d/g;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
  :L0
  .line 4
    iget p1, v0, Landroidx/recyclerview/widget/p$a;->a:I
    or-int/lit8 p1, p1, 1
    iput p1, v0, Landroidx/recyclerview/widget/p$a;->a:I
    return-void
.end method

.method c(JLandroidx/recyclerview/widget/RecyclerView$c0;)V
  .registers 5
  .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/p;->b:Lc/d/d;
    invoke-virtual { v0, p1, p2, p3 }, Lc/d/d;->i(JLjava/lang/Object;)V
    return-void
.end method

.method d(Landroidx/recyclerview/widget/RecyclerView$c0;Landroidx/recyclerview/widget/RecyclerView$k$c;)V
  .registers 5
  .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/p;->a:Lc/d/g;
    invoke-virtual { v0, p1 }, Lc/d/g;->get(Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Landroidx/recyclerview/widget/p$a;
    if-nez v0, :L0
  .line 2
    invoke-static { }, Landroidx/recyclerview/widget/p$a;->b()Landroidx/recyclerview/widget/p$a;
    move-result-object v0
  .line 3
    iget-object v1, p0, Landroidx/recyclerview/widget/p;->a:Lc/d/g;
    invoke-virtual { v1, p1, v0 }, Lc/d/g;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
  :L0
  .line 4
    iput-object p2, v0, Landroidx/recyclerview/widget/p$a;->c:Landroidx/recyclerview/widget/RecyclerView$k$c;
  .line 5
    iget p1, v0, Landroidx/recyclerview/widget/p$a;->a:I
    or-int/lit8 p1, p1, 8
    iput p1, v0, Landroidx/recyclerview/widget/p$a;->a:I
    return-void
.end method

.method e(Landroidx/recyclerview/widget/RecyclerView$c0;Landroidx/recyclerview/widget/RecyclerView$k$c;)V
  .registers 5
  .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/p;->a:Lc/d/g;
    invoke-virtual { v0, p1 }, Lc/d/g;->get(Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Landroidx/recyclerview/widget/p$a;
    if-nez v0, :L0
  .line 2
    invoke-static { }, Landroidx/recyclerview/widget/p$a;->b()Landroidx/recyclerview/widget/p$a;
    move-result-object v0
  .line 3
    iget-object v1, p0, Landroidx/recyclerview/widget/p;->a:Lc/d/g;
    invoke-virtual { v1, p1, v0 }, Lc/d/g;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
  :L0
  .line 4
    iput-object p2, v0, Landroidx/recyclerview/widget/p$a;->b:Landroidx/recyclerview/widget/RecyclerView$k$c;
  .line 5
    iget p1, v0, Landroidx/recyclerview/widget/p$a;->a:I
    or-int/lit8 p1, p1, 4
    iput p1, v0, Landroidx/recyclerview/widget/p$a;->a:I
    return-void
.end method

.method f()V
  .registers 2
  .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/p;->a:Lc/d/g;
    invoke-virtual { v0 }, Lc/d/g;->clear()V
  .line 2
    iget-object v0, p0, Landroidx/recyclerview/widget/p;->b:Lc/d/d;
    invoke-virtual { v0 }, Lc/d/d;->b()V
    return-void
.end method

.method g(J)Landroidx/recyclerview/widget/RecyclerView$c0;
  .registers 4
  .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/p;->b:Lc/d/d;
    invoke-virtual { v0, p1, p2 }, Lc/d/d;->e(J)Ljava/lang/Object;
    move-result-object p1
    check-cast p1, Landroidx/recyclerview/widget/RecyclerView$c0;
    return-object p1
.end method

.method h(Landroidx/recyclerview/widget/RecyclerView$c0;)Z
  .registers 3
  .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/p;->a:Lc/d/g;
    invoke-virtual { v0, p1 }, Lc/d/g;->get(Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object p1
    check-cast p1, Landroidx/recyclerview/widget/p$a;
    const/4 v0, 1
    if-eqz p1, :L0
  .line 2
    iget p1, p1, Landroidx/recyclerview/widget/p$a;->a:I
    and-int/2addr p1, v0
    if-eqz p1, :L0
    goto :L1
  :L0
    const/4 v0, 0
  :L1
    return v0
.end method

.method i(Landroidx/recyclerview/widget/RecyclerView$c0;)Z
  .registers 3
  .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/p;->a:Lc/d/g;
    invoke-virtual { v0, p1 }, Lc/d/g;->get(Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object p1
    check-cast p1, Landroidx/recyclerview/widget/p$a;
    if-eqz p1, :L0
  .line 2
    iget p1, p1, Landroidx/recyclerview/widget/p$a;->a:I
    and-int/lit8 p1, p1, 4
    if-eqz p1, :L0
    const/4 p1, 1
    goto :L1
  :L0
    const/4 p1, 0
  :L1
    return p1
.end method

.method j()V
  .registers 1
  .line 1
    invoke-static { }, Landroidx/recyclerview/widget/p$a;->a()V
    return-void
.end method

.method public k(Landroidx/recyclerview/widget/RecyclerView$c0;)V
  .registers 2
  .line 1
    invoke-virtual { p0, p1 }, Landroidx/recyclerview/widget/p;->p(Landroidx/recyclerview/widget/RecyclerView$c0;)V
    return-void
.end method

.method m(Landroidx/recyclerview/widget/RecyclerView$c0;)Landroidx/recyclerview/widget/RecyclerView$k$c;
  .registers 3
    const/16 v0, 8
  .line 1
    invoke-direct { p0, p1, v0 }, Landroidx/recyclerview/widget/p;->l(Landroidx/recyclerview/widget/RecyclerView$c0;I)Landroidx/recyclerview/widget/RecyclerView$k$c;
    move-result-object p1
    return-object p1
.end method

.method n(Landroidx/recyclerview/widget/RecyclerView$c0;)Landroidx/recyclerview/widget/RecyclerView$k$c;
  .registers 3
    const/4 v0, 4
  .line 1
    invoke-direct { p0, p1, v0 }, Landroidx/recyclerview/widget/p;->l(Landroidx/recyclerview/widget/RecyclerView$c0;I)Landroidx/recyclerview/widget/RecyclerView$k$c;
    move-result-object p1
    return-object p1
.end method

.method o(Landroidx/recyclerview/widget/p$b;)V
  .registers 8
  .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/p;->a:Lc/d/g;
    invoke-virtual { v0 }, Lc/d/g;->size()I
    move-result v0
    add-int/lit8 v0, v0, -1
  :L0
    if-ltz v0, :L8
  .line 2
    iget-object v1, p0, Landroidx/recyclerview/widget/p;->a:Lc/d/g;
    invoke-virtual { v1, v0 }, Lc/d/g;->i(I)Ljava/lang/Object;
    move-result-object v1
    check-cast v1, Landroidx/recyclerview/widget/RecyclerView$c0;
  .line 3
    iget-object v2, p0, Landroidx/recyclerview/widget/p;->a:Lc/d/g;
    invoke-virtual { v2, v0 }, Lc/d/g;->k(I)Ljava/lang/Object;
    move-result-object v2
    check-cast v2, Landroidx/recyclerview/widget/p$a;
  .line 4
    iget v3, v2, Landroidx/recyclerview/widget/p$a;->a:I
    and-int/lit8 v4, v3, 3
    const/4 v5, 3
    if-ne v4, v5, :L1
  .line 5
    invoke-interface { p1, v1 }, Landroidx/recyclerview/widget/p$b;->a(Landroidx/recyclerview/widget/RecyclerView$c0;)V
    goto :L7
  :L1
    and-int/lit8 v4, v3, 1
    if-eqz v4, :L3
  .line 6
    iget-object v3, v2, Landroidx/recyclerview/widget/p$a;->b:Landroidx/recyclerview/widget/RecyclerView$k$c;
    if-nez v3, :L2
  .line 7
    invoke-interface { p1, v1 }, Landroidx/recyclerview/widget/p$b;->a(Landroidx/recyclerview/widget/RecyclerView$c0;)V
    goto :L7
  :L2
  .line 8
    iget-object v4, v2, Landroidx/recyclerview/widget/p$a;->c:Landroidx/recyclerview/widget/RecyclerView$k$c;
    invoke-interface { p1, v1, v3, v4 }, Landroidx/recyclerview/widget/p$b;->c(Landroidx/recyclerview/widget/RecyclerView$c0;Landroidx/recyclerview/widget/RecyclerView$k$c;Landroidx/recyclerview/widget/RecyclerView$k$c;)V
    goto :L7
  :L3
    and-int/lit8 v4, v3, 14
    const/16 v5, 14
    if-ne v4, v5, :L4
  .line 9
    iget-object v3, v2, Landroidx/recyclerview/widget/p$a;->b:Landroidx/recyclerview/widget/RecyclerView$k$c;
    iget-object v4, v2, Landroidx/recyclerview/widget/p$a;->c:Landroidx/recyclerview/widget/RecyclerView$k$c;
    invoke-interface { p1, v1, v3, v4 }, Landroidx/recyclerview/widget/p$b;->b(Landroidx/recyclerview/widget/RecyclerView$c0;Landroidx/recyclerview/widget/RecyclerView$k$c;Landroidx/recyclerview/widget/RecyclerView$k$c;)V
    goto :L7
  :L4
    and-int/lit8 v4, v3, 12
    const/16 v5, 12
    if-ne v4, v5, :L5
  .line 10
    iget-object v3, v2, Landroidx/recyclerview/widget/p$a;->b:Landroidx/recyclerview/widget/RecyclerView$k$c;
    iget-object v4, v2, Landroidx/recyclerview/widget/p$a;->c:Landroidx/recyclerview/widget/RecyclerView$k$c;
    invoke-interface { p1, v1, v3, v4 }, Landroidx/recyclerview/widget/p$b;->d(Landroidx/recyclerview/widget/RecyclerView$c0;Landroidx/recyclerview/widget/RecyclerView$k$c;Landroidx/recyclerview/widget/RecyclerView$k$c;)V
    goto :L7
  :L5
    and-int/lit8 v4, v3, 4
    if-eqz v4, :L6
  .line 11
    iget-object v3, v2, Landroidx/recyclerview/widget/p$a;->b:Landroidx/recyclerview/widget/RecyclerView$k$c;
    const/4 v4, 0
    invoke-interface { p1, v1, v3, v4 }, Landroidx/recyclerview/widget/p$b;->c(Landroidx/recyclerview/widget/RecyclerView$c0;Landroidx/recyclerview/widget/RecyclerView$k$c;Landroidx/recyclerview/widget/RecyclerView$k$c;)V
    goto :L7
  :L6
    and-int/lit8 v3, v3, 8
    if-eqz v3, :L7
  .line 12
    iget-object v3, v2, Landroidx/recyclerview/widget/p$a;->b:Landroidx/recyclerview/widget/RecyclerView$k$c;
    iget-object v4, v2, Landroidx/recyclerview/widget/p$a;->c:Landroidx/recyclerview/widget/RecyclerView$k$c;
    invoke-interface { p1, v1, v3, v4 }, Landroidx/recyclerview/widget/p$b;->b(Landroidx/recyclerview/widget/RecyclerView$c0;Landroidx/recyclerview/widget/RecyclerView$k$c;Landroidx/recyclerview/widget/RecyclerView$k$c;)V
  :L7
  .line 13
    invoke-static { v2 }, Landroidx/recyclerview/widget/p$a;->c(Landroidx/recyclerview/widget/p$a;)V
    add-int/lit8 v0, v0, -1
    goto :L0
  :L8
    return-void
.end method

.method p(Landroidx/recyclerview/widget/RecyclerView$c0;)V
  .registers 3
  .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/p;->a:Lc/d/g;
    invoke-virtual { v0, p1 }, Lc/d/g;->get(Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object p1
    check-cast p1, Landroidx/recyclerview/widget/p$a;
    if-nez p1, :L0
    return-void
  :L0
  .line 2
    iget v0, p1, Landroidx/recyclerview/widget/p$a;->a:I
    and-int/lit8 v0, v0, -2
    iput v0, p1, Landroidx/recyclerview/widget/p$a;->a:I
    return-void
.end method

.method q(Landroidx/recyclerview/widget/RecyclerView$c0;)V
  .registers 4
  .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/p;->b:Lc/d/d;
    invoke-virtual { v0 }, Lc/d/d;->l()I
    move-result v0
    add-int/lit8 v0, v0, -1
  :L0
    if-ltz v0, :L2
  .line 2
    iget-object v1, p0, Landroidx/recyclerview/widget/p;->b:Lc/d/d;
    invoke-virtual { v1, v0 }, Lc/d/d;->m(I)Ljava/lang/Object;
    move-result-object v1
    if-ne p1, v1, :L1
  .line 3
    iget-object v1, p0, Landroidx/recyclerview/widget/p;->b:Lc/d/d;
    invoke-virtual { v1, v0 }, Lc/d/d;->k(I)V
    goto :L2
  :L1
    add-int/lit8 v0, v0, -1
    goto :L0
  :L2
  .line 4
    iget-object v0, p0, Landroidx/recyclerview/widget/p;->a:Lc/d/g;
    invoke-virtual { v0, p1 }, Lc/d/g;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object p1
    check-cast p1, Landroidx/recyclerview/widget/p$a;
    if-eqz p1, :L3
  .line 5
    invoke-static { p1 }, Landroidx/recyclerview/widget/p$a;->c(Landroidx/recyclerview/widget/p$a;)V
  :L3
    return-void
.end method
