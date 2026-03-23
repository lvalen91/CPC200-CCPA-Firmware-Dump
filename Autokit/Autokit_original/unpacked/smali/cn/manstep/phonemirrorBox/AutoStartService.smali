.class public Lcn/manstep/phonemirrorBox/AutoStartService;
.super Landroid/app/Service;
.implements Lcn/manstep/phonemirrorBox/BoxInterface/d$g;
.source "SourceFile"

.annotation system Ldalvik/annotation/MemberClasses;
  value = {
    Lcn/manstep/phonemirrorBox/AutoStartService$h;,
    Lcn/manstep/phonemirrorBox/AutoStartService$g;
  }
.end annotation

.field private b:I

.field private c:Z

.field private d:Z

.field private e:Z

.field private f:Z

.field private g:Ljava/util/concurrent/ScheduledExecutorService;

.field private h:Ljava/util/concurrent/ScheduledFuture;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "Ljava/util/concurrent/ScheduledFuture<",
      "*>;"
    }
  .end annotation
.end field

.field private i:Z

.field private j:I

.field private k:Z

.field private l:Z

.field private final m:Landroid/os/CountDownTimer;

.field private n:Z

.field private o:Z

.field private p:Z

.field private q:Z

.field private r:Ld/b/a/b;

.field private s:Lcn/manstep/phonemirrorBox/AutoStartService$h;

.method public constructor <init>()V
  .registers 10
  .line 1
    invoke-direct { p0 }, Landroid/app/Service;-><init>()V
    const/4 v0, -1
  .line 2
    iput v0, p0, Lcn/manstep/phonemirrorBox/AutoStartService;->b:I
    const/4 v1, 0
  .line 3
    iput-boolean v1, p0, Lcn/manstep/phonemirrorBox/AutoStartService;->c:Z
  .line 4
    iput-boolean v1, p0, Lcn/manstep/phonemirrorBox/AutoStartService;->d:Z
  .line 5
    iput-boolean v1, p0, Lcn/manstep/phonemirrorBox/AutoStartService;->e:Z
  .line 6
    iput-boolean v1, p0, Lcn/manstep/phonemirrorBox/AutoStartService;->f:Z
    const/4 v2, 0
  .line 7
    iput-object v2, p0, Lcn/manstep/phonemirrorBox/AutoStartService;->g:Ljava/util/concurrent/ScheduledExecutorService;
  .line 8
    iput-object v2, p0, Lcn/manstep/phonemirrorBox/AutoStartService;->h:Ljava/util/concurrent/ScheduledFuture;
  .line 9
    iput-boolean v1, p0, Lcn/manstep/phonemirrorBox/AutoStartService;->i:Z
  .line 10
    iput v0, p0, Lcn/manstep/phonemirrorBox/AutoStartService;->j:I
    const/4 v0, 1
  .line 11
    iput-boolean v0, p0, Lcn/manstep/phonemirrorBox/AutoStartService;->k:Z
  .line 12
    iput-boolean v0, p0, Lcn/manstep/phonemirrorBox/AutoStartService;->l:Z
  .line 13
    new-instance v0, Lcn/manstep/phonemirrorBox/AutoStartService$a;
    const-wide/16 v5, 8000
    const-wide/16 v7, 500
    move-object v3, v0
    move-object v4, p0
    invoke-direct/range { v3 .. v8 }, Lcn/manstep/phonemirrorBox/AutoStartService$a;-><init>(Lcn/manstep/phonemirrorBox/AutoStartService;JJ)V
    iput-object v0, p0, Lcn/manstep/phonemirrorBox/AutoStartService;->m:Landroid/os/CountDownTimer;
  .line 14
    iput-boolean v1, p0, Lcn/manstep/phonemirrorBox/AutoStartService;->n:Z
  .line 15
    iput-boolean v1, p0, Lcn/manstep/phonemirrorBox/AutoStartService;->o:Z
  .line 16
    iput-boolean v1, p0, Lcn/manstep/phonemirrorBox/AutoStartService;->p:Z
  .line 17
    iput-boolean v1, p0, Lcn/manstep/phonemirrorBox/AutoStartService;->q:Z
  .line 18
    iput-object v2, p0, Lcn/manstep/phonemirrorBox/AutoStartService;->r:Ld/b/a/b;
    return-void
.end method

.method private A()V
  .registers 2
    const-string v0, "AutoStartService,init"
  .line 1
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V
  .line 2
    invoke-static { }, Lcn/manstep/phonemirrorBox/v0/e;->A()Lcn/manstep/phonemirrorBox/v0/e;
    move-result-object v0
    if-nez v0, :L0
  .line 3
    invoke-static { p0 }, Lcn/manstep/phonemirrorBox/v0/e;->B(Landroid/content/Context;)V
  :L0
  .line 4
    invoke-static { }, Lcn/manstep/phonemirrorBox/MyApplication;->b()Lcn/manstep/phonemirrorBox/MyApplication;
    move-result-object v0
    invoke-virtual { v0 }, Lcn/manstep/phonemirrorBox/MyApplication;->j()V
  .line 5
    invoke-static { }, Lcn/manstep/phonemirrorBox/BoxInterface/d;->i()Z
    move-result v0
    if-eqz v0, :L1
  .line 6
    sget-object v0, Lcn/manstep/phonemirrorBox/BoxInterface/d;->l:Lcn/manstep/phonemirrorBox/BoxInterface/f;
    invoke-virtual { v0 }, Lcn/manstep/phonemirrorBox/BoxInterface/f;->Y0()V
  :L1
    const/4 v0, 1
  .line 7
    iput-boolean v0, p0, Lcn/manstep/phonemirrorBox/AutoStartService;->i:Z
    return-void
.end method

.method private B(Ljava/lang/String;)Z
  .registers 8
  .line 1
    new-instance v0, Ljava/text/SimpleDateFormat;
    invoke-static { }, Ljava/util/Locale;->getDefault()Ljava/util/Locale;
    move-result-object v1
    const-string v2, "HH:mm"
    invoke-direct { v0, v2, v1 }, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V
  .line 2
    new-instance v1, Ljava/util/Date;
    invoke-direct { v1 }, Ljava/util/Date;-><init>()V
    invoke-virtual { v0, v1 }, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;
    move-result-object v0
  .line 3
    new-instance v1, Ljava/lang/StringBuilder;
    invoke-direct { v1 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v2, "AutoStartService,isNightTime: "
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v1, p1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string v2, ","
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-static { }, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;
    move-result-object v2
    invoke-virtual { v2 }, Ljava/lang/Thread;->getName()Ljava/lang/String;
    move-result-object v2
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string v2, ":"
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-static { }, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;
    move-result-object v2
    invoke-virtual { v2 }, Ljava/lang/Thread;->getId()J
    move-result-wide v2
    invoke-virtual { v1, v2, v3 }, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
    invoke-virtual { v1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v1
    invoke-static { v1 }, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V
    const-string v1, "\\d+:\\d+"
  .line 4
    invoke-static { p1, v1 }, Lcn/manstep/phonemirrorBox/util/c0;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    move-result-object p1
    const/4 v1, 0
  .line 5
    invoke-interface { p1, v1 }, Ljava/util/List;->get(I)Ljava/lang/Object;
    move-result-object v2
    check-cast v2, Ljava/lang/String;
    const/4 v3, 1
  .line 6
    invoke-interface { p1, v3 }, Ljava/util/List;->get(I)Ljava/lang/Object;
    move-result-object p1
    check-cast p1, Ljava/lang/String;
  .line 7
    new-instance v4, Ljava/lang/StringBuilder;
    invoke-direct { v4 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v5, "AutoStartService,isNightTime: s="
    invoke-virtual { v4, v5 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v4, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string v5, ",e="
    invoke-virtual { v4, v5 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v4, p1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string v5, ",c="
    invoke-virtual { v4, v5 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v4, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v4 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v4
    invoke-static { v4 }, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V
  .line 8
    invoke-virtual { p1, v2 }, Ljava/lang/String;->compareTo(Ljava/lang/String;)I
    move-result v4
    if-gez v4, :L2
  .line 9
    invoke-virtual { v0, v2 }, Ljava/lang/String;->compareTo(Ljava/lang/String;)I
    move-result v2
    if-ltz v2, :L0
    const-string v2, "23:59"
    invoke-virtual { v0, v2 }, Ljava/lang/String;->compareTo(Ljava/lang/String;)I
    move-result v2
    if-gtz v2, :L0
    return v3
  :L0
    const-string v2, "00:00"
  .line 10
    invoke-virtual { v0, v2 }, Ljava/lang/String;->compareTo(Ljava/lang/String;)I
    move-result v2
    if-ltz v2, :L1
    invoke-virtual { v0, p1 }, Ljava/lang/String;->compareTo(Ljava/lang/String;)I
    move-result p1
    if-gez p1, :L1
    const/4 v1, 1
  :L1
    return v1
  :L2
  .line 11
    invoke-virtual { v0, v2 }, Ljava/lang/String;->compareTo(Ljava/lang/String;)I
    move-result v2
    if-ltz v2, :L3
    invoke-virtual { v0, p1 }, Ljava/lang/String;->compareTo(Ljava/lang/String;)I
    move-result p1
    if-gtz p1, :L3
    const/4 v1, 1
  :L3
    return v1
.end method

.method private C()V
  .registers 2
  .line 1
    invoke-static { }, Lcn/manstep/phonemirrorBox/v0/e;->z()Landroid/content/Context;
    move-result-object v0
    if-ne v0, p0, :L0
  .line 2
    invoke-static { }, Lcn/manstep/phonemirrorBox/v0/e;->F()V
  :L0
    const/4 v0, 2
  .line 3
    invoke-direct { p0, v0 }, Lcn/manstep/phonemirrorBox/AutoStartService;->G(I)V
  .line 4
    invoke-virtual { p0 }, Landroid/app/Service;->stopSelf()V
    return-void
.end method

.method private D()V
  .registers 3
  .line 1
    iget-boolean v0, p0, Lcn/manstep/phonemirrorBox/AutoStartService;->c:Z
    if-eqz v0, :L2
  .line 2
    iget-boolean v0, p0, Lcn/manstep/phonemirrorBox/AutoStartService;->o:Z
    const/4 v1, 0
    if-eqz v0, :L0
  .line 3
    iput-boolean v1, p0, Lcn/manstep/phonemirrorBox/AutoStartService;->o:Z
    goto :L1
  :L0
  .line 4
    iget-boolean v0, p0, Lcn/manstep/phonemirrorBox/AutoStartService;->d:Z
    if-eqz v0, :L1
  .line 5
    invoke-direct { p0 }, Lcn/manstep/phonemirrorBox/AutoStartService;->z()V
  :L1
  .line 6
    iput-boolean v1, p0, Lcn/manstep/phonemirrorBox/AutoStartService;->c:Z
  :L2
  .line 7
    iget-boolean v0, p0, Lcn/manstep/phonemirrorBox/AutoStartService;->d:Z
    if-nez v0, :L3
  .line 8
    invoke-direct { p0 }, Lcn/manstep/phonemirrorBox/AutoStartService;->w()V
  :L3
    return-void
.end method

.method private E()V
  .registers 7
  .line 1
    new-instance v0, Landroid/content/Intent;
    const-class v1, Lcn/manstep/phonemirrorBox/MainActivity;
    invoke-direct { v0, p0, v1 }, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
    const/high16 v1, 4096
  .line 2
    invoke-virtual { v0, v1 }, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;
    const/4 v1, 0
  .line 3
    invoke-static { p0, v1, v0, v1 }, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;
    move-result-object v0
  .line 4
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I
    const/4 v2, 1
    const/16 v3, 26
    if-ge v1, v3, :L0
  .line 5
    new-instance v1, Landroid/app/Notification;
    invoke-direct { v1 }, Landroid/app/Notification;-><init>()V
  .line 6
    iput-object v0, v1, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;
    const/4 v0, -2
  .line 7
    iput v0, v1, Landroid/app/Notification;->priority:I
  .line 8
    invoke-virtual { p0, v2, v1 }, Landroid/app/Service;->startForeground(ILandroid/app/Notification;)V
    goto :L1
  :L0
    const-string v1, "notification"
  .line 9
    invoke-virtual { p0, v1 }, Landroid/app/Service;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    move-result-object v1
    check-cast v1, Landroid/app/NotificationManager;
  .line 10
    new-instance v3, Landroid/app/NotificationChannel;
    const-string v4, "ForegroundService"
    const-string v5, "AutoKit"
    invoke-direct { v3, v4, v5, v2 }, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V
    if-eqz v1, :L1
  .line 11
    invoke-virtual { v1, v3 }, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V
  .line 12
    new-instance v1, Landroid/app/Notification$Builder;
    invoke-direct { v1, p0, v4 }, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V
    const v3, 2131230907
  .line 13
    invoke-virtual { v1, v3 }, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;
    move-result-object v1
    sget-object v3, Lcn/manstep/phonemirrorBox/p;->a:Ljava/lang/String;
  .line 14
    invoke-virtual { v1, v3 }, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;
    move-result-object v1
  .line 15
    invoke-virtual { p0 }, Landroid/app/Service;->getResources()Landroid/content/res/Resources;
    move-result-object v3
    const v4, 2131689573
    invoke-virtual { v3, v4 }, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    move-result-object v3
    invoke-virtual { v1, v3 }, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;
    move-result-object v1
  .line 16
    invoke-virtual { v1, v0 }, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;
    move-result-object v0
  .line 17
    invoke-virtual { v0 }, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;
    move-result-object v0
  .line 18
    invoke-virtual { p0, v2, v0 }, Landroid/app/Service;->startForeground(ILandroid/app/Notification;)V
  :L1
    return-void
.end method

.method private F()V
  .registers 5
  .line 1
    invoke-static { }, Lcn/manstep/phonemirrorBox/u;->z()Lcn/manstep/phonemirrorBox/u;
    move-result-object v0
    invoke-virtual { v0 }, Lcn/manstep/phonemirrorBox/u;->V()Z
    move-result v0
    if-nez v0, :L0
    return-void
  :L0
  .line 2
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/AutoStartService;->r:Ld/b/a/b;
    const/4 v1, 1
    if-nez v0, :L1
  .line 3
    new-instance v0, Lcn/manstep/phonemirrorBox/BoxInterface/a;
    const/4 v2, 5
    invoke-virtual { p0 }, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;
    move-result-object v3
    invoke-static/range { v3 .. v3 }, Lcom/stub/StubApp;->getOrigApplicationContext(Landroid/content/Context;)Landroid/content/Context;
    move-result-object v3
    invoke-direct { v0, v2, v1, v3 }, Lcn/manstep/phonemirrorBox/BoxInterface/a;-><init>(IILandroid/content/Context;)V
  .line 4
    invoke-virtual { v0 }, Lcn/manstep/phonemirrorBox/BoxInterface/a;->i()Ld/b/a/b;
    move-result-object v2
    iput-object v2, p0, Lcn/manstep/phonemirrorBox/AutoStartService;->r:Ld/b/a/b;
    const/4 v2, 0
  .line 5
    invoke-virtual { v0, v2 }, Lcn/manstep/phonemirrorBox/BoxInterface/a;->b(F)V
  :L1
  .line 6
    iput-boolean v1, p0, Lcn/manstep/phonemirrorBox/AutoStartService;->q:Z
  .line 7
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/AutoStartService;->g:Ljava/util/concurrent/ScheduledExecutorService;
    new-instance v1, Lcn/manstep/phonemirrorBox/AutoStartService$f;
    invoke-direct { v1, p0 }, Lcn/manstep/phonemirrorBox/AutoStartService$f;-><init>(Lcn/manstep/phonemirrorBox/AutoStartService;)V
    invoke-interface { v0, v1 }, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V
    return-void
.end method

.method private G(I)V
  .registers 5
  .line 1
    invoke-static { }, Lcn/manstep/phonemirrorBox/b0;->i()Lcn/manstep/phonemirrorBox/b0;
    move-result-object v0
    const-string v1, "InsertPhoneAutoStart"
    const/4 v2, 1
    invoke-virtual { v0, v1, v2 }, Lcn/manstep/phonemirrorBox/b0;->o(Ljava/lang/String;Z)Z
    move-result v0
  .line 2
    new-instance v1, Ljava/lang/StringBuilder;
    invoke-direct { v1 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v2, "AutoStartService,startMainActivity: Start MainActivity. flag="
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v1, p1 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    const-string v2, ","
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v1, v0 }, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;
    invoke-virtual { v1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v1
    invoke-static { v1 }, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V
    if-nez v0, :L0
    return-void
  :L0
  .line 3
    invoke-static { }, Lcn/manstep/phonemirrorBox/q;->g()Lcn/manstep/phonemirrorBox/q;
    move-result-object v0
    invoke-virtual { v0 }, Lcn/manstep/phonemirrorBox/q;->h()Lcn/manstep/phonemirrorBox/MainActivity;
    move-result-object v0
    if-eqz v0, :L1
    invoke-static { }, Lcn/manstep/phonemirrorBox/q;->g()Lcn/manstep/phonemirrorBox/q;
    move-result-object v0
    invoke-virtual { v0 }, Lcn/manstep/phonemirrorBox/q;->h()Lcn/manstep/phonemirrorBox/MainActivity;
    move-result-object v0
    invoke-virtual { v0 }, Lcn/manstep/phonemirrorBox/k;->d0()Z
    move-result v0
    if-eqz v0, :L1
    const-string p1, "AutoStartService"
    const-string v0, "startMainActivity: isVisible"
  .line 4
    invoke-static { p1, v0 }, Lcn/manstep/phonemirrorBox/util/s;->d(Ljava/lang/String;Ljava/lang/String;)V
    return-void
  :L1
  .line 5
    new-instance v0, Landroid/os/Bundle;
    invoke-direct { v0 }, Landroid/os/Bundle;-><init>()V
    const-string v1, "AutoStart"
  .line 6
    invoke-virtual { v0, v1, p1 }, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
  .line 7
    invoke-static { p0, v0 }, Lcn/manstep/phonemirrorBox/util/f;->f(Landroid/content/Context;Landroid/os/Bundle;)V
    return-void
.end method

.method private H()V
  .registers 10
  .line 1
    invoke-static { }, Lcn/manstep/phonemirrorBox/b0;->i()Lcn/manstep/phonemirrorBox/b0;
    move-result-object v0
    const-string v1, "NightMode"
    const/4 v2, 2
    invoke-virtual { v0, v1, v2 }, Lcn/manstep/phonemirrorBox/b0;->m(Ljava/lang/String;I)I
    move-result v0
    if-eq v0, v2, :L0
    return-void
  :L0
  .line 2
    invoke-static { }, Lcn/manstep/phonemirrorBox/b0;->i()Lcn/manstep/phonemirrorBox/b0;
    move-result-object v0
    const-string v1, "nightTime"
    const-string v2, ""
    invoke-virtual { v0, v1, v2 }, Lcn/manstep/phonemirrorBox/b0;->n(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    move-result-object v0
  .line 3
    invoke-static { v0 }, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    move-result v1
    if-eqz v1, :L1
    return-void
  :L1
  .line 4
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/AutoStartService;->h:Ljava/util/concurrent/ScheduledFuture;
    if-nez v1, :L2
  .line 5
    iget-object v2, p0, Lcn/manstep/phonemirrorBox/AutoStartService;->g:Ljava/util/concurrent/ScheduledExecutorService;
    new-instance v3, Lcn/manstep/phonemirrorBox/AutoStartService$c;
    invoke-direct { v3, p0, v0 }, Lcn/manstep/phonemirrorBox/AutoStartService$c;-><init>(Lcn/manstep/phonemirrorBox/AutoStartService;Ljava/lang/String;)V
    const-wide/16 v4, 3
    const-wide/16 v6, 10
    sget-object v8, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;
    invoke-interface/range { v2 .. v8 }, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    move-result-object v0
    iput-object v0, p0, Lcn/manstep/phonemirrorBox/AutoStartService;->h:Ljava/util/concurrent/ScheduledFuture;
  .line 6
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "AutoStartService,startNightModeDetectTimer: "
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/AutoStartService;->h:Ljava/util/concurrent/ScheduledFuture;
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/util/s;->e(Ljava/lang/String;)V
  :L2
    return-void
.end method

.method private I()V
  .registers 2
    const/4 v0, 0
  .line 1
    iput-boolean v0, p0, Lcn/manstep/phonemirrorBox/AutoStartService;->q:Z
    return-void
.end method

.method static synthetic b(Lcn/manstep/phonemirrorBox/AutoStartService;)Z
  .registers 1
  .line 1
    iget-boolean p0, p0, Lcn/manstep/phonemirrorBox/AutoStartService;->k:Z
    return p0
.end method

.method static synthetic d(Lcn/manstep/phonemirrorBox/AutoStartService;Z)Z
  .registers 2
  .line 1
    iput-boolean p1, p0, Lcn/manstep/phonemirrorBox/AutoStartService;->k:Z
    return p1
.end method

.method static synthetic e(Lcn/manstep/phonemirrorBox/AutoStartService;)V
  .registers 1
  .line 1
    invoke-direct { p0 }, Lcn/manstep/phonemirrorBox/AutoStartService;->x()V
    return-void
.end method

.method static synthetic f(Lcn/manstep/phonemirrorBox/AutoStartService;Z)Z
  .registers 2
  .line 1
    iput-boolean p1, p0, Lcn/manstep/phonemirrorBox/AutoStartService;->d:Z
    return p1
.end method

.method static synthetic g(Lcn/manstep/phonemirrorBox/AutoStartService;)Landroid/os/CountDownTimer;
  .registers 1
  .line 1
    iget-object p0, p0, Lcn/manstep/phonemirrorBox/AutoStartService;->m:Landroid/os/CountDownTimer;
    return-object p0
.end method

.method static synthetic h(Lcn/manstep/phonemirrorBox/AutoStartService;)Z
  .registers 1
  .line 1
    iget-boolean p0, p0, Lcn/manstep/phonemirrorBox/AutoStartService;->f:Z
    return p0
.end method

.method static synthetic i(Lcn/manstep/phonemirrorBox/AutoStartService;)V
  .registers 1
  .line 1
    invoke-direct { p0 }, Lcn/manstep/phonemirrorBox/AutoStartService;->I()V
    return-void
.end method

.method static synthetic j(Lcn/manstep/phonemirrorBox/AutoStartService;)V
  .registers 1
  .line 1
    invoke-direct { p0 }, Lcn/manstep/phonemirrorBox/AutoStartService;->F()V
    return-void
.end method

.method static synthetic k(Lcn/manstep/phonemirrorBox/AutoStartService;)V
  .registers 1
  .line 1
    invoke-direct { p0 }, Lcn/manstep/phonemirrorBox/AutoStartService;->A()V
    return-void
.end method

.method static synthetic l(Lcn/manstep/phonemirrorBox/AutoStartService;Ljava/lang/String;)Z
  .registers 2
  .line 1
    invoke-direct { p0, p1 }, Lcn/manstep/phonemirrorBox/AutoStartService;->B(Ljava/lang/String;)Z
    move-result p0
    return p0
.end method

.method static synthetic m(Lcn/manstep/phonemirrorBox/AutoStartService;)I
  .registers 1
  .line 1
    iget p0, p0, Lcn/manstep/phonemirrorBox/AutoStartService;->j:I
    return p0
.end method

.method static synthetic p(Lcn/manstep/phonemirrorBox/AutoStartService;I)I
  .registers 2
  .line 1
    iput p1, p0, Lcn/manstep/phonemirrorBox/AutoStartService;->j:I
    return p1
.end method

.method static synthetic q(Lcn/manstep/phonemirrorBox/AutoStartService;)V
  .registers 1
  .line 1
    invoke-direct { p0 }, Lcn/manstep/phonemirrorBox/AutoStartService;->w()V
    return-void
.end method

.method static synthetic r(Lcn/manstep/phonemirrorBox/AutoStartService;)Ld/b/a/b;
  .registers 1
  .line 1
    iget-object p0, p0, Lcn/manstep/phonemirrorBox/AutoStartService;->r:Ld/b/a/b;
    return-object p0
.end method

.method static synthetic s(Lcn/manstep/phonemirrorBox/AutoStartService;)Z
  .registers 1
  .line 1
    iget-boolean p0, p0, Lcn/manstep/phonemirrorBox/AutoStartService;->q:Z
    return p0
.end method

.method static synthetic t(Lcn/manstep/phonemirrorBox/AutoStartService;Z)Z
  .registers 2
  .line 1
    iput-boolean p1, p0, Lcn/manstep/phonemirrorBox/AutoStartService;->e:Z
    return p1
.end method

.method static synthetic u(Lcn/manstep/phonemirrorBox/AutoStartService;)Z
  .registers 1
  .line 1
    iget-boolean p0, p0, Lcn/manstep/phonemirrorBox/AutoStartService;->l:Z
    return p0
.end method

.method private w()V
  .registers 5
  .line 1
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "autoConnect: Config.BoxVer="
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    sget-object v1, Lcn/manstep/phonemirrorBox/p;->b:Ljava/lang/String;
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    const-string v1, "AutoStartService"
    invoke-static { v1, v0 }, Lcn/manstep/phonemirrorBox/util/s;->d(Ljava/lang/String;Ljava/lang/String;)V
  .line 2
    sget-object v0, Lcn/manstep/phonemirrorBox/p;->b:Ljava/lang/String;
    invoke-static { v0 }, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    move-result v0
    const/4 v1, 1
    if-nez v0, :L3
    sget-object v0, Lcn/manstep/phonemirrorBox/p;->b:Ljava/lang/String;
    const-string v2, "BOX:unknown"
    invoke-virtual { v2, v0 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :L0
    goto :L3
  :L0
  .line 3
    invoke-static { }, Lcn/manstep/phonemirrorBox/BoxInterface/d;->C()Z
    move-result v0
    if-eqz v0, :L1
    return-void
  :L1
  .line 4
    iget-boolean v0, p0, Lcn/manstep/phonemirrorBox/AutoStartService;->e:Z
    if-eqz v0, :L2
  .line 5
    invoke-static { }, Lcn/manstep/phonemirrorBox/b0;->i()Lcn/manstep/phonemirrorBox/b0;
    move-result-object v0
    const-string v2, "InsertPhoneAutoStart"
    invoke-virtual { v0, v2, v1 }, Lcn/manstep/phonemirrorBox/b0;->o(Ljava/lang/String;Z)Z
    move-result v0
  .line 6
    invoke-static { }, Lcn/manstep/phonemirrorBox/b0;->i()Lcn/manstep/phonemirrorBox/b0;
    move-result-object v1
    const/4 v2, 0
    const-string v3, "WirelessConnectMode"
    invoke-virtual { v1, v3, v2 }, Lcn/manstep/phonemirrorBox/b0;->m(Ljava/lang/String;I)I
    move-result v1
  .line 7
    new-instance v2, Ljava/lang/StringBuilder;
    invoke-direct { v2 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v3, "AutoStartService,autoConnect: isInsertPhoneAutoStart="
    invoke-virtual { v2, v3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v2, v0 }, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;
    const-string v0, ", wirelessConnMode="
    invoke-virtual { v2, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v2, v1 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { v2 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V
    if-nez v1, :L2
  .line 8
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/AutoStartService;->m:Landroid/os/CountDownTimer;
    invoke-virtual { v0 }, Landroid/os/CountDownTimer;->cancel()V
  .line 9
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/AutoStartService;->m:Landroid/os/CountDownTimer;
    invoke-virtual { v0 }, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;
  :L2
    return-void
  :L3
  .line 10
    iput-boolean v1, p0, Lcn/manstep/phonemirrorBox/AutoStartService;->n:Z
    return-void
.end method

.method private x()V
  .registers 5
  .line 1
    invoke-static { }, Lcn/manstep/phonemirrorBox/BoxInterface/d;->i()Z
    move-result v0
    if-eqz v0, :L4
  .line 2
    invoke-static { }, Lcn/manstep/phonemirrorBox/BoxInterface/d;->G()Z
    move-result v0
    if-nez v0, :L4
    iget-boolean v0, p0, Lcn/manstep/phonemirrorBox/AutoStartService;->d:Z
    if-nez v0, :L4
  .line 3
    sget-object v0, Lcn/manstep/phonemirrorBox/BoxInterface/d;->l:Lcn/manstep/phonemirrorBox/BoxInterface/f;
    invoke-virtual { v0 }, Lcn/manstep/phonemirrorBox/BoxInterface/f;->F()I
    move-result v0
  .line 4
    new-instance v1, Ljava/lang/StringBuilder;
    invoke-direct { v1 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v2, "autoConnect2: count="
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v1, v0 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { v1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v1
    const-string v2, "AutoStartService"
    invoke-static { v2, v1 }, Lcn/manstep/phonemirrorBox/util/s;->d(Ljava/lang/String;Ljava/lang/String;)V
    if-gtz v0, :L0
    return-void
  :L0
  .line 5
    invoke-virtual { p0 }, Landroid/app/Service;->getResources()Landroid/content/res/Resources;
    move-result-object v0
    const v1, 2131034115
    invoke-virtual { v0, v1 }, Landroid/content/res/Resources;->getBoolean(I)Z
    move-result v0
    if-nez v0, :L1
  .line 6
    invoke-static { }, Lcn/manstep/phonemirrorBox/v0/e;->C()Z
    move-result v0
    if-nez v0, :L1
    iget-boolean v0, p0, Lcn/manstep/phonemirrorBox/AutoStartService;->d:Z
    if-eqz v0, :L1
    return-void
  :L1
  .line 7
    invoke-static { }, Lcn/manstep/phonemirrorBox/BoxInterface/d;->C()Z
    move-result v0
    if-eqz v0, :L2
    return-void
  :L2
  .line 8
    sget-object v0, Lcn/manstep/phonemirrorBox/BoxInterface/d;->l:Lcn/manstep/phonemirrorBox/BoxInterface/f;
    if-eqz v0, :L4
  .line 9
    invoke-virtual { v0 }, Lcn/manstep/phonemirrorBox/BoxInterface/f;->m0()Z
    move-result v0
    if-nez v0, :L3
    const/4 v1, 1
  .line 10
    iput-boolean v1, p0, Lcn/manstep/phonemirrorBox/AutoStartService;->n:Z
  :L3
  .line 11
    new-instance v1, Ljava/lang/StringBuilder;
    invoke-direct { v1 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v3, "autoConnect2: sendAutoConnect: "
    invoke-virtual { v1, v3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    sget-object v3, Lcn/manstep/phonemirrorBox/p;->b:Ljava/lang/String;
    invoke-virtual { v1, v3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string v3, ", "
    invoke-virtual { v1, v3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v1, v0 }, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;
    invoke-virtual { v1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    invoke-static { v2, v0 }, Lcn/manstep/phonemirrorBox/util/s;->d(Ljava/lang/String;Ljava/lang/String;)V
  :L4
    return-void
.end method

.method private y()V
  .registers 3
  .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/AutoStartService;->h:Ljava/util/concurrent/ScheduledFuture;
    if-eqz v0, :L0
    const/4 v1, 1
  .line 2
    invoke-interface { v0, v1 }, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z
  :L0
    const/4 v0, -1
  .line 3
    iput v0, p0, Lcn/manstep/phonemirrorBox/AutoStartService;->j:I
    return-void
.end method

.method private z()V
  .registers 6
  .line 1
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "hideApp: "
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget-boolean v1, p0, Lcn/manstep/phonemirrorBox/AutoStartService;->p:Z
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    const-string v1, "AutoStartService"
    invoke-static { v1, v0 }, Lcn/manstep/phonemirrorBox/util/s;->d(Ljava/lang/String;Ljava/lang/String;)V
  .line 2
    iget-boolean v0, p0, Lcn/manstep/phonemirrorBox/AutoStartService;->p:Z
    if-eqz v0, :L1
    const/4 v0, 0
  .line 3
    iput-boolean v0, p0, Lcn/manstep/phonemirrorBox/AutoStartService;->p:Z
  .line 4
    invoke-virtual { p0 }, Landroid/app/Service;->getResources()Landroid/content/res/Resources;
    move-result-object v1
    const v2, 2131034126
    invoke-virtual { v1, v2 }, Landroid/content/res/Resources;->getBoolean(I)Z
    move-result v1
    if-nez v1, :L0
    goto :L1
  :L0
  .line 5
    new-instance v1, Landroid/content/Intent;
    const-string v2, "cn.manstep.phonemirror.MirrorService.INTENT_MSG_OUT"
    invoke-direct { v1, v2 }, Landroid/content/Intent;-><init>(Ljava/lang/String;)V
    const/4 v2, 3
    const-string v3, "WPARAM"
  .line 6
    invoke-virtual { v1, v3, v2 }, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;
    const-string v2, "LPARAM"
  .line 7
    invoke-virtual { v1, v2, v0 }, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;
  .line 8
    new-instance v0, Landroid/os/Handler;
    invoke-direct { v0 }, Landroid/os/Handler;-><init>()V
    new-instance v2, Lcn/manstep/phonemirrorBox/AutoStartService$e;
    invoke-direct { v2, p0, v1 }, Lcn/manstep/phonemirrorBox/AutoStartService$e;-><init>(Lcn/manstep/phonemirrorBox/AutoStartService;Landroid/content/Intent;)V
    const-wide/16 v3, 100
    invoke-virtual { v0, v2, v3, v4 }, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
  :L1
    return-void
.end method

.method public a(ILjava/lang/Object;)V
  .registers 4
    const/16 v0, 25
    if-eq p1, v0, :L0
    goto :L2
  :L0
  .line 1
    new-instance p1, Ljava/lang/StringBuilder;
    invoke-direct { p1 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v0, "on_Box_Phase: EVT_MANUAL_DISCONNECT_PHONE "
    invoke-virtual { p1, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { p1, p2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    invoke-virtual { p1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p1
    const-string v0, "AutoStartService"
    invoke-static { v0, p1 }, Lcn/manstep/phonemirrorBox/util/s;->d(Ljava/lang/String;Ljava/lang/String;)V
  .line 2
    invoke-direct { p0 }, Lcn/manstep/phonemirrorBox/AutoStartService;->z()V
    const/4 p1, 0
  .line 3
    iput-boolean p1, p0, Lcn/manstep/phonemirrorBox/AutoStartService;->c:Z
  .line 4
    check-cast p2, Ljava/lang/Integer;
    invoke-virtual { p2 }, Ljava/lang/Integer;->intValue()I
    move-result p2
    const/4 v0, 1
    if-ne v0, p2, :L1
    const/4 p1, 1
  :L1
    iput-boolean p1, p0, Lcn/manstep/phonemirrorBox/AutoStartService;->d:Z
  .line 5
    invoke-direct { p0 }, Lcn/manstep/phonemirrorBox/AutoStartService;->w()V
  :L2
    return-void
.end method

.method public c(I)V
  .registers 2
    return-void
.end method

.method public n(Lcn/manstep/phonemirrorBox/BoxInterface/d;)V
  .registers 2
    return-void
.end method

.method public o(I)V
  .registers 5
  .line 1
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "AutoStartService,on_Box_Phase: phase = ("
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0, p1 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    const-string v1, ")"
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-static { p1 }, Lcn/manstep/phonemirrorBox/BoxInterface/d;->q(I)Ljava/lang/String;
    move-result-object v1
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V
  .line 2
    iget v0, p0, Lcn/manstep/phonemirrorBox/AutoStartService;->b:I
    if-ne p1, v0, :L0
    return-void
  :L0
  .line 3
    iput p1, p0, Lcn/manstep/phonemirrorBox/AutoStartService;->b:I
    if-eqz p1, :L14
    const/16 v0, 15
    const/4 v1, 1
    const/4 v2, 0
    if-eq p1, v0, :L13
    const/16 v0, 25
    if-eq p1, v0, :L12
    const/16 v0, 200
    if-eq p1, v0, :L11
    const/16 v0, 210
    if-eq p1, v0, :L10
    const/4 v0, 2
    if-eq p1, v0, :L14
    const/4 v0, 3
    if-eq p1, v0, :L9
    const/4 v0, 4
    if-eq p1, v0, :L9
    const/16 v0, 12
    if-eq p1, v0, :L8
    const/16 v0, 13
    if-eq p1, v0, :L7
    const/16 v0, 35
    if-eq p1, v0, :L10
    const/16 v0, 36
    if-eq p1, v0, :L10
    const/16 v0, 123
    if-eq p1, v0, :L6
    const/16 v0, 124
    if-eq p1, v0, :L4
    packed-switch p1, :L16
    goto/16 :L15
  :L1
  .line 4
    iput-boolean v1, p0, Lcn/manstep/phonemirrorBox/AutoStartService;->o:Z
  .line 5
    invoke-direct { p0 }, Lcn/manstep/phonemirrorBox/AutoStartService;->w()V
    goto/16 :L15
  :L2
  .line 6
    iput-boolean v1, p0, Lcn/manstep/phonemirrorBox/AutoStartService;->f:Z
  .line 7
    invoke-direct { p0 }, Lcn/manstep/phonemirrorBox/AutoStartService;->w()V
    goto/16 :L15
  :L3
  .line 8
    new-instance p1, Landroid/os/Handler;
    invoke-direct { p1 }, Landroid/os/Handler;-><init>()V
    new-instance v0, Lcn/manstep/phonemirrorBox/AutoStartService$d;
    invoke-direct { v0, p0 }, Lcn/manstep/phonemirrorBox/AutoStartService$d;-><init>(Lcn/manstep/phonemirrorBox/AutoStartService;)V
    const-wide/16 v1, 5000
    invoke-virtual { p1, v0, v1, v2 }, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    goto/16 :L15
  :L4
  .line 9
    sget-object p1, Lcn/manstep/phonemirrorBox/p;->b:Ljava/lang/String;
    invoke-static { p1 }, Lcn/manstep/phonemirrorBox/p;->d(Ljava/lang/String;)Z
    move-result p1
    if-nez p1, :L5
  .line 10
    new-instance p1, Ljava/lang/StringBuilder;
    invoke-direct { p1 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v0, "AutoStartService,on_Box_Phase: Error Version: "
    invoke-virtual { p1, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    sget-object v0, Lcn/manstep/phonemirrorBox/p;->b:Ljava/lang/String;
    invoke-virtual { p1, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { p1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p1
    invoke-static { p1 }, Lcn/manstep/phonemirrorBox/util/s;->e(Ljava/lang/String;)V
  .line 11
    invoke-direct { p0 }, Lcn/manstep/phonemirrorBox/AutoStartService;->C()V
    goto :L15
  :L5
  .line 12
    iget-boolean p1, p0, Lcn/manstep/phonemirrorBox/AutoStartService;->n:Z
    if-eqz p1, :L15
  .line 13
    iput-boolean v2, p0, Lcn/manstep/phonemirrorBox/AutoStartService;->n:Z
  .line 14
    iput-boolean v1, p0, Lcn/manstep/phonemirrorBox/AutoStartService;->k:Z
  .line 15
    invoke-direct { p0 }, Lcn/manstep/phonemirrorBox/AutoStartService;->w()V
    goto :L15
  :L6
  .line 16
    invoke-direct { p0 }, Lcn/manstep/phonemirrorBox/AutoStartService;->C()V
    goto :L15
  :L7
  .line 17
    iput-boolean v2, p0, Lcn/manstep/phonemirrorBox/AutoStartService;->o:Z
  .line 18
    iput-boolean v1, p0, Lcn/manstep/phonemirrorBox/AutoStartService;->k:Z
  .line 19
    iput-boolean v2, p0, Lcn/manstep/phonemirrorBox/AutoStartService;->d:Z
    goto :L15
  :L8
  .line 20
    iput-boolean v2, p0, Lcn/manstep/phonemirrorBox/AutoStartService;->c:Z
  .line 21
    iput-boolean v2, p0, Lcn/manstep/phonemirrorBox/AutoStartService;->e:Z
  .line 22
    invoke-direct { p0 }, Lcn/manstep/phonemirrorBox/AutoStartService;->y()V
    goto :L15
  :L9
  .line 23
    invoke-static { }, Lcn/manstep/phonemirrorBox/BoxInterface/d;->i()Z
    move-result p1
    if-eqz p1, :L15
  .line 24
    iput-boolean v2, p0, Lcn/manstep/phonemirrorBox/AutoStartService;->o:Z
  .line 25
    invoke-direct { p0, v1 }, Lcn/manstep/phonemirrorBox/AutoStartService;->G(I)V
  .line 26
    iput-boolean v2, p0, Lcn/manstep/phonemirrorBox/AutoStartService;->d:Z
    goto :L15
  :L10
  .line 27
    iget-boolean p1, p0, Lcn/manstep/phonemirrorBox/AutoStartService;->n:Z
    if-eqz p1, :L15
  .line 28
    iput-boolean v2, p0, Lcn/manstep/phonemirrorBox/AutoStartService;->n:Z
  .line 29
    iput-boolean v1, p0, Lcn/manstep/phonemirrorBox/AutoStartService;->k:Z
  .line 30
    invoke-direct { p0 }, Lcn/manstep/phonemirrorBox/AutoStartService;->w()V
    goto :L15
  :L11
  .line 31
    iput-boolean v1, p0, Lcn/manstep/phonemirrorBox/AutoStartService;->e:Z
  .line 32
    iput-boolean v2, p0, Lcn/manstep/phonemirrorBox/AutoStartService;->f:Z
  .line 33
    invoke-direct { p0 }, Lcn/manstep/phonemirrorBox/AutoStartService;->w()V
    goto :L15
  :L12
  .line 34
    invoke-direct { p0 }, Lcn/manstep/phonemirrorBox/AutoStartService;->z()V
  .line 35
    iput-boolean v2, p0, Lcn/manstep/phonemirrorBox/AutoStartService;->c:Z
  .line 36
    iput-boolean v1, p0, Lcn/manstep/phonemirrorBox/AutoStartService;->d:Z
  .line 37
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/AutoStartService;->m:Landroid/os/CountDownTimer;
    invoke-virtual { p1 }, Landroid/os/CountDownTimer;->cancel()V
    goto :L15
  :L13
  .line 38
    iput-boolean v1, p0, Lcn/manstep/phonemirrorBox/AutoStartService;->c:Z
  .line 39
    iput-boolean v2, p0, Lcn/manstep/phonemirrorBox/AutoStartService;->f:Z
  .line 40
    iput-boolean v1, p0, Lcn/manstep/phonemirrorBox/AutoStartService;->p:Z
  .line 41
    iput-boolean v1, p0, Lcn/manstep/phonemirrorBox/AutoStartService;->l:Z
  .line 42
    invoke-direct { p0 }, Lcn/manstep/phonemirrorBox/AutoStartService;->H()V
    goto :L15
  :L14
  .line 43
    invoke-direct { p0 }, Lcn/manstep/phonemirrorBox/AutoStartService;->D()V
  .line 44
    invoke-direct { p0 }, Lcn/manstep/phonemirrorBox/AutoStartService;->y()V
  :L15
    return-void
  :L16
  .packed-switch 202
    :L3
    :L2
    :L1
  .end packed-switch
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
  .registers 2
    const-string p1, "AutoStartService,onBind."
  .line 1
    invoke-static { p1 }, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V
  .line 2
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/AutoStartService;->s:Lcn/manstep/phonemirrorBox/AutoStartService$h;
    return-object p1
.end method

.method public onCreate()V
  .registers 4
  .line 1
    invoke-super { p0 }, Landroid/app/Service;->onCreate()V
    const-string v0, "AutoStartService,onCreate: "
  .line 2
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V
  .line 3
    new-instance v0, Lcn/manstep/phonemirrorBox/AutoStartService$h;
    invoke-direct { v0, p0 }, Lcn/manstep/phonemirrorBox/AutoStartService$h;-><init>(Lcn/manstep/phonemirrorBox/AutoStartService;)V
    iput-object v0, p0, Lcn/manstep/phonemirrorBox/AutoStartService;->s:Lcn/manstep/phonemirrorBox/AutoStartService$h;
  .line 4
    new-instance v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;
    new-instance v1, Lcn/manstep/phonemirrorBox/h0/b;
    invoke-direct { v1 }, Lcn/manstep/phonemirrorBox/h0/b;-><init>()V
    const-string v2, "AutoStart-%d"
    invoke-virtual { v1, v2 }, Lcn/manstep/phonemirrorBox/h0/b;->f(Ljava/lang/String;)Lcn/manstep/phonemirrorBox/h0/b;
    invoke-virtual { v1 }, Lcn/manstep/phonemirrorBox/h0/b;->b()Ljava/util/concurrent/ThreadFactory;
    move-result-object v1
    const/4 v2, 1
    invoke-direct { v0, v2, v1 }, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(ILjava/util/concurrent/ThreadFactory;)V
    iput-object v0, p0, Lcn/manstep/phonemirrorBox/AutoStartService;->g:Ljava/util/concurrent/ScheduledExecutorService;
  .line 5
    invoke-direct { p0 }, Lcn/manstep/phonemirrorBox/AutoStartService;->E()V
    return-void
.end method

.method public onDestroy()V
  .registers 3
    const-string v0, "AutoStartService"
    const-string v1, "onDestroy: ####"
  .line 1
    invoke-static { v0, v1 }, Lcn/manstep/phonemirrorBox/util/s;->f(Ljava/lang/String;Ljava/lang/String;)V
  .line 2
    invoke-static { p0 }, Lcn/manstep/phonemirrorBox/v0/e;->S(Lcn/manstep/phonemirrorBox/BoxInterface/d$g;)V
  .line 3
    invoke-direct { p0 }, Lcn/manstep/phonemirrorBox/AutoStartService;->y()V
  .line 4
    invoke-direct { p0 }, Lcn/manstep/phonemirrorBox/AutoStartService;->I()V
  .line 5
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/AutoStartService;->m:Landroid/os/CountDownTimer;
    invoke-virtual { v0 }, Landroid/os/CountDownTimer;->cancel()V
  .line 6
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/AutoStartService;->g:Ljava/util/concurrent/ScheduledExecutorService;
    const/4 v1, 0
    if-eqz v0, :L0
  .line 7
    invoke-interface { v0 }, Ljava/util/concurrent/ScheduledExecutorService;->shutdown()V
  .line 8
    iput-object v1, p0, Lcn/manstep/phonemirrorBox/AutoStartService;->g:Ljava/util/concurrent/ScheduledExecutorService;
  :L0
  .line 9
    iput-object v1, p0, Lcn/manstep/phonemirrorBox/AutoStartService;->s:Lcn/manstep/phonemirrorBox/AutoStartService$h;
  .line 10
    invoke-super { p0 }, Landroid/app/Service;->onDestroy()V
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
  .registers 8
  .line 1
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "AutoStartService,onStartCommand: mInitialized="
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget-boolean v1, p0, Lcn/manstep/phonemirrorBox/AutoStartService;->i:Z
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V
  .line 2
    invoke-static { p0 }, Lcn/manstep/phonemirrorBox/v0/e;->M(Lcn/manstep/phonemirrorBox/BoxInterface/d$g;)Lcn/manstep/phonemirrorBox/BoxInterface/d;
  .line 3
    iget-boolean v0, p0, Lcn/manstep/phonemirrorBox/AutoStartService;->i:Z
    if-nez v0, :L1
    if-eqz p1, :L1
    const-string v0, "starter"
  .line 4
    invoke-virtual { p1, v0 }, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v0
  .line 5
    new-instance v1, Ljava/lang/StringBuilder;
    invoke-direct { v1 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v2, "AutoStartService,onStartCommand: starter="
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v1, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v1
    invoke-static { v1 }, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V
  .line 6
    invoke-static { v0 }, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    move-result v1
    if-eqz v1, :L0
  .line 7
    invoke-direct { p0 }, Lcn/manstep/phonemirrorBox/AutoStartService;->A()V
    goto :L1
  :L0
    const-string v1, "Main1Activity"
  .line 8
    invoke-virtual { v1, v0 }, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    move-result v0
    if-eqz v0, :L1
  .line 9
    new-instance v0, Landroid/os/Handler;
    invoke-direct { v0 }, Landroid/os/Handler;-><init>()V
    new-instance v1, Lcn/manstep/phonemirrorBox/AutoStartService$b;
    invoke-direct { v1, p0 }, Lcn/manstep/phonemirrorBox/AutoStartService$b;-><init>(Lcn/manstep/phonemirrorBox/AutoStartService;)V
    const-wide/16 v2, 3000
    invoke-virtual { v0, v1, v2, v3 }, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
  :L1
  .line 10
    invoke-direct { p0 }, Lcn/manstep/phonemirrorBox/AutoStartService;->E()V
  .line 11
    invoke-super { p0, p1, p2, p3 }, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I
    move-result p1
    return p1
.end method

.method public onUnbind(Landroid/content/Intent;)Z
  .registers 3
    const-string v0, "AutoStartService,onUnbind."
  .line 1
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V
  .line 2
    invoke-super { p0, p1 }, Landroid/app/Service;->onUnbind(Landroid/content/Intent;)Z
    move-result p1
    return p1
.end method

.method public v([B)V
  .registers 2
    return-void
.end method
