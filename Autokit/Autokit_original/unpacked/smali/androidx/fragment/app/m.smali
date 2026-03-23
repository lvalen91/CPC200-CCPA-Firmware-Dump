.class Landroidx/fragment/app/m;
.super Ljava/lang/Object;
.source "SourceFile"

.annotation system Ldalvik/annotation/MemberClasses;
  value = {
    Landroidx/fragment/app/m$a;
  }
.end annotation

.field private final a:Ljava/util/concurrent/CopyOnWriteArrayList;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "Ljava/util/concurrent/CopyOnWriteArrayList<",
      "Landroidx/fragment/app/m$a;",
      ">;"
    }
  .end annotation
.end field

.field private final b:Landroidx/fragment/app/n;

.method constructor <init>(Landroidx/fragment/app/n;)V
  .registers 3
  .line 1
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
  .line 2
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;
    invoke-direct { v0 }, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V
    iput-object v0, p0, Landroidx/fragment/app/m;->a:Ljava/util/concurrent/CopyOnWriteArrayList;
  .line 3
    iput-object p1, p0, Landroidx/fragment/app/m;->b:Landroidx/fragment/app/n;
    return-void
.end method

.method a(Landroidx/fragment/app/Fragment;Landroid/os/Bundle;Z)V
  .registers 7
  .line 1
    iget-object v0, p0, Landroidx/fragment/app/m;->b:Landroidx/fragment/app/n;
    invoke-virtual { v0 }, Landroidx/fragment/app/n;->v0()Landroidx/fragment/app/Fragment;
    move-result-object v0
    if-eqz v0, :L0
  .line 2
    invoke-virtual { v0 }, Landroidx/fragment/app/Fragment;->X()Landroidx/fragment/app/n;
    move-result-object v0
  .line 3
    invoke-virtual { v0 }, Landroidx/fragment/app/n;->u0()Landroidx/fragment/app/m;
    move-result-object v0
    const/4 v1, 1
  .line 4
    invoke-virtual { v0, p1, p2, v1 }, Landroidx/fragment/app/m;->a(Landroidx/fragment/app/Fragment;Landroid/os/Bundle;Z)V
  :L0
  .line 5
    iget-object v0, p0, Landroidx/fragment/app/m;->a:Ljava/util/concurrent/CopyOnWriteArrayList;
    invoke-virtual { v0 }, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;
    move-result-object v0
  :L1
    invoke-interface { v0 }, Ljava/util/Iterator;->hasNext()Z
    move-result v1
    if-eqz v1, :L3
    invoke-interface { v0 }, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object v1
    check-cast v1, Landroidx/fragment/app/m$a;
    if-eqz p3, :L2
  .line 6
    iget-boolean v2, v1, Landroidx/fragment/app/m$a;->b:Z
    if-eqz v2, :L1
  :L2
  .line 7
    iget-object v1, v1, Landroidx/fragment/app/m$a;->a:Landroidx/fragment/app/n$l;
    iget-object v2, p0, Landroidx/fragment/app/m;->b:Landroidx/fragment/app/n;
    invoke-virtual { v1, v2, p1, p2 }, Landroidx/fragment/app/n$l;->a(Landroidx/fragment/app/n;Landroidx/fragment/app/Fragment;Landroid/os/Bundle;)V
    goto :L1
  :L3
    return-void
.end method

.method b(Landroidx/fragment/app/Fragment;Z)V
  .registers 7
  .line 1
    iget-object v0, p0, Landroidx/fragment/app/m;->b:Landroidx/fragment/app/n;
    invoke-virtual { v0 }, Landroidx/fragment/app/n;->s0()Landroidx/fragment/app/k;
    move-result-object v0
    invoke-virtual { v0 }, Landroidx/fragment/app/k;->f()Landroid/content/Context;
    move-result-object v0
  .line 2
    iget-object v1, p0, Landroidx/fragment/app/m;->b:Landroidx/fragment/app/n;
    invoke-virtual { v1 }, Landroidx/fragment/app/n;->v0()Landroidx/fragment/app/Fragment;
    move-result-object v1
    if-eqz v1, :L0
  .line 3
    invoke-virtual { v1 }, Landroidx/fragment/app/Fragment;->X()Landroidx/fragment/app/n;
    move-result-object v1
  .line 4
    invoke-virtual { v1 }, Landroidx/fragment/app/n;->u0()Landroidx/fragment/app/m;
    move-result-object v1
    const/4 v2, 1
  .line 5
    invoke-virtual { v1, p1, v2 }, Landroidx/fragment/app/m;->b(Landroidx/fragment/app/Fragment;Z)V
  :L0
  .line 6
    iget-object v1, p0, Landroidx/fragment/app/m;->a:Ljava/util/concurrent/CopyOnWriteArrayList;
    invoke-virtual { v1 }, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;
    move-result-object v1
  :L1
    invoke-interface { v1 }, Ljava/util/Iterator;->hasNext()Z
    move-result v2
    if-eqz v2, :L3
    invoke-interface { v1 }, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object v2
    check-cast v2, Landroidx/fragment/app/m$a;
    if-eqz p2, :L2
  .line 7
    iget-boolean v3, v2, Landroidx/fragment/app/m$a;->b:Z
    if-eqz v3, :L1
  :L2
  .line 8
    iget-object v2, v2, Landroidx/fragment/app/m$a;->a:Landroidx/fragment/app/n$l;
    iget-object v3, p0, Landroidx/fragment/app/m;->b:Landroidx/fragment/app/n;
    invoke-virtual { v2, v3, p1, v0 }, Landroidx/fragment/app/n$l;->b(Landroidx/fragment/app/n;Landroidx/fragment/app/Fragment;Landroid/content/Context;)V
    goto :L1
  :L3
    return-void
.end method

.method c(Landroidx/fragment/app/Fragment;Landroid/os/Bundle;Z)V
  .registers 7
  .line 1
    iget-object v0, p0, Landroidx/fragment/app/m;->b:Landroidx/fragment/app/n;
    invoke-virtual { v0 }, Landroidx/fragment/app/n;->v0()Landroidx/fragment/app/Fragment;
    move-result-object v0
    if-eqz v0, :L0
  .line 2
    invoke-virtual { v0 }, Landroidx/fragment/app/Fragment;->X()Landroidx/fragment/app/n;
    move-result-object v0
  .line 3
    invoke-virtual { v0 }, Landroidx/fragment/app/n;->u0()Landroidx/fragment/app/m;
    move-result-object v0
    const/4 v1, 1
  .line 4
    invoke-virtual { v0, p1, p2, v1 }, Landroidx/fragment/app/m;->c(Landroidx/fragment/app/Fragment;Landroid/os/Bundle;Z)V
  :L0
  .line 5
    iget-object v0, p0, Landroidx/fragment/app/m;->a:Ljava/util/concurrent/CopyOnWriteArrayList;
    invoke-virtual { v0 }, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;
    move-result-object v0
  :L1
    invoke-interface { v0 }, Ljava/util/Iterator;->hasNext()Z
    move-result v1
    if-eqz v1, :L3
    invoke-interface { v0 }, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object v1
    check-cast v1, Landroidx/fragment/app/m$a;
    if-eqz p3, :L2
  .line 6
    iget-boolean v2, v1, Landroidx/fragment/app/m$a;->b:Z
    if-eqz v2, :L1
  :L2
  .line 7
    iget-object v1, v1, Landroidx/fragment/app/m$a;->a:Landroidx/fragment/app/n$l;
    iget-object v2, p0, Landroidx/fragment/app/m;->b:Landroidx/fragment/app/n;
    invoke-virtual { v1, v2, p1, p2 }, Landroidx/fragment/app/n$l;->c(Landroidx/fragment/app/n;Landroidx/fragment/app/Fragment;Landroid/os/Bundle;)V
    goto :L1
  :L3
    return-void
.end method

.method d(Landroidx/fragment/app/Fragment;Z)V
  .registers 6
  .line 1
    iget-object v0, p0, Landroidx/fragment/app/m;->b:Landroidx/fragment/app/n;
    invoke-virtual { v0 }, Landroidx/fragment/app/n;->v0()Landroidx/fragment/app/Fragment;
    move-result-object v0
    if-eqz v0, :L0
  .line 2
    invoke-virtual { v0 }, Landroidx/fragment/app/Fragment;->X()Landroidx/fragment/app/n;
    move-result-object v0
  .line 3
    invoke-virtual { v0 }, Landroidx/fragment/app/n;->u0()Landroidx/fragment/app/m;
    move-result-object v0
    const/4 v1, 1
  .line 4
    invoke-virtual { v0, p1, v1 }, Landroidx/fragment/app/m;->d(Landroidx/fragment/app/Fragment;Z)V
  :L0
  .line 5
    iget-object v0, p0, Landroidx/fragment/app/m;->a:Ljava/util/concurrent/CopyOnWriteArrayList;
    invoke-virtual { v0 }, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;
    move-result-object v0
  :L1
    invoke-interface { v0 }, Ljava/util/Iterator;->hasNext()Z
    move-result v1
    if-eqz v1, :L3
    invoke-interface { v0 }, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object v1
    check-cast v1, Landroidx/fragment/app/m$a;
    if-eqz p2, :L2
  .line 6
    iget-boolean v2, v1, Landroidx/fragment/app/m$a;->b:Z
    if-eqz v2, :L1
  :L2
  .line 7
    iget-object v1, v1, Landroidx/fragment/app/m$a;->a:Landroidx/fragment/app/n$l;
    iget-object v2, p0, Landroidx/fragment/app/m;->b:Landroidx/fragment/app/n;
    invoke-virtual { v1, v2, p1 }, Landroidx/fragment/app/n$l;->d(Landroidx/fragment/app/n;Landroidx/fragment/app/Fragment;)V
    goto :L1
  :L3
    return-void
.end method

.method e(Landroidx/fragment/app/Fragment;Z)V
  .registers 6
  .line 1
    iget-object v0, p0, Landroidx/fragment/app/m;->b:Landroidx/fragment/app/n;
    invoke-virtual { v0 }, Landroidx/fragment/app/n;->v0()Landroidx/fragment/app/Fragment;
    move-result-object v0
    if-eqz v0, :L0
  .line 2
    invoke-virtual { v0 }, Landroidx/fragment/app/Fragment;->X()Landroidx/fragment/app/n;
    move-result-object v0
  .line 3
    invoke-virtual { v0 }, Landroidx/fragment/app/n;->u0()Landroidx/fragment/app/m;
    move-result-object v0
    const/4 v1, 1
  .line 4
    invoke-virtual { v0, p1, v1 }, Landroidx/fragment/app/m;->e(Landroidx/fragment/app/Fragment;Z)V
  :L0
  .line 5
    iget-object v0, p0, Landroidx/fragment/app/m;->a:Ljava/util/concurrent/CopyOnWriteArrayList;
    invoke-virtual { v0 }, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;
    move-result-object v0
  :L1
    invoke-interface { v0 }, Ljava/util/Iterator;->hasNext()Z
    move-result v1
    if-eqz v1, :L3
    invoke-interface { v0 }, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object v1
    check-cast v1, Landroidx/fragment/app/m$a;
    if-eqz p2, :L2
  .line 6
    iget-boolean v2, v1, Landroidx/fragment/app/m$a;->b:Z
    if-eqz v2, :L1
  :L2
  .line 7
    iget-object v1, v1, Landroidx/fragment/app/m$a;->a:Landroidx/fragment/app/n$l;
    iget-object v2, p0, Landroidx/fragment/app/m;->b:Landroidx/fragment/app/n;
    invoke-virtual { v1, v2, p1 }, Landroidx/fragment/app/n$l;->e(Landroidx/fragment/app/n;Landroidx/fragment/app/Fragment;)V
    goto :L1
  :L3
    return-void
.end method

.method f(Landroidx/fragment/app/Fragment;Z)V
  .registers 6
  .line 1
    iget-object v0, p0, Landroidx/fragment/app/m;->b:Landroidx/fragment/app/n;
    invoke-virtual { v0 }, Landroidx/fragment/app/n;->v0()Landroidx/fragment/app/Fragment;
    move-result-object v0
    if-eqz v0, :L0
  .line 2
    invoke-virtual { v0 }, Landroidx/fragment/app/Fragment;->X()Landroidx/fragment/app/n;
    move-result-object v0
  .line 3
    invoke-virtual { v0 }, Landroidx/fragment/app/n;->u0()Landroidx/fragment/app/m;
    move-result-object v0
    const/4 v1, 1
  .line 4
    invoke-virtual { v0, p1, v1 }, Landroidx/fragment/app/m;->f(Landroidx/fragment/app/Fragment;Z)V
  :L0
  .line 5
    iget-object v0, p0, Landroidx/fragment/app/m;->a:Ljava/util/concurrent/CopyOnWriteArrayList;
    invoke-virtual { v0 }, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;
    move-result-object v0
  :L1
    invoke-interface { v0 }, Ljava/util/Iterator;->hasNext()Z
    move-result v1
    if-eqz v1, :L3
    invoke-interface { v0 }, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object v1
    check-cast v1, Landroidx/fragment/app/m$a;
    if-eqz p2, :L2
  .line 6
    iget-boolean v2, v1, Landroidx/fragment/app/m$a;->b:Z
    if-eqz v2, :L1
  :L2
  .line 7
    iget-object v1, v1, Landroidx/fragment/app/m$a;->a:Landroidx/fragment/app/n$l;
    iget-object v2, p0, Landroidx/fragment/app/m;->b:Landroidx/fragment/app/n;
    invoke-virtual { v1, v2, p1 }, Landroidx/fragment/app/n$l;->f(Landroidx/fragment/app/n;Landroidx/fragment/app/Fragment;)V
    goto :L1
  :L3
    return-void
.end method

.method g(Landroidx/fragment/app/Fragment;Z)V
  .registers 7
  .line 1
    iget-object v0, p0, Landroidx/fragment/app/m;->b:Landroidx/fragment/app/n;
    invoke-virtual { v0 }, Landroidx/fragment/app/n;->s0()Landroidx/fragment/app/k;
    move-result-object v0
    invoke-virtual { v0 }, Landroidx/fragment/app/k;->f()Landroid/content/Context;
    move-result-object v0
  .line 2
    iget-object v1, p0, Landroidx/fragment/app/m;->b:Landroidx/fragment/app/n;
    invoke-virtual { v1 }, Landroidx/fragment/app/n;->v0()Landroidx/fragment/app/Fragment;
    move-result-object v1
    if-eqz v1, :L0
  .line 3
    invoke-virtual { v1 }, Landroidx/fragment/app/Fragment;->X()Landroidx/fragment/app/n;
    move-result-object v1
  .line 4
    invoke-virtual { v1 }, Landroidx/fragment/app/n;->u0()Landroidx/fragment/app/m;
    move-result-object v1
    const/4 v2, 1
  .line 5
    invoke-virtual { v1, p1, v2 }, Landroidx/fragment/app/m;->g(Landroidx/fragment/app/Fragment;Z)V
  :L0
  .line 6
    iget-object v1, p0, Landroidx/fragment/app/m;->a:Ljava/util/concurrent/CopyOnWriteArrayList;
    invoke-virtual { v1 }, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;
    move-result-object v1
  :L1
    invoke-interface { v1 }, Ljava/util/Iterator;->hasNext()Z
    move-result v2
    if-eqz v2, :L3
    invoke-interface { v1 }, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object v2
    check-cast v2, Landroidx/fragment/app/m$a;
    if-eqz p2, :L2
  .line 7
    iget-boolean v3, v2, Landroidx/fragment/app/m$a;->b:Z
    if-eqz v3, :L1
  :L2
  .line 8
    iget-object v2, v2, Landroidx/fragment/app/m$a;->a:Landroidx/fragment/app/n$l;
    iget-object v3, p0, Landroidx/fragment/app/m;->b:Landroidx/fragment/app/n;
    invoke-virtual { v2, v3, p1, v0 }, Landroidx/fragment/app/n$l;->g(Landroidx/fragment/app/n;Landroidx/fragment/app/Fragment;Landroid/content/Context;)V
    goto :L1
  :L3
    return-void
.end method

.method h(Landroidx/fragment/app/Fragment;Landroid/os/Bundle;Z)V
  .registers 7
  .line 1
    iget-object v0, p0, Landroidx/fragment/app/m;->b:Landroidx/fragment/app/n;
    invoke-virtual { v0 }, Landroidx/fragment/app/n;->v0()Landroidx/fragment/app/Fragment;
    move-result-object v0
    if-eqz v0, :L0
  .line 2
    invoke-virtual { v0 }, Landroidx/fragment/app/Fragment;->X()Landroidx/fragment/app/n;
    move-result-object v0
  .line 3
    invoke-virtual { v0 }, Landroidx/fragment/app/n;->u0()Landroidx/fragment/app/m;
    move-result-object v0
    const/4 v1, 1
  .line 4
    invoke-virtual { v0, p1, p2, v1 }, Landroidx/fragment/app/m;->h(Landroidx/fragment/app/Fragment;Landroid/os/Bundle;Z)V
  :L0
  .line 5
    iget-object v0, p0, Landroidx/fragment/app/m;->a:Ljava/util/concurrent/CopyOnWriteArrayList;
    invoke-virtual { v0 }, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;
    move-result-object v0
  :L1
    invoke-interface { v0 }, Ljava/util/Iterator;->hasNext()Z
    move-result v1
    if-eqz v1, :L3
    invoke-interface { v0 }, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object v1
    check-cast v1, Landroidx/fragment/app/m$a;
    if-eqz p3, :L2
  .line 6
    iget-boolean v2, v1, Landroidx/fragment/app/m$a;->b:Z
    if-eqz v2, :L1
  :L2
  .line 7
    iget-object v1, v1, Landroidx/fragment/app/m$a;->a:Landroidx/fragment/app/n$l;
    iget-object v2, p0, Landroidx/fragment/app/m;->b:Landroidx/fragment/app/n;
    invoke-virtual { v1, v2, p1, p2 }, Landroidx/fragment/app/n$l;->h(Landroidx/fragment/app/n;Landroidx/fragment/app/Fragment;Landroid/os/Bundle;)V
    goto :L1
  :L3
    return-void
.end method

.method i(Landroidx/fragment/app/Fragment;Z)V
  .registers 6
  .line 1
    iget-object v0, p0, Landroidx/fragment/app/m;->b:Landroidx/fragment/app/n;
    invoke-virtual { v0 }, Landroidx/fragment/app/n;->v0()Landroidx/fragment/app/Fragment;
    move-result-object v0
    if-eqz v0, :L0
  .line 2
    invoke-virtual { v0 }, Landroidx/fragment/app/Fragment;->X()Landroidx/fragment/app/n;
    move-result-object v0
  .line 3
    invoke-virtual { v0 }, Landroidx/fragment/app/n;->u0()Landroidx/fragment/app/m;
    move-result-object v0
    const/4 v1, 1
  .line 4
    invoke-virtual { v0, p1, v1 }, Landroidx/fragment/app/m;->i(Landroidx/fragment/app/Fragment;Z)V
  :L0
  .line 5
    iget-object v0, p0, Landroidx/fragment/app/m;->a:Ljava/util/concurrent/CopyOnWriteArrayList;
    invoke-virtual { v0 }, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;
    move-result-object v0
  :L1
    invoke-interface { v0 }, Ljava/util/Iterator;->hasNext()Z
    move-result v1
    if-eqz v1, :L3
    invoke-interface { v0 }, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object v1
    check-cast v1, Landroidx/fragment/app/m$a;
    if-eqz p2, :L2
  .line 6
    iget-boolean v2, v1, Landroidx/fragment/app/m$a;->b:Z
    if-eqz v2, :L1
  :L2
  .line 7
    iget-object v1, v1, Landroidx/fragment/app/m$a;->a:Landroidx/fragment/app/n$l;
    iget-object v2, p0, Landroidx/fragment/app/m;->b:Landroidx/fragment/app/n;
    invoke-virtual { v1, v2, p1 }, Landroidx/fragment/app/n$l;->i(Landroidx/fragment/app/n;Landroidx/fragment/app/Fragment;)V
    goto :L1
  :L3
    return-void
.end method

.method j(Landroidx/fragment/app/Fragment;Landroid/os/Bundle;Z)V
  .registers 7
  .line 1
    iget-object v0, p0, Landroidx/fragment/app/m;->b:Landroidx/fragment/app/n;
    invoke-virtual { v0 }, Landroidx/fragment/app/n;->v0()Landroidx/fragment/app/Fragment;
    move-result-object v0
    if-eqz v0, :L0
  .line 2
    invoke-virtual { v0 }, Landroidx/fragment/app/Fragment;->X()Landroidx/fragment/app/n;
    move-result-object v0
  .line 3
    invoke-virtual { v0 }, Landroidx/fragment/app/n;->u0()Landroidx/fragment/app/m;
    move-result-object v0
    const/4 v1, 1
  .line 4
    invoke-virtual { v0, p1, p2, v1 }, Landroidx/fragment/app/m;->j(Landroidx/fragment/app/Fragment;Landroid/os/Bundle;Z)V
  :L0
  .line 5
    iget-object v0, p0, Landroidx/fragment/app/m;->a:Ljava/util/concurrent/CopyOnWriteArrayList;
    invoke-virtual { v0 }, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;
    move-result-object v0
  :L1
    invoke-interface { v0 }, Ljava/util/Iterator;->hasNext()Z
    move-result v1
    if-eqz v1, :L3
    invoke-interface { v0 }, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object v1
    check-cast v1, Landroidx/fragment/app/m$a;
    if-eqz p3, :L2
  .line 6
    iget-boolean v2, v1, Landroidx/fragment/app/m$a;->b:Z
    if-eqz v2, :L1
  :L2
  .line 7
    iget-object v1, v1, Landroidx/fragment/app/m$a;->a:Landroidx/fragment/app/n$l;
    iget-object v2, p0, Landroidx/fragment/app/m;->b:Landroidx/fragment/app/n;
    invoke-virtual { v1, v2, p1, p2 }, Landroidx/fragment/app/n$l;->j(Landroidx/fragment/app/n;Landroidx/fragment/app/Fragment;Landroid/os/Bundle;)V
    goto :L1
  :L3
    return-void
.end method

.method k(Landroidx/fragment/app/Fragment;Z)V
  .registers 6
  .line 1
    iget-object v0, p0, Landroidx/fragment/app/m;->b:Landroidx/fragment/app/n;
    invoke-virtual { v0 }, Landroidx/fragment/app/n;->v0()Landroidx/fragment/app/Fragment;
    move-result-object v0
    if-eqz v0, :L0
  .line 2
    invoke-virtual { v0 }, Landroidx/fragment/app/Fragment;->X()Landroidx/fragment/app/n;
    move-result-object v0
  .line 3
    invoke-virtual { v0 }, Landroidx/fragment/app/n;->u0()Landroidx/fragment/app/m;
    move-result-object v0
    const/4 v1, 1
  .line 4
    invoke-virtual { v0, p1, v1 }, Landroidx/fragment/app/m;->k(Landroidx/fragment/app/Fragment;Z)V
  :L0
  .line 5
    iget-object v0, p0, Landroidx/fragment/app/m;->a:Ljava/util/concurrent/CopyOnWriteArrayList;
    invoke-virtual { v0 }, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;
    move-result-object v0
  :L1
    invoke-interface { v0 }, Ljava/util/Iterator;->hasNext()Z
    move-result v1
    if-eqz v1, :L3
    invoke-interface { v0 }, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object v1
    check-cast v1, Landroidx/fragment/app/m$a;
    if-eqz p2, :L2
  .line 6
    iget-boolean v2, v1, Landroidx/fragment/app/m$a;->b:Z
    if-eqz v2, :L1
  :L2
  .line 7
    iget-object v1, v1, Landroidx/fragment/app/m$a;->a:Landroidx/fragment/app/n$l;
    iget-object v2, p0, Landroidx/fragment/app/m;->b:Landroidx/fragment/app/n;
    invoke-virtual { v1, v2, p1 }, Landroidx/fragment/app/n$l;->k(Landroidx/fragment/app/n;Landroidx/fragment/app/Fragment;)V
    goto :L1
  :L3
    return-void
.end method

.method l(Landroidx/fragment/app/Fragment;Z)V
  .registers 6
  .line 1
    iget-object v0, p0, Landroidx/fragment/app/m;->b:Landroidx/fragment/app/n;
    invoke-virtual { v0 }, Landroidx/fragment/app/n;->v0()Landroidx/fragment/app/Fragment;
    move-result-object v0
    if-eqz v0, :L0
  .line 2
    invoke-virtual { v0 }, Landroidx/fragment/app/Fragment;->X()Landroidx/fragment/app/n;
    move-result-object v0
  .line 3
    invoke-virtual { v0 }, Landroidx/fragment/app/n;->u0()Landroidx/fragment/app/m;
    move-result-object v0
    const/4 v1, 1
  .line 4
    invoke-virtual { v0, p1, v1 }, Landroidx/fragment/app/m;->l(Landroidx/fragment/app/Fragment;Z)V
  :L0
  .line 5
    iget-object v0, p0, Landroidx/fragment/app/m;->a:Ljava/util/concurrent/CopyOnWriteArrayList;
    invoke-virtual { v0 }, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;
    move-result-object v0
  :L1
    invoke-interface { v0 }, Ljava/util/Iterator;->hasNext()Z
    move-result v1
    if-eqz v1, :L3
    invoke-interface { v0 }, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object v1
    check-cast v1, Landroidx/fragment/app/m$a;
    if-eqz p2, :L2
  .line 6
    iget-boolean v2, v1, Landroidx/fragment/app/m$a;->b:Z
    if-eqz v2, :L1
  :L2
  .line 7
    iget-object v1, v1, Landroidx/fragment/app/m$a;->a:Landroidx/fragment/app/n$l;
    iget-object v2, p0, Landroidx/fragment/app/m;->b:Landroidx/fragment/app/n;
    invoke-virtual { v1, v2, p1 }, Landroidx/fragment/app/n$l;->l(Landroidx/fragment/app/n;Landroidx/fragment/app/Fragment;)V
    goto :L1
  :L3
    return-void
.end method

.method m(Landroidx/fragment/app/Fragment;Landroid/view/View;Landroid/os/Bundle;Z)V
  .registers 8
  .line 1
    iget-object v0, p0, Landroidx/fragment/app/m;->b:Landroidx/fragment/app/n;
    invoke-virtual { v0 }, Landroidx/fragment/app/n;->v0()Landroidx/fragment/app/Fragment;
    move-result-object v0
    if-eqz v0, :L0
  .line 2
    invoke-virtual { v0 }, Landroidx/fragment/app/Fragment;->X()Landroidx/fragment/app/n;
    move-result-object v0
  .line 3
    invoke-virtual { v0 }, Landroidx/fragment/app/n;->u0()Landroidx/fragment/app/m;
    move-result-object v0
    const/4 v1, 1
  .line 4
    invoke-virtual { v0, p1, p2, p3, v1 }, Landroidx/fragment/app/m;->m(Landroidx/fragment/app/Fragment;Landroid/view/View;Landroid/os/Bundle;Z)V
  :L0
  .line 5
    iget-object v0, p0, Landroidx/fragment/app/m;->a:Ljava/util/concurrent/CopyOnWriteArrayList;
    invoke-virtual { v0 }, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;
    move-result-object v0
  :L1
    invoke-interface { v0 }, Ljava/util/Iterator;->hasNext()Z
    move-result v1
    if-eqz v1, :L3
    invoke-interface { v0 }, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object v1
    check-cast v1, Landroidx/fragment/app/m$a;
    if-eqz p4, :L2
  .line 6
    iget-boolean v2, v1, Landroidx/fragment/app/m$a;->b:Z
    if-eqz v2, :L1
  :L2
  .line 7
    iget-object v1, v1, Landroidx/fragment/app/m$a;->a:Landroidx/fragment/app/n$l;
    iget-object v2, p0, Landroidx/fragment/app/m;->b:Landroidx/fragment/app/n;
    invoke-virtual { v1, v2, p1, p2, p3 }, Landroidx/fragment/app/n$l;->m(Landroidx/fragment/app/n;Landroidx/fragment/app/Fragment;Landroid/view/View;Landroid/os/Bundle;)V
    goto :L1
  :L3
    return-void
.end method

.method n(Landroidx/fragment/app/Fragment;Z)V
  .registers 6
  .line 1
    iget-object v0, p0, Landroidx/fragment/app/m;->b:Landroidx/fragment/app/n;
    invoke-virtual { v0 }, Landroidx/fragment/app/n;->v0()Landroidx/fragment/app/Fragment;
    move-result-object v0
    if-eqz v0, :L0
  .line 2
    invoke-virtual { v0 }, Landroidx/fragment/app/Fragment;->X()Landroidx/fragment/app/n;
    move-result-object v0
  .line 3
    invoke-virtual { v0 }, Landroidx/fragment/app/n;->u0()Landroidx/fragment/app/m;
    move-result-object v0
    const/4 v1, 1
  .line 4
    invoke-virtual { v0, p1, v1 }, Landroidx/fragment/app/m;->n(Landroidx/fragment/app/Fragment;Z)V
  :L0
  .line 5
    iget-object v0, p0, Landroidx/fragment/app/m;->a:Ljava/util/concurrent/CopyOnWriteArrayList;
    invoke-virtual { v0 }, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;
    move-result-object v0
  :L1
    invoke-interface { v0 }, Ljava/util/Iterator;->hasNext()Z
    move-result v1
    if-eqz v1, :L3
    invoke-interface { v0 }, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object v1
    check-cast v1, Landroidx/fragment/app/m$a;
    if-eqz p2, :L2
  .line 6
    iget-boolean v2, v1, Landroidx/fragment/app/m$a;->b:Z
    if-eqz v2, :L1
  :L2
  .line 7
    iget-object v1, v1, Landroidx/fragment/app/m$a;->a:Landroidx/fragment/app/n$l;
    iget-object v2, p0, Landroidx/fragment/app/m;->b:Landroidx/fragment/app/n;
    invoke-virtual { v1, v2, p1 }, Landroidx/fragment/app/n$l;->n(Landroidx/fragment/app/n;Landroidx/fragment/app/Fragment;)V
    goto :L1
  :L3
    return-void
.end method
