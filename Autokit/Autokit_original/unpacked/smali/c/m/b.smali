.class final Lc/m/b;
.super Ljava/lang/Object;
.implements Ljava/io/Closeable;
.source "SourceFile"

.annotation system Ldalvik/annotation/MemberClasses;
  value = {
    Lc/m/b$b;
  }
.end annotation

.field private final b:Ljava/io/File;

.field private final c:J

.field private final d:Ljava/io/File;

.field private final e:Ljava/io/RandomAccessFile;

.field private final f:Ljava/nio/channels/FileChannel;

.field private final g:Ljava/nio/channels/FileLock;

.method constructor <init>(Ljava/io/File;Ljava/io/File;)V
  .catch Ljava/io/IOException; { :L0 .. :L1 } :L9
  .catch Ljava/lang/RuntimeException; { :L0 .. :L1 } :L8
  .catch Ljava/lang/Error; { :L0 .. :L1 } :L7
  .catch Ljava/io/IOException; { :L1 .. :L2 } :L5
  .catch Ljava/lang/RuntimeException; { :L1 .. :L2 } :L4
  .catch Ljava/lang/Error; { :L1 .. :L2 } :L3
  .catch Ljava/io/IOException; { :L2 .. :L7 } :L9
  .catch Ljava/lang/RuntimeException; { :L2 .. :L7 } :L8
  .catch Ljava/lang/Error; { :L2 .. :L7 } :L7
  .registers 5
  .line 1
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
  .line 2
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "MultiDexExtractor("
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { p1 }, Ljava/io/File;->getPath()Ljava/lang/String;
    move-result-object v1
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string v1, ", "
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { p2 }, Ljava/io/File;->getPath()Ljava/lang/String;
    move-result-object v1
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string v1, ")"
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
  .line 3
    iput-object p1, p0, Lc/m/b;->b:Ljava/io/File;
  .line 4
    iput-object p2, p0, Lc/m/b;->d:Ljava/io/File;
  .line 5
    invoke-static { p1 }, Lc/m/b;->f(Ljava/io/File;)J
    move-result-wide v0
    iput-wide v0, p0, Lc/m/b;->c:J
  .line 6
    new-instance p1, Ljava/io/File;
    const-string v0, "MultiDex.lock"
    invoke-direct { p1, p2, v0 }, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
  .line 7
    new-instance p2, Ljava/io/RandomAccessFile;
    const-string v0, "rw"
    invoke-direct { p2, p1, v0 }, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    iput-object p2, p0, Lc/m/b;->e:Ljava/io/RandomAccessFile;
  :L0
  .line 8
    invoke-virtual { p2 }, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;
    move-result-object p2
    iput-object p2, p0, Lc/m/b;->f:Ljava/nio/channels/FileChannel;
  :L1
  .line 9
    new-instance p2, Ljava/lang/StringBuilder;
    invoke-direct { p2 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v0, "Blocking on lock "
    invoke-virtual { p2, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { p1 }, Ljava/io/File;->getPath()Ljava/lang/String;
    move-result-object v0
    invoke-virtual { p2, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { p2 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
  .line 10
    iget-object p2, p0, Lc/m/b;->f:Ljava/nio/channels/FileChannel;
    invoke-virtual { p2 }, Ljava/nio/channels/FileChannel;->lock()Ljava/nio/channels/FileLock;
    move-result-object p2
    iput-object p2, p0, Lc/m/b;->g:Ljava/nio/channels/FileLock;
  :L2
  .line 11
    new-instance p2, Ljava/lang/StringBuilder;
    invoke-direct { p2 }, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual { p1 }, Ljava/io/File;->getPath()Ljava/lang/String;
    move-result-object p1
    invoke-virtual { p2, p1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string p1, " locked"
    invoke-virtual { p2, p1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { p2 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    return-void
  :L3
    move-exception p1
    goto :L6
  :L4
    move-exception p1
    goto :L6
  :L5
    move-exception p1
  :L6
  .line 12
    iget-object p2, p0, Lc/m/b;->f:Ljava/nio/channels/FileChannel;
    invoke-static { p2 }, Lc/m/b;->b(Ljava/io/Closeable;)V
  .line 13
    throw p1
  :L7
    move-exception p1
    goto :L10
  :L8
    move-exception p1
    goto :L10
  :L9
    move-exception p1
  :L10
  .line 14
    iget-object p2, p0, Lc/m/b;->e:Ljava/io/RandomAccessFile;
    invoke-static { p2 }, Lc/m/b;->b(Ljava/io/Closeable;)V
  .line 15
    throw p1
.end method

.method private a()V
  .registers 8
  .line 1
    iget-object v0, p0, Lc/m/b;->d:Ljava/io/File;
    new-instance v1, Lc/m/b$a;
    invoke-direct { v1, p0 }, Lc/m/b$a;-><init>(Lc/m/b;)V
    invoke-virtual { v0, v1 }, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;
    move-result-object v0
    if-nez v0, :L0
  .line 2
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "Failed to list secondary dex dir content ("
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget-object v1, p0, Lc/m/b;->d:Ljava/io/File;
    invoke-virtual { v1 }, Ljava/io/File;->getPath()Ljava/lang/String;
    move-result-object v1
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string v1, ")."
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    return-void
  :L0
  .line 3
    array-length v1, v0
    const/4 v2, 0
  :L1
    if-ge v2, v1, :L4
    aget-object v3, v0, v2
  .line 4
    new-instance v4, Ljava/lang/StringBuilder;
    invoke-direct { v4 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v5, "Trying to delete old file "
    invoke-virtual { v4, v5 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v3 }, Ljava/io/File;->getPath()Ljava/lang/String;
    move-result-object v5
    invoke-virtual { v4, v5 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string v5, " of size "
    invoke-virtual { v4, v5 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
  .line 5
    invoke-virtual { v3 }, Ljava/io/File;->length()J
    move-result-wide v5
    invoke-virtual { v4, v5, v6 }, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
    invoke-virtual { v4 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
  .line 6
    invoke-virtual { v3 }, Ljava/io/File;->delete()Z
    move-result v4
    if-nez v4, :L2
  .line 7
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
  .line 8
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
    return-void
.end method

.method private static b(Ljava/io/Closeable;)V
  .catch Ljava/io/IOException; { :L0 .. :L1 } :L1
  .registers 1
  :L0
  .line 1
    invoke-interface { p0 }, Ljava/io/Closeable;->close()V
  :L1
    return-void
.end method

.method private static c(Ljava/util/zip/ZipFile;Ljava/util/zip/ZipEntry;Ljava/io/File;Ljava/lang/String;)V
  .catchall { :L0 .. :L1 } :L9
  .catchall { :L1 .. :L4 } :L8
  .catchall { :L4 .. :L5 } :L9
  .catchall { :L6 .. :L9 } :L9
  .registers 8
  .line 1
    invoke-virtual { p0, p1 }, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;
    move-result-object p0
  .line 2
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "tmp-"
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0, p3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p3
  .line 3
    invoke-virtual { p2 }, Ljava/io/File;->getParentFile()Ljava/io/File;
    move-result-object v0
    const-string v1, ".zip"
  .line 4
    invoke-static { p3, v1, v0 }, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;
    move-result-object p3
  .line 5
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "Extracting "
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { p3 }, Ljava/io/File;->getPath()Ljava/lang/String;
    move-result-object v1
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
  :L0
  .line 6
    new-instance v0, Ljava/util/zip/ZipOutputStream;
    new-instance v1, Ljava/io/BufferedOutputStream;
    new-instance v2, Ljava/io/FileOutputStream;
    invoke-direct { v2, p3 }, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    invoke-direct { v1, v2 }, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    invoke-direct { v0, v1 }, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V
  :L1
  .line 7
    new-instance v1, Ljava/util/zip/ZipEntry;
    const-string v2, "classes.dex"
    invoke-direct { v1, v2 }, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V
  .line 8
    invoke-virtual { p1 }, Ljava/util/zip/ZipEntry;->getTime()J
    move-result-wide v2
    invoke-virtual { v1, v2, v3 }, Ljava/util/zip/ZipEntry;->setTime(J)V
  .line 9
    invoke-virtual { v0, v1 }, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V
    const/16 p1, 16384
    new-array p1, p1, [B
  .line 10
    invoke-virtual { p0, p1 }, Ljava/io/InputStream;->read([B)I
    move-result v1
  :L2
    const/4 v2, -1
    if-eq v1, v2, :L3
    const/4 v2, 0
  .line 11
    invoke-virtual { v0, p1, v2, v1 }, Ljava/util/zip/ZipOutputStream;->write([BII)V
  .line 12
    invoke-virtual { p0, p1 }, Ljava/io/InputStream;->read([B)I
    move-result v1
    goto :L2
  :L3
  .line 13
    invoke-virtual { v0 }, Ljava/util/zip/ZipOutputStream;->closeEntry()V
  :L4
  .line 14
    invoke-virtual { v0 }, Ljava/util/zip/ZipOutputStream;->close()V
  .line 15
    invoke-virtual { p3 }, Ljava/io/File;->setReadOnly()Z
    move-result p1
    if-eqz p1, :L7
  .line 16
    new-instance p1, Ljava/lang/StringBuilder;
    invoke-direct { p1 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v0, "Renaming to "
    invoke-virtual { p1, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { p2 }, Ljava/io/File;->getPath()Ljava/lang/String;
    move-result-object v0
    invoke-virtual { p1, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { p1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
  .line 17
    invoke-virtual { p3, p2 }, Ljava/io/File;->renameTo(Ljava/io/File;)Z
    move-result p1
  :L5
    if-eqz p1, :L6
  .line 18
    invoke-static { p0 }, Lc/m/b;->b(Ljava/io/Closeable;)V
  .line 19
    invoke-virtual { p3 }, Ljava/io/File;->delete()Z
    return-void
  :L6
  .line 20
    new-instance p1, Ljava/io/IOException;
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "Failed to rename \""
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { p3 }, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
    move-result-object v1
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string v1, "\" to \""
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
  .line 21
    invoke-virtual { p2 }, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
    move-result-object p2
    invoke-virtual { v0, p2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string p2, "\""
    invoke-virtual { v0, p2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p2
    invoke-direct { p1, p2 }, Ljava/io/IOException;-><init>(Ljava/lang/String;)V
    throw p1
  :L7
  .line 22
    new-instance p1, Ljava/io/IOException;
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "Failed to mark readonly \""
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { p3 }, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
    move-result-object v1
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string v1, "\" (tmp of \""
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
  .line 23
    invoke-virtual { p2 }, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
    move-result-object p2
    invoke-virtual { v0, p2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string p2, "\")"
    invoke-virtual { v0, p2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p2
    invoke-direct { p1, p2 }, Ljava/io/IOException;-><init>(Ljava/lang/String;)V
    throw p1
  :L8
    move-exception p1
  .line 24
    invoke-virtual { v0 }, Ljava/util/zip/ZipOutputStream;->close()V
    throw p1
  :L9
    move-exception p1
  .line 25
    invoke-static { p0 }, Lc/m/b;->b(Ljava/io/Closeable;)V
  .line 26
    invoke-virtual { p3 }, Ljava/io/File;->delete()Z
    goto :L11
  :L10
    throw p1
  :L11
    goto :L10
.end method

.method private static d(Landroid/content/Context;)Landroid/content/SharedPreferences;
  .registers 3
  .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v1, 11
    if-ge v0, v1, :L0
    const/4 v0, 0
    goto :L1
  :L0
    const/4 v0, 4
  :L1
    const-string v1, "multidex.version"
    invoke-virtual { p0, v1, v0 }, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;
    move-result-object p0
    return-object p0
.end method

.method private static e(Ljava/io/File;)J
  .registers 5
  .line 1
    invoke-virtual { p0 }, Ljava/io/File;->lastModified()J
    move-result-wide v0
    const-wide/16 v2, -1
    cmp-long p0, v0, v2
    if-nez p0, :L0
    const-wide/16 v2, 1
    sub-long/2addr v0, v2
  :L0
    return-wide v0
.end method

.method private static f(Ljava/io/File;)J
  .registers 5
  .line 1
    invoke-static { p0 }, Lc/m/c;->c(Ljava/io/File;)J
    move-result-wide v0
    const-wide/16 v2, -1
    cmp-long p0, v0, v2
    if-nez p0, :L0
    const-wide/16 v2, 1
    sub-long/2addr v0, v2
  :L0
    return-wide v0
.end method

.method private static g(Landroid/content/Context;Ljava/io/File;JLjava/lang/String;)Z
  .registers 12
  .line 1
    invoke-static { p0 }, Lc/m/b;->d(Landroid/content/Context;)Landroid/content/SharedPreferences;
    move-result-object p0
  .line 2
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual { v0, p4 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string v1, "timestamp"
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    const-wide/16 v1, -1
    invoke-interface { p0, v0, v1, v2 }, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J
    move-result-wide v3
    invoke-static { p1 }, Lc/m/b;->e(Ljava/io/File;)J
    move-result-wide v5
    cmp-long p1, v3, v5
    if-nez p1, :L1
    new-instance p1, Ljava/lang/StringBuilder;
    invoke-direct { p1 }, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual { p1, p4 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string p4, "crc"
    invoke-virtual { p1, p4 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { p1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p1
  .line 3
    invoke-interface { p0, p1, v1, v2 }, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J
    move-result-wide p0
    cmp-long p4, p0, p2
    if-eqz p4, :L0
    goto :L1
  :L0
    const/4 p0, 0
    goto :L2
  :L1
    const/4 p0, 1
  :L2
    return p0
.end method

.method private i(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(",
      "Landroid/content/Context;",
      "Ljava/lang/String;",
      ")",
      "Ljava/util/List<",
      "Lc/m/b$b;",
      ">;"
    }
  .end annotation
  .registers 19
    move-object/from16 v0, p0
    move-object/from16 v1, p2
  .line 1
    new-instance v2, Ljava/lang/StringBuilder;
    invoke-direct { v2 }, Ljava/lang/StringBuilder;-><init>()V
    iget-object v3, v0, Lc/m/b;->b:Ljava/io/File;
    invoke-virtual { v3 }, Ljava/io/File;->getName()Ljava/lang/String;
    move-result-object v3
    invoke-virtual { v2, v3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string v3, ".classes"
    invoke-virtual { v2, v3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v2 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v2
  .line 2
    invoke-static/range { p1 .. p1 }, Lc/m/b;->d(Landroid/content/Context;)Landroid/content/SharedPreferences;
    move-result-object v3
  .line 3
    new-instance v4, Ljava/lang/StringBuilder;
    invoke-direct { v4 }, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual { v4, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string v5, "dex.number"
    invoke-virtual { v4, v5 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v4 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v4
    const/4 v5, 1
    invoke-interface { v3, v4, v5 }, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I
    move-result v4
  .line 4
    new-instance v5, Ljava/util/ArrayList;
    add-int/lit8 v6, v4, -1
    invoke-direct { v5, v6 }, Ljava/util/ArrayList;-><init>(I)V
    const/4 v6, 2
  :L0
    if-gt v6, v4, :L3
  .line 5
    new-instance v7, Ljava/lang/StringBuilder;
    invoke-direct { v7 }, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual { v7, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v7, v6 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    const-string v8, ".zip"
    invoke-virtual { v7, v8 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v7 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v7
  .line 6
    new-instance v8, Lc/m/b$b;
    iget-object v9, v0, Lc/m/b;->d:Ljava/io/File;
    invoke-direct { v8, v9, v7 }, Lc/m/b$b;-><init>(Ljava/io/File;Ljava/lang/String;)V
  .line 7
    invoke-virtual { v8 }, Ljava/io/File;->isFile()Z
    move-result v7
    if-eqz v7, :L2
  .line 8
    invoke-static { v8 }, Lc/m/b;->f(Ljava/io/File;)J
    move-result-wide v9
    iput-wide v9, v8, Lc/m/b$b;->b:J
  .line 9
    new-instance v7, Ljava/lang/StringBuilder;
    invoke-direct { v7 }, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual { v7, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string v9, "dex.crc."
    invoke-virtual { v7, v9 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v7, v6 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { v7 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v7
    const-wide/16 v9, -1
    invoke-interface { v3, v7, v9, v10 }, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J
    move-result-wide v11
  .line 10
    new-instance v7, Ljava/lang/StringBuilder;
    invoke-direct { v7 }, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual { v7, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string v13, "dex.time."
    invoke-virtual { v7, v13 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v7, v6 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { v7 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v7
    invoke-interface { v3, v7, v9, v10 }, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J
    move-result-wide v9
  .line 11
    invoke-virtual { v8 }, Ljava/io/File;->lastModified()J
    move-result-wide v13
    cmp-long v7, v9, v13
    if-nez v7, :L1
    move-object v7, v2
    move-object/from16 p1, v3
  .line 12
    iget-wide v2, v8, Lc/m/b$b;->b:J
    cmp-long v15, v11, v2
    if-nez v15, :L1
  .line 13
    invoke-interface { v5, v8 }, Ljava/util/List;->add(Ljava/lang/Object;)Z
    add-int/lit8 v6, v6, 1
    move-object/from16 v3, p1
    move-object v2, v7
    goto :L0
  :L1
  .line 14
    new-instance v2, Ljava/io/IOException;
    new-instance v3, Ljava/lang/StringBuilder;
    invoke-direct { v3 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v4, "Invalid extracted dex: "
    invoke-virtual { v3, v4 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v3, v8 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    const-string v4, " (key \""
    invoke-virtual { v3, v4 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v3, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string v1, "\"), expected modification time: "
    invoke-virtual { v3, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v3, v9, v10 }, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
    const-string v1, ", modification time: "
    invoke-virtual { v3, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v3, v13, v14 }, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
    const-string v1, ", expected crc: "
    invoke-virtual { v3, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v3, v11, v12 }, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
    const-string v1, ", file crc: "
    invoke-virtual { v3, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget-wide v4, v8, Lc/m/b$b;->b:J
    invoke-virtual { v3, v4, v5 }, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
    invoke-virtual { v3 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v1
    invoke-direct { v2, v1 }, Ljava/io/IOException;-><init>(Ljava/lang/String;)V
    throw v2
  :L2
  .line 15
    new-instance v1, Ljava/io/IOException;
    new-instance v2, Ljava/lang/StringBuilder;
    invoke-direct { v2 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v3, "Missing extracted secondary dex file '"
    invoke-virtual { v2, v3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
  .line 16
    invoke-virtual { v8 }, Ljava/io/File;->getPath()Ljava/lang/String;
    move-result-object v3
    invoke-virtual { v2, v3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string v3, "'"
    invoke-virtual { v2, v3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v2 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v2
    invoke-direct { v1, v2 }, Ljava/io/IOException;-><init>(Ljava/lang/String;)V
    throw v1
  :L3
    return-object v5
.end method

.method private j()Ljava/util/List;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "()",
      "Ljava/util/List<",
      "Lc/m/b$b;",
      ">;"
    }
  .end annotation
  .catchall { :L0 .. :L3 } :L13
  .catch Ljava/io/IOException; { :L3 .. :L4 } :L5
  .catchall { :L3 .. :L4 } :L13
  .catchall { :L5 .. :L11 } :L13
  .catch Ljava/io/IOException; { :L11 .. :L12 } :L12
  .catch Ljava/io/IOException; { :L14 .. :L15 } :L15
  .registers 15
    const-string v0, ".dex"
    const-string v1, "classes"
  .line 1
    new-instance v2, Ljava/lang/StringBuilder;
    invoke-direct { v2 }, Ljava/lang/StringBuilder;-><init>()V
    iget-object v3, p0, Lc/m/b;->b:Ljava/io/File;
    invoke-virtual { v3 }, Ljava/io/File;->getName()Ljava/lang/String;
    move-result-object v3
    invoke-virtual { v2, v3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string v3, ".classes"
    invoke-virtual { v2, v3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v2 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v2
  .line 2
    invoke-direct { p0 }, Lc/m/b;->a()V
  .line 3
    new-instance v3, Ljava/util/ArrayList;
    invoke-direct { v3 }, Ljava/util/ArrayList;-><init>()V
  .line 4
    new-instance v4, Ljava/util/zip/ZipFile;
    iget-object v5, p0, Lc/m/b;->b:Ljava/io/File;
    invoke-direct { v4, v5 }, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V
    const/4 v5, 2
  :L0
  .line 5
    new-instance v6, Ljava/lang/StringBuilder;
    invoke-direct { v6 }, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual { v6, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v6, v5 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { v6, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v6 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v6
    invoke-virtual { v4, v6 }, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;
    move-result-object v6
  :L1
    if-eqz v6, :L11
  .line 6
    new-instance v7, Ljava/lang/StringBuilder;
    invoke-direct { v7 }, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual { v7, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v7, v5 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    const-string v8, ".zip"
    invoke-virtual { v7, v8 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v7 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v7
  .line 7
    new-instance v8, Lc/m/b$b;
    iget-object v9, p0, Lc/m/b;->d:Ljava/io/File;
    invoke-direct { v8, v9, v7 }, Lc/m/b$b;-><init>(Ljava/io/File;Ljava/lang/String;)V
  .line 8
    invoke-interface { v3, v8 }, Ljava/util/List;->add(Ljava/lang/Object;)Z
  .line 9
    new-instance v7, Ljava/lang/StringBuilder;
    invoke-direct { v7 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v9, "Extraction is needed for file "
    invoke-virtual { v7, v9 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v7, v8 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    invoke-virtual { v7 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    const/4 v7, 0
    const/4 v9, 0
    const/4 v10, 0
  :L2
    const/4 v11, 3
    if-ge v9, v11, :L9
    if-nez v10, :L9
    add-int/lit8 v9, v9, 1
  .line 10
    invoke-static { v4, v6, v8, v2 }, Lc/m/b;->c(Ljava/util/zip/ZipFile;Ljava/util/zip/ZipEntry;Ljava/io/File;Ljava/lang/String;)V
  :L3
  .line 11
    invoke-static { v8 }, Lc/m/b;->f(Ljava/io/File;)J
    move-result-wide v10
    iput-wide v10, v8, Lc/m/b$b;->b:J
  :L4
    const/4 v10, 1
    goto :L6
  :L5
  .line 12
    new-instance v10, Ljava/lang/StringBuilder;
    invoke-direct { v10 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v11, "Failed to read crc from "
    invoke-virtual { v10, v11 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v8 }, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
    move-result-object v11
    invoke-virtual { v10, v11 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v10 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    const/4 v10, 0
  :L6
  .line 13
    new-instance v11, Ljava/lang/StringBuilder;
    invoke-direct { v11 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v12, "Extraction "
    invoke-virtual { v11, v12 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    if-eqz v10, :L7
    const-string v12, "succeeded"
    goto :L8
  :L7
    const-string v12, "failed"
  :L8
    invoke-virtual { v11, v12 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string v12, " '"
    invoke-virtual { v11, v12 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
  .line 14
    invoke-virtual { v8 }, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
    move-result-object v12
    invoke-virtual { v11, v12 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string v12, "': length "
    invoke-virtual { v11, v12 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
  .line 15
    invoke-virtual { v8 }, Ljava/io/File;->length()J
    move-result-wide v12
    invoke-virtual { v11, v12, v13 }, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
    const-string v12, " - crc: "
    invoke-virtual { v11, v12 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget-wide v12, v8, Lc/m/b$b;->b:J
    invoke-virtual { v11, v12, v13 }, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
    invoke-virtual { v11 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    if-nez v10, :L2
  .line 16
    invoke-virtual { v8 }, Ljava/io/File;->delete()Z
  .line 17
    invoke-virtual { v8 }, Ljava/io/File;->exists()Z
    move-result v11
    if-eqz v11, :L2
  .line 18
    new-instance v11, Ljava/lang/StringBuilder;
    invoke-direct { v11 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v12, "Failed to delete corrupted secondary dex '"
    invoke-virtual { v11, v12 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
  .line 19
    invoke-virtual { v8 }, Ljava/io/File;->getPath()Ljava/lang/String;
    move-result-object v12
    invoke-virtual { v11, v12 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string v12, "'"
    invoke-virtual { v11, v12 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v11 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    goto/16 :L2
  :L9
    if-eqz v10, :L10
    add-int/lit8 v5, v5, 1
  .line 20
    new-instance v6, Ljava/lang/StringBuilder;
    invoke-direct { v6 }, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual { v6, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v6, v5 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { v6, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v6 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v6
    invoke-virtual { v4, v6 }, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;
    move-result-object v6
    goto/16 :L1
  :L10
  .line 21
    new-instance v0, Ljava/io/IOException;
    new-instance v1, Ljava/lang/StringBuilder;
    invoke-direct { v1 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v2, "Could not create zip file "
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
  .line 22
    invoke-virtual { v8 }, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
    move-result-object v2
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string v2, " for secondary dex ("
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v1, v5 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    const-string v2, ")"
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v1
    invoke-direct { v0, v1 }, Ljava/io/IOException;-><init>(Ljava/lang/String;)V
    throw v0
  :L11
  .line 23
    invoke-virtual { v4 }, Ljava/util/zip/ZipFile;->close()V
  :L12
    return-object v3
  :L13
    move-exception v0
  :L14
    invoke-virtual { v4 }, Ljava/util/zip/ZipFile;->close()V
  :L15
  .line 24
    goto :L17
  :L16
    throw v0
  :L17
    goto :L16
.end method

.method private static k(Landroid/content/Context;Ljava/lang/String;JJLjava/util/List;)V
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(",
      "Landroid/content/Context;",
      "Ljava/lang/String;",
      "JJ",
      "Ljava/util/List<",
      "Lc/m/b$b;",
      ">;)V"
    }
  .end annotation
  .registers 9
  .line 1
    invoke-static { p0 }, Lc/m/b;->d(Landroid/content/Context;)Landroid/content/SharedPreferences;
    move-result-object p0
  .line 2
    invoke-interface { p0 }, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;
    move-result-object p0
  .line 3
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual { v0, p1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string v1, "timestamp"
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    invoke-interface { p0, v0, p2, p3 }, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;
  .line 4
    new-instance p2, Ljava/lang/StringBuilder;
    invoke-direct { p2 }, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual { p2, p1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string p3, "crc"
    invoke-virtual { p2, p3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { p2 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p2
    invoke-interface { p0, p2, p4, p5 }, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;
  .line 5
    new-instance p2, Ljava/lang/StringBuilder;
    invoke-direct { p2 }, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual { p2, p1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string p3, "dex.number"
    invoke-virtual { p2, p3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { p2 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p2
    invoke-interface { p6 }, Ljava/util/List;->size()I
    move-result p3
    add-int/lit8 p3, p3, 1
    invoke-interface { p0, p2, p3 }, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;
  .line 6
    invoke-interface { p6 }, Ljava/util/List;->iterator()Ljava/util/Iterator;
    move-result-object p2
    const/4 p3, 2
  :L0
    invoke-interface { p2 }, Ljava/util/Iterator;->hasNext()Z
    move-result p4
    if-eqz p4, :L1
    invoke-interface { p2 }, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object p4
    check-cast p4, Lc/m/b$b;
  .line 7
    new-instance p5, Ljava/lang/StringBuilder;
    invoke-direct { p5 }, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual { p5, p1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string p6, "dex.crc."
    invoke-virtual { p5, p6 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { p5, p3 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { p5 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p5
    iget-wide v0, p4, Lc/m/b$b;->b:J
    invoke-interface { p0, p5, v0, v1 }, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;
  .line 8
    new-instance p5, Ljava/lang/StringBuilder;
    invoke-direct { p5 }, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual { p5, p1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string p6, "dex.time."
    invoke-virtual { p5, p6 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { p5, p3 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { p5 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p5
    invoke-virtual { p4 }, Ljava/io/File;->lastModified()J
    move-result-wide v0
    invoke-interface { p0, p5, v0, v1 }, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;
    add-int/lit8 p3, p3, 1
    goto :L0
  :L1
  .line 9
    invoke-interface { p0 }, Landroid/content/SharedPreferences$Editor;->commit()Z
    return-void
.end method

.method public close()V
  .registers 2
  .line 1
    iget-object v0, p0, Lc/m/b;->g:Ljava/nio/channels/FileLock;
    invoke-virtual { v0 }, Ljava/nio/channels/FileLock;->release()V
  .line 2
    iget-object v0, p0, Lc/m/b;->f:Ljava/nio/channels/FileChannel;
    invoke-virtual { v0 }, Ljava/nio/channels/FileChannel;->close()V
  .line 3
    iget-object v0, p0, Lc/m/b;->e:Ljava/io/RandomAccessFile;
    invoke-virtual { v0 }, Ljava/io/RandomAccessFile;->close()V
    return-void
.end method

.method h(Landroid/content/Context;Ljava/lang/String;Z)Ljava/util/List;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(",
      "Landroid/content/Context;",
      "Ljava/lang/String;",
      "Z)",
      "Ljava/util/List<",
      "+",
      "Ljava/io/File;",
      ">;"
    }
  .end annotation
  .catch Ljava/io/IOException; { :L0 .. :L1 } :L2
  .registers 14
  .line 1
    new-instance v2, Ljava/lang/StringBuilder;
    invoke-direct { v2 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v3, "MultiDexExtractor.load("
    invoke-virtual { v2, v3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget-object v3, p0, Lc/m/b;->b:Ljava/io/File;
    invoke-virtual { v3 }, Ljava/io/File;->getPath()Ljava/lang/String;
    move-result-object v3
    invoke-virtual { v2, v3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string v3, ", "
    invoke-virtual { v2, v3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v2, p3 }, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;
    invoke-virtual { v2, v3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v2, p2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string v3, ")"
    invoke-virtual { v2, v3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v2 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
  .line 2
    iget-object v2, p0, Lc/m/b;->g:Ljava/nio/channels/FileLock;
    invoke-virtual { v2 }, Ljava/nio/channels/FileLock;->isValid()Z
    move-result v2
    if-eqz v2, :L6
    if-nez p3, :L3
  .line 3
    iget-object v2, p0, Lc/m/b;->b:Ljava/io/File;
    iget-wide v3, p0, Lc/m/b;->c:J
    invoke-static { p1, v2, v3, v4, p2 }, Lc/m/b;->g(Landroid/content/Context;Ljava/io/File;JLjava/lang/String;)Z
    move-result v2
    if-nez v2, :L3
  :L0
  .line 4
    invoke-direct { p0, p1, p2 }, Lc/m/b;->i(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;
    move-result-object v0
  :L1
    goto :L5
  :L2
  .line 5
    invoke-direct { p0 }, Lc/m/b;->j()Ljava/util/List;
    move-result-object v7
  .line 6
    iget-object v0, p0, Lc/m/b;->b:Ljava/io/File;
    invoke-static { v0 }, Lc/m/b;->e(Ljava/io/File;)J
    move-result-wide v2
    iget-wide v8, p0, Lc/m/b;->c:J
    move-object v0, p1
    move-object v1, p2
    move-wide v4, v8
    move-object v6, v7
    invoke-static/range { v0 .. v6 }, Lc/m/b;->k(Landroid/content/Context;Ljava/lang/String;JJLjava/util/List;)V
    goto :L4
  :L3
  .line 7
    invoke-direct { p0 }, Lc/m/b;->j()Ljava/util/List;
    move-result-object v7
  .line 8
    iget-object v0, p0, Lc/m/b;->b:Ljava/io/File;
    invoke-static { v0 }, Lc/m/b;->e(Ljava/io/File;)J
    move-result-wide v2
    iget-wide v8, p0, Lc/m/b;->c:J
    move-object v0, p1
    move-object v1, p2
    move-wide v4, v8
    move-object v6, v7
    invoke-static/range { v0 .. v6 }, Lc/m/b;->k(Landroid/content/Context;Ljava/lang/String;JJLjava/util/List;)V
  :L4
    move-object v0, v7
  :L5
  .line 9
    new-instance v1, Ljava/lang/StringBuilder;
    invoke-direct { v1 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v2, "load found "
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-interface { v0 }, Ljava/util/List;->size()I
    move-result v2
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    const-string v2, " secondary dex files"
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    return-object v0
  :L6
  .line 10
    new-instance v0, Ljava/lang/IllegalStateException;
    const-string v1, "MultiDexExtractor was closed"
    invoke-direct { v0, v1 }, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
    throw v0
.end method
