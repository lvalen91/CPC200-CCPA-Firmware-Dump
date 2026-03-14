.class Lcn/manstep/phonemirrorBox/n0/a$g;
.super Landroid/os/Handler;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Lcn/manstep/phonemirrorBox/n0/a;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 10
  name = "g"
.end annotation

.field private a:Ljava/lang/ref/WeakReference;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "Ljava/lang/ref/WeakReference<",
      "Lcn/manstep/phonemirrorBox/n0/a$h;",
      ">;"
    }
  .end annotation
.end field

.method public constructor <init>(Lcn/manstep/phonemirrorBox/n0/a$h;)V
  .registers 3
  .line 1
    invoke-direct { p0 }, Landroid/os/Handler;-><init>()V
  .line 2
    new-instance v0, Ljava/lang/ref/WeakReference;
    invoke-direct { v0, p1 }, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V
    iput-object v0, p0, Lcn/manstep/phonemirrorBox/n0/a$g;->a:Ljava/lang/ref/WeakReference;
    return-void
.end method

.method public a()V
  .registers 2
    const/4 v0, 4
  .line 1
    invoke-virtual { p0, v0 }, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;
    move-result-object v0
    invoke-virtual { p0, v0 }, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    return-void
.end method

.method public b()V
  .registers 2
    const/4 v0, 3
  .line 1
    invoke-virtual { p0, v0 }, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;
    move-result-object v0
    invoke-virtual { p0, v0 }, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
  .registers 6
  .line 1
    iget v0, p1, Landroid/os/Message;->what:I
  .line 2
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/n0/a$g;->a:Ljava/lang/ref/WeakReference;
    invoke-virtual { v1 }, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
    move-result-object v1
    check-cast v1, Lcn/manstep/phonemirrorBox/n0/a$h;
    if-nez v1, :L0
    const-string p1, "RenderHandler.handleMessage: weak ref is null"
  .line 3
    invoke-static { p1 }, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V
    return-void
  :L0
    const/4 v2, 1
    const/4 v3, 0
    if-eqz v0, :L6
    if-eq v0, v2, :L5
    const/4 v2, 2
    if-eq v0, v2, :L4
    const/4 v2, 3
    if-eq v0, v2, :L3
    const/4 v2, 4
    if-eq v0, v2, :L2
    const/4 v2, 5
    if-eq v0, v2, :L1
    goto :L9
  :L1
  .line 4
    iget v0, p1, Landroid/os/Message;->arg1:I
    iget p1, p1, Landroid/os/Message;->arg2:I
    invoke-static { v1, v0, p1 }, Lcn/manstep/phonemirrorBox/n0/a$h;->f(Lcn/manstep/phonemirrorBox/n0/a$h;II)V
    goto :L9
  :L2
  .line 5
    invoke-static { v1 }, Lcn/manstep/phonemirrorBox/n0/a$h;->e(Lcn/manstep/phonemirrorBox/n0/a$h;)V
    goto :L9
  :L3
  .line 6
    sput-boolean v3, Lcn/manstep/phonemirrorBox/n0/a;->m:Z
  .line 7
    invoke-static { v1 }, Lcn/manstep/phonemirrorBox/n0/a$h;->d(Lcn/manstep/phonemirrorBox/n0/a$h;)V
    goto :L9
  :L4
  .line 8
    sput-boolean v3, Lcn/manstep/phonemirrorBox/n0/a;->m:Z
  .line 9
    invoke-static { v1 }, Lcn/manstep/phonemirrorBox/n0/a$h;->c(Lcn/manstep/phonemirrorBox/n0/a$h;)V
    goto :L9
  :L5
  .line 10
    iget v0, p1, Landroid/os/Message;->arg1:I
    iget p1, p1, Landroid/os/Message;->arg2:I
    invoke-static { v1, v0, p1 }, Lcn/manstep/phonemirrorBox/n0/a$h;->b(Lcn/manstep/phonemirrorBox/n0/a$h;II)V
    goto :L9
  :L6
  .line 11
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;
    check-cast v0, Landroid/view/SurfaceHolder;
    iget p1, p1, Landroid/os/Message;->arg1:I
    if-eqz p1, :L7
    goto :L8
  :L7
    const/4 v2, 0
  :L8
    invoke-static { v1, v0, v2 }, Lcn/manstep/phonemirrorBox/n0/a$h;->a(Lcn/manstep/phonemirrorBox/n0/a$h;Landroid/view/SurfaceHolder;Z)V
  :L9
    return-void
.end method
