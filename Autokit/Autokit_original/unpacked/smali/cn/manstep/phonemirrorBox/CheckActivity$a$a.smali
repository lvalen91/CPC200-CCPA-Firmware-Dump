.class Lcn/manstep/phonemirrorBox/CheckActivity$a$a;
.super Ljava/lang/Object;
.implements Ljava/lang/Runnable;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingMethod;
  value = Lcn/manstep/phonemirrorBox/CheckActivity$a;->run()V
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = null
.end annotation

.field final synthetic b:Lcn/manstep/phonemirrorBox/CheckActivity$a;

.method constructor <init>(Lcn/manstep/phonemirrorBox/CheckActivity$a;)V
  .registers 2
  .line 1
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/CheckActivity$a$a;->b:Lcn/manstep/phonemirrorBox/CheckActivity$a;
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public run()V
  .registers 5
  .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/CheckActivity$a$a;->b:Lcn/manstep/phonemirrorBox/CheckActivity$a;
    iget-object v0, v0, Lcn/manstep/phonemirrorBox/CheckActivity$a;->b:Lcn/manstep/phonemirrorBox/CheckActivity;
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/CheckActivity;->L(Lcn/manstep/phonemirrorBox/CheckActivity;)Landroid/view/View;
    move-result-object v0
    invoke-virtual { v0 }, Landroid/view/View;->getWidth()I
    move-result v0
  .line 2
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/CheckActivity$a$a;->b:Lcn/manstep/phonemirrorBox/CheckActivity$a;
    iget-object v1, v1, Lcn/manstep/phonemirrorBox/CheckActivity$a;->b:Lcn/manstep/phonemirrorBox/CheckActivity;
    invoke-static { v1 }, Lcn/manstep/phonemirrorBox/CheckActivity;->L(Lcn/manstep/phonemirrorBox/CheckActivity;)Landroid/view/View;
    move-result-object v1
    invoke-virtual { v1 }, Landroid/view/View;->getHeight()I
    move-result v1
  .line 3
    invoke-static { }, Lcn/manstep/phonemirrorBox/c0;->m()Lcn/manstep/phonemirrorBox/util/x;
    move-result-object v2
    invoke-virtual { v2, v0, v1 }, Lcn/manstep/phonemirrorBox/util/x;->j(II)Z
    move-result v2
    if-nez v2, :L0
    const/4 v2, 1
  .line 4
    sget-boolean v3, Lcn/manstep/phonemirrorBox/p;->m:Z
    if-nez v3, :L1
  .line 5
    invoke-static { }, Lcn/manstep/phonemirrorBox/c0;->i()Lcn/manstep/phonemirrorBox/c0;
    move-result-object v3
    invoke-virtual { v3, v0, v1 }, Lcn/manstep/phonemirrorBox/c0;->o(II)Lcn/manstep/phonemirrorBox/c0;
  .line 6
    invoke-static { }, Lcn/manstep/phonemirrorBox/BoxInterface/d;->i()Z
    move-result v0
    if-eqz v0, :L1
  .line 7
    sget-object v0, Lcn/manstep/phonemirrorBox/BoxInterface/d;->l:Lcn/manstep/phonemirrorBox/BoxInterface/f;
    invoke-virtual { v0 }, Lcn/manstep/phonemirrorBox/BoxInterface/f;->q0()Z
    goto :L1
  :L0
    const/4 v2, 0
  :L1
  .line 8
    invoke-static { }, Lcn/manstep/phonemirrorBox/c0;->t()Lcn/manstep/phonemirrorBox/util/x;
    move-result-object v0
  .line 9
    invoke-static { }, Lcn/manstep/phonemirrorBox/BoxInterface/d;->E()Z
    move-result v1
    if-eqz v1, :L2
  .line 10
    sget-object v1, Lcn/manstep/phonemirrorBox/BoxInterface/d;->l:Lcn/manstep/phonemirrorBox/BoxInterface/f;
    iget v3, v0, Lcn/manstep/phonemirrorBox/util/x;->b:I
    iget v0, v0, Lcn/manstep/phonemirrorBox/util/x;->c:I
    invoke-virtual { v1, v3, v0 }, Lcn/manstep/phonemirrorBox/BoxInterface/f;->d0(II)Z
  :L2
  .line 11
    new-instance v0, Landroid/content/Intent;
    invoke-direct { v0 }, Landroid/content/Intent;-><init>()V
  .line 12
    invoke-static { }, Lcn/manstep/phonemirrorBox/c0;->m()Lcn/manstep/phonemirrorBox/util/x;
    move-result-object v1
    const-string v3, "MaxSize"
    invoke-virtual { v0, v3, v1 }, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;
    const-string v1, "ReAddSettingsFragment"
  .line 13
    invoke-virtual { v0, v1, v2 }, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;
  .line 14
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/CheckActivity$a$a;->b:Lcn/manstep/phonemirrorBox/CheckActivity$a;
    iget-object v1, v1, Lcn/manstep/phonemirrorBox/CheckActivity$a;->b:Lcn/manstep/phonemirrorBox/CheckActivity;
    const/4 v2, -1
    invoke-virtual { v1, v2, v0 }, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V
  .line 15
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/CheckActivity$a$a;->b:Lcn/manstep/phonemirrorBox/CheckActivity$a;
    iget-object v0, v0, Lcn/manstep/phonemirrorBox/CheckActivity$a;->b:Lcn/manstep/phonemirrorBox/CheckActivity;
    invoke-virtual { v0 }, Landroid/app/Activity;->finish()V
  .line 16
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/CheckActivity$a$a;->b:Lcn/manstep/phonemirrorBox/CheckActivity$a;
    iget-object v0, v0, Lcn/manstep/phonemirrorBox/CheckActivity$a;->b:Lcn/manstep/phonemirrorBox/CheckActivity;
    const v1, 2130771982
    invoke-virtual { v0, v1, v1 }, Landroid/app/Activity;->overridePendingTransition(II)V
    return-void
.end method
