.class Lcn/manstep/phonemirrorBox/util/l$e;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/manstep/phonemirrorBox/util/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "e"
.end annotation


# instance fields
.field private final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcn/manstep/phonemirrorBox/util/l;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcn/manstep/phonemirrorBox/util/l;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcn/manstep/phonemirrorBox/util/l$e;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5

    .line 1
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 2
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eqz v0, :cond_5e

    if-eq v0, v1, :cond_46

    const/4 v1, 0x2

    if-eq v0, v1, :cond_36

    const/4 v1, 0x3

    if-eq v0, v1, :cond_12

    goto/16 :goto_a3

    .line 3
    :cond_12
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/util/l$e;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/manstep/phonemirrorBox/util/l;

    invoke-static {v0}, Lcn/manstep/phonemirrorBox/util/l;->d(Lcn/manstep/phonemirrorBox/util/l;)Lcn/manstep/phonemirrorBox/util/l$d;

    move-result-object v0

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iget-object v1, p0, Lcn/manstep/phonemirrorBox/util/l$e;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/manstep/phonemirrorBox/util/l;

    invoke-static {v1}, Lcn/manstep/phonemirrorBox/util/l;->f(Lcn/manstep/phonemirrorBox/util/l;)I

    move-result v1

    invoke-interface {v0, p1, v1}, Lcn/manstep/phonemirrorBox/util/l$d;->d(ZI)V

    goto :goto_a3

    .line 4
    :cond_36
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/util/l$e;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/manstep/phonemirrorBox/util/l;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/hardware/usb/UsbDevice;

    invoke-static {v0, p1}, Lcn/manstep/phonemirrorBox/util/l;->e(Lcn/manstep/phonemirrorBox/util/l;Landroid/hardware/usb/UsbDevice;)V

    goto :goto_a3

    .line 5
    :cond_46
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/util/l$e;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/manstep/phonemirrorBox/util/l;

    invoke-static {v0}, Lcn/manstep/phonemirrorBox/util/l;->d(Lcn/manstep/phonemirrorBox/util/l;)Lcn/manstep/phonemirrorBox/util/l$d;

    move-result-object v0

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {v0, p1}, Lcn/manstep/phonemirrorBox/util/l$d;->f(I)V

    goto :goto_a3

    .line 6
    :cond_5e
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/util/l$e;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/manstep/phonemirrorBox/util/l;

    invoke-static {v0}, Lcn/manstep/phonemirrorBox/util/l;->c(Lcn/manstep/phonemirrorBox/util/l;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Future;

    if-eqz v0, :cond_7a

    .line 7
    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 8
    :cond_7a
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/util/l$e;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/manstep/phonemirrorBox/util/l;

    invoke-static {v0}, Lcn/manstep/phonemirrorBox/util/l;->d(Lcn/manstep/phonemirrorBox/util/l;)Lcn/manstep/phonemirrorBox/util/l$d;

    move-result-object v0

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iget-object v1, p0, Lcn/manstep/phonemirrorBox/util/l$e;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/manstep/phonemirrorBox/util/l;

    invoke-static {v1}, Lcn/manstep/phonemirrorBox/util/l;->k(Lcn/manstep/phonemirrorBox/util/l;)Ljava/util/ArrayList;

    move-result-object v1

    const-string v2, ","

    invoke-static {v1, v2}, Lcn/manstep/phonemirrorBox/o0/a;->c(Ljava/lang/Iterable;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcn/manstep/phonemirrorBox/util/l$d;->q(ZLjava/lang/String;)V

    :goto_a3
    return-void
.end method
