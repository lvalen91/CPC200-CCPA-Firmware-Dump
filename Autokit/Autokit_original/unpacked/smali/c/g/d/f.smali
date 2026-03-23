.class Lc/g/d/f;
.super Lc/g/d/j;
.source "SourceFile"

.field private final static b:Ljava/lang/Class;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "Ljava/lang/Class<",
      "*>;"
    }
  .end annotation
.end field

.field private final static c:Ljava/lang/reflect/Constructor;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "Ljava/lang/reflect/Constructor<",
      "*>;"
    }
  .end annotation
.end field

.field private final static d:Ljava/lang/reflect/Method;

.field private final static e:Ljava/lang/reflect/Method;

.method static constructor <clinit>()V
  .catch Ljava/lang/ClassNotFoundException; { :L0 .. :L1 } :L3
  .catch Ljava/lang/NoSuchMethodException; { :L0 .. :L1 } :L2
  .registers 11
    const/4 v0, 0
  :L0
    const-string v1, "android.graphics.FontFamily"
  .line 1
    invoke-static { v1 }, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    move-result-object v1
    const/4 v2, 0
    new-array v3, v2, [Ljava/lang/Class;
  .line 2
    invoke-virtual { v1, v3 }, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    move-result-object v3
    const-string v4, "addFontWeightStyle"
    const/4 v5, 5
    new-array v5, v5, [Ljava/lang/Class;
  .line 3
    const-class v6, Ljava/nio/ByteBuffer;
    aput-object v6, v5, v2
    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;
    const/4 v7, 1
    aput-object v6, v5, v7
    const/4 v6, 2
    const-class v8, Ljava/util/List;
    aput-object v8, v5, v6
    const/4 v6, 3
    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;
    aput-object v8, v5, v6
    const/4 v6, 4
    sget-object v8, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;
    aput-object v8, v5, v6
    invoke-virtual { v1, v4, v5 }, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    move-result-object v4
  .line 4
    invoke-static { v1, v7 }, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;
    move-result-object v5
  .line 5
    const-class v6, Landroid/graphics/Typeface;
    const-string v8, "createFromFamiliesWithDefault"
    new-array v7, v7, [Ljava/lang/Class;
  .line 6
    invoke-virtual { v5 }, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    move-result-object v5
    aput-object v5, v7, v2
  .line 7
    invoke-virtual { v6, v8, v7 }, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    move-result-object v0
  :L1
    move-object v2, v0
    move-object v0, v3
    goto :L5
  :L2
    move-exception v1
    goto :L4
  :L3
    move-exception v1
  :L4
  .line 8
    invoke-virtual { v1 }, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    move-result-object v1
    invoke-virtual { v1 }, Ljava/lang/Class;->getName()Ljava/lang/String;
    move-object v1, v0
    move-object v2, v1
    move-object v4, v2
  :L5
  .line 9
    sput-object v0, Lc/g/d/f;->c:Ljava/lang/reflect/Constructor;
  .line 10
    sput-object v1, Lc/g/d/f;->b:Ljava/lang/Class;
  .line 11
    sput-object v4, Lc/g/d/f;->d:Ljava/lang/reflect/Method;
  .line 12
    sput-object v2, Lc/g/d/f;->e:Ljava/lang/reflect/Method;
    return-void
.end method

.method constructor <init>()V
  .registers 1
  .line 1
    invoke-direct { p0 }, Lc/g/d/j;-><init>()V
    return-void
.end method

.method private static k(Ljava/lang/Object;Ljava/nio/ByteBuffer;IIZ)Z
  .catch Ljava/lang/IllegalAccessException; { :L0 .. :L1 } :L2
  .catch Ljava/lang/reflect/InvocationTargetException; { :L0 .. :L1 } :L2
  .registers 8
    const/4 v0, 0
  :L0
  .line 1
    sget-object v1, Lc/g/d/f;->d:Ljava/lang/reflect/Method;
    const/4 v2, 5
    new-array v2, v2, [Ljava/lang/Object;
    aput-object p1, v2, v0
    const/4 p1, 1
  .line 2
    invoke-static { p2 }, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object p2
    aput-object p2, v2, p1
    const/4 p1, 2
    const/4 p2, 0
    aput-object p2, v2, p1
    const/4 p1, 3
    invoke-static { p3 }, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object p2
    aput-object p2, v2, p1
    const/4 p1, 4
    invoke-static { p4 }, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    move-result-object p2
    aput-object p2, v2, p1
  .line 3
    invoke-virtual { v1, p0, v2 }, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object p0
    check-cast p0, Ljava/lang/Boolean;
  .line 4
    invoke-virtual { p0 }, Ljava/lang/Boolean;->booleanValue()Z
    move-result p0
  :L1
    return p0
  :L2
    return v0
.end method

.method private static l(Ljava/lang/Object;)Landroid/graphics/Typeface;
  .catch Ljava/lang/IllegalAccessException; { :L0 .. :L1 } :L2
  .catch Ljava/lang/reflect/InvocationTargetException; { :L0 .. :L1 } :L2
  .registers 5
    const/4 v0, 0
  :L0
  .line 1
    sget-object v1, Lc/g/d/f;->b:Ljava/lang/Class;
    const/4 v2, 1
    invoke-static { v1, v2 }, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;
    move-result-object v1
    const/4 v3, 0
  .line 2
    invoke-static { v1, v3, p0 }, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V
  .line 3
    sget-object p0, Lc/g/d/f;->e:Ljava/lang/reflect/Method;
    new-array v2, v2, [Ljava/lang/Object;
    aput-object v1, v2, v3
    invoke-virtual { p0, v0, v2 }, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object p0
    check-cast p0, Landroid/graphics/Typeface;
  :L1
    return-object p0
  :L2
    return-object v0
.end method

.method public static m()Z
  .registers 2
  .line 1
    sget-object v0, Lc/g/d/f;->d:Ljava/lang/reflect/Method;
  .line 2
    sget-object v0, Lc/g/d/f;->d:Ljava/lang/reflect/Method;
    if-eqz v0, :L0
    const/4 v0, 1
    goto :L1
  :L0
    const/4 v0, 0
  :L1
    return v0
.end method

.method private static n()Ljava/lang/Object;
  .catch Ljava/lang/IllegalAccessException; { :L0 .. :L1 } :L2
  .catch Ljava/lang/InstantiationException; { :L0 .. :L1 } :L2
  .catch Ljava/lang/reflect/InvocationTargetException; { :L0 .. :L1 } :L2
  .registers 2
  :L0
  .line 1
    sget-object v0, Lc/g/d/f;->c:Ljava/lang/reflect/Constructor;
    const/4 v1, 0
    new-array v1, v1, [Ljava/lang/Object;
    invoke-virtual { v0, v1 }, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object v0
  :L1
    return-object v0
  :L2
    const/4 v0, 0
    return-object v0
.end method

.method public b(Landroid/content/Context;Landroidx/core/content/c/c$b;Landroid/content/res/Resources;I)Landroid/graphics/Typeface;
  .registers 12
  .line 1
    invoke-static { }, Lc/g/d/f;->n()Ljava/lang/Object;
    move-result-object p4
    const/4 v0, 0
    if-nez p4, :L0
    return-object v0
  :L0
  .line 2
    invoke-virtual { p2 }, Landroidx/core/content/c/c$b;->a()[Landroidx/core/content/c/c$c;
    move-result-object p2
    array-length v1, p2
    const/4 v2, 0
  :L1
    if-ge v2, v1, :L4
    aget-object v3, p2, v2
  .line 3
    invoke-virtual { v3 }, Landroidx/core/content/c/c$c;->b()I
    move-result v4
    invoke-static { p1, p3, v4 }, Lc/g/d/k;->b(Landroid/content/Context;Landroid/content/res/Resources;I)Ljava/nio/ByteBuffer;
    move-result-object v4
    if-nez v4, :L2
    return-object v0
  :L2
  .line 4
    invoke-virtual { v3 }, Landroidx/core/content/c/c$c;->c()I
    move-result v5
    invoke-virtual { v3 }, Landroidx/core/content/c/c$c;->e()I
    move-result v6
    invoke-virtual { v3 }, Landroidx/core/content/c/c$c;->f()Z
    move-result v3
    invoke-static { p4, v4, v5, v6, v3 }, Lc/g/d/f;->k(Ljava/lang/Object;Ljava/nio/ByteBuffer;IIZ)Z
    move-result v3
    if-nez v3, :L3
    return-object v0
  :L3
    add-int/lit8 v2, v2, 1
    goto :L1
  :L4
  .line 5
    invoke-static { p4 }, Lc/g/d/f;->l(Ljava/lang/Object;)Landroid/graphics/Typeface;
    move-result-object p1
    return-object p1
.end method

.method public c(Landroid/content/Context;Landroid/os/CancellationSignal;[Lc/g/h/f$b;I)Landroid/graphics/Typeface;
  .registers 14
  .line 1
    invoke-static { }, Lc/g/d/f;->n()Ljava/lang/Object;
    move-result-object v0
    const/4 v1, 0
    if-nez v0, :L0
    return-object v1
  :L0
  .line 2
    new-instance v2, Lc/d/g;
    invoke-direct { v2 }, Lc/d/g;-><init>()V
  .line 3
    array-length v3, p3
    const/4 v4, 0
  :L1
    if-ge v4, v3, :L5
    aget-object v5, p3, v4
  .line 4
    invoke-virtual { v5 }, Lc/g/h/f$b;->d()Landroid/net/Uri;
    move-result-object v6
  .line 5
    invoke-virtual { v2, v6 }, Lc/d/g;->get(Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object v7
    check-cast v7, Ljava/nio/ByteBuffer;
    if-nez v7, :L2
  .line 6
    invoke-static { p1, p2, v6 }, Lc/g/d/k;->f(Landroid/content/Context;Landroid/os/CancellationSignal;Landroid/net/Uri;)Ljava/nio/ByteBuffer;
    move-result-object v7
  .line 7
    invoke-virtual { v2, v6, v7 }, Lc/d/g;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
  :L2
    if-nez v7, :L3
    return-object v1
  :L3
  .line 8
    invoke-virtual { v5 }, Lc/g/h/f$b;->c()I
    move-result v6
    invoke-virtual { v5 }, Lc/g/h/f$b;->e()I
    move-result v8
  .line 9
    invoke-virtual { v5 }, Lc/g/h/f$b;->f()Z
    move-result v5
  .line 10
    invoke-static { v0, v7, v6, v8, v5 }, Lc/g/d/f;->k(Ljava/lang/Object;Ljava/nio/ByteBuffer;IIZ)Z
    move-result v5
    if-nez v5, :L4
    return-object v1
  :L4
    add-int/lit8 v4, v4, 1
    goto :L1
  :L5
  .line 11
    invoke-static { v0 }, Lc/g/d/f;->l(Ljava/lang/Object;)Landroid/graphics/Typeface;
    move-result-object p1
    if-nez p1, :L6
    return-object v1
  :L6
  .line 12
    invoke-static { p1, p4 }, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;
    move-result-object p1
    return-object p1
.end method
