.class public Lcn/manstep/phonemirrorBox/ModeChangeService;
.super Landroid/app/Service;
.implements Lcn/manstep/phonemirrorBox/v0/b;
.source "SourceFile"

.annotation system Ldalvik/annotation/MemberClasses;
  value = {
    Lcn/manstep/phonemirrorBox/ModeChangeService$c;
  }
.end annotation

.field private b:Lcn/manstep/phonemirrorBox/ModeChangeService$c;

.field private c:Z

.field private final d:Landroid/content/BroadcastReceiver;

.field private e:Z

.field private f:Ljava/lang/ref/WeakReference;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "Ljava/lang/ref/WeakReference<",
      "Lcn/manstep/phonemirrorBox/MainActivity;",
      ">;"
    }
  .end annotation
.end field

.method public constructor <init>()V
  .registers 2
  .line 1
    invoke-direct { p0 }, Landroid/app/Service;-><init>()V
    const/4 v0, 1
  .line 2
    iput-boolean v0, p0, Lcn/manstep/phonemirrorBox/ModeChangeService;->c:Z
  .line 3
    new-instance v0, Lcn/manstep/phonemirrorBox/ModeChangeService$a;
    invoke-direct { v0, p0 }, Lcn/manstep/phonemirrorBox/ModeChangeService$a;-><init>(Lcn/manstep/phonemirrorBox/ModeChangeService;)V
    iput-object v0, p0, Lcn/manstep/phonemirrorBox/ModeChangeService;->d:Landroid/content/BroadcastReceiver;
    const/4 v0, 0
  .line 4
    iput-boolean v0, p0, Lcn/manstep/phonemirrorBox/ModeChangeService;->e:Z
    return-void
.end method

.method static synthetic l(Lcn/manstep/phonemirrorBox/ModeChangeService;)Z
  .registers 1
  .line 1
    iget-boolean p0, p0, Lcn/manstep/phonemirrorBox/ModeChangeService;->c:Z
    return p0
.end method

.method static synthetic m(Lcn/manstep/phonemirrorBox/ModeChangeService;Z)Z
  .registers 2
  .line 1
    iput-boolean p1, p0, Lcn/manstep/phonemirrorBox/ModeChangeService;->e:Z
    return p1
.end method

.method public a()V
  .registers 4
  .line 1
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "onCallIncoming: isForeground="
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget-boolean v1, p0, Lcn/manstep/phonemirrorBox/ModeChangeService;->c:Z
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    const-string v1, "ModeChangeService"
    invoke-static { v1, v0 }, Lcn/manstep/phonemirrorBox/util/s;->d(Ljava/lang/String;Ljava/lang/String;)V
  .line 2
    iget-boolean v0, p0, Lcn/manstep/phonemirrorBox/ModeChangeService;->c:Z
    if-nez v0, :L1
  .line 3
    invoke-static { }, Lcn/manstep/phonemirrorBox/v0/a;->t()Lcn/manstep/phonemirrorBox/v0/a;
    move-result-object v0
    invoke-virtual { v0 }, Lcn/manstep/phonemirrorBox/v0/a;->w()Z
    move-result v0
    if-nez v0, :L0
    invoke-static { }, Lcn/manstep/phonemirrorBox/v0/a;->t()Lcn/manstep/phonemirrorBox/v0/a;
    move-result-object v0
    invoke-virtual { v0 }, Lcn/manstep/phonemirrorBox/v0/a;->v()Z
    move-result v0
    if-nez v0, :L0
    const/4 v0, 1
  .line 4
    iput-boolean v0, p0, Lcn/manstep/phonemirrorBox/ModeChangeService;->e:Z
  :L0
  .line 5
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v2, "onCallIncoming: isVisible="
    invoke-virtual { v0, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-static { }, Lcn/manstep/phonemirrorBox/v0/e;->C()Z
    move-result v2
    invoke-virtual { v0, v2 }, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    invoke-static { v1, v0 }, Lcn/manstep/phonemirrorBox/util/s;->d(Ljava/lang/String;Ljava/lang/String;)V
  .line 6
    invoke-static { }, Lcn/manstep/phonemirrorBox/v0/e;->C()Z
    move-result v0
    if-nez v0, :L2
    const-string v0, "onCallIncoming: startMainActivity"
  .line 7
    invoke-static { v1, v0 }, Lcn/manstep/phonemirrorBox/util/s;->d(Ljava/lang/String;Ljava/lang/String;)V
    const/4 v0, 0
  .line 8
    invoke-static { p0, v0 }, Lcn/manstep/phonemirrorBox/util/f;->f(Landroid/content/Context;Landroid/os/Bundle;)V
    goto :L2
  :L1
    const/4 v0, 0
  .line 9
    iput-boolean v0, p0, Lcn/manstep/phonemirrorBox/ModeChangeService;->e:Z
  :L2
    return-void
.end method

.method public b()V
  .registers 1
    return-void
.end method

.method public c()V
  .registers 3
  .line 1
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "onCallStop: isBackPressed="
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget-boolean v1, p0, Lcn/manstep/phonemirrorBox/ModeChangeService;->e:Z
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    const-string v1, "ModeChangeService"
    invoke-static { v1, v0 }, Lcn/manstep/phonemirrorBox/util/s;->d(Ljava/lang/String;Ljava/lang/String;)V
  .line 2
    iget-boolean v0, p0, Lcn/manstep/phonemirrorBox/ModeChangeService;->e:Z
    if-eqz v0, :L1
  .line 3
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/ModeChangeService;->f:Ljava/lang/ref/WeakReference;
    if-eqz v0, :L0
    invoke-virtual { v0 }, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
    move-result-object v0
    if-eqz v0, :L0
  .line 4
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/ModeChangeService;->f:Ljava/lang/ref/WeakReference;
    invoke-virtual { v0 }, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Lcn/manstep/phonemirrorBox/MainActivity;
    invoke-virtual { v0 }, Lcn/manstep/phonemirrorBox/MainActivity;->onBackPressed()V
  :L0
    const/4 v0, 0
  .line 5
    iput-boolean v0, p0, Lcn/manstep/phonemirrorBox/ModeChangeService;->e:Z
  :L1
    return-void
.end method

.method public d(Ljava/lang/String;)V
  .registers 2
    return-void
.end method

.method public e()V
  .registers 6
  .line 1
    invoke-static { }, Lcn/manstep/phonemirrorBox/util/j;->c()Lcn/manstep/phonemirrorBox/util/j;
    move-result-object v0
    new-instance v1, Lcn/manstep/phonemirrorBox/ModeChangeService$b;
    invoke-direct { v1, p0 }, Lcn/manstep/phonemirrorBox/ModeChangeService$b;-><init>(Lcn/manstep/phonemirrorBox/ModeChangeService;)V
    const-string v2, "onMicStart"
    const-wide/16 v3, 1000
    invoke-virtual { v0, v2, v3, v4, v1 }, Lcn/manstep/phonemirrorBox/util/j;->e(Ljava/lang/String;JLjava/lang/Runnable;)Lcn/manstep/phonemirrorBox/util/j;
    return-void
.end method

.method public f()V
  .registers 1
    return-void
.end method

.method public g()V
  .registers 4
  .line 1
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "onCallStart: isForeground="
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget-boolean v1, p0, Lcn/manstep/phonemirrorBox/ModeChangeService;->c:Z
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    const-string v1, "ModeChangeService"
    invoke-static { v1, v0 }, Lcn/manstep/phonemirrorBox/util/s;->d(Ljava/lang/String;Ljava/lang/String;)V
  .line 2
    iget-boolean v0, p0, Lcn/manstep/phonemirrorBox/ModeChangeService;->c:Z
    if-nez v0, :L0
    const/4 v0, 1
  .line 3
    iput-boolean v0, p0, Lcn/manstep/phonemirrorBox/ModeChangeService;->e:Z
  .line 4
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v2, "onCallStart: isVisible="
    invoke-virtual { v0, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-static { }, Lcn/manstep/phonemirrorBox/v0/e;->C()Z
    move-result v2
    invoke-virtual { v0, v2 }, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    invoke-static { v1, v0 }, Lcn/manstep/phonemirrorBox/util/s;->d(Ljava/lang/String;Ljava/lang/String;)V
  .line 5
    invoke-static { }, Lcn/manstep/phonemirrorBox/v0/e;->C()Z
    move-result v0
    if-nez v0, :L1
    const-string v0, "onCallStart: startMainActivity"
  .line 6
    invoke-static { v1, v0 }, Lcn/manstep/phonemirrorBox/util/s;->d(Ljava/lang/String;Ljava/lang/String;)V
    const/4 v0, 0
  .line 7
    invoke-static { p0, v0 }, Lcn/manstep/phonemirrorBox/util/f;->f(Landroid/content/Context;Landroid/os/Bundle;)V
    goto :L1
  :L0
    const/4 v0, 0
  .line 8
    iput-boolean v0, p0, Lcn/manstep/phonemirrorBox/ModeChangeService;->e:Z
  :L1
    return-void
.end method

.method public h()V
  .registers 1
    return-void
.end method

.method public i()V
  .registers 1
    return-void
.end method

.method public j()V
  .registers 1
    return-void
.end method

.method public k()V
  .registers 1
    return-void
.end method

.method public n(Z)V
  .registers 2
  .line 1
    iput-boolean p1, p0, Lcn/manstep/phonemirrorBox/ModeChangeService;->c:Z
    return-void
.end method

.method public o(Lcn/manstep/phonemirrorBox/MainActivity;)V
  .registers 3
  .line 1
    new-instance v0, Ljava/lang/ref/WeakReference;
    invoke-direct { v0, p1 }, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V
    iput-object v0, p0, Lcn/manstep/phonemirrorBox/ModeChangeService;->f:Ljava/lang/ref/WeakReference;
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
  .registers 2
  .line 1
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/ModeChangeService;->b:Lcn/manstep/phonemirrorBox/ModeChangeService$c;
    return-object p1
.end method

.method public onCreate()V
  .registers 3
  .line 1
    invoke-super { p0 }, Landroid/app/Service;->onCreate()V
  .line 2
    new-instance v0, Lcn/manstep/phonemirrorBox/ModeChangeService$c;
    invoke-direct { v0, p0 }, Lcn/manstep/phonemirrorBox/ModeChangeService$c;-><init>(Lcn/manstep/phonemirrorBox/ModeChangeService;)V
    iput-object v0, p0, Lcn/manstep/phonemirrorBox/ModeChangeService;->b:Lcn/manstep/phonemirrorBox/ModeChangeService$c;
  .line 3
    new-instance v0, Landroid/content/IntentFilter;
    invoke-direct { v0 }, Landroid/content/IntentFilter;-><init>()V
    const-string v1, "com.szchoiceway.eventcenter.EventUtils.ACTION_MCU_CMD_EVENT"
  .line 4
    invoke-virtual { v0, v1 }, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V
  .line 5
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/ModeChangeService;->d:Landroid/content/BroadcastReceiver;
    invoke-virtual { p0, v1, v0 }, Landroid/app/Service;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
  .line 6
    invoke-static { }, Lcn/manstep/phonemirrorBox/v0/a;->t()Lcn/manstep/phonemirrorBox/v0/a;
    move-result-object v0
    invoke-virtual { v0, p0 }, Lcn/manstep/phonemirrorBox/v0/a;->r(Lcn/manstep/phonemirrorBox/v0/b;)V
    return-void
.end method

.method public onDestroy()V
  .registers 2
  .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/ModeChangeService;->d:Landroid/content/BroadcastReceiver;
    invoke-virtual { p0, v0 }, Landroid/app/Service;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
  .line 2
    invoke-static { }, Lcn/manstep/phonemirrorBox/v0/a;->t()Lcn/manstep/phonemirrorBox/v0/a;
    move-result-object v0
    invoke-virtual { v0, p0 }, Lcn/manstep/phonemirrorBox/v0/a;->F(Lcn/manstep/phonemirrorBox/v0/b;)V
    const/4 v0, 0
  .line 3
    iput-object v0, p0, Lcn/manstep/phonemirrorBox/ModeChangeService;->b:Lcn/manstep/phonemirrorBox/ModeChangeService$c;
  .line 4
    invoke-super { p0 }, Landroid/app/Service;->onDestroy()V
    return-void
.end method

.method public onUnbind(Landroid/content/Intent;)Z
  .registers 2
  .line 1
    invoke-super { p0, p1 }, Landroid/app/Service;->onUnbind(Landroid/content/Intent;)Z
    move-result p1
    return p1
.end method
