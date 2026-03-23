.class public Lc/g/d/g;
.super Lc/g/d/e;
.source "SourceFile"

.field protected final g:Ljava/lang/Class;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "Ljava/lang/Class<",
      "*>;"
    }
  .end annotation
.end field

.field protected final h:Ljava/lang/reflect/Constructor;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "Ljava/lang/reflect/Constructor<",
      "*>;"
    }
  .end annotation
.end field

.field protected final i:Ljava/lang/reflect/Method;

.field protected final j:Ljava/lang/reflect/Method;

.field protected final k:Ljava/lang/reflect/Method;

.field protected final l:Ljava/lang/reflect/Method;

.field protected final m:Ljava/lang/reflect/Method;

.method public constructor <init>()V
  .catch Ljava/lang/ClassNotFoundException; { :L0 .. :L1 } :L3
  .catch Ljava/lang/NoSuchMethodException; { :L0 .. :L1 } :L2
  .registers 9
  .line 1
    invoke-direct { p0 }, Lc/g/d/e;-><init>()V
    const/4 v0, 0
  :L0
  .line 2
    invoke-virtual { p0 }, Lc/g/d/g;->y()Ljava/lang/Class;
    move-result-object v1
  .line 3
    invoke-virtual { p0, v1 }, Lc/g/d/g;->z(Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    move-result-object v2
  .line 4
    invoke-virtual { p0, v1 }, Lc/g/d/g;->v(Ljava/lang/Class;)Ljava/lang/reflect/Method;
    move-result-object v3
  .line 5
    invoke-virtual { p0, v1 }, Lc/g/d/g;->w(Ljava/lang/Class;)Ljava/lang/reflect/Method;
    move-result-object v4
  .line 6
    invoke-virtual { p0, v1 }, Lc/g/d/g;->A(Ljava/lang/Class;)Ljava/lang/reflect/Method;
    move-result-object v5
  .line 7
    invoke-virtual { p0, v1 }, Lc/g/d/g;->u(Ljava/lang/Class;)Ljava/lang/reflect/Method;
    move-result-object v6
  .line 8
    invoke-virtual { p0, v1 }, Lc/g/d/g;->x(Ljava/lang/Class;)Ljava/lang/reflect/Method;
    move-result-object v0
  :L1
    move-object v7, v1
    move-object v1, v0
    move-object v0, v7
    goto :L5
  :L2
    move-exception v1
    goto :L4
  :L3
    move-exception v1
  :L4
  .line 9
    new-instance v2, Ljava/lang/StringBuilder;
    invoke-direct { v2 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v3, "Unable to collect necessary methods for class "
    invoke-virtual { v2, v3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v1 }, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    move-result-object v1
    invoke-virtual { v1 }, Ljava/lang/Class;->getName()Ljava/lang/String;
    move-result-object v1
    invoke-virtual { v2, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v2 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-object v1, v0
    move-object v2, v1
    move-object v3, v2
    move-object v4, v3
    move-object v5, v4
    move-object v6, v5
  :L5
  .line 10
    iput-object v0, p0, Lc/g/d/g;->g:Ljava/lang/Class;
  .line 11
    iput-object v2, p0, Lc/g/d/g;->h:Ljava/lang/reflect/Constructor;
  .line 12
    iput-object v3, p0, Lc/g/d/g;->i:Ljava/lang/reflect/Method;
  .line 13
    iput-object v4, p0, Lc/g/d/g;->j:Ljava/lang/reflect/Method;
  .line 14
    iput-object v5, p0, Lc/g/d/g;->k:Ljava/lang/reflect/Method;
  .line 15
    iput-object v6, p0, Lc/g/d/g;->l:Ljava/lang/reflect/Method;
  .line 16
    iput-object v1, p0, Lc/g/d/g;->m:Ljava/lang/reflect/Method;
    return-void
.end method

.method private o()Ljava/lang/Object;
  .catch Ljava/lang/IllegalAccessException; { :L0 .. :L1 } :L2
  .catch Ljava/lang/InstantiationException; { :L0 .. :L1 } :L2
  .catch Ljava/lang/reflect/InvocationTargetException; { :L0 .. :L1 } :L2
  .registers 3
  :L0
  .line 1
    iget-object v0, p0, Lc/g/d/g;->h:Ljava/lang/reflect/Constructor;
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

.method private p(Ljava/lang/Object;)V
  .catch Ljava/lang/IllegalAccessException; { :L0 .. :L1 } :L1
  .catch Ljava/lang/reflect/InvocationTargetException; { :L0 .. :L1 } :L1
  .registers 4
  :L0
  .line 1
    iget-object v0, p0, Lc/g/d/g;->l:Ljava/lang/reflect/Method;
    const/4 v1, 0
    new-array v1, v1, [Ljava/lang/Object;
    invoke-virtual { v0, p1, v1 }, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
  :L1
    return-void
.end method

.method private q(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/String;III[Landroid/graphics/fonts/FontVariationAxis;)Z
  .catch Ljava/lang/IllegalAccessException; { :L0 .. :L1 } :L2
  .catch Ljava/lang/reflect/InvocationTargetException; { :L0 .. :L1 } :L2
  .registers 11
    const/4 v0, 0
  :L0
  .line 1
    iget-object v1, p0, Lc/g/d/g;->i:Ljava/lang/reflect/Method;
    const/16 v2, 8
    new-array v2, v2, [Ljava/lang/Object;
  .line 2
    invoke-virtual { p1 }, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;
    move-result-object p1
    aput-object p1, v2, v0
    const/4 p1, 1
    aput-object p3, v2, p1
    const/4 p1, 2
    invoke-static { v0 }, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object p3
    aput-object p3, v2, p1
    const/4 p1, 3
    sget-object p3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;
    aput-object p3, v2, p1
    const/4 p1, 4
    invoke-static { p4 }, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object p3
    aput-object p3, v2, p1
    const/4 p1, 5
  .line 3
    invoke-static { p5 }, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object p3
    aput-object p3, v2, p1
    const/4 p1, 6
    invoke-static { p6 }, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object p3
    aput-object p3, v2, p1
    const/4 p1, 7
    aput-object p7, v2, p1
  .line 4
    invoke-virtual { v1, p2, v2 }, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object p1
    check-cast p1, Ljava/lang/Boolean;
    invoke-virtual { p1 }, Ljava/lang/Boolean;->booleanValue()Z
    move-result p1
  :L1
    return p1
  :L2
    return v0
.end method

.method private r(Ljava/lang/Object;Ljava/nio/ByteBuffer;III)Z
  .catch Ljava/lang/IllegalAccessException; { :L0 .. :L1 } :L2
  .catch Ljava/lang/reflect/InvocationTargetException; { :L0 .. :L1 } :L2
  .registers 9
    const/4 v0, 0
  :L0
  .line 1
    iget-object v1, p0, Lc/g/d/g;->j:Ljava/lang/reflect/Method;
    const/4 v2, 5
    new-array v2, v2, [Ljava/lang/Object;
    aput-object p2, v2, v0
    const/4 p2, 1
  .line 2
    invoke-static { p3 }, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object p3
    aput-object p3, v2, p2
    const/4 p2, 2
    const/4 p3, 0
    aput-object p3, v2, p2
    const/4 p2, 3
    invoke-static { p4 }, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object p3
    aput-object p3, v2, p2
    const/4 p2, 4
    invoke-static { p5 }, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object p3
    aput-object p3, v2, p2
  .line 3
    invoke-virtual { v1, p1, v2 }, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object p1
    check-cast p1, Ljava/lang/Boolean;
    invoke-virtual { p1 }, Ljava/lang/Boolean;->booleanValue()Z
    move-result p1
  :L1
    return p1
  :L2
    return v0
.end method

.method private s(Ljava/lang/Object;)Z
  .catch Ljava/lang/IllegalAccessException; { :L0 .. :L1 } :L2
  .catch Ljava/lang/reflect/InvocationTargetException; { :L0 .. :L1 } :L2
  .registers 5
    const/4 v0, 0
  :L0
  .line 1
    iget-object v1, p0, Lc/g/d/g;->k:Ljava/lang/reflect/Method;
    new-array v2, v0, [Ljava/lang/Object;
    invoke-virtual { v1, p1, v2 }, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object p1
    check-cast p1, Ljava/lang/Boolean;
    invoke-virtual { p1 }, Ljava/lang/Boolean;->booleanValue()Z
    move-result p1
  :L1
    return p1
  :L2
    return v0
.end method

.method private t()Z
  .registers 2
  .line 1
    iget-object v0, p0, Lc/g/d/g;->i:Ljava/lang/reflect/Method;
  .line 2
    iget-object v0, p0, Lc/g/d/g;->i:Ljava/lang/reflect/Method;
    if-eqz v0, :L0
    const/4 v0, 1
    goto :L1
  :L0
    const/4 v0, 0
  :L1
    return v0
.end method

.method protected A(Ljava/lang/Class;)Ljava/lang/reflect/Method;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(",
      "Ljava/lang/Class<",
      "*>;)",
      "Ljava/lang/reflect/Method;"
    }
  .end annotation
  .registers 4
    const/4 v0, 0
    new-array v0, v0, [Ljava/lang/Class;
    const-string v1, "freeze"
  .line 1
    invoke-virtual { p1, v1, v0 }, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    move-result-object p1
    return-object p1
.end method

.method public b(Landroid/content/Context;Landroidx/core/content/c/c$b;Landroid/content/res/Resources;I)Landroid/graphics/Typeface;
  .registers 15
  .line 1
    invoke-direct { p0 }, Lc/g/d/g;->t()Z
    move-result v0
    if-nez v0, :L0
  .line 2
    invoke-super { p0, p1, p2, p3, p4 }, Lc/g/d/e;->b(Landroid/content/Context;Landroidx/core/content/c/c$b;Landroid/content/res/Resources;I)Landroid/graphics/Typeface;
    move-result-object p1
    return-object p1
  :L0
  .line 3
    invoke-direct { p0 }, Lc/g/d/g;->o()Ljava/lang/Object;
    move-result-object p3
    const/4 p4, 0
    if-nez p3, :L1
    return-object p4
  :L1
  .line 4
    invoke-virtual { p2 }, Landroidx/core/content/c/c$b;->a()[Landroidx/core/content/c/c$c;
    move-result-object p2
    array-length v8, p2
    const/4 v0, 0
    const/4 v9, 0
  :L2
    if-ge v9, v8, :L4
    aget-object v0, p2, v9
  .line 5
    invoke-virtual { v0 }, Landroidx/core/content/c/c$c;->a()Ljava/lang/String;
    move-result-object v3
  .line 6
    invoke-virtual { v0 }, Landroidx/core/content/c/c$c;->c()I
    move-result v4
    invoke-virtual { v0 }, Landroidx/core/content/c/c$c;->e()I
    move-result v5
    invoke-virtual { v0 }, Landroidx/core/content/c/c$c;->f()Z
    move-result v6
  .line 7
    invoke-virtual { v0 }, Landroidx/core/content/c/c$c;->d()Ljava/lang/String;
    move-result-object v0
    invoke-static { v0 }, Landroid/graphics/fonts/FontVariationAxis;->fromFontVariationSettings(Ljava/lang/String;)[Landroid/graphics/fonts/FontVariationAxis;
    move-result-object v7
    move-object v0, p0
    move-object v1, p1
    move-object v2, p3
  .line 8
    invoke-direct/range { v0 .. v7 }, Lc/g/d/g;->q(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/String;III[Landroid/graphics/fonts/FontVariationAxis;)Z
    move-result v0
    if-nez v0, :L3
  .line 9
    invoke-direct { p0, p3 }, Lc/g/d/g;->p(Ljava/lang/Object;)V
    return-object p4
  :L3
    add-int/lit8 v9, v9, 1
    goto :L2
  :L4
  .line 10
    invoke-direct { p0, p3 }, Lc/g/d/g;->s(Ljava/lang/Object;)Z
    move-result p1
    if-nez p1, :L5
    return-object p4
  :L5
  .line 11
    invoke-virtual { p0, p3 }, Lc/g/d/g;->l(Ljava/lang/Object;)Landroid/graphics/Typeface;
    move-result-object p1
    return-object p1
.end method

.method public c(Landroid/content/Context;Landroid/os/CancellationSignal;[Lc/g/h/f$b;I)Landroid/graphics/Typeface;
  .catch Ljava/io/IOException; { :L1 .. :L2 } :L10
  .catchall { :L3 .. :L4 } :L7
  .catch Ljava/io/IOException; { :L5 .. :L6 } :L10
  .catchall { :L8 .. :L9 } :L9
  .catch Ljava/io/IOException; { :L9 .. :L10 } :L10
  .registers 15
  .line 1
    array-length v0, p3
    const/4 v1, 1
    const/4 v2, 0
    if-ge v0, v1, :L0
    return-object v2
  :L0
  .line 2
    invoke-direct { p0 }, Lc/g/d/g;->t()Z
    move-result v0
    if-nez v0, :L11
  .line 3
    invoke-virtual { p0, p3, p4 }, Lc/g/d/j;->h([Lc/g/h/f$b;I)Lc/g/h/f$b;
    move-result-object p3
  .line 4
    invoke-virtual { p1 }, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;
    move-result-object p1
  :L1
  .line 5
    invoke-virtual { p3 }, Lc/g/h/f$b;->d()Landroid/net/Uri;
    move-result-object p4
    const-string v0, "r"
    invoke-virtual { p1, p4, v0, p2 }, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/os/ParcelFileDescriptor;
    move-result-object p1
    if-nez p1, :L3
    if-eqz p1, :L2
  .line 6
    invoke-virtual { p1 }, Landroid/os/ParcelFileDescriptor;->close()V
  :L2
    return-object v2
  :L3
  .line 7
    new-instance p2, Landroid/graphics/Typeface$Builder;
    invoke-virtual { p1 }, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;
    move-result-object p4
    invoke-direct { p2, p4 }, Landroid/graphics/Typeface$Builder;-><init>(Ljava/io/FileDescriptor;)V
  .line 8
    invoke-virtual { p3 }, Lc/g/h/f$b;->e()I
    move-result p4
    invoke-virtual { p2, p4 }, Landroid/graphics/Typeface$Builder;->setWeight(I)Landroid/graphics/Typeface$Builder;
    move-result-object p2
  .line 9
    invoke-virtual { p3 }, Lc/g/h/f$b;->f()Z
    move-result p3
    invoke-virtual { p2, p3 }, Landroid/graphics/Typeface$Builder;->setItalic(Z)Landroid/graphics/Typeface$Builder;
    move-result-object p2
  .line 10
    invoke-virtual { p2 }, Landroid/graphics/Typeface$Builder;->build()Landroid/graphics/Typeface;
    move-result-object p2
  :L4
    if-eqz p1, :L6
  :L5
  .line 11
    invoke-virtual { p1 }, Landroid/os/ParcelFileDescriptor;->close()V
  :L6
    return-object p2
  :L7
    move-exception p2
    if-eqz p1, :L9
  :L8
  .line 12
    invoke-virtual { p1 }, Landroid/os/ParcelFileDescriptor;->close()V
  :L9
    throw p2
  :L10
    return-object v2
  :L11
  .line 13
    invoke-static { p1, p3, p2 }, Lc/g/d/k;->h(Landroid/content/Context;[Lc/g/h/f$b;Landroid/os/CancellationSignal;)Ljava/util/Map;
    move-result-object p1
  .line 14
    invoke-direct { p0 }, Lc/g/d/g;->o()Ljava/lang/Object;
    move-result-object p2
    if-nez p2, :L12
    return-object v2
  :L12
  .line 15
    array-length v0, p3
    const/4 v3, 0
    const/4 v9, 0
  :L13
    if-ge v9, v0, :L17
    aget-object v4, p3, v9
  .line 16
    invoke-virtual { v4 }, Lc/g/h/f$b;->d()Landroid/net/Uri;
    move-result-object v5
    invoke-interface { p1, v5 }, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object v5
    check-cast v5, Ljava/nio/ByteBuffer;
    if-nez v5, :L14
    goto :L16
  :L14
  .line 17
    invoke-virtual { v4 }, Lc/g/h/f$b;->c()I
    move-result v6
    invoke-virtual { v4 }, Lc/g/h/f$b;->e()I
    move-result v7
    invoke-virtual { v4 }, Lc/g/h/f$b;->f()Z
    move-result v8
    move-object v3, p0
    move-object v4, p2
  .line 18
    invoke-direct/range { v3 .. v8 }, Lc/g/d/g;->r(Ljava/lang/Object;Ljava/nio/ByteBuffer;III)Z
    move-result v3
    if-nez v3, :L15
  .line 19
    invoke-direct { p0, p2 }, Lc/g/d/g;->p(Ljava/lang/Object;)V
    return-object v2
  :L15
    const/4 v3, 1
  :L16
    add-int/lit8 v9, v9, 1
    goto :L13
  :L17
    if-nez v3, :L18
  .line 20
    invoke-direct { p0, p2 }, Lc/g/d/g;->p(Ljava/lang/Object;)V
    return-object v2
  :L18
  .line 21
    invoke-direct { p0, p2 }, Lc/g/d/g;->s(Ljava/lang/Object;)Z
    move-result p1
    if-nez p1, :L19
    return-object v2
  :L19
  .line 22
    invoke-virtual { p0, p2 }, Lc/g/d/g;->l(Ljava/lang/Object;)Landroid/graphics/Typeface;
    move-result-object p1
    if-nez p1, :L20
    return-object v2
  :L20
  .line 23
    invoke-static { p1, p4 }, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;
    move-result-object p1
    return-object p1
.end method

.method public e(Landroid/content/Context;Landroid/content/res/Resources;ILjava/lang/String;I)Landroid/graphics/Typeface;
  .registers 14
  .line 1
    invoke-direct { p0 }, Lc/g/d/g;->t()Z
    move-result v0
    if-nez v0, :L0
  .line 2
    invoke-super/range { p0 .. p5 }, Lc/g/d/j;->e(Landroid/content/Context;Landroid/content/res/Resources;ILjava/lang/String;I)Landroid/graphics/Typeface;
    move-result-object p1
    return-object p1
  :L0
  .line 3
    invoke-direct { p0 }, Lc/g/d/g;->o()Ljava/lang/Object;
    move-result-object p2
    const/4 p3, 0
    if-nez p2, :L1
    return-object p3
  :L1
    const/4 v4, 0
    const/4 v5, -1
    const/4 v6, -1
    const/4 v7, 0
    move-object v0, p0
    move-object v1, p1
    move-object v2, p2
    move-object v3, p4
  .line 4
    invoke-direct/range { v0 .. v7 }, Lc/g/d/g;->q(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/String;III[Landroid/graphics/fonts/FontVariationAxis;)Z
    move-result p1
    if-nez p1, :L2
  .line 5
    invoke-direct { p0, p2 }, Lc/g/d/g;->p(Ljava/lang/Object;)V
    return-object p3
  :L2
  .line 6
    invoke-direct { p0, p2 }, Lc/g/d/g;->s(Ljava/lang/Object;)Z
    move-result p1
    if-nez p1, :L3
    return-object p3
  :L3
  .line 7
    invoke-virtual { p0, p2 }, Lc/g/d/g;->l(Ljava/lang/Object;)Landroid/graphics/Typeface;
    move-result-object p1
    return-object p1
.end method

.method protected l(Ljava/lang/Object;)Landroid/graphics/Typeface;
  .catch Ljava/lang/IllegalAccessException; { :L0 .. :L1 } :L2
  .catch Ljava/lang/reflect/InvocationTargetException; { :L0 .. :L1 } :L2
  .registers 7
    const/4 v0, 0
  :L0
  .line 1
    iget-object v1, p0, Lc/g/d/g;->g:Ljava/lang/Class;
    const/4 v2, 1
    invoke-static { v1, v2 }, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;
    move-result-object v1
    const/4 v3, 0
  .line 2
    invoke-static { v1, v3, p1 }, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V
  .line 3
    iget-object p1, p0, Lc/g/d/g;->m:Ljava/lang/reflect/Method;
    const/4 v4, 3
    new-array v4, v4, [Ljava/lang/Object;
    aput-object v1, v4, v3
    const/4 v1, -1
  .line 4
    invoke-static { v1 }, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v3
    aput-object v3, v4, v2
    const/4 v2, 2
    invoke-static { v1 }, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v1
    aput-object v1, v4, v2
  .line 5
    invoke-virtual { p1, v0, v4 }, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object p1
    check-cast p1, Landroid/graphics/Typeface;
  :L1
    return-object p1
  :L2
    return-object v0
.end method

.method protected u(Ljava/lang/Class;)Ljava/lang/reflect/Method;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(",
      "Ljava/lang/Class<",
      "*>;)",
      "Ljava/lang/reflect/Method;"
    }
  .end annotation
  .registers 4
    const/4 v0, 0
    new-array v0, v0, [Ljava/lang/Class;
    const-string v1, "abortCreation"
  .line 1
    invoke-virtual { p1, v1, v0 }, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    move-result-object p1
    return-object p1
.end method

.method protected v(Ljava/lang/Class;)Ljava/lang/reflect/Method;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(",
      "Ljava/lang/Class<",
      "*>;)",
      "Ljava/lang/reflect/Method;"
    }
  .end annotation
  .registers 5
    const/16 v0, 8
    new-array v0, v0, [Ljava/lang/Class;
    const/4 v1, 0
  .line 1
    const-class v2, Landroid/content/res/AssetManager;
    aput-object v2, v0, v1
    const/4 v1, 1
    const-class v2, Ljava/lang/String;
    aput-object v2, v0, v1
    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;
    const/4 v2, 2
    aput-object v1, v0, v2
    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;
    const/4 v2, 3
    aput-object v1, v0, v2
    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;
    const/4 v2, 4
    aput-object v1, v0, v2
    const/4 v2, 5
    aput-object v1, v0, v2
    const/4 v2, 6
    aput-object v1, v0, v2
    const/4 v1, 7
    const-class v2, [Landroid/graphics/fonts/FontVariationAxis;
    aput-object v2, v0, v1
    const-string v1, "addFontFromAssetManager"
    invoke-virtual { p1, v1, v0 }, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    move-result-object p1
    return-object p1
.end method

.method protected w(Ljava/lang/Class;)Ljava/lang/reflect/Method;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(",
      "Ljava/lang/Class<",
      "*>;)",
      "Ljava/lang/reflect/Method;"
    }
  .end annotation
  .registers 6
    const/4 v0, 5
    new-array v0, v0, [Ljava/lang/Class;
    const/4 v1, 0
  .line 1
    const-class v2, Ljava/nio/ByteBuffer;
    aput-object v2, v0, v1
    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;
    const/4 v2, 1
    aput-object v1, v0, v2
    const/4 v2, 2
    const-class v3, [Landroid/graphics/fonts/FontVariationAxis;
    aput-object v3, v0, v2
    const/4 v2, 3
    aput-object v1, v0, v2
    const/4 v2, 4
    aput-object v1, v0, v2
    const-string v1, "addFontFromBuffer"
    invoke-virtual { p1, v1, v0 }, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    move-result-object p1
    return-object p1
.end method

.method protected x(Ljava/lang/Class;)Ljava/lang/reflect/Method;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(",
      "Ljava/lang/Class<",
      "*>;)",
      "Ljava/lang/reflect/Method;"
    }
  .end annotation
  .registers 6
    const/4 v0, 1
  .line 1
    invoke-static { p1, v0 }, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;
    move-result-object p1
  .line 2
    const-class v1, Landroid/graphics/Typeface;
    const/4 v2, 3
    new-array v2, v2, [Ljava/lang/Class;
  .line 3
    invoke-virtual { p1 }, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    move-result-object p1
    const/4 v3, 0
    aput-object p1, v2, v3
    sget-object p1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;
    aput-object p1, v2, v0
    const/4 v3, 2
    aput-object p1, v2, v3
    const-string p1, "createFromFamiliesWithDefault"
  .line 4
    invoke-virtual { v1, p1, v2 }, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    move-result-object p1
  .line 5
    invoke-virtual { p1, v0 }, Ljava/lang/reflect/Method;->setAccessible(Z)V
    return-object p1
.end method

.method protected y()Ljava/lang/Class;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "()",
      "Ljava/lang/Class<",
      "*>;"
    }
  .end annotation
  .registers 2
    const-string v0, "android.graphics.FontFamily"
  .line 1
    invoke-static { v0 }, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    move-result-object v0
    return-object v0
.end method

.method protected z(Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(",
      "Ljava/lang/Class<",
      "*>;)",
      "Ljava/lang/reflect/Constructor<",
      "*>;"
    }
  .end annotation
  .registers 3
    const/4 v0, 0
    new-array v0, v0, [Ljava/lang/Class;
  .line 1
    invoke-virtual { p1, v0 }, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    move-result-object p1
    return-object p1
.end method
