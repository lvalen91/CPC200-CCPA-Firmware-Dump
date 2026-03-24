.class public Lcn/manstep/phonemirrorBox/d/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/manstep/phonemirrorBox/d/a$d;
    }
.end annotation


# instance fields
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


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcn/manstep/phonemirrorBox/d/a;->a:Ljava/lang/ref/WeakReference;

    .line 3
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/manstep/phonemirrorBox/d/a;->c:Ljava/util/List;

    .line 5
    new-instance v0, Lcn/manstep/phonemirrorBox/d/a$a;

    invoke-direct {v0, p0}, Lcn/manstep/phonemirrorBox/d/a$a;-><init>(Lcn/manstep/phonemirrorBox/d/a;)V

    iput-object v0, p0, Lcn/manstep/phonemirrorBox/d/a;->d:Ljava/lang/Runnable;

    .line 6
    new-instance v0, Lcn/manstep/phonemirrorBox/d/a$b;

    invoke-direct {v0, p0}, Lcn/manstep/phonemirrorBox/d/a$b;-><init>(Lcn/manstep/phonemirrorBox/d/a;)V

    iput-object v0, p0, Lcn/manstep/phonemirrorBox/d/a;->e:Ljava/lang/Runnable;

    const-string v0, ""

    .line 7
    iput-object v0, p0, Lcn/manstep/phonemirrorBox/d/a;->i:Ljava/lang/String;

    .line 8
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcn/manstep/phonemirrorBox/d/a;->a:Ljava/lang/ref/WeakReference;

    const-string v0, "usb"

    .line 9
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/usb/UsbManager;

    .line 10
    invoke-direct {p0, p1}, Lcn/manstep/phonemirrorBox/d/a;->j(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcn/manstep/phonemirrorBox/d/a;->i:Ljava/lang/String;

    .line 11
    new-instance p1, Lcn/manstep/phonemirrorBox/d/a$c;

    invoke-direct {p1, p0}, Lcn/manstep/phonemirrorBox/d/a$c;-><init>(Lcn/manstep/phonemirrorBox/d/a;)V

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
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimSerialNumber()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v2, "android_id"

    invoke-static {p1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 5
    new-instance v2, Ljava/util/UUID;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p1

    int-to-long v3, p1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result p1

    int-to-long v5, p1

    const/16 p1, 0x20

    shl-long/2addr v5, p1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result p1

    int-to-long v0, p1

    or-long/2addr v0, v5

    invoke-direct {v2, v3, v4, v0, v1}, Ljava/util/UUID;-><init>(JJ)V

    .line 6
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "hwrd_"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "uuid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V

    return-object p1
.end method


# virtual methods
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

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 2
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/d/a;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3
    invoke-interface {p1, p0}, Lcn/manstep/phonemirrorBox/d/a$d;->e(Lcn/manstep/phonemirrorBox/d/a;)V

    :cond_10
    return-void
.end method

.method public f(Landroid/content/Context;)V
    .registers 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcn/manstep/phonemirrorBox/d/a;->a:Ljava/lang/ref/WeakReference;

    if-eqz p1, :cond_12

    const-string v0, "usb"

    .line 3
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/usb/UsbManager;

    .line 4
    :cond_12
    monitor-exit p0

    return-void

    :catchall_14
    move-exception p1

    monitor-exit p0
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_14

    throw p1
.end method

.method public g()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/d/a;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2
    invoke-virtual {p0}, Lcn/manstep/phonemirrorBox/d/a;->l()V

    .line 3
    invoke-virtual {p0}, Lcn/manstep/phonemirrorBox/d/a;->m()V

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

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    if-eqz v0, :cond_3f

    .line 2
    new-instance v1, Lcn/manstep/phonemirrorBox/h;

    invoke-direct {v1}, Lcn/manstep/phonemirrorBox/h;-><init>()V

    invoke-virtual {v1, v0}, Lcn/manstep/phonemirrorBox/h;->c(Landroid/content/Context;)V

    .line 3
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/d/a;->f:Ljava/lang/Thread;

    if-nez v0, :cond_3f

    iget-object v0, p0, Lcn/manstep/phonemirrorBox/d/a;->g:Ljava/lang/Thread;

    if-nez v0, :cond_3f

    .line 4
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/d/a;->i:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcn/manstep/phonemirrorBox/d/a;->b(Ljava/lang/String;)V

    .line 5
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcn/manstep/phonemirrorBox/d/a;->d:Ljava/lang/Runnable;

    const-string v2, "read"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, Lcn/manstep/phonemirrorBox/d/a;->f:Ljava/lang/Thread;

    .line 6
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcn/manstep/phonemirrorBox/d/a;->e:Ljava/lang/Runnable;

    const-string v2, "workflow"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, Lcn/manstep/phonemirrorBox/d/a;->g:Ljava/lang/Thread;

    .line 7
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/d/a;->f:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 8
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/d/a;->g:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_3f
    return-void
.end method

.method public l()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/d/a;->h:Ljava/util/TimerTask;

    if-eqz v0, :cond_2b

    .line 2
    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcn/manstep/phonemirrorBox/d/a;->h:Ljava/util/TimerTask;

    .line 4
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/d/a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    if-eqz v1, :cond_2b

    if-eqz v1, :cond_2b

    .line 5
    iget-object v2, p0, Lcn/manstep/phonemirrorBox/d/a;->b:Landroid/content/BroadcastReceiver;

    if-eqz v2, :cond_2b

    .line 6
    :try_start_1a
    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1d} :catch_1e

    goto :goto_29

    :catch_1e
    move-exception v1

    .line 7
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 8
    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/manstep/phonemirrorBox/util/s;->e(Ljava/lang/String;)V

    .line 9
    :goto_29
    iput-object v0, p0, Lcn/manstep/phonemirrorBox/d/a;->b:Landroid/content/BroadcastReceiver;

    :cond_2b
    return-void
.end method

.method public m()V
    .registers 3

    .line 1
    invoke-virtual {p0}, Lcn/manstep/phonemirrorBox/d/a;->c()V

    .line 2
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/d/a;->f:Ljava/lang/Thread;

    const/4 v1, 0x0

    if-eqz v0, :cond_1f

    .line 3
    :try_start_8
    invoke-virtual {v0}, Ljava/lang/Thread;->join()V
    :try_end_b
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_b} :catch_10
    .catchall {:try_start_8 .. :try_end_b} :catchall_e

    .line 4
    :goto_b
    iput-object v1, p0, Lcn/manstep/phonemirrorBox/d/a;->f:Ljava/lang/Thread;

    goto :goto_1f

    :catchall_e
    move-exception v0

    goto :goto_1c

    :catch_10
    move-exception v0

    .line 5
    :try_start_11
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 6
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/manstep/phonemirrorBox/util/s;->e(Ljava/lang/String;)V
    :try_end_1b
    .catchall {:try_start_11 .. :try_end_1b} :catchall_e

    goto :goto_b

    .line 7
    :goto_1c
    iput-object v1, p0, Lcn/manstep/phonemirrorBox/d/a;->f:Ljava/lang/Thread;

    .line 8
    throw v0

    .line 9
    :cond_1f
    :goto_1f
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/d/a;->g:Ljava/lang/Thread;

    if-eqz v0, :cond_3a

    .line 10
    :try_start_23
    invoke-virtual {v0}, Ljava/lang/Thread;->join()V
    :try_end_26
    .catch Ljava/lang/InterruptedException; {:try_start_23 .. :try_end_26} :catch_2b
    .catchall {:try_start_23 .. :try_end_26} :catchall_29

    .line 11
    :goto_26
    iput-object v1, p0, Lcn/manstep/phonemirrorBox/d/a;->g:Ljava/lang/Thread;

    goto :goto_3a

    :catchall_29
    move-exception v0

    goto :goto_37

    :catch_2b
    move-exception v0

    .line 12
    :try_start_2c
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 13
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/manstep/phonemirrorBox/util/s;->e(Ljava/lang/String;)V
    :try_end_36
    .catchall {:try_start_2c .. :try_end_36} :catchall_29

    goto :goto_26

    .line 14
    :goto_37
    iput-object v1, p0, Lcn/manstep/phonemirrorBox/d/a;->g:Ljava/lang/Thread;

    .line 15
    throw v0

    .line 16
    :cond_3a
    :goto_3a
    invoke-virtual {p0}, Lcn/manstep/phonemirrorBox/d/a;->a()V

    return-void
.end method
