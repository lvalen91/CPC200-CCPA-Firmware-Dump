.class Landroidx/fragment/app/n$b;
.super Ljava/lang/Object;
.implements Landroidx/activity/result/b;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingMethod;
  value = Landroidx/fragment/app/n;->j(Landroidx/fragment/app/k;Landroidx/fragment/app/g;Landroidx/fragment/app/Fragment;)V
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = null
.end annotation
.annotation system Ldalvik/annotation/Signature;
  value = {
    "Ljava/lang/Object;",
    "Landroidx/activity/result/b<",
    "Ljava/util/Map<",
    "Ljava/lang/String;",
    "Ljava/lang/Boolean;",
    ">;>;"
  }
.end annotation

.field final synthetic a:Landroidx/fragment/app/n;

.method constructor <init>(Landroidx/fragment/app/n;)V
  .registers 2
  .line 1
    iput-object p1, p0, Landroidx/fragment/app/n$b;->a:Landroidx/fragment/app/n;
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
  .annotation build Landroid/annotation/SuppressLint;
    value = {
      "SyntheticAccessor"
    }
  .end annotation
  .registers 2
  .line 1
    check-cast p1, Ljava/util/Map;
    invoke-virtual { p0, p1 }, Landroidx/fragment/app/n$b;->b(Ljava/util/Map;)V
    return-void
.end method

.method public b(Ljava/util/Map;)V
  .annotation build Landroid/annotation/SuppressLint;
    value = {
      "SyntheticAccessor"
    }
  .end annotation
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(",
      "Ljava/util/Map<",
      "Ljava/lang/String;",
      "Ljava/lang/Boolean;",
      ">;)V"
    }
  .end annotation
  .registers 7
  .line 1
    invoke-interface { p1 }, Ljava/util/Map;->keySet()Ljava/util/Set;
    move-result-object v0
    const/4 v1, 0
    new-array v2, v1, [Ljava/lang/String;
    invoke-interface { v0, v2 }, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    move-result-object v0
    check-cast v0, [Ljava/lang/String;
  .line 2
    new-instance v2, Ljava/util/ArrayList;
    invoke-interface { p1 }, Ljava/util/Map;->values()Ljava/util/Collection;
    move-result-object p1
    invoke-direct { v2, p1 }, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
  .line 3
    invoke-virtual { v2 }, Ljava/util/ArrayList;->size()I
    move-result p1
    new-array p1, p1, [I
    const/4 v3, 0
  :L0
  .line 4
    invoke-virtual { v2 }, Ljava/util/ArrayList;->size()I
    move-result v4
    if-ge v3, v4, :L3
  .line 5
    invoke-virtual { v2, v3 }, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
    move-result-object v4
    check-cast v4, Ljava/lang/Boolean;
    invoke-virtual { v4 }, Ljava/lang/Boolean;->booleanValue()Z
    move-result v4
    if-eqz v4, :L1
    const/4 v4, 0
    goto :L2
  :L1
    const/4 v4, -1
  :L2
  .line 6
    aput v4, p1, v3
    add-int/lit8 v3, v3, 1
    goto :L0
  :L3
  .line 7
    iget-object v1, p0, Landroidx/fragment/app/n$b;->a:Landroidx/fragment/app/n;
    iget-object v1, v1, Landroidx/fragment/app/n;->C:Ljava/util/ArrayDeque;
    invoke-virtual { v1 }, Ljava/util/ArrayDeque;->pollFirst()Ljava/lang/Object;
    move-result-object v1
    check-cast v1, Landroidx/fragment/app/n$m;
    if-nez v1, :L4
  .line 8
    new-instance p1, Ljava/lang/StringBuilder;
    invoke-direct { p1 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v0, "No permissions were requested for "
    invoke-virtual { p1, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { p1, p0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    invoke-virtual { p1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    return-void
  :L4
  .line 9
    iget-object v2, v1, Landroidx/fragment/app/n$m;->b:Ljava/lang/String;
  .line 10
    iget v1, v1, Landroidx/fragment/app/n$m;->c:I
  .line 11
    iget-object v3, p0, Landroidx/fragment/app/n$b;->a:Landroidx/fragment/app/n;
    invoke-static { v3 }, Landroidx/fragment/app/n;->c(Landroidx/fragment/app/n;)Landroidx/fragment/app/v;
    move-result-object v3
    invoke-virtual { v3, v2 }, Landroidx/fragment/app/v;->i(Ljava/lang/String;)Landroidx/fragment/app/Fragment;
    move-result-object v3
    if-nez v3, :L5
  .line 12
    new-instance p1, Ljava/lang/StringBuilder;
    invoke-direct { p1 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v0, "Permission request result delivered for unknown Fragment "
    invoke-virtual { p1, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { p1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { p1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    return-void
  :L5
  .line 13
    invoke-virtual { v3, v1, v0, p1 }, Landroidx/fragment/app/Fragment;->b1(I[Ljava/lang/String;[I)V
    return-void
.end method
