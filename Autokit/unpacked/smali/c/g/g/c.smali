.class public final Lc/g/g/c;
.super Ljava/lang/Object;
.source "SourceFile"

.annotation runtime Ljava/lang/Deprecated;
.end annotation

.method static constructor <clinit>()V
  .catch Ljava/lang/Exception; { :L0 .. :L1 } :L1
  .registers 10
  .line 1
    const-class v0, Ljava/lang/String;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v2, 18
    if-lt v1, v2, :L1
    const/16 v2, 29
    if-ge v1, v2, :L1
  :L0
  .line 2
    const-class v1, Landroid/os/Trace;
    const-string v2, "TRACE_TAG_APP"
    invoke-virtual { v1, v2 }, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;
    move-result-object v1
    const/4 v2, 0
  .line 3
    invoke-virtual { v1, v2 }, Ljava/lang/reflect/Field;->getLong(Ljava/lang/Object;)J
  .line 4
    const-class v1, Landroid/os/Trace;
    const-string v2, "isTagEnabled"
    const/4 v3, 1
    new-array v4, v3, [Ljava/lang/Class;
    sget-object v5, Ljava/lang/Long;->TYPE:Ljava/lang/Class;
    const/4 v6, 0
    aput-object v5, v4, v6
    invoke-virtual { v1, v2, v4 }, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
  .line 5
    const-class v1, Landroid/os/Trace;
    const-string v2, "asyncTraceBegin"
    const/4 v4, 3
    new-array v5, v4, [Ljava/lang/Class;
    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;
    aput-object v7, v5, v6
    aput-object v0, v5, v3
    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;
    const/4 v8, 2
    aput-object v7, v5, v8
    invoke-virtual { v1, v2, v5 }, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
  .line 6
    const-class v1, Landroid/os/Trace;
    const-string v2, "asyncTraceEnd"
    new-array v5, v4, [Ljava/lang/Class;
    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;
    aput-object v7, v5, v6
    aput-object v0, v5, v3
    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;
    aput-object v7, v5, v8
    invoke-virtual { v1, v2, v5 }, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
  .line 7
    const-class v1, Landroid/os/Trace;
    const-string v2, "traceCounter"
    new-array v4, v4, [Ljava/lang/Class;
    sget-object v5, Ljava/lang/Long;->TYPE:Ljava/lang/Class;
    aput-object v5, v4, v6
    aput-object v0, v4, v3
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;
    aput-object v0, v4, v8
    invoke-virtual { v1, v2, v4 }, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
  :L1
    return-void
.end method

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
    invoke-static { p0 }, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V
  :L0
    return-void
.end method

.method public static b()V
  .registers 3
  .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v1, 18
    if-lt v0, v1, :L0
  .line 2
    invoke-static { }, Landroid/os/Trace;->endSection()V
  :L0
    return-void
.end method
