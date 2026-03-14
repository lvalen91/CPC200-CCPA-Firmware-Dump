.class final Landroidx/savedstate/Recreator;
.super Ljava/lang/Object;
.implements Landroidx/lifecycle/h;
.source "SourceFile"

.annotation build Landroid/annotation/SuppressLint;
  value = {
    "RestrictedApi"
  }
.end annotation
.annotation system Ldalvik/annotation/MemberClasses;
  value = {
    Landroidx/savedstate/Recreator$a;
  }
.end annotation

.field private final a:Landroidx/savedstate/c;

.method constructor <init>(Landroidx/savedstate/c;)V
  .registers 2
  .line 1
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
  .line 2
    iput-object p1, p0, Landroidx/savedstate/Recreator;->a:Landroidx/savedstate/c;
    return-void
.end method

.method private h(Ljava/lang/String;)V
  .catch Ljava/lang/ClassNotFoundException; { :L0 .. :L1 } :L7
  .catch Ljava/lang/NoSuchMethodException; { :L1 .. :L2 } :L6
  .catch Ljava/lang/Exception; { :L3 .. :L4 } :L5
  .registers 6
  :L0
  .line 1
    const-class v0, Landroidx/savedstate/Recreator;
  .line 2
    invoke-virtual { v0 }, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;
    move-result-object v0
    const/4 v1, 0
  .line 3
    invoke-static { p1, v1, v0 }, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
    move-result-object v0
    const-class v2, Landroidx/savedstate/SavedStateRegistry$a;
  .line 4
    invoke-virtual { v0, v2 }, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;
    move-result-object v0
  :L1
    new-array v2, v1, [Ljava/lang/Class;
  .line 5
    invoke-virtual { v0, v2 }, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    move-result-object v0
  :L2
    const/4 v2, 1
  .line 6
    invoke-virtual { v0, v2 }, Ljava/lang/reflect/Constructor;->setAccessible(Z)V
  :L3
    new-array v1, v1, [Ljava/lang/Object;
  .line 7
    invoke-virtual { v0, v1 }, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Landroidx/savedstate/SavedStateRegistry$a;
  :L4
  .line 8
    iget-object p1, p0, Landroidx/savedstate/Recreator;->a:Landroidx/savedstate/c;
    invoke-interface { v0, p1 }, Landroidx/savedstate/SavedStateRegistry$a;->a(Landroidx/savedstate/c;)V
    return-void
  :L5
    move-exception v0
  .line 9
    new-instance v1, Ljava/lang/RuntimeException;
    new-instance v2, Ljava/lang/StringBuilder;
    invoke-direct { v2 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v3, "Failed to instantiate "
    invoke-virtual { v2, v3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v2, p1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v2 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p1
    invoke-direct { v1, p1, v0 }, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    throw v1
  :L6
    move-exception p1
  .line 10
    new-instance v1, Ljava/lang/IllegalStateException;
    new-instance v2, Ljava/lang/StringBuilder;
    invoke-direct { v2 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v3, "Class"
    invoke-virtual { v2, v3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;
    move-result-object v0
    invoke-virtual { v2, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string v0, " must have default constructor in order to be automatically recreated"
    invoke-virtual { v2, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v2 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    invoke-direct { v1, v0, p1 }, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    throw v1
  :L7
    move-exception v0
  .line 11
    new-instance v1, Ljava/lang/RuntimeException;
    new-instance v2, Ljava/lang/StringBuilder;
    invoke-direct { v2 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v3, "Class "
    invoke-virtual { v2, v3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v2, p1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string p1, " wasn't found"
    invoke-virtual { v2, p1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v2 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p1
    invoke-direct { v1, p1, v0 }, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    throw v1
.end method

.method public d(Landroidx/lifecycle/j;Landroidx/lifecycle/f$b;)V
  .registers 4
  .line 1
    sget-object v0, Landroidx/lifecycle/f$b;->ON_CREATE:Landroidx/lifecycle/f$b;
    if-ne p2, v0, :L4
  .line 2
    invoke-interface { p1 }, Landroidx/lifecycle/j;->getLifecycle()Landroidx/lifecycle/f;
    move-result-object p1
    invoke-virtual { p1, p0 }, Landroidx/lifecycle/f;->c(Landroidx/lifecycle/i;)V
  .line 3
    iget-object p1, p0, Landroidx/savedstate/Recreator;->a:Landroidx/savedstate/c;
    invoke-interface { p1 }, Landroidx/savedstate/c;->getSavedStateRegistry()Landroidx/savedstate/SavedStateRegistry;
    move-result-object p1
    const-string p2, "androidx.savedstate.Restarter"
  .line 4
    invoke-virtual { p1, p2 }, Landroidx/savedstate/SavedStateRegistry;->a(Ljava/lang/String;)Landroid/os/Bundle;
    move-result-object p1
    if-nez p1, :L0
    return-void
  :L0
    const-string p2, "classes_to_restore"
  .line 5
    invoke-virtual { p1, p2 }, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;
    move-result-object p1
    if-eqz p1, :L3
  .line 6
    invoke-virtual { p1 }, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
    move-result-object p1
  :L1
    invoke-interface { p1 }, Ljava/util/Iterator;->hasNext()Z
    move-result p2
    if-eqz p2, :L2
    invoke-interface { p1 }, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object p2
    check-cast p2, Ljava/lang/String;
  .line 7
    invoke-direct { p0, p2 }, Landroidx/savedstate/Recreator;->h(Ljava/lang/String;)V
    goto :L1
  :L2
    return-void
  :L3
  .line 8
    new-instance p1, Ljava/lang/IllegalStateException;
    const-string p2, "Bundle with restored state for the component \"androidx.savedstate.Restarter\" must contain list of strings by the key \"classes_to_restore\""
    invoke-direct { p1, p2 }, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
    throw p1
  :L4
  .line 9
    new-instance p1, Ljava/lang/AssertionError;
    const-string p2, "Next event must be ON_CREATE"
    invoke-direct { p1, p2 }, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V
    goto :L6
  :L5
    throw p1
  :L6
    goto :L5
.end method
