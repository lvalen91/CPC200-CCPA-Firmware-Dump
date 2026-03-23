.class Landroidx/core/content/FileProvider$b;
.super Ljava/lang/Object;
.implements Landroidx/core/content/FileProvider$a;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Landroidx/core/content/FileProvider;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 8
  name = "b"
.end annotation

.field private final a:Ljava/lang/String;

.field private final b:Ljava/util/HashMap;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "Ljava/util/HashMap<",
      "Ljava/lang/String;",
      "Ljava/io/File;",
      ">;"
    }
  .end annotation
.end field

.method constructor <init>(Ljava/lang/String;)V
  .registers 3
  .line 1
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
  .line 2
    new-instance v0, Ljava/util/HashMap;
    invoke-direct { v0 }, Ljava/util/HashMap;-><init>()V
    iput-object v0, p0, Landroidx/core/content/FileProvider$b;->b:Ljava/util/HashMap;
  .line 3
    iput-object p1, p0, Landroidx/core/content/FileProvider$b;->a:Ljava/lang/String;
    return-void
.end method

.method public a(Landroid/net/Uri;)Ljava/io/File;
  .catch Ljava/io/IOException; { :L0 .. :L1 } :L3
  .registers 6
  .line 1
    invoke-virtual { p1 }, Landroid/net/Uri;->getEncodedPath()Ljava/lang/String;
    move-result-object v0
    const/16 v1, 47
    const/4 v2, 1
  .line 2
    invoke-virtual { v0, v1, v2 }, Ljava/lang/String;->indexOf(II)I
    move-result v1
  .line 3
    invoke-virtual { v0, v2, v1 }, Ljava/lang/String;->substring(II)Ljava/lang/String;
    move-result-object v3
    invoke-static { v3 }, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v3
    add-int/2addr v1, v2
  .line 4
    invoke-virtual { v0, v1 }, Ljava/lang/String;->substring(I)Ljava/lang/String;
    move-result-object v0
    invoke-static { v0 }, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v0
  .line 5
    iget-object v1, p0, Landroidx/core/content/FileProvider$b;->b:Ljava/util/HashMap;
    invoke-virtual { v1, v3 }, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object v1
    check-cast v1, Ljava/io/File;
    if-eqz v1, :L4
  .line 6
    new-instance p1, Ljava/io/File;
    invoke-direct { p1, v1, v0 }, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
  :L0
  .line 7
    invoke-virtual { p1 }, Ljava/io/File;->getCanonicalFile()Ljava/io/File;
    move-result-object p1
  :L1
  .line 8
    invoke-virtual { p1 }, Ljava/io/File;->getPath()Ljava/lang/String;
    move-result-object v0
    invoke-virtual { v1 }, Ljava/io/File;->getPath()Ljava/lang/String;
    move-result-object v1
    invoke-virtual { v0, v1 }, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    move-result v0
    if-eqz v0, :L2
    return-object p1
  :L2
  .line 9
    new-instance p1, Ljava/lang/SecurityException;
    const-string v0, "Resolved path jumped beyond configured root"
    invoke-direct { p1, v0 }, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V
    throw p1
  :L3
  .line 10
    new-instance v0, Ljava/lang/IllegalArgumentException;
    new-instance v1, Ljava/lang/StringBuilder;
    invoke-direct { v1 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v2, "Failed to resolve canonical path for "
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v1, p1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    invoke-virtual { v1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p1
    invoke-direct { v0, p1 }, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
    throw v0
  :L4
  .line 11
    new-instance v0, Ljava/lang/IllegalArgumentException;
    new-instance v1, Ljava/lang/StringBuilder;
    invoke-direct { v1 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v2, "Unable to find configured root for "
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v1, p1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    invoke-virtual { v1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p1
    invoke-direct { v0, p1 }, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
    throw v0
.end method

.method public b(Ljava/io/File;)Landroid/net/Uri;
  .catch Ljava/io/IOException; { :L0 .. :L1 } :L8
  .registers 7
  :L0
  .line 1
    invoke-virtual { p1 }, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;
    move-result-object p1
  :L1
    const/4 v0, 0
  .line 2
    iget-object v1, p0, Landroidx/core/content/FileProvider$b;->b:Ljava/util/HashMap;
    invoke-virtual { v1 }, Ljava/util/HashMap;->entrySet()Ljava/util/Set;
    move-result-object v1
    invoke-interface { v1 }, Ljava/util/Set;->iterator()Ljava/util/Iterator;
    move-result-object v1
  :L2
    invoke-interface { v1 }, Ljava/util/Iterator;->hasNext()Z
    move-result v2
    if-eqz v2, :L4
    invoke-interface { v1 }, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object v2
    check-cast v2, Ljava/util/Map$Entry;
  .line 3
    invoke-interface { v2 }, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;
    move-result-object v3
    check-cast v3, Ljava/io/File;
    invoke-virtual { v3 }, Ljava/io/File;->getPath()Ljava/lang/String;
    move-result-object v3
  .line 4
    invoke-virtual { p1, v3 }, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    move-result v4
    if-eqz v4, :L2
    if-eqz v0, :L3
  .line 5
    invoke-virtual { v3 }, Ljava/lang/String;->length()I
    move-result v3
    invoke-interface { v0 }, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;
    move-result-object v4
    check-cast v4, Ljava/io/File;
    invoke-virtual { v4 }, Ljava/io/File;->getPath()Ljava/lang/String;
    move-result-object v4
    invoke-virtual { v4 }, Ljava/lang/String;->length()I
    move-result v4
    if-le v3, v4, :L2
  :L3
    move-object v0, v2
    goto :L2
  :L4
    if-eqz v0, :L7
  .line 6
    invoke-interface { v0 }, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;
    move-result-object v1
    check-cast v1, Ljava/io/File;
    invoke-virtual { v1 }, Ljava/io/File;->getPath()Ljava/lang/String;
    move-result-object v1
    const-string v2, "/"
  .line 7
    invoke-virtual { v1, v2 }, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
    move-result v3
    if-eqz v3, :L5
  .line 8
    invoke-virtual { v1 }, Ljava/lang/String;->length()I
    move-result v1
    invoke-virtual { p1, v1 }, Ljava/lang/String;->substring(I)Ljava/lang/String;
    move-result-object p1
    goto :L6
  :L5
  .line 9
    invoke-virtual { v1 }, Ljava/lang/String;->length()I
    move-result v1
    add-int/lit8 v1, v1, 1
    invoke-virtual { p1, v1 }, Ljava/lang/String;->substring(I)Ljava/lang/String;
    move-result-object p1
  :L6
  .line 10
    new-instance v1, Ljava/lang/StringBuilder;
    invoke-direct { v1 }, Ljava/lang/StringBuilder;-><init>()V
    invoke-interface { v0 }, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Ljava/lang/String;
    invoke-static { v0 }, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v0
    invoke-virtual { v1, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const/16 v0, 47
    invoke-virtual { v1, v0 }, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    invoke-static { p1, v2 }, Landroid/net/Uri;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    move-result-object p1
    invoke-virtual { v1, p1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p1
  .line 11
    new-instance v0, Landroid/net/Uri$Builder;
    invoke-direct { v0 }, Landroid/net/Uri$Builder;-><init>()V
    const-string v1, "content"
    invoke-virtual { v0, v1 }, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;
    move-result-object v0
    iget-object v1, p0, Landroidx/core/content/FileProvider$b;->a:Ljava/lang/String;
  .line 12
    invoke-virtual { v0, v1 }, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;
    move-result-object v0
    invoke-virtual { v0, p1 }, Landroid/net/Uri$Builder;->encodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;
    move-result-object p1
    invoke-virtual { p1 }, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;
    move-result-object p1
    return-object p1
  :L7
  .line 13
    new-instance v0, Ljava/lang/IllegalArgumentException;
    new-instance v1, Ljava/lang/StringBuilder;
    invoke-direct { v1 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v2, "Failed to find configured root that contains "
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v1, p1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p1
    invoke-direct { v0, p1 }, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
    throw v0
  :L8
  .line 14
    new-instance v0, Ljava/lang/IllegalArgumentException;
    new-instance v1, Ljava/lang/StringBuilder;
    invoke-direct { v1 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v2, "Failed to resolve canonical path for "
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v1, p1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    invoke-virtual { v1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p1
    invoke-direct { v0, p1 }, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
    goto :L10
  :L9
    throw v0
  :L10
    goto :L9
.end method

.method c(Ljava/lang/String;Ljava/io/File;)V
  .catch Ljava/io/IOException; { :L0 .. :L1 } :L2
  .registers 6
  .line 1
    invoke-static { p1 }, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    move-result v0
    if-nez v0, :L3
  :L0
  .line 2
    invoke-virtual { p2 }, Ljava/io/File;->getCanonicalFile()Ljava/io/File;
    move-result-object p2
  :L1
  .line 3
    iget-object v0, p0, Landroidx/core/content/FileProvider$b;->b:Ljava/util/HashMap;
    invoke-virtual { v0, p1, p2 }, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    return-void
  :L2
    move-exception p1
  .line 4
    new-instance v0, Ljava/lang/IllegalArgumentException;
    new-instance v1, Ljava/lang/StringBuilder;
    invoke-direct { v1 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v2, "Failed to resolve canonical path for "
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v1, p2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    invoke-virtual { v1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p2
    invoke-direct { v0, p2, p1 }, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    throw v0
  :L3
  .line 5
    new-instance p1, Ljava/lang/IllegalArgumentException;
    const-string p2, "Name must not be empty"
    invoke-direct { p1, p2 }, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
    throw p1
.end method
