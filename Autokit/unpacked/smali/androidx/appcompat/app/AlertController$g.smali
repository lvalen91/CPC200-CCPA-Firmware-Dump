.class final Landroidx/appcompat/app/AlertController$g;
.super Landroid/os/Handler;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Landroidx/appcompat/app/AlertController;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 26
  name = "g"
.end annotation

.field private a:Ljava/lang/ref/WeakReference;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "Ljava/lang/ref/WeakReference<",
      "Landroid/content/DialogInterface;",
      ">;"
    }
  .end annotation
.end field

.method public constructor <init>(Landroid/content/DialogInterface;)V
  .registers 3
  .line 1
    invoke-direct { p0 }, Landroid/os/Handler;-><init>()V
  .line 2
    new-instance v0, Ljava/lang/ref/WeakReference;
    invoke-direct { v0, p1 }, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V
    iput-object v0, p0, Landroidx/appcompat/app/AlertController$g;->a:Ljava/lang/ref/WeakReference;
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
  .registers 4
  .line 1
    iget v0, p1, Landroid/os/Message;->what:I
    const/4 v1, -3
    if-eq v0, v1, :L1
    const/4 v1, -2
    if-eq v0, v1, :L1
    const/4 v1, -1
    if-eq v0, v1, :L1
    const/4 v1, 1
    if-eq v0, v1, :L0
    goto :L2
  :L0
  .line 2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;
    check-cast p1, Landroid/content/DialogInterface;
    invoke-interface { p1 }, Landroid/content/DialogInterface;->dismiss()V
    goto :L2
  :L1
  .line 3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;
    check-cast v0, Landroid/content/DialogInterface$OnClickListener;
    iget-object v1, p0, Landroidx/appcompat/app/AlertController$g;->a:Ljava/lang/ref/WeakReference;
    invoke-virtual { v1 }, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
    move-result-object v1
    check-cast v1, Landroid/content/DialogInterface;
    iget p1, p1, Landroid/os/Message;->what:I
    invoke-interface { v0, v1, p1 }, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V
  :L2
    return-void
.end method
