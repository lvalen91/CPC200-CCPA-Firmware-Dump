.class final Landroidx/core/app/c;
.super Ljava/lang/Object;
.source "SourceFile"

.annotation system Ldalvik/annotation/MemberClasses;
  value = {
    Landroidx/core/app/c$d;
  }
.end annotation

.field protected final static a:Ljava/lang/Class;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "Ljava/lang/Class<",
      "*>;"
    }
  .end annotation
.end field

.field protected final static b:Ljava/lang/reflect/Field;

.field protected final static c:Ljava/lang/reflect/Field;

.field protected final static d:Ljava/lang/reflect/Method;

.field protected final static e:Ljava/lang/reflect/Method;

.field protected final static f:Ljava/lang/reflect/Method;

.field private final static g:Landroid/os/Handler;

.method static constructor <clinit>()V
  .registers 2
  .line 1
    new-instance v0, Landroid/os/Handler;
    invoke-static { }, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;
    move-result-object v1
    invoke-direct { v0, v1 }, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V
    sput-object v0, Landroidx/core/app/c;->g:Landroid/os/Handler;
  .line 2
    invoke-static { }, Landroidx/core/app/c;->a()Ljava/lang/Class;
    move-result-object v0
    sput-object v0, Landroidx/core/app/c;->a:Ljava/lang/Class;
  .line 3
    invoke-static { }, Landroidx/core/app/c;->b()Ljava/lang/reflect/Field;
    move-result-object v0
    sput-object v0, Landroidx/core/app/c;->b:Ljava/lang/reflect/Field;
  .line 4
    invoke-static { }, Landroidx/core/app/c;->f()Ljava/lang/reflect/Field;
    move-result-object v0
    sput-object v0, Landroidx/core/app/c;->c:Ljava/lang/reflect/Field;
  .line 5
    sget-object v0, Landroidx/core/app/c;->a:Ljava/lang/Class;
    invoke-static { v0 }, Landroidx/core/app/c;->d(Ljava/lang/Class;)Ljava/lang/reflect/Method;
    move-result-object v0
    sput-object v0, Landroidx/core/app/c;->d:Ljava/lang/reflect/Method;
  .line 6
    sget-object v0, Landroidx/core/app/c;->a:Ljava/lang/Class;
    invoke-static { v0 }, Landroidx/core/app/c;->c(Ljava/lang/Class;)Ljava/lang/reflect/Method;
    move-result-object v0
    sput-object v0, Landroidx/core/app/c;->e:Ljava/lang/reflect/Method;
  .line 7
    sget-object v0, Landroidx/core/app/c;->a:Ljava/lang/Class;
    invoke-static { v0 }, Landroidx/core/app/c;->e(Ljava/lang/Class;)Ljava/lang/reflect/Method;
    move-result-object v0
    sput-object v0, Landroidx/core/app/c;->f:Ljava/lang/reflect/Method;
    return-void
.end method

.method private static a()Ljava/lang/Class;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "()",
      "Ljava/lang/Class<",
      "*>;"
    }
  .end annotation
  .catchall { :L0 .. :L1 } :L2
  .registers 1
  :L0
    const-string v0, "android.app.ActivityThread"
  .line 1
    invoke-static { v0 }, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    move-result-object v0
  :L1
    return-object v0
  :L2
    const/4 v0, 0
    return-object v0
.end method

.method private static b()Ljava/lang/reflect/Field;
  .catchall { :L0 .. :L1 } :L2
  .registers 2
  :L0
  .line 1
    const-class v0, Landroid/app/Activity;
    const-string v1, "mMainThread"
    invoke-virtual { v0, v1 }, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;
    move-result-object v0
    const/4 v1, 1
  .line 2
    invoke-virtual { v0, v1 }, Ljava/lang/reflect/Field;->setAccessible(Z)V
  :L1
    return-object v0
  :L2
    const/4 v0, 0
    return-object v0
.end method

.method private static c(Ljava/lang/Class;)Ljava/lang/reflect/Method;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(",
      "Ljava/lang/Class<",
      "*>;)",
      "Ljava/lang/reflect/Method;"
    }
  .end annotation
  .catchall { :L0 .. :L1 } :L2
  .registers 6
    const/4 v0, 0
    if-nez p0, :L0
    return-object v0
  :L0
    const-string v1, "performStopActivity"
    const/4 v2, 2
    new-array v2, v2, [Ljava/lang/Class;
    const/4 v3, 0
  .line 1
    const-class v4, Landroid/os/IBinder;
    aput-object v4, v2, v3
    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;
    const/4 v4, 1
    aput-object v3, v2, v4
    invoke-virtual { p0, v1, v2 }, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    move-result-object p0
  .line 2
    invoke-virtual { p0, v4 }, Ljava/lang/reflect/Method;->setAccessible(Z)V
  :L1
    return-object p0
  :L2
    return-object v0
.end method

.method private static d(Ljava/lang/Class;)Ljava/lang/reflect/Method;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(",
      "Ljava/lang/Class<",
      "*>;)",
      "Ljava/lang/reflect/Method;"
    }
  .end annotation
  .catchall { :L0 .. :L1 } :L2
  .registers 7
    const/4 v0, 0
    if-nez p0, :L0
    return-object v0
  :L0
    const-string v1, "performStopActivity"
    const/4 v2, 3
    new-array v2, v2, [Ljava/lang/Class;
    const/4 v3, 0
  .line 1
    const-class v4, Landroid/os/IBinder;
    aput-object v4, v2, v3
    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;
    const/4 v4, 1
    aput-object v3, v2, v4
    const/4 v3, 2
    const-class v5, Ljava/lang/String;
    aput-object v5, v2, v3
    invoke-virtual { p0, v1, v2 }, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    move-result-object p0
  .line 2
    invoke-virtual { p0, v4 }, Ljava/lang/reflect/Method;->setAccessible(Z)V
  :L1
    return-object p0
  :L2
    return-object v0
.end method

.method private static e(Ljava/lang/Class;)Ljava/lang/reflect/Method;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(",
      "Ljava/lang/Class<",
      "*>;)",
      "Ljava/lang/reflect/Method;"
    }
  .end annotation
  .catchall { :L0 .. :L1 } :L2
  .registers 7
  .line 1
    invoke-static { }, Landroidx/core/app/c;->g()Z
    move-result v0
    const/4 v1, 0
    if-eqz v0, :L2
    if-nez p0, :L0
    goto :L2
  :L0
    const-string v0, "requestRelaunchActivity"
    const/16 v2, 9
    new-array v2, v2, [Ljava/lang/Class;
    const/4 v3, 0
  .line 2
    const-class v4, Landroid/os/IBinder;
    aput-object v4, v2, v3
    const-class v3, Ljava/util/List;
    const/4 v4, 1
    aput-object v3, v2, v4
    const/4 v3, 2
    const-class v5, Ljava/util/List;
    aput-object v5, v2, v3
    const/4 v3, 3
    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;
    aput-object v5, v2, v3
    const/4 v3, 4
    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;
    aput-object v5, v2, v3
    const/4 v3, 5
    const-class v5, Landroid/content/res/Configuration;
    aput-object v5, v2, v3
    const/4 v3, 6
    const-class v5, Landroid/content/res/Configuration;
    aput-object v5, v2, v3
    const/4 v3, 7
    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;
    aput-object v5, v2, v3
    const/16 v3, 8
    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;
    aput-object v5, v2, v3
    invoke-virtual { p0, v0, v2 }, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    move-result-object p0
  .line 3
    invoke-virtual { p0, v4 }, Ljava/lang/reflect/Method;->setAccessible(Z)V
  :L1
    return-object p0
  :L2
    return-object v1
.end method

.method private static f()Ljava/lang/reflect/Field;
  .catchall { :L0 .. :L1 } :L2
  .registers 2
  :L0
  .line 1
    const-class v0, Landroid/app/Activity;
    const-string v1, "mToken"
    invoke-virtual { v0, v1 }, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;
    move-result-object v0
    const/4 v1, 1
  .line 2
    invoke-virtual { v0, v1 }, Ljava/lang/reflect/Field;->setAccessible(Z)V
  :L1
    return-object v0
  :L2
    const/4 v0, 0
    return-object v0
.end method

.method private static g()Z
  .registers 2
  .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v1, 26
    if-eq v0, v1, :L1
    const/16 v1, 27
    if-ne v0, v1, :L0
    goto :L1
  :L0
    const/4 v0, 0
    goto :L2
  :L1
    const/4 v0, 1
  :L2
    return v0
.end method

.method protected static h(Ljava/lang/Object;ILandroid/app/Activity;)Z
  .catchall { :L0 .. :L2 } :L3
  .registers 5
    const/4 v0, 0
  :L0
  .line 1
    sget-object v1, Landroidx/core/app/c;->c:Ljava/lang/reflect/Field;
    invoke-virtual { v1, p2 }, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object v1
    if-ne v1, p0, :L3
  .line 2
    invoke-virtual { p2 }, Ljava/lang/Object;->hashCode()I
    move-result p0
    if-eq p0, p1, :L1
    goto :L3
  :L1
  .line 3
    sget-object p0, Landroidx/core/app/c;->b:Ljava/lang/reflect/Field;
    invoke-virtual { p0, p2 }, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object p0
  .line 4
    sget-object p1, Landroidx/core/app/c;->g:Landroid/os/Handler;
    new-instance p2, Landroidx/core/app/c$c;
    invoke-direct { p2, p0, v1 }, Landroidx/core/app/c$c;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    invoke-virtual { p1, p2 }, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z
  :L2
    const/4 p0, 1
    return p0
  :L3
    return v0
.end method

.method static i(Landroid/app/Activity;)Z
  .catchall { :L2 .. :L5 } :L9
  .catchall { :L5 .. :L7 } :L8
  .catchall { :L7 .. :L9 } :L9
  .registers 10
  .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    const/4 v1, 1
    const/16 v2, 28
    if-lt v0, v2, :L0
  .line 2
    invoke-virtual { p0 }, Landroid/app/Activity;->recreate()V
    return v1
  :L0
  .line 3
    invoke-static { }, Landroidx/core/app/c;->g()Z
    move-result v0
    const/4 v2, 0
    if-eqz v0, :L1
    sget-object v0, Landroidx/core/app/c;->f:Ljava/lang/reflect/Method;
    if-nez v0, :L1
    return v2
  :L1
  .line 4
    sget-object v0, Landroidx/core/app/c;->e:Ljava/lang/reflect/Method;
    if-nez v0, :L2
    sget-object v0, Landroidx/core/app/c;->d:Ljava/lang/reflect/Method;
    if-nez v0, :L2
    return v2
  :L2
  .line 5
    sget-object v0, Landroidx/core/app/c;->c:Ljava/lang/reflect/Field;
    invoke-virtual { v0, p0 }, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object v0
    if-nez v0, :L3
    return v2
  :L3
  .line 6
    sget-object v3, Landroidx/core/app/c;->b:Ljava/lang/reflect/Field;
    invoke-virtual { v3, p0 }, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object v3
    if-nez v3, :L4
    return v2
  :L4
  .line 7
    invoke-virtual { p0 }, Landroid/app/Activity;->getApplication()Landroid/app/Application;
    move-result-object v4
  .line 8
    new-instance v5, Landroidx/core/app/c$d;
    invoke-direct { v5, p0 }, Landroidx/core/app/c$d;-><init>(Landroid/app/Activity;)V
  .line 9
    invoke-virtual { v4, v5 }, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V
  .line 10
    sget-object v6, Landroidx/core/app/c;->g:Landroid/os/Handler;
    new-instance v7, Landroidx/core/app/c$a;
    invoke-direct { v7, v5, v0 }, Landroidx/core/app/c$a;-><init>(Landroidx/core/app/c$d;Ljava/lang/Object;)V
    invoke-virtual { v6, v7 }, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
  :L5
  .line 11
    invoke-static { }, Landroidx/core/app/c;->g()Z
    move-result v6
    if-eqz v6, :L6
  .line 12
    sget-object p0, Landroidx/core/app/c;->f:Ljava/lang/reflect/Method;
    const/16 v6, 9
    new-array v6, v6, [Ljava/lang/Object;
    aput-object v0, v6, v2
    const/4 v0, 0
    aput-object v0, v6, v1
    const/4 v7, 2
    aput-object v0, v6, v7
    const/4 v7, 3
  .line 13
    invoke-static { v2 }, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v8
    aput-object v8, v6, v7
    const/4 v7, 4
    sget-object v8, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;
    aput-object v8, v6, v7
    const/4 v7, 5
    aput-object v0, v6, v7
    const/4 v7, 6
    aput-object v0, v6, v7
    const/4 v0, 7
    sget-object v7, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;
    aput-object v7, v6, v0
    const/16 v0, 8
    sget-object v7, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;
    aput-object v7, v6, v0
  .line 14
    invoke-virtual { p0, v3, v6 }, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    goto :L7
  :L6
  .line 15
    invoke-virtual { p0 }, Landroid/app/Activity;->recreate()V
  :L7
  .line 16
    sget-object p0, Landroidx/core/app/c;->g:Landroid/os/Handler;
    new-instance v0, Landroidx/core/app/c$b;
    invoke-direct { v0, v4, v5 }, Landroidx/core/app/c$b;-><init>(Landroid/app/Application;Landroidx/core/app/c$d;)V
    invoke-virtual { p0, v0 }, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    return v1
  :L8
    move-exception p0
    sget-object v0, Landroidx/core/app/c;->g:Landroid/os/Handler;
    new-instance v1, Landroidx/core/app/c$b;
    invoke-direct { v1, v4, v5 }, Landroidx/core/app/c$b;-><init>(Landroid/app/Application;Landroidx/core/app/c$d;)V
    invoke-virtual { v0, v1 }, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
  .line 17
    throw p0
  :L9
    return v2
.end method
