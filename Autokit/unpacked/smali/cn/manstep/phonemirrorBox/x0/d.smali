.class public Lcn/manstep/phonemirrorBox/x0/d;
.super Landroidx/lifecycle/a;
.source "SourceFile"

.annotation system Ldalvik/annotation/MemberClasses;
  value = {
    Lcn/manstep/phonemirrorBox/x0/d$d;
  }
.end annotation

.field private final d:Ljava/util/List;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "Ljava/util/List<",
      "Lcn/manstep/phonemirrorBox/x0/d$d;",
      ">;"
    }
  .end annotation
.end field

.field private final e:Landroidx/lifecycle/o;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "Landroidx/lifecycle/o<",
      "Ljava/lang/Integer;",
      ">;"
    }
  .end annotation
.end field

.field private final f:Landroid/content/Intent;

.field private g:Lcn/manstep/phonemirrorBox/service/BackgroundService$c;

.field private h:Lcn/manstep/phonemirrorBox/r0/b;

.field private i:Lcn/manstep/phonemirrorBox/r0/c;

.field private j:Lcn/manstep/phonemirrorBox/r0/a;

.field private k:Lcn/manstep/phonemirrorBox/r0/e;

.field private final l:Landroid/content/ServiceConnection;

.method public constructor <init>(Landroid/app/Application;)V
  .registers 5
  .line 1
    invoke-direct { p0, p1 }, Landroidx/lifecycle/a;-><init>(Landroid/app/Application;)V
  .line 2
    new-instance v0, Lcn/manstep/phonemirrorBox/x0/d$a;
    invoke-direct { v0, p0 }, Lcn/manstep/phonemirrorBox/x0/d$a;-><init>(Lcn/manstep/phonemirrorBox/x0/d;)V
    iput-object v0, p0, Lcn/manstep/phonemirrorBox/x0/d;->l:Landroid/content/ServiceConnection;
  .line 3
    new-instance v0, Ljava/util/LinkedList;
    invoke-direct { v0 }, Ljava/util/LinkedList;-><init>()V
    iput-object v0, p0, Lcn/manstep/phonemirrorBox/x0/d;->d:Ljava/util/List;
  .line 4
    new-instance v0, Landroidx/lifecycle/o;
    const/4 v1, 0
    invoke-static { v1 }, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v1
    invoke-direct { v0, v1 }, Landroidx/lifecycle/o;-><init>(Ljava/lang/Object;)V
    iput-object v0, p0, Lcn/manstep/phonemirrorBox/x0/d;->e:Landroidx/lifecycle/o;
  .line 5
    new-instance v0, Landroid/content/Intent;
    invoke-virtual { p1 }, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;
    move-result-object v1
    invoke-static/range { v1 .. v1 }, Lcom/stub/StubApp;->getOrigApplicationContext(Landroid/content/Context;)Landroid/content/Context;
    move-result-object v1
    const-class v2, Lcn/manstep/phonemirrorBox/service/BackgroundService;
    invoke-direct { v0, v1, v2 }, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
    iput-object v0, p0, Lcn/manstep/phonemirrorBox/x0/d;->f:Landroid/content/Intent;
  .line 6
    invoke-virtual { p1 }, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;
    move-result-object p1
    invoke-static/range { p1 .. p1 }, Lcom/stub/StubApp;->getOrigApplicationContext(Landroid/content/Context;)Landroid/content/Context;
    move-result-object p1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/x0/d;->f:Landroid/content/Intent;
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/x0/d;->l:Landroid/content/ServiceConnection;
    const/4 v2, 1
    invoke-virtual { p1, v0, v1, v2 }, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    move-result p1
  .line 7
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "BoxViewModel: bindService="
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0, p1 }, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p1
    const-string v0, "BoxViewModel"
    invoke-static { v0, p1 }, Lcn/manstep/phonemirrorBox/util/s;->d(Ljava/lang/String;Ljava/lang/String;)V
  .line 8
    invoke-static { }, Lcn/manstep/phonemirrorBox/BoxInterface/d;->i()Z
    move-result p1
    if-eqz p1, :L0
  .line 9
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/x0/d;->e:Landroidx/lifecycle/o;
    const/4 v0, 2
    invoke-static { v0 }, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v0
    invoke-virtual { p1, v0 }, Landroidx/lifecycle/o;->k(Ljava/lang/Object;)V
  :L0
  .line 10
    invoke-static { }, Lcn/manstep/phonemirrorBox/BoxInterface/d;->G()Z
    move-result p1
    if-eqz p1, :L1
  .line 11
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/x0/d;->e:Landroidx/lifecycle/o;
    const/4 v0, 4
    invoke-static { v0 }, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v0
    invoke-virtual { p1, v0 }, Landroidx/lifecycle/o;->k(Ljava/lang/Object;)V
  :L1
  .line 12
    invoke-static { }, Lcn/manstep/phonemirrorBox/v0/a;->t()Lcn/manstep/phonemirrorBox/v0/a;
    move-result-object p1
    new-instance v0, Lcn/manstep/phonemirrorBox/x0/d$b;
    invoke-direct { v0, p0 }, Lcn/manstep/phonemirrorBox/x0/d$b;-><init>(Lcn/manstep/phonemirrorBox/x0/d;)V
    invoke-virtual { p1, v0 }, Lcn/manstep/phonemirrorBox/v0/a;->r(Lcn/manstep/phonemirrorBox/v0/b;)V
  .line 13
    new-instance p1, Landroid/os/Handler;
    invoke-direct { p1 }, Landroid/os/Handler;-><init>()V
    new-instance v0, Lcn/manstep/phonemirrorBox/x0/d$c;
    invoke-direct { v0, p0 }, Lcn/manstep/phonemirrorBox/x0/d$c;-><init>(Lcn/manstep/phonemirrorBox/x0/d;)V
    const-wide/16 v1, 1000
    invoke-virtual { p1, v0, v1, v2 }, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    return-void
.end method

.method static synthetic j(Lcn/manstep/phonemirrorBox/x0/d;)Lcn/manstep/phonemirrorBox/service/BackgroundService$c;
  .registers 1
  .line 1
    iget-object p0, p0, Lcn/manstep/phonemirrorBox/x0/d;->g:Lcn/manstep/phonemirrorBox/service/BackgroundService$c;
    return-object p0
.end method

.method static synthetic k(Lcn/manstep/phonemirrorBox/x0/d;Lcn/manstep/phonemirrorBox/service/BackgroundService$c;)Lcn/manstep/phonemirrorBox/service/BackgroundService$c;
  .registers 2
  .line 1
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/x0/d;->g:Lcn/manstep/phonemirrorBox/service/BackgroundService$c;
    return-object p1
.end method

.method static synthetic l(Lcn/manstep/phonemirrorBox/x0/d;)Landroidx/lifecycle/o;
  .registers 1
  .line 1
    iget-object p0, p0, Lcn/manstep/phonemirrorBox/x0/d;->e:Landroidx/lifecycle/o;
    return-object p0
.end method

.method static synthetic m(Lcn/manstep/phonemirrorBox/x0/d;)Lcn/manstep/phonemirrorBox/r0/b;
  .registers 1
  .line 1
    iget-object p0, p0, Lcn/manstep/phonemirrorBox/x0/d;->h:Lcn/manstep/phonemirrorBox/r0/b;
    return-object p0
.end method

.method static synthetic n(Lcn/manstep/phonemirrorBox/x0/d;Lcn/manstep/phonemirrorBox/r0/b;)Lcn/manstep/phonemirrorBox/r0/b;
  .registers 2
  .line 1
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/x0/d;->h:Lcn/manstep/phonemirrorBox/r0/b;
    return-object p1
.end method

.method static synthetic o(Lcn/manstep/phonemirrorBox/x0/d;)Lcn/manstep/phonemirrorBox/r0/c;
  .registers 1
  .line 1
    iget-object p0, p0, Lcn/manstep/phonemirrorBox/x0/d;->i:Lcn/manstep/phonemirrorBox/r0/c;
    return-object p0
.end method

.method static synthetic p(Lcn/manstep/phonemirrorBox/x0/d;Lcn/manstep/phonemirrorBox/r0/c;)Lcn/manstep/phonemirrorBox/r0/c;
  .registers 2
  .line 1
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/x0/d;->i:Lcn/manstep/phonemirrorBox/r0/c;
    return-object p1
.end method

.method static synthetic q(Lcn/manstep/phonemirrorBox/x0/d;)Lcn/manstep/phonemirrorBox/r0/a;
  .registers 1
  .line 1
    iget-object p0, p0, Lcn/manstep/phonemirrorBox/x0/d;->j:Lcn/manstep/phonemirrorBox/r0/a;
    return-object p0
.end method

.method static synthetic r(Lcn/manstep/phonemirrorBox/x0/d;Lcn/manstep/phonemirrorBox/r0/a;)Lcn/manstep/phonemirrorBox/r0/a;
  .registers 2
  .line 1
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/x0/d;->j:Lcn/manstep/phonemirrorBox/r0/a;
    return-object p1
.end method

.method static synthetic s(Lcn/manstep/phonemirrorBox/x0/d;)Lcn/manstep/phonemirrorBox/r0/e;
  .registers 1
  .line 1
    iget-object p0, p0, Lcn/manstep/phonemirrorBox/x0/d;->k:Lcn/manstep/phonemirrorBox/r0/e;
    return-object p0
.end method

.method static synthetic t(Lcn/manstep/phonemirrorBox/x0/d;Lcn/manstep/phonemirrorBox/r0/e;)Lcn/manstep/phonemirrorBox/r0/e;
  .registers 2
  .line 1
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/x0/d;->k:Lcn/manstep/phonemirrorBox/r0/e;
    return-object p1
.end method

.method private w(Lorg/json/JSONObject;Ljava/lang/String;I)I
  .registers 5
    if-eqz p1, :L0
  .line 1
    invoke-virtual { p1, p2 }, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z
    move-result v0
    if-eqz v0, :L0
  .line 2
    invoke-virtual { p1, p2 }, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
    move-result p1
    return p1
  :L0
    return p3
.end method

.method private x(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
  .registers 5
    if-eqz p1, :L0
  .line 1
    invoke-virtual { p1, p2 }, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z
    move-result v0
    if-eqz v0, :L0
  .line 2
    invoke-virtual { p1, p2 }, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    move-result-object p1
    return-object p1
  :L0
    return-object p3
.end method

.method public A([B)V
  .catch Landroid/os/RemoteException; { :L0 .. :L1 } :L1
  .catch Landroid/os/RemoteException; { :L1 .. :L2 } :L2
  .registers 8
  .line 1
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    invoke-static { }, Landroid/os/SystemClock;->elapsedRealtime()J
    move-result-wide v1
    invoke-virtual { v0, v1, v2 }, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
    const-string v1, ".png"
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
  .line 2
    new-instance v1, Ljava/io/File;
    invoke-virtual { p0 }, Landroidx/lifecycle/a;->i()Landroid/app/Application;
    move-result-object v2
    invoke-static { v2 }, Lcn/manstep/phonemirrorBox/util/n;->q(Landroid/content/Context;)Ljava/io/File;
    move-result-object v2
    invoke-direct { v1, v2, v0 }, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
  .line 3
    invoke-virtual { v1 }, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
    move-result-object v0
    invoke-static { p1, v0 }, Lcn/manstep/phonemirrorBox/util/n;->y([BLjava/lang/String;)Z
  .line 4
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v2, "setDashboardDataAlbumCover: "
    invoke-virtual { v0, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v1 }, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
    move-result-object v3
    invoke-virtual { v0, v3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    const-string v3, "BoxViewModel"
    invoke-static { v3, v0 }, Lcn/manstep/phonemirrorBox/util/s;->d(Ljava/lang/String;Ljava/lang/String;)V
  .line 5
    invoke-virtual { p0 }, Landroidx/lifecycle/a;->i()Landroid/app/Application;
    move-result-object v0
    new-instance v4, Ljava/lang/StringBuilder;
    invoke-direct { v4 }, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual { p0 }, Landroidx/lifecycle/a;->i()Landroid/app/Application;
    move-result-object v5
    invoke-virtual { v5 }, Landroid/app/Application;->getPackageName()Ljava/lang/String;
    move-result-object v5
    invoke-virtual { v4, v5 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string v5, ".myfileprovider"
    invoke-virtual { v4, v5 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v4 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v4
    invoke-static { v0, v4, v1 }, Landroidx/core/content/FileProvider;->e(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;
    move-result-object v0
  .line 6
    new-instance v1, Ljava/lang/StringBuilder;
    invoke-direct { v1 }, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v1, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    invoke-virtual { v1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v1
    invoke-static { v3, v1 }, Lcn/manstep/phonemirrorBox/util/s;->d(Ljava/lang/String;Ljava/lang/String;)V
  .line 7
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/x0/d;->i:Lcn/manstep/phonemirrorBox/r0/c;
    if-eqz v1, :L2
  :L0
  .line 8
    invoke-interface { v1, p1 }, Lcn/manstep/phonemirrorBox/r0/c;->F0([B)V
  :L1
  .line 9
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/x0/d;->i:Lcn/manstep/phonemirrorBox/r0/c;
    invoke-interface { v1, v0 }, Lcn/manstep/phonemirrorBox/r0/c;->y0(Landroid/net/Uri;)V
  :L2
  .line 10
    invoke-static { }, Lcn/manstep/phonemirrorBox/u0/c;->h()Lcn/manstep/phonemirrorBox/u0/c;
    move-result-object v0
    invoke-virtual { v0, p1 }, Lcn/manstep/phonemirrorBox/u0/c;->F([B)V
    return-void
.end method

.method public B(Ljava/lang/String;)V
  .catch Ljava/lang/Exception; { :L0 .. :L1 } :L9
  .catch Ljava/lang/Exception; { :L2 .. :L9 } :L9
  .registers 8
    const-string v0, "CallStatus"
    const-string v1, "CallDirection"
    const-string v2, "CallNumber"
    const-string v3, "CallName"
  .line 1
    new-instance v4, Ljava/lang/StringBuilder;
    invoke-direct { v4 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v5, "setDashboardDataCall: "
    invoke-virtual { v4, v5 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v4, p1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v4 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v4
    const-string v5, "BoxViewModel"
    invoke-static { v5, v4 }, Lcn/manstep/phonemirrorBox/util/s;->d(Ljava/lang/String;Ljava/lang/String;)V
  :L0
  .line 2
    new-instance v4, Lorg/json/JSONObject;
    invoke-direct { v4, p1 }, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
  .line 3
    invoke-virtual { v4, v3 }, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z
    move-result p1
  :L1
    const-string v5, ""
    if-eqz p1, :L3
  :L2
  .line 4
    invoke-virtual { v4, v3 }, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    move-result-object p1
  .line 5
    iget-object v3, p0, Lcn/manstep/phonemirrorBox/x0/d;->j:Lcn/manstep/phonemirrorBox/r0/a;
    if-eqz v3, :L4
  .line 6
    iget-object v3, p0, Lcn/manstep/phonemirrorBox/x0/d;->j:Lcn/manstep/phonemirrorBox/r0/a;
    invoke-interface { v3, p1 }, Lcn/manstep/phonemirrorBox/r0/a;->n(Ljava/lang/String;)V
    goto :L4
  :L3
    move-object p1, v5
  :L4
  .line 7
    invoke-virtual { v4, v2 }, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z
    move-result v3
    if-eqz v3, :L5
  .line 8
    invoke-virtual { v4, v2 }, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v2
    const-string v3, " "
    invoke-virtual { v2, v3, v5 }, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    move-result-object v5
  .line 9
    iget-object v2, p0, Lcn/manstep/phonemirrorBox/x0/d;->j:Lcn/manstep/phonemirrorBox/r0/a;
    if-eqz v2, :L5
  .line 10
    iget-object v2, p0, Lcn/manstep/phonemirrorBox/x0/d;->j:Lcn/manstep/phonemirrorBox/r0/a;
    invoke-interface { v2, v5 }, Lcn/manstep/phonemirrorBox/r0/a;->J0(Ljava/lang/String;)V
  :L5
  .line 11
    invoke-virtual { v4, v1 }, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z
    move-result v2
    const/4 v3, 0
    if-eqz v2, :L6
  .line 12
    invoke-virtual { v4, v1 }, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
    move-result v1
  .line 13
    iget-object v2, p0, Lcn/manstep/phonemirrorBox/x0/d;->j:Lcn/manstep/phonemirrorBox/r0/a;
    if-eqz v2, :L7
  .line 14
    iget-object v2, p0, Lcn/manstep/phonemirrorBox/x0/d;->j:Lcn/manstep/phonemirrorBox/r0/a;
    invoke-interface { v2, v1 }, Lcn/manstep/phonemirrorBox/r0/a;->v(I)V
    goto :L7
  :L6
    const/4 v1, 0
  :L7
  .line 15
    invoke-virtual { v4, v0 }, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z
    move-result v2
    if-eqz v2, :L8
  .line 16
    invoke-virtual { v4, v0 }, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
    move-result v3
  .line 17
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/x0/d;->j:Lcn/manstep/phonemirrorBox/r0/a;
    if-eqz v0, :L8
  .line 18
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/x0/d;->j:Lcn/manstep/phonemirrorBox/r0/a;
    invoke-interface { v0, v3 }, Lcn/manstep/phonemirrorBox/r0/a;->D(I)V
  :L8
  .line 19
    invoke-static { }, Lcn/manstep/phonemirrorBox/u0/c;->h()Lcn/manstep/phonemirrorBox/u0/c;
    move-result-object v0
    invoke-virtual { v0, p1, v5, v1, v3 }, Lcn/manstep/phonemirrorBox/u0/c;->B(Ljava/lang/String;Ljava/lang/String;II)V
  :L9
    return-void
.end method

.method public C(Ljava/lang/String;)V
  .catch Ljava/lang/Exception; { :L0 .. :L10 } :L10
  .registers 14
  .line 1
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "setDashboardDataMedia: "
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0, p1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    const-string v1, "BoxViewModel"
    invoke-static { v1, v0 }, Lcn/manstep/phonemirrorBox/util/s;->d(Ljava/lang/String;Ljava/lang/String;)V
  :L0
  .line 2
    new-instance v0, Lorg/json/JSONObject;
    invoke-direct { v0, p1 }, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    const-string p1, "MediaSongName"
    const/4 v1, 0
  .line 3
    invoke-direct { p0, v0, p1, v1 }, Lcn/manstep/phonemirrorBox/x0/d;->x(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    move-result-object v3
    const-string p1, "MediaAlbumName"
  .line 4
    invoke-direct { p0, v0, p1, v1 }, Lcn/manstep/phonemirrorBox/x0/d;->x(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    move-result-object v5
    const-string p1, "MediaArtistName"
  .line 5
    invoke-direct { p0, v0, p1, v1 }, Lcn/manstep/phonemirrorBox/x0/d;->x(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    move-result-object v4
    const-string p1, "MediaLyrics"
  .line 6
    invoke-direct { p0, v0, p1, v1 }, Lcn/manstep/phonemirrorBox/x0/d;->x(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    move-result-object v6
    const-string p1, "MediaAPPName"
  .line 7
    invoke-direct { p0, v0, p1, v1 }, Lcn/manstep/phonemirrorBox/x0/d;->x(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    move-result-object v10
    const-string p1, "MediaAppPkgName"
  .line 8
    invoke-direct { p0, v0, p1, v1 }, Lcn/manstep/phonemirrorBox/x0/d;->x(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    move-result-object v11
    const-string p1, "MediaSongDuration"
    const/4 v1, -1
  .line 9
    invoke-direct { p0, v0, p1, v1 }, Lcn/manstep/phonemirrorBox/x0/d;->w(Lorg/json/JSONObject;Ljava/lang/String;I)I
    move-result v7
    const-string p1, "MediaSongPlayTime"
  .line 10
    invoke-direct { p0, v0, p1, v1 }, Lcn/manstep/phonemirrorBox/x0/d;->w(Lorg/json/JSONObject;Ljava/lang/String;I)I
    move-result v8
    const-string p1, "MediaPlayStatus"
  .line 11
    invoke-direct { p0, v0, p1, v1 }, Lcn/manstep/phonemirrorBox/x0/d;->w(Lorg/json/JSONObject;Ljava/lang/String;I)I
    move-result v9
    if-eqz v3, :L1
  .line 12
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/x0/d;->i:Lcn/manstep/phonemirrorBox/r0/c;
    if-eqz p1, :L1
  .line 13
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/x0/d;->i:Lcn/manstep/phonemirrorBox/r0/c;
    invoke-interface { p1, v3 }, Lcn/manstep/phonemirrorBox/r0/c;->n(Ljava/lang/String;)V
  :L1
    if-eqz v5, :L2
  .line 14
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/x0/d;->i:Lcn/manstep/phonemirrorBox/r0/c;
    if-eqz p1, :L2
  .line 15
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/x0/d;->i:Lcn/manstep/phonemirrorBox/r0/c;
    invoke-interface { p1, v5 }, Lcn/manstep/phonemirrorBox/r0/c;->D0(Ljava/lang/String;)V
  :L2
    if-eqz v4, :L3
  .line 16
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/x0/d;->i:Lcn/manstep/phonemirrorBox/r0/c;
    if-eqz p1, :L3
  .line 17
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/x0/d;->i:Lcn/manstep/phonemirrorBox/r0/c;
    invoke-interface { p1, v4 }, Lcn/manstep/phonemirrorBox/r0/c;->N0(Ljava/lang/String;)V
  :L3
    if-eqz v6, :L4
  .line 18
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/x0/d;->i:Lcn/manstep/phonemirrorBox/r0/c;
    if-eqz p1, :L4
  .line 19
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/x0/d;->i:Lcn/manstep/phonemirrorBox/r0/c;
    invoke-interface { p1, v6 }, Lcn/manstep/phonemirrorBox/r0/c;->A(Ljava/lang/String;)V
  :L4
    if-eqz v10, :L5
  .line 20
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/x0/d;->i:Lcn/manstep/phonemirrorBox/r0/c;
    if-eqz p1, :L5
  .line 21
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/x0/d;->i:Lcn/manstep/phonemirrorBox/r0/c;
    invoke-interface { p1, v10 }, Lcn/manstep/phonemirrorBox/r0/c;->h0(Ljava/lang/String;)V
  :L5
    if-eqz v11, :L6
  .line 22
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/x0/d;->i:Lcn/manstep/phonemirrorBox/r0/c;
    if-eqz p1, :L6
  .line 23
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/x0/d;->i:Lcn/manstep/phonemirrorBox/r0/c;
    invoke-interface { p1, v11 }, Lcn/manstep/phonemirrorBox/r0/c;->z0(Ljava/lang/String;)V
  :L6
    if-eq v7, v1, :L7
  .line 24
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/x0/d;->i:Lcn/manstep/phonemirrorBox/r0/c;
    if-eqz p1, :L7
  .line 25
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/x0/d;->i:Lcn/manstep/phonemirrorBox/r0/c;
    invoke-interface { p1, v7 }, Lcn/manstep/phonemirrorBox/r0/c;->b0(I)V
  :L7
    if-eq v8, v1, :L8
  .line 26
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/x0/d;->i:Lcn/manstep/phonemirrorBox/r0/c;
    if-eqz p1, :L8
  .line 27
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/x0/d;->i:Lcn/manstep/phonemirrorBox/r0/c;
    invoke-interface { p1, v8 }, Lcn/manstep/phonemirrorBox/r0/c;->z(I)V
  :L8
    if-eq v9, v1, :L9
  .line 28
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/x0/d;->i:Lcn/manstep/phonemirrorBox/r0/c;
    if-eqz p1, :L9
  .line 29
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/x0/d;->i:Lcn/manstep/phonemirrorBox/r0/c;
    invoke-interface { p1, v9 }, Lcn/manstep/phonemirrorBox/r0/c;->y(I)V
  :L9
  .line 30
    invoke-static { }, Lcn/manstep/phonemirrorBox/u0/c;->h()Lcn/manstep/phonemirrorBox/u0/c;
    move-result-object v2
    invoke-virtual/range { v2 .. v11 }, Lcn/manstep/phonemirrorBox/u0/c;->G(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V
  :L10
    return-void
.end method

.method public D(Ljava/lang/String;)V
  .catch Ljava/lang/Exception; { :L0 .. :L5 } :L5
  .registers 14
  .line 1
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "setDashboardDataNav: "
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0, p1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    const-string v1, "BoxViewModel"
    invoke-static { v1, v0 }, Lcn/manstep/phonemirrorBox/util/s;->i(Ljava/lang/String;Ljava/lang/String;)V
  .line 2
    invoke-virtual { p1 }, Ljava/lang/String;->length()I
    move-result v0
    const/4 v1, 4
    if-ge v0, v1, :L0
    return-void
  :L0
  .line 3
    new-instance v0, Lorg/json/JSONObject;
    invoke-direct { v0, p1 }, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    const-string p1, "NaviManeuverType"
    const/4 v1, -1
  .line 4
    invoke-direct { p0, v0, p1, v1 }, Lcn/manstep/phonemirrorBox/x0/d;->w(Lorg/json/JSONObject;Ljava/lang/String;I)I
    move-result v9
    const-string p1, "NaviTurnSide"
  .line 5
    invoke-direct { p0, v0, p1, v1 }, Lcn/manstep/phonemirrorBox/x0/d;->w(Lorg/json/JSONObject;Ljava/lang/String;I)I
    move-result v8
    const-string p1, "NaviTurnAngle"
  .line 6
    invoke-direct { p0, v0, p1, v1 }, Lcn/manstep/phonemirrorBox/x0/d;->w(Lorg/json/JSONObject;Ljava/lang/String;I)I
    move-result v7
    const-string p1, "NaviStatus"
  .line 7
    invoke-direct { p0, v0, p1, v1 }, Lcn/manstep/phonemirrorBox/x0/d;->w(Lorg/json/JSONObject;Ljava/lang/String;I)I
    move-result p1
    const-string v2, "NaviRoadName"
    const/4 v3, 0
  .line 8
    invoke-direct { p0, v0, v2, v3 }, Lcn/manstep/phonemirrorBox/x0/d;->x(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    move-result-object v4
    const-string v2, "NaviRemainDistance"
  .line 9
    invoke-direct { p0, v0, v2, v1 }, Lcn/manstep/phonemirrorBox/x0/d;->w(Lorg/json/JSONObject;Ljava/lang/String;I)I
    move-result v5
    const-string v2, "NaviNextTurnTimeSeconds"
  .line 10
    invoke-direct { p0, v0, v2, v1 }, Lcn/manstep/phonemirrorBox/x0/d;->w(Lorg/json/JSONObject;Ljava/lang/String;I)I
    move-result v6
    const-string v2, "NaviOrderType"
  .line 11
    invoke-direct { p0, v0, v2, v1 }, Lcn/manstep/phonemirrorBox/x0/d;->w(Lorg/json/JSONObject;Ljava/lang/String;I)I
    move-result v10
    const-string v2, "NaviTimeToDestination"
  .line 12
    invoke-direct { p0, v0, v2, v1 }, Lcn/manstep/phonemirrorBox/x0/d;->w(Lorg/json/JSONObject;Ljava/lang/String;I)I
    move-result v2
    const-string v11, "NaviDestinationName"
  .line 13
    invoke-direct { p0, v0, v11, v3 }, Lcn/manstep/phonemirrorBox/x0/d;->x(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    move-result-object v3
    const-string v11, "NaviDistanceToDestination"
  .line 14
    invoke-direct { p0, v0, v11, v1 }, Lcn/manstep/phonemirrorBox/x0/d;->w(Lorg/json/JSONObject;Ljava/lang/String;I)I
    move-result v0
    if-eq p1, v1, :L1
  .line 15
    invoke-static { }, Lcn/manstep/phonemirrorBox/u0/c;->h()Lcn/manstep/phonemirrorBox/u0/c;
    move-result-object v11
    invoke-virtual { v11, p1 }, Lcn/manstep/phonemirrorBox/u0/c;->E(I)V
  :L1
    if-nez v3, :L2
    if-ne v0, v1, :L2
    if-eq v2, v1, :L3
  :L2
  .line 16
    invoke-static { }, Lcn/manstep/phonemirrorBox/u0/c;->h()Lcn/manstep/phonemirrorBox/u0/c;
    move-result-object p1
    invoke-virtual { p1, v3, v0, v2 }, Lcn/manstep/phonemirrorBox/u0/c;->C(Ljava/lang/String;II)V
  :L3
    if-nez v4, :L4
    if-ne v5, v1, :L4
    if-ne v6, v1, :L4
    if-ne v10, v1, :L4
    if-ne v7, v1, :L4
    if-ne v8, v1, :L4
    if-eq v9, v1, :L5
  :L4
  .line 17
    invoke-static { }, Lcn/manstep/phonemirrorBox/u0/c;->h()Lcn/manstep/phonemirrorBox/u0/c;
    move-result-object v2
    move-object v3, v4
    move v4, v5
    move v5, v6
    move v6, v10
    invoke-virtual/range { v2 .. v9 }, Lcn/manstep/phonemirrorBox/u0/c;->D(Ljava/lang/String;IIIIII)V
  :L5
    return-void
.end method

.method public E(I)V
  .catch Landroid/os/RemoteException; { :L4 .. :L5 } :L5
  .registers 7
  .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/x0/d;->e:Landroidx/lifecycle/o;
    invoke-virtual { v0 }, Landroidx/lifecycle/LiveData;->e()Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Ljava/lang/Integer;
    invoke-virtual { v0 }, Ljava/lang/Integer;->intValue()I
    move-result v0
    if-ne p1, v0, :L0
    return-void
  :L0
  .line 2
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/x0/d;->g:Lcn/manstep/phonemirrorBox/service/BackgroundService$c;
    const-string v1, "BoxViewModel"
    if-nez v0, :L1
  .line 3
    invoke-virtual { p0 }, Landroidx/lifecycle/a;->i()Landroid/app/Application;
    move-result-object v0
    invoke-virtual { v0 }, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;
    move-result-object v0
    invoke-static/range { v0 .. v0 }, Lcom/stub/StubApp;->getOrigApplicationContext(Landroid/content/Context;)Landroid/content/Context;
    move-result-object v0
    iget-object v2, p0, Lcn/manstep/phonemirrorBox/x0/d;->f:Landroid/content/Intent;
    iget-object v3, p0, Lcn/manstep/phonemirrorBox/x0/d;->l:Landroid/content/ServiceConnection;
    const/4 v4, 1
    invoke-virtual { v0, v2, v3, v4 }, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    move-result v0
  .line 4
    new-instance v2, Ljava/lang/StringBuilder;
    invoke-direct { v2 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v3, "setonConnectStatus: bindService="
    invoke-virtual { v2, v3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v2, v0 }, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;
    invoke-virtual { v2 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    invoke-static { v1, v0 }, Lcn/manstep/phonemirrorBox/util/s;->d(Ljava/lang/String;Ljava/lang/String;)V
  :L1
  .line 5
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/x0/d;->d:Ljava/util/List;
    invoke-interface { v0 }, Ljava/util/List;->iterator()Ljava/util/Iterator;
    move-result-object v0
  :L2
    invoke-interface { v0 }, Ljava/util/Iterator;->hasNext()Z
    move-result v2
    if-eqz v2, :L3
    invoke-interface { v0 }, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object v2
    check-cast v2, Lcn/manstep/phonemirrorBox/x0/d$d;
  .line 6
    invoke-interface { v2, p1 }, Lcn/manstep/phonemirrorBox/x0/d$d;->m(I)V
    goto :L2
  :L3
  .line 7
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v2, "setonConnectStatus: "
    invoke-virtual { v0, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0, p1 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    invoke-static { v1, v0 }, Lcn/manstep/phonemirrorBox/util/s;->d(Ljava/lang/String;Ljava/lang/String;)V
  .line 8
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/x0/d;->e:Landroidx/lifecycle/o;
    invoke-static { p1 }, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v1
    invoke-virtual { v0, v1 }, Landroidx/lifecycle/o;->k(Ljava/lang/Object;)V
  .line 9
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/x0/d;->h:Lcn/manstep/phonemirrorBox/r0/b;
    if-eqz v0, :L5
  :L4
  .line 10
    invoke-interface { v0, p1 }, Lcn/manstep/phonemirrorBox/r0/b;->a0(I)V
  :L5
    return-void
.end method

.method public u(Lcn/manstep/phonemirrorBox/x0/d$d;)V
  .registers 3
  .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/x0/d;->d:Ljava/util/List;
    invoke-interface { v0, p1 }, Ljava/util/List;->add(Ljava/lang/Object;)Z
    return-void
.end method

.method public v()Landroidx/lifecycle/o;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "()",
      "Landroidx/lifecycle/o<",
      "Ljava/lang/Integer;",
      ">;"
    }
  .end annotation
  .registers 2
  .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/x0/d;->e:Landroidx/lifecycle/o;
    return-object v0
.end method

.method public y()V
  .registers 3
  .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/x0/d;->d:Ljava/util/List;
    invoke-interface { v0 }, Ljava/util/List;->iterator()Ljava/util/Iterator;
    move-result-object v0
  :L0
    invoke-interface { v0 }, Ljava/util/Iterator;->hasNext()Z
    move-result v1
    if-eqz v1, :L1
    invoke-interface { v0 }, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object v1
    check-cast v1, Lcn/manstep/phonemirrorBox/x0/d$d;
  .line 2
    invoke-interface { v1 }, Lcn/manstep/phonemirrorBox/x0/d$d;->k()V
    goto :L0
  :L1
    return-void
.end method

.method public z(Lcn/manstep/phonemirrorBox/x0/d$d;)V
  .registers 3
  .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/x0/d;->d:Ljava/util/List;
    invoke-interface { v0, p1 }, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    return-void
.end method
