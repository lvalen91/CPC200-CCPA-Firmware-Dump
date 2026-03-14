.class public Lcn/manstep/phonemirrorBox/n0/a$d;
.super Ljava/lang/Object;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Lcn/manstep/phonemirrorBox/n0/a;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 1
  name = "d"
.end annotation

.field public a:Ljava/lang/ref/WeakReference;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "Ljava/lang/ref/WeakReference<",
      "Landroid/content/Context;",
      ">;"
    }
  .end annotation
.end field

.field private b:Z

.field private c:Z

.field private d:Z

.method public constructor <init>(Lcn/manstep/phonemirrorBox/n0/a;Landroid/content/Context;)V
  .registers 4
  .line 1
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
  .line 2
    new-instance p1, Ljava/lang/ref/WeakReference;
    const/4 v0, 0
    invoke-direct { p1, v0 }, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/n0/a$d;->a:Ljava/lang/ref/WeakReference;
    const/4 p1, 0
  .line 3
    iput-boolean p1, p0, Lcn/manstep/phonemirrorBox/n0/a$d;->b:Z
  .line 4
    iput-boolean p1, p0, Lcn/manstep/phonemirrorBox/n0/a$d;->c:Z
  .line 5
    iput-boolean p1, p0, Lcn/manstep/phonemirrorBox/n0/a$d;->d:Z
  .line 6
    new-instance p1, Ljava/lang/ref/WeakReference;
    invoke-direct { p1, p2 }, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/n0/a$d;->a:Ljava/lang/ref/WeakReference;
    if-eqz p2, :L0
  .line 7
    iget-boolean p1, p0, Lcn/manstep/phonemirrorBox/n0/a$d;->b:Z
    if-nez p1, :L0
  .line 8
    new-instance p1, Landroid/content/Intent;
    const-class v0, Lcn/manstep/phonemirrorBox/FloatWindowService;
    invoke-direct { p1, p2, v0 }, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
  .line 9
    invoke-virtual { p2, p1 }, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    const/4 p1, 1
  .line 10
    iput-boolean p1, p0, Lcn/manstep/phonemirrorBox/n0/a$d;->b:Z
    const-string p1, "init float window service"
  .line 11
    invoke-static { p1 }, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V
  :L0
    return-void
.end method

.method public a()V
  .registers 4
  .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/n0/a$d;->a:Ljava/lang/ref/WeakReference;
    invoke-virtual { v0 }, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Landroid/content/Context;
    if-eqz v0, :L0
  .line 2
    iget-boolean v1, p0, Lcn/manstep/phonemirrorBox/n0/a$d;->b:Z
    if-eqz v1, :L0
  .line 3
    new-instance v1, Landroid/content/Intent;
    const-class v2, Lcn/manstep/phonemirrorBox/FloatWindowService;
    invoke-direct { v1, v0, v2 }, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
  .line 4
    invoke-virtual { v0, v1 }, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z
    const/4 v0, 0
  .line 5
    iput-boolean v0, p0, Lcn/manstep/phonemirrorBox/n0/a$d;->b:Z
    const-string v0, "destroy float window service"
  .line 6
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V
  :L0
    return-void
.end method

.method public b()Landroid/view/Surface;
  .catch Ljava/lang/InterruptedException; { :L0 .. :L1 } :L2
  .registers 3
  .line 1
    sget-object v0, Lcn/manstep/phonemirrorBox/FloatWindowService;->e:Landroid/view/Surface;
    if-nez v0, :L3
    const-wide/16 v0, 500
  :L0
  .line 2
    invoke-static { v0, v1 }, Ljava/lang/Thread;->sleep(J)V
  :L1
    goto :L3
  :L2
    move-exception v0
  .line 3
    invoke-virtual { v0 }, Ljava/lang/InterruptedException;->printStackTrace()V
  .line 4
    invoke-static { v0 }, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;
    move-result-object v0
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/util/s;->e(Ljava/lang/String;)V
  :L3
  .line 5
    sget-object v0, Lcn/manstep/phonemirrorBox/FloatWindowService;->e:Landroid/view/Surface;
    return-object v0
.end method

.method public c(Z)V
  .registers 2
  .line 1
    invoke-static { p1 }, Lcn/manstep/phonemirrorBox/FloatWindowService;->d(Z)V
    return-void
.end method

.method public d(Z)V
  .registers 3
    if-eqz p1, :L0
  .line 1
    iget-boolean v0, p0, Lcn/manstep/phonemirrorBox/n0/a$d;->c:Z
    if-eqz v0, :L0
    const/4 v0, 1
  .line 2
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/FloatWindowService;->f(Z)V
    goto :L1
  :L0
    const/4 v0, 0
  .line 3
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/FloatWindowService;->f(Z)V
  :L1
  .line 4
    iput-boolean p1, p0, Lcn/manstep/phonemirrorBox/n0/a$d;->d:Z
    return-void
.end method

.method public e(Z)V
  .registers 3
  .line 1
    iget-boolean v0, p0, Lcn/manstep/phonemirrorBox/n0/a$d;->d:Z
    if-eqz v0, :L0
    if-eqz p1, :L0
    const/4 v0, 1
  .line 2
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/FloatWindowService;->f(Z)V
    goto :L1
  :L0
    const/4 v0, 0
  .line 3
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/FloatWindowService;->f(Z)V
  :L1
  .line 4
    iput-boolean p1, p0, Lcn/manstep/phonemirrorBox/n0/a$d;->c:Z
    return-void
.end method

.method public f(II)V
  .registers 4
  .line 1
    sget v0, Lcn/manstep/phonemirrorBox/FloatWindowService;->f:I
    if-ne p1, v0, :L0
    sget v0, Lcn/manstep/phonemirrorBox/FloatWindowService;->g:I
    if-eq p2, v0, :L1
  :L0
  .line 2
    invoke-static { p1, p2 }, Lcn/manstep/phonemirrorBox/FloatWindowService;->e(II)V
  :L1
    return-void
.end method
