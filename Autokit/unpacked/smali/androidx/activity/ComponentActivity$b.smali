.class Landroidx/activity/ComponentActivity$b;
.super Landroidx/activity/result/ActivityResultRegistry;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Landroidx/activity/ComponentActivity;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = null
.end annotation

.field final synthetic i:Landroidx/activity/ComponentActivity;

.method constructor <init>(Landroidx/activity/ComponentActivity;)V
  .registers 2
  .line 1
    iput-object p1, p0, Landroidx/activity/ComponentActivity$b;->i:Landroidx/activity/ComponentActivity;
    invoke-direct { p0 }, Landroidx/activity/result/ActivityResultRegistry;-><init>()V
    return-void
.end method

.method public f(ILandroidx/activity/result/f/a;Ljava/lang/Object;Landroidx/core/app/b;)V
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "<I:",
      "Ljava/lang/Object;",
      "O:",
      "Ljava/lang/Object;",
      ">(I",
      "Landroidx/activity/result/f/a<",
      "TI;TO;>;TI;",
      "Landroidx/core/app/b;",
      ")V"
    }
  .end annotation
  .catch Landroid/content/IntentSender$SendIntentException; { :L6 .. :L7 } :L8
  .registers 13
  .line 1
    iget-object v0, p0, Landroidx/activity/ComponentActivity$b;->i:Landroidx/activity/ComponentActivity;
  .line 2
    invoke-virtual { p2, v0, p3 }, Landroidx/activity/result/f/a;->b(Landroid/content/Context;Ljava/lang/Object;)Landroidx/activity/result/f/a$a;
    move-result-object v1
    if-eqz v1, :L0
  .line 3
    new-instance p2, Landroid/os/Handler;
    invoke-static { }, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;
    move-result-object p3
    invoke-direct { p2, p3 }, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V
    new-instance p3, Landroidx/activity/ComponentActivity$b$a;
    invoke-direct { p3, p0, p1, v1 }, Landroidx/activity/ComponentActivity$b$a;-><init>(Landroidx/activity/ComponentActivity$b;ILandroidx/activity/result/f/a$a;)V
    invoke-virtual { p2, p3 }, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    return-void
  :L0
  .line 4
    invoke-virtual { p2, v0, p3 }, Landroidx/activity/result/f/a;->a(Landroid/content/Context;Ljava/lang/Object;)Landroid/content/Intent;
    move-result-object p2
  .line 5
    invoke-virtual { p2 }, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;
    move-result-object p3
    if-eqz p3, :L1
    invoke-virtual { p2 }, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;
    move-result-object p3
    invoke-virtual { p3 }, Landroid/os/Bundle;->getClassLoader()Ljava/lang/ClassLoader;
    move-result-object p3
    if-nez p3, :L1
  .line 6
    invoke-virtual { v0 }, Landroid/app/Activity;->getClassLoader()Ljava/lang/ClassLoader;
    move-result-object p3
    invoke-virtual { p2, p3 }, Landroid/content/Intent;->setExtrasClassLoader(Ljava/lang/ClassLoader;)V
  :L1
    const-string p3, "androidx.activity.result.contract.extra.ACTIVITY_OPTIONS_BUNDLE"
  .line 7
    invoke-virtual { p2, p3 }, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z
    move-result v1
    const/4 v2, 0
    if-eqz v1, :L2
  .line 8
    invoke-virtual { p2, p3 }, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;
    move-result-object p4
  .line 9
    invoke-virtual { p2, p3 }, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V
    move-object v7, p4
    goto :L3
  :L2
    if-nez p4, :L11
    move-object v7, v2
  :L3
  .line 10
    invoke-virtual { p2 }, Landroid/content/Intent;->getAction()Ljava/lang/String;
    move-result-object p3
    const-string p4, "androidx.activity.result.contract.action.REQUEST_PERMISSIONS"
    invoke-virtual { p4, p3 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result p3
    if-eqz p3, :L5
    const-string p3, "androidx.activity.result.contract.extra.PERMISSIONS"
  .line 11
    invoke-virtual { p2, p3 }, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;
    move-result-object p2
    if-nez p2, :L4
    const/4 p2, 0
    new-array p2, p2, [Ljava/lang/String;
  :L4
  .line 12
    invoke-static { v0, p2, p1 }, Landroidx/core/app/a;->m(Landroid/app/Activity;[Ljava/lang/String;I)V
    goto :L10
  :L5
  .line 13
    invoke-virtual { p2 }, Landroid/content/Intent;->getAction()Ljava/lang/String;
    move-result-object p3
    const-string p4, "androidx.activity.result.contract.action.INTENT_SENDER_REQUEST"
    invoke-virtual { p4, p3 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result p3
    if-eqz p3, :L9
    const-string p3, "androidx.activity.result.contract.extra.INTENT_SENDER_REQUEST"
  .line 14
    invoke-virtual { p2, p3 }, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;
    move-result-object p2
    check-cast p2, Landroidx/activity/result/e;
  :L6
  .line 15
    invoke-virtual { p2 }, Landroidx/activity/result/e;->m()Landroid/content/IntentSender;
    move-result-object v1
  .line 16
    invoke-virtual { p2 }, Landroidx/activity/result/e;->j()Landroid/content/Intent;
    move-result-object v3
    invoke-virtual { p2 }, Landroidx/activity/result/e;->k()I
    move-result v4
  .line 17
    invoke-virtual { p2 }, Landroidx/activity/result/e;->l()I
    move-result v5
    const/4 v6, 0
    move v2, p1
  .line 18
    invoke-static/range { v0 .. v7 }, Landroidx/core/app/a;->r(Landroid/app/Activity;Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V
  :L7
    goto :L10
  :L8
    move-exception p2
  .line 19
    new-instance p3, Landroid/os/Handler;
    invoke-static { }, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;
    move-result-object p4
    invoke-direct { p3, p4 }, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V
    new-instance p4, Landroidx/activity/ComponentActivity$b$b;
    invoke-direct { p4, p0, p1, p2 }, Landroidx/activity/ComponentActivity$b$b;-><init>(Landroidx/activity/ComponentActivity$b;ILandroid/content/IntentSender$SendIntentException;)V
    invoke-virtual { p3, p4 }, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    goto :L10
  :L9
  .line 20
    invoke-static { v0, p2, p1, v7 }, Landroidx/core/app/a;->q(Landroid/app/Activity;Landroid/content/Intent;ILandroid/os/Bundle;)V
  :L10
    return-void
  :L11
  .line 21
    invoke-virtual { p4 }, Landroidx/core/app/b;->a()Landroid/os/Bundle;
    throw v2
.end method
