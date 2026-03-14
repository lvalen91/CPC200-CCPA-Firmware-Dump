.class Lcn/manstep/phonemirrorBox/AutoBoxMirrorFragment$a;
.super Ljava/lang/Object;
.implements Landroidx/lifecycle/p;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingMethod;
  value = Lcn/manstep/phonemirrorBox/AutoBoxMirrorFragment;->L0(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = null
.end annotation
.annotation system Ldalvik/annotation/Signature;
  value = {
    "Ljava/lang/Object;",
    "Landroidx/lifecycle/p<",
    "Ljava/lang/Boolean;",
    ">;"
  }
.end annotation

.field final synthetic a:Lcn/manstep/phonemirrorBox/AutoBoxMirrorFragment;

.method constructor <init>(Lcn/manstep/phonemirrorBox/AutoBoxMirrorFragment;)V
  .registers 2
  .line 1
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/AutoBoxMirrorFragment$a;->a:Lcn/manstep/phonemirrorBox/AutoBoxMirrorFragment;
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public a(Ljava/lang/Boolean;)V
  .registers 4
  .line 1
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "onChanged: useOpenGl="
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0, p1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    const-string v1, "AutoBoxMirrorFragment"
    invoke-static { v1, v0 }, Lcn/manstep/phonemirrorBox/util/s;->d(Ljava/lang/String;Ljava/lang/String;)V
  .line 2
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/AutoBoxMirrorFragment$a;->a:Lcn/manstep/phonemirrorBox/AutoBoxMirrorFragment;
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/AutoBoxMirrorFragment;->g2(Lcn/manstep/phonemirrorBox/AutoBoxMirrorFragment;)Landroid/widget/FrameLayout;
    move-result-object v0
    if-eqz v0, :L0
  .line 3
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/AutoBoxMirrorFragment$a;->a:Lcn/manstep/phonemirrorBox/AutoBoxMirrorFragment;
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/AutoBoxMirrorFragment;->h2(Lcn/manstep/phonemirrorBox/AutoBoxMirrorFragment;)Lcn/manstep/phonemirrorBox/AutoBoxMirrorTextureView;
    move-result-object v0
    invoke-virtual { p1 }, Ljava/lang/Boolean;->booleanValue()Z
    move-result p1
    invoke-virtual { v0, p1 }, Lcn/manstep/phonemirrorBox/AutoBoxMirrorTextureView;->setUseGlRender(Z)V
  .line 4
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/AutoBoxMirrorFragment$a;->a:Lcn/manstep/phonemirrorBox/AutoBoxMirrorFragment;
    invoke-static { p1 }, Lcn/manstep/phonemirrorBox/AutoBoxMirrorFragment;->g2(Lcn/manstep/phonemirrorBox/AutoBoxMirrorFragment;)Landroid/widget/FrameLayout;
    move-result-object p1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/AutoBoxMirrorFragment$a;->a:Lcn/manstep/phonemirrorBox/AutoBoxMirrorFragment;
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/AutoBoxMirrorFragment;->h2(Lcn/manstep/phonemirrorBox/AutoBoxMirrorFragment;)Lcn/manstep/phonemirrorBox/AutoBoxMirrorTextureView;
    move-result-object v0
    invoke-virtual { p1, v0 }, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V
  .line 5
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/AutoBoxMirrorFragment$a;->a:Lcn/manstep/phonemirrorBox/AutoBoxMirrorFragment;
    invoke-static { p1 }, Lcn/manstep/phonemirrorBox/AutoBoxMirrorFragment;->g2(Lcn/manstep/phonemirrorBox/AutoBoxMirrorFragment;)Landroid/widget/FrameLayout;
    move-result-object p1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/AutoBoxMirrorFragment$a;->a:Lcn/manstep/phonemirrorBox/AutoBoxMirrorFragment;
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/AutoBoxMirrorFragment;->h2(Lcn/manstep/phonemirrorBox/AutoBoxMirrorFragment;)Lcn/manstep/phonemirrorBox/AutoBoxMirrorTextureView;
    move-result-object v0
    const/4 v1, 2
    invoke-virtual { p1, v0, v1 }, Landroid/widget/FrameLayout;->addView(Landroid/view/View;I)V
  :L0
    return-void
.end method

.method public bridge synthetic c(Ljava/lang/Object;)V
  .registers 2
  .line 1
    check-cast p1, Ljava/lang/Boolean;
    invoke-virtual { p0, p1 }, Lcn/manstep/phonemirrorBox/AutoBoxMirrorFragment$a;->a(Ljava/lang/Boolean;)V
    return-void
.end method
