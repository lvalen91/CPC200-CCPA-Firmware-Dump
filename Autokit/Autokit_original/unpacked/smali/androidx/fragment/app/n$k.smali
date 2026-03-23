.class Landroidx/fragment/app/n$k;
.super Landroidx/activity/result/f/a;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Landroidx/fragment/app/n;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 8
  name = "k"
.end annotation
.annotation system Ldalvik/annotation/Signature;
  value = {
    "Landroidx/activity/result/f/a<",
    "Landroidx/activity/result/e;",
    "Landroidx/activity/result/a;",
    ">;"
  }
.end annotation

.method constructor <init>()V
  .registers 1
  .line 1
    invoke-direct { p0 }, Landroidx/activity/result/f/a;-><init>()V
    return-void
.end method

.method public bridge synthetic a(Landroid/content/Context;Ljava/lang/Object;)Landroid/content/Intent;
  .registers 3
  .line 1
    check-cast p2, Landroidx/activity/result/e;
    invoke-virtual { p0, p1, p2 }, Landroidx/fragment/app/n$k;->d(Landroid/content/Context;Landroidx/activity/result/e;)Landroid/content/Intent;
    move-result-object p1
    return-object p1
.end method

.method public bridge synthetic c(ILandroid/content/Intent;)Ljava/lang/Object;
  .registers 3
  .line 1
    invoke-virtual { p0, p1, p2 }, Landroidx/fragment/app/n$k;->e(ILandroid/content/Intent;)Landroidx/activity/result/a;
    move-result-object p1
    return-object p1
.end method

.method public d(Landroid/content/Context;Landroidx/activity/result/e;)Landroid/content/Intent;
  .registers 6
  .line 1
    new-instance p1, Landroid/content/Intent;
    const-string v0, "androidx.activity.result.contract.action.INTENT_SENDER_REQUEST"
    invoke-direct { p1, v0 }, Landroid/content/Intent;-><init>(Ljava/lang/String;)V
  .line 2
    invoke-virtual { p2 }, Landroidx/activity/result/e;->j()Landroid/content/Intent;
    move-result-object v0
    if-eqz v0, :L0
    const-string v1, "androidx.activity.result.contract.extra.ACTIVITY_OPTIONS_BUNDLE"
  .line 3
    invoke-virtual { v0, v1 }, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;
    move-result-object v2
    if-eqz v2, :L0
  .line 4
    invoke-virtual { p1, v1, v2 }, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;
  .line 5
    invoke-virtual { v0, v1 }, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V
    const/4 v1, 0
    const-string v2, "androidx.fragment.extra.ACTIVITY_OPTIONS_BUNDLE"
  .line 6
    invoke-virtual { v0, v2, v1 }, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z
    move-result v0
    if-eqz v0, :L0
  .line 7
    new-instance v0, Landroidx/activity/result/e$b;
    invoke-virtual { p2 }, Landroidx/activity/result/e;->m()Landroid/content/IntentSender;
    move-result-object v1
    invoke-direct { v0, v1 }, Landroidx/activity/result/e$b;-><init>(Landroid/content/IntentSender;)V
    const/4 v1, 0
  .line 8
    invoke-virtual { v0, v1 }, Landroidx/activity/result/e$b;->b(Landroid/content/Intent;)Landroidx/activity/result/e$b;
  .line 9
    invoke-virtual { p2 }, Landroidx/activity/result/e;->l()I
    move-result v1
    invoke-virtual { p2 }, Landroidx/activity/result/e;->k()I
    move-result p2
    invoke-virtual { v0, v1, p2 }, Landroidx/activity/result/e$b;->c(II)Landroidx/activity/result/e$b;
  .line 10
    invoke-virtual { v0 }, Landroidx/activity/result/e$b;->a()Landroidx/activity/result/e;
    move-result-object p2
  :L0
    const-string v0, "androidx.activity.result.contract.extra.INTENT_SENDER_REQUEST"
  .line 11
    invoke-virtual { p1, v0, p2 }, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;
    const/4 p2, 2
  .line 12
    invoke-static { p2 }, Landroidx/fragment/app/n;->E0(I)Z
    move-result p2
    if-eqz p2, :L1
  .line 13
    new-instance p2, Ljava/lang/StringBuilder;
    invoke-direct { p2 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v0, "CreateIntent created the following intent: "
    invoke-virtual { p2, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { p2, p1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    invoke-virtual { p2 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
  :L1
    return-object p1
.end method

.method public e(ILandroid/content/Intent;)Landroidx/activity/result/a;
  .registers 4
  .line 1
    new-instance v0, Landroidx/activity/result/a;
    invoke-direct { v0, p1, p2 }, Landroidx/activity/result/a;-><init>(ILandroid/content/Intent;)V
    return-object v0
.end method
