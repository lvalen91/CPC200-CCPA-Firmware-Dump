.class Lcn/manstep/phonemirrorBox/BoxInterface/a$b;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/manstep/phonemirrorBox/BoxInterface/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field private b:Landroid/os/Handler;


# direct methods
.method private constructor <init>(Lcn/manstep/phonemirrorBox/BoxInterface/a;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/a$b;->b:Landroid/os/Handler;

    return-void
.end method

.method synthetic constructor <init>(Lcn/manstep/phonemirrorBox/BoxInterface/a;Lcn/manstep/phonemirrorBox/BoxInterface/a$a;)V
    .registers 3

    .line 3
    invoke-direct {p0, p1}, Lcn/manstep/phonemirrorBox/BoxInterface/a$b;-><init>(Lcn/manstep/phonemirrorBox/BoxInterface/a;)V

    return-void
.end method

.method static synthetic a(Lcn/manstep/phonemirrorBox/BoxInterface/a$b;)V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcn/manstep/phonemirrorBox/BoxInterface/a$b;->b()V

    return-void
.end method

.method private b()V
    .registers 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 3
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 4
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    :cond_14
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/a$b;->b:Landroid/os/Handler;

    .line 6
    :cond_17
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 7
    monitor-exit p0

    return-void

    :catchall_1c
    move-exception v0

    monitor-exit p0
    :try_end_1e
    .catchall {:try_start_1 .. :try_end_1e} :catchall_1c

    throw v0
.end method


# virtual methods
.method public c()Landroid/os/Handler;
    .registers 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/a$b;->b:Landroid/os/Handler;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_18

    if-nez v0, :cond_14

    .line 3
    :try_start_5
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_8
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_8} :catch_9
    .catchall {:try_start_5 .. :try_end_8} :catchall_18

    goto :goto_14

    :catch_9
    move-exception v0

    .line 4
    :try_start_a
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 5
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/manstep/phonemirrorBox/util/s;->e(Ljava/lang/String;)V

    .line 6
    :cond_14
    :goto_14
    monitor-exit p0
    :try_end_15
    .catchall {:try_start_a .. :try_end_15} :catchall_18

    .line 7
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/a$b;->b:Landroid/os/Handler;

    return-object v0

    :catchall_18
    move-exception v0

    .line 8
    :try_start_19
    monitor-exit p0
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_18

    throw v0
.end method

.method public d()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/a$b;->b:Landroid/os/Handler;

    if-eqz v0, :cond_c

    const/4 v1, 0x1

    .line 2
    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 3
    :cond_c
    :try_start_c
    invoke-virtual {p0}, Ljava/lang/Thread;->join()V
    :try_end_f
    .catch Ljava/lang/InterruptedException; {:try_start_c .. :try_end_f} :catch_10

    goto :goto_1b

    :catch_10
    move-exception v0

    .line 4
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 5
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/manstep/phonemirrorBox/util/s;->e(Ljava/lang/String;)V

    :goto_1b
    return-void
.end method

.method public run()V
    .registers 2

    const/16 v0, -0x13

    .line 1
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 2
    monitor-enter p0

    .line 3
    :try_start_6
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 4
    new-instance v0, Lcn/manstep/phonemirrorBox/BoxInterface/a$b$a;

    invoke-direct {v0, p0}, Lcn/manstep/phonemirrorBox/BoxInterface/a$b$a;-><init>(Lcn/manstep/phonemirrorBox/BoxInterface/a$b;)V

    iput-object v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/a$b;->b:Landroid/os/Handler;

    .line 5
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 6
    monitor-exit p0
    :try_end_14
    .catchall {:try_start_6 .. :try_end_14} :catchall_18

    .line 7
    invoke-static {}, Landroid/os/Looper;->loop()V

    return-void

    :catchall_18
    move-exception v0

    .line 8
    :try_start_19
    monitor-exit p0
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_18

    throw v0
.end method
