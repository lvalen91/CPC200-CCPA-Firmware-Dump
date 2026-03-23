.class Lcn/manstep/phonemirrorBox/AutoStartService$a;
.super Landroid/os/CountDownTimer;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Lcn/manstep/phonemirrorBox/AutoStartService;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = null
.end annotation

.field final synthetic a:Lcn/manstep/phonemirrorBox/AutoStartService;

.method constructor <init>(Lcn/manstep/phonemirrorBox/AutoStartService;JJ)V
  .registers 6
  .line 1
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/AutoStartService$a;->a:Lcn/manstep/phonemirrorBox/AutoStartService;
    invoke-direct { p0, p2, p3, p4, p5 }, Landroid/os/CountDownTimer;-><init>(JJ)V
    return-void
.end method

.method public onFinish()V
  .registers 2
  .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/AutoStartService$a;->a:Lcn/manstep/phonemirrorBox/AutoStartService;
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/AutoStartService;->e(Lcn/manstep/phonemirrorBox/AutoStartService;)V
    return-void
.end method

.method public onTick(J)V
  .registers 3
  .line 1
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/AutoStartService$a;->a:Lcn/manstep/phonemirrorBox/AutoStartService;
    invoke-static { p1 }, Lcn/manstep/phonemirrorBox/AutoStartService;->b(Lcn/manstep/phonemirrorBox/AutoStartService;)Z
    move-result p1
    if-eqz p1, :L0
  .line 2
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/AutoStartService$a;->a:Lcn/manstep/phonemirrorBox/AutoStartService;
    const/4 p2, 0
    invoke-static { p1, p2 }, Lcn/manstep/phonemirrorBox/AutoStartService;->d(Lcn/manstep/phonemirrorBox/AutoStartService;Z)Z
  .line 3
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/AutoStartService$a;->a:Lcn/manstep/phonemirrorBox/AutoStartService;
    invoke-static { p1 }, Lcn/manstep/phonemirrorBox/AutoStartService;->e(Lcn/manstep/phonemirrorBox/AutoStartService;)V
  :L0
    return-void
.end method
