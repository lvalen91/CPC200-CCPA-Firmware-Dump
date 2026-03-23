.class public final Lc/o/a;
.super Ljava/lang/Object;
.source "SourceFile"

.field private static a:J

.field private static b:Ljava/lang/reflect/Method;

.method public constructor <init>()V
  .registers 2
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public static a(Ljava/lang/String;)V
  .registers 3
  .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v1, 18
    if-lt v0, v1, :L0
  .line 2
    invoke-static { p0 }, Lc/o/b;->a(Ljava/lang/String;)V
  :L0
    return-void
.end method

.method public static b()V
  .registers 4
  .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v1, 18
    if-lt v0, v1, :L0
  .line 2
    invoke-static { }, Lc/o/b;->b()V
  :L0
    return-void
.end method

.method private static c(Ljava/lang/String;Ljava/lang/Exception;)V
  .registers 3
  .line 1
    instance-of v0, p1, Ljava/lang/reflect/InvocationTargetException;
    if-eqz v0, :L1
  .line 2
    invoke-virtual { p1 }, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;
    move-result-object p0
  .line 3
    instance-of p1, p0, Ljava/lang/RuntimeException;
    if-eqz p1, :L0
  .line 4
    check-cast p0, Ljava/lang/RuntimeException;
    throw p0
  :L0
  .line 5
    new-instance p1, Ljava/lang/RuntimeException;
    invoke-direct { p1, p0 }, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V
    throw p1
  :L1
  .line 6
    new-instance p1, Ljava/lang/StringBuilder;
    invoke-direct { p1 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v0, "Unable to call "
    invoke-virtual { p1, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { p1, p0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string p0, " via reflection"
    invoke-virtual { p1, p0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { p1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    return-void
.end method

.method public static d()Z
  .annotation build Landroid/annotation/SuppressLint;
    value = {
      "NewApi"
    }
  .end annotation
  .catch Ljava/lang/NoSuchMethodError; { :L0 .. :L1 } :L2
  .catch Ljava/lang/NoClassDefFoundError; { :L0 .. :L1 } :L2
  .registers 2
  :L0
  .line 1
    sget-object v0, Lc/o/a;->b:Ljava/lang/reflect/Method;
    if-nez v0, :L2
  .line 2
    invoke-static { }, Landroid/os/Trace;->isEnabled()Z
    move-result v0
  :L1
    return v0
  :L2
  .line 3
    invoke-static { }, Lc/o/a;->e()Z
    move-result v0
    return v0
.end method

.method private static e()Z
  .catch Ljava/lang/Exception; { :L0 .. :L2 } :L3
  .registers 9
    const-string v0, "isTagEnabled"
  .line 1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I
    const/4 v2, 0
    const/16 v3, 18
    if-lt v1, v3, :L4
  :L0
  .line 2
    sget-object v1, Lc/o/a;->b:Ljava/lang/reflect/Method;
    const/4 v3, 1
    const/4 v4, 0
    if-nez v1, :L1
  .line 3
    const-class v1, Landroid/os/Trace;
    const-string v5, "TRACE_TAG_APP"
    invoke-virtual { v1, v5 }, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;
    move-result-object v1
  .line 4
    invoke-virtual { v1, v4 }, Ljava/lang/reflect/Field;->getLong(Ljava/lang/Object;)J
    move-result-wide v5
    sput-wide v5, Lc/o/a;->a:J
  .line 5
    const-class v1, Landroid/os/Trace;
    new-array v5, v3, [Ljava/lang/Class;
    sget-object v6, Ljava/lang/Long;->TYPE:Ljava/lang/Class;
    aput-object v6, v5, v2
  .line 6
    invoke-virtual { v1, v0, v5 }, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    move-result-object v1
    sput-object v1, Lc/o/a;->b:Ljava/lang/reflect/Method;
  :L1
  .line 7
    sget-object v1, Lc/o/a;->b:Ljava/lang/reflect/Method;
    new-array v3, v3, [Ljava/lang/Object;
    sget-wide v5, Lc/o/a;->a:J
    invoke-static { v5, v6 }, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    move-result-object v5
    aput-object v5, v3, v2
    invoke-virtual { v1, v4, v3 }, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object v1
    check-cast v1, Ljava/lang/Boolean;
    invoke-virtual { v1 }, Ljava/lang/Boolean;->booleanValue()Z
    move-result v0
  :L2
    return v0
  :L3
    move-exception v1
  .line 8
    invoke-static { v0, v1 }, Lc/o/a;->c(Ljava/lang/String;Ljava/lang/Exception;)V
  :L4
    return v2
.end method
