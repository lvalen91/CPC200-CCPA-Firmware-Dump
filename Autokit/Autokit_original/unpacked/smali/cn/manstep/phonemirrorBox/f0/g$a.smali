.class Lcn/manstep/phonemirrorBox/f0/g$a;
.super Ljava/lang/Object;
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingMethod;
  value = Lcn/manstep/phonemirrorBox/f0/g;->l(Landroid/content/Context;)V
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = null
.end annotation

.field final synthetic a:Lcn/manstep/phonemirrorBox/f0/g;

.method constructor <init>(Lcn/manstep/phonemirrorBox/f0/g;)V
  .registers 2
  .line 1
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/f0/g$a;->a:Lcn/manstep/phonemirrorBox/f0/g;
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public onAudioFocusChange(I)V
  .registers 4
  .line 1
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "init->onAudioFocusChange: focusChange="
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0, p1 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    const-string v1, "VoiceManager"
    invoke-static { v1, v0 }, Lcn/manstep/phonemirrorBox/util/s;->d(Ljava/lang/String;Ljava/lang/String;)V
  .line 2
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/f0/g$a;->a:Lcn/manstep/phonemirrorBox/f0/g;
    invoke-static { v0, p1 }, Lcn/manstep/phonemirrorBox/f0/g;->h(Lcn/manstep/phonemirrorBox/f0/g;I)I
    const/4 v0, 1
    if-eq p1, v0, :L0
    const/4 v1, 2
    if-eq p1, v1, :L0
  .line 3
    invoke-static { }, Lcn/manstep/phonemirrorBox/v0/a;->t()Lcn/manstep/phonemirrorBox/v0/a;
    move-result-object v1
    invoke-virtual { v1 }, Lcn/manstep/phonemirrorBox/v0/a;->w()Z
    move-result v1
    if-nez v1, :L0
    invoke-static { }, Lcn/manstep/phonemirrorBox/v0/a;->t()Lcn/manstep/phonemirrorBox/v0/a;
    move-result-object v1
    invoke-virtual { v1 }, Lcn/manstep/phonemirrorBox/v0/a;->v()Z
    move-result v1
    if-nez v1, :L0
  .line 4
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/f0/g$a;->a:Lcn/manstep/phonemirrorBox/f0/g;
    invoke-virtual { v1 }, Lcn/manstep/phonemirrorBox/f0/g;->m()I
  :L0
    if-ne p1, v0, :L1
  .line 5
    invoke-static { }, Lcn/manstep/phonemirrorBox/u0/c;->h()Lcn/manstep/phonemirrorBox/u0/c;
    move-result-object p1
    invoke-static { }, Lcn/manstep/phonemirrorBox/v0/e;->C()Z
    move-result v0
    invoke-virtual { p1, v0 }, Lcn/manstep/phonemirrorBox/u0/c;->e(Z)V
  :L1
    return-void
.end method
