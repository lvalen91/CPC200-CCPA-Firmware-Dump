.class Lcn/manstep/phonemirrorBox/x0/d$c;
.super Ljava/lang/Object;
.implements Ljava/lang/Runnable;
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
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/x0/d$c;->b:Lcn/manstep/phonemirrorBox/x0/d;
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public run()V
  .registers 3
  .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/x0/d$c;->b:Lcn/manstep/phonemirrorBox/x0/d;
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/x0/d;->m(Lcn/manstep/phonemirrorBox/x0/d;)Lcn/manstep/phonemirrorBox/r0/b;
    move-result-object v0
    if-nez v0, :L0
  .line 2
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/x0/d$c;->b:Lcn/manstep/phonemirrorBox/x0/d;
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/x0/d;->j(Lcn/manstep/phonemirrorBox/x0/d;)Lcn/manstep/phonemirrorBox/service/BackgroundService$c;
    move-result-object v0
    if-eqz v0, :L0
  .line 3
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/x0/d$c;->b:Lcn/manstep/phonemirrorBox/x0/d;
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/x0/d;->j(Lcn/manstep/phonemirrorBox/x0/d;)Lcn/manstep/phonemirrorBox/service/BackgroundService$c;
    move-result-object v1
    invoke-interface { v1 }, Lcn/manstep/phonemirrorBox/service/BackgroundService$c;->O()Lcn/manstep/phonemirrorBox/r0/b;
    move-result-object v1
    invoke-static { v0, v1 }, Lcn/manstep/phonemirrorBox/x0/d;->n(Lcn/manstep/phonemirrorBox/x0/d;Lcn/manstep/phonemirrorBox/r0/b;)Lcn/manstep/phonemirrorBox/r0/b;
  :L0
  .line 4
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/x0/d$c;->b:Lcn/manstep/phonemirrorBox/x0/d;
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/x0/d;->o(Lcn/manstep/phonemirrorBox/x0/d;)Lcn/manstep/phonemirrorBox/r0/c;
    move-result-object v0
    if-nez v0, :L1
  .line 5
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/x0/d$c;->b:Lcn/manstep/phonemirrorBox/x0/d;
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/x0/d;->j(Lcn/manstep/phonemirrorBox/x0/d;)Lcn/manstep/phonemirrorBox/service/BackgroundService$c;
    move-result-object v0
    if-eqz v0, :L1
  .line 6
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/x0/d$c;->b:Lcn/manstep/phonemirrorBox/x0/d;
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/x0/d;->j(Lcn/manstep/phonemirrorBox/x0/d;)Lcn/manstep/phonemirrorBox/service/BackgroundService$c;
    move-result-object v1
    invoke-interface { v1 }, Lcn/manstep/phonemirrorBox/service/BackgroundService$c;->u()Lcn/manstep/phonemirrorBox/r0/c;
    move-result-object v1
    invoke-static { v0, v1 }, Lcn/manstep/phonemirrorBox/x0/d;->p(Lcn/manstep/phonemirrorBox/x0/d;Lcn/manstep/phonemirrorBox/r0/c;)Lcn/manstep/phonemirrorBox/r0/c;
  :L1
  .line 7
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/x0/d$c;->b:Lcn/manstep/phonemirrorBox/x0/d;
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/x0/d;->q(Lcn/manstep/phonemirrorBox/x0/d;)Lcn/manstep/phonemirrorBox/r0/a;
    move-result-object v0
    if-nez v0, :L2
  .line 8
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/x0/d$c;->b:Lcn/manstep/phonemirrorBox/x0/d;
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/x0/d;->j(Lcn/manstep/phonemirrorBox/x0/d;)Lcn/manstep/phonemirrorBox/service/BackgroundService$c;
    move-result-object v0
    if-eqz v0, :L2
  .line 9
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/x0/d$c;->b:Lcn/manstep/phonemirrorBox/x0/d;
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/x0/d;->j(Lcn/manstep/phonemirrorBox/x0/d;)Lcn/manstep/phonemirrorBox/service/BackgroundService$c;
    move-result-object v1
    invoke-interface { v1 }, Lcn/manstep/phonemirrorBox/service/BackgroundService$c;->G()Lcn/manstep/phonemirrorBox/r0/a;
    move-result-object v1
    invoke-static { v0, v1 }, Lcn/manstep/phonemirrorBox/x0/d;->r(Lcn/manstep/phonemirrorBox/x0/d;Lcn/manstep/phonemirrorBox/r0/a;)Lcn/manstep/phonemirrorBox/r0/a;
  :L2
  .line 10
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/x0/d$c;->b:Lcn/manstep/phonemirrorBox/x0/d;
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/x0/d;->s(Lcn/manstep/phonemirrorBox/x0/d;)Lcn/manstep/phonemirrorBox/r0/e;
    move-result-object v0
    if-nez v0, :L3
  .line 11
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/x0/d$c;->b:Lcn/manstep/phonemirrorBox/x0/d;
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/x0/d;->j(Lcn/manstep/phonemirrorBox/x0/d;)Lcn/manstep/phonemirrorBox/service/BackgroundService$c;
    move-result-object v0
    if-eqz v0, :L3
  .line 12
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/x0/d$c;->b:Lcn/manstep/phonemirrorBox/x0/d;
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/x0/d;->j(Lcn/manstep/phonemirrorBox/x0/d;)Lcn/manstep/phonemirrorBox/service/BackgroundService$c;
    move-result-object v1
    invoke-interface { v1 }, Lcn/manstep/phonemirrorBox/service/BackgroundService$c;->E0()Lcn/manstep/phonemirrorBox/r0/e;
    move-result-object v1
    invoke-static { v0, v1 }, Lcn/manstep/phonemirrorBox/x0/d;->t(Lcn/manstep/phonemirrorBox/x0/d;Lcn/manstep/phonemirrorBox/r0/e;)Lcn/manstep/phonemirrorBox/r0/e;
  :L3
    return-void
.end method
