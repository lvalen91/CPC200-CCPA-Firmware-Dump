.class Landroidx/fragment/app/n$a;
.super Ljava/lang/Object;
.implements Landroidx/activity/result/b;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingMethod;
  value = Landroidx/fragment/app/n;->j(Landroidx/fragment/app/k;Landroidx/fragment/app/g;Landroidx/fragment/app/Fragment;)V
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = null
.end annotation
.annotation system Ldalvik/annotation/Signature;
  value = {
    "Ljava/lang/Object;",
    "Landroidx/activity/result/b<",
    "Landroidx/activity/result/a;",
    ">;"
  }
.end annotation

.field final synthetic a:Landroidx/fragment/app/n;

.method constructor <init>(Landroidx/fragment/app/n;)V
  .registers 2
  .line 1
    iput-object p1, p0, Landroidx/fragment/app/n$a;->a:Landroidx/fragment/app/n;
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
  .registers 2
  .line 1
    check-cast p1, Landroidx/activity/result/a;
    invoke-virtual { p0, p1 }, Landroidx/fragment/app/n$a;->b(Landroidx/activity/result/a;)V
    return-void
.end method

.method public b(Landroidx/activity/result/a;)V
  .registers 5
  .line 1
    iget-object v0, p0, Landroidx/fragment/app/n$a;->a:Landroidx/fragment/app/n;
    iget-object v0, v0, Landroidx/fragment/app/n;->C:Ljava/util/ArrayDeque;
    invoke-virtual { v0 }, Ljava/util/ArrayDeque;->pollFirst()Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Landroidx/fragment/app/n$m;
    if-nez v0, :L0
  .line 2
    new-instance p1, Ljava/lang/StringBuilder;
    invoke-direct { p1 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v0, "No IntentSenders were started for "
    invoke-virtual { p1, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { p1, p0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    invoke-virtual { p1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    return-void
  :L0
  .line 3
    iget-object v1, v0, Landroidx/fragment/app/n$m;->b:Ljava/lang/String;
  .line 4
    iget v0, v0, Landroidx/fragment/app/n$m;->c:I
  .line 5
    iget-object v2, p0, Landroidx/fragment/app/n$a;->a:Landroidx/fragment/app/n;
    invoke-static { v2 }, Landroidx/fragment/app/n;->c(Landroidx/fragment/app/n;)Landroidx/fragment/app/v;
    move-result-object v2
    invoke-virtual { v2, v1 }, Landroidx/fragment/app/v;->i(Ljava/lang/String;)Landroidx/fragment/app/Fragment;
    move-result-object v2
    if-nez v2, :L1
  .line 6
    new-instance p1, Ljava/lang/StringBuilder;
    invoke-direct { p1 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v0, "Intent Sender result delivered for unknown Fragment "
    invoke-virtual { p1, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { p1, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { p1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    return-void
  :L1
  .line 7
    invoke-virtual { p1 }, Landroidx/activity/result/a;->k()I
    move-result v1
  .line 8
    invoke-virtual { p1 }, Landroidx/activity/result/a;->j()Landroid/content/Intent;
    move-result-object p1
  .line 9
    invoke-virtual { v2, v0, v1, p1 }, Landroidx/fragment/app/Fragment;->C0(IILandroid/content/Intent;)V
    return-void
.end method
