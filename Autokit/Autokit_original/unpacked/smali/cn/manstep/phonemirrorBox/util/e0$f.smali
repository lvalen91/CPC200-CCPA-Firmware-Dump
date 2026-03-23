.class Lcn/manstep/phonemirrorBox/util/e0$f;
.super Landroid/os/CountDownTimer;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingMethod;
  value = Lcn/manstep/phonemirrorBox/util/e0;->p()V
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = null
.end annotation

.field final synthetic a:Lcn/manstep/phonemirrorBox/util/e0;

.method constructor <init>(Lcn/manstep/phonemirrorBox/util/e0;JJ)V
  .registers 6
  .line 1
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/util/e0$f;->a:Lcn/manstep/phonemirrorBox/util/e0;
    invoke-direct { p0, p2, p3, p4, p5 }, Landroid/os/CountDownTimer;-><init>(JJ)V
    return-void
.end method

.method public onFinish()V
  .registers 2
  .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/util/e0$f;->a:Lcn/manstep/phonemirrorBox/util/e0;
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/util/e0;->f(Lcn/manstep/phonemirrorBox/util/e0;)Z
    move-result v0
    if-nez v0, :L0
  .line 2
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/util/e0$f;->a:Lcn/manstep/phonemirrorBox/util/e0;
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/util/e0;->b(Lcn/manstep/phonemirrorBox/util/e0;)V
    goto :L1
  :L0
  .line 3
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/util/e0$f;->a:Lcn/manstep/phonemirrorBox/util/e0;
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/util/e0;->h(Lcn/manstep/phonemirrorBox/util/e0;)V
  :L1
    return-void
.end method

.method public onTick(J)V
  .registers 3
  .line 1
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/util/e0$f;->a:Lcn/manstep/phonemirrorBox/util/e0;
    invoke-static { p1 }, Lcn/manstep/phonemirrorBox/util/e0;->f(Lcn/manstep/phonemirrorBox/util/e0;)Z
    move-result p1
    if-eqz p1, :L0
  .line 2
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/util/e0$f;->a:Lcn/manstep/phonemirrorBox/util/e0;
    invoke-static { p1 }, Lcn/manstep/phonemirrorBox/util/e0;->g(Lcn/manstep/phonemirrorBox/util/e0;)V
  .line 3
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/util/e0$f;->a:Lcn/manstep/phonemirrorBox/util/e0;
    invoke-static { p1 }, Lcn/manstep/phonemirrorBox/util/e0;->h(Lcn/manstep/phonemirrorBox/util/e0;)V
  :L0
    return-void
.end method
