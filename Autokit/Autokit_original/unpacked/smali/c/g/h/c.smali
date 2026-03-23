.class Lc/g/h/c;
.super Ljava/lang/Object;
.source "SourceFile"

.field private final static a:Ljava/util/Comparator;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "Ljava/util/Comparator<",
      "[B>;"
    }
  .end annotation
.end field

.method static constructor <clinit>()V
  .registers 1
  .line 1
    new-instance v0, Lc/g/h/c$a;
    invoke-direct { v0 }, Lc/g/h/c$a;-><init>()V
    sput-object v0, Lc/g/h/c;->a:Ljava/util/Comparator;
    return-void
.end method

.method public constructor <init>()V
  .registers 2
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method private static a([Landroid/content/pm/Signature;)Ljava/util/List;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "([",
      "Landroid/content/pm/Signature;",
      ")",
      "Ljava/util/List<",
      "[B>;"
    }
  .end annotation
  .registers 4
  .line 1
    new-instance v0, Ljava/util/ArrayList;
    invoke-direct { v0 }, Ljava/util/ArrayList;-><init>()V
    const/4 v1, 0
  :L0
  .line 2
    array-length v2, p0
    if-ge v1, v2, :L1
  .line 3
    aget-object v2, p0, v1
    invoke-virtual { v2 }, Landroid/content/pm/Signature;->toByteArray()[B
    move-result-object v2
    invoke-interface { v0, v2 }, Ljava/util/List;->add(Ljava/lang/Object;)Z
    add-int/lit8 v1, v1, 1
    goto :L0
  :L1
    return-object v0
.end method

.method private static b(Ljava/util/List;Ljava/util/List;)Z
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(",
      "Ljava/util/List<",
      "[B>;",
      "Ljava/util/List<",
      "[B>;)Z"
    }
  .end annotation
  .registers 6
  .line 1
    invoke-interface { p0 }, Ljava/util/List;->size()I
    move-result v0
    invoke-interface { p1 }, Ljava/util/List;->size()I
    move-result v1
    const/4 v2, 0
    if-eq v0, v1, :L0
    return v2
  :L0
    const/4 v0, 0
  :L1
  .line 2
    invoke-interface { p0 }, Ljava/util/List;->size()I
    move-result v1
    if-ge v0, v1, :L3
  .line 3
    invoke-interface { p0, v0 }, Ljava/util/List;->get(I)Ljava/lang/Object;
    move-result-object v1
    check-cast v1, [B
    invoke-interface { p1, v0 }, Ljava/util/List;->get(I)Ljava/lang/Object;
    move-result-object v3
    check-cast v3, [B
    invoke-static { v1, v3 }, Ljava/util/Arrays;->equals([B[B)Z
    move-result v1
    if-nez v1, :L2
    return v2
  :L2
    add-int/lit8 v0, v0, 1
    goto :L1
  :L3
    const/4 p0, 1
    return p0
.end method

.method private static c(Lc/g/h/d;Landroid/content/res/Resources;)Ljava/util/List;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(",
      "Lc/g/h/d;",
      "Landroid/content/res/Resources;",
      ")",
      "Ljava/util/List<",
      "Ljava/util/List<",
      "[B>;>;"
    }
  .end annotation
  .registers 3
  .line 1
    invoke-virtual { p0 }, Lc/g/h/d;->b()Ljava/util/List;
    move-result-object v0
    if-eqz v0, :L0
  .line 2
    invoke-virtual { p0 }, Lc/g/h/d;->b()Ljava/util/List;
    move-result-object p0
    return-object p0
  :L0
  .line 3
    invoke-virtual { p0 }, Lc/g/h/d;->c()I
    move-result p0
  .line 4
    invoke-static { p1, p0 }, Landroidx/core/content/c/c;->c(Landroid/content/res/Resources;I)Ljava/util/List;
    move-result-object p0
    return-object p0
.end method

.method static d(Landroid/content/Context;Lc/g/h/d;Landroid/os/CancellationSignal;)Lc/g/h/f$a;
  .registers 5
  .line 1
    invoke-virtual { p0 }, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;
    move-result-object v0
    invoke-virtual { p0 }, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
    move-result-object v1
  .line 2
    invoke-static { v0, p1, v1 }, Lc/g/h/c;->e(Landroid/content/pm/PackageManager;Lc/g/h/d;Landroid/content/res/Resources;)Landroid/content/pm/ProviderInfo;
    move-result-object v0
    if-nez v0, :L0
    const/4 p0, 1
    const/4 p1, 0
  .line 3
    invoke-static { p0, p1 }, Lc/g/h/f$a;->a(I[Lc/g/h/f$b;)Lc/g/h/f$a;
    move-result-object p0
    return-object p0
  :L0
  .line 4
    iget-object v0, v0, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;
    invoke-static { p0, p1, v0, p2 }, Lc/g/h/c;->f(Landroid/content/Context;Lc/g/h/d;Ljava/lang/String;Landroid/os/CancellationSignal;)[Lc/g/h/f$b;
    move-result-object p0
    const/4 p1, 0
  .line 5
    invoke-static { p1, p0 }, Lc/g/h/f$a;->a(I[Lc/g/h/f$b;)Lc/g/h/f$a;
    move-result-object p0
    return-object p0
.end method

.method static e(Landroid/content/pm/PackageManager;Lc/g/h/d;Landroid/content/res/Resources;)Landroid/content/pm/ProviderInfo;
  .registers 8
  .line 1
    invoke-virtual { p1 }, Lc/g/h/d;->e()Ljava/lang/String;
    move-result-object v0
    const/4 v1, 0
  .line 2
    invoke-virtual { p0, v0, v1 }, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;
    move-result-object v2
    if-eqz v2, :L4
  .line 3
    iget-object v3, v2, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;
    invoke-virtual { p1 }, Lc/g/h/d;->f()Ljava/lang/String;
    move-result-object v4
    invoke-virtual { v3, v4 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v3
    if-eqz v3, :L3
  .line 4
    iget-object v0, v2, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;
    const/16 v3, 64
    invoke-virtual { p0, v0, v3 }, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    move-result-object p0
  .line 5
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;
    invoke-static { p0 }, Lc/g/h/c;->a([Landroid/content/pm/Signature;)Ljava/util/List;
    move-result-object p0
  .line 6
    sget-object v0, Lc/g/h/c;->a:Ljava/util/Comparator;
    invoke-static { p0, v0 }, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V
  .line 7
    invoke-static { p1, p2 }, Lc/g/h/c;->c(Lc/g/h/d;Landroid/content/res/Resources;)Ljava/util/List;
    move-result-object p1
  :L0
  .line 8
    invoke-interface { p1 }, Ljava/util/List;->size()I
    move-result p2
    if-ge v1, p2, :L2
  .line 9
    new-instance p2, Ljava/util/ArrayList;
    invoke-interface { p1, v1 }, Ljava/util/List;->get(I)Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Ljava/util/Collection;
    invoke-direct { p2, v0 }, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
  .line 10
    sget-object v0, Lc/g/h/c;->a:Ljava/util/Comparator;
    invoke-static { p2, v0 }, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V
  .line 11
    invoke-static { p0, p2 }, Lc/g/h/c;->b(Ljava/util/List;Ljava/util/List;)Z
    move-result p2
    if-eqz p2, :L1
    return-object v2
  :L1
    add-int/lit8 v1, v1, 1
    goto :L0
  :L2
    const/4 p0, 0
    return-object p0
  :L3
  .line 12
    new-instance p0, Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance p2, Ljava/lang/StringBuilder;
    invoke-direct { p2 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "Found content provider "
    invoke-virtual { p2, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { p2, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string v0, ", but package was not "
    invoke-virtual { p2, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
  .line 13
    invoke-virtual { p1 }, Lc/g/h/d;->f()Ljava/lang/String;
    move-result-object p1
    invoke-virtual { p2, p1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { p2 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p1
    invoke-direct { p0, p1 }, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V
    throw p0
  :L4
  .line 14
    new-instance p0, Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance p1, Ljava/lang/StringBuilder;
    invoke-direct { p1 }, Ljava/lang/StringBuilder;-><init>()V
    const-string p2, "No package found for authority: "
    invoke-virtual { p1, p2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { p1, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { p1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p1
    invoke-direct { p0, p1 }, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V
    goto :L6
  :L5
    throw p0
  :L6
    goto :L5
.end method

.method static f(Landroid/content/Context;Lc/g/h/d;Ljava/lang/String;Landroid/os/CancellationSignal;)[Lc/g/h/f$b;
  .catchall { :L0 .. :L2 } :L19
  .catchall { :L3 .. :L15 } :L16
  .registers 22
    move-object/from16 v0, p2
    const-string v1, "result_code"
    const-string v2, "font_italic"
    const-string v3, "font_weight"
    const-string v4, "font_ttc_index"
    const-string v5, "file_id"
    const-string v6, "_id"
  .line 1
    new-instance v7, Ljava/util/ArrayList;
    invoke-direct { v7 }, Ljava/util/ArrayList;-><init>()V
  .line 2
    new-instance v8, Landroid/net/Uri$Builder;
    invoke-direct { v8 }, Landroid/net/Uri$Builder;-><init>()V
    const-string v9, "content"
    invoke-virtual { v8, v9 }, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;
    move-result-object v8
  .line 3
    invoke-virtual { v8, v0 }, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;
    move-result-object v8
  .line 4
    invoke-virtual { v8 }, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;
    move-result-object v8
  .line 5
    new-instance v10, Landroid/net/Uri$Builder;
    invoke-direct { v10 }, Landroid/net/Uri$Builder;-><init>()V
    invoke-virtual { v10, v9 }, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;
    move-result-object v9
  .line 6
    invoke-virtual { v9, v0 }, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;
    move-result-object v0
    const-string v9, "file"
  .line 7
    invoke-virtual { v0, v9 }, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;
    move-result-object v0
  .line 8
    invoke-virtual { v0 }, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;
    move-result-object v0
    const/4 v9, 7
    const/16 v17, 0
  :L0
    new-array v12, v9, [Ljava/lang/String;
    const/4 v9, 0
    aput-object v6, v12, v9
    const/4 v15, 1
    aput-object v5, v12, v15
    const/4 v10, 2
    aput-object v4, v12, v10
    const/4 v10, 3
    const-string v11, "font_variation_settings"
    aput-object v11, v12, v10
    const/4 v10, 4
    aput-object v3, v12, v10
    const/4 v10, 5
    aput-object v2, v12, v10
    const/4 v10, 6
    aput-object v1, v12, v10
  .line 9
    sget v10, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v11, 16
    if-le v10, v11, :L1
  .line 10
    invoke-virtual/range { p0 .. p0 }, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;
    move-result-object v10
    const-string v13, "query = ?"
    new-array v14, v15, [Ljava/lang/String;
  .line 11
    invoke-virtual/range { p1 .. p1 }, Lc/g/h/d;->g()Ljava/lang/String;
    move-result-object v11
    aput-object v11, v14, v9
    const/16 v16, 0
    move-object v11, v8
    const/4 v9, 1
    move-object/from16 v15, v16
    move-object/from16 v16, p3
  .line 12
    invoke-virtual/range { v10 .. v16 }, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;
    move-result-object v10
    goto :L2
  :L1
    const/4 v9, 1
  .line 13
    invoke-virtual/range { p0 .. p0 }, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;
    move-result-object v10
    const-string v13, "query = ?"
    new-array v14, v9, [Ljava/lang/String;
  .line 14
    invoke-virtual/range { p1 .. p1 }, Lc/g/h/d;->g()Ljava/lang/String;
    move-result-object v11
    const/4 v15, 0
    aput-object v11, v14, v15
    const/4 v15, 0
    move-object v11, v8
  .line 15
    invoke-virtual/range { v10 .. v15 }, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    move-result-object v10
  :L2
    if-eqz v10, :L17
  :L3
  .line 16
    invoke-interface { v10 }, Landroid/database/Cursor;->getCount()I
    move-result v11
    if-lez v11, :L17
  .line 17
    invoke-interface { v10, v1 }, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I
    move-result v1
  .line 18
    new-instance v7, Ljava/util/ArrayList;
    invoke-direct { v7 }, Ljava/util/ArrayList;-><init>()V
  .line 19
    invoke-interface { v10, v6 }, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I
    move-result v6
  .line 20
    invoke-interface { v10, v5 }, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I
    move-result v5
  .line 21
    invoke-interface { v10, v4 }, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I
    move-result v4
  .line 22
    invoke-interface { v10, v3 }, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I
    move-result v3
  .line 23
    invoke-interface { v10, v2 }, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I
    move-result v2
  :L4
  .line 24
    invoke-interface { v10 }, Landroid/database/Cursor;->moveToNext()Z
    move-result v11
    if-eqz v11, :L17
    const/4 v11, -1
    if-eq v1, v11, :L5
  .line 25
    invoke-interface { v10, v1 }, Landroid/database/Cursor;->getInt(I)I
    move-result v15
    goto :L6
  :L5
    const/4 v15, 0
  :L6
    if-eq v4, v11, :L7
  .line 26
    invoke-interface { v10, v4 }, Landroid/database/Cursor;->getInt(I)I
    move-result v12
    goto :L8
  :L7
    const/4 v12, 0
  :L8
    if-ne v5, v11, :L9
  .line 27
    invoke-interface { v10, v6 }, Landroid/database/Cursor;->getLong(I)J
    move-result-wide v13
  .line 28
    invoke-static { v8, v13, v14 }, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;
    move-result-object v13
    goto :L10
  :L9
  .line 29
    invoke-interface { v10, v5 }, Landroid/database/Cursor;->getLong(I)J
    move-result-wide v13
  .line 30
    invoke-static { v0, v13, v14 }, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;
    move-result-object v13
  :L10
    if-eq v3, v11, :L11
  .line 31
    invoke-interface { v10, v3 }, Landroid/database/Cursor;->getInt(I)I
    move-result v14
    goto :L12
  :L11
    const/16 v14, 400
  :L12
    if-eq v2, v11, :L13
  .line 32
    invoke-interface { v10, v2 }, Landroid/database/Cursor;->getInt(I)I
    move-result v11
    if-ne v11, v9, :L13
    const/4 v11, 1
    goto :L14
  :L13
    const/4 v11, 0
  :L14
  .line 33
    invoke-static { v13, v12, v14, v11, v15 }, Lc/g/h/f$b;->a(Landroid/net/Uri;IIZI)Lc/g/h/f$b;
    move-result-object v11
    invoke-virtual { v7, v11 }, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
  :L15
    goto :L4
  :L16
    move-exception v0
    move-object/from16 v17, v10
    goto :L20
  :L17
    if-eqz v10, :L18
  .line 34
    invoke-interface { v10 }, Landroid/database/Cursor;->close()V
  :L18
    const/4 v0, 0
    new-array v0, v0, [Lc/g/h/f$b;
  .line 35
    invoke-virtual { v7, v0 }, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    move-result-object v0
    check-cast v0, [Lc/g/h/f$b;
    return-object v0
  :L19
    move-exception v0
  :L20
    if-eqz v17, :L21
  .line 36
    invoke-interface/range { v17 .. v17 }, Landroid/database/Cursor;->close()V
  :L21
  .line 37
    goto :L23
  :L22
    throw v0
  :L23
    goto :L22
.end method
