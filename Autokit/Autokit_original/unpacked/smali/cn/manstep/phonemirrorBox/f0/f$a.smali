.class Lcn/manstep/phonemirrorBox/f0/f$a;
.super Ljava/lang/Object;
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingMethod;
  value = Lcn/manstep/phonemirrorBox/f0/f;->l(Landroid/content/Context;)V
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = null
.end annotation

.field final synthetic a:Lcn/manstep/phonemirrorBox/f0/f;

.method constructor <init>(Lcn/manstep/phonemirrorBox/f0/f;)V
  .registers 2
  .line 1
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/f0/f$a;->a:Lcn/manstep/phonemirrorBox/f0/f;
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
    const-string v1, "RingManager"
    invoke-static { v1, v0 }, Lcn/manstep/phonemirrorBox/util/s;->d(Ljava/lang/String;Ljava/lang/String;)V
  .line 2
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/f0/f$a;->a:Lcn/manstep/phonemirrorBox/f0/f;
    invoke-static { v0, p1 }, Lcn/manstep/phonemirrorBox/f0/f;->h(Lcn/manstep/phonemirrorBox/f0/f;I)I
    const/4 v0, 1
    if-ne p1, v0, :L0
  .line 3
    invoke-static { }, Lcn/manstep/phonemirrorBox/u0/c;->h()Lcn/manstep/phonemirrorBox/u0/c;
    move-result-object p1
    invoke-static { }, Lcn/manstep/phonemirrorBox/v0/e;->C()Z
    move-result v0
    invoke-virtual { p1, v0 }, Lcn/manstep/phonemirrorBox/u0/c;->c(Z)V
  :L0
    return-void
.end method
