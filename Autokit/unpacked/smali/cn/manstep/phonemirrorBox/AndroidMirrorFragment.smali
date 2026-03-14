.class public Lcn/manstep/phonemirrorBox/AndroidMirrorFragment;
.super Landroidx/fragment/app/Fragment;
.source "SourceFile"

.method public constructor <init>()V
  .registers 1
  .line 1
    invoke-direct { p0 }, Landroidx/fragment/app/Fragment;-><init>()V
    return-void
.end method

.method public L0(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
  .registers 5
    const-string p3, "AndroidMirrorFragment"
    const-string v0, "onCreateView"
  .line 1
    invoke-static { p3, v0 }, Lcn/manstep/phonemirrorBox/util/s;->d(Ljava/lang/String;Ljava/lang/String;)V
  .line 2
    invoke-static { }, Lcn/manstep/phonemirrorBox/f;->c()V
    const p3, 2131492931
    const/4 v0, 0
  .line 3
    invoke-virtual { p1, p3, p2, v0 }, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
    move-result-object p1
    return-object p1
.end method

.method public M0()V
  .registers 3
  .line 1
    invoke-static { }, Lcn/manstep/phonemirrorBox/f;->e()V
  .line 2
    invoke-super { p0 }, Landroidx/fragment/app/Fragment;->M0()V
    const-string v0, "AndroidMirrorFragment"
    const-string v1, "onDestroy"
  .line 3
    invoke-static { v0, v1 }, Lcn/manstep/phonemirrorBox/util/s;->d(Ljava/lang/String;Ljava/lang/String;)V
    return-void
.end method
