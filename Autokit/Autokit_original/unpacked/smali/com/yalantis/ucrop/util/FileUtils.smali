.class public Lcom/yalantis/ucrop/util/FileUtils;
.super Ljava/lang/Object;
.source "SourceFile"

.field final static TAG:Ljava/lang/String; = "FileUtils"

.method private constructor <init>()V
  .registers 1
  .line 1
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public static copyFile(Ljava/lang/String;Ljava/lang/String;)V
  .catchall { :L1 .. :L2 } :L7
  .catchall { :L2 .. :L3 } :L6
  .registers 12
  .line 1
    invoke-virtual { p0, p1 }, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    move-result v0
    if-eqz v0, :L0
    return-void
  :L0
    const/4 v0, 0
  :L1
  .line 2
    new-instance v1, Ljava/io/FileInputStream;
    new-instance v2, Ljava/io/File;
    invoke-direct { v2, p0 }, Ljava/io/File;-><init>(Ljava/lang/String;)V
    invoke-direct { v1, v2 }, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    invoke-virtual { v1 }, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;
    move-result-object p0
  :L2
  .line 3
    new-instance v1, Ljava/io/FileOutputStream;
    new-instance v2, Ljava/io/File;
    invoke-direct { v2, p1 }, Ljava/io/File;-><init>(Ljava/lang/String;)V
    invoke-direct { v1, v2 }, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    invoke-virtual { v1 }, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;
    move-result-object v0
    const-wide/16 v4, 0
  .line 4
    invoke-virtual { p0 }, Ljava/nio/channels/FileChannel;->size()J
    move-result-wide v6
    move-object v3, p0
    move-object v8, v0
    invoke-virtual/range { v3 .. v8 }, Ljava/nio/channels/FileChannel;->transferTo(JJLjava/nio/channels/WritableByteChannel;)J
  .line 5
    invoke-virtual { p0 }, Ljava/nio/channels/FileChannel;->close()V
  :L3
    if-eqz p0, :L4
  .line 6
    invoke-virtual { p0 }, Ljava/nio/channels/FileChannel;->close()V
  :L4
    if-eqz v0, :L5
  .line 7
    invoke-virtual { v0 }, Ljava/nio/channels/FileChannel;->close()V
  :L5
    return-void
  :L6
    move-exception p1
    move-object v9, v0
    move-object v0, p0
    move-object p0, v9
    goto :L8
  :L7
    move-exception p1
    move-object p0, v0
  :L8
    if-eqz v0, :L9
  .line 8
    invoke-virtual { v0 }, Ljava/nio/channels/FileChannel;->close()V
  :L9
    if-eqz p0, :L10
  .line 9
    invoke-virtual { p0 }, Ljava/nio/channels/FileChannel;->close()V
  :L10
    throw p1
.end method

.method public static getDataColumn(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
  .catch Ljava/lang/IllegalArgumentException; { :L0 .. :L1 } :L9
  .catchall { :L0 .. :L1 } :L8
  .catch Ljava/lang/IllegalArgumentException; { :L2 .. :L3 } :L5
  .catchall { :L2 .. :L3 } :L13
  .catchall { :L10 .. :L11 } :L13
  .registers 14
    const/4 v0, 1
    new-array v3, v0, [Ljava/lang/String;
    const/4 v7, 0
    const-string v8, "_data"
    aput-object v8, v3, v7
    const/4 v9, 0
  :L0
  .line 1
    invoke-virtual { p0 }, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;
    move-result-object v1
    const/4 v6, 0
    move-object v2, p1
    move-object v4, p2
    move-object v5, p3
    invoke-virtual/range { v1 .. v6 }, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    move-result-object p0
  :L1
    if-eqz p0, :L6
  :L2
  .line 2
    invoke-interface { p0 }, Landroid/database/Cursor;->moveToFirst()Z
    move-result p1
    if-eqz p1, :L6
  .line 3
    invoke-interface { p0, v8 }, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I
    move-result p1
  .line 4
    invoke-interface { p0, p1 }, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    move-result-object p1
  :L3
    if-eqz p0, :L4
  .line 5
    invoke-interface { p0 }, Landroid/database/Cursor;->close()V
  :L4
    return-object p1
  :L5
    move-exception p1
    goto :L10
  :L6
    if-eqz p0, :L12
  :L7
    invoke-interface { p0 }, Landroid/database/Cursor;->close()V
    goto :L12
  :L8
    move-exception p1
    goto :L14
  :L9
    move-exception p1
    move-object p0, v9
  :L10
  .line 6
    invoke-static { }, Ljava/util/Locale;->getDefault()Ljava/util/Locale;
    move-result-object p2
    const-string p3, "getDataColumn: _data - [%s]"
    new-array v0, v0, [Ljava/lang/Object;
    invoke-virtual { p1 }, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;
    move-result-object p1
    aput-object p1, v0, v7
    invoke-static { p2, p3, v0 }, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
  :L11
    if-eqz p0, :L12
    goto :L7
  :L12
    return-object v9
  :L13
    move-exception p1
    move-object v9, p0
  :L14
    if-eqz v9, :L15
  .line 7
    invoke-interface { v9 }, Landroid/database/Cursor;->close()V
  :L15
    goto :L17
  :L16
    throw p1
  :L17
    goto :L16
.end method

.method public static getPath(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
  .annotation build Landroid/annotation/SuppressLint;
    value = {
      "NewApi"
    }
  .end annotation
  .registers 7
  .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    const/4 v1, 1
    const/4 v2, 0
    const/16 v3, 19
    if-lt v0, v3, :L0
    const/4 v0, 1
    goto :L1
  :L0
    const/4 v0, 0
  :L1
    const/4 v3, 0
    if-eqz v0, :L7
  .line 2
    invoke-static { p0, p1 }, Landroid/provider/DocumentsContract;->isDocumentUri(Landroid/content/Context;Landroid/net/Uri;)Z
    move-result v0
    if-eqz v0, :L7
  .line 3
    invoke-static { p1 }, Lcom/yalantis/ucrop/util/FileUtils;->isExternalStorageDocument(Landroid/net/Uri;)Z
    move-result v0
    const-string v4, ":"
    if-eqz v0, :L2
  .line 4
    invoke-static { p1 }, Landroid/provider/DocumentsContract;->getDocumentId(Landroid/net/Uri;)Ljava/lang/String;
    move-result-object p0
  .line 5
    invoke-virtual { p0, v4 }, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
    move-result-object p0
  .line 6
    aget-object p1, p0, v2
    const-string v0, "primary"
  .line 7
    invoke-virtual { v0, p1 }, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    move-result p1
    if-eqz p1, :L10
  .line 8
    new-instance p1, Ljava/lang/StringBuilder;
    invoke-direct { p1 }, Ljava/lang/StringBuilder;-><init>()V
    invoke-static { }, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;
    move-result-object v0
    invoke-virtual { p1, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    const-string v0, "/"
    invoke-virtual { p1, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    aget-object p0, p0, v1
    invoke-virtual { p1, p0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { p1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p0
    return-object p0
  :L2
  .line 9
    invoke-static { p1 }, Lcom/yalantis/ucrop/util/FileUtils;->isDownloadsDocument(Landroid/net/Uri;)Z
    move-result v0
    if-eqz v0, :L3
  .line 10
    invoke-static { p1 }, Landroid/provider/DocumentsContract;->getDocumentId(Landroid/net/Uri;)Ljava/lang/String;
    move-result-object p1
    const-string v0, "content://downloads/public_downloads"
  .line 11
    invoke-static { v0 }, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
    move-result-object v0
    invoke-static { p1 }, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;
    move-result-object p1
    invoke-virtual { p1 }, Ljava/lang/Long;->longValue()J
    move-result-wide v1
  .line 12
    invoke-static { v0, v1, v2 }, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;
    move-result-object p1
  .line 13
    invoke-static { p0, p1, v3, v3 }, Lcom/yalantis/ucrop/util/FileUtils;->getDataColumn(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    move-result-object p0
    return-object p0
  :L3
  .line 14
    invoke-static { p1 }, Lcom/yalantis/ucrop/util/FileUtils;->isMediaDocument(Landroid/net/Uri;)Z
    move-result v0
    if-eqz v0, :L10
  .line 15
    invoke-static { p1 }, Landroid/provider/DocumentsContract;->getDocumentId(Landroid/net/Uri;)Ljava/lang/String;
    move-result-object p1
  .line 16
    invoke-virtual { p1, v4 }, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
    move-result-object p1
  .line 17
    aget-object v0, p1, v2
    const-string v4, "image"
  .line 18
    invoke-virtual { v4, v0 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v4
    if-eqz v4, :L4
  .line 19
    sget-object v3, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;
    goto :L6
  :L4
    const-string v4, "video"
  .line 20
    invoke-virtual { v4, v0 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v4
    if-eqz v4, :L5
  .line 21
    sget-object v3, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;
    goto :L6
  :L5
    const-string v4, "audio"
  .line 22
    invoke-virtual { v4, v0 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :L6
  .line 23
    sget-object v3, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;
  :L6
    new-array v0, v1, [Ljava/lang/String;
  .line 24
    aget-object p1, p1, v1
    aput-object p1, v0, v2
    const-string p1, "_id=?"
  .line 25
    invoke-static { p0, v3, p1, v0 }, Lcom/yalantis/ucrop/util/FileUtils;->getDataColumn(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    move-result-object p0
    return-object p0
  :L7
  .line 26
    invoke-virtual { p1 }, Landroid/net/Uri;->getScheme()Ljava/lang/String;
    move-result-object v0
    const-string v1, "content"
    invoke-virtual { v1, v0 }, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    move-result v0
    if-eqz v0, :L9
  .line 27
    invoke-static { p1 }, Lcom/yalantis/ucrop/util/FileUtils;->isGooglePhotosUri(Landroid/net/Uri;)Z
    move-result v0
    if-eqz v0, :L8
  .line 28
    invoke-virtual { p1 }, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;
    move-result-object p0
    return-object p0
  :L8
  .line 29
    invoke-static { p0, p1, v3, v3 }, Lcom/yalantis/ucrop/util/FileUtils;->getDataColumn(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    move-result-object p0
    return-object p0
  :L9
  .line 30
    invoke-virtual { p1 }, Landroid/net/Uri;->getScheme()Ljava/lang/String;
    move-result-object p0
    const-string v0, "file"
    invoke-virtual { v0, p0 }, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    move-result p0
    if-eqz p0, :L10
  .line 31
    invoke-virtual { p1 }, Landroid/net/Uri;->getPath()Ljava/lang/String;
    move-result-object p0
    return-object p0
  :L10
    return-object v3
.end method

.method public static isDownloadsDocument(Landroid/net/Uri;)Z
  .registers 2
  .line 1
    invoke-virtual { p0 }, Landroid/net/Uri;->getAuthority()Ljava/lang/String;
    move-result-object p0
    const-string v0, "com.android.providers.downloads.documents"
    invoke-virtual { v0, p0 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result p0
    return p0
.end method

.method public static isExternalStorageDocument(Landroid/net/Uri;)Z
  .registers 2
  .line 1
    invoke-virtual { p0 }, Landroid/net/Uri;->getAuthority()Ljava/lang/String;
    move-result-object p0
    const-string v0, "com.android.externalstorage.documents"
    invoke-virtual { v0, p0 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result p0
    return p0
.end method

.method public static isGooglePhotosUri(Landroid/net/Uri;)Z
  .registers 2
  .line 1
    invoke-virtual { p0 }, Landroid/net/Uri;->getAuthority()Ljava/lang/String;
    move-result-object p0
    const-string v0, "com.google.android.apps.photos.content"
    invoke-virtual { v0, p0 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result p0
    return p0
.end method

.method public static isMediaDocument(Landroid/net/Uri;)Z
  .registers 2
  .line 1
    invoke-virtual { p0 }, Landroid/net/Uri;->getAuthority()Ljava/lang/String;
    move-result-object p0
    const-string v0, "com.android.providers.media.documents"
    invoke-virtual { v0, p0 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result p0
    return p0
.end method
