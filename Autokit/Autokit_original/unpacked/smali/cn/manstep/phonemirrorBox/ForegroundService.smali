.class public Lcn/manstep/phonemirrorBox/ForegroundService;
.super Landroid/app/Service;
.source "SourceFile"

.method public constructor <init>()V
  .registers 1
  .line 1
    invoke-direct { p0 }, Landroid/app/Service;-><init>()V
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
    const-string v0, "ForegroundService,onCreate: ######"
  .line 2
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V
    return-void
.end method

.method public onDestroy()V
  .registers 2
  .line 1
    invoke-super { p0 }, Landroid/app/Service;->onDestroy()V
    const-string v0, "ForegroundService,onLowMemory: ######"
  .line 2
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V
    return-void
.end method

.method public onLowMemory()V
  .registers 2
  .line 1
    invoke-super { p0 }, Landroid/app/Service;->onLowMemory()V
    const-string v0, "ForegroundService,onLowMemory: ######"
  .line 2
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
  .registers 10
  .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    const/4 v1, 1
    const/16 v2, 26
    if-ge v0, v2, :L0
  .line 2
    new-instance v0, Landroid/app/Notification;
    invoke-direct { v0 }, Landroid/app/Notification;-><init>()V
    invoke-virtual { p0, v1, v0 }, Landroid/app/Service;->startForeground(ILandroid/app/Notification;)V
    goto :L1
  :L0
  .line 3
    new-instance v0, Landroid/content/Intent;
    const-class v2, Lcn/manstep/phonemirrorBox/MainActivity;
    invoke-direct { v0, p0, v2 }, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
    const/high16 v2, 4096
  .line 4
    invoke-virtual { v0, v2 }, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;
    const/4 v2, 0
  .line 5
    invoke-static { p0, v2, v0, v2 }, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;
    move-result-object v0
    const-string v2, "notification"
  .line 6
    invoke-virtual { p0, v2 }, Landroid/app/Service;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    move-result-object v2
    check-cast v2, Landroid/app/NotificationManager;
  .line 7
    new-instance v3, Landroid/app/NotificationChannel;
    const-string v4, "ForegroundService"
    const-string v5, "AutoKit"
    invoke-direct { v3, v4, v5, v1 }, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V
    if-eqz v2, :L1
  .line 8
    invoke-virtual { v2, v3 }, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V
  .line 9
    new-instance v2, Landroid/app/Notification$Builder;
    invoke-direct { v2, p0, v4 }, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V
    const v3, 2131230907
  .line 10
    invoke-virtual { v2, v3 }, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;
    move-result-object v2
    sget-object v3, Lcn/manstep/phonemirrorBox/p;->a:Ljava/lang/String;
  .line 11
    invoke-virtual { v2, v3 }, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;
    move-result-object v2
  .line 12
    invoke-virtual { p0 }, Landroid/app/Service;->getResources()Landroid/content/res/Resources;
    move-result-object v3
    const v4, 2131689573
    invoke-virtual { v3, v4 }, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    move-result-object v3
    invoke-virtual { v2, v3 }, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;
    move-result-object v2
  .line 13
    invoke-virtual { v2, v0 }, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;
    move-result-object v0
  .line 14
    invoke-virtual { v0 }, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;
    move-result-object v0
  .line 15
    invoke-virtual { p0, v1, v0 }, Landroid/app/Service;->startForeground(ILandroid/app/Notification;)V
  :L1
  .line 16
    invoke-super { p0, p1, p2, p3 }, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I
    move-result p1
    return p1
.end method

.method public onTrimMemory(I)V
  .registers 4
  .line 1
    invoke-super { p0, p1 }, Landroid/app/Service;->onTrimMemory(I)V
  .line 2
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "ForegroundService,onTrimMemory: level = "
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0, p1 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p1
    invoke-static { p1 }, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V
    return-void
.end method
