.class public final Landroidx/lifecycle/u;
.super Landroidx/lifecycle/w$c;
.source "SourceFile"

.field private final static f:[Ljava/lang/Class;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "[",
      "Ljava/lang/Class<",
      "*>;"
    }
  .end annotation
.end field

.field private final static g:[Ljava/lang/Class;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "[",
      "Ljava/lang/Class<",
      "*>;"
    }
  .end annotation
.end field

.field private final a:Landroid/app/Application;

.field private final b:Landroidx/lifecycle/w$b;

.field private final c:Landroid/os/Bundle;

.field private final d:Landroidx/lifecycle/f;

.field private final e:Landroidx/savedstate/SavedStateRegistry;

.method static constructor <clinit>()V
  .registers 4
  .line 1
    const-class v0, Landroidx/lifecycle/t;
    const/4 v1, 2
    new-array v1, v1, [Ljava/lang/Class;
    const-class v2, Landroid/app/Application;
    const/4 v3, 0
    aput-object v2, v1, v3
    const/4 v2, 1
    aput-object v0, v1, v2
    sput-object v1, Landroidx/lifecycle/u;->f:[Ljava/lang/Class;
    new-array v1, v2, [Ljava/lang/Class;
    aput-object v0, v1, v3
  .line 2
    sput-object v1, Landroidx/lifecycle/u;->g:[Ljava/lang/Class;
    return-void
.end method

.method public constructor <init>(Landroid/app/Application;Landroidx/savedstate/c;Landroid/os/Bundle;)V
  .annotation build Landroid/annotation/SuppressLint;
    value = {
      "LambdaLast"
    }
  .end annotation
  .registers 5
  .line 1
    invoke-direct { p0 }, Landroidx/lifecycle/w$c;-><init>()V
  .line 2
    invoke-interface { p2 }, Landroidx/savedstate/c;->getSavedStateRegistry()Landroidx/savedstate/SavedStateRegistry;
    move-result-object v0
    iput-object v0, p0, Landroidx/lifecycle/u;->e:Landroidx/savedstate/SavedStateRegistry;
  .line 3
    invoke-interface { p2 }, Landroidx/lifecycle/j;->getLifecycle()Landroidx/lifecycle/f;
    move-result-object p2
    iput-object p2, p0, Landroidx/lifecycle/u;->d:Landroidx/lifecycle/f;
  .line 4
    iput-object p3, p0, Landroidx/lifecycle/u;->c:Landroid/os/Bundle;
  .line 5
    iput-object p1, p0, Landroidx/lifecycle/u;->a:Landroid/app/Application;
    if-eqz p1, :L0
  .line 6
    invoke-static { p1 }, Landroidx/lifecycle/w$a;->c(Landroid/app/Application;)Landroidx/lifecycle/w$a;
    move-result-object p1
    goto :L1
  :L0
  .line 7
    invoke-static { }, Landroidx/lifecycle/w$d;->b()Landroidx/lifecycle/w$d;
    move-result-object p1
  :L1
    iput-object p1, p0, Landroidx/lifecycle/u;->b:Landroidx/lifecycle/w$b;
    return-void
.end method

.method private static d(Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "<T:",
      "Ljava/lang/Object;",
      ">(",
      "Ljava/lang/Class<",
      "TT;>;[",
      "Ljava/lang/Class<",
      "*>;)",
      "Ljava/lang/reflect/Constructor<",
      "TT;>;"
    }
  .end annotation
  .registers 6
  .line 1
    invoke-virtual { p0 }, Ljava/lang/Class;->getConstructors()[Ljava/lang/reflect/Constructor;
    move-result-object p0
    array-length v0, p0
    const/4 v1, 0
  :L0
    if-ge v1, v0, :L2
    aget-object v2, p0, v1
  .line 2
    invoke-virtual { v2 }, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;
    move-result-object v3
  .line 3
    invoke-static { p1, v3 }, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z
    move-result v3
    if-eqz v3, :L1
    return-object v2
  :L1
    add-int/lit8 v1, v1, 1
    goto :L0
  :L2
    const/4 p0, 0
    return-object p0
.end method

.method public a(Ljava/lang/Class;)Landroidx/lifecycle/v;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "<T:",
      "Landroidx/lifecycle/v;",
      ">(",
      "Ljava/lang/Class<",
      "TT;>;)TT;"
    }
  .end annotation
  .registers 3
  .line 1
    invoke-virtual { p1 }, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;
    move-result-object v0
    if-eqz v0, :L0
  .line 2
    invoke-virtual { p0, v0, p1 }, Landroidx/lifecycle/u;->c(Ljava/lang/String;Ljava/lang/Class;)Landroidx/lifecycle/v;
    move-result-object p1
    return-object p1
  :L0
  .line 3
    new-instance p1, Ljava/lang/IllegalArgumentException;
    const-string v0, "Local and anonymous classes can not be ViewModels"
    invoke-direct { p1, v0 }, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
    throw p1
.end method

.method b(Landroidx/lifecycle/v;)V
  .registers 4
  .line 1
    iget-object v0, p0, Landroidx/lifecycle/u;->e:Landroidx/savedstate/SavedStateRegistry;
    iget-object v1, p0, Landroidx/lifecycle/u;->d:Landroidx/lifecycle/f;
    invoke-static { p1, v0, v1 }, Landroidx/lifecycle/SavedStateHandleController;->h(Landroidx/lifecycle/v;Landroidx/savedstate/SavedStateRegistry;Landroidx/lifecycle/f;)V
    return-void
.end method

.method public c(Ljava/lang/String;Ljava/lang/Class;)Landroidx/lifecycle/v;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "<T:",
      "Landroidx/lifecycle/v;",
      ">(",
      "Ljava/lang/String;",
      "Ljava/lang/Class<",
      "TT;>;)TT;"
    }
  .end annotation
  .catch Ljava/lang/IllegalAccessException; { :L3 .. :L6 } :L9
  .catch Ljava/lang/InstantiationException; { :L3 .. :L6 } :L8
  .catch Ljava/lang/reflect/InvocationTargetException; { :L3 .. :L6 } :L7
  .registers 8
  .line 1
    const-class v0, Landroidx/lifecycle/a;
    invoke-virtual { v0, p2 }, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z
    move-result v0
    if-eqz v0, :L0
  .line 2
    iget-object v1, p0, Landroidx/lifecycle/u;->a:Landroid/app/Application;
    if-eqz v1, :L0
  .line 3
    sget-object v1, Landroidx/lifecycle/u;->f:[Ljava/lang/Class;
    invoke-static { p2, v1 }, Landroidx/lifecycle/u;->d(Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    move-result-object v1
    goto :L1
  :L0
  .line 4
    sget-object v1, Landroidx/lifecycle/u;->g:[Ljava/lang/Class;
    invoke-static { p2, v1 }, Landroidx/lifecycle/u;->d(Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    move-result-object v1
  :L1
    if-nez v1, :L2
  .line 5
    iget-object p1, p0, Landroidx/lifecycle/u;->b:Landroidx/lifecycle/w$b;
    invoke-interface { p1, p2 }, Landroidx/lifecycle/w$b;->a(Ljava/lang/Class;)Landroidx/lifecycle/v;
    move-result-object p1
    return-object p1
  :L2
  .line 6
    iget-object v2, p0, Landroidx/lifecycle/u;->e:Landroidx/savedstate/SavedStateRegistry;
    iget-object v3, p0, Landroidx/lifecycle/u;->d:Landroidx/lifecycle/f;
    iget-object v4, p0, Landroidx/lifecycle/u;->c:Landroid/os/Bundle;
    invoke-static { v2, v3, p1, v4 }, Landroidx/lifecycle/SavedStateHandleController;->j(Landroidx/savedstate/SavedStateRegistry;Landroidx/lifecycle/f;Ljava/lang/String;Landroid/os/Bundle;)Landroidx/lifecycle/SavedStateHandleController;
    move-result-object p1
    const/4 v2, 0
    const/4 v3, 1
    if-eqz v0, :L4
  :L3
  .line 7
    iget-object v0, p0, Landroidx/lifecycle/u;->a:Landroid/app/Application;
    if-eqz v0, :L4
    const/4 v0, 2
    new-array v0, v0, [Ljava/lang/Object;
  .line 8
    iget-object v4, p0, Landroidx/lifecycle/u;->a:Landroid/app/Application;
    aput-object v4, v0, v2
    invoke-virtual { p1 }, Landroidx/lifecycle/SavedStateHandleController;->k()Landroidx/lifecycle/t;
    move-result-object v2
    aput-object v2, v0, v3
    invoke-virtual { v1, v0 }, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Landroidx/lifecycle/v;
    goto :L5
  :L4
    new-array v0, v3, [Ljava/lang/Object;
  .line 9
    invoke-virtual { p1 }, Landroidx/lifecycle/SavedStateHandleController;->k()Landroidx/lifecycle/t;
    move-result-object v3
    aput-object v3, v0, v2
    invoke-virtual { v1, v0 }, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Landroidx/lifecycle/v;
  :L5
    const-string v1, "androidx.lifecycle.savedstate.vm.tag"
  .line 10
    invoke-virtual { v0, v1, p1 }, Landroidx/lifecycle/v;->h(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
  :L6
    return-object v0
  :L7
    move-exception p1
  .line 11
    new-instance v0, Ljava/lang/RuntimeException;
    new-instance v1, Ljava/lang/StringBuilder;
    invoke-direct { v1 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v2, "An exception happened in constructor of "
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v1, p2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    invoke-virtual { v1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p2
  .line 12
    invoke-virtual { p1 }, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;
    move-result-object p1
    invoke-direct { v0, p2, p1 }, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    throw v0
  :L8
    move-exception p1
  .line 13
    new-instance v0, Ljava/lang/RuntimeException;
    new-instance v1, Ljava/lang/StringBuilder;
    invoke-direct { v1 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v2, "A "
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v1, p2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    const-string p2, " cannot be instantiated."
    invoke-virtual { v1, p2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p2
    invoke-direct { v0, p2, p1 }, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    throw v0
  :L9
    move-exception p1
  .line 14
    new-instance v0, Ljava/lang/RuntimeException;
    new-instance v1, Ljava/lang/StringBuilder;
    invoke-direct { v1 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v2, "Failed to access "
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v1, p2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    invoke-virtual { v1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p2
    invoke-direct { v0, p2, p1 }, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    throw v0
.end method
