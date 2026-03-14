.class Lc/g/d/e;
.super Lc/g/d/j;
.source "SourceFile"

.field private static b:Ljava/lang/Class;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "Ljava/lang/Class<",
      "*>;"
    }
  .end annotation
.end field

.field private static c:Ljava/lang/reflect/Constructor;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "Ljava/lang/reflect/Constructor<",
      "*>;"
    }
  .end annotation
.end field

.field private static d:Ljava/lang/reflect/Method;

.field private static e:Ljava/lang/reflect/Method;

.field private static f:Z

.method static constructor <clinit>()V
  .registers 1
    return-void
.end method

.method constructor <init>()V
  .registers 1
  .line 1
    invoke-direct { p0 }, Lc/g/d/j;-><init>()V
    return-void
.end method

.method private static k(Ljava/lang/Object;Ljava/lang/String;IZ)Z
  .catch Ljava/lang/IllegalAccessException; { :L0 .. :L1 } :L3
  .catch Ljava/lang/reflect/InvocationTargetException; { :L0 .. :L1 } :L2
  .registers 7
  .line 1
    invoke-static { }, Lc/g/d/e;->n()V
  :L0
  .line 2
    sget-object v0, Lc/g/d/e;->d:Ljava/lang/reflect/Method;
    const/4 v1, 3
    new-array v1, v1, [Ljava/lang/Object;
    const/4 v2, 0
    aput-object p1, v1, v2
    const/4 p1, 1
  .line 3
    invoke-static { p2 }, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object p2
    aput-object p2, v1, p1
    const/4 p1, 2
    invoke-static { p3 }, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    move-result-object p2
    aput-object p2, v1, p1
  .line 4
    invoke-virtual { v0, p0, v1 }, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object p0
    check-cast p0, Ljava/lang/Boolean;
  .line 5
    invoke-virtual { p0 }, Ljava/lang/Boolean;->booleanValue()Z
    move-result p0
  :L1
    return p0
  :L2
    move-exception p0
    goto :L4
  :L3
    move-exception p0
  :L4
  .line 6
    new-instance p1, Ljava/lang/RuntimeException;
    invoke-direct { p1, p0 }, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V
    throw p1
.end method

.method private static l(Ljava/lang/Object;)Landroid/graphics/Typeface;
  .catch Ljava/lang/IllegalAccessException; { :L0 .. :L1 } :L3
  .catch Ljava/lang/reflect/InvocationTargetException; { :L0 .. :L1 } :L2
  .registers 5
  .line 1
    invoke-static { }, Lc/g/d/e;->n()V
  :L0
  .line 2
    sget-object v0, Lc/g/d/e;->b:Ljava/lang/Class;
    const/4 v1, 1
    invoke-static { v0, v1 }, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;
    move-result-object v0
    const/4 v2, 0
  .line 3
    invoke-static { v0, v2, p0 }, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V
  .line 4
    sget-object p0, Lc/g/d/e;->e:Ljava/lang/reflect/Method;
    const/4 v3, 0
    new-array v1, v1, [Ljava/lang/Object;
    aput-object v0, v1, v2
    invoke-virtual { p0, v3, v1 }, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object p0
    check-cast p0, Landroid/graphics/Typeface;
  :L1
    return-object p0
  :L2
    move-exception p0
    goto :L4
  :L3
    move-exception p0
  :L4
  .line 5
    new-instance v0, Ljava/lang/RuntimeException;
    invoke-direct { v0, p0 }, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V
    throw v0
.end method

.method private m(Landroid/os/ParcelFileDescriptor;)Ljava/io/File;
  .catch Landroid/system/ErrnoException; { :L0 .. :L1 } :L2
  .registers 5
    const/4 v0, 0
  :L0
  .line 1
    new-instance v1, Ljava/lang/StringBuilder;
    invoke-direct { v1 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v2, "/proc/self/fd/"
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { p1 }, Landroid/os/ParcelFileDescriptor;->getFd()I
    move-result p1
    invoke-virtual { v1, p1 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { v1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p1
    invoke-static { p1 }, Landroid/system/Os;->readlink(Ljava/lang/String;)Ljava/lang/String;
    move-result-object p1
  .line 2
    invoke-static { p1 }, Landroid/system/Os;->stat(Ljava/lang/String;)Landroid/system/StructStat;
    move-result-object v1
    iget v1, v1, Landroid/system/StructStat;->st_mode:I
    invoke-static { v1 }, Landroid/system/OsConstants;->S_ISREG(I)Z
    move-result v1
    if-eqz v1, :L2
  .line 3
    new-instance v1, Ljava/io/File;
    invoke-direct { v1, p1 }, Ljava/io/File;-><init>(Ljava/lang/String;)V
  :L1
    return-object v1
  :L2
    return-object v0
.end method

.method private static n()V
  .catch Ljava/lang/ClassNotFoundException; { :L1 .. :L2 } :L4
  .catch Ljava/lang/NoSuchMethodException; { :L1 .. :L2 } :L3
  .registers 9
  .line 1
    sget-boolean v0, Lc/g/d/e;->f:Z
    if-eqz v0, :L0
    return-void
  :L0
    const/4 v0, 1
  .line 2
    sput-boolean v0, Lc/g/d/e;->f:Z
    const/4 v1, 0
  :L1
    const-string v2, "android.graphics.FontFamily"
  .line 3
    invoke-static { v2 }, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    move-result-object v2
    const/4 v3, 0
    new-array v4, v3, [Ljava/lang/Class;
  .line 4
    invoke-virtual { v2, v4 }, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    move-result-object v4
    const-string v5, "addFontWeightStyle"
    const/4 v6, 3
    new-array v6, v6, [Ljava/lang/Class;
  .line 5
    const-class v7, Ljava/lang/String;
    aput-object v7, v6, v3
    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;
    aput-object v7, v6, v0
    const/4 v7, 2
    sget-object v8, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;
    aput-object v8, v6, v7
    invoke-virtual { v2, v5, v6 }, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    move-result-object v5
  .line 6
    invoke-static { v2, v0 }, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;
    move-result-object v6
  .line 7
    const-class v7, Landroid/graphics/Typeface;
    const-string v8, "createFromFamiliesWithDefault"
    new-array v0, v0, [Ljava/lang/Class;
  .line 8
    invoke-virtual { v6 }, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    move-result-object v6
    aput-object v6, v0, v3
  .line 9
    invoke-virtual { v7, v8, v0 }, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    move-result-object v1
  :L2
    move-object v0, v1
    move-object v1, v4
    goto :L6
  :L3
    move-exception v0
    goto :L5
  :L4
    move-exception v0
  :L5
  .line 10
    invoke-virtual { v0 }, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    move-result-object v0
    invoke-virtual { v0 }, Ljava/lang/Class;->getName()Ljava/lang/String;
    move-object v0, v1
    move-object v2, v0
    move-object v5, v2
  :L6
  .line 11
    sput-object v1, Lc/g/d/e;->c:Ljava/lang/reflect/Constructor;
  .line 12
    sput-object v2, Lc/g/d/e;->b:Ljava/lang/Class;
  .line 13
    sput-object v5, Lc/g/d/e;->d:Ljava/lang/reflect/Method;
  .line 14
    sput-object v0, Lc/g/d/e;->e:Ljava/lang/reflect/Method;
    return-void
.end method

.method private static o()Ljava/lang/Object;
  .catch Ljava/lang/IllegalAccessException; { :L0 .. :L1 } :L4
  .catch Ljava/lang/InstantiationException; { :L0 .. :L1 } :L3
  .catch Ljava/lang/reflect/InvocationTargetException; { :L0 .. :L1 } :L2
  .registers 2
  .line 1
    invoke-static { }, Lc/g/d/e;->n()V
  :L0
  .line 2
    sget-object v0, Lc/g/d/e;->c:Ljava/lang/reflect/Constructor;
    const/4 v1, 0
    new-array v1, v1, [Ljava/lang/Object;
    invoke-virtual { v0, v1 }, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object v0
  :L1
    return-object v0
  :L2
    move-exception v0
    goto :L5
  :L3
    move-exception v0
    goto :L5
  :L4
    move-exception v0
  :L5
  .line 3
    new-instance v1, Ljava/lang/RuntimeException;
    invoke-direct { v1, v0 }, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V
    throw v1
.end method

.method public b(Landroid/content/Context;Landroidx/core/content/c/c$b;Landroid/content/res/Resources;I)Landroid/graphics/Typeface;
  .catch Ljava/lang/RuntimeException; { :L1 .. :L2 } :L7
  .catchall { :L1 .. :L2 } :L6
  .catch Ljava/lang/RuntimeException; { :L3 .. :L4 } :L7
  .catchall { :L3 .. :L4 } :L6
  .registers 12
  .line 1
    invoke-static { }, Lc/g/d/e;->o()Ljava/lang/Object;
    move-result-object p4
  .line 2
    invoke-virtual { p2 }, Landroidx/core/content/c/c$b;->a()[Landroidx/core/content/c/c$c;
    move-result-object p2
    array-length v0, p2
    const/4 v1, 0
  :L0
    if-ge v1, v0, :L8
    aget-object v2, p2, v1
  .line 3
    invoke-static { p1 }, Lc/g/d/k;->e(Landroid/content/Context;)Ljava/io/File;
    move-result-object v3
    const/4 v4, 0
    if-nez v3, :L1
    return-object v4
  :L1
  .line 4
    invoke-virtual { v2 }, Landroidx/core/content/c/c$c;->b()I
    move-result v5
    invoke-static { v3, p3, v5 }, Lc/g/d/k;->c(Ljava/io/File;Landroid/content/res/Resources;I)Z
    move-result v5
  :L2
    if-nez v5, :L3
  .line 5
    invoke-virtual { v3 }, Ljava/io/File;->delete()Z
    return-object v4
  :L3
  .line 6
    invoke-virtual { v3 }, Ljava/io/File;->getPath()Ljava/lang/String;
    move-result-object v5
    invoke-virtual { v2 }, Landroidx/core/content/c/c$c;->e()I
    move-result v6
    invoke-virtual { v2 }, Landroidx/core/content/c/c$c;->f()Z
    move-result v2
    invoke-static { p4, v5, v6, v2 }, Lc/g/d/e;->k(Ljava/lang/Object;Ljava/lang/String;IZ)Z
    move-result v2
  :L4
    if-nez v2, :L5
  .line 7
    invoke-virtual { v3 }, Ljava/io/File;->delete()Z
    return-object v4
  :L5
    invoke-virtual { v3 }, Ljava/io/File;->delete()Z
    add-int/lit8 v1, v1, 1
    goto :L0
  :L6
    move-exception p1
    invoke-virtual { v3 }, Ljava/io/File;->delete()Z
  .line 8
    throw p1
  :L7
  .line 9
    invoke-virtual { v3 }, Ljava/io/File;->delete()Z
    return-object v4
  :L8
  .line 10
    invoke-static { p4 }, Lc/g/d/e;->l(Ljava/lang/Object;)Landroid/graphics/Typeface;
    move-result-object p1
    return-object p1
.end method

.method public c(Landroid/content/Context;Landroid/os/CancellationSignal;[Lc/g/h/f$b;I)Landroid/graphics/Typeface;
  .catch Ljava/io/IOException; { :L1 .. :L2 } :L20
  .catchall { :L3 .. :L5 } :L17
  .catch Ljava/io/IOException; { :L6 .. :L7 } :L20
  .catchall { :L8 .. :L9 } :L17
  .catchall { :L9 .. :L10 } :L14
  .catchall { :L10 .. :L11 } :L17
  .catch Ljava/io/IOException; { :L12 .. :L13 } :L20
  .catchall { :L15 .. :L16 } :L16
  .catchall { :L16 .. :L17 } :L17
  .catchall { :L18 .. :L19 } :L19
  .catch Ljava/io/IOException; { :L19 .. :L20 } :L20
  .registers 8
  .line 1
    array-length v0, p3
    const/4 v1, 0
    const/4 v2, 1
    if-ge v0, v2, :L0
    return-object v1
  :L0
  .line 2
    invoke-virtual { p0, p3, p4 }, Lc/g/d/j;->h([Lc/g/h/f$b;I)Lc/g/h/f$b;
    move-result-object p3
  .line 3
    invoke-virtual { p1 }, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;
    move-result-object p4
  :L1
  .line 4
    invoke-virtual { p3 }, Lc/g/h/f$b;->d()Landroid/net/Uri;
    move-result-object p3
    const-string v0, "r"
    invoke-virtual { p4, p3, v0, p2 }, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/os/ParcelFileDescriptor;
    move-result-object p2
    if-nez p2, :L3
    if-eqz p2, :L2
  .line 5
    invoke-virtual { p2 }, Landroid/os/ParcelFileDescriptor;->close()V
  :L2
    return-object v1
  :L3
  .line 6
    invoke-direct { p0, p2 }, Lc/g/d/e;->m(Landroid/os/ParcelFileDescriptor;)Ljava/io/File;
    move-result-object p3
    if-eqz p3, :L8
  .line 7
    invoke-virtual { p3 }, Ljava/io/File;->canRead()Z
    move-result p4
    if-nez p4, :L4
    goto :L8
  :L4
  .line 8
    invoke-static { p3 }, Landroid/graphics/Typeface;->createFromFile(Ljava/io/File;)Landroid/graphics/Typeface;
    move-result-object p1
  :L5
    if-eqz p2, :L7
  :L6
  .line 9
    invoke-virtual { p2 }, Landroid/os/ParcelFileDescriptor;->close()V
  :L7
    return-object p1
  :L8
  .line 10
    new-instance p3, Ljava/io/FileInputStream;
    invoke-virtual { p2 }, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;
    move-result-object p4
    invoke-direct { p3, p4 }, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V
  :L9
  .line 11
    invoke-super { p0, p1, p3 }, Lc/g/d/j;->d(Landroid/content/Context;Ljava/io/InputStream;)Landroid/graphics/Typeface;
    move-result-object p1
  :L10
  .line 12
    invoke-virtual { p3 }, Ljava/io/FileInputStream;->close()V
  :L11
    if-eqz p2, :L13
  :L12
  .line 13
    invoke-virtual { p2 }, Landroid/os/ParcelFileDescriptor;->close()V
  :L13
    return-object p1
  :L14
    move-exception p1
  :L15
  .line 14
    invoke-virtual { p3 }, Ljava/io/FileInputStream;->close()V
  :L16
    throw p1
  :L17
    move-exception p1
    if-eqz p2, :L19
  :L18
  .line 15
    invoke-virtual { p2 }, Landroid/os/ParcelFileDescriptor;->close()V
  :L19
    throw p1
  :L20
    return-object v1
.end method
