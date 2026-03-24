.class Lc/g/h/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "[B>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Lc/g/h/c$a;

    invoke-direct {v0}, Lc/g/h/c$a;-><init>()V

    sput-object v0, Lc/g/h/c;->a:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a([Landroid/content/pm/Signature;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/content/pm/Signature;",
            ")",
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 2
    :goto_6
    array-length v2, p0

    if-ge v1, v2, :cond_15

    .line 3
    aget-object v2, p0, v1

    invoke-virtual {v2}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_15
    return-object v0
.end method

.method private static b(Ljava/util/List;Ljava/util/List;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "[B>;",
            "Ljava/util/List<",
            "[B>;)Z"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_c

    return v2

    :cond_c
    const/4 v0, 0x0

    .line 2
    :goto_d
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_29

    .line 3
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-nez v1, :cond_26

    return v2

    :cond_26
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    :cond_29
    const/4 p0, 0x1

    return p0
.end method

.method private static c(Lc/g/h/d;Landroid/content/res/Resources;)Ljava/util/List;
    .registers 3
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

    .line 1
    invoke-virtual {p0}, Lc/g/h/d;->b()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 2
    invoke-virtual {p0}, Lc/g/h/d;->b()Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 3
    :cond_b
    invoke-virtual {p0}, Lc/g/h/d;->c()I

    move-result p0

    .line 4
    invoke-static {p1, p0}, Landroidx/core/content/c/c;->c(Landroid/content/res/Resources;I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static d(Landroid/content/Context;Lc/g/h/d;Landroid/os/CancellationSignal;)Lc/g/h/f$a;
    .registers 5

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 2
    invoke-static {v0, p1, v1}, Lc/g/h/c;->e(Landroid/content/pm/PackageManager;Lc/g/h/d;Landroid/content/res/Resources;)Landroid/content/pm/ProviderInfo;

    move-result-object v0

    if-nez v0, :cond_15

    const/4 p0, 0x1

    const/4 p1, 0x0

    .line 3
    invoke-static {p0, p1}, Lc/g/h/f$a;->a(I[Lc/g/h/f$b;)Lc/g/h/f$a;

    move-result-object p0

    return-object p0

    .line 4
    :cond_15
    iget-object v0, v0, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    invoke-static {p0, p1, v0, p2}, Lc/g/h/c;->f(Landroid/content/Context;Lc/g/h/d;Ljava/lang/String;Landroid/os/CancellationSignal;)[Lc/g/h/f$b;

    move-result-object p0

    const/4 p1, 0x0

    .line 5
    invoke-static {p1, p0}, Lc/g/h/f$a;->a(I[Lc/g/h/f$b;)Lc/g/h/f$a;

    move-result-object p0

    return-object p0
.end method

.method static e(Landroid/content/pm/PackageManager;Lc/g/h/d;Landroid/content/res/Resources;)Landroid/content/pm/ProviderInfo;
    .registers 8

    .line 1
    invoke-virtual {p1}, Lc/g/h/d;->e()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 2
    invoke-virtual {p0, v0, v1}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object v2

    if-eqz v2, :cond_73

    .line 3
    iget-object v3, v2, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1}, Lc/g/h/d;->f()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_50

    .line 4
    iget-object v0, v2, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    const/16 v3, 0x40

    invoke-virtual {p0, v0, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    .line 5
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    invoke-static {p0}, Lc/g/h/c;->a([Landroid/content/pm/Signature;)Ljava/util/List;

    move-result-object p0

    .line 6
    sget-object v0, Lc/g/h/c;->a:Ljava/util/Comparator;

    invoke-static {p0, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 7
    invoke-static {p1, p2}, Lc/g/h/c;->c(Lc/g/h/d;Landroid/content/res/Resources;)Ljava/util/List;

    move-result-object p1

    .line 8
    :goto_2e
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-ge v1, p2, :cond_4e

    .line 9
    new-instance p2, Ljava/util/ArrayList;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-direct {p2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 10
    sget-object v0, Lc/g/h/c;->a:Ljava/util/Comparator;

    invoke-static {p2, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 11
    invoke-static {p0, p2}, Lc/g/h/c;->b(Ljava/util/List;Ljava/util/List;)Z

    move-result p2

    if-eqz p2, :cond_4b

    return-object v2

    :cond_4b
    add-int/lit8 v1, v1, 0x1

    goto :goto_2e

    :cond_4e
    const/4 p0, 0x0

    return-object p0

    .line 12
    :cond_50
    new-instance p0, Landroid/content/pm/PackageManager$NameNotFoundException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Found content provider "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", but package was not "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    invoke-virtual {p1}, Lc/g/h/d;->f()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 14
    :cond_73
    new-instance p0, Landroid/content/pm/PackageManager$NameNotFoundException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "No package found for authority: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    goto :goto_8b

    :goto_8a
    throw p0

    :goto_8b
    goto :goto_8a
.end method

.method static f(Landroid/content/Context;Lc/g/h/d;Ljava/lang/String;Landroid/os/CancellationSignal;)[Lc/g/h/f$b;
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

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 2
    new-instance v8, Landroid/net/Uri$Builder;

    invoke-direct {v8}, Landroid/net/Uri$Builder;-><init>()V

    const-string v9, "content"

    invoke-virtual {v8, v9}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v8

    .line 3
    invoke-virtual {v8, v0}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v8

    .line 4
    invoke-virtual {v8}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v8

    .line 5
    new-instance v10, Landroid/net/Uri$Builder;

    invoke-direct {v10}, Landroid/net/Uri$Builder;-><init>()V

    invoke-virtual {v10, v9}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v9

    .line 6
    invoke-virtual {v9, v0}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v9, "file"

    .line 7
    invoke-virtual {v0, v9}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 8
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    const/4 v9, 0x7

    const/16 v17, 0x0

    :try_start_40
    new-array v12, v9, [Ljava/lang/String;

    const/4 v9, 0x0

    aput-object v6, v12, v9

    const/4 v15, 0x1

    aput-object v5, v12, v15

    const/4 v10, 0x2

    aput-object v4, v12, v10

    const/4 v10, 0x3

    const-string v11, "font_variation_settings"

    aput-object v11, v12, v10

    const/4 v10, 0x4

    aput-object v3, v12, v10

    const/4 v10, 0x5

    aput-object v2, v12, v10

    const/4 v10, 0x6

    aput-object v1, v12, v10

    .line 9
    sget v10, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v11, 0x10

    if-le v10, v11, :cond_7a

    .line 10
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v13, "query = ?"

    new-array v14, v15, [Ljava/lang/String;

    .line 11
    invoke-virtual/range {p1 .. p1}, Lc/g/h/d;->g()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v14, v9

    const/16 v16, 0x0

    move-object v11, v8

    const/4 v9, 0x1

    move-object/from16 v15, v16

    move-object/from16 v16, p3

    .line 12
    invoke-virtual/range {v10 .. v16}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v10

    goto :goto_90

    :cond_7a
    const/4 v9, 0x1

    .line 13
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v13, "query = ?"

    new-array v14, v9, [Ljava/lang/String;

    .line 14
    invoke-virtual/range {p1 .. p1}, Lc/g/h/d;->g()Ljava/lang/String;

    move-result-object v11

    const/4 v15, 0x0

    aput-object v11, v14, v15

    const/4 v15, 0x0

    move-object v11, v8

    .line 15
    invoke-virtual/range {v10 .. v15}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10
    :try_end_90
    .catchall {:try_start_40 .. :try_end_90} :catchall_10e

    :goto_90
    if-eqz v10, :cond_ff

    .line 16
    :try_start_92
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v11

    if-lez v11, :cond_ff

    .line 17
    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 18
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 19
    invoke-interface {v10, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 20
    invoke-interface {v10, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 21
    invoke-interface {v10, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 22
    invoke-interface {v10, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 23
    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 24
    :goto_b5
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v11

    if-eqz v11, :cond_ff

    const/4 v11, -0x1

    if-eq v1, v11, :cond_c3

    .line 25
    invoke-interface {v10, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    goto :goto_c4

    :cond_c3
    const/4 v15, 0x0

    :goto_c4
    if-eq v4, v11, :cond_cb

    .line 26
    invoke-interface {v10, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    goto :goto_cc

    :cond_cb
    const/4 v12, 0x0

    :goto_cc
    if-ne v5, v11, :cond_d7

    .line 27
    invoke-interface {v10, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    .line 28
    invoke-static {v8, v13, v14}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v13

    goto :goto_df

    .line 29
    :cond_d7
    invoke-interface {v10, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    .line 30
    invoke-static {v0, v13, v14}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v13

    :goto_df
    if-eq v3, v11, :cond_e6

    .line 31
    invoke-interface {v10, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    goto :goto_e8

    :cond_e6
    const/16 v14, 0x190

    :goto_e8
    if-eq v2, v11, :cond_f2

    .line 32
    invoke-interface {v10, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    if-ne v11, v9, :cond_f2

    const/4 v11, 0x1

    goto :goto_f3

    :cond_f2
    const/4 v11, 0x0

    .line 33
    :goto_f3
    invoke-static {v13, v12, v14, v11, v15}, Lc/g/h/f$b;->a(Landroid/net/Uri;IIZI)Lc/g/h/f$b;

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_fa
    .catchall {:try_start_92 .. :try_end_fa} :catchall_fb

    goto :goto_b5

    :catchall_fb
    move-exception v0

    move-object/from16 v17, v10

    goto :goto_10f

    :cond_ff
    if-eqz v10, :cond_104

    .line 34
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_104
    const/4 v0, 0x0

    new-array v0, v0, [Lc/g/h/f$b;

    .line 35
    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lc/g/h/f$b;

    return-object v0

    :catchall_10e
    move-exception v0

    :goto_10f
    if-eqz v17, :cond_114

    .line 36
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    .line 37
    :cond_114
    goto :goto_116

    :goto_115
    throw v0

    :goto_116
    goto :goto_115
.end method
