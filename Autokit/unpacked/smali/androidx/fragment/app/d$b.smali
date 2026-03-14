.class Landroidx/fragment/app/d$b;
.super Ljava/lang/Object;
.implements Landroid/content/DialogInterface$OnCancelListener;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Landroidx/fragment/app/d;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = null
.end annotation

.field final synthetic b:Landroidx/fragment/app/d;

.method constructor <init>(Landroidx/fragment/app/d;)V
  .registers 2
  .line 1
    iput-object p1, p0, Landroidx/fragment/app/d$b;->b:Landroidx/fragment/app/d;
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
  .annotation build Landroid/annotation/SuppressLint;
    value = {
      "SyntheticAccessor"
    }
  .end annotation
  .registers 3
  .line 1
    iget-object p1, p0, Landroidx/fragment/app/d$b;->b:Landroidx/fragment/app/d;
    invoke-static { p1 }, Landroidx/fragment/app/d;->g2(Landroidx/fragment/app/d;)Landroid/app/Dialog;
    move-result-object p1
    if-eqz p1, :L0
  .line 2
    iget-object p1, p0, Landroidx/fragment/app/d$b;->b:Landroidx/fragment/app/d;
    invoke-static { p1 }, Landroidx/fragment/app/d;->g2(Landroidx/fragment/app/d;)Landroid/app/Dialog;
    move-result-object v0
    invoke-virtual { p1, v0 }, Landroidx/fragment/app/d;->onCancel(Landroid/content/DialogInterface;)V
  :L0
    return-void
.end method
