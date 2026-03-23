.class Landroidx/core/content/c/f$b$a;
.super Ljava/lang/Object;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Landroidx/core/content/c/f$b;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 8
  name = "a"
.end annotation

.field private final static a:Ljava/lang/Object;

.field private static b:Ljava/lang/reflect/Method;

.field private static c:Z

.method static constructor <clinit>()V
  .registers 1
  .line 1
    new-instance v0, Ljava/lang/Object;
    invoke-direct { v0 }, Ljava/lang/Object;-><init>()V
    sput-object v0, Landroidx/core/content/c/f$b$a;->a:Ljava/lang/Object;
    return-void
.end method

.method static a(Landroid/content/res/Resources$Theme;)V
  .catchall { :L0 .. :L1 } :L11
  .catch Ljava/lang/NoSuchMethodException; { :L2 .. :L3 } :L3
  .catchall { :L2 .. :L3 } :L11
  .catchall { :L3 .. :L5 } :L11
  .catch Ljava/lang/IllegalAccessException; { :L6 .. :L7 } :L8
  .catch Ljava/lang/reflect/InvocationTargetException; { :L6 .. :L7 } :L8
  .catchall { :L6 .. :L7 } :L11
  .catchall { :L9 .. :L12 } :L11
  .registers 7
  .line 1
    sget-object v0, Landroidx/core/content/c/f$b$a;->a:Ljava/lang/Object;
    monitor-enter v0
  :L0
  .line 2
    sget-boolean v1, Landroidx/core/content/c/f$b$a;->c:Z
  :L1
    const/4 v2, 0
    if-nez v1, :L4
    const/4 v1, 1
  :L2
  .line 3
    const-class v3, Landroid/content/res/Resources$Theme;
    const-string v4, "rebase"
    new-array v5, v2, [Ljava/lang/Class;
    invoke-virtual { v3, v4, v5 }, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    move-result-object v3
    sput-object v3, Landroidx/core/content/c/f$b$a;->b:Ljava/lang/reflect/Method;
  .line 4
    invoke-virtual { v3, v1 }, Ljava/lang/reflect/Method;->setAccessible(Z)V
  :L3
  .line 5
    sput-boolean v1, Landroidx/core/content/c/f$b$a;->c:Z
  :L4
  .line 6
    sget-object v1, Landroidx/core/content/c/f$b$a;->b:Ljava/lang/reflect/Method;
  :L5
    if-eqz v1, :L10
  :L6
  .line 7
    sget-object v1, Landroidx/core/content/c/f$b$a;->b:Ljava/lang/reflect/Method;
    new-array v2, v2, [Ljava/lang/Object;
    invoke-virtual { v1, p0, v2 }, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
  :L7
    goto :L10
  :L8
    const/4 p0, 0
  :L9
  .line 8
    sput-object p0, Landroidx/core/content/c/f$b$a;->b:Ljava/lang/reflect/Method;
  :L10
  .line 9
    monitor-exit v0
    return-void
  :L11
    move-exception p0
    monitor-exit v0
  :L12
    throw p0
.end method
