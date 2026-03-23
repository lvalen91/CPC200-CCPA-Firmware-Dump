.class final Landroidx/fragment/app/a;
.super Landroidx/fragment/app/w;
.implements Landroidx/fragment/app/n$o;
.source "SourceFile"

.field final r:Landroidx/fragment/app/n;

.field s:Z

.field t:I

.method constructor <init>(Landroidx/fragment/app/n;)V
  .registers 4
  .line 1
    invoke-virtual { p1 }, Landroidx/fragment/app/n;->p0()Landroidx/fragment/app/j;
    move-result-object v0
    invoke-virtual { p1 }, Landroidx/fragment/app/n;->s0()Landroidx/fragment/app/k;
    move-result-object v1
    if-eqz v1, :L0
  .line 2
    invoke-virtual { p1 }, Landroidx/fragment/app/n;->s0()Landroidx/fragment/app/k;
    move-result-object v1
    invoke-virtual { v1 }, Landroidx/fragment/app/k;->f()Landroid/content/Context;
    move-result-object v1
    invoke-virtual { v1 }, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;
    move-result-object v1
    goto :L1
  :L0
    const/4 v1, 0
  :L1
  .line 3
    invoke-direct { p0, v0, v1 }, Landroidx/fragment/app/w;-><init>(Landroidx/fragment/app/j;Ljava/lang/ClassLoader;)V
    const/4 v0, -1
  .line 4
    iput v0, p0, Landroidx/fragment/app/a;->t:I
  .line 5
    iput-object p1, p0, Landroidx/fragment/app/a;->r:Landroidx/fragment/app/n;
    return-void
.end method

.method private static E(Landroidx/fragment/app/w$a;)Z
  .registers 2
  .line 1
    iget-object p0, p0, Landroidx/fragment/app/w$a;->b:Landroidx/fragment/app/Fragment;
    if-eqz p0, :L0
  .line 2
    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->m:Z
    if-eqz v0, :L0
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->I:Landroid/view/View;
    if-eqz v0, :L0
    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->B:Z
    if-nez v0, :L0
    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->A:Z
    if-nez v0, :L0
  .line 3
    invoke-virtual { p0 }, Landroidx/fragment/app/Fragment;->v0()Z
    move-result p0
    if-eqz p0, :L0
    const/4 p0, 1
    goto :L1
  :L0
    const/4 p0, 0
  :L1
    return p0
.end method

.method A(Ljava/util/ArrayList;Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/Fragment;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(",
      "Ljava/util/ArrayList<",
      "Landroidx/fragment/app/Fragment;",
      ">;",
      "Landroidx/fragment/app/Fragment;",
      ")",
      "Landroidx/fragment/app/Fragment;"
    }
  .end annotation
  .registers 19
    move-object/from16 v0, p0
    move-object/from16 v1, p1
    move-object/from16 v3, p2
    const/4 v4, 0
  :L0
  .line 1
    iget-object v5, v0, Landroidx/fragment/app/w;->a:Ljava/util/ArrayList;
    invoke-virtual { v5 }, Ljava/util/ArrayList;->size()I
    move-result v5
    if-ge v4, v5, :L12
  .line 2
    iget-object v5, v0, Landroidx/fragment/app/w;->a:Ljava/util/ArrayList;
    invoke-virtual { v5, v4 }, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
    move-result-object v5
    check-cast v5, Landroidx/fragment/app/w$a;
  .line 3
    iget v6, v5, Landroidx/fragment/app/w$a;->a:I
    const/4 v7, 0
    const/4 v8, 1
    if-eq v6, v8, :L10
    const/4 v9, 2
    const/4 v10, 3
    const/16 v11, 9
    if-eq v6, v9, :L3
    if-eq v6, v10, :L2
    const/4 v9, 6
    if-eq v6, v9, :L2
    const/4 v7, 7
    if-eq v6, v7, :L10
    const/16 v7, 8
    if-eq v6, v7, :L1
    goto/16 :L11
  :L1
  .line 4
    iget-object v6, v0, Landroidx/fragment/app/w;->a:Ljava/util/ArrayList;
    new-instance v7, Landroidx/fragment/app/w$a;
    invoke-direct { v7, v11, v3 }, Landroidx/fragment/app/w$a;-><init>(ILandroidx/fragment/app/Fragment;)V
    invoke-virtual { v6, v4, v7 }, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V
    add-int/lit8 v4, v4, 1
  .line 5
    iget-object v3, v5, Landroidx/fragment/app/w$a;->b:Landroidx/fragment/app/Fragment;
    goto/16 :L11
  :L2
  .line 6
    iget-object v6, v5, Landroidx/fragment/app/w$a;->b:Landroidx/fragment/app/Fragment;
    invoke-virtual { v1, v6 }, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
  .line 7
    iget-object v5, v5, Landroidx/fragment/app/w$a;->b:Landroidx/fragment/app/Fragment;
    if-ne v5, v3, :L11
  .line 8
    iget-object v3, v0, Landroidx/fragment/app/w;->a:Ljava/util/ArrayList;
    new-instance v6, Landroidx/fragment/app/w$a;
    invoke-direct { v6, v11, v5 }, Landroidx/fragment/app/w$a;-><init>(ILandroidx/fragment/app/Fragment;)V
    invoke-virtual { v3, v4, v6 }, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V
    add-int/lit8 v4, v4, 1
    move-object v3, v7
    goto :L11
  :L3
  .line 9
    iget-object v6, v5, Landroidx/fragment/app/w$a;->b:Landroidx/fragment/app/Fragment;
  .line 10
    iget v9, v6, Landroidx/fragment/app/Fragment;->y:I
  .line 11
    invoke-virtual/range { p1 .. p1 }, Ljava/util/ArrayList;->size()I
    move-result v12
    sub-int/2addr v12, v8
    const/4 v13, 0
  :L4
    if-ltz v12, :L8
  .line 12
    invoke-virtual { v1, v12 }, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
    move-result-object v14
    check-cast v14, Landroidx/fragment/app/Fragment;
  .line 13
    iget v15, v14, Landroidx/fragment/app/Fragment;->y:I
    if-ne v15, v9, :L7
    if-ne v14, v6, :L5
    const/4 v13, 1
    goto :L7
  :L5
    if-ne v14, v3, :L6
  .line 14
    iget-object v3, v0, Landroidx/fragment/app/w;->a:Ljava/util/ArrayList;
    new-instance v15, Landroidx/fragment/app/w$a;
    invoke-direct { v15, v11, v14 }, Landroidx/fragment/app/w$a;-><init>(ILandroidx/fragment/app/Fragment;)V
    invoke-virtual { v3, v4, v15 }, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V
    add-int/lit8 v4, v4, 1
    move-object v3, v7
  :L6
  .line 15
    new-instance v15, Landroidx/fragment/app/w$a;
    invoke-direct { v15, v10, v14 }, Landroidx/fragment/app/w$a;-><init>(ILandroidx/fragment/app/Fragment;)V
  .line 16
    iget v2, v5, Landroidx/fragment/app/w$a;->c:I
    iput v2, v15, Landroidx/fragment/app/w$a;->c:I
  .line 17
    iget v2, v5, Landroidx/fragment/app/w$a;->e:I
    iput v2, v15, Landroidx/fragment/app/w$a;->e:I
  .line 18
    iget v2, v5, Landroidx/fragment/app/w$a;->d:I
    iput v2, v15, Landroidx/fragment/app/w$a;->d:I
  .line 19
    iget v2, v5, Landroidx/fragment/app/w$a;->f:I
    iput v2, v15, Landroidx/fragment/app/w$a;->f:I
  .line 20
    iget-object v2, v0, Landroidx/fragment/app/w;->a:Ljava/util/ArrayList;
    invoke-virtual { v2, v4, v15 }, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V
  .line 21
    invoke-virtual { v1, v14 }, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    add-int/2addr v4, v8
  :L7
    add-int/lit8 v12, v12, -1
    goto :L4
  :L8
    if-eqz v13, :L9
  .line 22
    iget-object v2, v0, Landroidx/fragment/app/w;->a:Ljava/util/ArrayList;
    invoke-virtual { v2, v4 }, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
    add-int/lit8 v4, v4, -1
    goto :L11
  :L9
  .line 23
    iput v8, v5, Landroidx/fragment/app/w$a;->a:I
  .line 24
    invoke-virtual { v1, v6 }, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    goto :L11
  :L10
  .line 25
    iget-object v2, v5, Landroidx/fragment/app/w$a;->b:Landroidx/fragment/app/Fragment;
    invoke-virtual { v1, v2 }, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
  :L11
    add-int/2addr v4, v8
    goto/16 :L0
  :L12
    return-object v3
.end method

.method public B()Ljava/lang/String;
  .registers 2
  .line 1
    iget-object v0, p0, Landroidx/fragment/app/w;->i:Ljava/lang/String;
    return-object v0
.end method

.method C(I)Z
  .registers 6
  .line 1
    iget-object v0, p0, Landroidx/fragment/app/w;->a:Ljava/util/ArrayList;
    invoke-virtual { v0 }, Ljava/util/ArrayList;->size()I
    move-result v0
    const/4 v1, 0
    const/4 v2, 0
  :L0
    if-ge v2, v0, :L4
  .line 2
    iget-object v3, p0, Landroidx/fragment/app/w;->a:Ljava/util/ArrayList;
    invoke-virtual { v3, v2 }, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
    move-result-object v3
    check-cast v3, Landroidx/fragment/app/w$a;
  .line 3
    iget-object v3, v3, Landroidx/fragment/app/w$a;->b:Landroidx/fragment/app/Fragment;
    if-eqz v3, :L1
    iget v3, v3, Landroidx/fragment/app/Fragment;->y:I
    goto :L2
  :L1
    const/4 v3, 0
  :L2
    if-eqz v3, :L3
    if-ne v3, p1, :L3
    const/4 p1, 1
    return p1
  :L3
    add-int/lit8 v2, v2, 1
    goto :L0
  :L4
    return v1
.end method

.method D(Ljava/util/ArrayList;II)Z
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(",
      "Ljava/util/ArrayList<",
      "Landroidx/fragment/app/a;",
      ">;II)Z"
    }
  .end annotation
  .registers 13
    const/4 v0, 0
    if-ne p3, p2, :L0
    return v0
  :L0
  .line 1
    iget-object v1, p0, Landroidx/fragment/app/w;->a:Ljava/util/ArrayList;
    invoke-virtual { v1 }, Ljava/util/ArrayList;->size()I
    move-result v1
    const/4 v2, -1
    const/4 v3, 0
  :L1
    if-ge v3, v1, :L12
  .line 2
    iget-object v4, p0, Landroidx/fragment/app/w;->a:Ljava/util/ArrayList;
    invoke-virtual { v4, v3 }, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
    move-result-object v4
    check-cast v4, Landroidx/fragment/app/w$a;
  .line 3
    iget-object v4, v4, Landroidx/fragment/app/w$a;->b:Landroidx/fragment/app/Fragment;
    if-eqz v4, :L2
    iget v4, v4, Landroidx/fragment/app/Fragment;->y:I
    goto :L3
  :L2
    const/4 v4, 0
  :L3
    if-eqz v4, :L11
    if-eq v4, v2, :L11
    move v2, p2
  :L4
    if-ge v2, p3, :L10
  .line 4
    invoke-virtual { p1, v2 }, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
    move-result-object v5
    check-cast v5, Landroidx/fragment/app/a;
  .line 5
    iget-object v6, v5, Landroidx/fragment/app/w;->a:Ljava/util/ArrayList;
    invoke-virtual { v6 }, Ljava/util/ArrayList;->size()I
    move-result v6
    const/4 v7, 0
  :L5
    if-ge v7, v6, :L9
  .line 6
    iget-object v8, v5, Landroidx/fragment/app/w;->a:Ljava/util/ArrayList;
    invoke-virtual { v8, v7 }, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
    move-result-object v8
    check-cast v8, Landroidx/fragment/app/w$a;
  .line 7
    iget-object v8, v8, Landroidx/fragment/app/w$a;->b:Landroidx/fragment/app/Fragment;
    if-eqz v8, :L6
  .line 8
    iget v8, v8, Landroidx/fragment/app/Fragment;->y:I
    goto :L7
  :L6
    const/4 v8, 0
  :L7
    if-ne v8, v4, :L8
    const/4 p1, 1
    return p1
  :L8
    add-int/lit8 v7, v7, 1
    goto :L5
  :L9
    add-int/lit8 v2, v2, 1
    goto :L4
  :L10
    move v2, v4
  :L11
    add-int/lit8 v3, v3, 1
    goto :L1
  :L12
    return v0
.end method

.method F()Z
  .registers 4
    const/4 v0, 0
    const/4 v1, 0
  :L0
  .line 1
    iget-object v2, p0, Landroidx/fragment/app/w;->a:Ljava/util/ArrayList;
    invoke-virtual { v2 }, Ljava/util/ArrayList;->size()I
    move-result v2
    if-ge v1, v2, :L2
  .line 2
    iget-object v2, p0, Landroidx/fragment/app/w;->a:Ljava/util/ArrayList;
    invoke-virtual { v2, v1 }, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
    move-result-object v2
    check-cast v2, Landroidx/fragment/app/w$a;
  .line 3
    invoke-static { v2 }, Landroidx/fragment/app/a;->E(Landroidx/fragment/app/w$a;)Z
    move-result v2
    if-eqz v2, :L1
    const/4 v0, 1
    return v0
  :L1
    add-int/lit8 v1, v1, 1
    goto :L0
  :L2
    return v0
.end method

.method public G()V
  .registers 3
  .line 1
    iget-object v0, p0, Landroidx/fragment/app/w;->q:Ljava/util/ArrayList;
    if-eqz v0, :L2
    const/4 v0, 0
  :L0
  .line 2
    iget-object v1, p0, Landroidx/fragment/app/w;->q:Ljava/util/ArrayList;
    invoke-virtual { v1 }, Ljava/util/ArrayList;->size()I
    move-result v1
    if-ge v0, v1, :L1
  .line 3
    iget-object v1, p0, Landroidx/fragment/app/w;->q:Ljava/util/ArrayList;
    invoke-virtual { v1, v0 }, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
    move-result-object v1
    check-cast v1, Ljava/lang/Runnable;
    invoke-interface { v1 }, Ljava/lang/Runnable;->run()V
    add-int/lit8 v0, v0, 1
    goto :L0
  :L1
    const/4 v0, 0
  .line 4
    iput-object v0, p0, Landroidx/fragment/app/w;->q:Ljava/util/ArrayList;
  :L2
    return-void
.end method

.method H(Landroidx/fragment/app/Fragment$k;)V
  .registers 5
    const/4 v0, 0
  :L0
  .line 1
    iget-object v1, p0, Landroidx/fragment/app/w;->a:Ljava/util/ArrayList;
    invoke-virtual { v1 }, Ljava/util/ArrayList;->size()I
    move-result v1
    if-ge v0, v1, :L2
  .line 2
    iget-object v1, p0, Landroidx/fragment/app/w;->a:Ljava/util/ArrayList;
    invoke-virtual { v1, v0 }, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
    move-result-object v1
    check-cast v1, Landroidx/fragment/app/w$a;
  .line 3
    invoke-static { v1 }, Landroidx/fragment/app/a;->E(Landroidx/fragment/app/w$a;)Z
    move-result v2
    if-eqz v2, :L1
  .line 4
    iget-object v1, v1, Landroidx/fragment/app/w$a;->b:Landroidx/fragment/app/Fragment;
    invoke-virtual { v1, p1 }, Landroidx/fragment/app/Fragment;->W1(Landroidx/fragment/app/Fragment$k;)V
  :L1
    add-int/lit8 v0, v0, 1
    goto :L0
  :L2
    return-void
.end method

.method I(Ljava/util/ArrayList;Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/Fragment;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(",
      "Ljava/util/ArrayList<",
      "Landroidx/fragment/app/Fragment;",
      ">;",
      "Landroidx/fragment/app/Fragment;",
      ")",
      "Landroidx/fragment/app/Fragment;"
    }
  .end annotation
  .registers 8
  .line 1
    iget-object v0, p0, Landroidx/fragment/app/w;->a:Ljava/util/ArrayList;
    invoke-virtual { v0 }, Ljava/util/ArrayList;->size()I
    move-result v0
    const/4 v1, 1
    sub-int/2addr v0, v1
  :L0
    if-ltz v0, :L7
  .line 2
    iget-object v2, p0, Landroidx/fragment/app/w;->a:Ljava/util/ArrayList;
    invoke-virtual { v2, v0 }, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
    move-result-object v2
    check-cast v2, Landroidx/fragment/app/w$a;
  .line 3
    iget v3, v2, Landroidx/fragment/app/w$a;->a:I
    if-eq v3, v1, :L5
    const/4 v4, 3
    if-eq v3, v4, :L4
    packed-switch v3, :L8
    goto :L6
  :L1
  .line 4
    iget-object v3, v2, Landroidx/fragment/app/w$a;->g:Landroidx/lifecycle/f$c;
    iput-object v3, v2, Landroidx/fragment/app/w$a;->h:Landroidx/lifecycle/f$c;
    goto :L6
  :L2
  .line 5
    iget-object p2, v2, Landroidx/fragment/app/w$a;->b:Landroidx/fragment/app/Fragment;
    goto :L6
  :L3
    const/4 p2, 0
    goto :L6
  :L4
  .line 6
    iget-object v2, v2, Landroidx/fragment/app/w$a;->b:Landroidx/fragment/app/Fragment;
    invoke-virtual { p1, v2 }, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    goto :L6
  :L5
  .line 7
    iget-object v2, v2, Landroidx/fragment/app/w$a;->b:Landroidx/fragment/app/Fragment;
    invoke-virtual { p1, v2 }, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
  :L6
    add-int/lit8 v0, v0, -1
    goto :L0
  :L7
    return-object p2
  :L8
  .packed-switch 6
    :L4
    :L5
    :L3
    :L2
    :L1
  .end packed-switch
.end method

.method public a(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(",
      "Ljava/util/ArrayList<",
      "Landroidx/fragment/app/a;",
      ">;",
      "Ljava/util/ArrayList<",
      "Ljava/lang/Boolean;",
      ">;)Z"
    }
  .end annotation
  .registers 5
    const/4 v0, 2
  .line 1
    invoke-static { v0 }, Landroidx/fragment/app/n;->E0(I)Z
    move-result v0
    if-eqz v0, :L0
  .line 2
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "Run: "
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0, p0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
  :L0
  .line 3
    invoke-virtual { p1, p0 }, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
  .line 4
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;
    invoke-virtual { p2, p1 }, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
  .line 5
    iget-boolean p1, p0, Landroidx/fragment/app/w;->g:Z
    if-eqz p1, :L1
  .line 6
    iget-object p1, p0, Landroidx/fragment/app/a;->r:Landroidx/fragment/app/n;
    invoke-virtual { p1, p0 }, Landroidx/fragment/app/n;->e(Landroidx/fragment/app/a;)V
  :L1
    const/4 p1, 1
    return p1
.end method

.method public h()I
  .registers 2
    const/4 v0, 0
  .line 1
    invoke-virtual { p0, v0 }, Landroidx/fragment/app/a;->v(Z)I
    move-result v0
    return v0
.end method

.method public i()I
  .registers 2
    const/4 v0, 1
  .line 1
    invoke-virtual { p0, v0 }, Landroidx/fragment/app/a;->v(Z)I
    move-result v0
    return v0
.end method

.method public j()V
  .registers 3
  .line 1
    invoke-virtual { p0 }, Landroidx/fragment/app/w;->l()Landroidx/fragment/app/w;
  .line 2
    iget-object v0, p0, Landroidx/fragment/app/a;->r:Landroidx/fragment/app/n;
    const/4 v1, 0
    invoke-virtual { v0, p0, v1 }, Landroidx/fragment/app/n;->b0(Landroidx/fragment/app/n$o;Z)V
    return-void
.end method

.method public k()V
  .registers 3
  .line 1
    invoke-virtual { p0 }, Landroidx/fragment/app/w;->l()Landroidx/fragment/app/w;
  .line 2
    iget-object v0, p0, Landroidx/fragment/app/a;->r:Landroidx/fragment/app/n;
    const/4 v1, 1
    invoke-virtual { v0, p0, v1 }, Landroidx/fragment/app/n;->b0(Landroidx/fragment/app/n$o;Z)V
    return-void
.end method

.method m(ILandroidx/fragment/app/Fragment;Ljava/lang/String;I)V
  .registers 5
  .line 1
    invoke-super { p0, p1, p2, p3, p4 }, Landroidx/fragment/app/w;->m(ILandroidx/fragment/app/Fragment;Ljava/lang/String;I)V
  .line 2
    iget-object p1, p0, Landroidx/fragment/app/a;->r:Landroidx/fragment/app/n;
    iput-object p1, p2, Landroidx/fragment/app/Fragment;->t:Landroidx/fragment/app/n;
    return-void
.end method

.method public n(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/w;
  .registers 5
  .line 1
    iget-object v0, p1, Landroidx/fragment/app/Fragment;->t:Landroidx/fragment/app/n;
    if-eqz v0, :L1
    iget-object v1, p0, Landroidx/fragment/app/a;->r:Landroidx/fragment/app/n;
    if-ne v0, v1, :L0
    goto :L1
  :L0
  .line 2
    new-instance v0, Ljava/lang/IllegalStateException;
    new-instance v1, Ljava/lang/StringBuilder;
    invoke-direct { v1 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v2, "Cannot hide Fragment attached to a different FragmentManager. Fragment "
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
  .line 3
    invoke-virtual { p1 }, Landroidx/fragment/app/Fragment;->toString()Ljava/lang/String;
    move-result-object p1
    invoke-virtual { v1, p1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string p1, " is already attached to a FragmentManager."
    invoke-virtual { v1, p1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p1
    invoke-direct { v0, p1 }, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
    throw v0
  :L1
  .line 4
    invoke-super { p0, p1 }, Landroidx/fragment/app/w;->n(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/w;
    return-object p0
.end method

.method public o(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/w;
  .registers 5
  .line 1
    iget-object v0, p1, Landroidx/fragment/app/Fragment;->t:Landroidx/fragment/app/n;
    if-eqz v0, :L1
    iget-object v1, p0, Landroidx/fragment/app/a;->r:Landroidx/fragment/app/n;
    if-ne v0, v1, :L0
    goto :L1
  :L0
  .line 2
    new-instance v0, Ljava/lang/IllegalStateException;
    new-instance v1, Ljava/lang/StringBuilder;
    invoke-direct { v1 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v2, "Cannot remove Fragment attached to a different FragmentManager. Fragment "
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
  .line 3
    invoke-virtual { p1 }, Landroidx/fragment/app/Fragment;->toString()Ljava/lang/String;
    move-result-object p1
    invoke-virtual { v1, p1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string p1, " is already attached to a FragmentManager."
    invoke-virtual { v1, p1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p1
    invoke-direct { v0, p1 }, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
    throw v0
  :L1
  .line 4
    invoke-super { p0, p1 }, Landroidx/fragment/app/w;->o(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/w;
    return-object p0
.end method

.method public t(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/w;
  .registers 5
  .line 1
    iget-object v0, p1, Landroidx/fragment/app/Fragment;->t:Landroidx/fragment/app/n;
    if-eqz v0, :L1
    iget-object v1, p0, Landroidx/fragment/app/a;->r:Landroidx/fragment/app/n;
    if-ne v0, v1, :L0
    goto :L1
  :L0
  .line 2
    new-instance v0, Ljava/lang/IllegalStateException;
    new-instance v1, Ljava/lang/StringBuilder;
    invoke-direct { v1 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v2, "Cannot show Fragment attached to a different FragmentManager. Fragment "
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
  .line 3
    invoke-virtual { p1 }, Landroidx/fragment/app/Fragment;->toString()Ljava/lang/String;
    move-result-object p1
    invoke-virtual { v1, p1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string p1, " is already attached to a FragmentManager."
    invoke-virtual { v1, p1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p1
    invoke-direct { v0, p1 }, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
    throw v0
  :L1
  .line 4
    invoke-super { p0, p1 }, Landroidx/fragment/app/w;->t(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/w;
    return-object p0
.end method

.method public toString()Ljava/lang/String;
  .registers 3
  .line 1
    new-instance v0, Ljava/lang/StringBuilder;
    const/16 v1, 128
    invoke-direct { v0, v1 }, Ljava/lang/StringBuilder;-><init>(I)V
    const-string v1, "BackStackEntry{"
  .line 2
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
  .line 3
    invoke-static { p0 }, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I
    move-result v1
    invoke-static { v1 }, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;
    move-result-object v1
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
  .line 4
    iget v1, p0, Landroidx/fragment/app/a;->t:I
    if-ltz v1, :L0
    const-string v1, " #"
  .line 5
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
  .line 6
    iget v1, p0, Landroidx/fragment/app/a;->t:I
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
  :L0
  .line 7
    iget-object v1, p0, Landroidx/fragment/app/w;->i:Ljava/lang/String;
    if-eqz v1, :L1
    const-string v1, " "
  .line 8
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
  .line 9
    iget-object v1, p0, Landroidx/fragment/app/w;->i:Ljava/lang/String;
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
  :L1
    const-string v1, "}"
  .line 10
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
  .line 11
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    return-object v0
.end method

.method u(I)V
  .registers 8
  .line 1
    iget-boolean v0, p0, Landroidx/fragment/app/w;->g:Z
    if-nez v0, :L0
    return-void
  :L0
    const/4 v0, 2
  .line 2
    invoke-static { v0 }, Landroidx/fragment/app/n;->E0(I)Z
    move-result v1
    if-eqz v1, :L1
  .line 3
    new-instance v1, Ljava/lang/StringBuilder;
    invoke-direct { v1 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v2, "Bump nesting in "
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v1, p0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    const-string v2, " by "
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v1, p1 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { v1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
  :L1
  .line 4
    iget-object v1, p0, Landroidx/fragment/app/w;->a:Ljava/util/ArrayList;
    invoke-virtual { v1 }, Ljava/util/ArrayList;->size()I
    move-result v1
    const/4 v2, 0
  :L2
    if-ge v2, v1, :L4
  .line 5
    iget-object v3, p0, Landroidx/fragment/app/w;->a:Ljava/util/ArrayList;
    invoke-virtual { v3, v2 }, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
    move-result-object v3
    check-cast v3, Landroidx/fragment/app/w$a;
  .line 6
    iget-object v4, v3, Landroidx/fragment/app/w$a;->b:Landroidx/fragment/app/Fragment;
    if-eqz v4, :L3
  .line 7
    iget v5, v4, Landroidx/fragment/app/Fragment;->s:I
    add-int/2addr v5, p1
    iput v5, v4, Landroidx/fragment/app/Fragment;->s:I
  .line 8
    invoke-static { v0 }, Landroidx/fragment/app/n;->E0(I)Z
    move-result v4
    if-eqz v4, :L3
  .line 9
    new-instance v4, Ljava/lang/StringBuilder;
    invoke-direct { v4 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v5, "Bump nesting of "
    invoke-virtual { v4, v5 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget-object v5, v3, Landroidx/fragment/app/w$a;->b:Landroidx/fragment/app/Fragment;
    invoke-virtual { v4, v5 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    const-string v5, " to "
    invoke-virtual { v4, v5 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget-object v3, v3, Landroidx/fragment/app/w$a;->b:Landroidx/fragment/app/Fragment;
    iget v3, v3, Landroidx/fragment/app/Fragment;->s:I
    invoke-virtual { v4, v3 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { v4 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
  :L3
    add-int/lit8 v2, v2, 1
    goto :L2
  :L4
    return-void
.end method

.method v(Z)I
  .registers 4
  .line 1
    iget-boolean v0, p0, Landroidx/fragment/app/a;->s:Z
    if-nez v0, :L3
    const/4 v0, 2
  .line 2
    invoke-static { v0 }, Landroidx/fragment/app/n;->E0(I)Z
    move-result v0
    if-eqz v0, :L0
  .line 3
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "Commit: "
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0, p0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
  .line 4
    new-instance v0, Landroidx/fragment/app/b0;
    const-string v1, "FragmentManager"
    invoke-direct { v0, v1 }, Landroidx/fragment/app/b0;-><init>(Ljava/lang/String;)V
  .line 5
    new-instance v1, Ljava/io/PrintWriter;
    invoke-direct { v1, v0 }, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V
    const-string v0, "  "
  .line 6
    invoke-virtual { p0, v0, v1 }, Landroidx/fragment/app/a;->w(Ljava/lang/String;Ljava/io/PrintWriter;)V
  .line 7
    invoke-virtual { v1 }, Ljava/io/PrintWriter;->close()V
  :L0
    const/4 v0, 1
  .line 8
    iput-boolean v0, p0, Landroidx/fragment/app/a;->s:Z
  .line 9
    iget-boolean v0, p0, Landroidx/fragment/app/w;->g:Z
    if-eqz v0, :L1
  .line 10
    iget-object v0, p0, Landroidx/fragment/app/a;->r:Landroidx/fragment/app/n;
    invoke-virtual { v0 }, Landroidx/fragment/app/n;->i()I
    move-result v0
    iput v0, p0, Landroidx/fragment/app/a;->t:I
    goto :L2
  :L1
    const/4 v0, -1
  .line 11
    iput v0, p0, Landroidx/fragment/app/a;->t:I
  :L2
  .line 12
    iget-object v0, p0, Landroidx/fragment/app/a;->r:Landroidx/fragment/app/n;
    invoke-virtual { v0, p0, p1 }, Landroidx/fragment/app/n;->Y(Landroidx/fragment/app/n$o;Z)V
  .line 13
    iget p1, p0, Landroidx/fragment/app/a;->t:I
    return p1
  :L3
  .line 14
    new-instance p1, Ljava/lang/IllegalStateException;
    const-string v0, "commit already called"
    invoke-direct { p1, v0 }, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
    throw p1
.end method

.method public w(Ljava/lang/String;Ljava/io/PrintWriter;)V
  .registers 4
    const/4 v0, 1
  .line 1
    invoke-virtual { p0, p1, p2, v0 }, Landroidx/fragment/app/a;->x(Ljava/lang/String;Ljava/io/PrintWriter;Z)V
    return-void
.end method

.method public x(Ljava/lang/String;Ljava/io/PrintWriter;Z)V
  .registers 9
    if-eqz p3, :L8
  .line 1
    invoke-virtual { p2, p1 }, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
    const-string v0, "mName="
    invoke-virtual { p2, v0 }, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
    iget-object v0, p0, Landroidx/fragment/app/w;->i:Ljava/lang/String;
    invoke-virtual { p2, v0 }, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
    const-string v0, " mIndex="
  .line 2
    invoke-virtual { p2, v0 }, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
    iget v0, p0, Landroidx/fragment/app/a;->t:I
    invoke-virtual { p2, v0 }, Ljava/io/PrintWriter;->print(I)V
    const-string v0, " mCommitted="
  .line 3
    invoke-virtual { p2, v0 }, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
    iget-boolean v0, p0, Landroidx/fragment/app/a;->s:Z
    invoke-virtual { p2, v0 }, Ljava/io/PrintWriter;->println(Z)V
  .line 4
    iget v0, p0, Landroidx/fragment/app/w;->f:I
    if-eqz v0, :L0
  .line 5
    invoke-virtual { p2, p1 }, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
    const-string v0, "mTransition=#"
    invoke-virtual { p2, v0 }, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
  .line 6
    iget v0, p0, Landroidx/fragment/app/w;->f:I
    invoke-static { v0 }, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;
    move-result-object v0
    invoke-virtual { p2, v0 }, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
  :L0
  .line 7
    iget v0, p0, Landroidx/fragment/app/w;->b:I
    if-nez v0, :L1
    iget v0, p0, Landroidx/fragment/app/w;->c:I
    if-eqz v0, :L2
  :L1
  .line 8
    invoke-virtual { p2, p1 }, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
    const-string v0, "mEnterAnim=#"
    invoke-virtual { p2, v0 }, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
  .line 9
    iget v0, p0, Landroidx/fragment/app/w;->b:I
    invoke-static { v0 }, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;
    move-result-object v0
    invoke-virtual { p2, v0 }, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
    const-string v0, " mExitAnim=#"
  .line 10
    invoke-virtual { p2, v0 }, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
  .line 11
    iget v0, p0, Landroidx/fragment/app/w;->c:I
    invoke-static { v0 }, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;
    move-result-object v0
    invoke-virtual { p2, v0 }, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
  :L2
  .line 12
    iget v0, p0, Landroidx/fragment/app/w;->d:I
    if-nez v0, :L3
    iget v0, p0, Landroidx/fragment/app/w;->e:I
    if-eqz v0, :L4
  :L3
  .line 13
    invoke-virtual { p2, p1 }, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
    const-string v0, "mPopEnterAnim=#"
    invoke-virtual { p2, v0 }, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
  .line 14
    iget v0, p0, Landroidx/fragment/app/w;->d:I
    invoke-static { v0 }, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;
    move-result-object v0
    invoke-virtual { p2, v0 }, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
    const-string v0, " mPopExitAnim=#"
  .line 15
    invoke-virtual { p2, v0 }, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
  .line 16
    iget v0, p0, Landroidx/fragment/app/w;->e:I
    invoke-static { v0 }, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;
    move-result-object v0
    invoke-virtual { p2, v0 }, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
  :L4
  .line 17
    iget v0, p0, Landroidx/fragment/app/w;->j:I
    if-nez v0, :L5
    iget-object v0, p0, Landroidx/fragment/app/w;->k:Ljava/lang/CharSequence;
    if-eqz v0, :L6
  :L5
  .line 18
    invoke-virtual { p2, p1 }, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
    const-string v0, "mBreadCrumbTitleRes=#"
    invoke-virtual { p2, v0 }, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
  .line 19
    iget v0, p0, Landroidx/fragment/app/w;->j:I
    invoke-static { v0 }, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;
    move-result-object v0
    invoke-virtual { p2, v0 }, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
    const-string v0, " mBreadCrumbTitleText="
  .line 20
    invoke-virtual { p2, v0 }, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
  .line 21
    iget-object v0, p0, Landroidx/fragment/app/w;->k:Ljava/lang/CharSequence;
    invoke-virtual { p2, v0 }, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V
  :L6
  .line 22
    iget v0, p0, Landroidx/fragment/app/w;->l:I
    if-nez v0, :L7
    iget-object v0, p0, Landroidx/fragment/app/w;->m:Ljava/lang/CharSequence;
    if-eqz v0, :L8
  :L7
  .line 23
    invoke-virtual { p2, p1 }, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
    const-string v0, "mBreadCrumbShortTitleRes=#"
    invoke-virtual { p2, v0 }, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
  .line 24
    iget v0, p0, Landroidx/fragment/app/w;->l:I
    invoke-static { v0 }, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;
    move-result-object v0
    invoke-virtual { p2, v0 }, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
    const-string v0, " mBreadCrumbShortTitleText="
  .line 25
    invoke-virtual { p2, v0 }, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
  .line 26
    iget-object v0, p0, Landroidx/fragment/app/w;->m:Ljava/lang/CharSequence;
    invoke-virtual { p2, v0 }, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V
  :L8
  .line 27
    iget-object v0, p0, Landroidx/fragment/app/w;->a:Ljava/util/ArrayList;
    invoke-virtual { v0 }, Ljava/util/ArrayList;->isEmpty()Z
    move-result v0
    if-nez v0, :L26
  .line 28
    invoke-virtual { p2, p1 }, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
    const-string v0, "Operations:"
    invoke-virtual { p2, v0 }, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
  .line 29
    iget-object v0, p0, Landroidx/fragment/app/w;->a:Ljava/util/ArrayList;
    invoke-virtual { v0 }, Ljava/util/ArrayList;->size()I
    move-result v0
    const/4 v1, 0
  :L9
    if-ge v1, v0, :L26
  .line 30
    iget-object v2, p0, Landroidx/fragment/app/w;->a:Ljava/util/ArrayList;
    invoke-virtual { v2, v1 }, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
    move-result-object v2
    check-cast v2, Landroidx/fragment/app/w$a;
  .line 31
    iget v3, v2, Landroidx/fragment/app/w$a;->a:I
    packed-switch v3, :L27
  .line 32
    new-instance v3, Ljava/lang/StringBuilder;
    invoke-direct { v3 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v4, "cmd="
    invoke-virtual { v3, v4 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget v4, v2, Landroidx/fragment/app/w$a;->a:I
    invoke-virtual { v3, v4 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { v3 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v3
    goto :L21
  :L10
    const-string v3, "OP_SET_MAX_LIFECYCLE"
    goto :L21
  :L11
    const-string v3, "UNSET_PRIMARY_NAV"
    goto :L21
  :L12
    const-string v3, "SET_PRIMARY_NAV"
    goto :L21
  :L13
    const-string v3, "ATTACH"
    goto :L21
  :L14
    const-string v3, "DETACH"
    goto :L21
  :L15
    const-string v3, "SHOW"
    goto :L21
  :L16
    const-string v3, "HIDE"
    goto :L21
  :L17
    const-string v3, "REMOVE"
    goto :L21
  :L18
    const-string v3, "REPLACE"
    goto :L21
  :L19
    const-string v3, "ADD"
    goto :L21
  :L20
    const-string v3, "NULL"
  :L21
  .line 33
    invoke-virtual { p2, p1 }, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
    const-string v4, "  Op #"
    invoke-virtual { p2, v4 }, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
    invoke-virtual { p2, v1 }, Ljava/io/PrintWriter;->print(I)V
    const-string v4, ": "
  .line 34
    invoke-virtual { p2, v4 }, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
    invoke-virtual { p2, v3 }, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
    const-string v3, " "
  .line 35
    invoke-virtual { p2, v3 }, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
    iget-object v3, v2, Landroidx/fragment/app/w$a;->b:Landroidx/fragment/app/Fragment;
    invoke-virtual { p2, v3 }, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V
    if-eqz p3, :L25
  .line 36
    iget v3, v2, Landroidx/fragment/app/w$a;->c:I
    if-nez v3, :L22
    iget v3, v2, Landroidx/fragment/app/w$a;->d:I
    if-eqz v3, :L23
  :L22
  .line 37
    invoke-virtual { p2, p1 }, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
    const-string v3, "enterAnim=#"
    invoke-virtual { p2, v3 }, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
  .line 38
    iget v3, v2, Landroidx/fragment/app/w$a;->c:I
    invoke-static { v3 }, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;
    move-result-object v3
    invoke-virtual { p2, v3 }, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
    const-string v3, " exitAnim=#"
  .line 39
    invoke-virtual { p2, v3 }, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
  .line 40
    iget v3, v2, Landroidx/fragment/app/w$a;->d:I
    invoke-static { v3 }, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;
    move-result-object v3
    invoke-virtual { p2, v3 }, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
  :L23
  .line 41
    iget v3, v2, Landroidx/fragment/app/w$a;->e:I
    if-nez v3, :L24
    iget v3, v2, Landroidx/fragment/app/w$a;->f:I
    if-eqz v3, :L25
  :L24
  .line 42
    invoke-virtual { p2, p1 }, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
    const-string v3, "popEnterAnim=#"
    invoke-virtual { p2, v3 }, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
  .line 43
    iget v3, v2, Landroidx/fragment/app/w$a;->e:I
    invoke-static { v3 }, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;
    move-result-object v3
    invoke-virtual { p2, v3 }, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
    const-string v3, " popExitAnim=#"
  .line 44
    invoke-virtual { p2, v3 }, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
  .line 45
    iget v2, v2, Landroidx/fragment/app/w$a;->f:I
    invoke-static { v2 }, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;
    move-result-object v2
    invoke-virtual { p2, v2 }, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
  :L25
    add-int/lit8 v1, v1, 1
    goto/16 :L9
  :L26
    return-void
  :L27
  .packed-switch 0
    :L20
    :L19
    :L18
    :L17
    :L16
    :L15
    :L14
    :L13
    :L12
    :L11
    :L10
  .end packed-switch
.end method

.method y()V
  .registers 11
  .line 1
    iget-object v0, p0, Landroidx/fragment/app/w;->a:Ljava/util/ArrayList;
    invoke-virtual { v0 }, Ljava/util/ArrayList;->size()I
    move-result v0
    const/4 v1, 0
    const/4 v2, 0
  :L0
    const/4 v3, 1
    if-ge v2, v0, :L14
  .line 2
    iget-object v4, p0, Landroidx/fragment/app/w;->a:Ljava/util/ArrayList;
    invoke-virtual { v4, v2 }, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
    move-result-object v4
    check-cast v4, Landroidx/fragment/app/w$a;
  .line 3
    iget-object v5, v4, Landroidx/fragment/app/w$a;->b:Landroidx/fragment/app/Fragment;
    if-eqz v5, :L1
  .line 4
    invoke-virtual { v5, v1 }, Landroidx/fragment/app/Fragment;->X1(Z)V
  .line 5
    iget v6, p0, Landroidx/fragment/app/w;->f:I
    invoke-virtual { v5, v6 }, Landroidx/fragment/app/Fragment;->V1(I)V
  .line 6
    iget-object v6, p0, Landroidx/fragment/app/w;->n:Ljava/util/ArrayList;
    iget-object v7, p0, Landroidx/fragment/app/w;->o:Ljava/util/ArrayList;
    invoke-virtual { v5, v6, v7 }, Landroidx/fragment/app/Fragment;->Z1(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
  :L1
  .line 7
    iget v6, v4, Landroidx/fragment/app/w$a;->a:I
    packed-switch v6, :L16
  :L2
  .line 8
    new-instance v0, Ljava/lang/IllegalArgumentException;
    new-instance v1, Ljava/lang/StringBuilder;
    invoke-direct { v1 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v2, "Unknown cmd: "
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget v2, v4, Landroidx/fragment/app/w$a;->a:I
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { v1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v1
    invoke-direct { v0, v1 }, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
    throw v0
  :L3
  .line 9
    iget-object v6, p0, Landroidx/fragment/app/a;->r:Landroidx/fragment/app/n;
    iget-object v7, v4, Landroidx/fragment/app/w$a;->h:Landroidx/lifecycle/f$c;
    invoke-virtual { v6, v5, v7 }, Landroidx/fragment/app/n;->i1(Landroidx/fragment/app/Fragment;Landroidx/lifecycle/f$c;)V
    goto/16 :L12
  :L4
  .line 10
    iget-object v6, p0, Landroidx/fragment/app/a;->r:Landroidx/fragment/app/n;
    const/4 v7, 0
    invoke-virtual { v6, v7 }, Landroidx/fragment/app/n;->j1(Landroidx/fragment/app/Fragment;)V
    goto/16 :L12
  :L5
  .line 11
    iget-object v6, p0, Landroidx/fragment/app/a;->r:Landroidx/fragment/app/n;
    invoke-virtual { v6, v5 }, Landroidx/fragment/app/n;->j1(Landroidx/fragment/app/Fragment;)V
    goto/16 :L12
  :L6
  .line 12
    iget v6, v4, Landroidx/fragment/app/w$a;->c:I
    iget v7, v4, Landroidx/fragment/app/w$a;->d:I
    iget v8, v4, Landroidx/fragment/app/w$a;->e:I
    iget v9, v4, Landroidx/fragment/app/w$a;->f:I
    invoke-virtual { v5, v6, v7, v8, v9 }, Landroidx/fragment/app/Fragment;->Q1(IIII)V
  .line 13
    iget-object v6, p0, Landroidx/fragment/app/a;->r:Landroidx/fragment/app/n;
    invoke-virtual { v6, v5, v1 }, Landroidx/fragment/app/n;->h1(Landroidx/fragment/app/Fragment;Z)V
  .line 14
    iget-object v6, p0, Landroidx/fragment/app/a;->r:Landroidx/fragment/app/n;
    invoke-virtual { v6, v5 }, Landroidx/fragment/app/n;->k(Landroidx/fragment/app/Fragment;)V
    goto :L12
  :L7
  .line 15
    iget v6, v4, Landroidx/fragment/app/w$a;->c:I
    iget v7, v4, Landroidx/fragment/app/w$a;->d:I
    iget v8, v4, Landroidx/fragment/app/w$a;->e:I
    iget v9, v4, Landroidx/fragment/app/w$a;->f:I
    invoke-virtual { v5, v6, v7, v8, v9 }, Landroidx/fragment/app/Fragment;->Q1(IIII)V
  .line 16
    iget-object v6, p0, Landroidx/fragment/app/a;->r:Landroidx/fragment/app/n;
    invoke-virtual { v6, v5 }, Landroidx/fragment/app/n;->x(Landroidx/fragment/app/Fragment;)V
    goto :L12
  :L8
  .line 17
    iget v6, v4, Landroidx/fragment/app/w$a;->c:I
    iget v7, v4, Landroidx/fragment/app/w$a;->d:I
    iget v8, v4, Landroidx/fragment/app/w$a;->e:I
    iget v9, v4, Landroidx/fragment/app/w$a;->f:I
    invoke-virtual { v5, v6, v7, v8, v9 }, Landroidx/fragment/app/Fragment;->Q1(IIII)V
  .line 18
    iget-object v6, p0, Landroidx/fragment/app/a;->r:Landroidx/fragment/app/n;
    invoke-virtual { v6, v5, v1 }, Landroidx/fragment/app/n;->h1(Landroidx/fragment/app/Fragment;Z)V
  .line 19
    iget-object v6, p0, Landroidx/fragment/app/a;->r:Landroidx/fragment/app/n;
    invoke-virtual { v6, v5 }, Landroidx/fragment/app/n;->l1(Landroidx/fragment/app/Fragment;)V
    goto :L12
  :L9
  .line 20
    iget v6, v4, Landroidx/fragment/app/w$a;->c:I
    iget v7, v4, Landroidx/fragment/app/w$a;->d:I
    iget v8, v4, Landroidx/fragment/app/w$a;->e:I
    iget v9, v4, Landroidx/fragment/app/w$a;->f:I
    invoke-virtual { v5, v6, v7, v8, v9 }, Landroidx/fragment/app/Fragment;->Q1(IIII)V
  .line 21
    iget-object v6, p0, Landroidx/fragment/app/a;->r:Landroidx/fragment/app/n;
    invoke-virtual { v6, v5 }, Landroidx/fragment/app/n;->B0(Landroidx/fragment/app/Fragment;)V
    goto :L12
  :L10
  .line 22
    iget v6, v4, Landroidx/fragment/app/w$a;->c:I
    iget v7, v4, Landroidx/fragment/app/w$a;->d:I
    iget v8, v4, Landroidx/fragment/app/w$a;->e:I
    iget v9, v4, Landroidx/fragment/app/w$a;->f:I
    invoke-virtual { v5, v6, v7, v8, v9 }, Landroidx/fragment/app/Fragment;->Q1(IIII)V
  .line 23
    iget-object v6, p0, Landroidx/fragment/app/a;->r:Landroidx/fragment/app/n;
    invoke-virtual { v6, v5 }, Landroidx/fragment/app/n;->a1(Landroidx/fragment/app/Fragment;)V
    goto :L12
  :L11
  .line 24
    iget v6, v4, Landroidx/fragment/app/w$a;->c:I
    iget v7, v4, Landroidx/fragment/app/w$a;->d:I
    iget v8, v4, Landroidx/fragment/app/w$a;->e:I
    iget v9, v4, Landroidx/fragment/app/w$a;->f:I
    invoke-virtual { v5, v6, v7, v8, v9 }, Landroidx/fragment/app/Fragment;->Q1(IIII)V
  .line 25
    iget-object v6, p0, Landroidx/fragment/app/a;->r:Landroidx/fragment/app/n;
    invoke-virtual { v6, v5, v1 }, Landroidx/fragment/app/n;->h1(Landroidx/fragment/app/Fragment;Z)V
  .line 26
    iget-object v6, p0, Landroidx/fragment/app/a;->r:Landroidx/fragment/app/n;
    invoke-virtual { v6, v5 }, Landroidx/fragment/app/n;->g(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/u;
  :L12
  .line 27
    iget-boolean v6, p0, Landroidx/fragment/app/w;->p:Z
    if-nez v6, :L13
    iget v4, v4, Landroidx/fragment/app/w$a;->a:I
    if-eq v4, v3, :L13
    if-eqz v5, :L13
  .line 28
    sget-boolean v3, Landroidx/fragment/app/n;->P:Z
    if-nez v3, :L13
  .line 29
    iget-object v3, p0, Landroidx/fragment/app/a;->r:Landroidx/fragment/app/n;
    invoke-virtual { v3, v5 }, Landroidx/fragment/app/n;->N0(Landroidx/fragment/app/Fragment;)V
  :L13
    add-int/lit8 v2, v2, 1
    goto/16 :L0
  :L14
  .line 30
    iget-boolean v0, p0, Landroidx/fragment/app/w;->p:Z
    if-nez v0, :L15
    sget-boolean v0, Landroidx/fragment/app/n;->P:Z
    if-nez v0, :L15
  .line 31
    iget-object v0, p0, Landroidx/fragment/app/a;->r:Landroidx/fragment/app/n;
    iget v1, v0, Landroidx/fragment/app/n;->q:I
    invoke-virtual { v0, v1, v3 }, Landroidx/fragment/app/n;->O0(IZ)V
  :L15
    return-void
  :L16
  .packed-switch 1
    :L11
    :L2
    :L10
    :L9
    :L8
    :L7
    :L6
    :L5
    :L4
    :L3
  .end packed-switch
.end method

.method z(Z)V
  .registers 10
  .line 1
    iget-object v0, p0, Landroidx/fragment/app/w;->a:Ljava/util/ArrayList;
    invoke-virtual { v0 }, Ljava/util/ArrayList;->size()I
    move-result v0
    const/4 v1, 1
    sub-int/2addr v0, v1
  :L0
    if-ltz v0, :L14
  .line 2
    iget-object v2, p0, Landroidx/fragment/app/w;->a:Ljava/util/ArrayList;
    invoke-virtual { v2, v0 }, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
    move-result-object v2
    check-cast v2, Landroidx/fragment/app/w$a;
  .line 3
    iget-object v3, v2, Landroidx/fragment/app/w$a;->b:Landroidx/fragment/app/Fragment;
    if-eqz v3, :L1
  .line 4
    invoke-virtual { v3, v1 }, Landroidx/fragment/app/Fragment;->X1(Z)V
  .line 5
    iget v4, p0, Landroidx/fragment/app/w;->f:I
    invoke-static { v4 }, Landroidx/fragment/app/n;->e1(I)I
    move-result v4
    invoke-virtual { v3, v4 }, Landroidx/fragment/app/Fragment;->V1(I)V
  .line 6
    iget-object v4, p0, Landroidx/fragment/app/w;->o:Ljava/util/ArrayList;
    iget-object v5, p0, Landroidx/fragment/app/w;->n:Ljava/util/ArrayList;
    invoke-virtual { v3, v4, v5 }, Landroidx/fragment/app/Fragment;->Z1(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
  :L1
  .line 7
    iget v4, v2, Landroidx/fragment/app/w$a;->a:I
    packed-switch v4, :L16
  :L2
  .line 8
    new-instance p1, Ljava/lang/IllegalArgumentException;
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "Unknown cmd: "
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget v1, v2, Landroidx/fragment/app/w$a;->a:I
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    invoke-direct { p1, v0 }, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
    throw p1
  :L3
  .line 9
    iget-object v4, p0, Landroidx/fragment/app/a;->r:Landroidx/fragment/app/n;
    iget-object v5, v2, Landroidx/fragment/app/w$a;->g:Landroidx/lifecycle/f$c;
    invoke-virtual { v4, v3, v5 }, Landroidx/fragment/app/n;->i1(Landroidx/fragment/app/Fragment;Landroidx/lifecycle/f$c;)V
    goto/16 :L12
  :L4
  .line 10
    iget-object v4, p0, Landroidx/fragment/app/a;->r:Landroidx/fragment/app/n;
    invoke-virtual { v4, v3 }, Landroidx/fragment/app/n;->j1(Landroidx/fragment/app/Fragment;)V
    goto/16 :L12
  :L5
  .line 11
    iget-object v4, p0, Landroidx/fragment/app/a;->r:Landroidx/fragment/app/n;
    const/4 v5, 0
    invoke-virtual { v4, v5 }, Landroidx/fragment/app/n;->j1(Landroidx/fragment/app/Fragment;)V
    goto/16 :L12
  :L6
  .line 12
    iget v4, v2, Landroidx/fragment/app/w$a;->c:I
    iget v5, v2, Landroidx/fragment/app/w$a;->d:I
    iget v6, v2, Landroidx/fragment/app/w$a;->e:I
    iget v7, v2, Landroidx/fragment/app/w$a;->f:I
    invoke-virtual { v3, v4, v5, v6, v7 }, Landroidx/fragment/app/Fragment;->Q1(IIII)V
  .line 13
    iget-object v4, p0, Landroidx/fragment/app/a;->r:Landroidx/fragment/app/n;
    invoke-virtual { v4, v3, v1 }, Landroidx/fragment/app/n;->h1(Landroidx/fragment/app/Fragment;Z)V
  .line 14
    iget-object v4, p0, Landroidx/fragment/app/a;->r:Landroidx/fragment/app/n;
    invoke-virtual { v4, v3 }, Landroidx/fragment/app/n;->x(Landroidx/fragment/app/Fragment;)V
    goto :L12
  :L7
  .line 15
    iget v4, v2, Landroidx/fragment/app/w$a;->c:I
    iget v5, v2, Landroidx/fragment/app/w$a;->d:I
    iget v6, v2, Landroidx/fragment/app/w$a;->e:I
    iget v7, v2, Landroidx/fragment/app/w$a;->f:I
    invoke-virtual { v3, v4, v5, v6, v7 }, Landroidx/fragment/app/Fragment;->Q1(IIII)V
  .line 16
    iget-object v4, p0, Landroidx/fragment/app/a;->r:Landroidx/fragment/app/n;
    invoke-virtual { v4, v3 }, Landroidx/fragment/app/n;->k(Landroidx/fragment/app/Fragment;)V
    goto :L12
  :L8
  .line 17
    iget v4, v2, Landroidx/fragment/app/w$a;->c:I
    iget v5, v2, Landroidx/fragment/app/w$a;->d:I
    iget v6, v2, Landroidx/fragment/app/w$a;->e:I
    iget v7, v2, Landroidx/fragment/app/w$a;->f:I
    invoke-virtual { v3, v4, v5, v6, v7 }, Landroidx/fragment/app/Fragment;->Q1(IIII)V
  .line 18
    iget-object v4, p0, Landroidx/fragment/app/a;->r:Landroidx/fragment/app/n;
    invoke-virtual { v4, v3, v1 }, Landroidx/fragment/app/n;->h1(Landroidx/fragment/app/Fragment;Z)V
  .line 19
    iget-object v4, p0, Landroidx/fragment/app/a;->r:Landroidx/fragment/app/n;
    invoke-virtual { v4, v3 }, Landroidx/fragment/app/n;->B0(Landroidx/fragment/app/Fragment;)V
    goto :L12
  :L9
  .line 20
    iget v4, v2, Landroidx/fragment/app/w$a;->c:I
    iget v5, v2, Landroidx/fragment/app/w$a;->d:I
    iget v6, v2, Landroidx/fragment/app/w$a;->e:I
    iget v7, v2, Landroidx/fragment/app/w$a;->f:I
    invoke-virtual { v3, v4, v5, v6, v7 }, Landroidx/fragment/app/Fragment;->Q1(IIII)V
  .line 21
    iget-object v4, p0, Landroidx/fragment/app/a;->r:Landroidx/fragment/app/n;
    invoke-virtual { v4, v3 }, Landroidx/fragment/app/n;->l1(Landroidx/fragment/app/Fragment;)V
    goto :L12
  :L10
  .line 22
    iget v4, v2, Landroidx/fragment/app/w$a;->c:I
    iget v5, v2, Landroidx/fragment/app/w$a;->d:I
    iget v6, v2, Landroidx/fragment/app/w$a;->e:I
    iget v7, v2, Landroidx/fragment/app/w$a;->f:I
    invoke-virtual { v3, v4, v5, v6, v7 }, Landroidx/fragment/app/Fragment;->Q1(IIII)V
  .line 23
    iget-object v4, p0, Landroidx/fragment/app/a;->r:Landroidx/fragment/app/n;
    invoke-virtual { v4, v3 }, Landroidx/fragment/app/n;->g(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/u;
    goto :L12
  :L11
  .line 24
    iget v4, v2, Landroidx/fragment/app/w$a;->c:I
    iget v5, v2, Landroidx/fragment/app/w$a;->d:I
    iget v6, v2, Landroidx/fragment/app/w$a;->e:I
    iget v7, v2, Landroidx/fragment/app/w$a;->f:I
    invoke-virtual { v3, v4, v5, v6, v7 }, Landroidx/fragment/app/Fragment;->Q1(IIII)V
  .line 25
    iget-object v4, p0, Landroidx/fragment/app/a;->r:Landroidx/fragment/app/n;
    invoke-virtual { v4, v3, v1 }, Landroidx/fragment/app/n;->h1(Landroidx/fragment/app/Fragment;Z)V
  .line 26
    iget-object v4, p0, Landroidx/fragment/app/a;->r:Landroidx/fragment/app/n;
    invoke-virtual { v4, v3 }, Landroidx/fragment/app/n;->a1(Landroidx/fragment/app/Fragment;)V
  :L12
  .line 27
    iget-boolean v4, p0, Landroidx/fragment/app/w;->p:Z
    if-nez v4, :L13
    iget v2, v2, Landroidx/fragment/app/w$a;->a:I
    const/4 v4, 3
    if-eq v2, v4, :L13
    if-eqz v3, :L13
  .line 28
    sget-boolean v2, Landroidx/fragment/app/n;->P:Z
    if-nez v2, :L13
  .line 29
    iget-object v2, p0, Landroidx/fragment/app/a;->r:Landroidx/fragment/app/n;
    invoke-virtual { v2, v3 }, Landroidx/fragment/app/n;->N0(Landroidx/fragment/app/Fragment;)V
  :L13
    add-int/lit8 v0, v0, -1
    goto/16 :L0
  :L14
  .line 30
    iget-boolean v0, p0, Landroidx/fragment/app/w;->p:Z
    if-nez v0, :L15
    if-eqz p1, :L15
    sget-boolean p1, Landroidx/fragment/app/n;->P:Z
    if-nez p1, :L15
  .line 31
    iget-object p1, p0, Landroidx/fragment/app/a;->r:Landroidx/fragment/app/n;
    iget v0, p1, Landroidx/fragment/app/n;->q:I
    invoke-virtual { p1, v0, v1 }, Landroidx/fragment/app/n;->O0(IZ)V
  :L15
    return-void
  :L16
  .packed-switch 1
    :L11
    :L2
    :L10
    :L9
    :L8
    :L7
    :L6
    :L5
    :L4
    :L3
  .end packed-switch
.end method
