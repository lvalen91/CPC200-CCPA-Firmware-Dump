.class Landroidx/activity/ComponentActivity$a;
.super Ljava/lang/Object;
.implements Ljava/lang/Runnable;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Landroidx/activity/ComponentActivity;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = null
.end annotation

.field final synthetic b:Landroidx/activity/ComponentActivity;

.method constructor <init>(Landroidx/activity/ComponentActivity;)V
  .registers 2
  .line 1
    iput-object p1, p0, Landroidx/activity/ComponentActivity$a;->b:Landroidx/activity/ComponentActivity;
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public run()V
  .catch Ljava/lang/IllegalStateException; { :L0 .. :L1 } :L2
  .registers 4
  :L0
  .line 1
    iget-object v0, p0, Landroidx/activity/ComponentActivity$a;->b:Landroidx/activity/ComponentActivity;
    invoke-static { v0 }, Landroidx/activity/ComponentActivity;->access$001(Landroidx/activity/ComponentActivity;)V
  :L1
    goto :L3
  :L2
    move-exception v0
  .line 2
    invoke-virtual { v0 }, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;
    move-result-object v1
    const-string v2, "Can not perform this action after onSaveInstanceState"
    invoke-static { v1, v2 }, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    move-result v1
    if-eqz v1, :L4
  :L3
    return-void
  :L4
  .line 3
    throw v0
.end method
