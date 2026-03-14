.class Lcn/manstep/phonemirrorBox/ModeChangeService$b;
.super Ljava/lang/Object;
.implements Ljava/lang/Runnable;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingMethod;
  value = Lcn/manstep/phonemirrorBox/ModeChangeService;->e()V
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = null
.end annotation

.field final synthetic b:Lcn/manstep/phonemirrorBox/ModeChangeService;

.method constructor <init>(Lcn/manstep/phonemirrorBox/ModeChangeService;)V
  .registers 2
  .line 1
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/ModeChangeService$b;->b:Lcn/manstep/phonemirrorBox/ModeChangeService;
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public run()V
  .registers 3
  .line 1
    invoke-static { }, Lcn/manstep/phonemirrorBox/v0/a;->t()Lcn/manstep/phonemirrorBox/v0/a;
    move-result-object v0
    invoke-virtual { v0 }, Lcn/manstep/phonemirrorBox/v0/a;->A()Z
    move-result v0
    if-eqz v0, :L1
  .line 2
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/ModeChangeService$b;->b:Lcn/manstep/phonemirrorBox/ModeChangeService;
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/ModeChangeService;->l(Lcn/manstep/phonemirrorBox/ModeChangeService;)Z
    move-result v0
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
  .line 4
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/ModeChangeService$b;->b:Lcn/manstep/phonemirrorBox/ModeChangeService;
    const/4 v1, 1
    invoke-static { v0, v1 }, Lcn/manstep/phonemirrorBox/ModeChangeService;->m(Lcn/manstep/phonemirrorBox/ModeChangeService;Z)Z
  :L0
  .line 5
    invoke-static { }, Lcn/manstep/phonemirrorBox/v0/e;->C()Z
    move-result v0
    if-nez v0, :L1
    invoke-static { }, Lcn/manstep/phonemirrorBox/BoxInterface/d;->G()Z
    move-result v0
    if-eqz v0, :L1
  .line 6
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/ModeChangeService$b;->b:Lcn/manstep/phonemirrorBox/ModeChangeService;
    const/4 v1, 0
    invoke-static { v0, v1 }, Lcn/manstep/phonemirrorBox/util/f;->f(Landroid/content/Context;Landroid/os/Bundle;)V
  :L1
    return-void
.end method
