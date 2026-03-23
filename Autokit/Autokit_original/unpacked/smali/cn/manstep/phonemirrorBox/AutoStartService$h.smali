.class Lcn/manstep/phonemirrorBox/AutoStartService$h;
.super Landroid/os/Binder;
.implements Lcn/manstep/phonemirrorBox/AutoStartService$g;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Lcn/manstep/phonemirrorBox/AutoStartService;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 10
  name = "h"
.end annotation

.field private final a:Ljava/lang/ref/WeakReference;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "Ljava/lang/ref/WeakReference<",
      "Lcn/manstep/phonemirrorBox/AutoStartService;",
      ">;"
    }
  .end annotation
.end field

.method public constructor <init>(Lcn/manstep/phonemirrorBox/AutoStartService;)V
  .registers 3
  .line 1
    invoke-direct { p0 }, Landroid/os/Binder;-><init>()V
  .line 2
    new-instance v0, Ljava/lang/ref/WeakReference;
    invoke-direct { v0, p1 }, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V
    iput-object v0, p0, Lcn/manstep/phonemirrorBox/AutoStartService$h;->a:Ljava/lang/ref/WeakReference;
    return-void
.end method

.method public a()Z
  .registers 2
  .line 1
    invoke-static { }, Lcn/manstep/phonemirrorBox/BoxInterface/d;->i()Z
    move-result v0
    if-eqz v0, :L0
  .line 2
    invoke-static { }, Lcn/manstep/phonemirrorBox/BoxInterface/d;->G()Z
    move-result v0
    if-nez v0, :L0
  .line 3
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/AutoStartService$h;->a:Ljava/lang/ref/WeakReference;
    invoke-virtual { v0 }, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
    move-result-object v0
    if-eqz v0, :L0
  .line 4
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/AutoStartService$h;->a:Ljava/lang/ref/WeakReference;
    invoke-virtual { v0 }, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Lcn/manstep/phonemirrorBox/AutoStartService;
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/AutoStartService;->h(Lcn/manstep/phonemirrorBox/AutoStartService;)Z
    move-result v0
    return v0
  :L0
    const/4 v0, 0
    return v0
.end method

.method public b(Z)V
  .registers 3
  .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/AutoStartService$h;->a:Ljava/lang/ref/WeakReference;
    invoke-virtual { v0 }, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
    move-result-object v0
    if-eqz v0, :L1
  .line 2
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/AutoStartService$h;->a:Ljava/lang/ref/WeakReference;
    invoke-virtual { v0 }, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Lcn/manstep/phonemirrorBox/AutoStartService;
    invoke-static { v0, p1 }, Lcn/manstep/phonemirrorBox/AutoStartService;->t(Lcn/manstep/phonemirrorBox/AutoStartService;Z)Z
    if-eqz p1, :L0
  .line 3
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/AutoStartService$h;->a:Ljava/lang/ref/WeakReference;
    invoke-virtual { p1 }, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
    move-result-object p1
    check-cast p1, Lcn/manstep/phonemirrorBox/AutoStartService;
    invoke-static { p1 }, Lcn/manstep/phonemirrorBox/AutoStartService;->u(Lcn/manstep/phonemirrorBox/AutoStartService;)Z
    move-result p1
    if-eqz p1, :L0
  .line 4
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/AutoStartService$h;->a:Ljava/lang/ref/WeakReference;
    invoke-virtual { p1 }, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
    move-result-object p1
    check-cast p1, Lcn/manstep/phonemirrorBox/AutoStartService;
    const/4 v0, 1
    invoke-static { p1, v0 }, Lcn/manstep/phonemirrorBox/AutoStartService;->d(Lcn/manstep/phonemirrorBox/AutoStartService;Z)Z
  .line 5
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/AutoStartService$h;->a:Ljava/lang/ref/WeakReference;
    invoke-virtual { p1 }, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
    move-result-object p1
    check-cast p1, Lcn/manstep/phonemirrorBox/AutoStartService;
    const/4 v0, 0
    invoke-static { p1, v0 }, Lcn/manstep/phonemirrorBox/AutoStartService;->f(Lcn/manstep/phonemirrorBox/AutoStartService;Z)Z
  .line 6
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/AutoStartService$h;->a:Ljava/lang/ref/WeakReference;
    invoke-virtual { p1 }, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
    move-result-object p1
    check-cast p1, Lcn/manstep/phonemirrorBox/AutoStartService;
    invoke-static { p1 }, Lcn/manstep/phonemirrorBox/AutoStartService;->q(Lcn/manstep/phonemirrorBox/AutoStartService;)V
    goto :L1
  :L0
    const-string p1, "AutoStartService"
    const-string v0, "setAutoConnect: autoConnectCountDownTimer.cancel()"
  .line 7
    invoke-static { p1, v0 }, Lcn/manstep/phonemirrorBox/util/s;->p(Ljava/lang/String;Ljava/lang/String;)V
  .line 8
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/AutoStartService$h;->a:Ljava/lang/ref/WeakReference;
    invoke-virtual { p1 }, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
    move-result-object p1
    check-cast p1, Lcn/manstep/phonemirrorBox/AutoStartService;
    invoke-static { p1 }, Lcn/manstep/phonemirrorBox/AutoStartService;->g(Lcn/manstep/phonemirrorBox/AutoStartService;)Landroid/os/CountDownTimer;
    move-result-object p1
    invoke-virtual { p1 }, Landroid/os/CountDownTimer;->cancel()V
  :L1
    return-void
.end method

.method public c(Z)V
  .registers 3
  .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/AutoStartService$h;->a:Ljava/lang/ref/WeakReference;
    invoke-virtual { v0 }, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
    move-result-object v0
    if-eqz v0, :L1
    if-eqz p1, :L0
  .line 2
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/AutoStartService$h;->a:Ljava/lang/ref/WeakReference;
    invoke-virtual { p1 }, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
    move-result-object p1
    check-cast p1, Lcn/manstep/phonemirrorBox/AutoStartService;
    invoke-static { p1 }, Lcn/manstep/phonemirrorBox/AutoStartService;->i(Lcn/manstep/phonemirrorBox/AutoStartService;)V
    goto :L1
  :L0
  .line 3
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/AutoStartService$h;->a:Ljava/lang/ref/WeakReference;
    invoke-virtual { p1 }, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
    move-result-object p1
    check-cast p1, Lcn/manstep/phonemirrorBox/AutoStartService;
    invoke-static { p1 }, Lcn/manstep/phonemirrorBox/AutoStartService;->j(Lcn/manstep/phonemirrorBox/AutoStartService;)V
  :L1
    return-void
.end method
