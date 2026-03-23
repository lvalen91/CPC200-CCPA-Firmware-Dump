.class public Lc/g/d/h;
.super Lc/g/d/g;
.source "SourceFile"

.method public constructor <init>()V
  .registers 1
  .line 1
    invoke-direct { p0 }, Lc/g/d/g;-><init>()V
    return-void
.end method

.method protected l(Ljava/lang/Object;)Landroid/graphics/Typeface;
  .catch Ljava/lang/IllegalAccessException; { :L0 .. :L1 } :L3
  .catch Ljava/lang/reflect/InvocationTargetException; { :L0 .. :L1 } :L2
  .registers 7
  :L0
  .line 1
    iget-object v0, p0, Lc/g/d/g;->g:Ljava/lang/Class;
    const/4 v1, 1
    invoke-static { v0, v1 }, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;
    move-result-object v0
    const/4 v2, 0
  .line 2
    invoke-static { v0, v2, p1 }, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V
  .line 3
    iget-object p1, p0, Lc/g/d/g;->m:Ljava/lang/reflect/Method;
    const/4 v3, 0
    const/4 v4, 4
    new-array v4, v4, [Ljava/lang/Object;
    aput-object v0, v4, v2
    const-string v0, "sans-serif"
    aput-object v0, v4, v1
    const/4 v0, 2
    const/4 v1, -1
  .line 4
    invoke-static { v1 }, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v2
    aput-object v2, v4, v0
    const/4 v0, 3
    invoke-static { v1 }, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v1
    aput-object v1, v4, v0
  .line 5
    invoke-virtual { p1, v3, v4 }, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object p1
    check-cast p1, Landroid/graphics/Typeface;
  :L1
    return-object p1
  :L2
    move-exception p1
    goto :L4
  :L3
    move-exception p1
  :L4
  .line 6
    new-instance v0, Ljava/lang/RuntimeException;
    invoke-direct { v0, p1 }, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V
    throw v0
.end method

.method protected x(Ljava/lang/Class;)Ljava/lang/reflect/Method;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(",
      "Ljava/lang/Class<",
      "*>;)",
      "Ljava/lang/reflect/Method;"
    }
  .end annotation
  .registers 6
    const/4 v0, 1
  .line 1
    invoke-static { p1, v0 }, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;
    move-result-object p1
  .line 2
    const-class v1, Landroid/graphics/Typeface;
    const/4 v2, 4
    new-array v2, v2, [Ljava/lang/Class;
  .line 3
    invoke-virtual { p1 }, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    move-result-object p1
    const/4 v3, 0
    aput-object p1, v2, v3
    const-class p1, Ljava/lang/String;
    aput-object p1, v2, v0
    sget-object p1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;
    const/4 v3, 2
    aput-object p1, v2, v3
    const/4 v3, 3
    aput-object p1, v2, v3
    const-string p1, "createFromFamiliesWithDefault"
  .line 4
    invoke-virtual { v1, p1, v2 }, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    move-result-object p1
  .line 5
    invoke-virtual { p1, v0 }, Ljava/lang/reflect/Method;->setAccessible(Z)V
    return-object p1
.end method
