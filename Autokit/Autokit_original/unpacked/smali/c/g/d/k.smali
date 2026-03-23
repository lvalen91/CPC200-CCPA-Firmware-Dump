.class public Lc/g/d/k;
.super Ljava/lang/Object;
.source "SourceFile"

.method public constructor <init>()V
  .registers 2
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public static a(Ljava/io/Closeable;)V
  .catch Ljava/io/IOException; { :L0 .. :L1 } :L1
  .registers 1
    if-eqz p0, :L1
  :L0
  .line 1
    invoke-interface { p0 }, Ljava/io/Closeable;->close()V
  :L1
    return-void
.end method

.method public static b(Landroid/content/Context;Landroid/content/res/Resources;I)Ljava/nio/ByteBuffer;
  .catchall { :L0 .. :L1 } :L4
  .catchall { :L2 .. :L3 } :L4
  .registers 4
  .line 1
    invoke-static { p0 }, Lc/g/d/k;->e(Landroid/content/Context;)Ljava/io/File;
    move-result-object p0
    const/4 v0, 0
    if-nez p0, :L0
    return-object v0
  :L0
  .line 2
    invoke-static { p0, p1, p2 }, Lc/g/d/k;->c(Ljava/io/File;Landroid/content/res/Resources;I)Z
    move-result p1
  :L1
    if-nez p1, :L2
  .line 3
    invoke-virtual { p0 }, Ljava/io/File;->delete()Z
    return-object v0
  :L2
  .line 4
    invoke-static { p0 }, Lc/g/d/k;->g(Ljava/io/File;)Ljava/nio/ByteBuffer;
    move-result-object p1
  :L3
  .line 5
    invoke-virtual { p0 }, Ljava/io/File;->delete()Z
    return-object p1
  :L4
    move-exception p1
    invoke-virtual { p0 }, Ljava/io/File;->delete()Z
  .line 6
    throw p1
.end method

.method public static c(Ljava/io/File;Landroid/content/res/Resources;I)Z
  .catchall { :L0 .. :L1 } :L4
  .catchall { :L1 .. :L2 } :L3
  .registers 3
  :L0
  .line 1
    invoke-virtual { p1, p2 }, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;
    move-result-object p1
  :L1
  .line 2
    invoke-static { p0, p1 }, Lc/g/d/k;->d(Ljava/io/File;Ljava/io/InputStream;)Z
    move-result p0
  :L2
  .line 3
    invoke-static { p1 }, Lc/g/d/k;->a(Ljava/io/Closeable;)V
    return p0
  :L3
    move-exception p0
    goto :L5
  :L4
    move-exception p0
    const/4 p1, 0
  :L5
    invoke-static { p1 }, Lc/g/d/k;->a(Ljava/io/Closeable;)V
  .line 4
    throw p0
.end method

.method public static d(Ljava/io/File;Ljava/io/InputStream;)Z
  .catch Ljava/io/IOException; { :L0 .. :L1 } :L9
  .catchall { :L0 .. :L1 } :L8
  .catch Ljava/io/IOException; { :L2 .. :L4 } :L7
  .catchall { :L2 .. :L4 } :L6
  .catchall { :L10 .. :L11 } :L8
  .registers 7
  .line 1
    invoke-static { }, Landroid/os/StrictMode;->allowThreadDiskWrites()Landroid/os/StrictMode$ThreadPolicy;
    move-result-object v0
    const/4 v1, 0
    const/4 v2, 0
  :L0
  .line 2
    new-instance v3, Ljava/io/FileOutputStream;
    invoke-direct { v3, p0, v1 }, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
  :L1
    const/16 p0, 1024
  :L2
    new-array p0, p0, [B
  :L3
  .line 3
    invoke-virtual { p1, p0 }, Ljava/io/InputStream;->read([B)I
    move-result v2
    const/4 v4, -1
    if-eq v2, v4, :L5
  .line 4
    invoke-virtual { v3, p0, v1, v2 }, Ljava/io/FileOutputStream;->write([BII)V
  :L4
    goto :L3
  :L5
    const/4 p0, 1
  .line 5
    invoke-static { v3 }, Lc/g/d/k;->a(Ljava/io/Closeable;)V
  .line 6
    invoke-static { v0 }, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V
    return p0
  :L6
    move-exception p0
    move-object v2, v3
    goto :L12
  :L7
    move-exception p0
    move-object v2, v3
    goto :L10
  :L8
    move-exception p0
    goto :L12
  :L9
    move-exception p0
  :L10
  .line 7
    new-instance p1, Ljava/lang/StringBuilder;
    invoke-direct { p1 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v3, "Error copying resource contents to temp file: "
    invoke-virtual { p1, v3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { p0 }, Ljava/io/IOException;->getMessage()Ljava/lang/String;
    move-result-object p0
    invoke-virtual { p1, p0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { p1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
  :L11
  .line 8
    invoke-static { v2 }, Lc/g/d/k;->a(Ljava/io/Closeable;)V
  .line 9
    invoke-static { v0 }, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V
    return v1
  :L12
  .line 10
    invoke-static { v2 }, Lc/g/d/k;->a(Ljava/io/Closeable;)V
  .line 11
    invoke-static { v0 }, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V
  .line 12
    goto :L14
  :L13
    throw p0
  :L14
    goto :L13
.end method

.method public static e(Landroid/content/Context;)Ljava/io/File;
  .catch Ljava/io/IOException; { :L2 .. :L3 } :L4
  .registers 6
  .line 1
    invoke-virtual { p0 }, Landroid/content/Context;->getCacheDir()Ljava/io/File;
    move-result-object p0
    const/4 v0, 0
    if-nez p0, :L0
    return-object v0
  :L0
  .line 2
    new-instance v1, Ljava/lang/StringBuilder;
    invoke-direct { v1 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v2, ".font"
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-static { }, Landroid/os/Process;->myPid()I
    move-result v2
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    const-string v2, "-"
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-static { }, Landroid/os/Process;->myTid()I
    move-result v3
    invoke-virtual { v1, v3 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v1
    const/4 v2, 0
  :L1
    const/16 v3, 100
    if-ge v2, v3, :L5
  .line 3
    new-instance v3, Ljava/io/File;
    new-instance v4, Ljava/lang/StringBuilder;
    invoke-direct { v4 }, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual { v4, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v4, v2 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { v4 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v4
    invoke-direct { v3, p0, v4 }, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
  :L2
  .line 4
    invoke-virtual { v3 }, Ljava/io/File;->createNewFile()Z
    move-result v4
  :L3
    if-eqz v4, :L4
    return-object v3
  :L4
    add-int/lit8 v2, v2, 1
    goto :L1
  :L5
    return-object v0
.end method

.method public static f(Landroid/content/Context;Landroid/os/CancellationSignal;Landroid/net/Uri;)Ljava/nio/ByteBuffer;
  .catch Ljava/io/IOException; { :L0 .. :L1 } :L14
  .catchall { :L2 .. :L3 } :L11
  .catchall { :L3 .. :L4 } :L8
  .catchall { :L4 .. :L5 } :L11
  .catch Ljava/io/IOException; { :L6 .. :L7 } :L14
  .catchall { :L9 .. :L10 } :L10
  .catchall { :L10 .. :L11 } :L11
  .catchall { :L12 .. :L13 } :L13
  .catch Ljava/io/IOException; { :L13 .. :L14 } :L14
  .registers 10
  .line 1
    invoke-virtual { p0 }, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;
    move-result-object p0
    const/4 v0, 0
  :L0
    const-string v1, "r"
  .line 2
    invoke-virtual { p0, p2, v1, p1 }, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/os/ParcelFileDescriptor;
    move-result-object p0
    if-nez p0, :L2
    if-eqz p0, :L1
  .line 3
    invoke-virtual { p0 }, Landroid/os/ParcelFileDescriptor;->close()V
  :L1
    return-object v0
  :L2
  .line 4
    new-instance p1, Ljava/io/FileInputStream;
    invoke-virtual { p0 }, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;
    move-result-object p2
    invoke-direct { p1, p2 }, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V
  :L3
  .line 5
    invoke-virtual { p1 }, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;
    move-result-object v1
  .line 6
    invoke-virtual { v1 }, Ljava/nio/channels/FileChannel;->size()J
    move-result-wide v5
  .line 7
    sget-object v2, Ljava/nio/channels/FileChannel$MapMode;->READ_ONLY:Ljava/nio/channels/FileChannel$MapMode;
    const-wide/16 v3, 0
    invoke-virtual/range { v1 .. v6 }, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;
    move-result-object p2
  :L4
  .line 8
    invoke-virtual { p1 }, Ljava/io/FileInputStream;->close()V
  :L5
    if-eqz p0, :L7
  :L6
  .line 9
    invoke-virtual { p0 }, Landroid/os/ParcelFileDescriptor;->close()V
  :L7
    return-object p2
  :L8
    move-exception p2
  :L9
  .line 10
    invoke-virtual { p1 }, Ljava/io/FileInputStream;->close()V
  :L10
    throw p2
  :L11
    move-exception p1
    if-eqz p0, :L13
  :L12
  .line 11
    invoke-virtual { p0 }, Landroid/os/ParcelFileDescriptor;->close()V
  :L13
    throw p1
  :L14
    return-object v0
.end method

.method private static g(Ljava/io/File;)Ljava/nio/ByteBuffer;
  .catch Ljava/io/IOException; { :L0 .. :L1 } :L7
  .catchall { :L1 .. :L2 } :L4
  .catch Ljava/io/IOException; { :L2 .. :L3 } :L7
  .catchall { :L5 .. :L6 } :L6
  .catch Ljava/io/IOException; { :L6 .. :L7 } :L7
  .registers 8
  :L0
  .line 1
    new-instance v0, Ljava/io/FileInputStream;
    invoke-direct { v0, p0 }, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
  :L1
  .line 2
    invoke-virtual { v0 }, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;
    move-result-object v1
  .line 3
    invoke-virtual { v1 }, Ljava/nio/channels/FileChannel;->size()J
    move-result-wide v5
  .line 4
    sget-object v2, Ljava/nio/channels/FileChannel$MapMode;->READ_ONLY:Ljava/nio/channels/FileChannel$MapMode;
    const-wide/16 v3, 0
    invoke-virtual/range { v1 .. v6 }, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;
    move-result-object p0
  :L2
  .line 5
    invoke-virtual { v0 }, Ljava/io/FileInputStream;->close()V
  :L3
    return-object p0
  :L4
    move-exception p0
  :L5
  .line 6
    invoke-virtual { v0 }, Ljava/io/FileInputStream;->close()V
  :L6
    throw p0
  :L7
    const/4 p0, 0
    return-object p0
.end method

.method public static h(Landroid/content/Context;[Lc/g/h/f$b;Landroid/os/CancellationSignal;)Ljava/util/Map;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(",
      "Landroid/content/Context;",
      "[",
      "Lc/g/h/f$b;",
      "Landroid/os/CancellationSignal;",
      ")",
      "Ljava/util/Map<",
      "Landroid/net/Uri;",
      "Ljava/nio/ByteBuffer;",
      ">;"
    }
  .end annotation
  .registers 8
  .line 1
    new-instance v0, Ljava/util/HashMap;
    invoke-direct { v0 }, Ljava/util/HashMap;-><init>()V
  .line 2
    array-length v1, p1
    const/4 v2, 0
  :L0
    if-ge v2, v1, :L4
    aget-object v3, p1, v2
  .line 3
    invoke-virtual { v3 }, Lc/g/h/f$b;->b()I
    move-result v4
    if-eqz v4, :L1
    goto :L3
  :L1
  .line 4
    invoke-virtual { v3 }, Lc/g/h/f$b;->d()Landroid/net/Uri;
    move-result-object v3
  .line 5
    invoke-virtual { v0, v3 }, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z
    move-result v4
    if-eqz v4, :L2
    goto :L3
  :L2
  .line 6
    invoke-static { p0, p2, v3 }, Lc/g/d/k;->f(Landroid/content/Context;Landroid/os/CancellationSignal;Landroid/net/Uri;)Ljava/nio/ByteBuffer;
    move-result-object v4
  .line 7
    invoke-virtual { v0, v3, v4 }, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
  :L3
    add-int/lit8 v2, v2, 1
    goto :L0
  :L4
  .line 8
    invoke-static { v0 }, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;
    move-result-object p0
    return-object p0
.end method
