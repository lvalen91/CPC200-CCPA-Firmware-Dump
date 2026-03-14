.class Landroidx/fragment/app/d$a;
.super Ljava/lang/Object;
.implements Ljava/lang/Runnable;
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
    iput-object p1, p0, Landroidx/fragment/app/d$a;->b:Landroidx/fragment/app/d;
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public run()V
  .annotation build Landroid/annotation/SuppressLint;
    value = {
      "SyntheticAccessor"
    }
  .end annotation
  .registers 3
  .line 1
    iget-object v0, p0, Landroidx/fragment/app/d$a;->b:Landroidx/fragment/app/d;
    invoke-static { v0 }, Landroidx/fragment/app/d;->h2(Landroidx/fragment/app/d;)Landroid/content/DialogInterface$OnDismissListener;
    move-result-object v0
    iget-object v1, p0, Landroidx/fragment/app/d$a;->b:Landroidx/fragment/app/d;
    invoke-static { v1 }, Landroidx/fragment/app/d;->g2(Landroidx/fragment/app/d;)Landroid/app/Dialog;
    move-result-object v1
    invoke-interface { v0, v1 }, Landroid/content/DialogInterface$OnDismissListener;->onDismiss(Landroid/content/DialogInterface;)V
    return-void
.end method
