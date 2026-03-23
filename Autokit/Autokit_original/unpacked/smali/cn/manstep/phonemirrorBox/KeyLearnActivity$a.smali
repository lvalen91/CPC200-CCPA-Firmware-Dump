.class Lcn/manstep/phonemirrorBox/KeyLearnActivity$a;
.super Ljava/lang/Object;
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Lcn/manstep/phonemirrorBox/KeyLearnActivity;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = null
.end annotation

.field final synthetic a:Lcn/manstep/phonemirrorBox/KeyLearnActivity;

.method constructor <init>(Lcn/manstep/phonemirrorBox/KeyLearnActivity;)V
  .registers 2
  .line 1
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/KeyLearnActivity$a;->a:Lcn/manstep/phonemirrorBox/KeyLearnActivity;
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public onAudioFocusChange(I)V
  .registers 3
    const/4 v0, -3
    if-eq p1, v0, :L0
    const/4 v0, -2
    if-eq p1, v0, :L0
    const/4 v0, -1
    if-eq p1, v0, :L0
    goto :L1
  :L0
  .line 1
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/KeyLearnActivity$a;->a:Lcn/manstep/phonemirrorBox/KeyLearnActivity;
    invoke-static { p1, p1 }, Lcn/manstep/phonemirrorBox/KeyLearnActivity;->n0(Lcn/manstep/phonemirrorBox/KeyLearnActivity;Landroid/content/Context;)V
  :L1
    return-void
.end method
