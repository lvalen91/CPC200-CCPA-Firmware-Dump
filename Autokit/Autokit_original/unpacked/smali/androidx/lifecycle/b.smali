.class final Landroidx/lifecycle/b;
.super Ljava/lang/Object;
.source "SourceFile"

.annotation system Ldalvik/annotation/MemberClasses;
  value = {
    Landroidx/lifecycle/b$b;,
    Landroidx/lifecycle/b$a;
  }
.end annotation

.field static c:Landroidx/lifecycle/b;

.field private final a:Ljava/util/Map;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "Ljava/util/Map<",
      "Ljava/lang/Class<",
      "*>;",
      "Landroidx/lifecycle/b$a;",
      ">;"
    }
  .end annotation
.end field

.field private final b:Ljava/util/Map;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "Ljava/util/Map<",
      "Ljava/lang/Class<",
      "*>;",
      "Ljava/lang/Boolean;",
      ">;"
    }
  .end annotation
.end field

.method static constructor <clinit>()V
  .registers 1
  .line 1
    new-instance v0, Landroidx/lifecycle/b;
    invoke-direct { v0 }, Landroidx/lifecycle/b;-><init>()V
    sput-object v0, Landroidx/lifecycle/b;->c:Landroidx/lifecycle/b;
    return-void
.end method

.method constructor <init>()V
  .registers 2
  .line 1
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
  .line 2
    new-instance v0, Ljava/util/HashMap;
    invoke-direct { v0 }, Ljava/util/HashMap;-><init>()V
    iput-object v0, p0, Landroidx/lifecycle/b;->a:Ljava/util/Map;
  .line 3
    new-instance v0, Ljava/util/HashMap;
    invoke-direct { v0 }, Ljava/util/HashMap;-><init>()V
    iput-object v0, p0, Landroidx/lifecycle/b;->b:Ljava/util/Map;
    return-void
.end method

.method private a(Ljava/lang/Class;[Ljava/lang/reflect/Method;)Landroidx/lifecycle/b$a;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(",
      "Ljava/lang/Class<",
      "*>;[",
      "Ljava/lang/reflect/Method;",
      ")",
      "Landroidx/lifecycle/b$a;"
    }
  .end annotation
  .registers 14
  .line 1
    invoke-virtual { p1 }, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;
    move-result-object v0
  .line 2
    new-instance v1, Ljava/util/HashMap;
    invoke-direct { v1 }, Ljava/util/HashMap;-><init>()V
    if-eqz v0, :L0
  .line 3
    invoke-virtual { p0, v0 }, Landroidx/lifecycle/b;->c(Ljava/lang/Class;)Landroidx/lifecycle/b$a;
    move-result-object v0
    if-eqz v0, :L0
  .line 4
    iget-object v0, v0, Landroidx/lifecycle/b$a;->b:Ljava/util/Map;
    invoke-interface { v1, v0 }, Ljava/util/Map;->putAll(Ljava/util/Map;)V
  :L0
  .line 5
    invoke-virtual { p1 }, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;
    move-result-object v0
  .line 6
    array-length v2, v0
    const/4 v3, 0
    const/4 v4, 0
  :L1
    if-ge v4, v2, :L4
    aget-object v5, v0, v4
  .line 7
    invoke-virtual { p0, v5 }, Landroidx/lifecycle/b;->c(Ljava/lang/Class;)Landroidx/lifecycle/b$a;
    move-result-object v5
    iget-object v5, v5, Landroidx/lifecycle/b$a;->b:Ljava/util/Map;
  .line 8
    invoke-interface { v5 }, Ljava/util/Map;->entrySet()Ljava/util/Set;
    move-result-object v5
  .line 9
    invoke-interface { v5 }, Ljava/util/Set;->iterator()Ljava/util/Iterator;
    move-result-object v5
  :L2
    invoke-interface { v5 }, Ljava/util/Iterator;->hasNext()Z
    move-result v6
    if-eqz v6, :L3
    invoke-interface { v5 }, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object v6
    check-cast v6, Ljava/util/Map$Entry;
  .line 10
    invoke-interface { v6 }, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;
    move-result-object v7
    check-cast v7, Landroidx/lifecycle/b$b;
    invoke-interface { v6 }, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;
    move-result-object v6
    check-cast v6, Landroidx/lifecycle/f$b;
    invoke-direct { p0, v1, v7, v6, p1 }, Landroidx/lifecycle/b;->e(Ljava/util/Map;Landroidx/lifecycle/b$b;Landroidx/lifecycle/f$b;Ljava/lang/Class;)V
    goto :L2
  :L3
    add-int/lit8 v4, v4, 1
    goto :L1
  :L4
    if-eqz p2, :L5
    goto :L6
  :L5
  .line 11
    invoke-direct { p0, p1 }, Landroidx/lifecycle/b;->b(Ljava/lang/Class;)[Ljava/lang/reflect/Method;
    move-result-object p2
  :L6
  .line 12
    array-length v0, p2
    const/4 v2, 0
    const/4 v4, 0
  :L7
    if-ge v2, v0, :L17
    aget-object v5, p2, v2
  .line 13
    const-class v6, Landroidx/lifecycle/q;
    invoke-virtual { v5, v6 }, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;
    move-result-object v6
    check-cast v6, Landroidx/lifecycle/q;
    const/4 v7, 1
    if-nez v6, :L8
    goto :L15
  :L8
  .line 14
    invoke-virtual { v5 }, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;
    move-result-object v4
  .line 15
    array-length v8, v4
    if-lez v8, :L10
  .line 16
    aget-object v8, v4, v3
    const-class v9, Landroidx/lifecycle/j;
    invoke-virtual { v8, v9 }, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z
    move-result v8
    if-eqz v8, :L9
    const/4 v8, 1
    goto :L11
  :L9
  .line 17
    new-instance p1, Ljava/lang/IllegalArgumentException;
    const-string p2, "invalid parameter type. Must be one and instanceof LifecycleOwner"
    invoke-direct { p1, p2 }, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
    throw p1
  :L10
    const/4 v8, 0
  :L11
  .line 18
    invoke-interface { v6 }, Landroidx/lifecycle/q;->value()Landroidx/lifecycle/f$b;
    move-result-object v6
  .line 19
    array-length v9, v4
    const/4 v10, 2
    if-le v9, v7, :L14
  .line 20
    aget-object v8, v4, v7
    const-class v9, Landroidx/lifecycle/f$b;
    invoke-virtual { v8, v9 }, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z
    move-result v8
    if-eqz v8, :L13
  .line 21
    sget-object v8, Landroidx/lifecycle/f$b;->ON_ANY:Landroidx/lifecycle/f$b;
    if-ne v6, v8, :L12
    const/4 v8, 2
    goto :L14
  :L12
  .line 22
    new-instance p1, Ljava/lang/IllegalArgumentException;
    const-string p2, "Second arg is supported only for ON_ANY value"
    invoke-direct { p1, p2 }, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
    throw p1
  :L13
  .line 23
    new-instance p1, Ljava/lang/IllegalArgumentException;
    const-string p2, "invalid parameter type. second arg must be an event"
    invoke-direct { p1, p2 }, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
    throw p1
  :L14
  .line 24
    array-length v4, v4
    if-gt v4, v10, :L16
  .line 25
    new-instance v4, Landroidx/lifecycle/b$b;
    invoke-direct { v4, v8, v5 }, Landroidx/lifecycle/b$b;-><init>(ILjava/lang/reflect/Method;)V
  .line 26
    invoke-direct { p0, v1, v4, v6, p1 }, Landroidx/lifecycle/b;->e(Ljava/util/Map;Landroidx/lifecycle/b$b;Landroidx/lifecycle/f$b;Ljava/lang/Class;)V
    const/4 v4, 1
  :L15
    add-int/lit8 v2, v2, 1
    goto :L7
  :L16
  .line 27
    new-instance p1, Ljava/lang/IllegalArgumentException;
    const-string p2, "cannot have more than 2 params"
    invoke-direct { p1, p2 }, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
    throw p1
  :L17
  .line 28
    new-instance p2, Landroidx/lifecycle/b$a;
    invoke-direct { p2, v1 }, Landroidx/lifecycle/b$a;-><init>(Ljava/util/Map;)V
  .line 29
    iget-object v0, p0, Landroidx/lifecycle/b;->a:Ljava/util/Map;
    invoke-interface { v0, p1, p2 }, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
  .line 30
    iget-object v0, p0, Landroidx/lifecycle/b;->b:Ljava/util/Map;
    invoke-static { v4 }, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    move-result-object v1
    invoke-interface { v0, p1, v1 }, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    return-object p2
.end method

.method private b(Ljava/lang/Class;)[Ljava/lang/reflect/Method;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(",
      "Ljava/lang/Class<",
      "*>;)[",
      "Ljava/lang/reflect/Method;"
    }
  .end annotation
  .catch Ljava/lang/NoClassDefFoundError; { :L0 .. :L1 } :L2
  .registers 4
  :L0
  .line 1
    invoke-virtual { p1 }, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;
    move-result-object p1
  :L1
    return-object p1
  :L2
    move-exception p1
  .line 2
    new-instance v0, Ljava/lang/IllegalArgumentException;
    const-string v1, "The observer class has some methods that use newer APIs which are not available in the current OS version. Lifecycles cannot access even other methods so you should make sure that your observer classes only access framework classes that are available in your min API level OR use lifecycle:compiler annotation processor."
    invoke-direct { v0, v1, p1 }, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    throw v0
.end method

.method private e(Ljava/util/Map;Landroidx/lifecycle/b$b;Landroidx/lifecycle/f$b;Ljava/lang/Class;)V
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(",
      "Ljava/util/Map<",
      "Landroidx/lifecycle/b$b;",
      "Landroidx/lifecycle/f$b;",
      ">;",
      "Landroidx/lifecycle/b$b;",
      "Landroidx/lifecycle/f$b;",
      "Ljava/lang/Class<",
      "*>;)V"
    }
  .end annotation
  .registers 8
  .line 1
    invoke-interface { p1, p2 }, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Landroidx/lifecycle/f$b;
    if-eqz v0, :L1
    if-ne p3, v0, :L0
    goto :L1
  :L0
  .line 2
    iget-object p1, p2, Landroidx/lifecycle/b$b;->b:Ljava/lang/reflect/Method;
  .line 3
    new-instance p2, Ljava/lang/IllegalArgumentException;
    new-instance v1, Ljava/lang/StringBuilder;
    invoke-direct { v1 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v2, "Method "
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
  .line 4
    invoke-virtual { p1 }, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;
    move-result-object p1
    invoke-virtual { v1, p1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string p1, " in "
    invoke-virtual { v1, p1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { p4 }, Ljava/lang/Class;->getName()Ljava/lang/String;
    move-result-object p1
    invoke-virtual { v1, p1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string p1, " already declared with different @OnLifecycleEvent value: previous value "
    invoke-virtual { v1, p1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v1, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    const-string p1, ", new value "
    invoke-virtual { v1, p1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v1, p3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    invoke-virtual { v1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p1
    invoke-direct { p2, p1 }, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
    throw p2
  :L1
    if-nez v0, :L2
  .line 5
    invoke-interface { p1, p2, p3 }, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
  :L2
    return-void
.end method

.method c(Ljava/lang/Class;)Landroidx/lifecycle/b$a;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(",
      "Ljava/lang/Class<",
      "*>;)",
      "Landroidx/lifecycle/b$a;"
    }
  .end annotation
  .registers 3
  .line 1
    iget-object v0, p0, Landroidx/lifecycle/b;->a:Ljava/util/Map;
    invoke-interface { v0, p1 }, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Landroidx/lifecycle/b$a;
    if-eqz v0, :L0
    return-object v0
  :L0
    const/4 v0, 0
  .line 2
    invoke-direct { p0, p1, v0 }, Landroidx/lifecycle/b;->a(Ljava/lang/Class;[Ljava/lang/reflect/Method;)Landroidx/lifecycle/b$a;
    move-result-object p1
    return-object p1
.end method

.method d(Ljava/lang/Class;)Z
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(",
      "Ljava/lang/Class<",
      "*>;)Z"
    }
  .end annotation
  .registers 8
  .line 1
    iget-object v0, p0, Landroidx/lifecycle/b;->b:Ljava/util/Map;
    invoke-interface { v0, p1 }, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Ljava/lang/Boolean;
    if-eqz v0, :L0
  .line 2
    invoke-virtual { v0 }, Ljava/lang/Boolean;->booleanValue()Z
    move-result p1
    return p1
  :L0
  .line 3
    invoke-direct { p0, p1 }, Landroidx/lifecycle/b;->b(Ljava/lang/Class;)[Ljava/lang/reflect/Method;
    move-result-object v0
  .line 4
    array-length v1, v0
    const/4 v2, 0
    const/4 v3, 0
  :L1
    if-ge v3, v1, :L3
    aget-object v4, v0, v3
  .line 5
    const-class v5, Landroidx/lifecycle/q;
    invoke-virtual { v4, v5 }, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;
    move-result-object v4
    check-cast v4, Landroidx/lifecycle/q;
    if-eqz v4, :L2
  .line 6
    invoke-direct { p0, p1, v0 }, Landroidx/lifecycle/b;->a(Ljava/lang/Class;[Ljava/lang/reflect/Method;)Landroidx/lifecycle/b$a;
    const/4 p1, 1
    return p1
  :L2
    add-int/lit8 v3, v3, 1
    goto :L1
  :L3
  .line 7
    iget-object v0, p0, Landroidx/lifecycle/b;->b:Ljava/util/Map;
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;
    invoke-interface { v0, p1, v1 }, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    return v2
.end method
