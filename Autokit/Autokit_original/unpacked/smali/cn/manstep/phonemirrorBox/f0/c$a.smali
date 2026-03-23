.class Lcn/manstep/phonemirrorBox/f0/c$a;
.super Ljava/lang/Object;
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingMethod;
  value = Lcn/manstep/phonemirrorBox/f0/c;->p(Landroid/content/Context;)V
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = null
.end annotation

.field final synthetic a:Lcn/manstep/phonemirrorBox/f0/c;

.method constructor <init>(Lcn/manstep/phonemirrorBox/f0/c;)V
  .registers 2
  .line 1
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/f0/c$a;->a:Lcn/manstep/phonemirrorBox/f0/c;
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public onAudioFocusChange(I)V
  .registers 5
  .line 1
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "init->onAudioFocusChange: focusChange="
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0, p1 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    const-string v1, "MediaManager"
    invoke-static { v1, v0 }, Lcn/manstep/phonemirrorBox/util/s;->d(Ljava/lang/String;Ljava/lang/String;)V
  .line 2
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/f0/c$a;->a:Lcn/manstep/phonemirrorBox/f0/c;
    invoke-static { v0, p1 }, Lcn/manstep/phonemirrorBox/f0/c;->h(Lcn/manstep/phonemirrorBox/f0/c;I)I
    const/4 v0, 1
    if-ne p1, v0, :L2
  .line 3
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/f0/c$a;->a:Lcn/manstep/phonemirrorBox/f0/c;
    iget-object p1, p1, Lcn/manstep/phonemirrorBox/f0/a;->d:Ld/b/a/b;
    if-eqz p1, :L0
    const/high16 v1, 16256
  .line 4
    invoke-virtual { p1, v1 }, Ld/b/a/b;->n(F)V
  :L0
  .line 5
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/f0/c$a;->a:Lcn/manstep/phonemirrorBox/f0/c;
    invoke-static { p1 }, Lcn/manstep/phonemirrorBox/f0/c;->i(Lcn/manstep/phonemirrorBox/f0/c;)Z
    move-result p1
    if-eqz p1, :L7
  .line 6
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/f0/c$a;->a:Lcn/manstep/phonemirrorBox/f0/c;
    invoke-static { p1 }, Lcn/manstep/phonemirrorBox/f0/c;->k(Lcn/manstep/phonemirrorBox/f0/c;)Lcn/manstep/phonemirrorBox/f0/d;
    move-result-object p1
    if-eqz p1, :L1
  .line 7
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/f0/c$a;->a:Lcn/manstep/phonemirrorBox/f0/c;
    invoke-static { p1 }, Lcn/manstep/phonemirrorBox/f0/c;->k(Lcn/manstep/phonemirrorBox/f0/c;)Lcn/manstep/phonemirrorBox/f0/d;
    move-result-object p1
    invoke-virtual { p1, v0 }, Lcn/manstep/phonemirrorBox/f0/d;->E(Z)V
  :L1
  .line 8
    new-instance p1, Landroid/os/Handler;
    invoke-direct { p1 }, Landroid/os/Handler;-><init>()V
    new-instance v0, Lcn/manstep/phonemirrorBox/f0/c$a$a;
    invoke-direct { v0, p0 }, Lcn/manstep/phonemirrorBox/f0/c$a$a;-><init>(Lcn/manstep/phonemirrorBox/f0/c$a;)V
    const-wide/16 v1, 600
    invoke-virtual { p1, v0, v1, v2 }, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
  .line 9
    invoke-static { }, Lcn/manstep/phonemirrorBox/u0/c;->h()Lcn/manstep/phonemirrorBox/u0/c;
    move-result-object p1
    invoke-static { }, Lcn/manstep/phonemirrorBox/v0/e;->C()Z
    move-result v0
    invoke-virtual { p1, v0 }, Lcn/manstep/phonemirrorBox/u0/c;->d(Z)V
  .line 10
    invoke-static { }, Lcn/manstep/phonemirrorBox/u0/c;->h()Lcn/manstep/phonemirrorBox/u0/c;
    move-result-object p1
    invoke-virtual { p1 }, Lcn/manstep/phonemirrorBox/u0/c;->n()V
    goto :L7
  :L2
    const/4 v1, -1
    if-ne p1, v1, :L3
  .line 11
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/f0/c$a;->a:Lcn/manstep/phonemirrorBox/f0/c;
    invoke-static { p1 }, Lcn/manstep/phonemirrorBox/f0/c;->l(Lcn/manstep/phonemirrorBox/f0/c;)V
  .line 12
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/f0/c$a;->a:Lcn/manstep/phonemirrorBox/f0/c;
    invoke-virtual { p1 }, Lcn/manstep/phonemirrorBox/f0/c;->s()V
  .line 13
    invoke-static { }, Lcn/manstep/phonemirrorBox/u0/c;->h()Lcn/manstep/phonemirrorBox/u0/c;
    move-result-object p1
    invoke-virtual { p1 }, Lcn/manstep/phonemirrorBox/u0/c;->o()V
    goto :L7
  :L3
    const/4 v1, -2
    if-ne p1, v1, :L4
  .line 14
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/f0/c$a;->a:Lcn/manstep/phonemirrorBox/f0/c;
    invoke-static { p1 }, Lcn/manstep/phonemirrorBox/f0/c;->l(Lcn/manstep/phonemirrorBox/f0/c;)V
    goto :L7
  :L4
    const/4 v1, -3
    if-ne p1, v1, :L7
  .line 15
    invoke-static { }, Lcn/manstep/phonemirrorBox/b0;->i()Lcn/manstep/phonemirrorBox/b0;
    move-result-object p1
    const-string v1, "IsTurnDownMusic"
    invoke-virtual { p1, v1, v0 }, Lcn/manstep/phonemirrorBox/b0;->o(Ljava/lang/String;Z)Z
    move-result p1
    if-eqz p1, :L7
  .line 16
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/f0/c$a;->a:Lcn/manstep/phonemirrorBox/f0/c;
    iget-object p1, p1, Lcn/manstep/phonemirrorBox/f0/a;->d:Ld/b/a/b;
    if-eqz p1, :L7
  .line 17
    sget-object p1, Lcn/manstep/phonemirrorBox/BoxInterface/d;->l:Lcn/manstep/phonemirrorBox/BoxInterface/f;
    invoke-virtual { p1 }, Lcn/manstep/phonemirrorBox/BoxInterface/f;->U()Z
    move-result p1
    if-eqz p1, :L6
    invoke-static { }, Lcn/manstep/phonemirrorBox/v0/a;->t()Lcn/manstep/phonemirrorBox/v0/a;
    move-result-object p1
    invoke-virtual { p1 }, Lcn/manstep/phonemirrorBox/v0/a;->z()Z
    move-result p1
    if-nez p1, :L5
    goto :L6
  :L5
  .line 18
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/f0/c$a;->a:Lcn/manstep/phonemirrorBox/f0/c;
    iget-object p1, p1, Lcn/manstep/phonemirrorBox/f0/a;->d:Ld/b/a/b;
    const v0, 1061997773
    invoke-virtual { p1, v0 }, Ld/b/a/b;->n(F)V
    goto :L7
  :L6
  .line 19
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/f0/c$a;->a:Lcn/manstep/phonemirrorBox/f0/c;
    iget-object p1, p1, Lcn/manstep/phonemirrorBox/f0/a;->d:Ld/b/a/b;
    const v0, 1045220557
    invoke-virtual { p1, v0 }, Ld/b/a/b;->n(F)V
  :L7
    return-void
.end method
