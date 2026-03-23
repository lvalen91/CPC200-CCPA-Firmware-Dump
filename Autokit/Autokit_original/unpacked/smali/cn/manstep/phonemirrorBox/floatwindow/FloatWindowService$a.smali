.class Lcn/manstep/phonemirrorBox/floatwindow/FloatWindowService$a;
.super Ljava/lang/Object;
.implements Ljava/lang/Runnable;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingMethod;
  value = Lcn/manstep/phonemirrorBox/floatwindow/FloatWindowService;->onStartCommand(Landroid/content/Intent;II)I
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = null
.end annotation

.field final synthetic b:Lcn/manstep/phonemirrorBox/floatwindow/FloatWindowService;

.method constructor <init>(Lcn/manstep/phonemirrorBox/floatwindow/FloatWindowService;)V
  .registers 2
  .line 1
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/floatwindow/FloatWindowService$a;->b:Lcn/manstep/phonemirrorBox/floatwindow/FloatWindowService;
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public run()V
  .registers 3
  .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/floatwindow/FloatWindowService$a;->b:Lcn/manstep/phonemirrorBox/floatwindow/FloatWindowService;
    invoke-virtual { v0 }, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;
    move-result-object v0
    invoke-static/range { v0 .. v0 }, Lcom/stub/StubApp;->getOrigApplicationContext(Landroid/content/Context;)Landroid/content/Context;
    move-result-object v0
    invoke-static { v0 }, Landroid/provider/Settings;->canDrawOverlays(Landroid/content/Context;)Z
    move-result v0
    if-eqz v0, :L0
  .line 2
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/floatwindow/FloatWindowService$a;->b:Lcn/manstep/phonemirrorBox/floatwindow/FloatWindowService;
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/floatwindow/FloatWindowService;->l(Lcn/manstep/phonemirrorBox/floatwindow/FloatWindowService;)Landroid/os/Handler;
    move-result-object v0
    const/4 v1, 1
    invoke-virtual { v0, v1 }, Landroid/os/Handler;->sendEmptyMessage(I)Z
  :L0
    return-void
.end method
