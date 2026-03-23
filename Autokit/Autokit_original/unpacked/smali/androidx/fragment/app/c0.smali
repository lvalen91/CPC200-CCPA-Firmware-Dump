.class abstract Landroidx/fragment/app/c0;
.super Ljava/lang/Object;
.source "SourceFile"

.annotation system Ldalvik/annotation/MemberClasses;
  value = {
    Landroidx/fragment/app/c0$d;,
    Landroidx/fragment/app/c0$e;
  }
.end annotation

.field private final a:Landroid/view/ViewGroup;

.field final b:Ljava/util/ArrayList;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "Ljava/util/ArrayList<",
      "Landroidx/fragment/app/c0$e;",
      ">;"
    }
  .end annotation
.end field

.field final c:Ljava/util/ArrayList;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "Ljava/util/ArrayList<",
      "Landroidx/fragment/app/c0$e;",
      ">;"
    }
  .end annotation
.end field

.field d:Z

.field e:Z

.method constructor <init>(Landroid/view/ViewGroup;)V
  .registers 3
  .line 1
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
  .line 2
    new-instance v0, Ljava/util/ArrayList;
    invoke-direct { v0 }, Ljava/util/ArrayList;-><init>()V
    iput-object v0, p0, Landroidx/fragment/app/c0;->b:Ljava/util/ArrayList;
  .line 3
    new-instance v0, Ljava/util/ArrayList;
    invoke-direct { v0 }, Ljava/util/ArrayList;-><init>()V
    iput-object v0, p0, Landroidx/fragment/app/c0;->c:Ljava/util/ArrayList;
    const/4 v0, 0
  .line 4
    iput-boolean v0, p0, Landroidx/fragment/app/c0;->d:Z
  .line 5
    iput-boolean v0, p0, Landroidx/fragment/app/c0;->e:Z
  .line 6
    iput-object p1, p0, Landroidx/fragment/app/c0;->a:Landroid/view/ViewGroup;
    return-void
.end method

.method private a(Landroidx/fragment/app/c0$e$c;Landroidx/fragment/app/c0$e$b;Landroidx/fragment/app/u;)V
  .catchall { :L0 .. :L3 } :L2
  .registers 7
  .line 1
    iget-object v0, p0, Landroidx/fragment/app/c0;->b:Ljava/util/ArrayList;
    monitor-enter v0
  :L0
  .line 2
    new-instance v1, Lc/g/g/b;
    invoke-direct { v1 }, Lc/g/g/b;-><init>()V
  .line 3
    invoke-virtual { p3 }, Landroidx/fragment/app/u;->k()Landroidx/fragment/app/Fragment;
    move-result-object v2
    invoke-direct { p0, v2 }, Landroidx/fragment/app/c0;->h(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/c0$e;
    move-result-object v2
    if-eqz v2, :L1
  .line 4
    invoke-virtual { v2, p1, p2 }, Landroidx/fragment/app/c0$e;->k(Landroidx/fragment/app/c0$e$c;Landroidx/fragment/app/c0$e$b;)V
  .line 5
    monitor-exit v0
    return-void
  :L1
  .line 6
    new-instance v2, Landroidx/fragment/app/c0$d;
    invoke-direct { v2, p1, p2, p3, v1 }, Landroidx/fragment/app/c0$d;-><init>(Landroidx/fragment/app/c0$e$c;Landroidx/fragment/app/c0$e$b;Landroidx/fragment/app/u;Lc/g/g/b;)V
  .line 7
    iget-object p1, p0, Landroidx/fragment/app/c0;->b:Ljava/util/ArrayList;
    invoke-virtual { p1, v2 }, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
  .line 8
    new-instance p1, Landroidx/fragment/app/c0$a;
    invoke-direct { p1, p0, v2 }, Landroidx/fragment/app/c0$a;-><init>(Landroidx/fragment/app/c0;Landroidx/fragment/app/c0$d;)V
    invoke-virtual { v2, p1 }, Landroidx/fragment/app/c0$e;->a(Ljava/lang/Runnable;)V
  .line 9
    new-instance p1, Landroidx/fragment/app/c0$b;
    invoke-direct { p1, p0, v2 }, Landroidx/fragment/app/c0$b;-><init>(Landroidx/fragment/app/c0;Landroidx/fragment/app/c0$d;)V
    invoke-virtual { v2, p1 }, Landroidx/fragment/app/c0$e;->a(Ljava/lang/Runnable;)V
  .line 10
    monitor-exit v0
    return-void
  :L2
    move-exception p1
    monitor-exit v0
  :L3
    throw p1
.end method

.method private h(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/c0$e;
  .registers 5
  .line 1
    iget-object v0, p0, Landroidx/fragment/app/c0;->b:Ljava/util/ArrayList;
    invoke-virtual { v0 }, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
    move-result-object v0
  :L0
    invoke-interface { v0 }, Ljava/util/Iterator;->hasNext()Z
    move-result v1
    if-eqz v1, :L1
    invoke-interface { v0 }, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object v1
    check-cast v1, Landroidx/fragment/app/c0$e;
  .line 2
    invoke-virtual { v1 }, Landroidx/fragment/app/c0$e;->f()Landroidx/fragment/app/Fragment;
    move-result-object v2
    invoke-virtual { v2, p1 }, Landroidx/fragment/app/Fragment;->equals(Ljava/lang/Object;)Z
    move-result v2
    if-eqz v2, :L0
    invoke-virtual { v1 }, Landroidx/fragment/app/c0$e;->h()Z
    move-result v2
    if-nez v2, :L0
    return-object v1
  :L1
    const/4 p1, 0
    return-object p1
.end method

.method private i(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/c0$e;
  .registers 5
  .line 1
    iget-object v0, p0, Landroidx/fragment/app/c0;->c:Ljava/util/ArrayList;
    invoke-virtual { v0 }, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
    move-result-object v0
  :L0
    invoke-interface { v0 }, Ljava/util/Iterator;->hasNext()Z
    move-result v1
    if-eqz v1, :L1
    invoke-interface { v0 }, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object v1
    check-cast v1, Landroidx/fragment/app/c0$e;
  .line 2
    invoke-virtual { v1 }, Landroidx/fragment/app/c0$e;->f()Landroidx/fragment/app/Fragment;
    move-result-object v2
    invoke-virtual { v2, p1 }, Landroidx/fragment/app/Fragment;->equals(Ljava/lang/Object;)Z
    move-result v2
    if-eqz v2, :L0
    invoke-virtual { v1 }, Landroidx/fragment/app/c0$e;->h()Z
    move-result v2
    if-nez v2, :L0
    return-object v1
  :L1
    const/4 p1, 0
    return-object p1
.end method

.method static n(Landroid/view/ViewGroup;Landroidx/fragment/app/n;)Landroidx/fragment/app/c0;
  .registers 2
  .line 1
    invoke-virtual { p1 }, Landroidx/fragment/app/n;->x0()Landroidx/fragment/app/d0;
    move-result-object p1
  .line 2
    invoke-static { p0, p1 }, Landroidx/fragment/app/c0;->o(Landroid/view/ViewGroup;Landroidx/fragment/app/d0;)Landroidx/fragment/app/c0;
    move-result-object p0
    return-object p0
.end method

.method static o(Landroid/view/ViewGroup;Landroidx/fragment/app/d0;)Landroidx/fragment/app/c0;
  .registers 4
  .line 1
    sget v0, Lc/j/b;->special_effects_controller_view_tag:I
    invoke-virtual { p0, v0 }, Landroid/view/ViewGroup;->getTag(I)Ljava/lang/Object;
    move-result-object v0
  .line 2
    instance-of v1, v0, Landroidx/fragment/app/c0;
    if-eqz v1, :L0
  .line 3
    check-cast v0, Landroidx/fragment/app/c0;
    return-object v0
  :L0
  .line 4
    invoke-interface { p1, p0 }, Landroidx/fragment/app/d0;->a(Landroid/view/ViewGroup;)Landroidx/fragment/app/c0;
    move-result-object p1
  .line 5
    sget v0, Lc/j/b;->special_effects_controller_view_tag:I
    invoke-virtual { p0, v0, p1 }, Landroid/view/ViewGroup;->setTag(ILjava/lang/Object;)V
    return-object p1
.end method

.method private q()V
  .registers 5
  .line 1
    iget-object v0, p0, Landroidx/fragment/app/c0;->b:Ljava/util/ArrayList;
    invoke-virtual { v0 }, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
    move-result-object v0
  :L0
    invoke-interface { v0 }, Ljava/util/Iterator;->hasNext()Z
    move-result v1
    if-eqz v1, :L1
    invoke-interface { v0 }, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object v1
    check-cast v1, Landroidx/fragment/app/c0$e;
  .line 2
    invoke-virtual { v1 }, Landroidx/fragment/app/c0$e;->g()Landroidx/fragment/app/c0$e$b;
    move-result-object v2
    sget-object v3, Landroidx/fragment/app/c0$e$b;->c:Landroidx/fragment/app/c0$e$b;
    if-ne v2, v3, :L0
  .line 3
    invoke-virtual { v1 }, Landroidx/fragment/app/c0$e;->f()Landroidx/fragment/app/Fragment;
    move-result-object v2
  .line 4
    invoke-virtual { v2 }, Landroidx/fragment/app/Fragment;->L1()Landroid/view/View;
    move-result-object v2
  .line 5
    invoke-virtual { v2 }, Landroid/view/View;->getVisibility()I
    move-result v2
    invoke-static { v2 }, Landroidx/fragment/app/c0$e$c;->b(I)Landroidx/fragment/app/c0$e$c;
    move-result-object v2
  .line 6
    sget-object v3, Landroidx/fragment/app/c0$e$b;->b:Landroidx/fragment/app/c0$e$b;
    invoke-virtual { v1, v2, v3 }, Landroidx/fragment/app/c0$e;->k(Landroidx/fragment/app/c0$e$c;Landroidx/fragment/app/c0$e$b;)V
    goto :L0
  :L1
    return-void
.end method

.method b(Landroidx/fragment/app/c0$e$c;Landroidx/fragment/app/u;)V
  .registers 5
    const/4 v0, 2
  .line 1
    invoke-static { v0 }, Landroidx/fragment/app/n;->E0(I)Z
    move-result v0
    if-eqz v0, :L0
  .line 2
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "SpecialEffectsController: Enqueuing add operation for fragment "
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
  .line 3
    invoke-virtual { p2 }, Landroidx/fragment/app/u;->k()Landroidx/fragment/app/Fragment;
    move-result-object v1
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
  :L0
  .line 4
    sget-object v0, Landroidx/fragment/app/c0$e$b;->c:Landroidx/fragment/app/c0$e$b;
    invoke-direct { p0, p1, v0, p2 }, Landroidx/fragment/app/c0;->a(Landroidx/fragment/app/c0$e$c;Landroidx/fragment/app/c0$e$b;Landroidx/fragment/app/u;)V
    return-void
.end method

.method c(Landroidx/fragment/app/u;)V
  .registers 4
    const/4 v0, 2
  .line 1
    invoke-static { v0 }, Landroidx/fragment/app/n;->E0(I)Z
    move-result v0
    if-eqz v0, :L0
  .line 2
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "SpecialEffectsController: Enqueuing hide operation for fragment "
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
  .line 3
    invoke-virtual { p1 }, Landroidx/fragment/app/u;->k()Landroidx/fragment/app/Fragment;
    move-result-object v1
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
  :L0
  .line 4
    sget-object v0, Landroidx/fragment/app/c0$e$c;->d:Landroidx/fragment/app/c0$e$c;
    sget-object v1, Landroidx/fragment/app/c0$e$b;->b:Landroidx/fragment/app/c0$e$b;
    invoke-direct { p0, v0, v1, p1 }, Landroidx/fragment/app/c0;->a(Landroidx/fragment/app/c0$e$c;Landroidx/fragment/app/c0$e$b;Landroidx/fragment/app/u;)V
    return-void
.end method

.method d(Landroidx/fragment/app/u;)V
  .registers 4
    const/4 v0, 2
  .line 1
    invoke-static { v0 }, Landroidx/fragment/app/n;->E0(I)Z
    move-result v0
    if-eqz v0, :L0
  .line 2
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "SpecialEffectsController: Enqueuing remove operation for fragment "
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
  .line 3
    invoke-virtual { p1 }, Landroidx/fragment/app/u;->k()Landroidx/fragment/app/Fragment;
    move-result-object v1
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
  :L0
  .line 4
    sget-object v0, Landroidx/fragment/app/c0$e$c;->b:Landroidx/fragment/app/c0$e$c;
    sget-object v1, Landroidx/fragment/app/c0$e$b;->d:Landroidx/fragment/app/c0$e$b;
    invoke-direct { p0, v0, v1, p1 }, Landroidx/fragment/app/c0;->a(Landroidx/fragment/app/c0$e$c;Landroidx/fragment/app/c0$e$b;Landroidx/fragment/app/u;)V
    return-void
.end method

.method e(Landroidx/fragment/app/u;)V
  .registers 4
    const/4 v0, 2
  .line 1
    invoke-static { v0 }, Landroidx/fragment/app/n;->E0(I)Z
    move-result v0
    if-eqz v0, :L0
  .line 2
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "SpecialEffectsController: Enqueuing show operation for fragment "
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
  .line 3
    invoke-virtual { p1 }, Landroidx/fragment/app/u;->k()Landroidx/fragment/app/Fragment;
    move-result-object v1
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
  :L0
  .line 4
    sget-object v0, Landroidx/fragment/app/c0$e$c;->c:Landroidx/fragment/app/c0$e$c;
    sget-object v1, Landroidx/fragment/app/c0$e$b;->b:Landroidx/fragment/app/c0$e$b;
    invoke-direct { p0, v0, v1, p1 }, Landroidx/fragment/app/c0;->a(Landroidx/fragment/app/c0$e$c;Landroidx/fragment/app/c0$e$b;Landroidx/fragment/app/u;)V
    return-void
.end method

.method abstract f(Ljava/util/List;Z)V
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(",
      "Ljava/util/List<",
      "Landroidx/fragment/app/c0$e;",
      ">;Z)V"
    }
  .end annotation
.end method

.method g()V
  .catchall { :L2 .. :L10 } :L9
  .registers 7
  .line 1
    iget-boolean v0, p0, Landroidx/fragment/app/c0;->e:Z
    if-eqz v0, :L0
    return-void
  :L0
  .line 2
    iget-object v0, p0, Landroidx/fragment/app/c0;->a:Landroid/view/ViewGroup;
    invoke-static { v0 }, Landroidx/core/view/v;->S(Landroid/view/View;)Z
    move-result v0
    const/4 v1, 0
    if-nez v0, :L1
  .line 3
    invoke-virtual { p0 }, Landroidx/fragment/app/c0;->j()V
  .line 4
    iput-boolean v1, p0, Landroidx/fragment/app/c0;->d:Z
    return-void
  :L1
  .line 5
    iget-object v0, p0, Landroidx/fragment/app/c0;->b:Ljava/util/ArrayList;
    monitor-enter v0
  :L2
  .line 6
    iget-object v2, p0, Landroidx/fragment/app/c0;->b:Ljava/util/ArrayList;
    invoke-virtual { v2 }, Ljava/util/ArrayList;->isEmpty()Z
    move-result v2
    if-nez v2, :L8
  .line 7
    new-instance v2, Ljava/util/ArrayList;
    iget-object v3, p0, Landroidx/fragment/app/c0;->c:Ljava/util/ArrayList;
    invoke-direct { v2, v3 }, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
  .line 8
    iget-object v3, p0, Landroidx/fragment/app/c0;->c:Ljava/util/ArrayList;
    invoke-virtual { v3 }, Ljava/util/ArrayList;->clear()V
  .line 9
    invoke-virtual { v2 }, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
    move-result-object v2
  :L3
    invoke-interface { v2 }, Ljava/util/Iterator;->hasNext()Z
    move-result v3
    if-eqz v3, :L5
    invoke-interface { v2 }, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object v3
    check-cast v3, Landroidx/fragment/app/c0$e;
    const/4 v4, 2
  .line 10
    invoke-static { v4 }, Landroidx/fragment/app/n;->E0(I)Z
    move-result v4
    if-eqz v4, :L4
  .line 11
    new-instance v4, Ljava/lang/StringBuilder;
    invoke-direct { v4 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v5, "SpecialEffectsController: Cancelling operation "
    invoke-virtual { v4, v5 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v4, v3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    invoke-virtual { v4 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
  :L4
  .line 12
    invoke-virtual { v3 }, Landroidx/fragment/app/c0$e;->b()V
  .line 13
    invoke-virtual { v3 }, Landroidx/fragment/app/c0$e;->i()Z
    move-result v4
    if-nez v4, :L3
  .line 14
    iget-object v4, p0, Landroidx/fragment/app/c0;->c:Ljava/util/ArrayList;
    invoke-virtual { v4, v3 }, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    goto :L3
  :L5
  .line 15
    invoke-direct { p0 }, Landroidx/fragment/app/c0;->q()V
  .line 16
    new-instance v2, Ljava/util/ArrayList;
    iget-object v3, p0, Landroidx/fragment/app/c0;->b:Ljava/util/ArrayList;
    invoke-direct { v2, v3 }, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
  .line 17
    iget-object v3, p0, Landroidx/fragment/app/c0;->b:Ljava/util/ArrayList;
    invoke-virtual { v3 }, Ljava/util/ArrayList;->clear()V
  .line 18
    iget-object v3, p0, Landroidx/fragment/app/c0;->c:Ljava/util/ArrayList;
    invoke-virtual { v3, v2 }, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z
  .line 19
    invoke-virtual { v2 }, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
    move-result-object v3
  :L6
    invoke-interface { v3 }, Ljava/util/Iterator;->hasNext()Z
    move-result v4
    if-eqz v4, :L7
    invoke-interface { v3 }, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object v4
    check-cast v4, Landroidx/fragment/app/c0$e;
  .line 20
    invoke-virtual { v4 }, Landroidx/fragment/app/c0$e;->l()V
    goto :L6
  :L7
  .line 21
    iget-boolean v3, p0, Landroidx/fragment/app/c0;->d:Z
    invoke-virtual { p0, v2, v3 }, Landroidx/fragment/app/c0;->f(Ljava/util/List;Z)V
  .line 22
    iput-boolean v1, p0, Landroidx/fragment/app/c0;->d:Z
  :L8
  .line 23
    monitor-exit v0
    return-void
  :L9
    move-exception v1
    monitor-exit v0
  :L10
    goto :L12
  :L11
    throw v1
  :L12
    goto :L11
.end method

.method j()V
  .catchall { :L0 .. :L14 } :L13
  .registers 9
  .line 1
    iget-object v0, p0, Landroidx/fragment/app/c0;->a:Landroid/view/ViewGroup;
    invoke-static { v0 }, Landroidx/core/view/v;->S(Landroid/view/View;)Z
    move-result v0
  .line 2
    iget-object v1, p0, Landroidx/fragment/app/c0;->b:Ljava/util/ArrayList;
    monitor-enter v1
  :L0
  .line 3
    invoke-direct { p0 }, Landroidx/fragment/app/c0;->q()V
  .line 4
    iget-object v2, p0, Landroidx/fragment/app/c0;->b:Ljava/util/ArrayList;
    invoke-virtual { v2 }, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
    move-result-object v2
  :L1
    invoke-interface { v2 }, Ljava/util/Iterator;->hasNext()Z
    move-result v3
    if-eqz v3, :L2
    invoke-interface { v2 }, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object v3
    check-cast v3, Landroidx/fragment/app/c0$e;
  .line 5
    invoke-virtual { v3 }, Landroidx/fragment/app/c0$e;->l()V
    goto :L1
  :L2
  .line 6
    new-instance v2, Ljava/util/ArrayList;
    iget-object v3, p0, Landroidx/fragment/app/c0;->c:Ljava/util/ArrayList;
    invoke-direct { v2, v3 }, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
  .line 7
    invoke-virtual { v2 }, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
    move-result-object v2
  :L3
    invoke-interface { v2 }, Ljava/util/Iterator;->hasNext()Z
    move-result v3
    const/4 v4, 2
    if-eqz v3, :L7
    invoke-interface { v2 }, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object v3
    check-cast v3, Landroidx/fragment/app/c0$e;
  .line 8
    invoke-static { v4 }, Landroidx/fragment/app/n;->E0(I)Z
    move-result v4
    if-eqz v4, :L6
  .line 9
    new-instance v4, Ljava/lang/StringBuilder;
    invoke-direct { v4 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v5, "SpecialEffectsController: "
    invoke-virtual { v4, v5 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    if-eqz v0, :L4
    const-string v5, ""
    goto :L5
  :L4
  .line 10
    new-instance v5, Ljava/lang/StringBuilder;
    invoke-direct { v5 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v6, "Container "
    invoke-virtual { v5, v6 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget-object v6, p0, Landroidx/fragment/app/c0;->a:Landroid/view/ViewGroup;
    invoke-virtual { v5, v6 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    const-string v6, " is not attached to window. "
    invoke-virtual { v5, v6 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v5 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v5
  :L5
    invoke-virtual { v4, v5 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string v5, "Cancelling running operation "
    invoke-virtual { v4, v5 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v4, v3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    invoke-virtual { v4 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
  :L6
  .line 11
    invoke-virtual { v3 }, Landroidx/fragment/app/c0$e;->b()V
    goto :L3
  :L7
  .line 12
    new-instance v2, Ljava/util/ArrayList;
    iget-object v3, p0, Landroidx/fragment/app/c0;->b:Ljava/util/ArrayList;
    invoke-direct { v2, v3 }, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
  .line 13
    invoke-virtual { v2 }, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
    move-result-object v2
  :L8
    invoke-interface { v2 }, Ljava/util/Iterator;->hasNext()Z
    move-result v3
    if-eqz v3, :L12
    invoke-interface { v2 }, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object v3
    check-cast v3, Landroidx/fragment/app/c0$e;
  .line 14
    invoke-static { v4 }, Landroidx/fragment/app/n;->E0(I)Z
    move-result v5
    if-eqz v5, :L11
  .line 15
    new-instance v5, Ljava/lang/StringBuilder;
    invoke-direct { v5 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v6, "SpecialEffectsController: "
    invoke-virtual { v5, v6 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    if-eqz v0, :L9
    const-string v6, ""
    goto :L10
  :L9
  .line 16
    new-instance v6, Ljava/lang/StringBuilder;
    invoke-direct { v6 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v7, "Container "
    invoke-virtual { v6, v7 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget-object v7, p0, Landroidx/fragment/app/c0;->a:Landroid/view/ViewGroup;
    invoke-virtual { v6, v7 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    const-string v7, " is not attached to window. "
    invoke-virtual { v6, v7 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v6 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v6
  :L10
    invoke-virtual { v5, v6 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string v6, "Cancelling pending operation "
    invoke-virtual { v5, v6 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v5, v3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    invoke-virtual { v5 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
  :L11
  .line 17
    invoke-virtual { v3 }, Landroidx/fragment/app/c0$e;->b()V
    goto :L8
  :L12
  .line 18
    monitor-exit v1
    return-void
  :L13
    move-exception v0
    monitor-exit v1
  :L14
    goto :L16
  :L15
    throw v0
  :L16
    goto :L15
.end method

.method k()V
  .registers 2
  .line 1
    iget-boolean v0, p0, Landroidx/fragment/app/c0;->e:Z
    if-eqz v0, :L0
    const/4 v0, 0
  .line 2
    iput-boolean v0, p0, Landroidx/fragment/app/c0;->e:Z
  .line 3
    invoke-virtual { p0 }, Landroidx/fragment/app/c0;->g()V
  :L0
    return-void
.end method

.method l(Landroidx/fragment/app/u;)Landroidx/fragment/app/c0$e$b;
  .registers 3
  .line 1
    invoke-virtual { p1 }, Landroidx/fragment/app/u;->k()Landroidx/fragment/app/Fragment;
    move-result-object v0
    invoke-direct { p0, v0 }, Landroidx/fragment/app/c0;->h(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/c0$e;
    move-result-object v0
    if-eqz v0, :L0
  .line 2
    invoke-virtual { v0 }, Landroidx/fragment/app/c0$e;->g()Landroidx/fragment/app/c0$e$b;
    move-result-object p1
    return-object p1
  :L0
  .line 3
    invoke-virtual { p1 }, Landroidx/fragment/app/u;->k()Landroidx/fragment/app/Fragment;
    move-result-object p1
    invoke-direct { p0, p1 }, Landroidx/fragment/app/c0;->i(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/c0$e;
    move-result-object p1
    if-eqz p1, :L1
  .line 4
    invoke-virtual { p1 }, Landroidx/fragment/app/c0$e;->g()Landroidx/fragment/app/c0$e$b;
    move-result-object p1
    return-object p1
  :L1
    const/4 p1, 0
    return-object p1
.end method

.method public m()Landroid/view/ViewGroup;
  .registers 2
  .line 1
    iget-object v0, p0, Landroidx/fragment/app/c0;->a:Landroid/view/ViewGroup;
    return-object v0
.end method

.method p()V
  .catchall { :L0 .. :L5 } :L4
  .registers 7
  .line 1
    iget-object v0, p0, Landroidx/fragment/app/c0;->b:Ljava/util/ArrayList;
    monitor-enter v0
  :L0
  .line 2
    invoke-direct { p0 }, Landroidx/fragment/app/c0;->q()V
    const/4 v1, 0
  .line 3
    iput-boolean v1, p0, Landroidx/fragment/app/c0;->e:Z
  .line 4
    iget-object v1, p0, Landroidx/fragment/app/c0;->b:Ljava/util/ArrayList;
    invoke-virtual { v1 }, Ljava/util/ArrayList;->size()I
    move-result v1
    add-int/lit8 v1, v1, -1
  :L1
    if-ltz v1, :L3
  .line 5
    iget-object v2, p0, Landroidx/fragment/app/c0;->b:Ljava/util/ArrayList;
    invoke-virtual { v2, v1 }, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
    move-result-object v2
    check-cast v2, Landroidx/fragment/app/c0$e;
  .line 6
    invoke-virtual { v2 }, Landroidx/fragment/app/c0$e;->f()Landroidx/fragment/app/Fragment;
    move-result-object v3
    iget-object v3, v3, Landroidx/fragment/app/Fragment;->I:Landroid/view/View;
    invoke-static { v3 }, Landroidx/fragment/app/c0$e$c;->c(Landroid/view/View;)Landroidx/fragment/app/c0$e$c;
    move-result-object v3
  .line 7
    invoke-virtual { v2 }, Landroidx/fragment/app/c0$e;->e()Landroidx/fragment/app/c0$e$c;
    move-result-object v4
    sget-object v5, Landroidx/fragment/app/c0$e$c;->c:Landroidx/fragment/app/c0$e$c;
    if-ne v4, v5, :L2
    sget-object v4, Landroidx/fragment/app/c0$e$c;->c:Landroidx/fragment/app/c0$e$c;
    if-eq v3, v4, :L2
  .line 8
    invoke-virtual { v2 }, Landroidx/fragment/app/c0$e;->f()Landroidx/fragment/app/Fragment;
    move-result-object v1
  .line 9
    invoke-virtual { v1 }, Landroidx/fragment/app/Fragment;->v0()Z
    move-result v1
    iput-boolean v1, p0, Landroidx/fragment/app/c0;->e:Z
    goto :L3
  :L2
    add-int/lit8 v1, v1, -1
    goto :L1
  :L3
  .line 10
    monitor-exit v0
    return-void
  :L4
    move-exception v1
    monitor-exit v0
  :L5
    goto :L7
  :L6
    throw v1
  :L7
    goto :L6
.end method

.method r(Z)V
  .registers 2
  .line 1
    iput-boolean p1, p0, Landroidx/fragment/app/c0;->d:Z
    return-void
.end method
