.class public final Landroidx/core/view/w;
.super Ljava/lang/Object;
.source "SourceFile"

.field private static a:Ljava/lang/reflect/Method;

.method static constructor <clinit>()V
  .catch Ljava/lang/Exception; { :L0 .. :L1 } :L1
  .registers 3
  .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v1, 25
    if-ne v0, v1, :L1
  :L0
  .line 2
    const-class v0, Landroid/view/ViewConfiguration;
    const-string v1, "getScaledScrollFactor"
    const/4 v2, 0
    new-array v2, v2, [Ljava/lang/Class;
  .line 3
    invoke-virtual { v0, v1, v2 }, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    move-result-object v0
    sput-object v0, Landroidx/core/view/w;->a:Ljava/lang/reflect/Method;
  :L1
    return-void
.end method

.method private static a(Landroid/view/ViewConfiguration;Landroid/content/Context;)F
  .catch Ljava/lang/Exception; { :L0 .. :L1 } :L2
  .registers 5
  .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v1, 25
    if-lt v0, v1, :L3
    sget-object v0, Landroidx/core/view/w;->a:Ljava/lang/reflect/Method;
    if-eqz v0, :L3
    const/4 v1, 0
  :L0
    new-array v1, v1, [Ljava/lang/Object;
  .line 2
    invoke-virtual { v0, p0, v1 }, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object p0
    check-cast p0, Ljava/lang/Integer;
    invoke-virtual { p0 }, Ljava/lang/Integer;->intValue()I
    move-result p0
  :L1
    int-to-float p0, p0
    return p0
  :L2
    nop
  :L3
  .line 3
    new-instance p0, Landroid/util/TypedValue;
    invoke-direct { p0 }, Landroid/util/TypedValue;-><init>()V
  .line 4
    invoke-virtual { p1 }, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;
    move-result-object v0
    const v1, 16842829
    const/4 v2, 1
    invoke-virtual { v0, v1, p0, v2 }, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z
    move-result v0
    if-eqz v0, :L4
  .line 5
    invoke-virtual { p1 }, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
    move-result-object p1
    invoke-virtual { p1 }, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;
    move-result-object p1
    invoke-virtual { p0, p1 }, Landroid/util/TypedValue;->getDimension(Landroid/util/DisplayMetrics;)F
    move-result p0
    return p0
  :L4
    const/4 p0, 0
    return p0
.end method

.method public static b(Landroid/view/ViewConfiguration;Landroid/content/Context;)F
  .registers 4
  .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v1, 26
    if-lt v0, v1, :L0
  .line 2
    invoke-virtual { p0 }, Landroid/view/ViewConfiguration;->getScaledHorizontalScrollFactor()F
    move-result p0
    return p0
  :L0
  .line 3
    invoke-static { p0, p1 }, Landroidx/core/view/w;->a(Landroid/view/ViewConfiguration;Landroid/content/Context;)F
    move-result p0
    return p0
.end method

.method public static c(Landroid/view/ViewConfiguration;)I
  .registers 3
  .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v1, 28
    if-lt v0, v1, :L0
  .line 2
    invoke-virtual { p0 }, Landroid/view/ViewConfiguration;->getScaledHoverSlop()I
    move-result p0
    return p0
  :L0
  .line 3
    invoke-virtual { p0 }, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I
    move-result p0
    div-int/lit8 p0, p0, 2
    return p0
.end method

.method public static d(Landroid/view/ViewConfiguration;Landroid/content/Context;)F
  .registers 4
  .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v1, 26
    if-lt v0, v1, :L0
  .line 2
    invoke-virtual { p0 }, Landroid/view/ViewConfiguration;->getScaledVerticalScrollFactor()F
    move-result p0
    return p0
  :L0
  .line 3
    invoke-static { p0, p1 }, Landroidx/core/view/w;->a(Landroid/view/ViewConfiguration;Landroid/content/Context;)F
    move-result p0
    return p0
.end method

.method public static e(Landroid/view/ViewConfiguration;Landroid/content/Context;)Z
  .registers 4
  .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v1, 28
    if-lt v0, v1, :L0
  .line 2
    invoke-virtual { p0 }, Landroid/view/ViewConfiguration;->shouldShowMenuShortcutsWhenKeyboardPresent()Z
    move-result p0
    return p0
  :L0
  .line 3
    invoke-virtual { p1 }, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
    move-result-object p0
    const-string p1, "config_showMenuShortcutsWhenKeyboardPresent"
    const-string v0, "bool"
    const-string v1, "android"
  .line 4
    invoke-virtual { p0, p1, v0, v1 }, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    move-result p1
    if-eqz p1, :L1
  .line 5
    invoke-virtual { p0, p1 }, Landroid/content/res/Resources;->getBoolean(I)Z
    move-result p0
    if-eqz p0, :L1
    const/4 p0, 1
    goto :L2
  :L1
    const/4 p0, 0
  :L2
    return p0
.end method
