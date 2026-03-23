.class Landroidx/appcompat/app/AlertController$a;
.super Ljava/lang/Object;
.implements Landroid/view/View$OnClickListener;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Landroidx/appcompat/app/AlertController;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = null
.end annotation

.field final synthetic b:Landroidx/appcompat/app/AlertController;

.method constructor <init>(Landroidx/appcompat/app/AlertController;)V
  .registers 2
  .line 1
    iput-object p1, p0, Landroidx/appcompat/app/AlertController$a;->b:Landroidx/appcompat/app/AlertController;
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public onClick(Landroid/view/View;)V
  .registers 4
  .line 1
    iget-object v0, p0, Landroidx/appcompat/app/AlertController$a;->b:Landroidx/appcompat/app/AlertController;
    iget-object v1, v0, Landroidx/appcompat/app/AlertController;->o:Landroid/widget/Button;
    if-ne p1, v1, :L0
    iget-object v0, v0, Landroidx/appcompat/app/AlertController;->q:Landroid/os/Message;
    if-eqz v0, :L0
  .line 2
    invoke-static { v0 }, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;
    move-result-object p1
    goto :L3
  :L0
  .line 3
    iget-object v0, p0, Landroidx/appcompat/app/AlertController$a;->b:Landroidx/appcompat/app/AlertController;
    iget-object v1, v0, Landroidx/appcompat/app/AlertController;->s:Landroid/widget/Button;
    if-ne p1, v1, :L1
    iget-object v0, v0, Landroidx/appcompat/app/AlertController;->u:Landroid/os/Message;
    if-eqz v0, :L1
  .line 4
    invoke-static { v0 }, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;
    move-result-object p1
    goto :L3
  :L1
  .line 5
    iget-object v0, p0, Landroidx/appcompat/app/AlertController$a;->b:Landroidx/appcompat/app/AlertController;
    iget-object v1, v0, Landroidx/appcompat/app/AlertController;->w:Landroid/widget/Button;
    if-ne p1, v1, :L2
    iget-object p1, v0, Landroidx/appcompat/app/AlertController;->y:Landroid/os/Message;
    if-eqz p1, :L2
  .line 6
    invoke-static { p1 }, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;
    move-result-object p1
    goto :L3
  :L2
    const/4 p1, 0
  :L3
    if-eqz p1, :L4
  .line 7
    invoke-virtual { p1 }, Landroid/os/Message;->sendToTarget()V
  :L4
  .line 8
    iget-object p1, p0, Landroidx/appcompat/app/AlertController$a;->b:Landroidx/appcompat/app/AlertController;
    iget-object v0, p1, Landroidx/appcompat/app/AlertController;->R:Landroid/os/Handler;
    const/4 v1, 1
    iget-object p1, p1, Landroidx/appcompat/app/AlertController;->b:Landroidx/appcompat/app/h;
    invoke-virtual { v0, v1, p1 }, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;
    move-result-object p1
  .line 9
    invoke-virtual { p1 }, Landroid/os/Message;->sendToTarget()V
    return-void
.end method
