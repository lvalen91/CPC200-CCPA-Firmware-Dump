.class public Lcn/manstep/phonemirrorBox/util/n;
.super Ljava/lang/Object;
.source "SourceFile"

.method public constructor <init>()V
  .registers 2
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public static A([BLjava/lang/String;Landroid/content/Context;)Z
  .registers 4
  .line 1
    invoke-static { p2 }, Lcn/manstep/phonemirrorBox/util/n;->k(Landroid/content/Context;)Ljava/io/File;
    move-result-object p2
    if-eqz p2, :L0
  .line 2
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual { p2 }, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
    move-result-object p2
    invoke-virtual { v0, p2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string p2, "/"
    invoke-virtual { v0, p2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0, p1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p1
    invoke-static { p0, p1 }, Lcn/manstep/phonemirrorBox/util/n;->y([BLjava/lang/String;)Z
    move-result p0
    return p0
  :L0
    const/4 p0, 0
    return p0
.end method

.method public static a(Landroid/content/Context;)V
  .registers 5
  .line 1
    invoke-static { p0 }, Lcn/manstep/phonemirrorBox/util/n;->k(Landroid/content/Context;)Ljava/io/File;
    move-result-object p0
    if-eqz p0, :L2
  .line 2
    invoke-virtual { p0 }, Ljava/io/File;->listFiles()[Ljava/io/File;
    move-result-object p0
    if-eqz p0, :L2
  .line 3
    array-length v0, p0
    const/4 v1, 0
  :L0
    if-ge v1, v0, :L2
    aget-object v2, p0, v1
  .line 4
    invoke-virtual { v2 }, Ljava/io/File;->isFile()Z
    move-result v3
    if-eqz v3, :L1
  .line 5
    invoke-virtual { v2 }, Ljava/io/File;->delete()Z
  :L1
    add-int/lit8 v1, v1, 1
    goto :L0
  :L2
    return-void
.end method

.method public static b(Landroid/content/Context;)V
  .registers 5
  .line 1
    invoke-static { p0 }, Lcn/manstep/phonemirrorBox/util/n;->n(Landroid/content/Context;)Ljava/io/File;
    move-result-object p0
    if-eqz p0, :L2
  .line 2
    invoke-virtual { p0 }, Ljava/io/File;->listFiles()[Ljava/io/File;
    move-result-object p0
    if-eqz p0, :L2
  .line 3
    array-length v0, p0
    const/4 v1, 0
  :L0
    if-ge v1, v0, :L2
    aget-object v2, p0, v1
  .line 4
    invoke-virtual { v2 }, Ljava/io/File;->isFile()Z
    move-result v3
    if-eqz v3, :L1
  .line 5
    invoke-virtual { v2 }, Ljava/io/File;->delete()Z
  :L1
    add-int/lit8 v1, v1, 1
    goto :L0
  :L2
    return-void
.end method

.method public static c(Landroid/content/Context;)V
  .registers 5
  .line 1
    invoke-static { p0 }, Lcn/manstep/phonemirrorBox/util/n;->s(Landroid/content/Context;)Ljava/io/File;
    move-result-object p0
    if-eqz p0, :L2
  .line 2
    invoke-virtual { p0 }, Ljava/io/File;->listFiles()[Ljava/io/File;
    move-result-object p0
    if-eqz p0, :L2
  .line 3
    array-length v0, p0
    const/4 v1, 0
  :L0
    if-ge v1, v0, :L2
    aget-object v2, p0, v1
  .line 4
    invoke-virtual { v2 }, Ljava/io/File;->isFile()Z
    move-result v3
    if-eqz v3, :L1
  .line 5
    invoke-virtual { v2 }, Ljava/io/File;->delete()Z
  :L1
    add-int/lit8 v1, v1, 1
    goto :L0
  :L2
    return-void
.end method

.method public static d(Landroid/content/Context;Ljava/lang/String;)V
  .registers 3
  .line 1
    invoke-static { p0 }, Lcn/manstep/phonemirrorBox/util/n;->k(Landroid/content/Context;)Ljava/io/File;
    move-result-object p0
    if-eqz p0, :L0
  .line 2
    new-instance v0, Ljava/io/File;
    invoke-direct { v0, p0, p1 }, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
  .line 3
    invoke-virtual { v0 }, Ljava/io/File;->isFile()Z
    move-result p0
    if-eqz p0, :L0
    invoke-virtual { v0 }, Ljava/io/File;->exists()Z
    move-result p0
    if-eqz p0, :L0
  .line 4
    invoke-virtual { v0 }, Ljava/io/File;->delete()Z
  :L0
    return-void
.end method

.method public static e(Ljava/io/File;)V
  .registers 6
    if-eqz p0, :L4
  .line 1
    invoke-virtual { p0 }, Ljava/io/File;->exists()Z
    move-result v0
    if-eqz v0, :L4
  .line 2
    invoke-virtual { p0 }, Ljava/io/File;->listFiles()[Ljava/io/File;
    move-result-object v0
    if-eqz v0, :L4
  .line 3
    array-length v1, v0
    const/4 v2, 0
  :L0
    if-ge v2, v1, :L3
    aget-object v3, v0, v2
  .line 4
    invoke-virtual { v3 }, Ljava/io/File;->isDirectory()Z
    move-result v4
    if-eqz v4, :L1
  .line 5
    invoke-static { v3 }, Lcn/manstep/phonemirrorBox/util/n;->e(Ljava/io/File;)V
    goto :L2
  :L1
  .line 6
    invoke-virtual { v3 }, Ljava/io/File;->delete()Z
  :L2
    add-int/lit8 v2, v2, 1
    goto :L0
  :L3
  .line 7
    invoke-virtual { p0 }, Ljava/io/File;->delete()Z
  :L4
    return-void
.end method

.method public static f(Ljava/lang/String;)Z
  .registers 2
  .line 1
    new-instance v0, Ljava/io/File;
    invoke-direct { v0, p0 }, Ljava/io/File;-><init>(Ljava/lang/String;)V
  .line 2
    invoke-virtual { v0 }, Ljava/io/File;->isFile()Z
    move-result p0
    if-eqz p0, :L0
    invoke-virtual { v0 }, Ljava/io/File;->exists()Z
    move-result p0
    if-eqz p0, :L0
  .line 3
    invoke-virtual { v0 }, Ljava/io/File;->delete()Z
    move-result p0
    return p0
  :L0
    const/4 p0, 1
    return p0
.end method

.method public static g(Ljava/io/File;Landroid/content/Context;)Ljava/io/File;
  .registers 5
  .line 1
    invoke-static { p1 }, Lcn/manstep/phonemirrorBox/util/n;->n(Landroid/content/Context;)Ljava/io/File;
    move-result-object p1
    if-eqz p1, :L0
  .line 2
    invoke-virtual { p1 }, Ljava/io/File;->isDirectory()Z
    move-result v0
    if-eqz v0, :L0
  .line 3
    invoke-virtual { p0 }, Ljava/io/File;->getName()Ljava/lang/String;
    move-result-object v0
  .line 4
    new-instance v1, Ljava/io/File;
    new-instance v2, Ljava/lang/StringBuilder;
    invoke-direct { v2 }, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual { v2, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string v0, ".bs64"
    invoke-virtual { v2, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v2 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    invoke-direct { v1, p1, v0 }, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    invoke-virtual { v1 }, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
    move-result-object p1
  .line 5
    invoke-static { p0, p1 }, Lcn/manstep/phonemirrorBox/util/n;->j(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;
    move-result-object p0
    return-object p0
  :L0
    const/4 p0, 0
    return-object p0
.end method

.method public static h(Ljava/io/File;)Ljava/io/File;
  .registers 3
  .line 1
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual { p0 }, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
    move-result-object v1
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string v1, ".bs64"
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    invoke-static { p0, v0 }, Lcn/manstep/phonemirrorBox/util/n;->j(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;
    move-result-object p0
    return-object p0
.end method

.method public static i(Ljava/lang/String;)Ljava/lang/String;
  .registers 2
  .line 1
    new-instance v0, Ljava/io/File;
    invoke-direct { v0, p0 }, Ljava/io/File;-><init>(Ljava/lang/String;)V
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/util/n;->h(Ljava/io/File;)Ljava/io/File;
    move-result-object p0
    if-eqz p0, :L0
  .line 2
    invoke-virtual { p0 }, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
    move-result-object p0
    return-object p0
  :L0
    const/4 p0, 0
    return-object p0
.end method

.method private static j(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;
  .catch Ljava/lang/Exception; { :L0 .. :L1 } :L13
  .catchall { :L0 .. :L1 } :L12
  .catch Ljava/lang/Exception; { :L1 .. :L2 } :L11
  .catchall { :L1 .. :L2 } :L10
  .catch Ljava/lang/Exception; { :L2 .. :L3 } :L4
  .catchall { :L2 .. :L3 } :L21
  .catch Ljava/lang/Exception; { :L6 .. :L7 } :L8
  .catchall { :L14 .. :L15 } :L21
  .catch Ljava/lang/Exception; { :L16 .. :L19 } :L17
  .catch Ljava/lang/Exception; { :L24 .. :L27 } :L25
  .registers 6
    const/4 v0, 0
    if-eqz p0, :L30
  .line 1
    invoke-virtual { p0 }, Ljava/io/File;->isFile()Z
    move-result v1
    if-eqz v1, :L30
  :L0
  .line 2
    new-instance v1, Ljava/io/FileInputStream;
    invoke-direct { v1, p0 }, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
  :L1
  .line 3
    invoke-virtual { v1 }, Ljava/io/FileInputStream;->available()I
    move-result p0
  .line 4
    new-array v2, p0, [B
  .line 5
    invoke-virtual { v1, v2 }, Ljava/io/FileInputStream;->read([B)I
    move-result v3
    if-ne v3, p0, :L5
    const/4 p0, 2
  .line 6
    invoke-static { v2, p0 }, Landroid/util/Base64;->encode([BI)[B
    move-result-object p0
  .line 7
    new-instance v2, Ljava/io/File;
    invoke-direct { v2, p1 }, Ljava/io/File;-><init>(Ljava/lang/String;)V
  .line 8
    new-instance p1, Ljava/io/FileOutputStream;
    invoke-direct { p1, v2 }, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
  :L2
  .line 9
    invoke-virtual { p1, p0 }, Ljava/io/FileOutputStream;->write([B)V
  :L3
    move-object v0, p1
    goto :L6
  :L4
    move-exception p0
    goto :L14
  :L5
    move-object v2, v0
  :L6
  .line 10
    invoke-virtual { v1 }, Ljava/io/FileInputStream;->close()V
    if-eqz v0, :L9
  .line 11
    invoke-virtual { v0 }, Ljava/io/FileOutputStream;->close()V
  :L7
    goto :L9
  :L8
    move-exception p0
  .line 12
    invoke-virtual { p0 }, Ljava/lang/Exception;->printStackTrace()V
  :L9
    move-object v0, v2
    goto :L30
  :L10
    move-exception p0
    move-object p1, v0
    goto :L22
  :L11
    move-exception p0
    move-object p1, v0
    goto :L14
  :L12
    move-exception p0
    move-object p1, v0
    goto :L23
  :L13
    move-exception p0
    move-object p1, v0
    move-object v1, p1
  :L14
  .line 13
    invoke-virtual { p0 }, Ljava/lang/Exception;->printStackTrace()V
  :L15
    if-eqz v1, :L18
  :L16
  .line 14
    invoke-virtual { v1 }, Ljava/io/FileInputStream;->close()V
    goto :L18
  :L17
    move-exception p0
    goto :L20
  :L18
    if-eqz p1, :L30
  .line 15
    invoke-virtual { p1 }, Ljava/io/FileOutputStream;->close()V
  :L19
    goto :L30
  :L20
  .line 16
    invoke-virtual { p0 }, Ljava/lang/Exception;->printStackTrace()V
    goto :L30
  :L21
    move-exception p0
  :L22
    move-object v0, v1
  :L23
    if-eqz v0, :L26
  :L24
  .line 17
    invoke-virtual { v0 }, Ljava/io/FileInputStream;->close()V
    goto :L26
  :L25
    move-exception p1
    goto :L28
  :L26
    if-eqz p1, :L29
  .line 18
    invoke-virtual { p1 }, Ljava/io/FileOutputStream;->close()V
  :L27
    goto :L29
  :L28
  .line 19
    invoke-virtual { p1 }, Ljava/lang/Exception;->printStackTrace()V
  :L29
  .line 20
    throw p0
  :L30
    return-object v0
.end method

.method public static k(Landroid/content/Context;)Ljava/io/File;
  .registers 2
    const-string v0, "audio"
  .line 1
    invoke-static { p0, v0 }, Lcn/manstep/phonemirrorBox/util/n;->l(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    move-result-object p0
    return-object p0
.end method

.method public static l(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
  .registers 3
  .line 1
    invoke-virtual { p0 }, Landroid/content/Context;->getCacheDir()Ljava/io/File;
    move-result-object p0
    if-eqz p0, :L0
  .line 2
    invoke-virtual { p0 }, Ljava/io/File;->isDirectory()Z
    move-result v0
    if-eqz v0, :L0
  .line 3
    invoke-static { p0, p1 }, Lcn/manstep/phonemirrorBox/util/n;->w(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;
    move-result-object p0
    return-object p0
  :L0
    const/4 p0, 0
    return-object p0
.end method

.method public static m(Landroid/content/Context;)Ljava/io/File;
  .registers 2
    const-string v0, "data"
  .line 1
    invoke-static { p0, v0 }, Lcn/manstep/phonemirrorBox/util/n;->l(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    move-result-object p0
    return-object p0
.end method

.method public static n(Landroid/content/Context;)Ljava/io/File;
  .registers 2
    const-string v0, "log"
  .line 1
    invoke-static { p0, v0 }, Lcn/manstep/phonemirrorBox/util/n;->l(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    move-result-object p0
    return-object p0
.end method

.method public static o(Landroid/content/Context;)Ljava/io/File;
  .registers 4
  .line 1
    invoke-static { p0 }, Lcn/manstep/phonemirrorBox/util/n;->n(Landroid/content/Context;)Ljava/io/File;
    move-result-object p0
    if-eqz p0, :L0
  .line 2
    new-instance v0, Ljava/text/SimpleDateFormat;
    sget-object v1, Ljava/util/Locale;->CHINA:Ljava/util/Locale;
    const-string v2, "yyyyMMdd"
    invoke-direct { v0, v2, v1 }, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V
  .line 3
    new-instance v1, Ljava/lang/StringBuilder;
    invoke-direct { v1 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v2, "CrashLog_"
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    new-instance v2, Ljava/util/Date;
    invoke-direct { v2 }, Ljava/util/Date;-><init>()V
    invoke-virtual { v0, v2 }, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;
    move-result-object v0
    invoke-virtual { v1, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string v0, ".log"
    invoke-virtual { v1, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
  .line 4
    new-instance v1, Ljava/io/File;
    invoke-direct { v1, p0, v0 }, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
  .line 5
    invoke-virtual { v1 }, Ljava/io/File;->isFile()Z
    move-result p0
    if-eqz p0, :L0
    return-object v1
  :L0
    const/4 p0, 0
    return-object p0
.end method

.method public static p(Landroid/content/Context;)Ljava/io/File;
  .registers 4
  .line 1
    invoke-static { p0 }, Lcn/manstep/phonemirrorBox/util/n;->n(Landroid/content/Context;)Ljava/io/File;
    move-result-object p0
    if-eqz p0, :L0
  .line 2
    new-instance v0, Ljava/text/SimpleDateFormat;
    sget-object v1, Ljava/util/Locale;->CHINA:Ljava/util/Locale;
    const-string v2, "yyyyMMdd"
    invoke-direct { v0, v2, v1 }, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V
  .line 3
    new-instance v1, Ljava/lang/StringBuilder;
    invoke-direct { v1 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v2, "app_"
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    new-instance v2, Ljava/util/Date;
    invoke-direct { v2 }, Ljava/util/Date;-><init>()V
    invoke-virtual { v0, v2 }, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;
    move-result-object v0
    invoke-virtual { v1, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string v0, ".log"
    invoke-virtual { v1, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
  .line 4
    new-instance v1, Ljava/io/File;
    invoke-direct { v1, p0, v0 }, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
  .line 5
    invoke-virtual { v1 }, Ljava/io/File;->isFile()Z
    move-result p0
    if-eqz p0, :L0
    return-object v1
  :L0
    const/4 p0, 0
    return-object p0
.end method

.method public static q(Landroid/content/Context;)Ljava/io/File;
  .registers 2
    const-string v0, "tmp"
  .line 1
    invoke-static { p0, v0 }, Lcn/manstep/phonemirrorBox/util/n;->l(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    move-result-object p0
    return-object p0
.end method

.method public static r(Landroid/content/Context;)Ljava/lang/String;
  .registers 2
    const-string v0, "tmp"
  .line 1
    invoke-static { p0, v0 }, Lcn/manstep/phonemirrorBox/util/n;->l(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    move-result-object p0
    if-eqz p0, :L0
  .line 2
    invoke-virtual { p0 }, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
    move-result-object p0
    return-object p0
  :L0
    const-string p0, ""
    return-object p0
.end method

.method public static s(Landroid/content/Context;)Ljava/io/File;
  .registers 2
    const-string v0, "video"
  .line 1
    invoke-static { p0, v0 }, Lcn/manstep/phonemirrorBox/util/n;->l(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    move-result-object p0
    return-object p0
.end method

.method public static t(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;
  .catch Lorg/xmlpull/v1/XmlPullParserException; { :L0 .. :L3 } :L5
  .catch Ljava/io/IOException; { :L0 .. :L3 } :L4
  .registers 4
  .line 1
    invoke-virtual { p0 }, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
    move-result-object p0
    invoke-virtual { p0, p2 }, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;
    move-result-object p0
  :L0
  .line 2
    invoke-interface { p0 }, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I
    move-result p2
  :L1
    const/4 v0, 1
    if-eq p2, v0, :L7
    const/4 v0, 2
    if-ne p2, v0, :L2
  .line 3
    invoke-interface { p0 }, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;
    move-result-object p2
  .line 4
    invoke-virtual { p1, p2 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result p2
    if-eqz p2, :L2
  .line 5
    invoke-interface { p0 }, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;
    move-result-object p0
    return-object p0
  :L2
  .line 6
    invoke-interface { p0 }, Lorg/xmlpull/v1/XmlPullParser;->next()I
    move-result p2
  :L3
    goto :L1
  :L4
    move-exception p0
    goto :L6
  :L5
    move-exception p0
  :L6
  .line 7
    invoke-virtual { p0 }, Ljava/lang/Exception;->printStackTrace()V
  .line 8
    new-instance p1, Ljava/lang/StringBuilder;
    invoke-direct { p1 }, Ljava/lang/StringBuilder;-><init>()V
    const-string p2, "Exception: "
    invoke-virtual { p1, p2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { p1, p0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    invoke-virtual { p1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p0
    const-string p1, "getXmlString"
    invoke-static { p1, p0 }, Lcn/manstep/phonemirrorBox/util/s;->d(Ljava/lang/String;Ljava/lang/String;)V
  :L7
    const/4 p0, 0
    return-object p0
.end method

.method public static u(Landroid/content/Context;)Z
  .registers 2
    const-string v0, "audio"
  .line 1
    invoke-static { p0, v0 }, Lcn/manstep/phonemirrorBox/util/n;->v(Landroid/content/Context;Ljava/lang/String;)Z
    move-result p0
    return p0
.end method

.method private static v(Landroid/content/Context;Ljava/lang/String;)Z
  .registers 2
  .line 1
    invoke-static { p0, p1 }, Lcn/manstep/phonemirrorBox/util/n;->l(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    move-result-object p0
    if-eqz p0, :L0
  .line 2
    invoke-virtual { p0 }, Ljava/io/File;->isDirectory()Z
    move-result p1
    if-eqz p1, :L0
  .line 3
    invoke-virtual { p0 }, Ljava/io/File;->listFiles()[Ljava/io/File;
    move-result-object p0
    if-eqz p0, :L0
  .line 4
    array-length p0, p0
    if-lez p0, :L0
    const/4 p0, 1
    return p0
  :L0
    const/4 p0, 0
    return p0
.end method

.method private static w(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;
  .registers 4
    const/4 v0, 0
    if-eqz p0, :L2
  .line 1
    invoke-virtual { p0 }, Ljava/io/File;->exists()Z
    move-result v1
    if-eqz v1, :L2
    invoke-virtual { p0 }, Ljava/io/File;->isDirectory()Z
    move-result v1
    if-eqz v1, :L2
  .line 2
    new-instance v1, Ljava/io/File;
    invoke-direct { v1, p0, p1 }, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
  .line 3
    invoke-virtual { v1 }, Ljava/io/File;->exists()Z
    move-result p0
    if-eqz p0, :L1
    invoke-virtual { v1 }, Ljava/io/File;->isFile()Z
    move-result p0
    if-eqz p0, :L0
    goto :L1
  :L0
    return-object v1
  :L1
  .line 4
    invoke-virtual { v1 }, Ljava/io/File;->mkdir()Z
    move-result p0
    if-eqz p0, :L2
    move-object v0, v1
  :L2
    return-object v0
.end method

.method public static x([BIILjava/lang/String;)Z
  .catch Ljava/lang/Exception; { :L0 .. :L2 } :L3
  .registers 7
    const/4 v0, 0
  :L0
  .line 1
    new-instance v1, Ljava/io/File;
    invoke-direct { v1, p3 }, Ljava/io/File;-><init>(Ljava/lang/String;)V
  .line 2
    invoke-virtual { v1 }, Ljava/io/File;->exists()Z
    move-result p3
    if-nez p3, :L1
  .line 3
    invoke-virtual { v1 }, Ljava/io/File;->createNewFile()Z
    move-result p3
    if-nez p3, :L1
    return v0
  :L1
  .line 4
    new-instance p3, Ljava/io/RandomAccessFile;
    const-string v2, "rw"
    invoke-direct { p3, v1, v2 }, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
  .line 5
    invoke-virtual { v1 }, Ljava/io/File;->length()J
    move-result-wide v1
    invoke-virtual { p3, v1, v2 }, Ljava/io/RandomAccessFile;->seek(J)V
  .line 6
    invoke-virtual { p3, p0, p1, p2 }, Ljava/io/RandomAccessFile;->write([BII)V
  .line 7
    invoke-virtual { p3 }, Ljava/io/RandomAccessFile;->close()V
  :L2
    const/4 p0, 1
    return p0
  :L3
    return v0
.end method

.method public static y([BLjava/lang/String;)Z
  .catch Ljava/lang/Exception; { :L0 .. :L2 } :L3
  .registers 5
    const/4 v0, 0
  :L0
  .line 1
    new-instance v1, Ljava/io/File;
    invoke-direct { v1, p1 }, Ljava/io/File;-><init>(Ljava/lang/String;)V
  .line 2
    invoke-virtual { v1 }, Ljava/io/File;->exists()Z
    move-result p1
    if-nez p1, :L1
  .line 3
    invoke-virtual { v1 }, Ljava/io/File;->createNewFile()Z
    move-result p1
    if-nez p1, :L1
    return v0
  :L1
  .line 4
    new-instance p1, Ljava/io/RandomAccessFile;
    const-string v2, "rw"
    invoke-direct { p1, v1, v2 }, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
  .line 5
    invoke-virtual { v1 }, Ljava/io/File;->length()J
    move-result-wide v1
    invoke-virtual { p1, v1, v2 }, Ljava/io/RandomAccessFile;->seek(J)V
  .line 6
    invoke-virtual { p1, p0 }, Ljava/io/RandomAccessFile;->write([B)V
  .line 7
    invoke-virtual { p1 }, Ljava/io/RandomAccessFile;->close()V
  :L2
    const/4 p0, 1
    return p0
  :L3
    return v0
.end method

.method public static z([BIILjava/lang/String;Landroid/content/Context;)Z
  .registers 6
  .line 1
    invoke-static { p4 }, Lcn/manstep/phonemirrorBox/util/n;->k(Landroid/content/Context;)Ljava/io/File;
    move-result-object p4
    if-eqz p4, :L0
  .line 2
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual { p4 }, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
    move-result-object p4
    invoke-virtual { v0, p4 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string p4, "/"
    invoke-virtual { v0, p4 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0, p3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p3
    invoke-static { p0, p1, p2, p3 }, Lcn/manstep/phonemirrorBox/util/n;->x([BIILjava/lang/String;)Z
    move-result p0
    return p0
  :L0
    const/4 p0, 0
    return p0
.end method
