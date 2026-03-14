.class public final Landroidx/lifecycle/t;
.super Ljava/lang/Object;
.source "SourceFile"

.field private final static e:[Ljava/lang/Class;

.field final a:Ljava/util/Map;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "Ljava/util/Map<",
      "Ljava/lang/String;",
      "Ljava/lang/Object;",
      ">;"
    }
  .end annotation
.end field

.field final b:Ljava/util/Map;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "Ljava/util/Map<",
      "Ljava/lang/String;",
      "Landroidx/savedstate/SavedStateRegistry$b;",
      ">;"
    }
  .end annotation
.end field

.field private final c:Ljava/util/Map;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "Ljava/util/Map<",
      "Ljava/lang/String;",
      "Ljava/lang/Object<",
      "*>;>;"
    }
  .end annotation
.end field

.field private final d:Landroidx/savedstate/SavedStateRegistry$b;

.method static constructor <clinit>()V
  .registers 4
    const/16 v0, 29
    new-array v0, v0, [Ljava/lang/Class;
  .line 1
    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;
    const/4 v2, 0
    aput-object v1, v0, v2
    const/4 v1, 1
    const-class v2, [Z
    aput-object v2, v0, v1
    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;
    const/4 v2, 2
    aput-object v1, v0, v2
    const/4 v1, 3
    const-class v2, [D
    aput-object v2, v0, v1
    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;
    const/4 v2, 4
    aput-object v1, v0, v2
    const/4 v1, 5
    const-class v2, [I
    aput-object v2, v0, v1
    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;
    const/4 v2, 6
    aput-object v1, v0, v2
    const/4 v1, 7
    const-class v2, [J
    aput-object v2, v0, v1
    const/16 v1, 8
    const-class v2, Ljava/lang/String;
    aput-object v2, v0, v1
    const/16 v1, 9
    const-class v2, [Ljava/lang/String;
    aput-object v2, v0, v1
    const/16 v1, 10
    const-class v2, Landroid/os/Binder;
    aput-object v2, v0, v1
    const/16 v1, 11
    const-class v2, Landroid/os/Bundle;
    aput-object v2, v0, v1
    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;
    const/16 v2, 12
    aput-object v1, v0, v2
    const/16 v1, 13
    const-class v2, [B
    aput-object v2, v0, v1
    sget-object v1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;
    const/16 v2, 14
    aput-object v1, v0, v2
    const/16 v1, 15
    const-class v2, [C
    aput-object v2, v0, v1
    const/16 v1, 16
    const-class v2, Ljava/lang/CharSequence;
    aput-object v2, v0, v1
    const/16 v1, 17
    const-class v2, [Ljava/lang/CharSequence;
    aput-object v2, v0, v1
    const/16 v1, 18
    const-class v2, Ljava/util/ArrayList;
    aput-object v2, v0, v1
    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;
    const/16 v2, 19
    aput-object v1, v0, v2
    const/16 v1, 20
    const-class v2, [F
    aput-object v2, v0, v1
    const-class v1, Landroid/os/Parcelable;
    const/16 v2, 21
    aput-object v1, v0, v2
    const/16 v1, 22
    const-class v3, [Landroid/os/Parcelable;
    aput-object v3, v0, v1
    const/16 v1, 23
    const-class v3, Ljava/io/Serializable;
    aput-object v3, v0, v1
    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;
    const/16 v3, 24
    aput-object v1, v0, v3
    const/16 v1, 25
    const-class v3, [S
    aput-object v3, v0, v1
    const/16 v1, 26
    const-class v3, Landroid/util/SparseArray;
    aput-object v3, v0, v1
  .line 2
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I
    if-lt v1, v2, :L0
    const-class v1, Landroid/util/Size;
    goto :L1
  :L0
    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;
  :L1
    const/16 v3, 27
    aput-object v1, v0, v3
    const/16 v1, 28
  .line 3
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I
    if-lt v3, v2, :L2
    const-class v2, Landroid/util/SizeF;
    goto :L3
  :L2
    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;
  :L3
    aput-object v2, v0, v1
    sput-object v0, Landroidx/lifecycle/t;->e:[Ljava/lang/Class;
    return-void
.end method

.method public constructor <init>()V
  .registers 2
  .line 6
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
  .line 7
    new-instance v0, Ljava/util/HashMap;
    invoke-direct { v0 }, Ljava/util/HashMap;-><init>()V
    iput-object v0, p0, Landroidx/lifecycle/t;->b:Ljava/util/Map;
  .line 8
    new-instance v0, Ljava/util/HashMap;
    invoke-direct { v0 }, Ljava/util/HashMap;-><init>()V
    iput-object v0, p0, Landroidx/lifecycle/t;->c:Ljava/util/Map;
  .line 9
    new-instance v0, Landroidx/lifecycle/t$a;
    invoke-direct { v0, p0 }, Landroidx/lifecycle/t$a;-><init>(Landroidx/lifecycle/t;)V
    iput-object v0, p0, Landroidx/lifecycle/t;->d:Landroidx/savedstate/SavedStateRegistry$b;
  .line 10
    new-instance v0, Ljava/util/HashMap;
    invoke-direct { v0 }, Ljava/util/HashMap;-><init>()V
    iput-object v0, p0, Landroidx/lifecycle/t;->a:Ljava/util/Map;
    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(",
      "Ljava/util/Map<",
      "Ljava/lang/String;",
      "Ljava/lang/Object;",
      ">;)V"
    }
  .end annotation
  .registers 3
  .line 1
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
  .line 2
    new-instance v0, Ljava/util/HashMap;
    invoke-direct { v0 }, Ljava/util/HashMap;-><init>()V
    iput-object v0, p0, Landroidx/lifecycle/t;->b:Ljava/util/Map;
  .line 3
    new-instance v0, Ljava/util/HashMap;
    invoke-direct { v0 }, Ljava/util/HashMap;-><init>()V
    iput-object v0, p0, Landroidx/lifecycle/t;->c:Ljava/util/Map;
  .line 4
    new-instance v0, Landroidx/lifecycle/t$a;
    invoke-direct { v0, p0 }, Landroidx/lifecycle/t$a;-><init>(Landroidx/lifecycle/t;)V
    iput-object v0, p0, Landroidx/lifecycle/t;->d:Landroidx/savedstate/SavedStateRegistry$b;
  .line 5
    new-instance v0, Ljava/util/HashMap;
    invoke-direct { v0, p1 }, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V
    iput-object v0, p0, Landroidx/lifecycle/t;->a:Ljava/util/Map;
    return-void
.end method

.method static a(Landroid/os/Bundle;Landroid/os/Bundle;)Landroidx/lifecycle/t;
  .registers 6
    if-nez p0, :L0
    if-nez p1, :L0
  .line 1
    new-instance p0, Landroidx/lifecycle/t;
    invoke-direct { p0 }, Landroidx/lifecycle/t;-><init>()V
    return-object p0
  :L0
  .line 2
    new-instance v0, Ljava/util/HashMap;
    invoke-direct { v0 }, Ljava/util/HashMap;-><init>()V
    if-eqz p1, :L2
  .line 3
    invoke-virtual { p1 }, Landroid/os/Bundle;->keySet()Ljava/util/Set;
    move-result-object v1
    invoke-interface { v1 }, Ljava/util/Set;->iterator()Ljava/util/Iterator;
    move-result-object v1
  :L1
    invoke-interface { v1 }, Ljava/util/Iterator;->hasNext()Z
    move-result v2
    if-eqz v2, :L2
    invoke-interface { v1 }, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object v2
    check-cast v2, Ljava/lang/String;
  .line 4
    invoke-virtual { p1, v2 }, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;
    move-result-object v3
    invoke-interface { v0, v2, v3 }, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    goto :L1
  :L2
    if-nez p0, :L3
  .line 5
    new-instance p0, Landroidx/lifecycle/t;
    invoke-direct { p0, v0 }, Landroidx/lifecycle/t;-><init>(Ljava/util/Map;)V
    return-object p0
  :L3
    const-string p1, "keys"
  .line 6
    invoke-virtual { p0, p1 }, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;
    move-result-object p1
    const-string v1, "values"
  .line 7
    invoke-virtual { p0, v1 }, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;
    move-result-object p0
    if-eqz p1, :L6
    if-eqz p0, :L6
  .line 8
    invoke-virtual { p1 }, Ljava/util/ArrayList;->size()I
    move-result v1
    invoke-virtual { p0 }, Ljava/util/ArrayList;->size()I
    move-result v2
    if-ne v1, v2, :L6
    const/4 v1, 0
  :L4
  .line 9
    invoke-virtual { p1 }, Ljava/util/ArrayList;->size()I
    move-result v2
    if-ge v1, v2, :L5
  .line 10
    invoke-virtual { p1, v1 }, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
    move-result-object v2
    check-cast v2, Ljava/lang/String;
    invoke-virtual { p0, v1 }, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
    move-result-object v3
    invoke-interface { v0, v2, v3 }, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    add-int/lit8 v1, v1, 1
    goto :L4
  :L5
  .line 11
    new-instance p0, Landroidx/lifecycle/t;
    invoke-direct { p0, v0 }, Landroidx/lifecycle/t;-><init>(Ljava/util/Map;)V
    return-object p0
  :L6
  .line 12
    new-instance p0, Ljava/lang/IllegalStateException;
    const-string p1, "Invalid bundle passed as restored state"
    invoke-direct { p0, p1 }, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
    goto :L8
  :L7
    throw p0
  :L8
    goto :L7
.end method

.method private static d(Ljava/lang/Object;)V
  .registers 5
    if-nez p0, :L0
    return-void
  :L0
  .line 1
    sget-object v0, Landroidx/lifecycle/t;->e:[Ljava/lang/Class;
    array-length v1, v0
    const/4 v2, 0
  :L1
    if-ge v2, v1, :L3
    aget-object v3, v0, v2
  .line 2
    invoke-virtual { v3, p0 }, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z
    move-result v3
    if-eqz v3, :L2
    return-void
  :L2
    add-int/lit8 v2, v2, 1
    goto :L1
  :L3
  .line 3
    new-instance v0, Ljava/lang/IllegalArgumentException;
    new-instance v1, Ljava/lang/StringBuilder;
    invoke-direct { v1 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v2, "Can't put value with type "
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { p0 }, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    move-result-object p0
    invoke-virtual { v1, p0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    const-string p0, " into saved state"
    invoke-virtual { v1, p0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p0
    invoke-direct { v0, p0 }, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
    goto :L5
  :L4
    throw v0
  :L5
    goto :L4
.end method

.method b()Landroidx/savedstate/SavedStateRegistry$b;
  .registers 2
  .line 1
    iget-object v0, p0, Landroidx/lifecycle/t;->d:Landroidx/savedstate/SavedStateRegistry$b;
    return-object v0
.end method

.method public c(Ljava/lang/String;Ljava/lang/Object;)V
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "<T:",
      "Ljava/lang/Object;",
      ">(",
      "Ljava/lang/String;",
      "TT;)V"
    }
  .end annotation
  .registers 4
  .line 1
    invoke-static { p2 }, Landroidx/lifecycle/t;->d(Ljava/lang/Object;)V
  .line 2
    iget-object v0, p0, Landroidx/lifecycle/t;->c:Ljava/util/Map;
    invoke-interface { v0, p1 }, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Landroidx/lifecycle/o;
    if-eqz v0, :L0
  .line 3
    invoke-virtual { v0, p2 }, Landroidx/lifecycle/o;->k(Ljava/lang/Object;)V
    goto :L1
  :L0
  .line 4
    iget-object v0, p0, Landroidx/lifecycle/t;->a:Ljava/util/Map;
    invoke-interface { v0, p1, p2 }, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
  :L1
    return-void
.end method
