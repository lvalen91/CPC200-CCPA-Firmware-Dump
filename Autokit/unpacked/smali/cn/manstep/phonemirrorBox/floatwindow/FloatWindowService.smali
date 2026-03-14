.class public Lcn/manstep/phonemirrorBox/floatwindow/FloatWindowService;
.super Landroid/app/Service;
.implements Lcn/manstep/phonemirrorBox/v0/b;
.source "SourceFile"

.annotation system Ldalvik/annotation/MemberClasses;
  value = {
    Lcn/manstep/phonemirrorBox/floatwindow/FloatWindowService$f;,
    Lcn/manstep/phonemirrorBox/floatwindow/FloatWindowService$g;
  }
.end annotation

.field private final b:Lcn/manstep/phonemirrorBox/util/u;

.field private final c:Landroid/os/Handler;

.field private d:Ljava/util/concurrent/ScheduledExecutorService;

.field private e:Lcn/manstep/phonemirrorBox/h0/a;

.method public constructor <init>()V
  .registers 2
  .line 1
    invoke-direct { p0 }, Landroid/app/Service;-><init>()V
  .line 2
    new-instance v0, Lcn/manstep/phonemirrorBox/util/u;
    invoke-direct { v0 }, Lcn/manstep/phonemirrorBox/util/u;-><init>()V
    iput-object v0, p0, Lcn/manstep/phonemirrorBox/floatwindow/FloatWindowService;->b:Lcn/manstep/phonemirrorBox/util/u;
  .line 3
    new-instance v0, Lcn/manstep/phonemirrorBox/floatwindow/FloatWindowService$f;
    invoke-direct { v0, p0 }, Lcn/manstep/phonemirrorBox/floatwindow/FloatWindowService$f;-><init>(Lcn/manstep/phonemirrorBox/floatwindow/FloatWindowService;)V
    iput-object v0, p0, Lcn/manstep/phonemirrorBox/floatwindow/FloatWindowService;->c:Landroid/os/Handler;
    const/4 v0, 0
  .line 4
    iput-object v0, p0, Lcn/manstep/phonemirrorBox/floatwindow/FloatWindowService;->d:Ljava/util/concurrent/ScheduledExecutorService;
    return-void
.end method

.method static synthetic l(Lcn/manstep/phonemirrorBox/floatwindow/FloatWindowService;)Landroid/os/Handler;
  .registers 1
  .line 1
    iget-object p0, p0, Lcn/manstep/phonemirrorBox/floatwindow/FloatWindowService;->c:Landroid/os/Handler;
    return-object p0
.end method

.method static synthetic m(Lcn/manstep/phonemirrorBox/floatwindow/FloatWindowService;)Lcn/manstep/phonemirrorBox/util/u;
  .registers 1
  .line 1
    iget-object p0, p0, Lcn/manstep/phonemirrorBox/floatwindow/FloatWindowService;->b:Lcn/manstep/phonemirrorBox/util/u;
    return-object p0
.end method

.method static synthetic n(Lcn/manstep/phonemirrorBox/floatwindow/FloatWindowService;)V
  .registers 1
  .line 1
    invoke-direct { p0 }, Lcn/manstep/phonemirrorBox/floatwindow/FloatWindowService;->q()V
    return-void
.end method

.method private o(Landroid/content/Context;)V
  .registers 3
  .line 1
    invoke-static { }, Lcn/manstep/phonemirrorBox/floatwindow/e;->g()Lcn/manstep/phonemirrorBox/floatwindow/e;
    move-result-object p1
    const/4 v0, 0
    invoke-virtual { p1, v0 }, Lcn/manstep/phonemirrorBox/floatwindow/e;->r(Z)V
  .line 2
    new-instance p1, Lcn/manstep/phonemirrorBox/floatwindow/FloatWindowService$b;
    invoke-direct { p1, p0 }, Lcn/manstep/phonemirrorBox/floatwindow/FloatWindowService$b;-><init>(Lcn/manstep/phonemirrorBox/floatwindow/FloatWindowService;)V
    invoke-static { p1 }, Lcn/manstep/phonemirrorBox/util/j;->d(Ljava/lang/Runnable;)Lcn/manstep/phonemirrorBox/util/j;
    return-void
.end method

.method private p(Landroid/content/Context;)V
  .registers 3
  .line 1
    invoke-static { }, Lcn/manstep/phonemirrorBox/floatwindow/e;->g()Lcn/manstep/phonemirrorBox/floatwindow/e;
    move-result-object p1
    const/4 v0, 1
    invoke-virtual { p1, v0 }, Lcn/manstep/phonemirrorBox/floatwindow/e;->r(Z)V
  .line 2
    new-instance p1, Lcn/manstep/phonemirrorBox/floatwindow/FloatWindowService$c;
    invoke-direct { p1, p0 }, Lcn/manstep/phonemirrorBox/floatwindow/FloatWindowService$c;-><init>(Lcn/manstep/phonemirrorBox/floatwindow/FloatWindowService;)V
    invoke-static { p1 }, Lcn/manstep/phonemirrorBox/util/j;->d(Ljava/lang/Runnable;)Lcn/manstep/phonemirrorBox/util/j;
    return-void
.end method

.method private q()V
  .registers 3
  .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/floatwindow/FloatWindowService;->e:Lcn/manstep/phonemirrorBox/h0/a;
    const-string v1, "ShowQuickBallTimer"
    invoke-virtual { v0, v1 }, Lcn/manstep/phonemirrorBox/h0/a;->b(Ljava/lang/String;)V
  .line 2
    invoke-static { }, Lcn/manstep/phonemirrorBox/floatwindow/e;->g()Lcn/manstep/phonemirrorBox/floatwindow/e;
    move-result-object v0
    invoke-virtual { v0, p0 }, Lcn/manstep/phonemirrorBox/floatwindow/e;->t(Landroid/content/Context;)V
    return-void
.end method

.method public a()V
  .registers 1
    return-void
.end method

.method public b()V
  .registers 1
    return-void
.end method

.method public c()V
  .registers 1
    return-void
.end method

.method public d(Ljava/lang/String;)V
  .registers 3
    const-string v0, "Mirror"
  .line 1
    invoke-virtual { p1, v0 }, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
    move-result p1
    if-eqz p1, :L0
  .line 2
    invoke-static { }, Lcn/manstep/phonemirrorBox/floatwindow/e;->g()Lcn/manstep/phonemirrorBox/floatwindow/e;
    move-result-object p1
    invoke-virtual { p1, p0 }, Lcn/manstep/phonemirrorBox/floatwindow/e;->j(Landroid/content/Context;)V
  :L0
    return-void
.end method

.method public e()V
  .registers 1
    return-void
.end method

.method public f()V
  .registers 1
    return-void
.end method

.method public g()V
  .registers 1
    return-void
.end method

.method public h()V
  .registers 1
  .line 1
    invoke-direct { p0, p0 }, Lcn/manstep/phonemirrorBox/floatwindow/FloatWindowService;->o(Landroid/content/Context;)V
    return-void
.end method

.method public i()V
  .registers 3
  .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/floatwindow/FloatWindowService;->c:Landroid/os/Handler;
    new-instance v1, Lcn/manstep/phonemirrorBox/floatwindow/FloatWindowService$d;
    invoke-direct { v1, p0 }, Lcn/manstep/phonemirrorBox/floatwindow/FloatWindowService$d;-><init>(Lcn/manstep/phonemirrorBox/floatwindow/FloatWindowService;)V
    invoke-virtual { v0, v1 }, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    return-void
.end method

.method public j()V
  .registers 3
  .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/floatwindow/FloatWindowService;->c:Landroid/os/Handler;
    new-instance v1, Lcn/manstep/phonemirrorBox/floatwindow/FloatWindowService$e;
    invoke-direct { v1, p0 }, Lcn/manstep/phonemirrorBox/floatwindow/FloatWindowService$e;-><init>(Lcn/manstep/phonemirrorBox/floatwindow/FloatWindowService;)V
    invoke-virtual { v0, v1 }, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    return-void
.end method

.method public k()V
  .registers 1
  .line 1
    invoke-direct { p0, p0 }, Lcn/manstep/phonemirrorBox/floatwindow/FloatWindowService;->p(Landroid/content/Context;)V
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
  .registers 2
    const/4 p1, 0
    return-object p1
.end method

.method public onCreate()V
  .registers 2
  .line 1
    invoke-super { p0 }, Landroid/app/Service;->onCreate()V
  .line 2
    invoke-static { }, Lcn/manstep/phonemirrorBox/v0/a;->t()Lcn/manstep/phonemirrorBox/v0/a;
    move-result-object v0
    invoke-virtual { v0, p0 }, Lcn/manstep/phonemirrorBox/v0/a;->r(Lcn/manstep/phonemirrorBox/v0/b;)V
    return-void
.end method

.method public onDestroy()V
  .registers 3
  .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/floatwindow/FloatWindowService;->d:Ljava/util/concurrent/ScheduledExecutorService;
    const/4 v1, 0
    if-eqz v0, :L0
  .line 2
    invoke-interface { v0 }, Ljava/util/concurrent/ScheduledExecutorService;->shutdown()V
  .line 3
    iput-object v1, p0, Lcn/manstep/phonemirrorBox/floatwindow/FloatWindowService;->d:Ljava/util/concurrent/ScheduledExecutorService;
  :L0
  .line 4
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/floatwindow/FloatWindowService;->e:Lcn/manstep/phonemirrorBox/h0/a;
    if-eqz v0, :L1
  .line 5
    invoke-virtual { v0 }, Lcn/manstep/phonemirrorBox/h0/a;->e()V
  .line 6
    iput-object v1, p0, Lcn/manstep/phonemirrorBox/floatwindow/FloatWindowService;->e:Lcn/manstep/phonemirrorBox/h0/a;
  :L1
  .line 7
    invoke-static { }, Lcn/manstep/phonemirrorBox/floatwindow/e;->g()Lcn/manstep/phonemirrorBox/floatwindow/e;
    move-result-object v0
    invoke-virtual { v0, p0 }, Lcn/manstep/phonemirrorBox/floatwindow/e;->j(Landroid/content/Context;)V
  .line 8
    invoke-static { }, Lcn/manstep/phonemirrorBox/v0/a;->t()Lcn/manstep/phonemirrorBox/v0/a;
    move-result-object v0
    invoke-virtual { v0, p0 }, Lcn/manstep/phonemirrorBox/v0/a;->F(Lcn/manstep/phonemirrorBox/v0/b;)V
  .line 9
    invoke-super { p0 }, Landroid/app/Service;->onDestroy()V
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
  .registers 12
  .line 1
    invoke-virtual { p0 }, Landroid/app/Service;->getResources()Landroid/content/res/Resources;
    move-result-object v0
    const v1, 2131034128
    invoke-virtual { v0, v1 }, Landroid/content/res/Resources;->getBoolean(I)Z
    move-result v0
    if-eqz v0, :L0
    invoke-static { }, Lcn/manstep/phonemirrorBox/BoxInterface/d;->i()Z
    move-result v0
    if-eqz v0, :L4
  :L0
  .line 2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v1, 23
    if-lt v0, v1, :L3
  .line 3
    invoke-virtual { p0 }, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;
    move-result-object v0
    invoke-static/range { v0 .. v0 }, Lcom/stub/StubApp;->getOrigApplicationContext(Landroid/content/Context;)Landroid/content/Context;
    move-result-object v0
    invoke-static { v0 }, Landroid/provider/Settings;->canDrawOverlays(Landroid/content/Context;)Z
    move-result v0
    if-eqz v0, :L1
  .line 4
    invoke-static { }, Lcn/manstep/phonemirrorBox/floatwindow/e;->g()Lcn/manstep/phonemirrorBox/floatwindow/e;
    move-result-object v0
    invoke-virtual { v0, p0 }, Lcn/manstep/phonemirrorBox/floatwindow/e;->t(Landroid/content/Context;)V
    goto :L4
  :L1
  .line 5
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/floatwindow/FloatWindowService;->e:Lcn/manstep/phonemirrorBox/h0/a;
    if-nez v0, :L2
  .line 6
    new-instance v0, Lcn/manstep/phonemirrorBox/h0/a;
    invoke-direct { v0 }, Lcn/manstep/phonemirrorBox/h0/a;-><init>()V
    iput-object v0, p0, Lcn/manstep/phonemirrorBox/floatwindow/FloatWindowService;->e:Lcn/manstep/phonemirrorBox/h0/a;
  :L2
  .line 7
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/floatwindow/FloatWindowService;->e:Lcn/manstep/phonemirrorBox/h0/a;
    new-instance v3, Lcn/manstep/phonemirrorBox/floatwindow/FloatWindowService$a;
    invoke-direct { v3, p0 }, Lcn/manstep/phonemirrorBox/floatwindow/FloatWindowService$a;-><init>(Lcn/manstep/phonemirrorBox/floatwindow/FloatWindowService;)V
    const-wide/16 v4, 500
    const-wide/16 v6, 500
    const-string v2, "ShowQuickBallTimer"
    invoke-virtual/range { v1 .. v7 }, Lcn/manstep/phonemirrorBox/h0/a;->f(Ljava/lang/String;Ljava/lang/Runnable;JJ)V
    goto :L4
  :L3
  .line 8
    invoke-static { }, Lcn/manstep/phonemirrorBox/floatwindow/e;->g()Lcn/manstep/phonemirrorBox/floatwindow/e;
    move-result-object v0
    invoke-virtual { v0, p0 }, Lcn/manstep/phonemirrorBox/floatwindow/e;->t(Landroid/content/Context;)V
  :L4
  .line 9
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/floatwindow/FloatWindowService;->d:Ljava/util/concurrent/ScheduledExecutorService;
    if-nez v0, :L5
  .line 10
    new-instance v1, Ljava/util/concurrent/ScheduledThreadPoolExecutor;
    const/4 v0, 1
    new-instance v2, Lcn/manstep/phonemirrorBox/util/h;
    const-string v3, "BallRefresh"
    invoke-direct { v2, v3 }, Lcn/manstep/phonemirrorBox/util/h;-><init>(Ljava/lang/String;)V
    invoke-direct { v1, v0, v2 }, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(ILjava/util/concurrent/ThreadFactory;)V
    iput-object v1, p0, Lcn/manstep/phonemirrorBox/floatwindow/FloatWindowService;->d:Ljava/util/concurrent/ScheduledExecutorService;
  .line 11
    new-instance v2, Lcn/manstep/phonemirrorBox/floatwindow/FloatWindowService$g;
    const/4 v0, 0
    invoke-direct { v2, p0, v0 }, Lcn/manstep/phonemirrorBox/floatwindow/FloatWindowService$g;-><init>(Lcn/manstep/phonemirrorBox/floatwindow/FloatWindowService;Lcn/manstep/phonemirrorBox/floatwindow/FloatWindowService$a;)V
    const-wide/16 v3, 0
    const-wide/16 v5, 500
    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;
    invoke-interface/range { v1 .. v7 }, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
  :L5
  .line 12
    invoke-super { p0, p1, p2, p3 }, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I
    move-result p1
    return p1
.end method
