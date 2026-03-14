.class Landroidx/lifecycle/b$a;
.super Ljava/lang/Object;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Landroidx/lifecycle/b;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 8
  name = "a"
.end annotation

.field final a:Ljava/util/Map;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "Ljava/util/Map<",
      "Landroidx/lifecycle/f$b;",
      "Ljava/util/List<",
      "Landroidx/lifecycle/b$b;",
      ">;>;"
    }
  .end annotation
.end field

.field final b:Ljava/util/Map;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "Ljava/util/Map<",
      "Landroidx/lifecycle/b$b;",
      "Landroidx/lifecycle/f$b;",
      ">;"
    }
  .end annotation
.end field

.method constructor <init>(Ljava/util/Map;)V
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(",
      "Ljava/util/Map<",
      "Landroidx/lifecycle/b$b;",
      "Landroidx/lifecycle/f$b;",
      ">;)V"
    }
  .end annotation
  .registers 6
  .line 1
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
  .line 2
    iput-object p1, p0, Landroidx/lifecycle/b$a;->b:Ljava/util/Map;
  .line 3
    new-instance v0, Ljava/util/HashMap;
    invoke-direct { v0 }, Ljava/util/HashMap;-><init>()V
    iput-object v0, p0, Landroidx/lifecycle/b$a;->a:Ljava/util/Map;
  .line 4
    invoke-interface { p1 }, Ljava/util/Map;->entrySet()Ljava/util/Set;
    move-result-object p1
    invoke-interface { p1 }, Ljava/util/Set;->iterator()Ljava/util/Iterator;
    move-result-object p1
  :L0
    invoke-interface { p1 }, Ljava/util/Iterator;->hasNext()Z
    move-result v0
    if-eqz v0, :L2
    invoke-interface { p1 }, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Ljava/util/Map$Entry;
  .line 5
    invoke-interface { v0 }, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;
    move-result-object v1
    check-cast v1, Landroidx/lifecycle/f$b;
  .line 6
    iget-object v2, p0, Landroidx/lifecycle/b$a;->a:Ljava/util/Map;
    invoke-interface { v2, v1 }, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object v2
    check-cast v2, Ljava/util/List;
    if-nez v2, :L1
  .line 7
    new-instance v2, Ljava/util/ArrayList;
    invoke-direct { v2 }, Ljava/util/ArrayList;-><init>()V
  .line 8
    iget-object v3, p0, Landroidx/lifecycle/b$a;->a:Ljava/util/Map;
    invoke-interface { v3, v1, v2 }, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
  :L1
  .line 9
    invoke-interface { v0 }, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;
    move-result-object v0
    invoke-interface { v2, v0 }, Ljava/util/List;->add(Ljava/lang/Object;)Z
    goto :L0
  :L2
    return-void
.end method

.method private static b(Ljava/util/List;Landroidx/lifecycle/j;Landroidx/lifecycle/f$b;Ljava/lang/Object;)V
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(",
      "Ljava/util/List<",
      "Landroidx/lifecycle/b$b;",
      ">;",
      "Landroidx/lifecycle/j;",
      "Landroidx/lifecycle/f$b;",
      "Ljava/lang/Object;",
      ")V"
    }
  .end annotation
  .registers 6
    if-eqz p0, :L1
  .line 1
    invoke-interface { p0 }, Ljava/util/List;->size()I
    move-result v0
    add-int/lit8 v0, v0, -1
  :L0
    if-ltz v0, :L1
  .line 2
    invoke-interface { p0, v0 }, Ljava/util/List;->get(I)Ljava/lang/Object;
    move-result-object v1
    check-cast v1, Landroidx/lifecycle/b$b;
    invoke-virtual { v1, p1, p2, p3 }, Landroidx/lifecycle/b$b;->a(Landroidx/lifecycle/j;Landroidx/lifecycle/f$b;Ljava/lang/Object;)V
    add-int/lit8 v0, v0, -1
    goto :L0
  :L1
    return-void
.end method

.method a(Landroidx/lifecycle/j;Landroidx/lifecycle/f$b;Ljava/lang/Object;)V
  .registers 6
  .line 1
    iget-object v0, p0, Landroidx/lifecycle/b$a;->a:Ljava/util/Map;
    invoke-interface { v0, p2 }, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Ljava/util/List;
    invoke-static { v0, p1, p2, p3 }, Landroidx/lifecycle/b$a;->b(Ljava/util/List;Landroidx/lifecycle/j;Landroidx/lifecycle/f$b;Ljava/lang/Object;)V
  .line 2
    iget-object v0, p0, Landroidx/lifecycle/b$a;->a:Ljava/util/Map;
    sget-object v1, Landroidx/lifecycle/f$b;->ON_ANY:Landroidx/lifecycle/f$b;
    invoke-interface { v0, v1 }, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Ljava/util/List;
    invoke-static { v0, p1, p2, p3 }, Landroidx/lifecycle/b$a;->b(Ljava/util/List;Landroidx/lifecycle/j;Landroidx/lifecycle/f$b;Ljava/lang/Object;)V
    return-void
.end method
