.class Lc/g/d/j;
.super Ljava/lang/Object;
.source "SourceFile"

.annotation system Ldalvik/annotation/MemberClasses;
  value = {
    Lc/g/d/j$c;
  }
.end annotation

.field private a:Ljava/util/concurrent/ConcurrentHashMap;
  .annotation build Landroid/annotation/SuppressLint;
    value = {
      "BanConcurrentHashMap"
    }
  .end annotation
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "Ljava/util/concurrent/ConcurrentHashMap<",
      "Ljava/lang/Long;",
      "Landroidx/core/content/c/c$b;",
      ">;"
    }
  .end annotation
.end field

.method constructor <init>()V
  .registers 2
  .line 1
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
  .line 2
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;
    invoke-direct { v0 }, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V
    iput-object v0, p0, Lc/g/d/j;->a:Ljava/util/concurrent/ConcurrentHashMap;
    return-void
.end method

.method private a(Landroid/graphics/Typeface;Landroidx/core/content/c/c$b;)V
  .registers 7
  .line 1
    invoke-static { p1 }, Lc/g/d/j;->j(Landroid/graphics/Typeface;)J
    move-result-wide v0
    const-wide/16 v2, 0
    cmp-long p1, v0, v2
    if-eqz p1, :L0
  .line 2
    iget-object p1, p0, Lc/g/d/j;->a:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static { v0, v1 }, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    move-result-object v0
    invoke-virtual { p1, v0, p2 }, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
  :L0
    return-void
.end method

.method private f(Landroidx/core/content/c/c$b;I)Landroidx/core/content/c/c$c;
  .registers 4
  .line 1
    invoke-virtual { p1 }, Landroidx/core/content/c/c$b;->a()[Landroidx/core/content/c/c$c;
    move-result-object p1
    new-instance v0, Lc/g/d/j$b;
    invoke-direct { v0, p0 }, Lc/g/d/j$b;-><init>(Lc/g/d/j;)V
    invoke-static { p1, p2, v0 }, Lc/g/d/j;->g([Ljava/lang/Object;ILc/g/d/j$c;)Ljava/lang/Object;
    move-result-object p1
    check-cast p1, Landroidx/core/content/c/c$c;
    return-object p1
.end method

.method private static g([Ljava/lang/Object;ILc/g/d/j$c;)Ljava/lang/Object;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "<T:",
      "Ljava/lang/Object;",
      ">([TT;I",
      "Lc/g/d/j$c<",
      "TT;>;)TT;"
    }
  .end annotation
  .registers 13
    and-int/lit8 v0, p1, 1
    if-nez v0, :L0
    const/16 v0, 400
    goto :L1
  :L0
    const/16 v0, 700
  :L1
    and-int/lit8 p1, p1, 2
    const/4 v1, 0
    const/4 v2, 1
    if-eqz p1, :L2
    const/4 p1, 1
    goto :L3
  :L2
    const/4 p1, 0
  :L3
    const/4 v3, 0
    const v4, 2147483647
  .line 1
    array-length v5, p0
    const/4 v6, 0
  :L4
    if-ge v6, v5, :L9
    aget-object v7, p0, v6
  .line 2
    invoke-interface { p2, v7 }, Lc/g/d/j$c;->a(Ljava/lang/Object;)I
    move-result v8
    sub-int/2addr v8, v0
    invoke-static { v8 }, Ljava/lang/Math;->abs(I)I
    move-result v8
    mul-int/lit8 v8, v8, 2
  .line 3
    invoke-interface { p2, v7 }, Lc/g/d/j$c;->b(Ljava/lang/Object;)Z
    move-result v9
    if-ne v9, p1, :L5
    const/4 v9, 0
    goto :L6
  :L5
    const/4 v9, 1
  :L6
    add-int/2addr v8, v9
    if-eqz v3, :L7
    if-le v4, v8, :L8
  :L7
    move-object v3, v7
    move v4, v8
  :L8
    add-int/lit8 v6, v6, 1
    goto :L4
  :L9
    return-object v3
.end method

.method private static j(Landroid/graphics/Typeface;)J
  .catch Ljava/lang/NoSuchFieldException; { :L0 .. :L1 } :L1
  .catch Ljava/lang/IllegalAccessException; { :L0 .. :L1 } :L1
  .registers 5
    const-wide/16 v0, 0
    if-nez p0, :L0
    return-wide v0
  :L0
  .line 1
    const-class v2, Landroid/graphics/Typeface;
    const-string v3, "native_instance"
    invoke-virtual { v2, v3 }, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;
    move-result-object v2
    const/4 v3, 1
  .line 2
    invoke-virtual { v2, v3 }, Ljava/lang/reflect/Field;->setAccessible(Z)V
  .line 3
    invoke-virtual { v2, p0 }, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object p0
    check-cast p0, Ljava/lang/Number;
  .line 4
    invoke-virtual { p0 }, Ljava/lang/Number;->longValue()J
    move-result-wide v0
  :L1
    return-wide v0
.end method

.method public b(Landroid/content/Context;Landroidx/core/content/c/c$b;Landroid/content/res/Resources;I)Landroid/graphics/Typeface;
  .registers 7
  .line 1
    invoke-direct { p0, p2, p4 }, Lc/g/d/j;->f(Landroidx/core/content/c/c$b;I)Landroidx/core/content/c/c$c;
    move-result-object v0
    if-nez v0, :L0
    const/4 p1, 0
    return-object p1
  :L0
  .line 2
    invoke-virtual { v0 }, Landroidx/core/content/c/c$c;->b()I
    move-result v1
    invoke-virtual { v0 }, Landroidx/core/content/c/c$c;->a()Ljava/lang/String;
    move-result-object v0
  .line 3
    invoke-static { p1, p3, v1, v0, p4 }, Lc/g/d/d;->d(Landroid/content/Context;Landroid/content/res/Resources;ILjava/lang/String;I)Landroid/graphics/Typeface;
    move-result-object p1
  .line 4
    invoke-direct { p0, p1, p2 }, Lc/g/d/j;->a(Landroid/graphics/Typeface;Landroidx/core/content/c/c$b;)V
    return-object p1
.end method

.method public c(Landroid/content/Context;Landroid/os/CancellationSignal;[Lc/g/h/f$b;I)Landroid/graphics/Typeface;
  .catch Ljava/io/IOException; { :L1 .. :L2 } :L7
  .catchall { :L1 .. :L2 } :L5
  .catch Ljava/io/IOException; { :L2 .. :L3 } :L8
  .catchall { :L2 .. :L3 } :L4
  .registers 7
  .line 1
    array-length p2, p3
    const/4 v0, 0
    const/4 v1, 1
    if-ge p2, v1, :L0
    return-object v0
  :L0
  .line 2
    invoke-virtual { p0, p3, p4 }, Lc/g/d/j;->h([Lc/g/h/f$b;I)Lc/g/h/f$b;
    move-result-object p2
  :L1
  .line 3
    invoke-virtual { p1 }, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;
    move-result-object p3
    invoke-virtual { p2 }, Lc/g/h/f$b;->d()Landroid/net/Uri;
    move-result-object p2
    invoke-virtual { p3, p2 }, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    move-result-object p2
  :L2
  .line 4
    invoke-virtual { p0, p1, p2 }, Lc/g/d/j;->d(Landroid/content/Context;Ljava/io/InputStream;)Landroid/graphics/Typeface;
    move-result-object p1
  :L3
  .line 5
    invoke-static { p2 }, Lc/g/d/k;->a(Ljava/io/Closeable;)V
    return-object p1
  :L4
    move-exception p1
    move-object v0, p2
    goto :L6
  :L5
    move-exception p1
  :L6
    invoke-static { v0 }, Lc/g/d/k;->a(Ljava/io/Closeable;)V
  .line 6
    throw p1
  :L7
    move-object p2, v0
  :L8
  .line 7
    invoke-static { p2 }, Lc/g/d/k;->a(Ljava/io/Closeable;)V
    return-object v0
.end method

.method protected d(Landroid/content/Context;Ljava/io/InputStream;)Landroid/graphics/Typeface;
  .catch Ljava/lang/RuntimeException; { :L0 .. :L1 } :L5
  .catchall { :L0 .. :L1 } :L4
  .catch Ljava/lang/RuntimeException; { :L2 .. :L3 } :L5
  .catchall { :L2 .. :L3 } :L4
  .registers 4
  .line 1
    invoke-static { p1 }, Lc/g/d/k;->e(Landroid/content/Context;)Ljava/io/File;
    move-result-object p1
    const/4 v0, 0
    if-nez p1, :L0
    return-object v0
  :L0
  .line 2
    invoke-static { p1, p2 }, Lc/g/d/k;->d(Ljava/io/File;Ljava/io/InputStream;)Z
    move-result p2
  :L1
    if-nez p2, :L2
  .line 3
    invoke-virtual { p1 }, Ljava/io/File;->delete()Z
    return-object v0
  :L2
  .line 4
    invoke-virtual { p1 }, Ljava/io/File;->getPath()Ljava/lang/String;
    move-result-object p2
    invoke-static { p2 }, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;
    move-result-object p2
  :L3
  .line 5
    invoke-virtual { p1 }, Ljava/io/File;->delete()Z
    return-object p2
  :L4
    move-exception p2
    invoke-virtual { p1 }, Ljava/io/File;->delete()Z
  .line 6
    throw p2
  :L5
  .line 7
    invoke-virtual { p1 }, Ljava/io/File;->delete()Z
    return-object v0
.end method

.method public e(Landroid/content/Context;Landroid/content/res/Resources;ILjava/lang/String;I)Landroid/graphics/Typeface;
  .catch Ljava/lang/RuntimeException; { :L0 .. :L1 } :L5
  .catchall { :L0 .. :L1 } :L4
  .catch Ljava/lang/RuntimeException; { :L2 .. :L3 } :L5
  .catchall { :L2 .. :L3 } :L4
  .registers 6
  .line 1
    invoke-static { p1 }, Lc/g/d/k;->e(Landroid/content/Context;)Ljava/io/File;
    move-result-object p1
    const/4 p4, 0
    if-nez p1, :L0
    return-object p4
  :L0
  .line 2
    invoke-static { p1, p2, p3 }, Lc/g/d/k;->c(Ljava/io/File;Landroid/content/res/Resources;I)Z
    move-result p2
  :L1
    if-nez p2, :L2
  .line 3
    invoke-virtual { p1 }, Ljava/io/File;->delete()Z
    return-object p4
  :L2
  .line 4
    invoke-virtual { p1 }, Ljava/io/File;->getPath()Ljava/lang/String;
    move-result-object p2
    invoke-static { p2 }, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;
    move-result-object p2
  :L3
  .line 5
    invoke-virtual { p1 }, Ljava/io/File;->delete()Z
    return-object p2
  :L4
    move-exception p2
    invoke-virtual { p1 }, Ljava/io/File;->delete()Z
  .line 6
    throw p2
  :L5
  .line 7
    invoke-virtual { p1 }, Ljava/io/File;->delete()Z
    return-object p4
.end method

.method protected h([Lc/g/h/f$b;I)Lc/g/h/f$b;
  .registers 4
  .line 1
    new-instance v0, Lc/g/d/j$a;
    invoke-direct { v0, p0 }, Lc/g/d/j$a;-><init>(Lc/g/d/j;)V
    invoke-static { p1, p2, v0 }, Lc/g/d/j;->g([Ljava/lang/Object;ILc/g/d/j$c;)Ljava/lang/Object;
    move-result-object p1
    check-cast p1, Lc/g/h/f$b;
    return-object p1
.end method

.method i(Landroid/graphics/Typeface;)Landroidx/core/content/c/c$b;
  .registers 6
  .line 1
    invoke-static { p1 }, Lc/g/d/j;->j(Landroid/graphics/Typeface;)J
    move-result-wide v0
    const-wide/16 v2, 0
    cmp-long p1, v0, v2
    if-nez p1, :L0
    const/4 p1, 0
    return-object p1
  :L0
  .line 2
    iget-object p1, p0, Lc/g/d/j;->a:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static { v0, v1 }, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    move-result-object v0
    invoke-virtual { p1, v0 }, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object p1
    check-cast p1, Landroidx/core/content/c/c$b;
    return-object p1
.end method
