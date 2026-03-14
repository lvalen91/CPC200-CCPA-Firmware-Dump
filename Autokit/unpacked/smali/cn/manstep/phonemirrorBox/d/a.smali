.class public Lcn/manstep/phonemirrorBox/d/a;
.super Ljava/lang/Object;
.source "SourceFile"

.annotation system Ldalvik/annotation/MemberClasses;
  value = {
    Lcn/manstep/phonemirrorBox/d/a$d;
  }
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

.field private b:Landroid/content/BroadcastReceiver;

.field private c:Ljava/util/List;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "Ljava/util/List<",
      "Lcn/manstep/phonemirrorBox/d/a$d;",
      ">;"
    }
  .end annotation
.end field

.field private d:Ljava/lang/Runnable;

.field private e:Ljava/lang/Runnable;

.field private f:Ljava/lang/Thread;

.field private g:Ljava/lang/Thread;

.field private h:Ljava/util/TimerTask;

.field private i:Ljava/lang/String;

.method public constructor <init>(Landroid/content/Context;)V
  .registers 4
  .line 1
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
  .line 2
    new-instance v0, Ljava/lang/ref/WeakReference;
    const/4 v1, 0
    invoke-direct { v0, v1 }, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V
    iput-object v0, p0, Lcn/manstep/phonemirrorBox/d/a;->a:Ljava/lang/ref/WeakReference;
  .line 3
    new-instance v0, Ljava/util/Timer;
    invoke-direct { v0 }, Ljava/util/Timer;-><init>()V
  .line 4
    new-instance v0, Ljava/util/ArrayList;
    invoke-direct { v0 }, Ljava/util/ArrayList;-><init>()V
    iput-object v0, p0, Lcn/manstep/phonemirrorBox/d/a;->c:Ljava/util/List;
  .line 5
    new-instance v0, Lcn/manstep/phonemirrorBox/d/a$a;
    invoke-direct { v0, p0 }, Lcn/manstep/phonemirrorBox/d/a$a;-><init>(Lcn/manstep/phonemirrorBox/d/a;)V
    iput-object v0, p0, Lcn/manstep/phonemirrorBox/d/a;->d:Ljava/lang/Runnable;
  .line 6
    new-instance v0, Lcn/manstep/phonemirrorBox/d/a$b;
    invoke-direct { v0, p0 }, Lcn/manstep/phonemirrorBox/d/a$b;-><init>(Lcn/manstep/phonemirrorBox/d/a;)V
    iput-object v0, p0, Lcn/manstep/phonemirrorBox/d/a;->e:Ljava/lang/Runnable;
    const-string v0, ""
  .line 7
    iput-object v0, p0, Lcn/manstep/phonemirrorBox/d/a;->i:Ljava/lang/String;
  .line 8
    new-instance v0, Ljava/lang/ref/WeakReference;
    invoke-direct { v0, p1 }, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V
    iput-object v0, p0, Lcn/manstep/phonemirrorBox/d/a;->a:Ljava/lang/ref/WeakReference;
    const-string v0, "usb"
  .line 9
    invoke-virtual { p1, v0 }, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Landroid/hardware/usb/UsbManager;
  .line 10
    invoke-direct { p0, p1 }, Lcn/manstep/phonemirrorBox/d/a;->j(Landroid/content/Context;)Ljava/lang/String;
    move-result-object p1
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/d/a;->i:Ljava/lang/String;
  .line 11
    new-instance p1, Lcn/manstep/phonemirrorBox/d/a$c;
    invoke-direct { p1, p0 }, Lcn/manstep/phonemirrorBox/d/a$c;-><init>(Lcn/manstep/phonemirrorBox/d/a;)V
    return-void
.end method

.method static synthetic d(Lcn/manstep/phonemirrorBox/d/a;)Ljava/util/List;
  .registers 1
  .line 1
    iget-object p0, p0, Lcn/manstep/phonemirrorBox/d/a;->c:Ljava/util/List;
    return-object p0
.end method

.method private j(Landroid/content/Context;)Ljava/lang/String;
  .registers 9
    const-string v0, "phone"
  .line 1
    invoke-virtual { p1, v0 }, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Landroid/telephony/TelephonyManager;
  .line 2
    new-instance v1, Ljava/lang/StringBuilder;
    invoke-direct { v1 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v2, ""
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;
    move-result-object v3
    invoke-virtual { v1, v3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v1
  .line 3
    new-instance v3, Ljava/lang/StringBuilder;
    invoke-direct { v3 }, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual { v3, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Landroid/telephony/TelephonyManager;->getSimSerialNumber()Ljava/lang/String;
    move-result-object v0
    invoke-virtual { v3, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v3 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
  .line 4
    new-instance v3, Ljava/lang/StringBuilder;
    invoke-direct { v3 }, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual { v3, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { p1 }, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;
    move-result-object p1
    const-string v2, "android_id"
    invoke-static { p1, v2 }, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    move-result-object p1
    invoke-virtual { v3, p1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v3 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p1
  .line 5
    new-instance v2, Ljava/util/UUID;
    invoke-virtual { p1 }, Ljava/lang/String;->hashCode()I
    move-result p1
    int-to-long v3, p1
    invoke-virtual { v1 }, Ljava/lang/String;->hashCode()I
    move-result p1
    int-to-long v5, p1
    const/16 p1, 32
    shl-long/2addr v5, p1
    invoke-virtual { v0 }, Ljava/lang/String;->hashCode()I
    move-result p1
    int-to-long v0, p1
    or-long/2addr v0, v5
    invoke-direct { v2, v3, v4, v0, v1 }, Ljava/util/UUID;-><init>(JJ)V
  .line 6
    new-instance p1, Ljava/lang/StringBuilder;
    invoke-direct { p1 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v0, "hwrd_"
    invoke-virtual { p1, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v2 }, Ljava/util/UUID;->toString()Ljava/lang/String;
    move-result-object v0
    invoke-virtual { p1, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { p1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p1
  .line 7
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "uuid="
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0, p1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V
    return-object p1
.end method

.method public a()V
  .registers 1
    return-void
.end method

.method public b(Ljava/lang/String;)V
  .registers 2
    return-void
.end method

.method public c()V
  .registers 1
    return-void
.end method

.method public e(Lcn/manstep/phonemirrorBox/d/a$d;)V
  .registers 3
  .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/d/a;->c:Ljava/util/List;
    invoke-interface { v0, p1 }, Ljava/util/List;->contains(Ljava/lang/Object;)Z
    move-result v0
    if-nez v0, :L0
  .line 2
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/d/a;->c:Ljava/util/List;
    invoke-interface { v0, p1 }, Ljava/util/List;->add(Ljava/lang/Object;)Z
  .line 3
    invoke-interface { p1, p0 }, Lcn/manstep/phonemirrorBox/d/a$d;->e(Lcn/manstep/phonemirrorBox/d/a;)V
  :L0
    return-void
.end method

.method public f(Landroid/content/Context;)V
  .catchall { :L0 .. :L3 } :L2
  .registers 3
  .line 1
    monitor-enter p0
  :L0
  .line 2
    new-instance v0, Ljava/lang/ref/WeakReference;
    invoke-direct { v0, p1 }, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V
    iput-object v0, p0, Lcn/manstep/phonemirrorBox/d/a;->a:Ljava/lang/ref/WeakReference;
    if-eqz p1, :L1
    const-string v0, "usb"
  .line 3
    invoke-virtual { p1, v0 }, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    move-result-object p1
    check-cast p1, Landroid/hardware/usb/UsbManager;
  :L1
  .line 4
    monitor-exit p0
    return-void
  :L2
    move-exception p1
    monitor-exit p0
  :L3
    throw p1
.end method

.method public g()V
  .registers 2
  .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/d/a;->c:Ljava/util/List;
    invoke-interface { v0 }, Ljava/util/List;->clear()V
  .line 2
    invoke-virtual { p0 }, Lcn/manstep/phonemirrorBox/d/a;->l()V
  .line 3
    invoke-virtual { p0 }, Lcn/manstep/phonemirrorBox/d/a;->m()V
    return-void
.end method

.method public h()V
  .registers 1
    return-void
.end method

.method public i()V
  .registers 1
    return-void
.end method

.method public k()V
  .registers 4
  .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/d/a;->a:Ljava/lang/ref/WeakReference;
    invoke-virtual { v0 }, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Landroid/content/Context;
    if-eqz v0, :L0
  .line 2
    new-instance v1, Lcn/manstep/phonemirrorBox/h;
    invoke-direct { v1 }, Lcn/manstep/phonemirrorBox/h;-><init>()V
    invoke-virtual { v1, v0 }, Lcn/manstep/phonemirrorBox/h;->c(Landroid/content/Context;)V
  .line 3
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/d/a;->f:Ljava/lang/Thread;
    if-nez v0, :L0
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/d/a;->g:Ljava/lang/Thread;
    if-nez v0, :L0
  .line 4
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/d/a;->i:Ljava/lang/String;
    invoke-virtual { p0, v0 }, Lcn/manstep/phonemirrorBox/d/a;->b(Ljava/lang/String;)V
  .line 5
    new-instance v0, Ljava/lang/Thread;
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/d/a;->d:Ljava/lang/Runnable;
    const-string v2, "read"
    invoke-direct { v0, v1, v2 }, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V
    iput-object v0, p0, Lcn/manstep/phonemirrorBox/d/a;->f:Ljava/lang/Thread;
  .line 6
    new-instance v0, Ljava/lang/Thread;
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/d/a;->e:Ljava/lang/Runnable;
    const-string v2, "workflow"
    invoke-direct { v0, v1, v2 }, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V
    iput-object v0, p0, Lcn/manstep/phonemirrorBox/d/a;->g:Ljava/lang/Thread;
  .line 7
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/d/a;->f:Ljava/lang/Thread;
    invoke-virtual { v0 }, Ljava/lang/Thread;->start()V
  .line 8
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/d/a;->g:Ljava/lang/Thread;
    invoke-virtual { v0 }, Ljava/lang/Thread;->start()V
  :L0
    return-void
.end method

.method public l()V
  .catch Ljava/lang/Exception; { :L0 .. :L1 } :L2
  .registers 4
  .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/d/a;->h:Ljava/util/TimerTask;
    if-eqz v0, :L4
  .line 2
    invoke-virtual { v0 }, Ljava/util/TimerTask;->cancel()Z
    const/4 v0, 0
  .line 3
    iput-object v0, p0, Lcn/manstep/phonemirrorBox/d/a;->h:Ljava/util/TimerTask;
  .line 4
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/d/a;->a:Ljava/lang/ref/WeakReference;
    invoke-virtual { v1 }, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
    move-result-object v1
    check-cast v1, Landroid/content/Context;
    if-eqz v1, :L4
    if-eqz v1, :L4
  .line 5
    iget-object v2, p0, Lcn/manstep/phonemirrorBox/d/a;->b:Landroid/content/BroadcastReceiver;
    if-eqz v2, :L4
  :L0
  .line 6
    invoke-virtual { v1, v2 }, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
  :L1
    goto :L3
  :L2
    move-exception v1
  .line 7
    invoke-virtual { v1 }, Ljava/lang/Exception;->printStackTrace()V
  .line 8
    invoke-static { v1 }, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;
    move-result-object v1
    invoke-static { v1 }, Lcn/manstep/phonemirrorBox/util/s;->e(Ljava/lang/String;)V
  :L3
  .line 9
    iput-object v0, p0, Lcn/manstep/phonemirrorBox/d/a;->b:Landroid/content/BroadcastReceiver;
  :L4
    return-void
.end method

.method public m()V
  .catch Ljava/lang/InterruptedException; { :L0 .. :L1 } :L3
  .catchall { :L0 .. :L1 } :L2
  .catchall { :L4 .. :L5 } :L2
  .catch Ljava/lang/InterruptedException; { :L8 .. :L9 } :L11
  .catchall { :L8 .. :L9 } :L10
  .catchall { :L12 .. :L13 } :L10
  .registers 3
  .line 1
    invoke-virtual { p0 }, Lcn/manstep/phonemirrorBox/d/a;->c()V
  .line 2
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/d/a;->f:Ljava/lang/Thread;
    const/4 v1, 0
    if-eqz v0, :L7
  :L0
  .line 3
    invoke-virtual { v0 }, Ljava/lang/Thread;->join()V
  :L1
  .line 4
    iput-object v1, p0, Lcn/manstep/phonemirrorBox/d/a;->f:Ljava/lang/Thread;
    goto :L7
  :L2
    move-exception v0
    goto :L6
  :L3
    move-exception v0
  :L4
  .line 5
    invoke-virtual { v0 }, Ljava/lang/InterruptedException;->printStackTrace()V
  .line 6
    invoke-static { v0 }, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;
    move-result-object v0
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/util/s;->e(Ljava/lang/String;)V
  :L5
    goto :L1
  :L6
  .line 7
    iput-object v1, p0, Lcn/manstep/phonemirrorBox/d/a;->f:Ljava/lang/Thread;
  .line 8
    throw v0
  :L7
  .line 9
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/d/a;->g:Ljava/lang/Thread;
    if-eqz v0, :L15
  :L8
  .line 10
    invoke-virtual { v0 }, Ljava/lang/Thread;->join()V
  :L9
  .line 11
    iput-object v1, p0, Lcn/manstep/phonemirrorBox/d/a;->g:Ljava/lang/Thread;
    goto :L15
  :L10
    move-exception v0
    goto :L14
  :L11
    move-exception v0
  :L12
  .line 12
    invoke-virtual { v0 }, Ljava/lang/InterruptedException;->printStackTrace()V
  .line 13
    invoke-static { v0 }, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;
    move-result-object v0
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/util/s;->e(Ljava/lang/String;)V
  :L13
    goto :L9
  :L14
  .line 14
    iput-object v1, p0, Lcn/manstep/phonemirrorBox/d/a;->g:Ljava/lang/Thread;
  .line 15
    throw v0
  :L15
  .line 16
    invoke-virtual { p0 }, Lcn/manstep/phonemirrorBox/d/a;->a()V
    return-void
.end method
