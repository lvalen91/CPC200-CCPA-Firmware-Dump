.class public Landroidx/databinding/h;
.super Landroidx/databinding/c;
.source "SourceFile"

.field private a:Ljava/util/Set;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "Ljava/util/Set<",
      "Ljava/lang/Class<",
      "+",
      "Landroidx/databinding/c;",
      ">;>;"
    }
  .end annotation
.end field

.field private b:Ljava/util/List;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "Ljava/util/List<",
      "Landroidx/databinding/c;",
      ">;"
    }
  .end annotation
.end field

.field private c:Ljava/util/List;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "Ljava/util/List<",
      "Ljava/lang/String;",
      ">;"
    }
  .end annotation
.end field

.method public constructor <init>()V
  .registers 2
  .line 1
    invoke-direct { p0 }, Landroidx/databinding/c;-><init>()V
  .line 2
    new-instance v0, Ljava/util/HashSet;
    invoke-direct { v0 }, Ljava/util/HashSet;-><init>()V
    iput-object v0, p0, Landroidx/databinding/h;->a:Ljava/util/Set;
  .line 3
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;
    invoke-direct { v0 }, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V
    iput-object v0, p0, Landroidx/databinding/h;->b:Ljava/util/List;
  .line 4
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;
    invoke-direct { v0 }, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V
    iput-object v0, p0, Landroidx/databinding/h;->c:Ljava/util/List;
    return-void
.end method

.method private e()Z
  .catch Ljava/lang/ClassNotFoundException; { :L1 .. :L2 } :L5
  .catch Ljava/lang/IllegalAccessException; { :L1 .. :L2 } :L4
  .catch Ljava/lang/InstantiationException; { :L1 .. :L2 } :L3
  .registers 7
    const-string v0, "unable to add feature mapper for "
  .line 1
    iget-object v1, p0, Landroidx/databinding/h;->c:Ljava/util/List;
    invoke-interface { v1 }, Ljava/util/List;->iterator()Ljava/util/Iterator;
    move-result-object v1
    const/4 v2, 0
  :L0
    invoke-interface { v1 }, Ljava/util/Iterator;->hasNext()Z
    move-result v3
    if-eqz v3, :L6
    invoke-interface { v1 }, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object v3
    check-cast v3, Ljava/lang/String;
  :L1
  .line 2
    invoke-static { v3 }, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    move-result-object v4
  .line 3
    const-class v5, Landroidx/databinding/c;
    invoke-virtual { v5, v4 }, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z
    move-result v5
    if-eqz v5, :L0
  .line 4
    invoke-virtual { v4 }, Ljava/lang/Class;->newInstance()Ljava/lang/Object;
    move-result-object v4
    check-cast v4, Landroidx/databinding/c;
    invoke-virtual { p0, v4 }, Landroidx/databinding/h;->d(Landroidx/databinding/c;)V
  .line 5
    iget-object v4, p0, Landroidx/databinding/h;->c:Ljava/util/List;
    invoke-interface { v4, v3 }, Ljava/util/List;->remove(Ljava/lang/Object;)Z
  :L2
    const/4 v2, 1
    goto :L0
  :L3
  .line 6
    new-instance v4, Ljava/lang/StringBuilder;
    invoke-direct { v4 }, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual { v4, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v4, v3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v4 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    goto :L0
  :L4
  .line 7
    new-instance v4, Ljava/lang/StringBuilder;
    invoke-direct { v4 }, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual { v4, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v4, v3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v4 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    goto :L0
  :L5
    nop
    goto :L0
  :L6
    return v2
.end method

.method public b(Landroidx/databinding/e;Landroid/view/View;I)Landroidx/databinding/ViewDataBinding;
  .registers 6
  .line 1
    iget-object v0, p0, Landroidx/databinding/h;->b:Ljava/util/List;
    invoke-interface { v0 }, Ljava/util/List;->iterator()Ljava/util/Iterator;
    move-result-object v0
  :L0
    invoke-interface { v0 }, Ljava/util/Iterator;->hasNext()Z
    move-result v1
    if-eqz v1, :L1
    invoke-interface { v0 }, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object v1
    check-cast v1, Landroidx/databinding/c;
  .line 2
    invoke-virtual { v1, p1, p2, p3 }, Landroidx/databinding/c;->b(Landroidx/databinding/e;Landroid/view/View;I)Landroidx/databinding/ViewDataBinding;
    move-result-object v1
    if-eqz v1, :L0
    return-object v1
  :L1
  .line 3
    invoke-direct { p0 }, Landroidx/databinding/h;->e()Z
    move-result v0
    if-eqz v0, :L2
  .line 4
    invoke-virtual { p0, p1, p2, p3 }, Landroidx/databinding/h;->b(Landroidx/databinding/e;Landroid/view/View;I)Landroidx/databinding/ViewDataBinding;
    move-result-object p1
    return-object p1
  :L2
    const/4 p1, 0
    return-object p1
.end method

.method public c(Landroidx/databinding/e;[Landroid/view/View;I)Landroidx/databinding/ViewDataBinding;
  .registers 6
  .line 1
    iget-object v0, p0, Landroidx/databinding/h;->b:Ljava/util/List;
    invoke-interface { v0 }, Ljava/util/List;->iterator()Ljava/util/Iterator;
    move-result-object v0
  :L0
    invoke-interface { v0 }, Ljava/util/Iterator;->hasNext()Z
    move-result v1
    if-eqz v1, :L1
    invoke-interface { v0 }, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object v1
    check-cast v1, Landroidx/databinding/c;
  .line 2
    invoke-virtual { v1, p1, p2, p3 }, Landroidx/databinding/c;->c(Landroidx/databinding/e;[Landroid/view/View;I)Landroidx/databinding/ViewDataBinding;
    move-result-object v1
    if-eqz v1, :L0
    return-object v1
  :L1
  .line 3
    invoke-direct { p0 }, Landroidx/databinding/h;->e()Z
    move-result v0
    if-eqz v0, :L2
  .line 4
    invoke-virtual { p0, p1, p2, p3 }, Landroidx/databinding/h;->c(Landroidx/databinding/e;[Landroid/view/View;I)Landroidx/databinding/ViewDataBinding;
    move-result-object p1
    return-object p1
  :L2
    const/4 p1, 0
    return-object p1
.end method

.method public d(Landroidx/databinding/c;)V
  .registers 4
  .line 1
    invoke-virtual { p1 }, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    move-result-object v0
  .line 2
    iget-object v1, p0, Landroidx/databinding/h;->a:Ljava/util/Set;
    invoke-interface { v1, v0 }, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :L1
  .line 3
    iget-object v0, p0, Landroidx/databinding/h;->b:Ljava/util/List;
    invoke-interface { v0, p1 }, Ljava/util/List;->add(Ljava/lang/Object;)Z
  .line 4
    invoke-virtual { p1 }, Landroidx/databinding/c;->a()Ljava/util/List;
    move-result-object p1
  .line 5
    invoke-interface { p1 }, Ljava/util/List;->iterator()Ljava/util/Iterator;
    move-result-object p1
  :L0
    invoke-interface { p1 }, Ljava/util/Iterator;->hasNext()Z
    move-result v0
    if-eqz v0, :L1
    invoke-interface { p1 }, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Landroidx/databinding/c;
  .line 6
    invoke-virtual { p0, v0 }, Landroidx/databinding/h;->d(Landroidx/databinding/c;)V
    goto :L0
  :L1
    return-void
.end method
