.class public Lcn/manstep/phonemirrorBox/h;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;)V
    .registers 7

    .line 1
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1

    .line 2
    new-instance v0, Ljava/io/FileOutputStream;

    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/data/data/cn.manstep.phonemirror/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Copying: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V

    const/16 p2, 0x400

    new-array p2, p2, [B

    .line 4
    :goto_3b
    invoke-virtual {p1, p2}, Ljava/io/InputStream;->read([B)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_47

    const/4 v2, 0x0

    .line 5
    invoke-virtual {v0, p2, v2, v1}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_3b

    .line 6
    :cond_47
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->flush()V

    .line 7
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 8
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_50
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_50} :catch_51

    goto :goto_5c

    :catch_51
    move-exception p1

    .line 9
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 10
    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/manstep/phonemirrorBox/util/s;->e(Ljava/lang/String;)V

    :goto_5c
    return-void
.end method

.method private b(Ljava/lang/String;)Z
    .registers 6

    const/4 v0, 0x0

    .line 1
    :try_start_1
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/data/data/cn.manstep.phonemirror/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p1
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1b} :catch_20

    if-nez p1, :cond_1e

    return v0

    :cond_1e
    const/4 p1, 0x1

    return p1

    :catch_20
    return v0
.end method


# virtual methods
.method public c(Landroid/content/Context;)V
    .registers 4

    const-string v0, "adb"

    .line 1
    invoke-direct {p0, v0}, Lcn/manstep/phonemirrorBox/h;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_b

    .line 2
    invoke-direct {p0, p1, v0}, Lcn/manstep/phonemirrorBox/h;->a(Landroid/content/Context;Ljava/lang/String;)V

    :cond_b
    const-string v0, "adb.pub"

    .line 3
    invoke-direct {p0, v0}, Lcn/manstep/phonemirrorBox/h;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_16

    .line 4
    invoke-direct {p0, p1, v0}, Lcn/manstep/phonemirrorBox/h;->a(Landroid/content/Context;Ljava/lang/String;)V

    :cond_16
    const-string v0, "airport.key"

    .line 5
    invoke-direct {p0, v0}, Lcn/manstep/phonemirrorBox/h;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_21

    .line 6
    invoke-direct {p0, p1, v0}, Lcn/manstep/phonemirrorBox/h;->a(Landroid/content/Context;Ljava/lang/String;)V

    :cond_21
    const-string v0, "helloworld0"

    .line 7
    invoke-direct {p0, v0}, Lcn/manstep/phonemirrorBox/h;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2c

    .line 8
    invoke-direct {p0, p1, v0}, Lcn/manstep/phonemirrorBox/h;->a(Landroid/content/Context;Ljava/lang/String;)V

    :cond_2c
    const-string v0, "helloworld1"

    .line 9
    invoke-direct {p0, v0}, Lcn/manstep/phonemirrorBox/h;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_37

    .line 10
    invoke-direct {p0, p1, v0}, Lcn/manstep/phonemirrorBox/h;->a(Landroid/content/Context;Ljava/lang/String;)V

    :cond_37
    const-string v0, "helloworld2"

    .line 11
    invoke-direct {p0, v0}, Lcn/manstep/phonemirrorBox/h;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_42

    .line 12
    invoke-direct {p0, p1, v0}, Lcn/manstep/phonemirrorBox/h;->a(Landroid/content/Context;Ljava/lang/String;)V

    :cond_42
    const-string v0, "libby265n.so"

    .line 13
    invoke-direct {p0, v0}, Lcn/manstep/phonemirrorBox/h;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4d

    .line 14
    invoke-direct {p0, p1, v0}, Lcn/manstep/phonemirrorBox/h;->a(Landroid/content/Context;Ljava/lang/String;)V

    :cond_4d
    const-string v0, "libby265n_x86.so"

    .line 15
    invoke-direct {p0, v0}, Lcn/manstep/phonemirrorBox/h;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_58

    .line 16
    invoke-direct {p0, p1, v0}, Lcn/manstep/phonemirrorBox/h;->a(Landroid/content/Context;Ljava/lang/String;)V

    :cond_58
    const-string v0, "libscreencap40.so"

    .line 17
    invoke-direct {p0, v0}, Lcn/manstep/phonemirrorBox/h;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_63

    .line 18
    invoke-direct {p0, p1, v0}, Lcn/manstep/phonemirrorBox/h;->a(Landroid/content/Context;Ljava/lang/String;)V

    :cond_63
    const-string v0, "libscreencap41.so"

    .line 19
    invoke-direct {p0, v0}, Lcn/manstep/phonemirrorBox/h;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6e

    .line 20
    invoke-direct {p0, p1, v0}, Lcn/manstep/phonemirrorBox/h;->a(Landroid/content/Context;Ljava/lang/String;)V

    :cond_6e
    const-string v0, "libscreencap43.so"

    .line 21
    invoke-direct {p0, v0}, Lcn/manstep/phonemirrorBox/h;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_79

    .line 22
    invoke-direct {p0, p1, v0}, Lcn/manstep/phonemirrorBox/h;->a(Landroid/content/Context;Ljava/lang/String;)V

    :cond_79
    const-string v0, "libscreencap50.so"

    .line 23
    invoke-direct {p0, v0}, Lcn/manstep/phonemirrorBox/h;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_84

    .line 24
    invoke-direct {p0, p1, v0}, Lcn/manstep/phonemirrorBox/h;->a(Landroid/content/Context;Ljava/lang/String;)V

    :cond_84
    const-string v0, "libscreencap50_x86.so"

    .line 25
    invoke-direct {p0, v0}, Lcn/manstep/phonemirrorBox/h;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_8f

    .line 26
    invoke-direct {p0, p1, v0}, Lcn/manstep/phonemirrorBox/h;->a(Landroid/content/Context;Ljava/lang/String;)V

    :cond_8f
    const-string v0, "libscreencap442.so"

    .line 27
    invoke-direct {p0, v0}, Lcn/manstep/phonemirrorBox/h;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_9a

    .line 28
    invoke-direct {p0, p1, v0}, Lcn/manstep/phonemirrorBox/h;->a(Landroid/content/Context;Ljava/lang/String;)V

    :cond_9a
    const-string v0, "mirrorcoper.apk"

    .line 29
    invoke-direct {p0, v0}, Lcn/manstep/phonemirrorBox/h;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_a5

    .line 30
    invoke-direct {p0, p1, v0}, Lcn/manstep/phonemirrorBox/h;->a(Landroid/content/Context;Ljava/lang/String;)V

    :cond_a5
    const-string v0, "AirServer.dat"

    .line 31
    invoke-direct {p0, v0}, Lcn/manstep/phonemirrorBox/h;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_b0

    .line 32
    invoke-direct {p0, p1, v0}, Lcn/manstep/phonemirrorBox/h;->a(Landroid/content/Context;Ljava/lang/String;)V

    :cond_b0
    const-string v0, "libscreencap60.so"

    .line 33
    invoke-direct {p0, v0}, Lcn/manstep/phonemirrorBox/h;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_bb

    .line 34
    invoke-direct {p0, p1, v0}, Lcn/manstep/phonemirrorBox/h;->a(Landroid/content/Context;Ljava/lang/String;)V

    :cond_bb
    return-void
.end method
