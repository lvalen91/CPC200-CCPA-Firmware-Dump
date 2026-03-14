.class Lcn/manstep/phonemirrorBox/floatwindow/FloatWindowService$g;
.super Ljava/util/TimerTask;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Lcn/manstep/phonemirrorBox/floatwindow/FloatWindowService;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 2
  name = "g"
.end annotation

.field final synthetic b:Lcn/manstep/phonemirrorBox/floatwindow/FloatWindowService;

.method private constructor <init>(Lcn/manstep/phonemirrorBox/floatwindow/FloatWindowService;)V
  .registers 2
  .line 1
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/floatwindow/FloatWindowService$g;->b:Lcn/manstep/phonemirrorBox/floatwindow/FloatWindowService;
    invoke-direct { p0 }, Ljava/util/TimerTask;-><init>()V
    return-void
.end method

.method synthetic constructor <init>(Lcn/manstep/phonemirrorBox/floatwindow/FloatWindowService;Lcn/manstep/phonemirrorBox/floatwindow/FloatWindowService$a;)V
  .registers 3
  .line 2
    invoke-direct { p0, p1 }, Lcn/manstep/phonemirrorBox/floatwindow/FloatWindowService$g;-><init>(Lcn/manstep/phonemirrorBox/floatwindow/FloatWindowService;)V
    return-void
.end method

.method public run()V
  .registers 5
  .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v1, 23
    if-lt v0, v1, :L0
  .line 2
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/floatwindow/FloatWindowService$g;->b:Lcn/manstep/phonemirrorBox/floatwindow/FloatWindowService;
    invoke-static { v0 }, Landroid/provider/Settings;->canDrawOverlays(Landroid/content/Context;)Z
    move-result v0
    if-nez v0, :L0
    return-void
  :L0
  .line 3
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/floatwindow/FloatWindowService$g;->b:Lcn/manstep/phonemirrorBox/floatwindow/FloatWindowService;
    invoke-virtual { v0 }, Landroid/app/Service;->getResources()Landroid/content/res/Resources;
    move-result-object v0
    const v1, 2131034128
    invoke-virtual { v0, v1 }, Landroid/content/res/Resources;->getBoolean(I)Z
    move-result v0
    if-eqz v0, :L1
  .line 4
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/floatwindow/FloatWindowService$g;->b:Lcn/manstep/phonemirrorBox/floatwindow/FloatWindowService;
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/floatwindow/FloatWindowService;->m(Lcn/manstep/phonemirrorBox/floatwindow/FloatWindowService;)Lcn/manstep/phonemirrorBox/util/u;
    move-result-object v0
    new-instance v1, Lcn/manstep/phonemirrorBox/floatwindow/FloatWindowService$g$a;
    invoke-direct { v1, p0 }, Lcn/manstep/phonemirrorBox/floatwindow/FloatWindowService$g$a;-><init>(Lcn/manstep/phonemirrorBox/floatwindow/FloatWindowService$g;)V
    const-wide/16 v2, 2000
    invoke-virtual { v0, v1, v2, v3 }, Lcn/manstep/phonemirrorBox/util/u;->b(Ljava/lang/Runnable;J)V
    goto :L2
  :L1
  .line 5
    invoke-static { }, Lcn/manstep/phonemirrorBox/BoxInterface/d;->G()Z
    move-result v0
    if-nez v0, :L2
  .line 6
    invoke-static { }, Lcn/manstep/phonemirrorBox/floatwindow/e;->g()Lcn/manstep/phonemirrorBox/floatwindow/e;
    move-result-object v0
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/floatwindow/FloatWindowService$g;->b:Lcn/manstep/phonemirrorBox/floatwindow/FloatWindowService;
    invoke-virtual { v0, v1 }, Lcn/manstep/phonemirrorBox/floatwindow/e;->t(Landroid/content/Context;)V
    return-void
  :L2
  .line 7
    sget-object v0, Lcn/manstep/phonemirrorBox/BoxInterface/d;->l:Lcn/manstep/phonemirrorBox/BoxInterface/f;
    if-eqz v0, :L3
  .line 8
    invoke-virtual { v0 }, Lcn/manstep/phonemirrorBox/BoxInterface/f;->J()Lcn/manstep/phonemirrorBox/q0/g;
    move-result-object v0
    if-eqz v0, :L3
    sget-object v0, Lcn/manstep/phonemirrorBox/BoxInterface/d;->l:Lcn/manstep/phonemirrorBox/BoxInterface/f;
  .line 9
    invoke-virtual { v0 }, Lcn/manstep/phonemirrorBox/BoxInterface/f;->J()Lcn/manstep/phonemirrorBox/q0/g;
    move-result-object v0
    invoke-interface { v0 }, Lcn/manstep/phonemirrorBox/q0/g;->k()Z
    move-result v0
    if-nez v0, :L3
  .line 10
    invoke-static { }, Lcn/manstep/phonemirrorBox/floatwindow/e;->g()Lcn/manstep/phonemirrorBox/floatwindow/e;
    move-result-object v0
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/floatwindow/FloatWindowService$g;->b:Lcn/manstep/phonemirrorBox/floatwindow/FloatWindowService;
    invoke-virtual { v0, v1 }, Lcn/manstep/phonemirrorBox/floatwindow/e;->j(Landroid/content/Context;)V
  :L3
    return-void
.end method
