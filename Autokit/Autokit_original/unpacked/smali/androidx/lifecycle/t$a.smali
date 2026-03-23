.class Landroidx/lifecycle/t$a;
.super Ljava/lang/Object;
.implements Landroidx/savedstate/SavedStateRegistry$b;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Landroidx/lifecycle/t;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = null
.end annotation

.field final synthetic a:Landroidx/lifecycle/t;

.method constructor <init>(Landroidx/lifecycle/t;)V
  .registers 2
  .line 1
    iput-object p1, p0, Landroidx/lifecycle/t$a;->a:Landroidx/lifecycle/t;
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public a()Landroid/os/Bundle;
  .registers 6
  .line 1
    new-instance v0, Ljava/util/HashMap;
    iget-object v1, p0, Landroidx/lifecycle/t$a;->a:Landroidx/lifecycle/t;
    iget-object v1, v1, Landroidx/lifecycle/t;->b:Ljava/util/Map;
    invoke-direct { v0, v1 }, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V
  .line 2
    invoke-interface { v0 }, Ljava/util/Map;->entrySet()Ljava/util/Set;
    move-result-object v0
    invoke-interface { v0 }, Ljava/util/Set;->iterator()Ljava/util/Iterator;
    move-result-object v0
  :L0
    invoke-interface { v0 }, Ljava/util/Iterator;->hasNext()Z
    move-result v1
    if-eqz v1, :L1
    invoke-interface { v0 }, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object v1
    check-cast v1, Ljava/util/Map$Entry;
  .line 3
    invoke-interface { v1 }, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;
    move-result-object v2
    check-cast v2, Landroidx/savedstate/SavedStateRegistry$b;
    invoke-interface { v2 }, Landroidx/savedstate/SavedStateRegistry$b;->a()Landroid/os/Bundle;
    move-result-object v2
  .line 4
    iget-object v3, p0, Landroidx/lifecycle/t$a;->a:Landroidx/lifecycle/t;
    invoke-interface { v1 }, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;
    move-result-object v1
    check-cast v1, Ljava/lang/String;
    invoke-virtual { v3, v1, v2 }, Landroidx/lifecycle/t;->c(Ljava/lang/String;Ljava/lang/Object;)V
    goto :L0
  :L1
  .line 5
    iget-object v0, p0, Landroidx/lifecycle/t$a;->a:Landroidx/lifecycle/t;
    iget-object v0, v0, Landroidx/lifecycle/t;->a:Ljava/util/Map;
    invoke-interface { v0 }, Ljava/util/Map;->keySet()Ljava/util/Set;
    move-result-object v0
  .line 6
    new-instance v1, Ljava/util/ArrayList;
    invoke-interface { v0 }, Ljava/util/Set;->size()I
    move-result v2
    invoke-direct { v1, v2 }, Ljava/util/ArrayList;-><init>(I)V
  .line 7
    new-instance v2, Ljava/util/ArrayList;
    invoke-virtual { v1 }, Ljava/util/ArrayList;->size()I
    move-result v3
    invoke-direct { v2, v3 }, Ljava/util/ArrayList;-><init>(I)V
  .line 8
    invoke-interface { v0 }, Ljava/util/Set;->iterator()Ljava/util/Iterator;
    move-result-object v0
  :L2
    invoke-interface { v0 }, Ljava/util/Iterator;->hasNext()Z
    move-result v3
    if-eqz v3, :L3
    invoke-interface { v0 }, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object v3
    check-cast v3, Ljava/lang/String;
  .line 9
    invoke-virtual { v1, v3 }, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
  .line 10
    iget-object v4, p0, Landroidx/lifecycle/t$a;->a:Landroidx/lifecycle/t;
    iget-object v4, v4, Landroidx/lifecycle/t;->a:Ljava/util/Map;
    invoke-interface { v4, v3 }, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object v3
    invoke-virtual { v2, v3 }, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    goto :L2
  :L3
  .line 11
    new-instance v0, Landroid/os/Bundle;
    invoke-direct { v0 }, Landroid/os/Bundle;-><init>()V
    const-string v3, "keys"
  .line 12
    invoke-virtual { v0, v3, v1 }, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V
    const-string v1, "values"
  .line 13
    invoke-virtual { v0, v1, v2 }, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V
    return-object v0
.end method
