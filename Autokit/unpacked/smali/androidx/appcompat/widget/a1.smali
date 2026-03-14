.class public Landroidx/appcompat/widget/a1;
.super Ljava/lang/Object;
.source "SourceFile"

.field private static a:Ljava/lang/reflect/Method;

.method static constructor <clinit>()V
  .catch Ljava/lang/NoSuchMethodException; { :L0 .. :L1 } :L1
  .registers 5
  .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v1, 18
    if-lt v0, v1, :L1
  :L0
  .line 2
    const-class v0, Landroid/view/View;
    const-string v1, "computeFitSystemWindows"
    const/4 v2, 2
    new-array v2, v2, [Ljava/lang/Class;
    const/4 v3, 0
    const-class v4, Landroid/graphics/Rect;
    aput-object v4, v2, v3
    const-class v3, Landroid/graphics/Rect;
    const/4 v4, 1
    aput-object v3, v2, v4
    invoke-virtual { v0, v1, v2 }, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    move-result-object v0
    sput-object v0, Landroidx/appcompat/widget/a1;->a:Ljava/lang/reflect/Method;
  .line 3
    invoke-virtual { v0 }, Ljava/lang/reflect/Method;->isAccessible()Z
    move-result v0
    if-nez v0, :L1
  .line 4
    sget-object v0, Landroidx/appcompat/widget/a1;->a:Ljava/lang/reflect/Method;
    invoke-virtual { v0, v4 }, Ljava/lang/reflect/Method;->setAccessible(Z)V
  :L1
    return-void
.end method

.method public static a(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
  .catch Ljava/lang/Exception; { :L0 .. :L1 } :L1
  .registers 6
  .line 1
    sget-object v0, Landroidx/appcompat/widget/a1;->a:Ljava/lang/reflect/Method;
    if-eqz v0, :L1
    const/4 v1, 2
  :L0
    new-array v1, v1, [Ljava/lang/Object;
    const/4 v2, 0
    aput-object p1, v1, v2
    const/4 p1, 1
    aput-object p2, v1, p1
  .line 2
    invoke-virtual { v0, p0, v1 }, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
  :L1
    return-void
.end method

.method public static b(Landroid/view/View;)Z
  .registers 2
  .line 1
    invoke-static { p0 }, Landroidx/core/view/v;->C(Landroid/view/View;)I
    move-result p0
    const/4 v0, 1
    if-ne p0, v0, :L0
    goto :L1
  :L0
    const/4 v0, 0
  :L1
    return v0
.end method

.method public static c(Landroid/view/View;)V
  .catch Ljava/lang/NoSuchMethodException; { :L0 .. :L2 } :L2
  .catch Ljava/lang/reflect/InvocationTargetException; { :L0 .. :L2 } :L2
  .catch Ljava/lang/IllegalAccessException; { :L0 .. :L2 } :L2
  .registers 5
  .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v1, 16
    if-lt v0, v1, :L2
  :L0
  .line 2
    invoke-virtual { p0 }, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    move-result-object v0
    const-string v1, "makeOptionalFitsSystemWindows"
    const/4 v2, 0
    new-array v3, v2, [Ljava/lang/Class;
    invoke-virtual { v0, v1, v3 }, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    move-result-object v0
  .line 3
    invoke-virtual { v0 }, Ljava/lang/reflect/Method;->isAccessible()Z
    move-result v1
    if-nez v1, :L1
    const/4 v1, 1
  .line 4
    invoke-virtual { v0, v1 }, Ljava/lang/reflect/Method;->setAccessible(Z)V
  :L1
    new-array v1, v2, [Ljava/lang/Object;
  .line 5
    invoke-virtual { v0, p0, v1 }, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
  :L2
    return-void
.end method
