.class Lc/e/b/k/m/j;
.super Lc/e/b/k/m/p;
.source "SourceFile"

.method public constructor <init>(Lc/e/b/k/e;)V
  .registers 3
  .line 1
    invoke-direct { p0, p1 }, Lc/e/b/k/m/p;-><init>(Lc/e/b/k/e;)V
  .line 2
    iget-object v0, p1, Lc/e/b/k/e;->d:Lc/e/b/k/m/l;
    invoke-virtual { v0 }, Lc/e/b/k/m/l;->f()V
  .line 3
    iget-object v0, p1, Lc/e/b/k/e;->e:Lc/e/b/k/m/n;
    invoke-virtual { v0 }, Lc/e/b/k/m/n;->f()V
  .line 4
    check-cast p1, Lc/e/b/k/g;
    invoke-virtual { p1 }, Lc/e/b/k/g;->b1()I
    move-result p1
    iput p1, p0, Lc/e/b/k/m/p;->f:I
    return-void
.end method

.method private q(Lc/e/b/k/m/f;)V
  .registers 3
  .line 1
    iget-object v0, p0, Lc/e/b/k/m/p;->h:Lc/e/b/k/m/f;
    iget-object v0, v0, Lc/e/b/k/m/f;->k:Ljava/util/List;
    invoke-interface { v0, p1 }, Ljava/util/List;->add(Ljava/lang/Object;)Z
  .line 2
    iget-object p1, p1, Lc/e/b/k/m/f;->l:Ljava/util/List;
    iget-object v0, p0, Lc/e/b/k/m/p;->h:Lc/e/b/k/m/f;
    invoke-interface { p1, v0 }, Ljava/util/List;->add(Ljava/lang/Object;)Z
    return-void
.end method

.method public a(Lc/e/b/k/m/d;)V
  .registers 4
  .line 1
    iget-object p1, p0, Lc/e/b/k/m/p;->h:Lc/e/b/k/m/f;
    iget-boolean v0, p1, Lc/e/b/k/m/f;->c:Z
    if-nez v0, :L0
    return-void
  :L0
  .line 2
    iget-boolean v0, p1, Lc/e/b/k/m/f;->j:Z
    if-eqz v0, :L1
    return-void
  :L1
  .line 3
    iget-object p1, p1, Lc/e/b/k/m/f;->l:Ljava/util/List;
    const/4 v0, 0
    invoke-interface { p1, v0 }, Ljava/util/List;->get(I)Ljava/lang/Object;
    move-result-object p1
    check-cast p1, Lc/e/b/k/m/f;
  .line 4
    iget-object v0, p0, Lc/e/b/k/m/p;->b:Lc/e/b/k/e;
    check-cast v0, Lc/e/b/k/g;
    const/high16 v1, 16128
  .line 5
    iget p1, p1, Lc/e/b/k/m/f;->g:I
    int-to-float p1, p1
    invoke-virtual { v0 }, Lc/e/b/k/g;->e1()F
    move-result v0
    mul-float p1, p1, v0
    add-float/2addr p1, v1
    float-to-int p1, p1
  .line 6
    iget-object v0, p0, Lc/e/b/k/m/p;->h:Lc/e/b/k/m/f;
    invoke-virtual { v0, p1 }, Lc/e/b/k/m/f;->d(I)V
    return-void
.end method

.method d()V
  .registers 6
  .line 1
    iget-object v0, p0, Lc/e/b/k/m/p;->b:Lc/e/b/k/e;
    check-cast v0, Lc/e/b/k/g;
  .line 2
    invoke-virtual { v0 }, Lc/e/b/k/g;->c1()I
    move-result v1
  .line 3
    invoke-virtual { v0 }, Lc/e/b/k/g;->d1()I
    move-result v2
  .line 4
    invoke-virtual { v0 }, Lc/e/b/k/g;->e1()F
  .line 5
    invoke-virtual { v0 }, Lc/e/b/k/g;->b1()I
    move-result v0
    const/4 v3, 1
    const/4 v4, -1
    if-ne v0, v3, :L3
    if-eq v1, v4, :L0
  .line 6
    iget-object v0, p0, Lc/e/b/k/m/p;->h:Lc/e/b/k/m/f;
    iget-object v0, v0, Lc/e/b/k/m/f;->l:Ljava/util/List;
    iget-object v2, p0, Lc/e/b/k/m/p;->b:Lc/e/b/k/e;
    iget-object v2, v2, Lc/e/b/k/e;->R:Lc/e/b/k/e;
    iget-object v2, v2, Lc/e/b/k/e;->d:Lc/e/b/k/m/l;
    iget-object v2, v2, Lc/e/b/k/m/p;->h:Lc/e/b/k/m/f;
    invoke-interface { v0, v2 }, Ljava/util/List;->add(Ljava/lang/Object;)Z
  .line 7
    iget-object v0, p0, Lc/e/b/k/m/p;->b:Lc/e/b/k/e;
    iget-object v0, v0, Lc/e/b/k/e;->R:Lc/e/b/k/e;
    iget-object v0, v0, Lc/e/b/k/e;->d:Lc/e/b/k/m/l;
    iget-object v0, v0, Lc/e/b/k/m/p;->h:Lc/e/b/k/m/f;
    iget-object v0, v0, Lc/e/b/k/m/f;->k:Ljava/util/List;
    iget-object v2, p0, Lc/e/b/k/m/p;->h:Lc/e/b/k/m/f;
    invoke-interface { v0, v2 }, Ljava/util/List;->add(Ljava/lang/Object;)Z
  .line 8
    iget-object v0, p0, Lc/e/b/k/m/p;->h:Lc/e/b/k/m/f;
    iput v1, v0, Lc/e/b/k/m/f;->f:I
    goto :L2
  :L0
    if-eq v2, v4, :L1
  .line 9
    iget-object v0, p0, Lc/e/b/k/m/p;->h:Lc/e/b/k/m/f;
    iget-object v0, v0, Lc/e/b/k/m/f;->l:Ljava/util/List;
    iget-object v1, p0, Lc/e/b/k/m/p;->b:Lc/e/b/k/e;
    iget-object v1, v1, Lc/e/b/k/e;->R:Lc/e/b/k/e;
    iget-object v1, v1, Lc/e/b/k/e;->d:Lc/e/b/k/m/l;
    iget-object v1, v1, Lc/e/b/k/m/p;->i:Lc/e/b/k/m/f;
    invoke-interface { v0, v1 }, Ljava/util/List;->add(Ljava/lang/Object;)Z
  .line 10
    iget-object v0, p0, Lc/e/b/k/m/p;->b:Lc/e/b/k/e;
    iget-object v0, v0, Lc/e/b/k/e;->R:Lc/e/b/k/e;
    iget-object v0, v0, Lc/e/b/k/e;->d:Lc/e/b/k/m/l;
    iget-object v0, v0, Lc/e/b/k/m/p;->i:Lc/e/b/k/m/f;
    iget-object v0, v0, Lc/e/b/k/m/f;->k:Ljava/util/List;
    iget-object v1, p0, Lc/e/b/k/m/p;->h:Lc/e/b/k/m/f;
    invoke-interface { v0, v1 }, Ljava/util/List;->add(Ljava/lang/Object;)Z
  .line 11
    iget-object v0, p0, Lc/e/b/k/m/p;->h:Lc/e/b/k/m/f;
    neg-int v1, v2
    iput v1, v0, Lc/e/b/k/m/f;->f:I
    goto :L2
  :L1
  .line 12
    iget-object v0, p0, Lc/e/b/k/m/p;->h:Lc/e/b/k/m/f;
    iput-boolean v3, v0, Lc/e/b/k/m/f;->b:Z
  .line 13
    iget-object v0, v0, Lc/e/b/k/m/f;->l:Ljava/util/List;
    iget-object v1, p0, Lc/e/b/k/m/p;->b:Lc/e/b/k/e;
    iget-object v1, v1, Lc/e/b/k/e;->R:Lc/e/b/k/e;
    iget-object v1, v1, Lc/e/b/k/e;->d:Lc/e/b/k/m/l;
    iget-object v1, v1, Lc/e/b/k/m/p;->i:Lc/e/b/k/m/f;
    invoke-interface { v0, v1 }, Ljava/util/List;->add(Ljava/lang/Object;)Z
  .line 14
    iget-object v0, p0, Lc/e/b/k/m/p;->b:Lc/e/b/k/e;
    iget-object v0, v0, Lc/e/b/k/e;->R:Lc/e/b/k/e;
    iget-object v0, v0, Lc/e/b/k/e;->d:Lc/e/b/k/m/l;
    iget-object v0, v0, Lc/e/b/k/m/p;->i:Lc/e/b/k/m/f;
    iget-object v0, v0, Lc/e/b/k/m/f;->k:Ljava/util/List;
    iget-object v1, p0, Lc/e/b/k/m/p;->h:Lc/e/b/k/m/f;
    invoke-interface { v0, v1 }, Ljava/util/List;->add(Ljava/lang/Object;)Z
  :L2
  .line 15
    iget-object v0, p0, Lc/e/b/k/m/p;->b:Lc/e/b/k/e;
    iget-object v0, v0, Lc/e/b/k/e;->d:Lc/e/b/k/m/l;
    iget-object v0, v0, Lc/e/b/k/m/p;->h:Lc/e/b/k/m/f;
    invoke-direct { p0, v0 }, Lc/e/b/k/m/j;->q(Lc/e/b/k/m/f;)V
  .line 16
    iget-object v0, p0, Lc/e/b/k/m/p;->b:Lc/e/b/k/e;
    iget-object v0, v0, Lc/e/b/k/e;->d:Lc/e/b/k/m/l;
    iget-object v0, v0, Lc/e/b/k/m/p;->i:Lc/e/b/k/m/f;
    invoke-direct { p0, v0 }, Lc/e/b/k/m/j;->q(Lc/e/b/k/m/f;)V
    goto/16 :L7
  :L3
    if-eq v1, v4, :L4
  .line 17
    iget-object v0, p0, Lc/e/b/k/m/p;->h:Lc/e/b/k/m/f;
    iget-object v0, v0, Lc/e/b/k/m/f;->l:Ljava/util/List;
    iget-object v2, p0, Lc/e/b/k/m/p;->b:Lc/e/b/k/e;
    iget-object v2, v2, Lc/e/b/k/e;->R:Lc/e/b/k/e;
    iget-object v2, v2, Lc/e/b/k/e;->e:Lc/e/b/k/m/n;
    iget-object v2, v2, Lc/e/b/k/m/p;->h:Lc/e/b/k/m/f;
    invoke-interface { v0, v2 }, Ljava/util/List;->add(Ljava/lang/Object;)Z
  .line 18
    iget-object v0, p0, Lc/e/b/k/m/p;->b:Lc/e/b/k/e;
    iget-object v0, v0, Lc/e/b/k/e;->R:Lc/e/b/k/e;
    iget-object v0, v0, Lc/e/b/k/e;->e:Lc/e/b/k/m/n;
    iget-object v0, v0, Lc/e/b/k/m/p;->h:Lc/e/b/k/m/f;
    iget-object v0, v0, Lc/e/b/k/m/f;->k:Ljava/util/List;
    iget-object v2, p0, Lc/e/b/k/m/p;->h:Lc/e/b/k/m/f;
    invoke-interface { v0, v2 }, Ljava/util/List;->add(Ljava/lang/Object;)Z
  .line 19
    iget-object v0, p0, Lc/e/b/k/m/p;->h:Lc/e/b/k/m/f;
    iput v1, v0, Lc/e/b/k/m/f;->f:I
    goto :L6
  :L4
    if-eq v2, v4, :L5
  .line 20
    iget-object v0, p0, Lc/e/b/k/m/p;->h:Lc/e/b/k/m/f;
    iget-object v0, v0, Lc/e/b/k/m/f;->l:Ljava/util/List;
    iget-object v1, p0, Lc/e/b/k/m/p;->b:Lc/e/b/k/e;
    iget-object v1, v1, Lc/e/b/k/e;->R:Lc/e/b/k/e;
    iget-object v1, v1, Lc/e/b/k/e;->e:Lc/e/b/k/m/n;
    iget-object v1, v1, Lc/e/b/k/m/p;->i:Lc/e/b/k/m/f;
    invoke-interface { v0, v1 }, Ljava/util/List;->add(Ljava/lang/Object;)Z
  .line 21
    iget-object v0, p0, Lc/e/b/k/m/p;->b:Lc/e/b/k/e;
    iget-object v0, v0, Lc/e/b/k/e;->R:Lc/e/b/k/e;
    iget-object v0, v0, Lc/e/b/k/e;->e:Lc/e/b/k/m/n;
    iget-object v0, v0, Lc/e/b/k/m/p;->i:Lc/e/b/k/m/f;
    iget-object v0, v0, Lc/e/b/k/m/f;->k:Ljava/util/List;
    iget-object v1, p0, Lc/e/b/k/m/p;->h:Lc/e/b/k/m/f;
    invoke-interface { v0, v1 }, Ljava/util/List;->add(Ljava/lang/Object;)Z
  .line 22
    iget-object v0, p0, Lc/e/b/k/m/p;->h:Lc/e/b/k/m/f;
    neg-int v1, v2
    iput v1, v0, Lc/e/b/k/m/f;->f:I
    goto :L6
  :L5
  .line 23
    iget-object v0, p0, Lc/e/b/k/m/p;->h:Lc/e/b/k/m/f;
    iput-boolean v3, v0, Lc/e/b/k/m/f;->b:Z
  .line 24
    iget-object v0, v0, Lc/e/b/k/m/f;->l:Ljava/util/List;
    iget-object v1, p0, Lc/e/b/k/m/p;->b:Lc/e/b/k/e;
    iget-object v1, v1, Lc/e/b/k/e;->R:Lc/e/b/k/e;
    iget-object v1, v1, Lc/e/b/k/e;->e:Lc/e/b/k/m/n;
    iget-object v1, v1, Lc/e/b/k/m/p;->i:Lc/e/b/k/m/f;
    invoke-interface { v0, v1 }, Ljava/util/List;->add(Ljava/lang/Object;)Z
  .line 25
    iget-object v0, p0, Lc/e/b/k/m/p;->b:Lc/e/b/k/e;
    iget-object v0, v0, Lc/e/b/k/e;->R:Lc/e/b/k/e;
    iget-object v0, v0, Lc/e/b/k/e;->e:Lc/e/b/k/m/n;
    iget-object v0, v0, Lc/e/b/k/m/p;->i:Lc/e/b/k/m/f;
    iget-object v0, v0, Lc/e/b/k/m/f;->k:Ljava/util/List;
    iget-object v1, p0, Lc/e/b/k/m/p;->h:Lc/e/b/k/m/f;
    invoke-interface { v0, v1 }, Ljava/util/List;->add(Ljava/lang/Object;)Z
  :L6
  .line 26
    iget-object v0, p0, Lc/e/b/k/m/p;->b:Lc/e/b/k/e;
    iget-object v0, v0, Lc/e/b/k/e;->e:Lc/e/b/k/m/n;
    iget-object v0, v0, Lc/e/b/k/m/p;->h:Lc/e/b/k/m/f;
    invoke-direct { p0, v0 }, Lc/e/b/k/m/j;->q(Lc/e/b/k/m/f;)V
  .line 27
    iget-object v0, p0, Lc/e/b/k/m/p;->b:Lc/e/b/k/e;
    iget-object v0, v0, Lc/e/b/k/e;->e:Lc/e/b/k/m/n;
    iget-object v0, v0, Lc/e/b/k/m/p;->i:Lc/e/b/k/m/f;
    invoke-direct { p0, v0 }, Lc/e/b/k/m/j;->q(Lc/e/b/k/m/f;)V
  :L7
    return-void
.end method

.method public e()V
  .registers 3
  .line 1
    iget-object v0, p0, Lc/e/b/k/m/p;->b:Lc/e/b/k/e;
    check-cast v0, Lc/e/b/k/g;
  .line 2
    invoke-virtual { v0 }, Lc/e/b/k/g;->b1()I
    move-result v0
    const/4 v1, 1
    if-ne v0, v1, :L0
  .line 3
    iget-object v0, p0, Lc/e/b/k/m/p;->b:Lc/e/b/k/e;
    iget-object v1, p0, Lc/e/b/k/m/p;->h:Lc/e/b/k/m/f;
    iget v1, v1, Lc/e/b/k/m/f;->g:I
    invoke-virtual { v0, v1 }, Lc/e/b/k/e;->V0(I)V
    goto :L1
  :L0
  .line 4
    iget-object v0, p0, Lc/e/b/k/m/p;->b:Lc/e/b/k/e;
    iget-object v1, p0, Lc/e/b/k/m/p;->h:Lc/e/b/k/m/f;
    iget v1, v1, Lc/e/b/k/m/f;->g:I
    invoke-virtual { v0, v1 }, Lc/e/b/k/e;->W0(I)V
  :L1
    return-void
.end method

.method f()V
  .registers 2
  .line 1
    iget-object v0, p0, Lc/e/b/k/m/p;->h:Lc/e/b/k/m/f;
    invoke-virtual { v0 }, Lc/e/b/k/m/f;->c()V
    return-void
.end method

.method m()Z
  .registers 2
    const/4 v0, 0
    return v0
.end method
