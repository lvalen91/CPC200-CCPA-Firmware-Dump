.class public final Landroidx/activity/result/f/c;
.super Landroidx/activity/result/f/a;
.source "SourceFile"

.annotation system Ldalvik/annotation/Signature;
  value = {
    "Landroidx/activity/result/f/a<",
    "Ljava/lang/String;",
    "Ljava/lang/Boolean;",
    ">;"
  }
.end annotation

.method public constructor <init>()V
  .registers 1
  .line 1
    invoke-direct { p0 }, Landroidx/activity/result/f/a;-><init>()V
    return-void
.end method

.method public bridge synthetic a(Landroid/content/Context;Ljava/lang/Object;)Landroid/content/Intent;
  .registers 3
  .line 1
    check-cast p2, Ljava/lang/String;
    invoke-virtual { p0, p1, p2 }, Landroidx/activity/result/f/c;->d(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
    move-result-object p1
    return-object p1
.end method

.method public bridge synthetic b(Landroid/content/Context;Ljava/lang/Object;)Landroidx/activity/result/f/a$a;
  .registers 3
  .line 1
    check-cast p2, Ljava/lang/String;
    invoke-virtual { p0, p1, p2 }, Landroidx/activity/result/f/c;->e(Landroid/content/Context;Ljava/lang/String;)Landroidx/activity/result/f/a$a;
    move-result-object p1
    return-object p1
.end method

.method public bridge synthetic c(ILandroid/content/Intent;)Ljava/lang/Object;
  .registers 3
  .line 1
    invoke-virtual { p0, p1, p2 }, Landroidx/activity/result/f/c;->f(ILandroid/content/Intent;)Ljava/lang/Boolean;
    move-result-object p1
    return-object p1
.end method

.method public d(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
  .registers 4
    const/4 p1, 1
    new-array p1, p1, [Ljava/lang/String;
    const/4 v0, 0
    aput-object p2, p1, v0
  .line 1
    invoke-static { p1 }, Landroidx/activity/result/f/b;->e([Ljava/lang/String;)Landroid/content/Intent;
    move-result-object p1
    return-object p1
.end method

.method public e(Landroid/content/Context;Ljava/lang/String;)Landroidx/activity/result/f/a$a;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(",
      "Landroid/content/Context;",
      "Ljava/lang/String;",
      ")",
      "Landroidx/activity/result/f/a$a<",
      "Ljava/lang/Boolean;",
      ">;"
    }
  .end annotation
  .registers 3
    if-nez p2, :L0
  .line 1
    new-instance p1, Landroidx/activity/result/f/a$a;
    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;
    invoke-direct { p1, p2 }, Landroidx/activity/result/f/a$a;-><init>(Ljava/lang/Object;)V
    return-object p1
  :L0
  .line 2
    invoke-static { p1, p2 }, Landroidx/core/content/a;->a(Landroid/content/Context;Ljava/lang/String;)I
    move-result p1
    if-nez p1, :L1
  .line 3
    new-instance p1, Landroidx/activity/result/f/a$a;
    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;
    invoke-direct { p1, p2 }, Landroidx/activity/result/f/a$a;-><init>(Ljava/lang/Object;)V
    return-object p1
  :L1
    const/4 p1, 0
    return-object p1
.end method

.method public f(ILandroid/content/Intent;)Ljava/lang/Boolean;
  .registers 4
    if-eqz p2, :L4
    const/4 v0, -1
    if-eq p1, v0, :L0
    goto :L4
  :L0
    const-string p1, "androidx.activity.result.contract.extra.PERMISSION_GRANT_RESULTS"
  .line 1
    invoke-virtual { p2, p1 }, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I
    move-result-object p1
    if-eqz p1, :L3
  .line 2
    array-length p2, p1
    if-nez p2, :L1
    goto :L3
  :L1
    const/4 p2, 0
  .line 3
    aget p1, p1, p2
    if-nez p1, :L2
    const/4 p2, 1
  :L2
    invoke-static { p2 }, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    move-result-object p1
    return-object p1
  :L3
  .line 4
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;
    return-object p1
  :L4
  .line 5
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;
    return-object p1
.end method
