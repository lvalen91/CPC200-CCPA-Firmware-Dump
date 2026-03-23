.class public Lcn/manstep/phonemirrorBox/AutoStartReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"

.method public constructor <init>()V
  .registers 1
  .line 1
    invoke-direct { p0 }, Landroid/content/BroadcastReceiver;-><init>()V
    return-void
.end method

.method private a(Landroid/content/Context;)V
  .catch Ljava/lang/Exception; { :L0 .. :L2 } :L2
  .catch Ljava/lang/Error; { :L0 .. :L2 } :L2
  .registers 4
    const-string v0, "AutoStartReceiver,startAutoStartService: Start AutoStartService"
  .line 1
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V
  :L0
  .line 2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v1, 26
    if-lt v0, v1, :L1
  .line 3
    new-instance v0, Landroid/content/Intent;
    const-class v1, Lcn/manstep/phonemirrorBox/AutoStartService;
    invoke-direct { v0, p1, v1 }, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
    invoke-virtual { p1, v0 }, Landroid/content/Context;->startForegroundService(Landroid/content/Intent;)Landroid/content/ComponentName;
    goto :L2
  :L1
  .line 4
    new-instance v0, Landroid/content/Intent;
    const-class v1, Lcn/manstep/phonemirrorBox/AutoStartService;
    invoke-direct { v0, p1, v1 }, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
    invoke-virtual { p1, v0 }, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
  :L2
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
  .catchall { :L0 .. :L1 } :L2
  .catchall { :L4 .. :L5 } :L2
  .catch Ljava/lang/Exception; { :L9 .. :L13 } :L10
  .registers 10
  .line 1
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "AutoStartReceiver,onReceive: "
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { p2 }, Landroid/content/Intent;->toString()Ljava/lang/String;
    move-result-object v1
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V
  .line 2
    invoke-virtual { p2 }, Landroid/content/Intent;->getAction()Ljava/lang/String;
    move-result-object p2
    const-string v0, "android.intent.action.BOOT_COMPLETED"
    invoke-virtual { p2, v0 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result p2
    if-eqz p2, :L15
  .line 3
    invoke-static { }, Lcn/manstep/phonemirrorBox/b0;->i()Lcn/manstep/phonemirrorBox/b0;
    move-result-object p2
    const-string v0, "BootAutoStart"
    const/4 v1, 0
    invoke-virtual { p2, v0, v1 }, Lcn/manstep/phonemirrorBox/b0;->o(Ljava/lang/String;Z)Z
    move-result p2
  .line 4
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v2, "AutoStartReceiver,onReceive: Intent.ACTION_BOOT_COMPLETED: "
    invoke-virtual { v0, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-static { }, Landroid/os/SystemClock;->elapsedRealtime()J
    move-result-wide v2
    invoke-virtual { v0, v2, v3 }, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
    const-string v2, ","
    invoke-virtual { v0, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0, p2 }, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V
  .line 5
    invoke-virtual { p1 }, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;
    move-result-object v0
    invoke-static/range { v0 .. v0 }, Lcom/stub/StubApp;->getOrigApplicationContext(Landroid/content/Context;)Landroid/content/Context;
    move-result-object v0
    invoke-direct { p0, v0 }, Lcn/manstep/phonemirrorBox/AutoStartReceiver;->a(Landroid/content/Context;)V
    const/high16 v0, 4096
    if-eqz p2, :L3
  .line 6
    new-instance p2, Landroid/content/Intent;
    const-class v2, Lcn/manstep/phonemirrorBox/MainActivity;
    invoke-direct { p2, p1, v2 }, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
  .line 7
    invoke-virtual { p2, v0 }, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;
  :L0
  .line 8
    invoke-virtual { p1, p2 }, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
  :L1
    goto :L5
  :L2
    nop
    goto :L5
  :L3
  .line 9
    invoke-static { }, Lcn/manstep/phonemirrorBox/u;->z()Lcn/manstep/phonemirrorBox/u;
    move-result-object p2
    invoke-virtual { p2 }, Lcn/manstep/phonemirrorBox/u;->N()Z
    move-result p2
    if-eqz p2, :L5
  .line 10
    new-instance p2, Landroid/content/Intent;
    const-class v2, Lcn/manstep/phonemirrorBox/Main1Activity;
    invoke-direct { p2, p1, v2 }, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
  .line 11
    invoke-virtual { p2, v0 }, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;
  :L4
  .line 12
    invoke-virtual { p1, p2 }, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
  :L5
  .line 13
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v0, 26
    if-lt p2, v0, :L6
    return-void
  :L6
    const-string p2, "notification"
  .line 14
    invoke-virtual { p1, p2 }, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    move-result-object p2
    check-cast p2, Landroid/app/NotificationManager;
  .line 15
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v2, 24
    if-lt v0, v2, :L7
    invoke-virtual { p2 }, Landroid/app/NotificationManager;->isNotificationPolicyAccessGranted()Z
    move-result v0
    if-nez v0, :L7
    return-void
  :L7
    const-string v0, "audio"
  .line 16
    invoke-virtual { p1, v0 }, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    move-result-object p1
    check-cast p1, Landroid/media/AudioManager;
    if-eqz p1, :L15
  .line 17
    invoke-static { }, Lcn/manstep/phonemirrorBox/b0;->i()Lcn/manstep/phonemirrorBox/b0;
    move-result-object v0
    const-string v3, "STREAM_MUSIC"
    const/4 v4, -1
    invoke-virtual { v0, v3, v4 }, Lcn/manstep/phonemirrorBox/b0;->m(Ljava/lang/String;I)I
    move-result v0
  .line 18
    invoke-static { }, Lcn/manstep/phonemirrorBox/b0;->i()Lcn/manstep/phonemirrorBox/b0;
    move-result-object v3
    const-string v5, "STREAM_RING"
    invoke-virtual { v3, v5, v4 }, Lcn/manstep/phonemirrorBox/b0;->m(Ljava/lang/String;I)I
    move-result v3
  .line 19
    invoke-static { }, Lcn/manstep/phonemirrorBox/b0;->i()Lcn/manstep/phonemirrorBox/b0;
    move-result-object v5
    const-string v6, "STREAM_VOICE_CALL"
    invoke-virtual { v5, v6, v4 }, Lcn/manstep/phonemirrorBox/b0;->m(Ljava/lang/String;I)I
    move-result v5
  .line 20
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I
    if-lt v6, v2, :L8
    invoke-virtual { p2 }, Landroid/app/NotificationManager;->isNotificationPolicyAccessGranted()Z
    move-result p2
    if-nez p2, :L8
    return-void
  :L8
    const/4 p2, 4
    if-eq v0, v4, :L11
    const/4 v2, 3
  :L9
  .line 21
    invoke-virtual { p1, v2, v0, p2 }, Landroid/media/AudioManager;->setStreamVolume(III)V
    goto :L11
  :L10
    move-exception p1
    goto :L14
  :L11
    if-eq v3, v4, :L12
    const/4 v0, 2
  .line 22
    invoke-virtual { p1, v0, v3, p2 }, Landroid/media/AudioManager;->setStreamVolume(III)V
  :L12
    if-eq v5, v4, :L15
  .line 23
    invoke-virtual { p1, v1, v5, p2 }, Landroid/media/AudioManager;->setStreamVolume(III)V
  :L13
    goto :L15
  :L14
  .line 24
    new-instance p2, Ljava/lang/StringBuilder;
    invoke-direct { p2 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v0, "AutoStartReceiver,\n"
    invoke-virtual { p2, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-static { p1 }, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;
    move-result-object p1
    invoke-virtual { p2, p1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { p2 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p1
    invoke-static { p1 }, Lcn/manstep/phonemirrorBox/util/s;->e(Ljava/lang/String;)V
  :L15
    return-void
.end method
