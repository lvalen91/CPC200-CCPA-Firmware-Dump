.class public Lcn/manstep/phonemirrorBox/util/n;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A([BLjava/lang/String;Landroid/content/Context;)Z
    .registers 4

    .line 1
    invoke-static {p2}, Lcn/manstep/phonemirrorBox/util/n;->k(Landroid/content/Context;)Ljava/io/File;

    move-result-object p2

    if-eqz p2, :cond_23

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "/"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcn/manstep/phonemirrorBox/util/n;->y([BLjava/lang/String;)Z

    move-result p0

    return p0

    :cond_23
    const/4 p0, 0x0

    return p0
.end method

.method public static a(Landroid/content/Context;)V
    .registers 5

    .line 1
    invoke-static {p0}, Lcn/manstep/phonemirrorBox/util/n;->k(Landroid/content/Context;)Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_1e

    .line 2
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_1e

    .line 3
    array-length v0, p0

    const/4 v1, 0x0

    :goto_e
    if-ge v1, v0, :cond_1e

    aget-object v2, p0, v1

    .line 4
    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 5
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    :cond_1b
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    :cond_1e
    return-void
.end method

.method public static b(Landroid/content/Context;)V
    .registers 5

    .line 1
    invoke-static {p0}, Lcn/manstep/phonemirrorBox/util/n;->n(Landroid/content/Context;)Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_1e

    .line 2
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_1e

    .line 3
    array-length v0, p0

    const/4 v1, 0x0

    :goto_e
    if-ge v1, v0, :cond_1e

    aget-object v2, p0, v1

    .line 4
    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 5
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    :cond_1b
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    :cond_1e
    return-void
.end method

.method public static c(Landroid/content/Context;)V
    .registers 5

    .line 1
    invoke-static {p0}, Lcn/manstep/phonemirrorBox/util/n;->s(Landroid/content/Context;)Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_1e

    .line 2
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_1e

    .line 3
    array-length v0, p0

    const/4 v1, 0x0

    :goto_e
    if-ge v1, v0, :cond_1e

    aget-object v2, p0, v1

    .line 4
    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 5
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    :cond_1b
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    :cond_1e
    return-void
.end method

.method public static d(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    .line 1
    invoke-static {p0}, Lcn/manstep/phonemirrorBox/util/n;->k(Landroid/content/Context;)Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_1a

    .line 2
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 3
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result p0

    if-eqz p0, :cond_1a

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_1a

    .line 4
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_1a
    return-void
.end method

.method public static e(Ljava/io/File;)V
    .registers 6

    if-eqz p0, :cond_27

    .line 1
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 2
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_27

    .line 3
    array-length v1, v0

    const/4 v2, 0x0

    :goto_10
    if-ge v2, v1, :cond_24

    aget-object v3, v0, v2

    .line 4
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_1e

    .line 5
    invoke-static {v3}, Lcn/manstep/phonemirrorBox/util/n;->e(Ljava/io/File;)V

    goto :goto_21

    .line 6
    :cond_1e
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    :goto_21
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    .line 7
    :cond_24
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    :cond_27
    return-void
.end method

.method public static f(Ljava/lang/String;)Z
    .registers 2

    .line 1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result p0

    if-eqz p0, :cond_16

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_16

    .line 3
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result p0

    return p0

    :cond_16
    const/4 p0, 0x1

    return p0
.end method

.method public static g(Ljava/io/File;Landroid/content/Context;)Ljava/io/File;
    .registers 5

    .line 1
    invoke-static {p1}, Lcn/manstep/phonemirrorBox/util/n;->n(Landroid/content/Context;)Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_2f

    .line 2
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 3
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    .line 4
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".bs64"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, p1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    .line 5
    invoke-static {p0, p1}, Lcn/manstep/phonemirrorBox/util/n;->j(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    return-object p0

    :cond_2f
    const/4 p0, 0x0

    return-object p0
.end method

.method public static h(Ljava/io/File;)Ljava/io/File;
    .registers 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".bs64"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcn/manstep/phonemirrorBox/util/n;->j(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public static i(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcn/manstep/phonemirrorBox/util/n;->h(Ljava/io/File;)Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_10

    .line 2
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_10
    const/4 p0, 0x0

    return-object p0
.end method

.method private static j(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;
    .registers 6

    const/4 v0, 0x0

    if-eqz p0, :cond_75

    .line 1
    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_75

    .line 2
    :try_start_9
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_e} :catch_49
    .catchall {:try_start_9 .. :try_end_e} :catchall_46

    .line 3
    :try_start_e
    invoke-virtual {v1}, Ljava/io/FileInputStream;->available()I

    move-result p0

    .line 4
    new-array v2, p0, [B

    .line 5
    invoke-virtual {v1, v2}, Ljava/io/FileInputStream;->read([B)I

    move-result v3

    if-ne v3, p0, :cond_30

    const/4 p0, 0x2

    .line 6
    invoke-static {v2, p0}, Landroid/util/Base64;->encode([BI)[B

    move-result-object p0

    .line 7
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 8
    new-instance p1, Ljava/io/FileOutputStream;

    invoke-direct {p1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_29} :catch_43
    .catchall {:try_start_e .. :try_end_29} :catchall_40

    .line 9
    :try_start_29
    invoke-virtual {p1, p0}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_2c} :catch_2e
    .catchall {:try_start_29 .. :try_end_2c} :catchall_61

    move-object v0, p1

    goto :goto_31

    :catch_2e
    move-exception p0

    goto :goto_4c

    :cond_30
    move-object v2, v0

    .line 10
    :goto_31
    :try_start_31
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    if-eqz v0, :cond_3e

    .line 11
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_39} :catch_3a

    goto :goto_3e

    :catch_3a
    move-exception p0

    .line 12
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3e
    :goto_3e
    move-object v0, v2

    goto :goto_75

    :catchall_40
    move-exception p0

    move-object p1, v0

    goto :goto_62

    :catch_43
    move-exception p0

    move-object p1, v0

    goto :goto_4c

    :catchall_46
    move-exception p0

    move-object p1, v0

    goto :goto_63

    :catch_49
    move-exception p0

    move-object p1, v0

    move-object v1, p1

    .line 13
    :goto_4c
    :try_start_4c
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4f
    .catchall {:try_start_4c .. :try_end_4f} :catchall_61

    if-eqz v1, :cond_57

    .line 14
    :try_start_51
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    goto :goto_57

    :catch_55
    move-exception p0

    goto :goto_5d

    :cond_57
    :goto_57
    if-eqz p1, :cond_75

    .line 15
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_5c
    .catch Ljava/lang/Exception; {:try_start_51 .. :try_end_5c} :catch_55

    goto :goto_75

    .line 16
    :goto_5d
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_75

    :catchall_61
    move-exception p0

    :goto_62
    move-object v0, v1

    :goto_63
    if-eqz v0, :cond_6b

    .line 17
    :try_start_65
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    goto :goto_6b

    :catch_69
    move-exception p1

    goto :goto_71

    :cond_6b
    :goto_6b
    if-eqz p1, :cond_74

    .line 18
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_70
    .catch Ljava/lang/Exception; {:try_start_65 .. :try_end_70} :catch_69

    goto :goto_74

    .line 19
    :goto_71
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 20
    :cond_74
    :goto_74
    throw p0

    :cond_75
    :goto_75
    return-object v0
.end method

.method public static k(Landroid/content/Context;)Ljava/io/File;
    .registers 2

    const-string v0, "audio"

    .line 1
    invoke-static {p0, v0}, Lcn/manstep/phonemirrorBox/util/n;->l(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public static l(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    .registers 3

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_11

    .line 2
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 3
    invoke-static {p0, p1}, Lcn/manstep/phonemirrorBox/util/n;->w(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    return-object p0

    :cond_11
    const/4 p0, 0x0

    return-object p0
.end method

.method public static m(Landroid/content/Context;)Ljava/io/File;
    .registers 2

    const-string v0, "data"

    .line 1
    invoke-static {p0, v0}, Lcn/manstep/phonemirrorBox/util/n;->l(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public static n(Landroid/content/Context;)Ljava/io/File;
    .registers 2

    const-string v0, "log"

    .line 1
    invoke-static {p0, v0}, Lcn/manstep/phonemirrorBox/util/n;->l(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public static o(Landroid/content/Context;)Ljava/io/File;
    .registers 4

    .line 1
    invoke-static {p0}, Lcn/manstep/phonemirrorBox/util/n;->n(Landroid/content/Context;)Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_3a

    .line 2
    new-instance v0, Ljava/text/SimpleDateFormat;

    sget-object v1, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    const-string v2, "yyyyMMdd"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CrashLog_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".log"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 5
    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result p0

    if-eqz p0, :cond_3a

    return-object v1

    :cond_3a
    const/4 p0, 0x0

    return-object p0
.end method

.method public static p(Landroid/content/Context;)Ljava/io/File;
    .registers 4

    .line 1
    invoke-static {p0}, Lcn/manstep/phonemirrorBox/util/n;->n(Landroid/content/Context;)Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_3a

    .line 2
    new-instance v0, Ljava/text/SimpleDateFormat;

    sget-object v1, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    const-string v2, "yyyyMMdd"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "app_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".log"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 5
    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result p0

    if-eqz p0, :cond_3a

    return-object v1

    :cond_3a
    const/4 p0, 0x0

    return-object p0
.end method

.method public static q(Landroid/content/Context;)Ljava/io/File;
    .registers 2

    const-string v0, "tmp"

    .line 1
    invoke-static {p0, v0}, Lcn/manstep/phonemirrorBox/util/n;->l(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public static r(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    const-string v0, "tmp"

    .line 1
    invoke-static {p0, v0}, Lcn/manstep/phonemirrorBox/util/n;->l(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_d

    .line 2
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_d
    const-string p0, ""

    return-object p0
.end method

.method public static s(Landroid/content/Context;)Ljava/io/File;
    .registers 2

    const-string v0, "video"

    .line 1
    invoke-static {p0, v0}, Lcn/manstep/phonemirrorBox/util/n;->l(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public static t(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;
    .registers 4

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object p0

    .line 2
    :try_start_8
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result p2

    :goto_c
    const/4 v0, 0x1

    if-eq p2, v0, :cond_42

    const/4 v0, 0x2

    if-ne p2, v0, :cond_21

    .line 3
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object p2

    .line 4
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_21

    .line 5
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 6
    :cond_21
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result p2
    :try_end_25
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_8 .. :try_end_25} :catch_28
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_25} :catch_26

    goto :goto_c

    :catch_26
    move-exception p0

    goto :goto_29

    :catch_28
    move-exception p0

    .line 7
    :goto_29
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 8
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Exception: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "getXmlString"

    invoke-static {p1, p0}, Lcn/manstep/phonemirrorBox/util/s;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_42
    const/4 p0, 0x0

    return-object p0
.end method

.method public static u(Landroid/content/Context;)Z
    .registers 2

    const-string v0, "audio"

    .line 1
    invoke-static {p0, v0}, Lcn/manstep/phonemirrorBox/util/n;->v(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private static v(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 2

    .line 1
    invoke-static {p0, p1}, Lcn/manstep/phonemirrorBox/util/n;->l(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_17

    .line 2
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result p1

    if-eqz p1, :cond_17

    .line 3
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_17

    .line 4
    array-length p0, p0

    if-lez p0, :cond_17

    const/4 p0, 0x1

    return p0

    :cond_17
    const/4 p0, 0x0

    return p0
.end method

.method private static w(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;
    .registers 4

    const/4 v0, 0x0

    if-eqz p0, :cond_29

    .line 1
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_29

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_29

    .line 2
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 3
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_22

    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result p0

    if-eqz p0, :cond_21

    goto :goto_22

    :cond_21
    return-object v1

    .line 4
    :cond_22
    :goto_22
    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    move-result p0

    if-eqz p0, :cond_29

    move-object v0, v1

    :cond_29
    return-object v0
.end method

.method public static x([BIILjava/lang/String;)Z
    .registers 7

    const/4 v0, 0x0

    .line 1
    :try_start_1
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p3

    if-nez p3, :cond_13

    .line 3
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    move-result p3

    if-nez p3, :cond_13

    return v0

    .line 4
    :cond_13
    new-instance p3, Ljava/io/RandomAccessFile;

    const-string v2, "rw"

    invoke-direct {p3, v1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 5
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v1

    invoke-virtual {p3, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 6
    invoke-virtual {p3, p0, p1, p2}, Ljava/io/RandomAccessFile;->write([BII)V

    .line 7
    invoke-virtual {p3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_27} :catch_29

    const/4 p0, 0x1

    return p0

    :catch_29
    return v0
.end method

.method public static y([BLjava/lang/String;)Z
    .registers 5

    const/4 v0, 0x0

    .line 1
    :try_start_1
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_13

    .line 3
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    move-result p1

    if-nez p1, :cond_13

    return v0

    .line 4
    :cond_13
    new-instance p1, Ljava/io/RandomAccessFile;

    const-string v2, "rw"

    invoke-direct {p1, v1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 5
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 6
    invoke-virtual {p1, p0}, Ljava/io/RandomAccessFile;->write([B)V

    .line 7
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_27} :catch_29

    const/4 p0, 0x1

    return p0

    :catch_29
    return v0
.end method

.method public static z([BIILjava/lang/String;Landroid/content/Context;)Z
    .registers 6

    .line 1
    invoke-static {p4}, Lcn/manstep/phonemirrorBox/util/n;->k(Landroid/content/Context;)Ljava/io/File;

    move-result-object p4

    if-eqz p4, :cond_23

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, "/"

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p0, p1, p2, p3}, Lcn/manstep/phonemirrorBox/util/n;->x([BIILjava/lang/String;)Z

    move-result p0

    return p0

    :cond_23
    const/4 p0, 0x0

    return p0
.end method
