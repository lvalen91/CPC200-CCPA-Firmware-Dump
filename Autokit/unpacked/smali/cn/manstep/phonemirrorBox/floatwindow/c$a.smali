.class Lcn/manstep/phonemirrorBox/floatwindow/c$a;
.super Landroid/os/CountDownTimer;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Lcn/manstep/phonemirrorBox/floatwindow/c;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = null
.end annotation

.field final synthetic a:Lcn/manstep/phonemirrorBox/floatwindow/c;

.method constructor <init>(Lcn/manstep/phonemirrorBox/floatwindow/c;JJ)V
  .registers 6
  .line 1
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/floatwindow/c$a;->a:Lcn/manstep/phonemirrorBox/floatwindow/c;
    invoke-direct { p0, p2, p3, p4, p5 }, Landroid/os/CountDownTimer;-><init>(JJ)V
    return-void
.end method

.method public onFinish()V
  .registers 3
  .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/floatwindow/c$a;->a:Lcn/manstep/phonemirrorBox/floatwindow/c;
    const/4 v1, 0
    invoke-static { v0, v1 }, Lcn/manstep/phonemirrorBox/floatwindow/c;->a(Lcn/manstep/phonemirrorBox/floatwindow/c;Z)Z
  .line 2
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/floatwindow/c$a;->a:Lcn/manstep/phonemirrorBox/floatwindow/c;
    invoke-static { }, Lcn/manstep/phonemirrorBox/v0/a;->t()Lcn/manstep/phonemirrorBox/v0/a;
    move-result-object v1
    invoke-virtual { v1 }, Lcn/manstep/phonemirrorBox/v0/a;->y()Z
    move-result v1
    invoke-virtual { v0, v1 }, Lcn/manstep/phonemirrorBox/floatwindow/c;->c(Z)V
    return-void
.end method

.method public onTick(J)V
  .registers 3
    return-void
.end method
