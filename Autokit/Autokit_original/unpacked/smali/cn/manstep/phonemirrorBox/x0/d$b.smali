.class Lcn/manstep/phonemirrorBox/x0/d$b;
.super Ljava/lang/Object;
.implements Lcn/manstep/phonemirrorBox/v0/b;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingMethod;
  value = Lcn/manstep/phonemirrorBox/x0/d;-><init>(Landroid/app/Application;)V
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = null
.end annotation

.field final synthetic b:Lcn/manstep/phonemirrorBox/x0/d;

.method constructor <init>(Lcn/manstep/phonemirrorBox/x0/d;)V
  .registers 2
  .line 1
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/x0/d$b;->b:Lcn/manstep/phonemirrorBox/x0/d;
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public a()V
  .registers 2
  .line 1
    invoke-static { }, Lcn/manstep/phonemirrorBox/u0/c;->h()Lcn/manstep/phonemirrorBox/u0/c;
    move-result-object v0
    invoke-virtual { v0 }, Lcn/manstep/phonemirrorBox/u0/c;->k()V
    return-void
.end method

.method public b()V
  .catch Landroid/os/RemoteException; { :L0 .. :L1 } :L1
  .registers 3
  .line 1
    invoke-static { }, Lcn/manstep/phonemirrorBox/u0/c;->h()Lcn/manstep/phonemirrorBox/u0/c;
    move-result-object v0
    invoke-virtual { v0 }, Lcn/manstep/phonemirrorBox/u0/c;->s()V
  .line 2
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/x0/d$b;->b:Lcn/manstep/phonemirrorBox/x0/d;
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/x0/d;->s(Lcn/manstep/phonemirrorBox/x0/d;)Lcn/manstep/phonemirrorBox/r0/e;
    move-result-object v0
    if-eqz v0, :L1
  :L0
  .line 3
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/x0/d$b;->b:Lcn/manstep/phonemirrorBox/x0/d;
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/x0/d;->s(Lcn/manstep/phonemirrorBox/x0/d;)Lcn/manstep/phonemirrorBox/r0/e;
    move-result-object v0
    const/4 v1, 0
    invoke-interface { v0, v1 }, Lcn/manstep/phonemirrorBox/r0/e;->w0(Z)V
  :L1
    return-void
.end method

.method public c()V
  .registers 2
  .line 1
    invoke-static { }, Lcn/manstep/phonemirrorBox/u0/c;->h()Lcn/manstep/phonemirrorBox/u0/c;
    move-result-object v0
    invoke-virtual { v0 }, Lcn/manstep/phonemirrorBox/u0/c;->m()V
    return-void
.end method

.method public d(Ljava/lang/String;)V
  .registers 2
    return-void
.end method

.method public e()V
  .registers 1
    return-void
.end method

.method public f()V
  .catch Landroid/os/RemoteException; { :L0 .. :L1 } :L1
  .registers 3
  .line 1
    invoke-static { }, Lcn/manstep/phonemirrorBox/u0/c;->h()Lcn/manstep/phonemirrorBox/u0/c;
    move-result-object v0
    invoke-virtual { v0 }, Lcn/manstep/phonemirrorBox/u0/c;->r()V
  .line 2
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/x0/d$b;->b:Lcn/manstep/phonemirrorBox/x0/d;
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/x0/d;->s(Lcn/manstep/phonemirrorBox/x0/d;)Lcn/manstep/phonemirrorBox/r0/e;
    move-result-object v0
    if-eqz v0, :L1
  :L0
  .line 3
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/x0/d$b;->b:Lcn/manstep/phonemirrorBox/x0/d;
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/x0/d;->s(Lcn/manstep/phonemirrorBox/x0/d;)Lcn/manstep/phonemirrorBox/r0/e;
    move-result-object v0
    const/4 v1, 1
    invoke-interface { v0, v1 }, Lcn/manstep/phonemirrorBox/r0/e;->w0(Z)V
  :L1
    return-void
.end method

.method public g()V
  .registers 2
  .line 1
    invoke-static { }, Lcn/manstep/phonemirrorBox/u0/c;->h()Lcn/manstep/phonemirrorBox/u0/c;
    move-result-object v0
    invoke-virtual { v0 }, Lcn/manstep/phonemirrorBox/u0/c;->l()V
    return-void
.end method

.method public h()V
  .registers 2
  .line 1
    invoke-static { }, Lcn/manstep/phonemirrorBox/u0/c;->h()Lcn/manstep/phonemirrorBox/u0/c;
    move-result-object v0
    invoke-virtual { v0 }, Lcn/manstep/phonemirrorBox/u0/c;->a()V
    return-void
.end method

.method public i()V
  .registers 3
    const-string v0, "BoxViewModel"
    const-string v1, "onMusicStart: "
  .line 1
    invoke-static { v0, v1 }, Lcn/manstep/phonemirrorBox/util/s;->d(Ljava/lang/String;Ljava/lang/String;)V
  .line 2
    invoke-static { }, Lcn/manstep/phonemirrorBox/u0/c;->h()Lcn/manstep/phonemirrorBox/u0/c;
    move-result-object v0
    invoke-virtual { v0 }, Lcn/manstep/phonemirrorBox/u0/c;->p()V
    return-void
.end method

.method public j()V
  .registers 3
    const-string v0, "BoxViewModel"
    const-string v1, "onMusicStop: "
  .line 1
    invoke-static { v0, v1 }, Lcn/manstep/phonemirrorBox/util/s;->d(Ljava/lang/String;Ljava/lang/String;)V
  .line 2
    invoke-static { }, Lcn/manstep/phonemirrorBox/u0/c;->h()Lcn/manstep/phonemirrorBox/u0/c;
    move-result-object v0
    invoke-virtual { v0 }, Lcn/manstep/phonemirrorBox/u0/c;->q()V
    return-void
.end method

.method public k()V
  .registers 2
  .line 1
    invoke-static { }, Lcn/manstep/phonemirrorBox/u0/c;->h()Lcn/manstep/phonemirrorBox/u0/c;
    move-result-object v0
    invoke-virtual { v0 }, Lcn/manstep/phonemirrorBox/u0/c;->b()V
    return-void
.end method
