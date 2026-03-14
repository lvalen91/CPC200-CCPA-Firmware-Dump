.class Lcn/manstep/phonemirrorBox/MyApplication$a;
.super Ljava/lang/Object;
.implements Ljava/lang/Runnable;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingMethod;
  value = Lcn/manstep/phonemirrorBox/MyApplication;->k()V
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = null
.end annotation

.field final synthetic b:Lcn/manstep/phonemirrorBox/MyApplication;

.method constructor <init>(Lcn/manstep/phonemirrorBox/MyApplication;)V
  .registers 2
  .line 1
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/MyApplication$a;->b:Lcn/manstep/phonemirrorBox/MyApplication;
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public run()V
  .catch Ljava/lang/Exception; { :L0 .. :L1 } :L1
  .catch Ljava/lang/Exception; { :L1 .. :L3 } :L3
  .catch Ljava/lang/Error; { :L1 .. :L3 } :L3
  .registers 5
  :L0
  .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/MyApplication$a;->b:Lcn/manstep/phonemirrorBox/MyApplication;
    new-instance v1, Landroid/content/Intent;
    iget-object v2, p0, Lcn/manstep/phonemirrorBox/MyApplication$a;->b:Lcn/manstep/phonemirrorBox/MyApplication;
    const-class v3, Lcn/manstep/phonemirrorBox/service/BackgroundService;
    invoke-direct { v1, v2, v3 }, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
    invoke-virtual { v0, v1 }, Landroid/app/Application;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
  :L1
  .line 2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v1, 26
    if-lt v0, v1, :L2
  .line 3
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/MyApplication$a;->b:Lcn/manstep/phonemirrorBox/MyApplication;
    new-instance v1, Landroid/content/Intent;
    iget-object v2, p0, Lcn/manstep/phonemirrorBox/MyApplication$a;->b:Lcn/manstep/phonemirrorBox/MyApplication;
    const-class v3, Lcn/manstep/phonemirrorBox/AutoStartService;
    invoke-direct { v1, v2, v3 }, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
    invoke-virtual { v0, v1 }, Landroid/app/Application;->startForegroundService(Landroid/content/Intent;)Landroid/content/ComponentName;
    goto :L3
  :L2
  .line 4
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/MyApplication$a;->b:Lcn/manstep/phonemirrorBox/MyApplication;
    new-instance v1, Landroid/content/Intent;
    iget-object v2, p0, Lcn/manstep/phonemirrorBox/MyApplication$a;->b:Lcn/manstep/phonemirrorBox/MyApplication;
    const-class v3, Lcn/manstep/phonemirrorBox/AutoStartService;
    invoke-direct { v1, v2, v3 }, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
    invoke-virtual { v0, v1 }, Landroid/app/Application;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
  :L3
  .line 5
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/MyApplication$a;->b:Lcn/manstep/phonemirrorBox/MyApplication;
    new-instance v1, Landroid/content/Intent;
    const-string v2, "cn.manstep.phonemirrorBox.STARTED"
    invoke-direct { v1, v2 }, Landroid/content/Intent;-><init>(Ljava/lang/String;)V
    invoke-virtual { v0, v1 }, Landroid/app/Application;->sendBroadcast(Landroid/content/Intent;)V
    return-void
.end method
