.class final Landroidx/fragment/app/q;
.super Landroidx/lifecycle/v;
.source "SourceFile"

.field private final static j:Landroidx/lifecycle/w$b;

.field private final c:Ljava/util/HashMap;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "Ljava/util/HashMap<",
      "Ljava/lang/String;",
      "Landroidx/fragment/app/Fragment;",
      ">;"
    }
  .end annotation
.end field

.field private final d:Ljava/util/HashMap;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "Ljava/util/HashMap<",
      "Ljava/lang/String;",
      "Landroidx/fragment/app/q;",
      ">;"
    }
  .end annotation
.end field

.field private final e:Ljava/util/HashMap;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "Ljava/util/HashMap<",
      "Ljava/lang/String;",
      "Landroidx/lifecycle/x;",
      ">;"
    }
  .end annotation
.end field

.field private final f:Z

.field private g:Z

.field private h:Z

.field private i:Z

.method static constructor <clinit>()V
  .registers 1
  .line 1
    new-instance v0, Landroidx/fragment/app/q$a;
    invoke-direct { v0 }, Landroidx/fragment/app/q$a;-><init>()V
    sput-object v0, Landroidx/fragment/app/q;->j:Landroidx/lifecycle/w$b;
    return-void
.end method

.method constructor <init>(Z)V
  .registers 3
  .line 1
    invoke-direct { p0 }, Landroidx/lifecycle/v;-><init>()V
  .line 2
    new-instance v0, Ljava/util/HashMap;
    invoke-direct { v0 }, Ljava/util/HashMap;-><init>()V
    iput-object v0, p0, Landroidx/fragment/app/q;->c:Ljava/util/HashMap;
  .line 3
    new-instance v0, Ljava/util/HashMap;
    invoke-direct { v0 }, Ljava/util/HashMap;-><init>()V
    iput-object v0, p0, Landroidx/fragment/app/q;->d:Ljava/util/HashMap;
  .line 4
    new-instance v0, Ljava/util/HashMap;
    invoke-direct { v0 }, Ljava/util/HashMap;-><init>()V
    iput-object v0, p0, Landroidx/fragment/app/q;->e:Ljava/util/HashMap;
    const/4 v0, 0
  .line 5
    iput-boolean v0, p0, Landroidx/fragment/app/q;->g:Z
  .line 6
    iput-boolean v0, p0, Landroidx/fragment/app/q;->h:Z
  .line 7
    iput-boolean v0, p0, Landroidx/fragment/app/q;->i:Z
  .line 8
    iput-boolean p1, p0, Landroidx/fragment/app/q;->f:Z
    return-void
.end method

.method static m(Landroidx/lifecycle/x;)Landroidx/fragment/app/q;
  .registers 3
  .line 1
    new-instance v0, Landroidx/lifecycle/w;
    sget-object v1, Landroidx/fragment/app/q;->j:Landroidx/lifecycle/w$b;
    invoke-direct { v0, p0, v1 }, Landroidx/lifecycle/w;-><init>(Landroidx/lifecycle/x;Landroidx/lifecycle/w$b;)V
  .line 2
    const-class p0, Landroidx/fragment/app/q;
    invoke-virtual { v0, p0 }, Landroidx/lifecycle/w;->a(Ljava/lang/Class;)Landroidx/lifecycle/v;
    move-result-object p0
    check-cast p0, Landroidx/fragment/app/q;
    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
  .registers 6
    const/4 v0, 1
    if-ne p0, p1, :L0
    return v0
  :L0
    const/4 v1, 0
    if-eqz p1, :L4
  .line 1
    const-class v2, Landroidx/fragment/app/q;
    invoke-virtual { p1 }, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    move-result-object v3
    if-eq v2, v3, :L1
    goto :L4
  :L1
  .line 2
    check-cast p1, Landroidx/fragment/app/q;
  .line 3
    iget-object v2, p0, Landroidx/fragment/app/q;->c:Ljava/util/HashMap;
    iget-object v3, p1, Landroidx/fragment/app/q;->c:Ljava/util/HashMap;
    invoke-virtual { v2, v3 }, Ljava/util/HashMap;->equals(Ljava/lang/Object;)Z
    move-result v2
    if-eqz v2, :L2
    iget-object v2, p0, Landroidx/fragment/app/q;->d:Ljava/util/HashMap;
    iget-object v3, p1, Landroidx/fragment/app/q;->d:Ljava/util/HashMap;
  .line 4
    invoke-virtual { v2, v3 }, Ljava/util/HashMap;->equals(Ljava/lang/Object;)Z
    move-result v2
    if-eqz v2, :L2
    iget-object v2, p0, Landroidx/fragment/app/q;->e:Ljava/util/HashMap;
    iget-object p1, p1, Landroidx/fragment/app/q;->e:Ljava/util/HashMap;
  .line 5
    invoke-virtual { v2, p1 }, Ljava/util/HashMap;->equals(Ljava/lang/Object;)Z
    move-result p1
    if-eqz p1, :L2
    goto :L3
  :L2
    const/4 v0, 0
  :L3
    return v0
  :L4
    return v1
.end method

.method protected g()V
  .registers 3
    const/4 v0, 3
  .line 1
    invoke-static { v0 }, Landroidx/fragment/app/n;->E0(I)Z
    move-result v0
    if-eqz v0, :L0
  .line 2
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "onCleared called for "
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0, p0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
  :L0
    const/4 v0, 1
  .line 3
    iput-boolean v0, p0, Landroidx/fragment/app/q;->g:Z
    return-void
.end method

.method public hashCode()I
  .registers 3
  .line 1
    iget-object v0, p0, Landroidx/fragment/app/q;->c:Ljava/util/HashMap;
    invoke-virtual { v0 }, Ljava/util/HashMap;->hashCode()I
    move-result v0
    mul-int/lit8 v0, v0, 31
  .line 2
    iget-object v1, p0, Landroidx/fragment/app/q;->d:Ljava/util/HashMap;
    invoke-virtual { v1 }, Ljava/util/HashMap;->hashCode()I
    move-result v1
    add-int/2addr v0, v1
    mul-int/lit8 v0, v0, 31
  .line 3
    iget-object v1, p0, Landroidx/fragment/app/q;->e:Ljava/util/HashMap;
    invoke-virtual { v1 }, Ljava/util/HashMap;->hashCode()I
    move-result v1
    add-int/2addr v0, v1
    return v0
.end method

.method i(Landroidx/fragment/app/Fragment;)V
  .registers 5
  .line 1
    iget-boolean v0, p0, Landroidx/fragment/app/q;->i:Z
    const/4 v1, 2
    if-eqz v0, :L0
  .line 2
    invoke-static { v1 }, Landroidx/fragment/app/n;->E0(I)Z
    move-result p1
    return-void
  :L0
  .line 3
    iget-object v0, p0, Landroidx/fragment/app/q;->c:Ljava/util/HashMap;
    iget-object v2, p1, Landroidx/fragment/app/Fragment;->g:Ljava/lang/String;
    invoke-virtual { v0, v2 }, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :L1
    return-void
  :L1
  .line 4
    iget-object v0, p0, Landroidx/fragment/app/q;->c:Ljava/util/HashMap;
    iget-object v2, p1, Landroidx/fragment/app/Fragment;->g:Ljava/lang/String;
    invoke-virtual { v0, v2, p1 }, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
  .line 5
    invoke-static { v1 }, Landroidx/fragment/app/n;->E0(I)Z
    move-result v0
    if-eqz v0, :L2
  .line 6
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "Updating retained Fragments: Added "
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0, p1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
  :L2
    return-void
.end method

.method j(Landroidx/fragment/app/Fragment;)V
  .registers 4
    const/4 v0, 3
  .line 1
    invoke-static { v0 }, Landroidx/fragment/app/n;->E0(I)Z
    move-result v0
    if-eqz v0, :L0
  .line 2
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "Clearing non-config state for "
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0, p1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
  :L0
  .line 3
    iget-object v0, p0, Landroidx/fragment/app/q;->d:Ljava/util/HashMap;
    iget-object v1, p1, Landroidx/fragment/app/Fragment;->g:Ljava/lang/String;
    invoke-virtual { v0, v1 }, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Landroidx/fragment/app/q;
    if-eqz v0, :L1
  .line 4
    invoke-virtual { v0 }, Landroidx/fragment/app/q;->g()V
  .line 5
    iget-object v0, p0, Landroidx/fragment/app/q;->d:Ljava/util/HashMap;
    iget-object v1, p1, Landroidx/fragment/app/Fragment;->g:Ljava/lang/String;
    invoke-virtual { v0, v1 }, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
  :L1
  .line 6
    iget-object v0, p0, Landroidx/fragment/app/q;->e:Ljava/util/HashMap;
    iget-object v1, p1, Landroidx/fragment/app/Fragment;->g:Ljava/lang/String;
    invoke-virtual { v0, v1 }, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Landroidx/lifecycle/x;
    if-eqz v0, :L2
  .line 7
    invoke-virtual { v0 }, Landroidx/lifecycle/x;->a()V
  .line 8
    iget-object v0, p0, Landroidx/fragment/app/q;->e:Ljava/util/HashMap;
    iget-object p1, p1, Landroidx/fragment/app/Fragment;->g:Ljava/lang/String;
    invoke-virtual { v0, p1 }, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
  :L2
    return-void
.end method

.method k(Ljava/lang/String;)Landroidx/fragment/app/Fragment;
  .registers 3
  .line 1
    iget-object v0, p0, Landroidx/fragment/app/q;->c:Ljava/util/HashMap;
    invoke-virtual { v0, p1 }, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object p1
    check-cast p1, Landroidx/fragment/app/Fragment;
    return-object p1
.end method

.method l(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/q;
  .registers 4
  .line 1
    iget-object v0, p0, Landroidx/fragment/app/q;->d:Ljava/util/HashMap;
    iget-object v1, p1, Landroidx/fragment/app/Fragment;->g:Ljava/lang/String;
    invoke-virtual { v0, v1 }, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Landroidx/fragment/app/q;
    if-nez v0, :L0
  .line 2
    new-instance v0, Landroidx/fragment/app/q;
    iget-boolean v1, p0, Landroidx/fragment/app/q;->f:Z
    invoke-direct { v0, v1 }, Landroidx/fragment/app/q;-><init>(Z)V
  .line 3
    iget-object v1, p0, Landroidx/fragment/app/q;->d:Ljava/util/HashMap;
    iget-object p1, p1, Landroidx/fragment/app/Fragment;->g:Ljava/lang/String;
    invoke-virtual { v1, p1, v0 }, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
  :L0
    return-object v0
.end method

.method n()Ljava/util/Collection;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "()",
      "Ljava/util/Collection<",
      "Landroidx/fragment/app/Fragment;",
      ">;"
    }
  .end annotation
  .registers 3
  .line 1
    new-instance v0, Ljava/util/ArrayList;
    iget-object v1, p0, Landroidx/fragment/app/q;->c:Ljava/util/HashMap;
    invoke-virtual { v1 }, Ljava/util/HashMap;->values()Ljava/util/Collection;
    move-result-object v1
    invoke-direct { v0, v1 }, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    return-object v0
.end method

.method o(Landroidx/fragment/app/Fragment;)Landroidx/lifecycle/x;
  .registers 4
  .line 1
    iget-object v0, p0, Landroidx/fragment/app/q;->e:Ljava/util/HashMap;
    iget-object v1, p1, Landroidx/fragment/app/Fragment;->g:Ljava/lang/String;
    invoke-virtual { v0, v1 }, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Landroidx/lifecycle/x;
    if-nez v0, :L0
  .line 2
    new-instance v0, Landroidx/lifecycle/x;
    invoke-direct { v0 }, Landroidx/lifecycle/x;-><init>()V
  .line 3
    iget-object v1, p0, Landroidx/fragment/app/q;->e:Ljava/util/HashMap;
    iget-object p1, p1, Landroidx/fragment/app/Fragment;->g:Ljava/lang/String;
    invoke-virtual { v1, p1, v0 }, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
  :L0
    return-object v0
.end method

.method p()Z
  .registers 2
  .line 1
    iget-boolean v0, p0, Landroidx/fragment/app/q;->g:Z
    return v0
.end method

.method q(Landroidx/fragment/app/Fragment;)V
  .registers 5
  .line 1
    iget-boolean v0, p0, Landroidx/fragment/app/q;->i:Z
    const/4 v1, 2
    if-eqz v0, :L0
  .line 2
    invoke-static { v1 }, Landroidx/fragment/app/n;->E0(I)Z
    move-result p1
    return-void
  :L0
  .line 3
    iget-object v0, p0, Landroidx/fragment/app/q;->c:Ljava/util/HashMap;
    iget-object v2, p1, Landroidx/fragment/app/Fragment;->g:Ljava/lang/String;
    invoke-virtual { v0, v2 }, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object v0
    if-eqz v0, :L1
    const/4 v0, 1
    goto :L2
  :L1
    const/4 v0, 0
  :L2
    if-eqz v0, :L3
  .line 4
    invoke-static { v1 }, Landroidx/fragment/app/n;->E0(I)Z
    move-result v0
    if-eqz v0, :L3
  .line 5
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "Updating retained Fragments: Removed "
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0, p1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
  :L3
    return-void
.end method

.method r(Z)V
  .registers 2
  .line 1
    iput-boolean p1, p0, Landroidx/fragment/app/q;->i:Z
    return-void
.end method

.method s(Landroidx/fragment/app/Fragment;)Z
  .registers 3
  .line 1
    iget-object v0, p0, Landroidx/fragment/app/q;->c:Ljava/util/HashMap;
    iget-object p1, p1, Landroidx/fragment/app/Fragment;->g:Ljava/lang/String;
    invoke-virtual { v0, p1 }, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z
    move-result p1
    const/4 v0, 1
    if-nez p1, :L0
    return v0
  :L0
  .line 2
    iget-boolean p1, p0, Landroidx/fragment/app/q;->f:Z
    if-eqz p1, :L1
  .line 3
    iget-boolean p1, p0, Landroidx/fragment/app/q;->g:Z
    return p1
  :L1
  .line 4
    iget-boolean p1, p0, Landroidx/fragment/app/q;->h:Z
    xor-int/2addr p1, v0
    return p1
.end method

.method public toString()Ljava/lang/String;
  .registers 5
  .line 1
    new-instance v0, Ljava/lang/StringBuilder;
    const-string v1, "FragmentManagerViewModel{"
    invoke-direct { v0, v1 }, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
  .line 2
    invoke-static { p0 }, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I
    move-result v1
    invoke-static { v1 }, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;
    move-result-object v1
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string v1, "} Fragments ("
  .line 3
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
  .line 4
    iget-object v1, p0, Landroidx/fragment/app/q;->c:Ljava/util/HashMap;
    invoke-virtual { v1 }, Ljava/util/HashMap;->values()Ljava/util/Collection;
    move-result-object v1
    invoke-interface { v1 }, Ljava/util/Collection;->iterator()Ljava/util/Iterator;
    move-result-object v1
  :L0
  .line 5
    invoke-interface { v1 }, Ljava/util/Iterator;->hasNext()Z
    move-result v2
    const-string v3, ", "
    if-eqz v2, :L1
  .line 6
    invoke-interface { v1 }, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object v2
    invoke-virtual { v0, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
  .line 7
    invoke-interface { v1 }, Ljava/util/Iterator;->hasNext()Z
    move-result v2
    if-eqz v2, :L0
  .line 8
    invoke-virtual { v0, v3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    goto :L0
  :L1
    const-string v1, ") Child Non Config ("
  .line 9
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
  .line 10
    iget-object v1, p0, Landroidx/fragment/app/q;->d:Ljava/util/HashMap;
    invoke-virtual { v1 }, Ljava/util/HashMap;->keySet()Ljava/util/Set;
    move-result-object v1
    invoke-interface { v1 }, Ljava/util/Set;->iterator()Ljava/util/Iterator;
    move-result-object v1
  :L2
  .line 11
    invoke-interface { v1 }, Ljava/util/Iterator;->hasNext()Z
    move-result v2
    if-eqz v2, :L3
  .line 12
    invoke-interface { v1 }, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object v2
    check-cast v2, Ljava/lang/String;
    invoke-virtual { v0, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
  .line 13
    invoke-interface { v1 }, Ljava/util/Iterator;->hasNext()Z
    move-result v2
    if-eqz v2, :L2
  .line 14
    invoke-virtual { v0, v3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    goto :L2
  :L3
    const-string v1, ") ViewModelStores ("
  .line 15
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
  .line 16
    iget-object v1, p0, Landroidx/fragment/app/q;->e:Ljava/util/HashMap;
    invoke-virtual { v1 }, Ljava/util/HashMap;->keySet()Ljava/util/Set;
    move-result-object v1
    invoke-interface { v1 }, Ljava/util/Set;->iterator()Ljava/util/Iterator;
    move-result-object v1
  :L4
  .line 17
    invoke-interface { v1 }, Ljava/util/Iterator;->hasNext()Z
    move-result v2
    if-eqz v2, :L5
  .line 18
    invoke-interface { v1 }, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object v2
    check-cast v2, Ljava/lang/String;
    invoke-virtual { v0, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
  .line 19
    invoke-interface { v1 }, Ljava/util/Iterator;->hasNext()Z
    move-result v2
    if-eqz v2, :L4
  .line 20
    invoke-virtual { v0, v3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    goto :L4
  :L5
    const/16 v1, 41
  .line 21
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
  .line 22
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    return-object v0
.end method
