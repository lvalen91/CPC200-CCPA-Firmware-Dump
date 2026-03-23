.class public Lcn/manstep/phonemirrorBox/util/b0;
.super Ljava/lang/Object;
.source "SourceFile"

.annotation system Ldalvik/annotation/MemberClasses;
  value = {
    Lcn/manstep/phonemirrorBox/util/b0$e;,
    Lcn/manstep/phonemirrorBox/util/b0$d;
  }
.end annotation

.field private final a:Ljava/util/Map;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "Ljava/util/Map<",
      "Ljava/lang/String;",
      "Ljava/lang/String;",
      ">;"
    }
  .end annotation
.end field

.field private final b:Lcn/manstep/phonemirrorBox/util/a0;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.method private constructor <init>()V
  .registers 4
  .line 2
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    const-string v0, ""
  .line 3
    iput-object v0, p0, Lcn/manstep/phonemirrorBox/util/b0;->d:Ljava/lang/String;
  .line 4
    iput-object v0, p0, Lcn/manstep/phonemirrorBox/util/b0;->e:Ljava/lang/String;
  .line 5
    iput-object v0, p0, Lcn/manstep/phonemirrorBox/util/b0;->f:Ljava/lang/String;
  .line 6
    iput-object v0, p0, Lcn/manstep/phonemirrorBox/util/b0;->g:Ljava/lang/String;
  .line 7
    new-instance v0, Lcn/manstep/phonemirrorBox/util/a0;
    const-wide/16 v1, 1000
    invoke-direct { v0, v1, v2 }, Lcn/manstep/phonemirrorBox/util/a0;-><init>(J)V
    iput-object v0, p0, Lcn/manstep/phonemirrorBox/util/b0;->b:Lcn/manstep/phonemirrorBox/util/a0;
  .line 8
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;
    invoke-direct { v0 }, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V
    iput-object v0, p0, Lcn/manstep/phonemirrorBox/util/b0;->a:Ljava/util/Map;
    const-string v1, "code"
    const-string v2, "37"
  .line 9
    invoke-interface { v0, v1, v2 }, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
  .line 10
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/util/b0;->a:Ljava/util/Map;
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;
    const-string v2, "m"
    invoke-interface { v0, v2, v1 }, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
  .line 11
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/util/b0;->a:Ljava/util/Map;
    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;
    const-string v2, "manufc"
    invoke-interface { v0, v2, v1 }, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
  .line 12
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/util/b0;->a:Ljava/util/Map;
    sget-object v1, Landroid/os/Build;->PRODUCT:Ljava/lang/String;
    const-string v2, "prod"
    invoke-interface { v0, v2, v1 }, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
  .line 13
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/util/b0;->a:Ljava/util/Map;
    sget-object v1, Landroid/os/Build;->BRAND:Ljava/lang/String;
    const-string v2, "brand"
    invoke-interface { v0, v2, v1 }, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
  .line 14
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/util/b0;->a:Ljava/util/Map;
    sget-object v1, Landroid/os/Build;->ID:Ljava/lang/String;
    const-string v2, "id"
    invoke-interface { v0, v2, v1 }, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
  .line 15
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/util/b0;->a:Ljava/util/Map;
    invoke-static { }, Lcn/manstep/phonemirrorBox/u;->z()Lcn/manstep/phonemirrorBox/u;
    move-result-object v1
    invoke-virtual { v1 }, Lcn/manstep/phonemirrorBox/u;->w()Ljava/lang/String;
    move-result-object v1
    const-string v2, "huid"
    invoke-interface { v0, v2, v1 }, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
  .line 16
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/util/b0;->a:Ljava/util/Map;
    invoke-static { }, Lcn/manstep/phonemirrorBox/MyApplication;->b()Lcn/manstep/phonemirrorBox/MyApplication;
    move-result-object v1
    invoke-static { v1 }, Lcn/manstep/phonemirrorBox/s0/a;->b(Landroid/content/Context;)Ljava/lang/String;
    move-result-object v1
    const-string v2, "csn"
    invoke-interface { v0, v2, v1 }, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    return-void
.end method

.method synthetic constructor <init>(Lcn/manstep/phonemirrorBox/util/b0$a;)V
  .registers 2
  .line 1
    invoke-direct { p0 }, Lcn/manstep/phonemirrorBox/util/b0;-><init>()V
    return-void
.end method

.method static synthetic a(Lcn/manstep/phonemirrorBox/util/b0;Ljava/lang/String;)Ljava/lang/String;
  .registers 2
  .line 1
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/util/b0;->c:Ljava/lang/String;
    return-object p1
.end method

.method static synthetic b(Lcn/manstep/phonemirrorBox/util/b0;Ljava/lang/String;)Ljava/lang/String;
  .registers 2
  .line 1
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/util/b0;->e:Ljava/lang/String;
    return-object p1
.end method

.method static synthetic c(Lcn/manstep/phonemirrorBox/util/b0;Ljava/lang/String;)Ljava/lang/String;
  .registers 2
  .line 1
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/util/b0;->d:Ljava/lang/String;
    return-object p1
.end method

.method static synthetic d(Lcn/manstep/phonemirrorBox/util/b0;Ljava/lang/String;)Ljava/lang/String;
  .registers 2
  .line 1
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/util/b0;->g:Ljava/lang/String;
    return-object p1
.end method

.method static synthetic e(Lcn/manstep/phonemirrorBox/util/b0;Ljava/lang/String;)Ljava/lang/String;
  .registers 2
  .line 1
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/util/b0;->f:Ljava/lang/String;
    return-object p1
.end method

.method static synthetic f(Lcn/manstep/phonemirrorBox/util/b0;Lcn/manstep/phonemirrorBox/util/b0$d;)V
  .registers 2
  .line 1
    invoke-direct { p0, p1 }, Lcn/manstep/phonemirrorBox/util/b0;->i(Lcn/manstep/phonemirrorBox/util/b0$d;)V
    return-void
.end method

.method private i(Lcn/manstep/phonemirrorBox/util/b0$d;)V
  .registers 5
  .line 1
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;
    invoke-direct { v0 }, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V
  .line 2
    new-instance v1, Ljava/lang/StringBuilder;
    invoke-direct { v1 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v2, ""
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-static { }, Lcn/manstep/phonemirrorBox/x;->c()I
    move-result v2
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { v1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v1
    const-string v2, "lang"
    invoke-interface { v0, v2, v1 }, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    const-string v1, "appVer"
    const-string v2, "2025.03.19.1126"
  .line 3
    invoke-interface { v0, v1, v2 }, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
  .line 4
    invoke-static { }, Lcn/manstep/phonemirrorBox/BoxInterface/c;->e()Lcn/manstep/phonemirrorBox/BoxInterface/c;
    move-result-object v1
    invoke-virtual { v1 }, Lcn/manstep/phonemirrorBox/BoxInterface/c;->p()Ljava/lang/String;
    move-result-object v1
    const-string v2, "ver"
    invoke-interface { v0, v2, v1 }, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
  .line 5
    invoke-static { }, Lcn/manstep/phonemirrorBox/BoxInterface/c;->e()Lcn/manstep/phonemirrorBox/BoxInterface/c;
    move-result-object v1
    invoke-virtual { v1 }, Lcn/manstep/phonemirrorBox/BoxInterface/c;->o()Ljava/lang/String;
    move-result-object v1
    const-string v2, "uuid"
    invoke-interface { v0, v2, v1 }, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
  .line 6
    invoke-static { }, Lcn/manstep/phonemirrorBox/BoxInterface/c;->e()Lcn/manstep/phonemirrorBox/BoxInterface/c;
    move-result-object v1
    invoke-virtual { v1 }, Lcn/manstep/phonemirrorBox/BoxInterface/c;->h()Ljava/lang/String;
    move-result-object v1
    const-string v2, "mfd"
    invoke-interface { v0, v2, v1 }, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
  .line 7
    invoke-static { }, Lcn/manstep/phonemirrorBox/BoxInterface/c;->e()Lcn/manstep/phonemirrorBox/BoxInterface/c;
    move-result-object v1
    invoke-virtual { v1 }, Lcn/manstep/phonemirrorBox/BoxInterface/c;->c()Ljava/lang/String;
    move-result-object v1
    const-string v2, "fwn"
    invoke-interface { v0, v2, v1 }, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
  .line 8
    invoke-static { }, Lcn/manstep/phonemirrorBox/BoxInterface/c;->e()Lcn/manstep/phonemirrorBox/BoxInterface/c;
    move-result-object v1
    invoke-virtual { v1 }, Lcn/manstep/phonemirrorBox/BoxInterface/c;->i()Ljava/lang/String;
    move-result-object v1
    const-string v2, "model"
    invoke-interface { v0, v2, v1 }, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
  .line 9
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/util/b0;->a:Ljava/util/Map;
    invoke-interface { v0, v1 }, Ljava/util/Map;->putAll(Ljava/util/Map;)V
  .line 10
    new-instance v1, Lcn/manstep/phonemirrorBox/util/p;
    invoke-direct { v1 }, Lcn/manstep/phonemirrorBox/util/p;-><init>()V
  .line 11
    new-instance v2, Lcn/manstep/phonemirrorBox/util/b0$b;
    invoke-direct { v2, p0, p1 }, Lcn/manstep/phonemirrorBox/util/b0$b;-><init>(Lcn/manstep/phonemirrorBox/util/b0;Lcn/manstep/phonemirrorBox/util/b0$d;)V
    const-string p1, "/a/upgrade/checkBox"
    invoke-virtual { v1, p1, v0, v2 }, Lcn/manstep/phonemirrorBox/util/p;->j(Ljava/lang/String;Ljava/util/Map;Lcn/manstep/phonemirrorBox/util/p$e;)V
    return-void
.end method

.method public static m()Lcn/manstep/phonemirrorBox/util/b0;
  .registers 2
  .line 1
    invoke-static { }, Lcn/manstep/phonemirrorBox/util/b0$e;->a()Lcn/manstep/phonemirrorBox/util/b0;
    move-result-object v0
    return-object v0
.end method

.method public g(Lcn/manstep/phonemirrorBox/util/b0$d;)V
  .registers 6
  .line 1
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;
    invoke-direct { v0 }, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V
  .line 2
    new-instance v1, Ljava/lang/StringBuilder;
    invoke-direct { v1 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v2, ""
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-static { }, Lcn/manstep/phonemirrorBox/x;->c()I
    move-result v3
    invoke-virtual { v1, v3 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { v1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v1
    const-string v3, "lang"
    invoke-interface { v0, v3, v1 }, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    const-string v1, "ver"
    const-string v3, "2025.03.19.1126"
  .line 3
    invoke-interface { v0, v1, v3 }, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
  .line 4
    invoke-static { }, Lcn/manstep/phonemirrorBox/u;->z()Lcn/manstep/phonemirrorBox/u;
    move-result-object v1
    invoke-virtual { v1 }, Lcn/manstep/phonemirrorBox/u;->I()Ljava/lang/String;
    move-result-object v1
    const-string v3, "uuid"
    invoke-interface { v0, v3, v1 }, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
  .line 5
    new-instance v1, Ljava/lang/StringBuilder;
    invoke-direct { v1 }, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    sget v2, Lcn/manstep/phonemirrorBox/p;->k:I
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    const-string v2, "x"
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    sget v2, Lcn/manstep/phonemirrorBox/p;->l:I
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { v1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v1
    const-string v2, "r"
    invoke-interface { v0, v2, v1 }, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
  .line 6
    invoke-static { }, Lcn/manstep/phonemirrorBox/MyApplication;->b()Lcn/manstep/phonemirrorBox/MyApplication;
    move-result-object v1
    invoke-virtual { v1 }, Landroid/app/Application;->getPackageName()Ljava/lang/String;
    move-result-object v1
    const-string v2, "pkg"
    invoke-interface { v0, v2, v1 }, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
  .line 7
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/util/b0;->a:Ljava/util/Map;
    invoke-interface { v0, v1 }, Ljava/util/Map;->putAll(Ljava/util/Map;)V
  .line 8
    new-instance v1, Lcn/manstep/phonemirrorBox/util/p;
    invoke-direct { v1 }, Lcn/manstep/phonemirrorBox/util/p;-><init>()V
  .line 9
    new-instance v2, Lcn/manstep/phonemirrorBox/util/b0$a;
    invoke-direct { v2, p0, p1 }, Lcn/manstep/phonemirrorBox/util/b0$a;-><init>(Lcn/manstep/phonemirrorBox/util/b0;Lcn/manstep/phonemirrorBox/util/b0$d;)V
    const-string p1, "/a/upgrade/checkApp"
    invoke-virtual { v1, p1, v0, v2 }, Lcn/manstep/phonemirrorBox/util/p;->j(Ljava/lang/String;Ljava/util/Map;Lcn/manstep/phonemirrorBox/util/p$e;)V
    return-void
.end method

.method public h(Lcn/manstep/phonemirrorBox/util/b0$d;)V
  .registers 4
  .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/util/b0;->b:Lcn/manstep/phonemirrorBox/util/a0;
    new-instance v1, Lcn/manstep/phonemirrorBox/util/b0$c;
    invoke-direct { v1, p0, p1 }, Lcn/manstep/phonemirrorBox/util/b0$c;-><init>(Lcn/manstep/phonemirrorBox/util/b0;Lcn/manstep/phonemirrorBox/util/b0$d;)V
    const/4 p1, 0
    invoke-virtual { v0, p1, v1 }, Lcn/manstep/phonemirrorBox/util/a0;->c(ILjava/lang/Runnable;)V
    return-void
.end method

.method public j(ZLcn/manstep/phonemirrorBox/util/p$f;)V
  .registers 8
  .line 1
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;
    const/4 v1, 2
    invoke-direct { v0, v1 }, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V
  .line 2
    new-instance v1, Lcn/manstep/phonemirrorBox/util/p;
    const/16 v2, 20
    invoke-direct { v1, v2 }, Lcn/manstep/phonemirrorBox/util/p;-><init>(I)V
    const-string v2, "/a/upgrade/down"
    const-string v3, "id"
    const-string v4, "ver"
    if-eqz p1, :L1
  .line 3
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/util/b0;->d:Ljava/lang/String;
    invoke-interface { v0, v4, p1 }, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
  .line 4
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/util/b0;->e:Ljava/lang/String;
    invoke-interface { v0, v3, p1 }, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
  .line 5
    new-instance p1, Ljava/lang/StringBuilder;
    invoke-direct { p1 }, Ljava/lang/StringBuilder;-><init>()V
    invoke-static { }, Lcn/manstep/phonemirrorBox/MyApplication;->b()Lcn/manstep/phonemirrorBox/MyApplication;
    move-result-object v3
    invoke-static { v3 }, Lcn/manstep/phonemirrorBox/util/n;->r(Landroid/content/Context;)Ljava/lang/String;
    move-result-object v3
    invoke-virtual { p1, v3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string v3, "/app.apk"
    invoke-virtual { p1, v3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { p1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p1
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/util/b0;->h:Ljava/lang/String;
  .line 6
    new-instance p1, Ljava/io/File;
    iget-object v3, p0, Lcn/manstep/phonemirrorBox/util/b0;->h:Ljava/lang/String;
    invoke-direct { p1, v3 }, Ljava/io/File;-><init>(Ljava/lang/String;)V
  .line 7
    invoke-virtual { p1 }, Ljava/io/File;->exists()Z
    move-result v3
    if-eqz v3, :L0
    invoke-virtual { p1 }, Ljava/io/File;->isFile()Z
    move-result v3
    if-eqz v3, :L0
  .line 8
    invoke-static { p1 }, Lcn/manstep/phonemirrorBox/util/c0;->j(Ljava/io/File;)Ljava/lang/String;
    move-result-object p1
    iget-object v3, p0, Lcn/manstep/phonemirrorBox/util/b0;->e:Ljava/lang/String;
    invoke-virtual { p1, v3 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result p1
    if-eqz p1, :L0
    if-eqz p2, :L0
  .line 9
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/util/b0;->e:Ljava/lang/String;
    invoke-interface { p2, p1 }, Lcn/manstep/phonemirrorBox/util/p$e;->c(Ljava/lang/String;)V
    return-void
  :L0
  .line 10
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/util/b0;->h:Ljava/lang/String;
    invoke-virtual { v1, v2, v0, p1, p2 }, Lcn/manstep/phonemirrorBox/util/p;->d(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Lcn/manstep/phonemirrorBox/util/p$f;)V
    goto :L3
  :L1
  .line 11
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/util/b0;->f:Ljava/lang/String;
    invoke-interface { v0, v4, p1 }, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
  .line 12
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/util/b0;->g:Ljava/lang/String;
    invoke-interface { v0, v3, p1 }, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
  .line 13
    new-instance p1, Ljava/lang/StringBuilder;
    invoke-direct { p1 }, Ljava/lang/StringBuilder;-><init>()V
    invoke-static { }, Lcn/manstep/phonemirrorBox/MyApplication;->b()Lcn/manstep/phonemirrorBox/MyApplication;
    move-result-object v3
    invoke-static { v3 }, Lcn/manstep/phonemirrorBox/util/n;->r(Landroid/content/Context;)Ljava/lang/String;
    move-result-object v3
    invoke-virtual { p1, v3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string v3, "/Auto_Box_Update.img"
    invoke-virtual { p1, v3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { p1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p1
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/util/b0;->i:Ljava/lang/String;
  .line 14
    new-instance p1, Ljava/io/File;
    iget-object v3, p0, Lcn/manstep/phonemirrorBox/util/b0;->i:Ljava/lang/String;
    invoke-direct { p1, v3 }, Ljava/io/File;-><init>(Ljava/lang/String;)V
  .line 15
    invoke-virtual { p1 }, Ljava/io/File;->exists()Z
    move-result v3
    if-eqz v3, :L2
    invoke-virtual { p1 }, Ljava/io/File;->isFile()Z
    move-result v3
    if-eqz v3, :L2
  .line 16
    invoke-static { p1 }, Lcn/manstep/phonemirrorBox/util/c0;->j(Ljava/io/File;)Ljava/lang/String;
    move-result-object p1
    iget-object v3, p0, Lcn/manstep/phonemirrorBox/util/b0;->g:Ljava/lang/String;
    invoke-virtual { p1, v3 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result p1
    if-eqz p1, :L2
    if-eqz p2, :L2
  .line 17
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/util/b0;->g:Ljava/lang/String;
    invoke-interface { p2, p1 }, Lcn/manstep/phonemirrorBox/util/p$e;->c(Ljava/lang/String;)V
    return-void
  :L2
  .line 18
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/util/b0;->i:Ljava/lang/String;
    invoke-virtual { v1, v2, v0, p1, p2 }, Lcn/manstep/phonemirrorBox/util/p;->d(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Lcn/manstep/phonemirrorBox/util/p$f;)V
  :L3
    return-void
.end method

.method public k()Ljava/lang/String;
  .registers 2
  .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/util/b0;->h:Ljava/lang/String;
    return-object v0
.end method

.method public l()Ljava/lang/String;
  .registers 2
  .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/util/b0;->i:Ljava/lang/String;
    return-object v0
.end method
