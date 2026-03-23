.class Lokhttp3/internal/io/FileSystem$1;
.super Ljava/lang/Object;
.implements Lokhttp3/internal/io/FileSystem;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Lokhttp3/internal/io/FileSystem;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = null
.end annotation

.method constructor <init>()V
  .registers 1
  .line 1
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public appendingSink(Ljava/io/File;)Lokio/Sink;
  .catch Ljava/io/FileNotFoundException; { :L0 .. :L1 } :L2
  .registers 3
  :L0
  .line 1
    invoke-static { p1 }, Lokio/Okio;->appendingSink(Ljava/io/File;)Lokio/Sink;
    move-result-object p1
  :L1
    return-object p1
  :L2
  .line 2
    invoke-virtual { p1 }, Ljava/io/File;->getParentFile()Ljava/io/File;
    move-result-object v0
    invoke-virtual { v0 }, Ljava/io/File;->mkdirs()Z
  .line 3
    invoke-static { p1 }, Lokio/Okio;->appendingSink(Ljava/io/File;)Lokio/Sink;
    move-result-object p1
    return-object p1
.end method

.method public delete(Ljava/io/File;)V
  .registers 5
  .line 1
    invoke-virtual { p1 }, Ljava/io/File;->delete()Z
    move-result v0
    if-nez v0, :L1
    invoke-virtual { p1 }, Ljava/io/File;->exists()Z
    move-result v0
    if-nez v0, :L0
    goto :L1
  :L0
  .line 2
    new-instance v0, Ljava/io/IOException;
    new-instance v1, Ljava/lang/StringBuilder;
    invoke-direct { v1 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v2, "failed to delete "
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v1, p1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    invoke-virtual { v1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p1
    invoke-direct { v0, p1 }, Ljava/io/IOException;-><init>(Ljava/lang/String;)V
    throw v0
  :L1
    return-void
.end method

.method public deleteContents(Ljava/io/File;)V
  .registers 6
  .line 1
    invoke-virtual { p1 }, Ljava/io/File;->listFiles()[Ljava/io/File;
    move-result-object v0
    if-eqz v0, :L4
  .line 2
    array-length p1, v0
    const/4 v1, 0
  :L0
    if-ge v1, p1, :L3
    aget-object v2, v0, v1
  .line 3
    invoke-virtual { v2 }, Ljava/io/File;->isDirectory()Z
    move-result v3
    if-eqz v3, :L1
  .line 4
    invoke-virtual { p0, v2 }, Lokhttp3/internal/io/FileSystem$1;->deleteContents(Ljava/io/File;)V
  :L1
  .line 5
    invoke-virtual { v2 }, Ljava/io/File;->delete()Z
    move-result v3
    if-eqz v3, :L2
    add-int/lit8 v1, v1, 1
    goto :L0
  :L2
  .line 6
    new-instance p1, Ljava/io/IOException;
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "failed to delete "
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    invoke-direct { p1, v0 }, Ljava/io/IOException;-><init>(Ljava/lang/String;)V
    throw p1
  :L3
    return-void
  :L4
  .line 7
    new-instance v0, Ljava/io/IOException;
    new-instance v1, Ljava/lang/StringBuilder;
    invoke-direct { v1 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v2, "not a readable directory: "
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v1, p1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    invoke-virtual { v1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p1
    invoke-direct { v0, p1 }, Ljava/io/IOException;-><init>(Ljava/lang/String;)V
    goto :L6
  :L5
    throw v0
  :L6
    goto :L5
.end method

.method public exists(Ljava/io/File;)Z
  .registers 2
  .line 1
    invoke-virtual { p1 }, Ljava/io/File;->exists()Z
    move-result p1
    return p1
.end method

.method public rename(Ljava/io/File;Ljava/io/File;)V
  .registers 6
  .line 1
    invoke-virtual { p0, p2 }, Lokhttp3/internal/io/FileSystem$1;->delete(Ljava/io/File;)V
  .line 2
    invoke-virtual { p1, p2 }, Ljava/io/File;->renameTo(Ljava/io/File;)Z
    move-result v0
    if-eqz v0, :L0
    return-void
  :L0
  .line 3
    new-instance v0, Ljava/io/IOException;
    new-instance v1, Ljava/lang/StringBuilder;
    invoke-direct { v1 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v2, "failed to rename "
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v1, p1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    const-string p1, " to "
    invoke-virtual { v1, p1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v1, p2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    invoke-virtual { v1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p1
    invoke-direct { v0, p1 }, Ljava/io/IOException;-><init>(Ljava/lang/String;)V
    throw v0
.end method

.method public sink(Ljava/io/File;)Lokio/Sink;
  .catch Ljava/io/FileNotFoundException; { :L0 .. :L1 } :L2
  .registers 3
  :L0
  .line 1
    invoke-static { p1 }, Lokio/Okio;->sink(Ljava/io/File;)Lokio/Sink;
    move-result-object p1
  :L1
    return-object p1
  :L2
  .line 2
    invoke-virtual { p1 }, Ljava/io/File;->getParentFile()Ljava/io/File;
    move-result-object v0
    invoke-virtual { v0 }, Ljava/io/File;->mkdirs()Z
  .line 3
    invoke-static { p1 }, Lokio/Okio;->sink(Ljava/io/File;)Lokio/Sink;
    move-result-object p1
    return-object p1
.end method

.method public size(Ljava/io/File;)J
  .registers 4
  .line 1
    invoke-virtual { p1 }, Ljava/io/File;->length()J
    move-result-wide v0
    return-wide v0
.end method

.method public source(Ljava/io/File;)Lokio/Source;
  .registers 2
  .line 1
    invoke-static { p1 }, Lokio/Okio;->source(Ljava/io/File;)Lokio/Source;
    move-result-object p1
    return-object p1
.end method
