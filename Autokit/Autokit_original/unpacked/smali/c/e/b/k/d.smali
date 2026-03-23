.class public Lc/e/b/k/d;
.super Ljava/lang/Object;
.source "SourceFile"

.annotation system Ldalvik/annotation/MemberClasses;
  value = {
    Lc/e/b/k/d$b;
  }
.end annotation

.field private a:Ljava/util/HashSet;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "Ljava/util/HashSet<",
      "Lc/e/b/k/d;",
      ">;"
    }
  .end annotation
.end field

.field private b:I

.field private c:Z

.field public final d:Lc/e/b/k/e;

.field public final e:Lc/e/b/k/d$b;

.field public f:Lc/e/b/k/d;

.field public g:I

.field h:I

.field i:Lc/e/b/i;

.method public constructor <init>(Lc/e/b/k/e;Lc/e/b/k/d$b;)V
  .registers 4
  .line 1
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    const/4 v0, 0
  .line 2
    iput-object v0, p0, Lc/e/b/k/d;->a:Ljava/util/HashSet;
    const/4 v0, 0
  .line 3
    iput v0, p0, Lc/e/b/k/d;->g:I
    const/4 v0, -1
  .line 4
    iput v0, p0, Lc/e/b/k/d;->h:I
  .line 5
    iput-object p1, p0, Lc/e/b/k/d;->d:Lc/e/b/k/e;
  .line 6
    iput-object p2, p0, Lc/e/b/k/d;->e:Lc/e/b/k/d$b;
    return-void
.end method

.method public a(Lc/e/b/k/d;IIZ)Z
  .registers 7
    const/4 v0, 1
    if-nez p1, :L0
  .line 1
    invoke-virtual { p0 }, Lc/e/b/k/d;->p()V
    return v0
  :L0
    const/4 v1, 0
    if-nez p4, :L1
  .line 2
    invoke-virtual { p0, p1 }, Lc/e/b/k/d;->o(Lc/e/b/k/d;)Z
    move-result p4
    if-nez p4, :L1
    return v1
  :L1
  .line 3
    iput-object p1, p0, Lc/e/b/k/d;->f:Lc/e/b/k/d;
  .line 4
    iget-object p4, p1, Lc/e/b/k/d;->a:Ljava/util/HashSet;
    if-nez p4, :L2
  .line 5
    new-instance p4, Ljava/util/HashSet;
    invoke-direct { p4 }, Ljava/util/HashSet;-><init>()V
    iput-object p4, p1, Lc/e/b/k/d;->a:Ljava/util/HashSet;
  :L2
  .line 6
    iget-object p1, p0, Lc/e/b/k/d;->f:Lc/e/b/k/d;
    iget-object p1, p1, Lc/e/b/k/d;->a:Ljava/util/HashSet;
    if-eqz p1, :L3
  .line 7
    invoke-virtual { p1, p0 }, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
  :L3
    if-lez p2, :L4
  .line 8
    iput p2, p0, Lc/e/b/k/d;->g:I
    goto :L5
  :L4
  .line 9
    iput v1, p0, Lc/e/b/k/d;->g:I
  :L5
  .line 10
    iput p3, p0, Lc/e/b/k/d;->h:I
    return v0
.end method

.method public b(ILjava/util/ArrayList;Lc/e/b/k/m/o;)V
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(I",
      "Ljava/util/ArrayList<",
      "Lc/e/b/k/m/o;",
      ">;",
      "Lc/e/b/k/m/o;",
      ")V"
    }
  .end annotation
  .registers 6
  .line 1
    iget-object v0, p0, Lc/e/b/k/d;->a:Ljava/util/HashSet;
    if-eqz v0, :L1
  .line 2
    invoke-virtual { v0 }, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;
    move-result-object v0
  :L0
    invoke-interface { v0 }, Ljava/util/Iterator;->hasNext()Z
    move-result v1
    if-eqz v1, :L1
    invoke-interface { v0 }, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object v1
    check-cast v1, Lc/e/b/k/d;
  .line 3
    iget-object v1, v1, Lc/e/b/k/d;->d:Lc/e/b/k/e;
    invoke-static { v1, p1, p2, p3 }, Lc/e/b/k/m/i;->a(Lc/e/b/k/e;ILjava/util/ArrayList;Lc/e/b/k/m/o;)Lc/e/b/k/m/o;
    goto :L0
  :L1
    return-void
.end method

.method public c()Ljava/util/HashSet;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "()",
      "Ljava/util/HashSet<",
      "Lc/e/b/k/d;",
      ">;"
    }
  .end annotation
  .registers 2
  .line 1
    iget-object v0, p0, Lc/e/b/k/d;->a:Ljava/util/HashSet;
    return-object v0
.end method

.method public d()I
  .registers 2
  .line 1
    iget-boolean v0, p0, Lc/e/b/k/d;->c:Z
    if-nez v0, :L0
    const/4 v0, 0
    return v0
  :L0
  .line 2
    iget v0, p0, Lc/e/b/k/d;->b:I
    return v0
.end method

.method public e()I
  .registers 4
  .line 1
    iget-object v0, p0, Lc/e/b/k/d;->d:Lc/e/b/k/e;
    invoke-virtual { v0 }, Lc/e/b/k/e;->Q()I
    move-result v0
    const/16 v1, 8
    if-ne v0, v1, :L0
    const/4 v0, 0
    return v0
  :L0
  .line 2
    iget v0, p0, Lc/e/b/k/d;->h:I
    const/4 v2, -1
    if-le v0, v2, :L1
    iget-object v0, p0, Lc/e/b/k/d;->f:Lc/e/b/k/d;
    if-eqz v0, :L1
    iget-object v0, v0, Lc/e/b/k/d;->d:Lc/e/b/k/e;
  .line 3
    invoke-virtual { v0 }, Lc/e/b/k/e;->Q()I
    move-result v0
    if-ne v0, v1, :L1
  .line 4
    iget v0, p0, Lc/e/b/k/d;->h:I
    return v0
  :L1
  .line 5
    iget v0, p0, Lc/e/b/k/d;->g:I
    return v0
.end method

.method public final f()Lc/e/b/k/d;
  .registers 3
  .line 1
    sget-object v0, Lc/e/b/k/d$a;->a:[I
    iget-object v1, p0, Lc/e/b/k/d;->e:Lc/e/b/k/d$b;
    invoke-virtual { v1 }, Ljava/lang/Enum;->ordinal()I
    move-result v1
    aget v0, v0, v1
    packed-switch v0, :L5
  .line 2
    new-instance v0, Ljava/lang/AssertionError;
    iget-object v1, p0, Lc/e/b/k/d;->e:Lc/e/b/k/d$b;
    invoke-virtual { v1 }, Ljava/lang/Enum;->name()Ljava/lang/String;
    move-result-object v1
    invoke-direct { v0, v1 }, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V
    throw v0
  :L0
  .line 3
    iget-object v0, p0, Lc/e/b/k/d;->d:Lc/e/b/k/e;
    iget-object v0, v0, Lc/e/b/k/e;->G:Lc/e/b/k/d;
    return-object v0
  :L1
  .line 4
    iget-object v0, p0, Lc/e/b/k/d;->d:Lc/e/b/k/e;
    iget-object v0, v0, Lc/e/b/k/e;->I:Lc/e/b/k/d;
    return-object v0
  :L2
  .line 5
    iget-object v0, p0, Lc/e/b/k/d;->d:Lc/e/b/k/e;
    iget-object v0, v0, Lc/e/b/k/e;->F:Lc/e/b/k/d;
    return-object v0
  :L3
  .line 6
    iget-object v0, p0, Lc/e/b/k/d;->d:Lc/e/b/k/e;
    iget-object v0, v0, Lc/e/b/k/e;->H:Lc/e/b/k/d;
    return-object v0
  :L4
    const/4 v0, 0
    return-object v0
  :L5
  .packed-switch 1
    :L4
    :L3
    :L2
    :L1
    :L0
    :L4
    :L4
    :L4
    :L4
  .end packed-switch
.end method

.method public g()Lc/e/b/k/e;
  .registers 2
  .line 1
    iget-object v0, p0, Lc/e/b/k/d;->d:Lc/e/b/k/e;
    return-object v0
.end method

.method public h()Lc/e/b/i;
  .registers 2
  .line 1
    iget-object v0, p0, Lc/e/b/k/d;->i:Lc/e/b/i;
    return-object v0
.end method

.method public i()Lc/e/b/k/d;
  .registers 2
  .line 1
    iget-object v0, p0, Lc/e/b/k/d;->f:Lc/e/b/k/d;
    return-object v0
.end method

.method public j()Lc/e/b/k/d$b;
  .registers 2
  .line 1
    iget-object v0, p0, Lc/e/b/k/d;->e:Lc/e/b/k/d$b;
    return-object v0
.end method

.method public k()Z
  .registers 4
  .line 1
    iget-object v0, p0, Lc/e/b/k/d;->a:Ljava/util/HashSet;
    const/4 v1, 0
    if-nez v0, :L0
    return v1
  :L0
  .line 2
    invoke-virtual { v0 }, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;
    move-result-object v0
  :L1
    invoke-interface { v0 }, Ljava/util/Iterator;->hasNext()Z
    move-result v2
    if-eqz v2, :L2
    invoke-interface { v0 }, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object v2
    check-cast v2, Lc/e/b/k/d;
  .line 3
    invoke-virtual { v2 }, Lc/e/b/k/d;->f()Lc/e/b/k/d;
    move-result-object v2
  .line 4
    invoke-virtual { v2 }, Lc/e/b/k/d;->n()Z
    move-result v2
    if-eqz v2, :L1
    const/4 v0, 1
    return v0
  :L2
    return v1
.end method

.method public l()Z
  .registers 3
  .line 1
    iget-object v0, p0, Lc/e/b/k/d;->a:Ljava/util/HashSet;
    const/4 v1, 0
    if-nez v0, :L0
    return v1
  :L0
  .line 2
    invoke-virtual { v0 }, Ljava/util/HashSet;->size()I
    move-result v0
    if-lez v0, :L1
    const/4 v1, 1
  :L1
    return v1
.end method

.method public m()Z
  .registers 2
  .line 1
    iget-boolean v0, p0, Lc/e/b/k/d;->c:Z
    return v0
.end method

.method public n()Z
  .registers 2
  .line 1
    iget-object v0, p0, Lc/e/b/k/d;->f:Lc/e/b/k/d;
    if-eqz v0, :L0
    const/4 v0, 1
    goto :L1
  :L0
    const/4 v0, 0
  :L1
    return v0
.end method

.method public o(Lc/e/b/k/d;)Z
  .registers 7
    const/4 v0, 0
    if-nez p1, :L0
    return v0
  :L0
  .line 1
    invoke-virtual { p1 }, Lc/e/b/k/d;->j()Lc/e/b/k/d$b;
    move-result-object v1
  .line 2
    iget-object v2, p0, Lc/e/b/k/d;->e:Lc/e/b/k/d$b;
    const/4 v3, 1
    if-ne v1, v2, :L3
  .line 3
    sget-object v1, Lc/e/b/k/d$b;->g:Lc/e/b/k/d$b;
    if-ne v2, v1, :L2
  .line 4
    invoke-virtual { p1 }, Lc/e/b/k/d;->g()Lc/e/b/k/e;
    move-result-object p1
    invoke-virtual { p1 }, Lc/e/b/k/e;->U()Z
    move-result p1
    if-eqz p1, :L1
    invoke-virtual { p0 }, Lc/e/b/k/d;->g()Lc/e/b/k/e;
    move-result-object p1
    invoke-virtual { p1 }, Lc/e/b/k/e;->U()Z
    move-result p1
    if-nez p1, :L2
  :L1
    return v0
  :L2
    return v3
  :L3
  .line 5
    sget-object v4, Lc/e/b/k/d$a;->a:[I
    invoke-virtual { v2 }, Ljava/lang/Enum;->ordinal()I
    move-result v2
    aget v2, v4, v2
    packed-switch v2, :L21
  .line 6
    new-instance p1, Ljava/lang/AssertionError;
    iget-object v0, p0, Lc/e/b/k/d;->e:Lc/e/b/k/d$b;
    invoke-virtual { v0 }, Ljava/lang/Enum;->name()Ljava/lang/String;
    move-result-object v0
    invoke-direct { p1, v0 }, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V
    throw p1
  :L4
    return v0
  :L5
  .line 7
    sget-object v2, Lc/e/b/k/d$b;->d:Lc/e/b/k/d$b;
    if-eq v1, v2, :L7
    sget-object v2, Lc/e/b/k/d$b;->f:Lc/e/b/k/d$b;
    if-ne v1, v2, :L6
    goto :L7
  :L6
    const/4 v2, 0
    goto :L8
  :L7
    const/4 v2, 1
  :L8
  .line 8
    invoke-virtual { p1 }, Lc/e/b/k/d;->g()Lc/e/b/k/e;
    move-result-object p1
    instance-of p1, p1, Lc/e/b/k/g;
    if-eqz p1, :L11
    if-nez v2, :L9
  .line 9
    sget-object p1, Lc/e/b/k/d$b;->j:Lc/e/b/k/d$b;
    if-ne v1, p1, :L10
  :L9
    const/4 v0, 1
  :L10
    move v2, v0
  :L11
    return v2
  :L12
  .line 10
    sget-object v2, Lc/e/b/k/d$b;->c:Lc/e/b/k/d$b;
    if-eq v1, v2, :L14
    sget-object v2, Lc/e/b/k/d$b;->e:Lc/e/b/k/d$b;
    if-ne v1, v2, :L13
    goto :L14
  :L13
    const/4 v2, 0
    goto :L15
  :L14
    const/4 v2, 1
  :L15
  .line 11
    invoke-virtual { p1 }, Lc/e/b/k/d;->g()Lc/e/b/k/e;
    move-result-object p1
    instance-of p1, p1, Lc/e/b/k/g;
    if-eqz p1, :L18
    if-nez v2, :L16
  .line 12
    sget-object p1, Lc/e/b/k/d$b;->i:Lc/e/b/k/d$b;
    if-ne v1, p1, :L17
  :L16
    const/4 v0, 1
  :L17
    move v2, v0
  :L18
    return v2
  :L19
  .line 13
    sget-object p1, Lc/e/b/k/d$b;->g:Lc/e/b/k/d$b;
    if-eq v1, p1, :L20
    sget-object p1, Lc/e/b/k/d$b;->i:Lc/e/b/k/d$b;
    if-eq v1, p1, :L20
    sget-object p1, Lc/e/b/k/d$b;->j:Lc/e/b/k/d$b;
    if-eq v1, p1, :L20
    const/4 v0, 1
  :L20
    return v0
  :L21
  .packed-switch 1
    :L19
    :L12
    :L12
    :L5
    :L5
    :L4
    :L4
    :L4
    :L4
  .end packed-switch
.end method

.method public p()V
  .registers 3
  .line 1
    iget-object v0, p0, Lc/e/b/k/d;->f:Lc/e/b/k/d;
    const/4 v1, 0
    if-eqz v0, :L0
    iget-object v0, v0, Lc/e/b/k/d;->a:Ljava/util/HashSet;
    if-eqz v0, :L0
  .line 2
    invoke-virtual { v0, p0 }, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z
  .line 3
    iget-object v0, p0, Lc/e/b/k/d;->f:Lc/e/b/k/d;
    iget-object v0, v0, Lc/e/b/k/d;->a:Ljava/util/HashSet;
    invoke-virtual { v0 }, Ljava/util/HashSet;->size()I
    move-result v0
    if-nez v0, :L0
  .line 4
    iget-object v0, p0, Lc/e/b/k/d;->f:Lc/e/b/k/d;
    iput-object v1, v0, Lc/e/b/k/d;->a:Ljava/util/HashSet;
  :L0
  .line 5
    iput-object v1, p0, Lc/e/b/k/d;->a:Ljava/util/HashSet;
  .line 6
    iput-object v1, p0, Lc/e/b/k/d;->f:Lc/e/b/k/d;
    const/4 v0, 0
  .line 7
    iput v0, p0, Lc/e/b/k/d;->g:I
    const/4 v1, -1
  .line 8
    iput v1, p0, Lc/e/b/k/d;->h:I
  .line 9
    iput-boolean v0, p0, Lc/e/b/k/d;->c:Z
  .line 10
    iput v0, p0, Lc/e/b/k/d;->b:I
    return-void
.end method

.method public q()V
  .registers 2
    const/4 v0, 0
  .line 1
    iput-boolean v0, p0, Lc/e/b/k/d;->c:Z
  .line 2
    iput v0, p0, Lc/e/b/k/d;->b:I
    return-void
.end method

.method public r(Lc/e/b/c;)V
  .registers 4
  .line 1
    iget-object p1, p0, Lc/e/b/k/d;->i:Lc/e/b/i;
    if-nez p1, :L0
  .line 2
    new-instance p1, Lc/e/b/i;
    sget-object v0, Lc/e/b/i$a;->b:Lc/e/b/i$a;
    const/4 v1, 0
    invoke-direct { p1, v0, v1 }, Lc/e/b/i;-><init>(Lc/e/b/i$a;Ljava/lang/String;)V
    iput-object p1, p0, Lc/e/b/k/d;->i:Lc/e/b/i;
    goto :L1
  :L0
  .line 3
    invoke-virtual { p1 }, Lc/e/b/i;->d()V
  :L1
    return-void
.end method

.method public s(I)V
  .registers 2
  .line 1
    iput p1, p0, Lc/e/b/k/d;->b:I
    const/4 p1, 1
  .line 2
    iput-boolean p1, p0, Lc/e/b/k/d;->c:Z
    return-void
.end method

.method public toString()Ljava/lang/String;
  .registers 3
  .line 1
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    iget-object v1, p0, Lc/e/b/k/d;->d:Lc/e/b/k/e;
    invoke-virtual { v1 }, Lc/e/b/k/e;->r()Ljava/lang/String;
    move-result-object v1
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string v1, ":"
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget-object v1, p0, Lc/e/b/k/d;->e:Lc/e/b/k/d$b;
    invoke-virtual { v1 }, Ljava/lang/Enum;->toString()Ljava/lang/String;
    move-result-object v1
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    return-object v0
.end method
