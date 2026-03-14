.class Lcn/manstep/phonemirrorBox/f0/b$a;
.super Ljava/lang/Object;
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingMethod;
  value = Lcn/manstep/phonemirrorBox/f0/b;->l(Landroid/content/Context;)V
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = null
.end annotation

.field final synthetic a:Lcn/manstep/phonemirrorBox/f0/b;

.method constructor <init>(Lcn/manstep/phonemirrorBox/f0/b;)V
  .registers 2
  .line 1
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/f0/b$a;->a:Lcn/manstep/phonemirrorBox/f0/b;
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
    const-string v1, "CallManager"
    invoke-static { v1, v0 }, Lcn/manstep/phonemirrorBox/util/s;->d(Ljava/lang/String;Ljava/lang/String;)V
  .line 2
    invoke-static { }, Lcn/manstep/phonemirrorBox/v0/a;->t()Lcn/manstep/phonemirrorBox/v0/a;
    move-result-object v0
    invoke-virtual { v0 }, Lcn/manstep/phonemirrorBox/v0/a;->x()Z
    move-result v0
    if-nez v0, :L0
  .line 3
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v2, "onAudioFocusChange: AudioFocusException focusChange="
    invoke-virtual { v0, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0, p1 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { v0, p0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    const-string v2, ","
    invoke-virtual { v0, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-static { }, Lcn/manstep/phonemirrorBox/f0/c;->n()Lcn/manstep/phonemirrorBox/f0/c;
    move-result-object v2
    invoke-virtual { v0, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    invoke-static { v1, v0 }, Lcn/manstep/phonemirrorBox/util/s;->f(Ljava/lang/String;Ljava/lang/String;)V
  :L0
  .line 4
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/f0/b$a;->a:Lcn/manstep/phonemirrorBox/f0/b;
    invoke-static { v0, p1 }, Lcn/manstep/phonemirrorBox/f0/b;->h(Lcn/manstep/phonemirrorBox/f0/b;I)I
    const/4 v0, 1
    if-eq p1, v0, :L1
    const/4 v0, 2
    if-eq p1, v0, :L1
  .line 5
    invoke-static { }, Lcn/manstep/phonemirrorBox/v0/a;->t()Lcn/manstep/phonemirrorBox/v0/a;
    move-result-object p1
    invoke-virtual { p1 }, Lcn/manstep/phonemirrorBox/v0/a;->x()Z
    move-result p1
    if-nez p1, :L2
  .line 6
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/f0/b$a;->a:Lcn/manstep/phonemirrorBox/f0/b;
    invoke-virtual { p1 }, Lcn/manstep/phonemirrorBox/f0/b;->m()I
    goto :L2
  :L1
  .line 7
    invoke-static { }, Lcn/manstep/phonemirrorBox/u0/c;->h()Lcn/manstep/phonemirrorBox/u0/c;
    move-result-object p1
    invoke-static { }, Lcn/manstep/phonemirrorBox/v0/e;->C()Z
    move-result v0
    invoke-virtual { p1, v0 }, Lcn/manstep/phonemirrorBox/u0/c;->c(Z)V
  :L2
    return-void
.end method
