.class Landroidx/core/app/e$a;
.super Ljava/lang/Object;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Landroidx/core/app/e;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 8
  name = "a"
.end annotation

.field private static a:Ljava/lang/reflect/Method;

.field private static b:Z

.field private static c:Ljava/lang/reflect/Method;

.field private static d:Z

.method public static a(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/IBinder;
  .catch Ljava/lang/NoSuchMethodException; { :L0 .. :L1 } :L1
  .catch Ljava/lang/reflect/InvocationTargetException; { :L3 .. :L4 } :L5
  .catch Ljava/lang/IllegalAccessException; { :L3 .. :L4 } :L5
  .catch Ljava/lang/IllegalArgumentException; { :L3 .. :L4 } :L5
  .registers 8
  .line 1
    sget-boolean v0, Landroidx/core/app/e$a;->b:Z
    const/4 v1, 0
    const/4 v2, 1
    if-nez v0, :L2
  :L0
  .line 2
    const-class v0, Landroid/os/Bundle;
    const-string v3, "getIBinder"
    new-array v4, v2, [Ljava/lang/Class;
    const-class v5, Ljava/lang/String;
    aput-object v5, v4, v1
    invoke-virtual { v0, v3, v4 }, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    move-result-object v0
    sput-object v0, Landroidx/core/app/e$a;->a:Ljava/lang/reflect/Method;
  .line 3
    invoke-virtual { v0, v2 }, Ljava/lang/reflect/Method;->setAccessible(Z)V
  :L1
  .line 4
    sput-boolean v2, Landroidx/core/app/e$a;->b:Z
  :L2
  .line 5
    sget-object v0, Landroidx/core/app/e$a;->a:Ljava/lang/reflect/Method;
    const/4 v3, 0
    if-eqz v0, :L6
  :L3
    new-array v2, v2, [Ljava/lang/Object;
    aput-object p1, v2, v1
  .line 6
    invoke-virtual { v0, p0, v2 }, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object p0
    check-cast p0, Landroid/os/IBinder;
  :L4
    return-object p0
  :L5
  .line 7
    sput-object v3, Landroidx/core/app/e$a;->a:Ljava/lang/reflect/Method;
  :L6
    return-object v3
.end method

.method public static b(Landroid/os/Bundle;Ljava/lang/String;Landroid/os/IBinder;)V
  .catch Ljava/lang/NoSuchMethodException; { :L0 .. :L1 } :L1
  .catch Ljava/lang/reflect/InvocationTargetException; { :L3 .. :L4 } :L5
  .catch Ljava/lang/IllegalAccessException; { :L3 .. :L4 } :L5
  .catch Ljava/lang/IllegalArgumentException; { :L3 .. :L4 } :L5
  .registers 10
  .line 1
    sget-boolean v0, Landroidx/core/app/e$a;->d:Z
    const/4 v1, 0
    const/4 v2, 2
    const/4 v3, 1
    if-nez v0, :L2
  :L0
  .line 2
    const-class v0, Landroid/os/Bundle;
    const-string v4, "putIBinder"
    new-array v5, v2, [Ljava/lang/Class;
    const-class v6, Ljava/lang/String;
    aput-object v6, v5, v1
    const-class v6, Landroid/os/IBinder;
    aput-object v6, v5, v3
  .line 3
    invoke-virtual { v0, v4, v5 }, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    move-result-object v0
    sput-object v0, Landroidx/core/app/e$a;->c:Ljava/lang/reflect/Method;
  .line 4
    invoke-virtual { v0, v3 }, Ljava/lang/reflect/Method;->setAccessible(Z)V
  :L1
  .line 5
    sput-boolean v3, Landroidx/core/app/e$a;->d:Z
  :L2
  .line 6
    sget-object v0, Landroidx/core/app/e$a;->c:Ljava/lang/reflect/Method;
    if-eqz v0, :L6
  :L3
    new-array v2, v2, [Ljava/lang/Object;
    aput-object p1, v2, v1
    aput-object p2, v2, v3
  .line 7
    invoke-virtual { v0, p0, v2 }, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
  :L4
    goto :L6
  :L5
    const/4 p0, 0
  .line 8
    sput-object p0, Landroidx/core/app/e$a;->c:Ljava/lang/reflect/Method;
  :L6
    return-void
.end method
