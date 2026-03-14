.class Lcn/manstep/phonemirrorBox/util/l$e;
.super Landroid/os/Handler;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Lcn/manstep/phonemirrorBox/util/l;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 10
  name = "e"
.end annotation

.field private final a:Ljava/lang/ref/WeakReference;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "Ljava/lang/ref/WeakReference<",
      "Lcn/manstep/phonemirrorBox/util/l;",
      ">;"
    }
  .end annotation
.end field

.method public constructor <init>(Lcn/manstep/phonemirrorBox/util/l;)V
  .registers 3
  .line 1
    invoke-direct { p0 }, Landroid/os/Handler;-><init>()V
  .line 2
    new-instance v0, Ljava/lang/ref/WeakReference;
    invoke-direct { v0, p1 }, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V
    iput-object v0, p0, Lcn/manstep/phonemirrorBox/util/l$e;->a:Ljava/lang/ref/WeakReference;
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
  .registers 5
  .line 1
    invoke-super { p0, p1 }, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V
  .line 2
    iget v0, p1, Landroid/os/Message;->what:I
    const/4 v1, 1
    if-eqz v0, :L3
    if-eq v0, v1, :L2
    const/4 v1, 2
    if-eq v0, v1, :L1
    const/4 v1, 3
    if-eq v0, v1, :L0
    goto/16 :L5
  :L0
  .line 3
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/util/l$e;->a:Ljava/lang/ref/WeakReference;
    invoke-virtual { v0 }, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Lcn/manstep/phonemirrorBox/util/l;
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/util/l;->d(Lcn/manstep/phonemirrorBox/util/l;)Lcn/manstep/phonemirrorBox/util/l$d;
    move-result-object v0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;
    check-cast p1, Ljava/lang/Boolean;
    invoke-virtual { p1 }, Ljava/lang/Boolean;->booleanValue()Z
    move-result p1
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/util/l$e;->a:Ljava/lang/ref/WeakReference;
    invoke-virtual { v1 }, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
    move-result-object v1
    check-cast v1, Lcn/manstep/phonemirrorBox/util/l;
    invoke-static { v1 }, Lcn/manstep/phonemirrorBox/util/l;->f(Lcn/manstep/phonemirrorBox/util/l;)I
    move-result v1
    invoke-interface { v0, p1, v1 }, Lcn/manstep/phonemirrorBox/util/l$d;->d(ZI)V
    goto :L5
  :L1
  .line 4
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/util/l$e;->a:Ljava/lang/ref/WeakReference;
    invoke-virtual { v0 }, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Lcn/manstep/phonemirrorBox/util/l;
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;
    check-cast p1, Landroid/hardware/usb/UsbDevice;
    invoke-static { v0, p1 }, Lcn/manstep/phonemirrorBox/util/l;->e(Lcn/manstep/phonemirrorBox/util/l;Landroid/hardware/usb/UsbDevice;)V
    goto :L5
  :L2
  .line 5
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/util/l$e;->a:Ljava/lang/ref/WeakReference;
    invoke-virtual { v0 }, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Lcn/manstep/phonemirrorBox/util/l;
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/util/l;->d(Lcn/manstep/phonemirrorBox/util/l;)Lcn/manstep/phonemirrorBox/util/l$d;
    move-result-object v0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;
    check-cast p1, Ljava/lang/Integer;
    invoke-virtual { p1 }, Ljava/lang/Integer;->intValue()I
    move-result p1
    invoke-interface { v0, p1 }, Lcn/manstep/phonemirrorBox/util/l$d;->f(I)V
    goto :L5
  :L3
  .line 6
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/util/l$e;->a:Ljava/lang/ref/WeakReference;
    invoke-virtual { v0 }, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Lcn/manstep/phonemirrorBox/util/l;
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/util/l;->c(Lcn/manstep/phonemirrorBox/util/l;)Ljava/util/concurrent/ConcurrentHashMap;
    move-result-object v0
    const/4 v2, 0
    invoke-static { v2 }, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v2
    invoke-virtual { v0, v2 }, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Ljava/util/concurrent/Future;
    if-eqz v0, :L4
  .line 7
    invoke-interface { v0, v1 }, Ljava/util/concurrent/Future;->cancel(Z)Z
  :L4
  .line 8
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/util/l$e;->a:Ljava/lang/ref/WeakReference;
    invoke-virtual { v0 }, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Lcn/manstep/phonemirrorBox/util/l;
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/util/l;->d(Lcn/manstep/phonemirrorBox/util/l;)Lcn/manstep/phonemirrorBox/util/l$d;
    move-result-object v0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;
    check-cast p1, Ljava/lang/Boolean;
    invoke-virtual { p1 }, Ljava/lang/Boolean;->booleanValue()Z
    move-result p1
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/util/l$e;->a:Ljava/lang/ref/WeakReference;
    invoke-virtual { v1 }, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
    move-result-object v1
    check-cast v1, Lcn/manstep/phonemirrorBox/util/l;
    invoke-static { v1 }, Lcn/manstep/phonemirrorBox/util/l;->k(Lcn/manstep/phonemirrorBox/util/l;)Ljava/util/ArrayList;
    move-result-object v1
    const-string v2, ","
    invoke-static { v1, v2 }, Lcn/manstep/phonemirrorBox/o0/a;->c(Ljava/lang/Iterable;Ljava/lang/String;)Ljava/lang/String;
    move-result-object v1
    invoke-interface { v0, p1, v1 }, Lcn/manstep/phonemirrorBox/util/l$d;->q(ZLjava/lang/String;)V
  :L5
    return-void
.end method
