.class Landroidx/fragment/app/v;
.super Ljava/lang/Object;
.source "SourceFile"

.field private final a:Ljava/util/ArrayList;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "Ljava/util/ArrayList<",
      "Landroidx/fragment/app/Fragment;",
      ">;"
    }
  .end annotation
.end field

.field private final b:Ljava/util/HashMap;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "Ljava/util/HashMap<",
      "Ljava/lang/String;",
      "Landroidx/fragment/app/u;",
      ">;"
    }
  .end annotation
.end field

.field private c:Landroidx/fragment/app/q;

.method constructor <init>()V
  .registers 2
  .line 1
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
  .line 2
    new-instance v0, Ljava/util/ArrayList;
    invoke-direct { v0 }, Ljava/util/ArrayList;-><init>()V
    iput-object v0, p0, Landroidx/fragment/app/v;->a:Ljava/util/ArrayList;
  .line 3
    new-instance v0, Ljava/util/HashMap;
    invoke-direct { v0 }, Ljava/util/HashMap;-><init>()V
    iput-object v0, p0, Landroidx/fragment/app/v;->b:Ljava/util/HashMap;
    return-void
.end method

.method a(Landroidx/fragment/app/Fragment;)V
  .catchall { :L0 .. :L1 } :L2
  .catchall { :L3 .. :L4 } :L2
  .registers 5
  .line 1
    iget-object v0, p0, Landroidx/fragment/app/v;->a:Ljava/util/ArrayList;
    invoke-virtual { v0, p1 }, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z
    move-result v0
    if-nez v0, :L5
  .line 2
    iget-object v0, p0, Landroidx/fragment/app/v;->a:Ljava/util/ArrayList;
    monitor-enter v0
  :L0
  .line 3
    iget-object v1, p0, Landroidx/fragment/app/v;->a:Ljava/util/ArrayList;
    invoke-virtual { v1, p1 }, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
  .line 4
    monitor-exit v0
  :L1
    const/4 v0, 1
  .line 5
    iput-boolean v0, p1, Landroidx/fragment/app/Fragment;->m:Z
    return-void
  :L2
    move-exception p1
  :L3
  .line 6
    monitor-exit v0
  :L4
    throw p1
  :L5
  .line 7
    new-instance v0, Ljava/lang/IllegalStateException;
    new-instance v1, Ljava/lang/StringBuilder;
    invoke-direct { v1 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v2, "Fragment already added: "
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v1, p1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    invoke-virtual { v1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p1
    invoke-direct { v0, p1 }, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
    throw v0
.end method

.method b()V
  .registers 3
  .line 1
    iget-object v0, p0, Landroidx/fragment/app/v;->b:Ljava/util/HashMap;
    invoke-virtual { v0 }, Ljava/util/HashMap;->values()Ljava/util/Collection;
    move-result-object v0
    const/4 v1, 0
  .line 2
    invoke-static { v1 }, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;
    move-result-object v1
    invoke-interface { v0, v1 }, Ljava/util/Collection;->removeAll(Ljava/util/Collection;)Z
    return-void
.end method

.method c(Ljava/lang/String;)Z
  .registers 3
  .line 1
    iget-object v0, p0, Landroidx/fragment/app/v;->b:Ljava/util/HashMap;
    invoke-virtual { v0, p1 }, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object p1
    if-eqz p1, :L0
    const/4 p1, 1
    goto :L1
  :L0
    const/4 p1, 0
  :L1
    return p1
.end method

.method d(I)V
  .registers 4
  .line 1
    iget-object v0, p0, Landroidx/fragment/app/v;->b:Ljava/util/HashMap;
    invoke-virtual { v0 }, Ljava/util/HashMap;->values()Ljava/util/Collection;
    move-result-object v0
    invoke-interface { v0 }, Ljava/util/Collection;->iterator()Ljava/util/Iterator;
    move-result-object v0
  :L0
    invoke-interface { v0 }, Ljava/util/Iterator;->hasNext()Z
    move-result v1
    if-eqz v1, :L1
    invoke-interface { v0 }, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object v1
    check-cast v1, Landroidx/fragment/app/u;
    if-eqz v1, :L0
  .line 2
    invoke-virtual { v1, p1 }, Landroidx/fragment/app/u;->t(I)V
    goto :L0
  :L1
    return-void
.end method

.method e(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
  .registers 8
  .line 1
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual { v0, p1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string v1, "    "
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
  .line 2
    iget-object v1, p0, Landroidx/fragment/app/v;->b:Ljava/util/HashMap;
    invoke-virtual { v1 }, Ljava/util/HashMap;->isEmpty()Z
    move-result v1
    if-nez v1, :L2
  .line 3
    invoke-virtual { p3, p1 }, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
    const-string v1, "Active Fragments:"
  .line 4
    invoke-virtual { p3, v1 }, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
  .line 5
    iget-object v1, p0, Landroidx/fragment/app/v;->b:Ljava/util/HashMap;
    invoke-virtual { v1 }, Ljava/util/HashMap;->values()Ljava/util/Collection;
    move-result-object v1
    invoke-interface { v1 }, Ljava/util/Collection;->iterator()Ljava/util/Iterator;
    move-result-object v1
  :L0
    invoke-interface { v1 }, Ljava/util/Iterator;->hasNext()Z
    move-result v2
    if-eqz v2, :L2
    invoke-interface { v1 }, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object v2
    check-cast v2, Landroidx/fragment/app/u;
  .line 6
    invoke-virtual { p3, p1 }, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
    if-eqz v2, :L1
  .line 7
    invoke-virtual { v2 }, Landroidx/fragment/app/u;->k()Landroidx/fragment/app/Fragment;
    move-result-object v2
  .line 8
    invoke-virtual { p3, v2 }, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V
  .line 9
    invoke-virtual { v2, v0, p2, p3, p4 }, Landroidx/fragment/app/Fragment;->z(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    goto :L0
  :L1
    const-string v2, "null"
  .line 10
    invoke-virtual { p3, v2 }, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    goto :L0
  :L2
  .line 11
    iget-object p2, p0, Landroidx/fragment/app/v;->a:Ljava/util/ArrayList;
    invoke-virtual { p2 }, Ljava/util/ArrayList;->size()I
    move-result p2
    if-lez p2, :L4
  .line 12
    invoke-virtual { p3, p1 }, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
    const-string p4, "Added Fragments:"
    invoke-virtual { p3, p4 }, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    const/4 p4, 0
  :L3
    if-ge p4, p2, :L4
  .line 13
    iget-object v0, p0, Landroidx/fragment/app/v;->a:Ljava/util/ArrayList;
    invoke-virtual { v0, p4 }, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Landroidx/fragment/app/Fragment;
  .line 14
    invoke-virtual { p3, p1 }, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
    const-string v1, "  #"
  .line 15
    invoke-virtual { p3, v1 }, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
  .line 16
    invoke-virtual { p3, p4 }, Ljava/io/PrintWriter;->print(I)V
    const-string v1, ": "
  .line 17
    invoke-virtual { p3, v1 }, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
  .line 18
    invoke-virtual { v0 }, Landroidx/fragment/app/Fragment;->toString()Ljava/lang/String;
    move-result-object v0
    invoke-virtual { p3, v0 }, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    add-int/lit8 p4, p4, 1
    goto :L3
  :L4
    return-void
.end method

.method f(Ljava/lang/String;)Landroidx/fragment/app/Fragment;
  .registers 3
  .line 1
    iget-object v0, p0, Landroidx/fragment/app/v;->b:Ljava/util/HashMap;
    invoke-virtual { v0, p1 }, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object p1
    check-cast p1, Landroidx/fragment/app/u;
    if-eqz p1, :L0
  .line 2
    invoke-virtual { p1 }, Landroidx/fragment/app/u;->k()Landroidx/fragment/app/Fragment;
    move-result-object p1
    return-object p1
  :L0
    const/4 p1, 0
    return-object p1
.end method

.method g(I)Landroidx/fragment/app/Fragment;
  .registers 5
  .line 1
    iget-object v0, p0, Landroidx/fragment/app/v;->a:Ljava/util/ArrayList;
    invoke-virtual { v0 }, Ljava/util/ArrayList;->size()I
    move-result v0
    add-int/lit8 v0, v0, -1
  :L0
    if-ltz v0, :L2
  .line 2
    iget-object v1, p0, Landroidx/fragment/app/v;->a:Ljava/util/ArrayList;
    invoke-virtual { v1, v0 }, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
    move-result-object v1
    check-cast v1, Landroidx/fragment/app/Fragment;
    if-eqz v1, :L1
  .line 3
    iget v2, v1, Landroidx/fragment/app/Fragment;->x:I
    if-ne v2, p1, :L1
    return-object v1
  :L1
    add-int/lit8 v0, v0, -1
    goto :L0
  :L2
  .line 4
    iget-object v0, p0, Landroidx/fragment/app/v;->b:Ljava/util/HashMap;
    invoke-virtual { v0 }, Ljava/util/HashMap;->values()Ljava/util/Collection;
    move-result-object v0
    invoke-interface { v0 }, Ljava/util/Collection;->iterator()Ljava/util/Iterator;
    move-result-object v0
  :L3
    invoke-interface { v0 }, Ljava/util/Iterator;->hasNext()Z
    move-result v1
    if-eqz v1, :L4
    invoke-interface { v0 }, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object v1
    check-cast v1, Landroidx/fragment/app/u;
    if-eqz v1, :L3
  .line 5
    invoke-virtual { v1 }, Landroidx/fragment/app/u;->k()Landroidx/fragment/app/Fragment;
    move-result-object v1
  .line 6
    iget v2, v1, Landroidx/fragment/app/Fragment;->x:I
    if-ne v2, p1, :L3
    return-object v1
  :L4
    const/4 p1, 0
    return-object p1
.end method

.method h(Ljava/lang/String;)Landroidx/fragment/app/Fragment;
  .registers 5
    if-eqz p1, :L2
  .line 1
    iget-object v0, p0, Landroidx/fragment/app/v;->a:Ljava/util/ArrayList;
    invoke-virtual { v0 }, Ljava/util/ArrayList;->size()I
    move-result v0
    add-int/lit8 v0, v0, -1
  :L0
    if-ltz v0, :L2
  .line 2
    iget-object v1, p0, Landroidx/fragment/app/v;->a:Ljava/util/ArrayList;
    invoke-virtual { v1, v0 }, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
    move-result-object v1
    check-cast v1, Landroidx/fragment/app/Fragment;
    if-eqz v1, :L1
  .line 3
    iget-object v2, v1, Landroidx/fragment/app/Fragment;->z:Ljava/lang/String;
    invoke-virtual { p1, v2 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v2
    if-eqz v2, :L1
    return-object v1
  :L1
    add-int/lit8 v0, v0, -1
    goto :L0
  :L2
    if-eqz p1, :L4
  .line 4
    iget-object v0, p0, Landroidx/fragment/app/v;->b:Ljava/util/HashMap;
    invoke-virtual { v0 }, Ljava/util/HashMap;->values()Ljava/util/Collection;
    move-result-object v0
    invoke-interface { v0 }, Ljava/util/Collection;->iterator()Ljava/util/Iterator;
    move-result-object v0
  :L3
    invoke-interface { v0 }, Ljava/util/Iterator;->hasNext()Z
    move-result v1
    if-eqz v1, :L4
    invoke-interface { v0 }, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object v1
    check-cast v1, Landroidx/fragment/app/u;
    if-eqz v1, :L3
  .line 5
    invoke-virtual { v1 }, Landroidx/fragment/app/u;->k()Landroidx/fragment/app/Fragment;
    move-result-object v1
  .line 6
    iget-object v2, v1, Landroidx/fragment/app/Fragment;->z:Ljava/lang/String;
    invoke-virtual { p1, v2 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v2
    if-eqz v2, :L3
    return-object v1
  :L4
    const/4 p1, 0
    return-object p1
.end method

.method i(Ljava/lang/String;)Landroidx/fragment/app/Fragment;
  .registers 4
  .line 1
    iget-object v0, p0, Landroidx/fragment/app/v;->b:Ljava/util/HashMap;
    invoke-virtual { v0 }, Ljava/util/HashMap;->values()Ljava/util/Collection;
    move-result-object v0
    invoke-interface { v0 }, Ljava/util/Collection;->iterator()Ljava/util/Iterator;
    move-result-object v0
  :L0
    invoke-interface { v0 }, Ljava/util/Iterator;->hasNext()Z
    move-result v1
    if-eqz v1, :L1
    invoke-interface { v0 }, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object v1
    check-cast v1, Landroidx/fragment/app/u;
    if-eqz v1, :L0
  .line 2
    invoke-virtual { v1 }, Landroidx/fragment/app/u;->k()Landroidx/fragment/app/Fragment;
    move-result-object v1
  .line 3
    invoke-virtual { v1, p1 }, Landroidx/fragment/app/Fragment;->B(Ljava/lang/String;)Landroidx/fragment/app/Fragment;
    move-result-object v1
    if-eqz v1, :L0
    return-object v1
  :L1
    const/4 p1, 0
    return-object p1
.end method

.method j(Landroidx/fragment/app/Fragment;)I
  .registers 7
  .line 1
    iget-object v0, p1, Landroidx/fragment/app/Fragment;->H:Landroid/view/ViewGroup;
    const/4 v1, -1
    if-nez v0, :L0
    return v1
  :L0
  .line 2
    iget-object v2, p0, Landroidx/fragment/app/v;->a:Ljava/util/ArrayList;
    invoke-virtual { v2, p1 }, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I
    move-result p1
    add-int/lit8 v2, p1, -1
  :L1
    if-ltz v2, :L3
  .line 3
    iget-object v3, p0, Landroidx/fragment/app/v;->a:Ljava/util/ArrayList;
    invoke-virtual { v3, v2 }, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
    move-result-object v3
    check-cast v3, Landroidx/fragment/app/Fragment;
  .line 4
    iget-object v4, v3, Landroidx/fragment/app/Fragment;->H:Landroid/view/ViewGroup;
    if-ne v4, v0, :L2
    iget-object v3, v3, Landroidx/fragment/app/Fragment;->I:Landroid/view/View;
    if-eqz v3, :L2
  .line 5
    invoke-virtual { v0, v3 }, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I
    move-result p1
    add-int/lit8 p1, p1, 1
    return p1
  :L2
    add-int/lit8 v2, v2, -1
    goto :L1
  :L3
    add-int/lit8 p1, p1, 1
  .line 6
    iget-object v2, p0, Landroidx/fragment/app/v;->a:Ljava/util/ArrayList;
    invoke-virtual { v2 }, Ljava/util/ArrayList;->size()I
    move-result v2
    if-ge p1, v2, :L5
  .line 7
    iget-object v2, p0, Landroidx/fragment/app/v;->a:Ljava/util/ArrayList;
    invoke-virtual { v2, p1 }, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
    move-result-object v2
    check-cast v2, Landroidx/fragment/app/Fragment;
  .line 8
    iget-object v3, v2, Landroidx/fragment/app/Fragment;->H:Landroid/view/ViewGroup;
    if-ne v3, v0, :L4
    iget-object v2, v2, Landroidx/fragment/app/Fragment;->I:Landroid/view/View;
    if-eqz v2, :L4
  .line 9
    invoke-virtual { v0, v2 }, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I
    move-result p1
    return p1
  :L4
    goto :L3
  :L5
    return v1
.end method

.method k()Ljava/util/List;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "()",
      "Ljava/util/List<",
      "Landroidx/fragment/app/u;",
      ">;"
    }
  .end annotation
  .registers 4
  .line 1
    new-instance v0, Ljava/util/ArrayList;
    invoke-direct { v0 }, Ljava/util/ArrayList;-><init>()V
  .line 2
    iget-object v1, p0, Landroidx/fragment/app/v;->b:Ljava/util/HashMap;
    invoke-virtual { v1 }, Ljava/util/HashMap;->values()Ljava/util/Collection;
    move-result-object v1
    invoke-interface { v1 }, Ljava/util/Collection;->iterator()Ljava/util/Iterator;
    move-result-object v1
  :L0
    invoke-interface { v1 }, Ljava/util/Iterator;->hasNext()Z
    move-result v2
    if-eqz v2, :L1
    invoke-interface { v1 }, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object v2
    check-cast v2, Landroidx/fragment/app/u;
    if-eqz v2, :L0
  .line 3
    invoke-virtual { v0, v2 }, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    goto :L0
  :L1
    return-object v0
.end method

.method l()Ljava/util/List;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "()",
      "Ljava/util/List<",
      "Landroidx/fragment/app/Fragment;",
      ">;"
    }
  .end annotation
  .registers 4
  .line 1
    new-instance v0, Ljava/util/ArrayList;
    invoke-direct { v0 }, Ljava/util/ArrayList;-><init>()V
  .line 2
    iget-object v1, p0, Landroidx/fragment/app/v;->b:Ljava/util/HashMap;
    invoke-virtual { v1 }, Ljava/util/HashMap;->values()Ljava/util/Collection;
    move-result-object v1
    invoke-interface { v1 }, Ljava/util/Collection;->iterator()Ljava/util/Iterator;
    move-result-object v1
  :L0
    invoke-interface { v1 }, Ljava/util/Iterator;->hasNext()Z
    move-result v2
    if-eqz v2, :L2
    invoke-interface { v1 }, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object v2
    check-cast v2, Landroidx/fragment/app/u;
    if-eqz v2, :L1
  .line 3
    invoke-virtual { v2 }, Landroidx/fragment/app/u;->k()Landroidx/fragment/app/Fragment;
    move-result-object v2
    invoke-virtual { v0, v2 }, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    goto :L0
  :L1
    const/4 v2, 0
  .line 4
    invoke-virtual { v0, v2 }, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    goto :L0
  :L2
    return-object v0
.end method

.method m(Ljava/lang/String;)Landroidx/fragment/app/u;
  .registers 3
  .line 1
    iget-object v0, p0, Landroidx/fragment/app/v;->b:Ljava/util/HashMap;
    invoke-virtual { v0, p1 }, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object p1
    check-cast p1, Landroidx/fragment/app/u;
    return-object p1
.end method

.method n()Ljava/util/List;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "()",
      "Ljava/util/List<",
      "Landroidx/fragment/app/Fragment;",
      ">;"
    }
  .end annotation
  .catchall { :L1 .. :L3 } :L2
  .registers 4
  .line 1
    iget-object v0, p0, Landroidx/fragment/app/v;->a:Ljava/util/ArrayList;
    invoke-virtual { v0 }, Ljava/util/ArrayList;->isEmpty()Z
    move-result v0
    if-eqz v0, :L0
  .line 2
    invoke-static { }, Ljava/util/Collections;->emptyList()Ljava/util/List;
    move-result-object v0
    return-object v0
  :L0
  .line 3
    iget-object v0, p0, Landroidx/fragment/app/v;->a:Ljava/util/ArrayList;
    monitor-enter v0
  :L1
  .line 4
    new-instance v1, Ljava/util/ArrayList;
    iget-object v2, p0, Landroidx/fragment/app/v;->a:Ljava/util/ArrayList;
    invoke-direct { v1, v2 }, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    monitor-exit v0
    return-object v1
  :L2
    move-exception v1
  .line 5
    monitor-exit v0
  :L3
    throw v1
.end method

.method o()Landroidx/fragment/app/q;
  .registers 2
  .line 1
    iget-object v0, p0, Landroidx/fragment/app/v;->c:Landroidx/fragment/app/q;
    return-object v0
.end method

.method p(Landroidx/fragment/app/u;)V
  .registers 5
  .line 1
    invoke-virtual { p1 }, Landroidx/fragment/app/u;->k()Landroidx/fragment/app/Fragment;
    move-result-object v0
  .line 2
    iget-object v1, v0, Landroidx/fragment/app/Fragment;->g:Ljava/lang/String;
    invoke-virtual { p0, v1 }, Landroidx/fragment/app/v;->c(Ljava/lang/String;)Z
    move-result v1
    if-eqz v1, :L0
    return-void
  :L0
  .line 3
    iget-object v1, p0, Landroidx/fragment/app/v;->b:Ljava/util/HashMap;
    iget-object v2, v0, Landroidx/fragment/app/Fragment;->g:Ljava/lang/String;
    invoke-virtual { v1, v2, p1 }, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
  .line 4
    iget-boolean p1, v0, Landroidx/fragment/app/Fragment;->D:Z
    if-eqz p1, :L3
  .line 5
    iget-boolean p1, v0, Landroidx/fragment/app/Fragment;->C:Z
    if-eqz p1, :L1
  .line 6
    iget-object p1, p0, Landroidx/fragment/app/v;->c:Landroidx/fragment/app/q;
    invoke-virtual { p1, v0 }, Landroidx/fragment/app/q;->i(Landroidx/fragment/app/Fragment;)V
    goto :L2
  :L1
  .line 7
    iget-object p1, p0, Landroidx/fragment/app/v;->c:Landroidx/fragment/app/q;
    invoke-virtual { p1, v0 }, Landroidx/fragment/app/q;->q(Landroidx/fragment/app/Fragment;)V
  :L2
    const/4 p1, 0
  .line 8
    iput-boolean p1, v0, Landroidx/fragment/app/Fragment;->D:Z
  :L3
    const/4 p1, 2
  .line 9
    invoke-static { p1 }, Landroidx/fragment/app/n;->E0(I)Z
    move-result p1
    if-eqz p1, :L4
  .line 10
    new-instance p1, Ljava/lang/StringBuilder;
    invoke-direct { p1 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "Added fragment to active set "
    invoke-virtual { p1, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { p1, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    invoke-virtual { p1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
  :L4
    return-void
.end method

.method q(Landroidx/fragment/app/u;)V
  .registers 5
  .line 1
    invoke-virtual { p1 }, Landroidx/fragment/app/u;->k()Landroidx/fragment/app/Fragment;
    move-result-object p1
  .line 2
    iget-boolean v0, p1, Landroidx/fragment/app/Fragment;->C:Z
    if-eqz v0, :L0
  .line 3
    iget-object v0, p0, Landroidx/fragment/app/v;->c:Landroidx/fragment/app/q;
    invoke-virtual { v0, p1 }, Landroidx/fragment/app/q;->q(Landroidx/fragment/app/Fragment;)V
  :L0
  .line 4
    iget-object v0, p0, Landroidx/fragment/app/v;->b:Ljava/util/HashMap;
    iget-object v1, p1, Landroidx/fragment/app/Fragment;->g:Ljava/lang/String;
    const/4 v2, 0
    invoke-virtual { v0, v1, v2 }, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Landroidx/fragment/app/u;
    if-nez v0, :L1
    return-void
  :L1
    const/4 v0, 2
  .line 5
    invoke-static { v0 }, Landroidx/fragment/app/n;->E0(I)Z
    move-result v0
    if-eqz v0, :L2
  .line 6
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "Removed fragment from active set "
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0, p1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
  :L2
    return-void
.end method

.method r()V
  .registers 5
  .line 1
    iget-object v0, p0, Landroidx/fragment/app/v;->a:Ljava/util/ArrayList;
    invoke-virtual { v0 }, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
    move-result-object v0
  :L0
    invoke-interface { v0 }, Ljava/util/Iterator;->hasNext()Z
    move-result v1
    if-eqz v1, :L1
    invoke-interface { v0 }, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object v1
    check-cast v1, Landroidx/fragment/app/Fragment;
  .line 2
    iget-object v2, p0, Landroidx/fragment/app/v;->b:Ljava/util/HashMap;
    iget-object v1, v1, Landroidx/fragment/app/Fragment;->g:Ljava/lang/String;
    invoke-virtual { v2, v1 }, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object v1
    check-cast v1, Landroidx/fragment/app/u;
    if-eqz v1, :L0
  .line 3
    invoke-virtual { v1 }, Landroidx/fragment/app/u;->m()V
    goto :L0
  :L1
  .line 4
    iget-object v0, p0, Landroidx/fragment/app/v;->b:Ljava/util/HashMap;
    invoke-virtual { v0 }, Ljava/util/HashMap;->values()Ljava/util/Collection;
    move-result-object v0
    invoke-interface { v0 }, Ljava/util/Collection;->iterator()Ljava/util/Iterator;
    move-result-object v0
  :L2
    invoke-interface { v0 }, Ljava/util/Iterator;->hasNext()Z
    move-result v1
    if-eqz v1, :L5
    invoke-interface { v0 }, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object v1
    check-cast v1, Landroidx/fragment/app/u;
    if-eqz v1, :L2
  .line 5
    invoke-virtual { v1 }, Landroidx/fragment/app/u;->m()V
  .line 6
    invoke-virtual { v1 }, Landroidx/fragment/app/u;->k()Landroidx/fragment/app/Fragment;
    move-result-object v2
  .line 7
    iget-boolean v3, v2, Landroidx/fragment/app/Fragment;->n:Z
    if-eqz v3, :L3
    invoke-virtual { v2 }, Landroidx/fragment/app/Fragment;->t0()Z
    move-result v2
    if-nez v2, :L3
    const/4 v2, 1
    goto :L4
  :L3
    const/4 v2, 0
  :L4
    if-eqz v2, :L2
  .line 8
    invoke-virtual { p0, v1 }, Landroidx/fragment/app/v;->q(Landroidx/fragment/app/u;)V
    goto :L2
  :L5
    return-void
.end method

.method s(Landroidx/fragment/app/Fragment;)V
  .catchall { :L0 .. :L1 } :L2
  .catchall { :L3 .. :L4 } :L2
  .registers 4
  .line 1
    iget-object v0, p0, Landroidx/fragment/app/v;->a:Ljava/util/ArrayList;
    monitor-enter v0
  :L0
  .line 2
    iget-object v1, p0, Landroidx/fragment/app/v;->a:Ljava/util/ArrayList;
    invoke-virtual { v1, p1 }, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
  .line 3
    monitor-exit v0
  :L1
    const/4 v0, 0
  .line 4
    iput-boolean v0, p1, Landroidx/fragment/app/Fragment;->m:Z
    return-void
  :L2
    move-exception p1
  :L3
  .line 5
    monitor-exit v0
  :L4
    throw p1
.end method

.method t()V
  .registers 2
  .line 1
    iget-object v0, p0, Landroidx/fragment/app/v;->b:Ljava/util/HashMap;
    invoke-virtual { v0 }, Ljava/util/HashMap;->clear()V
    return-void
.end method

.method u(Ljava/util/List;)V
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(",
      "Ljava/util/List<",
      "Ljava/lang/String;",
      ">;)V"
    }
  .end annotation
  .registers 6
  .line 1
    iget-object v0, p0, Landroidx/fragment/app/v;->a:Ljava/util/ArrayList;
    invoke-virtual { v0 }, Ljava/util/ArrayList;->clear()V
    if-eqz p1, :L3
  .line 2
    invoke-interface { p1 }, Ljava/util/List;->iterator()Ljava/util/Iterator;
    move-result-object p1
  :L0
    invoke-interface { p1 }, Ljava/util/Iterator;->hasNext()Z
    move-result v0
    if-eqz v0, :L3
    invoke-interface { p1 }, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Ljava/lang/String;
  .line 3
    invoke-virtual { p0, v0 }, Landroidx/fragment/app/v;->f(Ljava/lang/String;)Landroidx/fragment/app/Fragment;
    move-result-object v1
    if-eqz v1, :L2
    const/4 v2, 2
  .line 4
    invoke-static { v2 }, Landroidx/fragment/app/n;->E0(I)Z
    move-result v2
    if-eqz v2, :L1
  .line 5
    new-instance v2, Ljava/lang/StringBuilder;
    invoke-direct { v2 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v3, "restoreSaveState: added ("
    invoke-virtual { v2, v3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v2, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string v0, "): "
    invoke-virtual { v2, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v2, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    invoke-virtual { v2 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
  :L1
  .line 6
    invoke-virtual { p0, v1 }, Landroidx/fragment/app/v;->a(Landroidx/fragment/app/Fragment;)V
    goto :L0
  :L2
  .line 7
    new-instance p1, Ljava/lang/IllegalStateException;
    new-instance v1, Ljava/lang/StringBuilder;
    invoke-direct { v1 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v2, "No instantiated fragment for ("
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v1, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string v0, ")"
    invoke-virtual { v1, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    invoke-direct { p1, v0 }, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
    throw p1
  :L3
    return-void
.end method

.method v()Ljava/util/ArrayList;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "()",
      "Ljava/util/ArrayList<",
      "Landroidx/fragment/app/t;",
      ">;"
    }
  .end annotation
  .registers 7
  .line 1
    new-instance v0, Ljava/util/ArrayList;
    iget-object v1, p0, Landroidx/fragment/app/v;->b:Ljava/util/HashMap;
    invoke-virtual { v1 }, Ljava/util/HashMap;->size()I
    move-result v1
    invoke-direct { v0, v1 }, Ljava/util/ArrayList;-><init>(I)V
  .line 2
    iget-object v1, p0, Landroidx/fragment/app/v;->b:Ljava/util/HashMap;
    invoke-virtual { v1 }, Ljava/util/HashMap;->values()Ljava/util/Collection;
    move-result-object v1
    invoke-interface { v1 }, Ljava/util/Collection;->iterator()Ljava/util/Iterator;
    move-result-object v1
  :L0
    invoke-interface { v1 }, Ljava/util/Iterator;->hasNext()Z
    move-result v2
    if-eqz v2, :L1
    invoke-interface { v1 }, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object v2
    check-cast v2, Landroidx/fragment/app/u;
    if-eqz v2, :L0
  .line 3
    invoke-virtual { v2 }, Landroidx/fragment/app/u;->k()Landroidx/fragment/app/Fragment;
    move-result-object v3
  .line 4
    invoke-virtual { v2 }, Landroidx/fragment/app/u;->r()Landroidx/fragment/app/t;
    move-result-object v2
  .line 5
    invoke-virtual { v0, v2 }, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    const/4 v4, 2
  .line 6
    invoke-static { v4 }, Landroidx/fragment/app/n;->E0(I)Z
    move-result v4
    if-eqz v4, :L0
  .line 7
    new-instance v4, Ljava/lang/StringBuilder;
    invoke-direct { v4 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v5, "Saved state of "
    invoke-virtual { v4, v5 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v4, v3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    const-string v3, ": "
    invoke-virtual { v4, v3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget-object v2, v2, Landroidx/fragment/app/t;->n:Landroid/os/Bundle;
    invoke-virtual { v4, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    invoke-virtual { v4 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    goto :L0
  :L1
    return-object v0
.end method

.method w()Ljava/util/ArrayList;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "()",
      "Ljava/util/ArrayList<",
      "Ljava/lang/String;",
      ">;"
    }
  .end annotation
  .catchall { :L0 .. :L5 } :L4
  .registers 7
  .line 1
    iget-object v0, p0, Landroidx/fragment/app/v;->a:Ljava/util/ArrayList;
    monitor-enter v0
  :L0
  .line 2
    iget-object v1, p0, Landroidx/fragment/app/v;->a:Ljava/util/ArrayList;
    invoke-virtual { v1 }, Ljava/util/ArrayList;->isEmpty()Z
    move-result v1
    if-eqz v1, :L1
    const/4 v1, 0
  .line 3
    monitor-exit v0
    return-object v1
  :L1
  .line 4
    new-instance v1, Ljava/util/ArrayList;
    iget-object v2, p0, Landroidx/fragment/app/v;->a:Ljava/util/ArrayList;
    invoke-virtual { v2 }, Ljava/util/ArrayList;->size()I
    move-result v2
    invoke-direct { v1, v2 }, Ljava/util/ArrayList;-><init>(I)V
  .line 5
    iget-object v2, p0, Landroidx/fragment/app/v;->a:Ljava/util/ArrayList;
    invoke-virtual { v2 }, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
    move-result-object v2
  :L2
    invoke-interface { v2 }, Ljava/util/Iterator;->hasNext()Z
    move-result v3
    if-eqz v3, :L3
    invoke-interface { v2 }, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object v3
    check-cast v3, Landroidx/fragment/app/Fragment;
  .line 6
    iget-object v4, v3, Landroidx/fragment/app/Fragment;->g:Ljava/lang/String;
    invoke-virtual { v1, v4 }, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    const/4 v4, 2
  .line 7
    invoke-static { v4 }, Landroidx/fragment/app/n;->E0(I)Z
    move-result v4
    if-eqz v4, :L2
  .line 8
    new-instance v4, Ljava/lang/StringBuilder;
    invoke-direct { v4 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v5, "saveAllState: adding fragment ("
    invoke-virtual { v4, v5 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget-object v5, v3, Landroidx/fragment/app/Fragment;->g:Ljava/lang/String;
    invoke-virtual { v4, v5 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string v5, "): "
    invoke-virtual { v4, v5 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v4, v3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    invoke-virtual { v4 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    goto :L2
  :L3
  .line 9
    monitor-exit v0
    return-object v1
  :L4
    move-exception v1
  .line 10
    monitor-exit v0
  :L5
    goto :L7
  :L6
    throw v1
  :L7
    goto :L6
.end method

.method x(Landroidx/fragment/app/q;)V
  .registers 2
  .line 1
    iput-object p1, p0, Landroidx/fragment/app/v;->c:Landroidx/fragment/app/q;
    return-void
.end method
