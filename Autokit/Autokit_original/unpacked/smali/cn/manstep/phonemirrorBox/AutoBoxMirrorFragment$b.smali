.class Lcn/manstep/phonemirrorBox/AutoBoxMirrorFragment$b;
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

.method constructor <init>(Lcn/manstep/phonemirrorBox/AutoBoxMirrorFragment;)V
  .registers 2
  .line 1
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public a(Ljava/lang/Boolean;)V
  .registers 2
  .line 1
    invoke-static { }, Lcn/manstep/phonemirrorBox/BoxInterface/d;->i()Z
    move-result p1
    if-eqz p1, :L0
  .line 2
    sget-object p1, Lcn/manstep/phonemirrorBox/BoxInterface/d;->l:Lcn/manstep/phonemirrorBox/BoxInterface/f;
    iget-object p1, p1, Lcn/manstep/phonemirrorBox/BoxInterface/f;->z:Lcn/manstep/phonemirrorBox/BoxInterface/b;
    invoke-virtual { p1 }, Lcn/manstep/phonemirrorBox/BoxInterface/b;->l()V
  :L0
    return-void
.end method

.method public bridge synthetic c(Ljava/lang/Object;)V
  .registers 2
  .line 1
    check-cast p1, Ljava/lang/Boolean;
    invoke-virtual { p0, p1 }, Lcn/manstep/phonemirrorBox/AutoBoxMirrorFragment$b;->a(Ljava/lang/Boolean;)V
    return-void
.end method
