.class Lcn/manstep/phonemirrorBox/floatwindow/FloatWindowService$g$a;
.super Ljava/lang/Object;
.implements Ljava/lang/Runnable;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingMethod;
  value = Lcn/manstep/phonemirrorBox/floatwindow/FloatWindowService$g;->run()V
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = null
.end annotation

.field final synthetic b:Lcn/manstep/phonemirrorBox/floatwindow/FloatWindowService$g;

.method constructor <init>(Lcn/manstep/phonemirrorBox/floatwindow/FloatWindowService$g;)V
  .registers 2
  .line 1
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/floatwindow/FloatWindowService$g$a;->b:Lcn/manstep/phonemirrorBox/floatwindow/FloatWindowService$g;
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public run()V
  .registers 3
  .line 1
    invoke-static { }, Lcn/manstep/phonemirrorBox/BoxInterface/d;->i()Z
    move-result v0
    if-eqz v0, :L0
  .line 2
    invoke-static { }, Lcn/manstep/phonemirrorBox/floatwindow/e;->g()Lcn/manstep/phonemirrorBox/floatwindow/e;
    move-result-object v0
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/floatwindow/FloatWindowService$g$a;->b:Lcn/manstep/phonemirrorBox/floatwindow/FloatWindowService$g;
    iget-object v1, v1, Lcn/manstep/phonemirrorBox/floatwindow/FloatWindowService$g;->b:Lcn/manstep/phonemirrorBox/floatwindow/FloatWindowService;
    invoke-virtual { v0, v1 }, Lcn/manstep/phonemirrorBox/floatwindow/e;->t(Landroid/content/Context;)V
    goto :L1
  :L0
  .line 3
    invoke-static { }, Lcn/manstep/phonemirrorBox/floatwindow/e;->g()Lcn/manstep/phonemirrorBox/floatwindow/e;
    move-result-object v0
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/floatwindow/FloatWindowService$g$a;->b:Lcn/manstep/phonemirrorBox/floatwindow/FloatWindowService$g;
    iget-object v1, v1, Lcn/manstep/phonemirrorBox/floatwindow/FloatWindowService$g;->b:Lcn/manstep/phonemirrorBox/floatwindow/FloatWindowService;
    invoke-virtual { v0, v1 }, Lcn/manstep/phonemirrorBox/floatwindow/e;->j(Landroid/content/Context;)V
  :L1
    return-void
.end method
