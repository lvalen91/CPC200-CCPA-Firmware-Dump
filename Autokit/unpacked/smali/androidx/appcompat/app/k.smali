.class Landroidx/appcompat/app/k;
.super Ljava/lang/Object;
.source "SourceFile"

.field private static a:Ljava/lang/reflect/Field;

.field private static b:Z

.field private static c:Ljava/lang/Class;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "Ljava/lang/Class<",
      "*>;"
    }
  .end annotation
.end field

.field private static d:Z

.field private static e:Ljava/lang/reflect/Field;

.field private static f:Z

.field private static g:Ljava/lang/reflect/Field;

.field private static h:Z

.method static a(Landroid/content/res/Resources;)V
  .registers 3
  .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v1, 28
    if-lt v0, v1, :L0
    return-void
  :L0
    const/16 v1, 24
    if-lt v0, v1, :L1
  .line 2
    invoke-static { p0 }, Landroidx/appcompat/app/k;->d(Landroid/content/res/Resources;)V
    goto :L3
  :L1
    const/16 v1, 23
    if-lt v0, v1, :L2
  .line 3
    invoke-static { p0 }, Landroidx/appcompat/app/k;->c(Landroid/content/res/Resources;)V
    goto :L3
  :L2
    const/16 v1, 21
    if-lt v0, v1, :L3
  .line 4
    invoke-static { p0 }, Landroidx/appcompat/app/k;->b(Landroid/content/res/Resources;)V
  :L3
    return-void
.end method

.method private static b(Landroid/content/res/Resources;)V
  .catch Ljava/lang/NoSuchFieldException; { :L0 .. :L1 } :L1
  .catch Ljava/lang/IllegalAccessException; { :L3 .. :L4 } :L5
  .registers 4
  .line 1
    sget-boolean v0, Landroidx/appcompat/app/k;->b:Z
    if-nez v0, :L2
    const/4 v0, 1
  :L0
  .line 2
    const-class v1, Landroid/content/res/Resources;
    const-string v2, "mDrawableCache"
    invoke-virtual { v1, v2 }, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;
    move-result-object v1
    sput-object v1, Landroidx/appcompat/app/k;->a:Ljava/lang/reflect/Field;
  .line 3
    invoke-virtual { v1, v0 }, Ljava/lang/reflect/Field;->setAccessible(Z)V
  :L1
  .line 4
    sput-boolean v0, Landroidx/appcompat/app/k;->b:Z
  :L2
  .line 5
    sget-object v0, Landroidx/appcompat/app/k;->a:Ljava/lang/reflect/Field;
    if-eqz v0, :L7
    const/4 v1, 0
  :L3
  .line 6
    invoke-virtual { v0, p0 }, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object p0
    check-cast p0, Ljava/util/Map;
  :L4
    move-object v1, p0
    goto :L6
  :L5
    nop
  :L6
    if-eqz v1, :L7
  .line 7
    invoke-interface { v1 }, Ljava/util/Map;->clear()V
  :L7
    return-void
.end method

.method private static c(Landroid/content/res/Resources;)V
  .catch Ljava/lang/NoSuchFieldException; { :L0 .. :L1 } :L1
  .catch Ljava/lang/IllegalAccessException; { :L3 .. :L4 } :L5
  .registers 4
  .line 1
    sget-boolean v0, Landroidx/appcompat/app/k;->b:Z
    if-nez v0, :L2
    const/4 v0, 1
  :L0
  .line 2
    const-class v1, Landroid/content/res/Resources;
    const-string v2, "mDrawableCache"
    invoke-virtual { v1, v2 }, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;
    move-result-object v1
    sput-object v1, Landroidx/appcompat/app/k;->a:Ljava/lang/reflect/Field;
  .line 3
    invoke-virtual { v1, v0 }, Ljava/lang/reflect/Field;->setAccessible(Z)V
  :L1
  .line 4
    sput-boolean v0, Landroidx/appcompat/app/k;->b:Z
  :L2
    const/4 v0, 0
  .line 5
    sget-object v1, Landroidx/appcompat/app/k;->a:Ljava/lang/reflect/Field;
    if-eqz v1, :L6
  :L3
  .line 6
    invoke-virtual { v1, p0 }, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object v0
  :L4
    goto :L6
  :L5
    nop
  :L6
    if-nez v0, :L7
    return-void
  :L7
  .line 7
    invoke-static { v0 }, Landroidx/appcompat/app/k;->e(Ljava/lang/Object;)V
    return-void
.end method

.method private static d(Landroid/content/res/Resources;)V
  .catch Ljava/lang/NoSuchFieldException; { :L0 .. :L1 } :L1
  .catch Ljava/lang/IllegalAccessException; { :L4 .. :L5 } :L6
  .catch Ljava/lang/NoSuchFieldException; { :L9 .. :L10 } :L10
  .catch Ljava/lang/IllegalAccessException; { :L12 .. :L13 } :L14
  .registers 5
  .line 1
    sget-boolean v0, Landroidx/appcompat/app/k;->h:Z
    const/4 v1, 1
    if-nez v0, :L2
  :L0
  .line 2
    const-class v0, Landroid/content/res/Resources;
    const-string v2, "mResourcesImpl"
    invoke-virtual { v0, v2 }, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;
    move-result-object v0
    sput-object v0, Landroidx/appcompat/app/k;->g:Ljava/lang/reflect/Field;
  .line 3
    invoke-virtual { v0, v1 }, Ljava/lang/reflect/Field;->setAccessible(Z)V
  :L1
  .line 4
    sput-boolean v1, Landroidx/appcompat/app/k;->h:Z
  :L2
  .line 5
    sget-object v0, Landroidx/appcompat/app/k;->g:Ljava/lang/reflect/Field;
    if-nez v0, :L3
    return-void
  :L3
    const/4 v2, 0
  :L4
  .line 6
    invoke-virtual { v0, p0 }, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object p0
  :L5
    goto :L7
  :L6
    move-object p0, v2
  :L7
    if-nez p0, :L8
    return-void
  :L8
  .line 7
    sget-boolean v0, Landroidx/appcompat/app/k;->b:Z
    if-nez v0, :L11
  :L9
  .line 8
    invoke-virtual { p0 }, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    move-result-object v0
    const-string v3, "mDrawableCache"
    invoke-virtual { v0, v3 }, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;
    move-result-object v0
    sput-object v0, Landroidx/appcompat/app/k;->a:Ljava/lang/reflect/Field;
  .line 9
    invoke-virtual { v0, v1 }, Ljava/lang/reflect/Field;->setAccessible(Z)V
  :L10
  .line 10
    sput-boolean v1, Landroidx/appcompat/app/k;->b:Z
  :L11
  .line 11
    sget-object v0, Landroidx/appcompat/app/k;->a:Ljava/lang/reflect/Field;
    if-eqz v0, :L15
  :L12
  .line 12
    invoke-virtual { v0, p0 }, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object v2
  :L13
    goto :L15
  :L14
    nop
  :L15
    if-eqz v2, :L16
  .line 13
    invoke-static { v2 }, Landroidx/appcompat/app/k;->e(Ljava/lang/Object;)V
  :L16
    return-void
.end method

.method private static e(Ljava/lang/Object;)V
  .catch Ljava/lang/ClassNotFoundException; { :L0 .. :L1 } :L1
  .catch Ljava/lang/NoSuchFieldException; { :L4 .. :L5 } :L5
  .catch Ljava/lang/IllegalAccessException; { :L8 .. :L9 } :L10
  .registers 4
  .line 1
    sget-boolean v0, Landroidx/appcompat/app/k;->d:Z
    const/4 v1, 1
    if-nez v0, :L2
  :L0
    const-string v0, "android.content.res.ThemedResourceCache"
  .line 2
    invoke-static { v0 }, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    move-result-object v0
    sput-object v0, Landroidx/appcompat/app/k;->c:Ljava/lang/Class;
  :L1
  .line 3
    sput-boolean v1, Landroidx/appcompat/app/k;->d:Z
  :L2
  .line 4
    sget-object v0, Landroidx/appcompat/app/k;->c:Ljava/lang/Class;
    if-nez v0, :L3
    return-void
  :L3
  .line 5
    sget-boolean v2, Landroidx/appcompat/app/k;->f:Z
    if-nez v2, :L6
  :L4
    const-string v2, "mUnthemedEntries"
  .line 6
    invoke-virtual { v0, v2 }, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;
    move-result-object v0
    sput-object v0, Landroidx/appcompat/app/k;->e:Ljava/lang/reflect/Field;
  .line 7
    invoke-virtual { v0, v1 }, Ljava/lang/reflect/Field;->setAccessible(Z)V
  :L5
  .line 8
    sput-boolean v1, Landroidx/appcompat/app/k;->f:Z
  :L6
  .line 9
    sget-object v0, Landroidx/appcompat/app/k;->e:Ljava/lang/reflect/Field;
    if-nez v0, :L7
    return-void
  :L7
    const/4 v1, 0
  :L8
  .line 10
    invoke-virtual { v0, p0 }, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object p0
    check-cast p0, Landroid/util/LongSparseArray;
  :L9
    move-object v1, p0
    goto :L11
  :L10
    nop
  :L11
    if-eqz v1, :L12
  .line 11
    invoke-virtual { v1 }, Landroid/util/LongSparseArray;->clear()V
  :L12
    return-void
.end method
