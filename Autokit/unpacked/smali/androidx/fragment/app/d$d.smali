.class Landroidx/fragment/app/d$d;
.super Ljava/lang/Object;
.implements Landroidx/lifecycle/p;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Landroidx/fragment/app/d;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = null
.end annotation
.annotation system Ldalvik/annotation/Signature;
  value = {
    "Ljava/lang/Object;",
    "Landroidx/lifecycle/p<",
    "Landroidx/lifecycle/j;",
    ">;"
  }
.end annotation

.field final synthetic a:Landroidx/fragment/app/d;

.method constructor <init>(Landroidx/fragment/app/d;)V
  .registers 2
  .line 1
    iput-object p1, p0, Landroidx/fragment/app/d$d;->a:Landroidx/fragment/app/d;
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public a(Landroidx/lifecycle/j;)V
  .annotation build Landroid/annotation/SuppressLint;
    value = {
      "SyntheticAccessor"
    }
  .end annotation
  .registers 4
    if-eqz p1, :L2
  .line 1
    iget-object p1, p0, Landroidx/fragment/app/d$d;->a:Landroidx/fragment/app/d;
    invoke-static { p1 }, Landroidx/fragment/app/d;->i2(Landroidx/fragment/app/d;)Z
    move-result p1
    if-eqz p1, :L2
  .line 2
    iget-object p1, p0, Landroidx/fragment/app/d$d;->a:Landroidx/fragment/app/d;
    invoke-virtual { p1 }, Landroidx/fragment/app/Fragment;->L1()Landroid/view/View;
    move-result-object p1
  .line 3
    invoke-virtual { p1 }, Landroid/view/View;->getParent()Landroid/view/ViewParent;
    move-result-object v0
    if-nez v0, :L1
  .line 4
    iget-object v0, p0, Landroidx/fragment/app/d$d;->a:Landroidx/fragment/app/d;
    invoke-static { v0 }, Landroidx/fragment/app/d;->g2(Landroidx/fragment/app/d;)Landroid/app/Dialog;
    move-result-object v0
    if-eqz v0, :L2
    const/4 v0, 3
  .line 5
    invoke-static { v0 }, Landroidx/fragment/app/n;->E0(I)Z
    move-result v0
    if-eqz v0, :L0
  .line 6
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "DialogFragment "
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0, p0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    const-string v1, " setting the content view on "
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget-object v1, p0, Landroidx/fragment/app/d$d;->a:Landroidx/fragment/app/d;
  .line 7
    invoke-static { v1 }, Landroidx/fragment/app/d;->g2(Landroidx/fragment/app/d;)Landroid/app/Dialog;
    move-result-object v1
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
  :L0
  .line 8
    iget-object v0, p0, Landroidx/fragment/app/d$d;->a:Landroidx/fragment/app/d;
    invoke-static { v0 }, Landroidx/fragment/app/d;->g2(Landroidx/fragment/app/d;)Landroid/app/Dialog;
    move-result-object v0
    invoke-virtual { v0, p1 }, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V
    goto :L2
  :L1
  .line 9
    new-instance p1, Ljava/lang/IllegalStateException;
    const-string v0, "DialogFragment can not be attached to a container view"
    invoke-direct { p1, v0 }, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
    throw p1
  :L2
    return-void
.end method

.method public bridge synthetic c(Ljava/lang/Object;)V
  .annotation build Landroid/annotation/SuppressLint;
    value = {
      "SyntheticAccessor"
    }
  .end annotation
  .registers 2
  .line 1
    check-cast p1, Landroidx/lifecycle/j;
    invoke-virtual { p0, p1 }, Landroidx/fragment/app/d$d;->a(Landroidx/lifecycle/j;)V
    return-void
.end method
