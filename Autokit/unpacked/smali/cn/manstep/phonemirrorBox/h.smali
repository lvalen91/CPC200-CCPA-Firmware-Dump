.class public Lcn/manstep/phonemirrorBox/h;
.super Ljava/lang/Object;
.source "SourceFile"

.method public constructor <init>()V
  .registers 1
  .line 1
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;)V
  .catch Ljava/io/IOException; { :L0 .. :L3 } :L4
  .registers 7
  :L0
  .line 1
    invoke-virtual { p1 }, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;
    move-result-object p1
    invoke-virtual { p1, p2 }, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
    move-result-object p1
  .line 2
    new-instance v0, Ljava/io/FileOutputStream;
    new-instance v1, Ljava/io/File;
    new-instance v2, Ljava/lang/StringBuilder;
    invoke-direct { v2 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v3, "/data/data/cn.manstep.phonemirror/"
    invoke-virtual { v2, v3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v2, p2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v2 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v2
    invoke-direct { v1, v2 }, Ljava/io/File;-><init>(Ljava/lang/String;)V
    invoke-direct { v0, v1 }, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
  .line 3
    new-instance v1, Ljava/lang/StringBuilder;
    invoke-direct { v1 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v2, "Copying: "
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v1, p2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p2
    invoke-static { p2 }, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V
    const/16 p2, 1024
    new-array p2, p2, [B
  :L1
  .line 4
    invoke-virtual { p1, p2 }, Ljava/io/InputStream;->read([B)I
    move-result v1
    const/4 v2, -1
    if-eq v1, v2, :L2
    const/4 v2, 0
  .line 5
    invoke-virtual { v0, p2, v2, v1 }, Ljava/io/FileOutputStream;->write([BII)V
    goto :L1
  :L2
  .line 6
    invoke-virtual { v0 }, Ljava/io/FileOutputStream;->flush()V
  .line 7
    invoke-virtual { p1 }, Ljava/io/InputStream;->close()V
  .line 8
    invoke-virtual { v0 }, Ljava/io/FileOutputStream;->close()V
  :L3
    goto :L5
  :L4
    move-exception p1
  .line 9
    invoke-virtual { p1 }, Ljava/io/IOException;->printStackTrace()V
  .line 10
    invoke-static { p1 }, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;
    move-result-object p1
    invoke-static { p1 }, Lcn/manstep/phonemirrorBox/util/s;->e(Ljava/lang/String;)V
  :L5
    return-void
.end method

.method private b(Ljava/lang/String;)Z
  .catch Ljava/lang/Exception; { :L0 .. :L1 } :L3
  .registers 6
    const/4 v0, 0
  :L0
  .line 1
    new-instance v1, Ljava/io/File;
    new-instance v2, Ljava/lang/StringBuilder;
    invoke-direct { v2 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v3, "/data/data/cn.manstep.phonemirror/"
    invoke-virtual { v2, v3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v2, p1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v2 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p1
    invoke-direct { v1, p1 }, Ljava/io/File;-><init>(Ljava/lang/String;)V
  .line 2
    invoke-virtual { v1 }, Ljava/io/File;->exists()Z
    move-result p1
  :L1
    if-nez p1, :L2
    return v0
  :L2
    const/4 p1, 1
    return p1
  :L3
    return v0
.end method

.method public c(Landroid/content/Context;)V
  .registers 4
    const-string v0, "adb"
  .line 1
    invoke-direct { p0, v0 }, Lcn/manstep/phonemirrorBox/h;->b(Ljava/lang/String;)Z
    move-result v1
    if-nez v1, :L0
  .line 2
    invoke-direct { p0, p1, v0 }, Lcn/manstep/phonemirrorBox/h;->a(Landroid/content/Context;Ljava/lang/String;)V
  :L0
    const-string v0, "adb.pub"
  .line 3
    invoke-direct { p0, v0 }, Lcn/manstep/phonemirrorBox/h;->b(Ljava/lang/String;)Z
    move-result v1
    if-nez v1, :L1
  .line 4
    invoke-direct { p0, p1, v0 }, Lcn/manstep/phonemirrorBox/h;->a(Landroid/content/Context;Ljava/lang/String;)V
  :L1
    const-string v0, "airport.key"
  .line 5
    invoke-direct { p0, v0 }, Lcn/manstep/phonemirrorBox/h;->b(Ljava/lang/String;)Z
    move-result v1
    if-nez v1, :L2
  .line 6
    invoke-direct { p0, p1, v0 }, Lcn/manstep/phonemirrorBox/h;->a(Landroid/content/Context;Ljava/lang/String;)V
  :L2
    const-string v0, "helloworld0"
  .line 7
    invoke-direct { p0, v0 }, Lcn/manstep/phonemirrorBox/h;->b(Ljava/lang/String;)Z
    move-result v1
    if-nez v1, :L3
  .line 8
    invoke-direct { p0, p1, v0 }, Lcn/manstep/phonemirrorBox/h;->a(Landroid/content/Context;Ljava/lang/String;)V
  :L3
    const-string v0, "helloworld1"
  .line 9
    invoke-direct { p0, v0 }, Lcn/manstep/phonemirrorBox/h;->b(Ljava/lang/String;)Z
    move-result v1
    if-nez v1, :L4
  .line 10
    invoke-direct { p0, p1, v0 }, Lcn/manstep/phonemirrorBox/h;->a(Landroid/content/Context;Ljava/lang/String;)V
  :L4
    const-string v0, "helloworld2"
  .line 11
    invoke-direct { p0, v0 }, Lcn/manstep/phonemirrorBox/h;->b(Ljava/lang/String;)Z
    move-result v1
    if-nez v1, :L5
  .line 12
    invoke-direct { p0, p1, v0 }, Lcn/manstep/phonemirrorBox/h;->a(Landroid/content/Context;Ljava/lang/String;)V
  :L5
    const-string v0, "libby265n.so"
  .line 13
    invoke-direct { p0, v0 }, Lcn/manstep/phonemirrorBox/h;->b(Ljava/lang/String;)Z
    move-result v1
    if-nez v1, :L6
  .line 14
    invoke-direct { p0, p1, v0 }, Lcn/manstep/phonemirrorBox/h;->a(Landroid/content/Context;Ljava/lang/String;)V
  :L6
    const-string v0, "libby265n_x86.so"
  .line 15
    invoke-direct { p0, v0 }, Lcn/manstep/phonemirrorBox/h;->b(Ljava/lang/String;)Z
    move-result v1
    if-nez v1, :L7
  .line 16
    invoke-direct { p0, p1, v0 }, Lcn/manstep/phonemirrorBox/h;->a(Landroid/content/Context;Ljava/lang/String;)V
  :L7
    const-string v0, "libscreencap40.so"
  .line 17
    invoke-direct { p0, v0 }, Lcn/manstep/phonemirrorBox/h;->b(Ljava/lang/String;)Z
    move-result v1
    if-nez v1, :L8
  .line 18
    invoke-direct { p0, p1, v0 }, Lcn/manstep/phonemirrorBox/h;->a(Landroid/content/Context;Ljava/lang/String;)V
  :L8
    const-string v0, "libscreencap41.so"
  .line 19
    invoke-direct { p0, v0 }, Lcn/manstep/phonemirrorBox/h;->b(Ljava/lang/String;)Z
    move-result v1
    if-nez v1, :L9
  .line 20
    invoke-direct { p0, p1, v0 }, Lcn/manstep/phonemirrorBox/h;->a(Landroid/content/Context;Ljava/lang/String;)V
  :L9
    const-string v0, "libscreencap43.so"
  .line 21
    invoke-direct { p0, v0 }, Lcn/manstep/phonemirrorBox/h;->b(Ljava/lang/String;)Z
    move-result v1
    if-nez v1, :L10
  .line 22
    invoke-direct { p0, p1, v0 }, Lcn/manstep/phonemirrorBox/h;->a(Landroid/content/Context;Ljava/lang/String;)V
  :L10
    const-string v0, "libscreencap50.so"
  .line 23
    invoke-direct { p0, v0 }, Lcn/manstep/phonemirrorBox/h;->b(Ljava/lang/String;)Z
    move-result v1
    if-nez v1, :L11
  .line 24
    invoke-direct { p0, p1, v0 }, Lcn/manstep/phonemirrorBox/h;->a(Landroid/content/Context;Ljava/lang/String;)V
  :L11
    const-string v0, "libscreencap50_x86.so"
  .line 25
    invoke-direct { p0, v0 }, Lcn/manstep/phonemirrorBox/h;->b(Ljava/lang/String;)Z
    move-result v1
    if-nez v1, :L12
  .line 26
    invoke-direct { p0, p1, v0 }, Lcn/manstep/phonemirrorBox/h;->a(Landroid/content/Context;Ljava/lang/String;)V
  :L12
    const-string v0, "libscreencap442.so"
  .line 27
    invoke-direct { p0, v0 }, Lcn/manstep/phonemirrorBox/h;->b(Ljava/lang/String;)Z
    move-result v1
    if-nez v1, :L13
  .line 28
    invoke-direct { p0, p1, v0 }, Lcn/manstep/phonemirrorBox/h;->a(Landroid/content/Context;Ljava/lang/String;)V
  :L13
    const-string v0, "mirrorcoper.apk"
  .line 29
    invoke-direct { p0, v0 }, Lcn/manstep/phonemirrorBox/h;->b(Ljava/lang/String;)Z
    move-result v1
    if-nez v1, :L14
  .line 30
    invoke-direct { p0, p1, v0 }, Lcn/manstep/phonemirrorBox/h;->a(Landroid/content/Context;Ljava/lang/String;)V
  :L14
    const-string v0, "AirServer.dat"
  .line 31
    invoke-direct { p0, v0 }, Lcn/manstep/phonemirrorBox/h;->b(Ljava/lang/String;)Z
    move-result v1
    if-nez v1, :L15
  .line 32
    invoke-direct { p0, p1, v0 }, Lcn/manstep/phonemirrorBox/h;->a(Landroid/content/Context;Ljava/lang/String;)V
  :L15
    const-string v0, "libscreencap60.so"
  .line 33
    invoke-direct { p0, v0 }, Lcn/manstep/phonemirrorBox/h;->b(Ljava/lang/String;)Z
    move-result v1
    if-nez v1, :L16
  .line 34
    invoke-direct { p0, p1, v0 }, Lcn/manstep/phonemirrorBox/h;->a(Landroid/content/Context;Ljava/lang/String;)V
  :L16
    return-void
.end method
