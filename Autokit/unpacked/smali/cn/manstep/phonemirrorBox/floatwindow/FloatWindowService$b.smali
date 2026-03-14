.class Lcn/manstep/phonemirrorBox/floatwindow/FloatWindowService$b;
.super Ljava/lang/Object;
.implements Ljava/lang/Runnable;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingMethod;
  value = Lcn/manstep/phonemirrorBox/floatwindow/FloatWindowService;->o(Landroid/content/Context;)V
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = null
.end annotation

.method constructor <init>(Lcn/manstep/phonemirrorBox/floatwindow/FloatWindowService;)V
  .registers 2
  .line 1
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public run()V
  .registers 3
  .line 1
    invoke-static { }, Lcn/manstep/phonemirrorBox/floatwindow/e;->g()Lcn/manstep/phonemirrorBox/floatwindow/e;
    move-result-object v0
    invoke-virtual { v0 }, Lcn/manstep/phonemirrorBox/floatwindow/e;->f()Lcn/manstep/phonemirrorBox/floatwindow/c;
    move-result-object v0
    if-eqz v0, :L0
  .line 2
    invoke-static { }, Lcn/manstep/phonemirrorBox/floatwindow/e;->g()Lcn/manstep/phonemirrorBox/floatwindow/e;
    move-result-object v0
    invoke-virtual { v0 }, Lcn/manstep/phonemirrorBox/floatwindow/e;->f()Lcn/manstep/phonemirrorBox/floatwindow/c;
    move-result-object v0
    const/4 v1, 0
    invoke-virtual { v0, v1 }, Lcn/manstep/phonemirrorBox/floatwindow/c;->b(Z)V
  :L0
  .line 3
    invoke-static { }, Lcn/manstep/phonemirrorBox/floatwindow/e;->g()Lcn/manstep/phonemirrorBox/floatwindow/e;
    move-result-object v0
    invoke-virtual { v0 }, Lcn/manstep/phonemirrorBox/floatwindow/e;->n()V
    return-void
.end method
