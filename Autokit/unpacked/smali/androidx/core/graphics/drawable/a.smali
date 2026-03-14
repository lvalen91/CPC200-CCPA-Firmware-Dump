.class public final Landroidx/core/graphics/drawable/a;
.super Ljava/lang/Object;
.source "SourceFile"

.field private static a:Ljava/lang/reflect/Method;

.field private static b:Z

.field private static c:Ljava/lang/reflect/Method;

.field private static d:Z

.method public static a(Landroid/graphics/drawable/Drawable;Landroid/content/res/Resources$Theme;)V
  .registers 4
  .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v1, 21
    if-lt v0, v1, :L0
  .line 2
    invoke-virtual { p0, p1 }, Landroid/graphics/drawable/Drawable;->applyTheme(Landroid/content/res/Resources$Theme;)V
  :L0
    return-void
.end method

.method public static b(Landroid/graphics/drawable/Drawable;)Z
  .registers 3
  .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v1, 21
    if-lt v0, v1, :L0
  .line 2
    invoke-virtual { p0 }, Landroid/graphics/drawable/Drawable;->canApplyTheme()Z
    move-result p0
    return p0
  :L0
    const/4 p0, 0
    return p0
.end method

.method public static c(Landroid/graphics/drawable/Drawable;)V
  .registers 4
  .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v1, 23
    if-lt v0, v1, :L0
  .line 2
    invoke-virtual { p0 }, Landroid/graphics/drawable/Drawable;->clearColorFilter()V
    goto :L6
  :L0
    const/16 v1, 21
    if-lt v0, v1, :L5
  .line 3
    invoke-virtual { p0 }, Landroid/graphics/drawable/Drawable;->clearColorFilter()V
  .line 4
    instance-of v0, p0, Landroid/graphics/drawable/InsetDrawable;
    if-eqz v0, :L1
  .line 5
    check-cast p0, Landroid/graphics/drawable/InsetDrawable;
    invoke-virtual { p0 }, Landroid/graphics/drawable/InsetDrawable;->getDrawable()Landroid/graphics/drawable/Drawable;
    move-result-object p0
    invoke-static { p0 }, Landroidx/core/graphics/drawable/a;->c(Landroid/graphics/drawable/Drawable;)V
    goto :L6
  :L1
  .line 6
    instance-of v0, p0, Landroidx/core/graphics/drawable/c;
    if-eqz v0, :L2
  .line 7
    check-cast p0, Landroidx/core/graphics/drawable/c;
    invoke-interface { p0 }, Landroidx/core/graphics/drawable/c;->a()Landroid/graphics/drawable/Drawable;
    move-result-object p0
    invoke-static { p0 }, Landroidx/core/graphics/drawable/a;->c(Landroid/graphics/drawable/Drawable;)V
    goto :L6
  :L2
  .line 8
    instance-of v0, p0, Landroid/graphics/drawable/DrawableContainer;
    if-eqz v0, :L6
  .line 9
    check-cast p0, Landroid/graphics/drawable/DrawableContainer;
  .line 10
    invoke-virtual { p0 }, Landroid/graphics/drawable/DrawableContainer;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    move-result-object p0
    check-cast p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;
    if-eqz p0, :L6
    const/4 v0, 0
  .line 11
    invoke-virtual { p0 }, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->getChildCount()I
    move-result v1
  :L3
    if-ge v0, v1, :L6
  .line 12
    invoke-virtual { p0, v0 }, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->getChild(I)Landroid/graphics/drawable/Drawable;
    move-result-object v2
    if-eqz v2, :L4
  .line 13
    invoke-static { v2 }, Landroidx/core/graphics/drawable/a;->c(Landroid/graphics/drawable/Drawable;)V
  :L4
    add-int/lit8 v0, v0, 1
    goto :L3
  :L5
  .line 14
    invoke-virtual { p0 }, Landroid/graphics/drawable/Drawable;->clearColorFilter()V
  :L6
    return-void
.end method

.method public static d(Landroid/graphics/drawable/Drawable;)I
  .registers 3
  .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v1, 19
    if-lt v0, v1, :L0
  .line 2
    invoke-virtual { p0 }, Landroid/graphics/drawable/Drawable;->getAlpha()I
    move-result p0
    return p0
  :L0
    const/4 p0, 0
    return p0
.end method

.method public static e(Landroid/graphics/drawable/Drawable;)Landroid/graphics/ColorFilter;
  .registers 3
  .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v1, 21
    if-lt v0, v1, :L0
  .line 2
    invoke-virtual { p0 }, Landroid/graphics/drawable/Drawable;->getColorFilter()Landroid/graphics/ColorFilter;
    move-result-object p0
    return-object p0
  :L0
    const/4 p0, 0
    return-object p0
.end method

.method public static f(Landroid/graphics/drawable/Drawable;)I
  .catch Ljava/lang/NoSuchMethodException; { :L1 .. :L2 } :L2
  .catch Ljava/lang/Exception; { :L4 .. :L5 } :L6
  .registers 6
  .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v1, 23
    if-lt v0, v1, :L0
  .line 2
    invoke-virtual { p0 }, Landroid/graphics/drawable/Drawable;->getLayoutDirection()I
    move-result p0
    return p0
  :L0
    const/16 v1, 17
    const/4 v2, 0
    if-lt v0, v1, :L7
  .line 3
    sget-boolean v0, Landroidx/core/graphics/drawable/a;->d:Z
    if-nez v0, :L3
    const/4 v0, 1
  :L1
  .line 4
    const-class v1, Landroid/graphics/drawable/Drawable;
    const-string v3, "getLayoutDirection"
    new-array v4, v2, [Ljava/lang/Class;
  .line 5
    invoke-virtual { v1, v3, v4 }, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    move-result-object v1
    sput-object v1, Landroidx/core/graphics/drawable/a;->c:Ljava/lang/reflect/Method;
  .line 6
    invoke-virtual { v1, v0 }, Ljava/lang/reflect/Method;->setAccessible(Z)V
  :L2
  .line 7
    sput-boolean v0, Landroidx/core/graphics/drawable/a;->d:Z
  :L3
  .line 8
    sget-object v0, Landroidx/core/graphics/drawable/a;->c:Ljava/lang/reflect/Method;
    if-eqz v0, :L7
  :L4
    new-array v1, v2, [Ljava/lang/Object;
  .line 9
    invoke-virtual { v0, p0, v1 }, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object p0
    check-cast p0, Ljava/lang/Integer;
    invoke-virtual { p0 }, Ljava/lang/Integer;->intValue()I
    move-result p0
  :L5
    return p0
  :L6
    const/4 p0, 0
  .line 10
    sput-object p0, Landroidx/core/graphics/drawable/a;->c:Ljava/lang/reflect/Method;
  :L7
    return v2
.end method

.method public static g(Landroid/graphics/drawable/Drawable;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
  .registers 7
  .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v1, 21
    if-lt v0, v1, :L0
  .line 2
    invoke-virtual { p0, p1, p2, p3, p4 }, Landroid/graphics/drawable/Drawable;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    goto :L1
  :L0
  .line 3
    invoke-virtual { p0, p1, p2, p3 }, Landroid/graphics/drawable/Drawable;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)V
  :L1
    return-void
.end method

.method public static h(Landroid/graphics/drawable/Drawable;)Z
  .registers 3
  .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v1, 19
    if-lt v0, v1, :L0
  .line 2
    invoke-virtual { p0 }, Landroid/graphics/drawable/Drawable;->isAutoMirrored()Z
    move-result p0
    return p0
  :L0
    const/4 p0, 0
    return p0
.end method

.method public static i(Landroid/graphics/drawable/Drawable;)V
  .annotation runtime Ljava/lang/Deprecated;
  .end annotation
  .registers 1
  .line 1
    invoke-virtual { p0 }, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V
    return-void
.end method

.method public static j(Landroid/graphics/drawable/Drawable;Z)V
  .registers 4
  .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v1, 19
    if-lt v0, v1, :L0
  .line 2
    invoke-virtual { p0, p1 }, Landroid/graphics/drawable/Drawable;->setAutoMirrored(Z)V
  :L0
    return-void
.end method

.method public static k(Landroid/graphics/drawable/Drawable;FF)V
  .registers 5
  .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v1, 21
    if-lt v0, v1, :L0
  .line 2
    invoke-virtual { p0, p1, p2 }, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V
  :L0
    return-void
.end method

.method public static l(Landroid/graphics/drawable/Drawable;IIII)V
  .registers 7
  .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v1, 21
    if-lt v0, v1, :L0
  .line 2
    invoke-virtual { p0, p1, p2, p3, p4 }, Landroid/graphics/drawable/Drawable;->setHotspotBounds(IIII)V
  :L0
    return-void
.end method

.method public static m(Landroid/graphics/drawable/Drawable;I)Z
  .catch Ljava/lang/NoSuchMethodException; { :L1 .. :L2 } :L2
  .catch Ljava/lang/Exception; { :L4 .. :L5 } :L6
  .registers 8
  .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v1, 23
    if-lt v0, v1, :L0
  .line 2
    invoke-virtual { p0, p1 }, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)Z
    move-result p0
    return p0
  :L0
    const/16 v1, 17
    const/4 v2, 0
    if-lt v0, v1, :L7
  .line 3
    sget-boolean v0, Landroidx/core/graphics/drawable/a;->b:Z
    const/4 v1, 1
    if-nez v0, :L3
  :L1
  .line 4
    const-class v0, Landroid/graphics/drawable/Drawable;
    const-string v3, "setLayoutDirection"
    new-array v4, v1, [Ljava/lang/Class;
    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;
    aput-object v5, v4, v2
  .line 5
    invoke-virtual { v0, v3, v4 }, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    move-result-object v0
    sput-object v0, Landroidx/core/graphics/drawable/a;->a:Ljava/lang/reflect/Method;
  .line 6
    invoke-virtual { v0, v1 }, Ljava/lang/reflect/Method;->setAccessible(Z)V
  :L2
  .line 7
    sput-boolean v1, Landroidx/core/graphics/drawable/a;->b:Z
  :L3
  .line 8
    sget-object v0, Landroidx/core/graphics/drawable/a;->a:Ljava/lang/reflect/Method;
    if-eqz v0, :L7
  :L4
    new-array v3, v1, [Ljava/lang/Object;
  .line 9
    invoke-static { p1 }, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object p1
    aput-object p1, v3, v2
    invoke-virtual { v0, p0, v3 }, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
  :L5
    return v1
  :L6
    const/4 p0, 0
  .line 10
    sput-object p0, Landroidx/core/graphics/drawable/a;->a:Ljava/lang/reflect/Method;
  :L7
    return v2
.end method

.method public static n(Landroid/graphics/drawable/Drawable;I)V
  .registers 4
  .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v1, 21
    if-lt v0, v1, :L0
  .line 2
    invoke-virtual { p0, p1 }, Landroid/graphics/drawable/Drawable;->setTint(I)V
    goto :L1
  :L0
  .line 3
    instance-of v0, p0, Landroidx/core/graphics/drawable/b;
    if-eqz v0, :L1
  .line 4
    check-cast p0, Landroidx/core/graphics/drawable/b;
    invoke-interface { p0, p1 }, Landroidx/core/graphics/drawable/b;->setTint(I)V
  :L1
    return-void
.end method

.method public static o(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V
  .registers 4
  .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v1, 21
    if-lt v0, v1, :L0
  .line 2
    invoke-virtual { p0, p1 }, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V
    goto :L1
  :L0
  .line 3
    instance-of v0, p0, Landroidx/core/graphics/drawable/b;
    if-eqz v0, :L1
  .line 4
    check-cast p0, Landroidx/core/graphics/drawable/b;
    invoke-interface { p0, p1 }, Landroidx/core/graphics/drawable/b;->setTintList(Landroid/content/res/ColorStateList;)V
  :L1
    return-void
.end method

.method public static p(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V
  .registers 4
  .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v1, 21
    if-lt v0, v1, :L0
  .line 2
    invoke-virtual { p0, p1 }, Landroid/graphics/drawable/Drawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V
    goto :L1
  :L0
  .line 3
    instance-of v0, p0, Landroidx/core/graphics/drawable/b;
    if-eqz v0, :L1
  .line 4
    check-cast p0, Landroidx/core/graphics/drawable/b;
    invoke-interface { p0, p1 }, Landroidx/core/graphics/drawable/b;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V
  :L1
    return-void
.end method

.method public static q(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "<T:",
      "Landroid/graphics/drawable/Drawable;",
      ">(",
      "Landroid/graphics/drawable/Drawable;",
      ")TT;"
    }
  .end annotation
  .registers 2
  .line 1
    instance-of v0, p0, Landroidx/core/graphics/drawable/c;
    if-eqz v0, :L0
  .line 2
    check-cast p0, Landroidx/core/graphics/drawable/c;
    invoke-interface { p0 }, Landroidx/core/graphics/drawable/c;->a()Landroid/graphics/drawable/Drawable;
    move-result-object p0
  :L0
    return-object p0
.end method

.method public static r(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
  .registers 3
  .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v1, 23
    if-lt v0, v1, :L0
    return-object p0
  :L0
    const/16 v1, 21
    if-lt v0, v1, :L2
  .line 2
    instance-of v0, p0, Landroidx/core/graphics/drawable/b;
    if-nez v0, :L1
  .line 3
    new-instance v0, Landroidx/core/graphics/drawable/e;
    invoke-direct { v0, p0 }, Landroidx/core/graphics/drawable/e;-><init>(Landroid/graphics/drawable/Drawable;)V
    return-object v0
  :L1
    return-object p0
  :L2
  .line 4
    instance-of v0, p0, Landroidx/core/graphics/drawable/b;
    if-nez v0, :L3
  .line 5
    new-instance v0, Landroidx/core/graphics/drawable/d;
    invoke-direct { v0, p0 }, Landroidx/core/graphics/drawable/d;-><init>(Landroid/graphics/drawable/Drawable;)V
    return-object v0
  :L3
    return-object p0
.end method
