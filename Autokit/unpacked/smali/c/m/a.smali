.class public final Lc/m/a;
.super Ljava/lang/Object;
.source "SourceFile"

.annotation system Ldalvik/annotation/MemberClasses;
  value = {
    Lc/m/a$c;,
    Lc/m/a$a;,
    Lc/m/a$b;
  }
.end annotation

.field private final static a:Ljava/util/Set;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "Ljava/util/Set<",
      "Ljava/io/File;",
      ">;"
    }
  .end annotation
.end field

.field private final static b:Z

.method static constructor <clinit>()V
  .registers 2
  .line 1
    new-instance v0, Ljava/util/HashSet;
    invoke-direct { v0 }, Ljava/util/HashSet;-><init>()V
    sput-object v0, Lc/m/a;->a:Ljava/util/Set;
    const-string v0, "java.vm.version"
  .line 2
    invoke-static { v0 }, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v0
    invoke-static { v0 }, Lc/m/a;->n(Ljava/lang/String;)Z
    move-result v0
    sput-boolean v0, Lc/m/a;->b:Z
    return-void
.end method

.method public constructor <init>()V
  .registers 2
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method static synthetic a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/reflect/Field;
  .registers 2
  .line 1
    invoke-static { p0, p1 }, Lc/m/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/reflect/Field;
    move-result-object p0
    return-object p0
.end method

.method static synthetic b(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V
  .registers 3
  .line 1
    invoke-static { p0, p1, p2 }, Lc/m/a;->f(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V
    return-void
.end method

.method static synthetic c(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
  .registers 3
  .line 1
    invoke-static { p0, p1, p2 }, Lc/m/a;->h(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    move-result-object p0
    return-object p0
.end method

.method private static d(Landroid/content/Context;)V
  .registers 8
  .line 1
    new-instance v0, Ljava/io/File;
    invoke-virtual { p0 }, Landroid/content/Context;->getFilesDir()Ljava/io/File;
    move-result-object p0
    const-string v1, "secondary-dexes"
    invoke-direct { v0, p0, v1 }, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
  .line 2
    invoke-virtual { v0 }, Ljava/io/File;->isDirectory()Z
    move-result p0
    if-eqz p0, :L6
  .line 3
    new-instance p0, Ljava/lang/StringBuilder;
    invoke-direct { p0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "Clearing old secondary dex dir ("
    invoke-virtual { p0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/io/File;->getPath()Ljava/lang/String;
    move-result-object v1
    invoke-virtual { p0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string v1, ")."
    invoke-virtual { p0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { p0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
  .line 4
    invoke-virtual { v0 }, Ljava/io/File;->listFiles()[Ljava/io/File;
    move-result-object p0
    if-nez p0, :L0
  .line 5
    new-instance p0, Ljava/lang/StringBuilder;
    invoke-direct { p0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v2, "Failed to list secondary dex dir content ("
    invoke-virtual { p0, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/io/File;->getPath()Ljava/lang/String;
    move-result-object v0
    invoke-virtual { p0, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { p0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { p0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    return-void
  :L0
  .line 6
    array-length v1, p0
    const/4 v2, 0
  :L1
    if-ge v2, v1, :L4
    aget-object v3, p0, v2
  .line 7
    new-instance v4, Ljava/lang/StringBuilder;
    invoke-direct { v4 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v5, "Trying to delete old file "
    invoke-virtual { v4, v5 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v3 }, Ljava/io/File;->getPath()Ljava/lang/String;
    move-result-object v5
    invoke-virtual { v4, v5 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string v5, " of size "
    invoke-virtual { v4, v5 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
  .line 8
    invoke-virtual { v3 }, Ljava/io/File;->length()J
    move-result-wide v5
    invoke-virtual { v4, v5, v6 }, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
    invoke-virtual { v4 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
  .line 9
    invoke-virtual { v3 }, Ljava/io/File;->delete()Z
    move-result v4
    if-nez v4, :L2
  .line 10
    new-instance v4, Ljava/lang/StringBuilder;
    invoke-direct { v4 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v5, "Failed to delete old file "
    invoke-virtual { v4, v5 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v3 }, Ljava/io/File;->getPath()Ljava/lang/String;
    move-result-object v3
    invoke-virtual { v4, v3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v4 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    goto :L3
  :L2
  .line 11
    new-instance v4, Ljava/lang/StringBuilder;
    invoke-direct { v4 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v5, "Deleted old file "
    invoke-virtual { v4, v5 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v3 }, Ljava/io/File;->getPath()Ljava/lang/String;
    move-result-object v3
    invoke-virtual { v4, v3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v4 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
  :L3
    add-int/lit8 v2, v2, 1
    goto :L1
  :L4
  .line 12
    invoke-virtual { v0 }, Ljava/io/File;->delete()Z
    move-result p0
    if-nez p0, :L5
  .line 13
    new-instance p0, Ljava/lang/StringBuilder;
    invoke-direct { p0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "Failed to delete secondary dex dir "
    invoke-virtual { p0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/io/File;->getPath()Ljava/lang/String;
    move-result-object v0
    invoke-virtual { p0, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { p0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    goto :L6
  :L5
  .line 14
    new-instance p0, Ljava/lang/StringBuilder;
    invoke-direct { p0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "Deleted old secondary dex dir "
    invoke-virtual { p0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/io/File;->getPath()Ljava/lang/String;
    move-result-object v0
    invoke-virtual { p0, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { p0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
  :L6
    return-void
.end method

.method private static e(Landroid/content/Context;Ljava/io/File;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Z)V
  .catchall { :L0 .. :L3 } :L22
  .catchall { :L4 .. :L5 } :L5
  .catchall { :L5 .. :L6 } :L22
  .catchall { :L7 .. :L8 } :L19
  .catch Ljava/io/IOException; { :L8 .. :L9 } :L10
  .catchall { :L8 .. :L9 } :L19
  .catchall { :L11 .. :L12 } :L19
  .catch Ljava/io/IOException; { :L12 .. :L13 } :L14
  .catchall { :L12 .. :L13 } :L22
  .catchall { :L16 .. :L18 } :L22
  .catchall { :L18 .. :L19 } :L19
  .catch Ljava/io/IOException; { :L20 .. :L21 } :L21
  .catchall { :L20 .. :L21 } :L22
  .catchall { :L21 .. :L23 } :L22
  .registers 10
  .line 1
    sget-object v0, Lc/m/a;->a:Ljava/util/Set;
    monitor-enter v0
  :L0
  .line 2
    sget-object v1, Lc/m/a;->a:Ljava/util/Set;
    invoke-interface { v1, p1 }, Ljava/util/Set;->contains(Ljava/lang/Object;)Z
    move-result v1
    if-eqz v1, :L1
  .line 3
    monitor-exit v0
    return-void
  :L1
  .line 4
    sget-object v1, Lc/m/a;->a:Ljava/util/Set;
    invoke-interface { v1, p1 }, Ljava/util/Set;->add(Ljava/lang/Object;)Z
  .line 5
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v2, 20
    if-le v1, v2, :L2
  .line 6
    new-instance v1, Ljava/lang/StringBuilder;
    invoke-direct { v1 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v3, "MultiDex is not guaranteed to work in SDK version "
    invoke-virtual { v1, v3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I
    invoke-virtual { v1, v3 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    const-string v3, ": SDK version higher than "
    invoke-virtual { v1, v3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    const-string v2, " should be backed by "
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string v2, "runtime with built-in multidex capabilty but it's not the "
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string v2, "case here: java.vm.version=\""
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string v2, "java.vm.version"
  .line 7
    invoke-static { v2 }, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v2
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string v2, "\""
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
  :L2
  .line 8
    invoke-static { p0 }, Lc/m/a;->j(Landroid/content/Context;)Ljava/lang/ClassLoader;
    move-result-object v1
    if-nez v1, :L4
  .line 9
    monitor-exit v0
  :L3
    return-void
  :L4
  .line 10
    invoke-static { p0 }, Lc/m/a;->d(Landroid/content/Context;)V
  :L5
  .line 11
    invoke-static { p0, p2, p3 }, Lc/m/a;->k(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;)Ljava/io/File;
    move-result-object p2
  .line 12
    new-instance p3, Lc/m/b;
    invoke-direct { p3, p1, p2 }, Lc/m/b;-><init>(Ljava/io/File;Ljava/io/File;)V
  :L6
    const/4 p1, 0
    const/4 v2, 0
  :L7
  .line 13
    invoke-virtual { p3, p0, p4, v2 }, Lc/m/b;->h(Landroid/content/Context;Ljava/lang/String;Z)Ljava/util/List;
    move-result-object v2
  :L8
  .line 14
    invoke-static { v1, p2, v2 }, Lc/m/a;->m(Ljava/lang/ClassLoader;Ljava/io/File;Ljava/util/List;)V
  :L9
    goto :L12
  :L10
    move-exception v2
    if-eqz p5, :L18
    const/4 p5, 1
  :L11
  .line 15
    invoke-virtual { p3, p0, p4, p5 }, Lc/m/b;->h(Landroid/content/Context;Ljava/lang/String;Z)Ljava/util/List;
    move-result-object p0
  .line 16
    invoke-static { v1, p2, p0 }, Lc/m/a;->m(Ljava/lang/ClassLoader;Ljava/io/File;Ljava/util/List;)V
  :L12
  .line 17
    invoke-virtual { p3 }, Lc/m/b;->close()V
  :L13
    goto :L15
  :L14
    move-exception p1
  :L15
    if-nez p1, :L17
  :L16
  .line 18
    monitor-exit v0
    return-void
  :L17
  .line 19
    throw p1
  :L18
  .line 20
    throw v2
  :L19
    move-exception p0
  :L20
  .line 21
    invoke-virtual { p3 }, Lc/m/b;->close()V
  :L21
  .line 22
    throw p0
  :L22
    move-exception p0
  .line 23
    monitor-exit v0
  :L23
    throw p0
.end method

.method private static f(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V
  .registers 7
  .line 1
    invoke-static { p0, p1 }, Lc/m/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/reflect/Field;
    move-result-object p1
  .line 2
    invoke-virtual { p1, p0 }, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object v0
    check-cast v0, [Ljava/lang/Object;
  .line 3
    invoke-virtual { v0 }, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    move-result-object v1
    invoke-virtual { v1 }, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;
    move-result-object v1
    array-length v2, v0
    array-length v3, p2
    add-int/2addr v2, v3
  .line 4
    invoke-static { v1, v2 }, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;
    move-result-object v1
    check-cast v1, [Ljava/lang/Object;
  .line 5
    array-length v2, v0
    const/4 v3, 0
    invoke-static { v0, v3, v1, v3, v2 }, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
  .line 6
    array-length v0, v0
    array-length v2, p2
    invoke-static { p2, v3, v1, v0, v2 }, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
  .line 7
    invoke-virtual { p1, p0, v1 }, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    return-void
.end method

.method private static g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/reflect/Field;
  .catch Ljava/lang/NoSuchFieldException; { :L1 .. :L2 } :L3
  .registers 5
  .line 1
    invoke-virtual { p0 }, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    move-result-object v0
  :L0
    if-eqz v0, :L4
  :L1
  .line 2
    invoke-virtual { v0, p1 }, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;
    move-result-object v1
  .line 3
    invoke-virtual { v1 }, Ljava/lang/reflect/Field;->isAccessible()Z
    move-result v2
    if-nez v2, :L2
    const/4 v2, 1
  .line 4
    invoke-virtual { v1, v2 }, Ljava/lang/reflect/Field;->setAccessible(Z)V
  :L2
    return-object v1
  :L3
  .line 5
    invoke-virtual { v0 }, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;
    move-result-object v0
    goto :L0
  :L4
  .line 6
    new-instance v0, Ljava/lang/NoSuchFieldException;
    new-instance v1, Ljava/lang/StringBuilder;
    invoke-direct { v1 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v2, "Field "
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v1, p1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string p1, " not found in "
    invoke-virtual { v1, p1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { p0 }, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    move-result-object p0
    invoke-virtual { v1, p0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    invoke-virtual { v1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p0
    invoke-direct { v0, p0 }, Ljava/lang/NoSuchFieldException;-><init>(Ljava/lang/String;)V
    goto :L6
  :L5
    throw v0
  :L6
    goto :L5
.end method

.method private static varargs h(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(",
      "Ljava/lang/Object;",
      "Ljava/lang/String;",
      "[",
      "Ljava/lang/Class<",
      "*>;)",
      "Ljava/lang/reflect/Method;"
    }
  .end annotation
  .catch Ljava/lang/NoSuchMethodException; { :L1 .. :L2 } :L3
  .registers 6
  .line 1
    invoke-virtual { p0 }, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    move-result-object v0
  :L0
    if-eqz v0, :L4
  :L1
  .line 2
    invoke-virtual { v0, p1, p2 }, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    move-result-object v1
  .line 3
    invoke-virtual { v1 }, Ljava/lang/reflect/Method;->isAccessible()Z
    move-result v2
    if-nez v2, :L2
    const/4 v2, 1
  .line 4
    invoke-virtual { v1, v2 }, Ljava/lang/reflect/Method;->setAccessible(Z)V
  :L2
    return-object v1
  :L3
  .line 5
    invoke-virtual { v0 }, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;
    move-result-object v0
    goto :L0
  :L4
  .line 6
    new-instance v0, Ljava/lang/NoSuchMethodException;
    new-instance v1, Ljava/lang/StringBuilder;
    invoke-direct { v1 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v2, "Method "
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v1, p1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string p1, " with parameters "
    invoke-virtual { v1, p1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
  .line 7
    invoke-static { p2 }, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;
    move-result-object p1
    invoke-virtual { v1, p1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    const-string p1, " not found in "
    invoke-virtual { v1, p1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { p0 }, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    move-result-object p0
    invoke-virtual { v1, p0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    invoke-virtual { v1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p0
    invoke-direct { v0, p0 }, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V
    goto :L6
  :L5
    throw v0
  :L6
    goto :L5
.end method

.method private static i(Landroid/content/Context;)Landroid/content/pm/ApplicationInfo;
  .catch Ljava/lang/RuntimeException; { :L0 .. :L1 } :L2
  .registers 1
  :L0
  .line 1
    invoke-virtual { p0 }, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;
    move-result-object p0
  :L1
    return-object p0
  :L2
    const/4 p0, 0
    return-object p0
.end method

.method private static j(Landroid/content/Context;)Ljava/lang/ClassLoader;
  .catch Ljava/lang/RuntimeException; { :L0 .. :L1 } :L5
  .registers 4
    const/4 v0, 0
  :L0
  .line 1
    invoke-virtual { p0 }, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;
    move-result-object p0
  :L1
  .line 2
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v2, 14
    if-lt v1, v2, :L2
  .line 3
    instance-of v1, p0, Ldalvik/system/BaseDexClassLoader;
    if-eqz v1, :L3
    return-object p0
  :L2
  .line 4
    instance-of v1, p0, Ldalvik/system/DexClassLoader;
    if-nez v1, :L4
    instance-of v1, p0, Ldalvik/system/PathClassLoader;
    if-eqz v1, :L3
    goto :L4
  :L3
    return-object v0
  :L4
    return-object p0
  :L5
    return-object v0
.end method

.method private static k(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;)Ljava/io/File;
  .catch Ljava/io/IOException; { :L0 .. :L1 } :L2
  .registers 5
  .line 1
    new-instance v0, Ljava/io/File;
    const-string v1, "code_cache"
    invoke-direct { v0, p1, v1 }, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
  :L0
  .line 2
    invoke-static { v0 }, Lc/m/a;->o(Ljava/io/File;)V
  :L1
    goto :L3
  :L2
  .line 3
    new-instance v0, Ljava/io/File;
    invoke-virtual { p0 }, Landroid/content/Context;->getFilesDir()Ljava/io/File;
    move-result-object p0
    invoke-direct { v0, p0, v1 }, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
  .line 4
    invoke-static { v0 }, Lc/m/a;->o(Ljava/io/File;)V
  :L3
  .line 5
    new-instance p0, Ljava/io/File;
    invoke-direct { p0, v0, p2 }, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
  .line 6
    invoke-static { p0 }, Lc/m/a;->o(Ljava/io/File;)V
    return-object p0
.end method

.method public static l(Landroid/content/Context;)V
  .catch Ljava/lang/Exception; { :L1 .. :L3 } :L4
  .registers 8
  .line 1
    sget-boolean v0, Lc/m/a;->b:Z
    if-eqz v0, :L0
    return-void
  :L0
  .line 2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    const/4 v1, 4
    if-lt v0, v1, :L5
  :L1
  .line 3
    invoke-static { p0 }, Lc/m/a;->i(Landroid/content/Context;)Landroid/content/pm/ApplicationInfo;
    move-result-object v0
    if-nez v0, :L2
    return-void
  :L2
  .line 4
    new-instance v2, Ljava/io/File;
    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;
    invoke-direct { v2, v1 }, Ljava/io/File;-><init>(Ljava/lang/String;)V
    new-instance v3, Ljava/io/File;
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;
    invoke-direct { v3, v0 }, Ljava/io/File;-><init>(Ljava/lang/String;)V
    const-string v4, "secondary-dexes"
    const-string v5, ""
    const/4 v6, 1
    move-object v1, p0
    invoke-static/range { v1 .. v6 }, Lc/m/a;->e(Landroid/content/Context;Ljava/io/File;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Z)V
  :L3
    return-void
  :L4
    move-exception p0
  .line 5
    new-instance v0, Ljava/lang/RuntimeException;
    new-instance v1, Ljava/lang/StringBuilder;
    invoke-direct { v1 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v2, "MultiDex installation failed ("
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { p0 }, Ljava/lang/Exception;->getMessage()Ljava/lang/String;
    move-result-object p0
    invoke-virtual { v1, p0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string p0, ")."
    invoke-virtual { v1, p0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p0
    invoke-direct { v0, p0 }, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V
    throw v0
  :L5
  .line 6
    new-instance p0, Ljava/lang/RuntimeException;
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v2, "MultiDex installation failed. SDK "
    invoke-virtual { v0, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I
    invoke-virtual { v0, v2 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    const-string v2, " is unsupported. Min SDK version is "
    invoke-virtual { v0, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    const-string v1, "."
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    invoke-direct { p0, v0 }, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V
    throw p0
.end method

.method private static m(Ljava/lang/ClassLoader;Ljava/io/File;Ljava/util/List;)V
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(",
      "Ljava/lang/ClassLoader;",
      "Ljava/io/File;",
      "Ljava/util/List<",
      "+",
      "Ljava/io/File;",
      ">;)V"
    }
  .end annotation
  .registers 5
  .line 1
    invoke-interface { p2 }, Ljava/util/List;->isEmpty()Z
    move-result v0
    if-nez v0, :L2
  .line 2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v1, 19
    if-lt v0, v1, :L0
  .line 3
    invoke-static { p0, p2, p1 }, Lc/m/a$b;->a(Ljava/lang/ClassLoader;Ljava/util/List;Ljava/io/File;)V
    goto :L2
  :L0
    const/16 p1, 14
    if-lt v0, p1, :L1
  .line 4
    invoke-static { p0, p2 }, Lc/m/a$a;->a(Ljava/lang/ClassLoader;Ljava/util/List;)V
    goto :L2
  :L1
  .line 5
    invoke-static { p0, p2 }, Lc/m/a$c;->a(Ljava/lang/ClassLoader;Ljava/util/List;)V
  :L2
    return-void
.end method

.method static n(Ljava/lang/String;)Z
  .catch Ljava/lang/NumberFormatException; { :L3 .. :L4 } :L6
  .registers 6
    const/4 v0, 0
    if-eqz p0, :L7
  .line 1
    new-instance v1, Ljava/util/StringTokenizer;
    const-string v2, "."
    invoke-direct { v1, p0, v2 }, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V
  .line 2
    invoke-virtual { v1 }, Ljava/util/StringTokenizer;->hasMoreTokens()Z
    move-result v2
    const/4 v3, 0
    if-eqz v2, :L0
    invoke-virtual { v1 }, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;
    move-result-object v2
    goto :L1
  :L0
    move-object v2, v3
  :L1
  .line 3
    invoke-virtual { v1 }, Ljava/util/StringTokenizer;->hasMoreTokens()Z
    move-result v4
    if-eqz v4, :L2
    invoke-virtual { v1 }, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;
    move-result-object v3
  :L2
    if-eqz v2, :L7
    if-eqz v3, :L7
  :L3
  .line 4
    invoke-static { v2 }, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    move-result v1
  .line 5
    invoke-static { v3 }, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    move-result v2
  :L4
    const/4 v3, 1
    const/4 v4, 2
    if-gt v1, v4, :L5
    if-ne v1, v4, :L7
    if-lt v2, v3, :L7
  :L5
    const/4 v0, 1
    goto :L7
  :L6
    nop
  :L7
  .line 6
    new-instance v1, Ljava/lang/StringBuilder;
    invoke-direct { v1 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v2, "VM with version "
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v1, p0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    if-eqz v0, :L8
    const-string p0, " has multidex support"
    goto :L9
  :L8
    const-string p0, " does not have multidex support"
  :L9
    invoke-virtual { v1, p0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    return v0
.end method

.method private static o(Ljava/io/File;)V
  .registers 4
  .line 1
    invoke-virtual { p0 }, Ljava/io/File;->mkdir()Z
  .line 2
    invoke-virtual { p0 }, Ljava/io/File;->isDirectory()Z
    move-result v0
    if-nez v0, :L2
  .line 3
    invoke-virtual { p0 }, Ljava/io/File;->getParentFile()Ljava/io/File;
    move-result-object v0
    const-string v1, "Failed to create dir "
    if-nez v0, :L0
  .line 4
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { p0 }, Ljava/io/File;->getPath()Ljava/lang/String;
    move-result-object v1
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string v1, ". Parent file is null."
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    goto :L1
  :L0
  .line 5
    new-instance v2, Ljava/lang/StringBuilder;
    invoke-direct { v2 }, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual { v2, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { p0 }, Ljava/io/File;->getPath()Ljava/lang/String;
    move-result-object v1
    invoke-virtual { v2, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string v1, ". parent file is a dir "
    invoke-virtual { v2, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
  .line 6
    invoke-virtual { v0 }, Ljava/io/File;->isDirectory()Z
    move-result v1
    invoke-virtual { v2, v1 }, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;
    const-string v1, ", a file "
    invoke-virtual { v2, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
  .line 7
    invoke-virtual { v0 }, Ljava/io/File;->isFile()Z
    move-result v1
    invoke-virtual { v2, v1 }, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;
    const-string v1, ", exists "
    invoke-virtual { v2, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
  .line 8
    invoke-virtual { v0 }, Ljava/io/File;->exists()Z
    move-result v1
    invoke-virtual { v2, v1 }, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;
    const-string v1, ", readable "
    invoke-virtual { v2, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
  .line 9
    invoke-virtual { v0 }, Ljava/io/File;->canRead()Z
    move-result v1
    invoke-virtual { v2, v1 }, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;
    const-string v1, ", writable "
    invoke-virtual { v2, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
  .line 10
    invoke-virtual { v0 }, Ljava/io/File;->canWrite()Z
    move-result v0
    invoke-virtual { v2, v0 }, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;
    invoke-virtual { v2 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
  :L1
  .line 11
    new-instance v0, Ljava/io/IOException;
    new-instance v1, Ljava/lang/StringBuilder;
    invoke-direct { v1 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v2, "Failed to create directory "
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { p0 }, Ljava/io/File;->getPath()Ljava/lang/String;
    move-result-object p0
    invoke-virtual { v1, p0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p0
    invoke-direct { v0, p0 }, Ljava/io/IOException;-><init>(Ljava/lang/String;)V
    throw v0
  :L2
    return-void
.end method
