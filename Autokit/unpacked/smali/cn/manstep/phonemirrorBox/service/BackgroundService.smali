.class public Lcn/manstep/phonemirrorBox/service/BackgroundService;
.super Landroid/app/Service;
.source "SourceFile"

.annotation system Ldalvik/annotation/MemberClasses;
  value = {
    Lcn/manstep/phonemirrorBox/service/BackgroundService$d;,
    Lcn/manstep/phonemirrorBox/service/BackgroundService$b;,
    Lcn/manstep/phonemirrorBox/service/BackgroundService$c;
  }
.end annotation

.field private b:Lcn/manstep/phonemirrorBox/service/BackgroundService$d;

.method public constructor <init>()V
  .registers 1
  .line 1
    invoke-direct { p0 }, Landroid/app/Service;-><init>()V
    return-void
.end method

.method static synthetic a(Lcn/manstep/phonemirrorBox/service/BackgroundService;I)Z
  .registers 2
  .line 1
    invoke-direct { p0, p1 }, Lcn/manstep/phonemirrorBox/service/BackgroundService;->b(I)Z
    move-result p0
    return p0
.end method

.method private b(I)Z
  .registers 4
  .line 1
    invoke-virtual { p0 }, Landroid/app/Service;->getPackageManager()Landroid/content/pm/PackageManager;
    move-result-object v0
  .line 2
    invoke-virtual { v0, p1 }, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;
    move-result-object p1
  .line 3
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "hasPermission: callingPackageName="
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0, p1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p1
    const-string v0, "BackgroundService"
    invoke-static { v0, p1 }, Lcn/manstep/phonemirrorBox/util/s;->i(Ljava/lang/String;Ljava/lang/String;)V
    const/4 p1, 1
    return p1
.end method

.method private c()V
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
    const-string v4, "BackgroundService"
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

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
  .registers 2
  .line 1
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/service/BackgroundService;->b:Lcn/manstep/phonemirrorBox/service/BackgroundService$d;
    invoke-virtual { p1 }, Lcn/manstep/phonemirrorBox/r0/d$a;->asBinder()Landroid/os/IBinder;
    return-object p1
.end method

.method public onCreate()V
  .registers 3
  .line 1
    invoke-super { p0 }, Landroid/app/Service;->onCreate()V
  .line 2
    new-instance v0, Lcn/manstep/phonemirrorBox/service/BackgroundService$d;
    const/4 v1, 0
    invoke-direct { v0, p0, v1 }, Lcn/manstep/phonemirrorBox/service/BackgroundService$d;-><init>(Lcn/manstep/phonemirrorBox/service/BackgroundService;Lcn/manstep/phonemirrorBox/service/BackgroundService$a;)V
    iput-object v0, p0, Lcn/manstep/phonemirrorBox/service/BackgroundService;->b:Lcn/manstep/phonemirrorBox/service/BackgroundService$d;
  .line 3
    invoke-direct { p0 }, Lcn/manstep/phonemirrorBox/service/BackgroundService;->c()V
    return-void
.end method
