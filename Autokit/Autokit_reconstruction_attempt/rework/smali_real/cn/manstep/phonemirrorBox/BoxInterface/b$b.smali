.class Lcn/manstep/phonemirrorBox/BoxInterface/b$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/manstep/phonemirrorBox/BoxInterface/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/manstep/phonemirrorBox/BoxInterface/b$b$d;
    }
.end annotation


# static fields
.field private static p:J


# instance fields
.field public a:I

.field b:Z

.field private c:J

.field private d:Landroid/media/MediaCodec;

.field private e:Ljava/lang/Object;

.field private f:Lcn/manstep/phonemirrorBox/BoxInterface/h;

.field private g:Ljava/lang/Thread;

.field private h:J

.field private i:J

.field private j:J

.field private k:Ljava/lang/Thread;

.field private l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private m:Ljava/util/concurrent/ScheduledExecutorService;

.field private n:Ljava/util/TimerTask;

.field private o:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>()V
    .registers 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget v0, Lcn/manstep/phonemirrorBox/p;->C:I

    iput v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/b$b;->a:I

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/b$b;->b:Z

    const-wide/16 v0, 0x0

    .line 4
    iput-wide v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/b$b;->c:J

    const/4 v2, 0x0

    .line 5
    iput-object v2, p0, Lcn/manstep/phonemirrorBox/BoxInterface/b$b;->d:Landroid/media/MediaCodec;

    .line 6
    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v3, p0, Lcn/manstep/phonemirrorBox/BoxInterface/b$b;->e:Ljava/lang/Object;

    .line 7
    iput-object v2, p0, Lcn/manstep/phonemirrorBox/BoxInterface/b$b;->g:Ljava/lang/Thread;

    .line 8
    iput-wide v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/b$b;->h:J

    .line 9
    iput-wide v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/b$b;->i:J

    .line 10
    iput-wide v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/b$b;->j:J

    .line 11
    iput-object v2, p0, Lcn/manstep/phonemirrorBox/BoxInterface/b$b;->k:Ljava/lang/Thread;

    .line 12
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcn/manstep/phonemirrorBox/BoxInterface/b$b;->l:Ljava/util/List;

    .line 13
    iput-object v2, p0, Lcn/manstep/phonemirrorBox/BoxInterface/b$b;->m:Ljava/util/concurrent/ScheduledExecutorService;

    .line 14
    iput-object v2, p0, Lcn/manstep/phonemirrorBox/BoxInterface/b$b;->n:Ljava/util/TimerTask;

    .line 15
    iput-wide v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/b$b;->o:J

    const-string v0, "New AvcDecoder"

    .line 16
    invoke-static {v0}, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V

    return-void
.end method

.method private A([BIIJ)V
    .registers 9

    .line 1
    sget-boolean v0, Lcn/manstep/phonemirrorBox/p;->g:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_17

    .line 2
    new-array v0, p3, [B

    .line 3
    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4
    iget-object v2, p0, Lcn/manstep/phonemirrorBox/BoxInterface/b$b;->e:Ljava/lang/Object;

    monitor-enter v2

    .line 5
    :try_start_d
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/b$b;->f:Lcn/manstep/phonemirrorBox/BoxInterface/h;

    invoke-virtual {p1, v0, p4, p5}, Lcn/manstep/phonemirrorBox/BoxInterface/h;->a([BJ)V

    .line 6
    monitor-exit v2

    goto :goto_3f

    :catchall_14
    move-exception p1

    monitor-exit v2
    :try_end_16
    .catchall {:try_start_d .. :try_end_16} :catchall_14

    throw p1

    .line 7
    :cond_17
    sget v0, Lcn/manstep/phonemirrorBox/p;->F:I

    if-lez v0, :cond_3c

    .line 8
    new-array v0, p3, [B

    .line 9
    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 10
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/b$b;->e:Ljava/lang/Object;

    monitor-enter v1

    .line 11
    :try_start_23
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/b$b;->f:Lcn/manstep/phonemirrorBox/BoxInterface/h;

    invoke-virtual {p1, v0, p4, p5}, Lcn/manstep/phonemirrorBox/BoxInterface/h;->a([BJ)V

    .line 12
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/b$b;->f:Lcn/manstep/phonemirrorBox/BoxInterface/h;

    invoke-virtual {p1}, Lcn/manstep/phonemirrorBox/BoxInterface/h;->f()I

    move-result p1

    sget p2, Lcn/manstep/phonemirrorBox/p;->F:I

    if-ne p1, p2, :cond_37

    .line 13
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/b$b;->e:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 14
    :cond_37
    monitor-exit v1

    goto :goto_3f

    :catchall_39
    move-exception p1

    monitor-exit v1
    :try_end_3b
    .catchall {:try_start_23 .. :try_end_3b} :catchall_39

    throw p1

    .line 15
    :cond_3c
    invoke-direct/range {p0 .. p5}, Lcn/manstep/phonemirrorBox/BoxInterface/b$b;->v([BIIJ)V

    :goto_3f
    return-void
.end method

.method private B(Landroid/view/Surface;II)V
    .registers 14

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AvcDecoder,start: decode h264 size:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/b$b;->m:Ljava/util/concurrent/ScheduledExecutorService;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_3b

    .line 3
    new-instance v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    invoke-direct {v0, v2}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(I)V

    iput-object v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/b$b;->m:Ljava/util/concurrent/ScheduledExecutorService;

    .line 4
    new-instance v4, Lcn/manstep/phonemirrorBox/BoxInterface/b$b$d;

    invoke-direct {v4, p0, v1}, Lcn/manstep/phonemirrorBox/BoxInterface/b$b$d;-><init>(Lcn/manstep/phonemirrorBox/BoxInterface/b$b;Lcn/manstep/phonemirrorBox/BoxInterface/b$a;)V

    iput-object v4, p0, Lcn/manstep/phonemirrorBox/BoxInterface/b$b;->n:Ljava/util/TimerTask;

    .line 5
    iget-object v3, p0, Lcn/manstep/phonemirrorBox/BoxInterface/b$b;->m:Ljava/util/concurrent/ScheduledExecutorService;

    const-wide/16 v5, 0x3e8

    const-wide/16 v7, 0x3e8

    sget-object v9, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface/range {v3 .. v9}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 6
    :cond_3b
    iget-boolean v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/b$b;->b:Z

    if-nez v0, :cond_119

    if-lez p2, :cond_119

    if-lez p3, :cond_119

    .line 7
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/b$b;->e:Ljava/lang/Object;

    monitor-enter v0

    .line 8
    :try_start_46
    sget-boolean v3, Lcn/manstep/phonemirrorBox/p;->g:Z

    const/16 v4, 0x140

    if-eqz v3, :cond_68

    .line 9
    new-instance p1, Lcn/manstep/phonemirrorBox/BoxInterface/h;

    invoke-direct {p1, v4}, Lcn/manstep/phonemirrorBox/BoxInterface/h;-><init>(I)V

    iput-object p1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/b$b;->f:Lcn/manstep/phonemirrorBox/BoxInterface/h;

    .line 10
    iput-boolean v2, p0, Lcn/manstep/phonemirrorBox/BoxInterface/b$b;->b:Z

    .line 11
    new-instance p1, Ljava/lang/Thread;

    new-instance p2, Lcn/manstep/phonemirrorBox/BoxInterface/b$b$a;

    invoke-direct {p2, p0}, Lcn/manstep/phonemirrorBox/BoxInterface/b$b$a;-><init>(Lcn/manstep/phonemirrorBox/BoxInterface/b$b;)V

    const-string p3, "sdv"

    invoke-direct {p1, p2, p3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object p1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/b$b;->g:Ljava/lang/Thread;

    .line 12
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    goto/16 :goto_114

    .line 13
    :cond_68
    iget-object v3, p0, Lcn/manstep/phonemirrorBox/BoxInterface/b$b;->d:Landroid/media/MediaCodec;

    if-eqz v3, :cond_114

    .line 14
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "AvcDecoder,start: AvcDecoder start:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "-"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V

    .line 15
    new-instance v3, Lcn/manstep/phonemirrorBox/BoxInterface/h;

    invoke-direct {v3, v4}, Lcn/manstep/phonemirrorBox/BoxInterface/h;-><init>(I)V

    iput-object v3, p0, Lcn/manstep/phonemirrorBox/BoxInterface/b$b;->f:Lcn/manstep/phonemirrorBox/BoxInterface/h;

    const-string v3, "video/avc"

    .line 16
    invoke-static {v3, p2, p3}, Landroid/media/MediaFormat;->createVideoFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object p2
    :try_end_95
    .catchall {:try_start_46 .. :try_end_95} :catchall_116

    .line 17
    :try_start_95
    invoke-direct {p0, p2, p1}, Lcn/manstep/phonemirrorBox/BoxInterface/b$b;->y(Landroid/media/MediaFormat;Landroid/view/Surface;)V
    :try_end_98
    .catch Ljava/lang/Exception; {:try_start_95 .. :try_end_98} :catch_99
    .catchall {:try_start_95 .. :try_end_98} :catchall_116

    goto :goto_ed

    :catch_99
    move-exception p3

    :try_start_9a
    const-string v3, "AvcDecoder"

    .line 18
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "start: surface="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Lcn/manstep/phonemirrorBox/util/s;->g(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v3, p3}, Lcn/manstep/phonemirrorBox/util/s;->f(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_bc
    .catchall {:try_start_9a .. :try_end_bc} :catchall_116

    .line 19
    :try_start_bc
    iget-object p3, p0, Lcn/manstep/phonemirrorBox/BoxInterface/b$b;->d:Landroid/media/MediaCodec;

    invoke-virtual {p3}, Landroid/media/MediaCodec;->release()V

    .line 20
    iput-object v1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/b$b;->d:Landroid/media/MediaCodec;

    const-string p3, "video/avc"

    .line 21
    invoke-static {p3}, Landroid/media/MediaCodec;->createDecoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object p3

    iput-object p3, p0, Lcn/manstep/phonemirrorBox/BoxInterface/b$b;->d:Landroid/media/MediaCodec;

    .line 22
    invoke-direct {p0, p2, p1}, Lcn/manstep/phonemirrorBox/BoxInterface/b$b;->y(Landroid/media/MediaFormat;Landroid/view/Surface;)V
    :try_end_ce
    .catch Ljava/lang/Exception; {:try_start_bc .. :try_end_ce} :catch_cf
    .catchall {:try_start_bc .. :try_end_ce} :catchall_116

    goto :goto_ed

    :catch_cf
    move-exception p1

    .line 23
    :try_start_d0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "AvcDecoder,start:\n"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcn/manstep/phonemirrorBox/util/s;->g(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/manstep/phonemirrorBox/util/s;->e(Ljava/lang/String;)V

    const/16 p1, 0x12

    .line 24
    invoke-static {v2, p1}, Lcn/manstep/phonemirrorBox/BoxInterface/d;->O(II)Z

    .line 25
    :goto_ed
    new-instance p1, Ljava/lang/Thread;

    new-instance p2, Lcn/manstep/phonemirrorBox/BoxInterface/b$b$b;

    invoke-direct {p2, p0}, Lcn/manstep/phonemirrorBox/BoxInterface/b$b$b;-><init>(Lcn/manstep/phonemirrorBox/BoxInterface/b$b;)V

    const-string p3, "hdv"

    invoke-direct {p1, p2, p3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object p1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/b$b;->g:Ljava/lang/Thread;

    .line 26
    sget p2, Lcn/manstep/phonemirrorBox/p;->F:I

    if-lez p2, :cond_102

    .line 27
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    :cond_102
    const-wide/16 p1, 0x0

    .line 28
    iput-wide p1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/b$b;->j:J

    .line 29
    new-instance p1, Ljava/lang/Thread;

    new-instance p2, Lcn/manstep/phonemirrorBox/BoxInterface/b$b$c;

    invoke-direct {p2, p0}, Lcn/manstep/phonemirrorBox/BoxInterface/b$b$c;-><init>(Lcn/manstep/phonemirrorBox/BoxInterface/b$b;)V

    const-string p3, "render"

    invoke-direct {p1, p2, p3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object p1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/b$b;->k:Ljava/lang/Thread;

    .line 30
    :cond_114
    :goto_114
    monitor-exit v0

    goto :goto_119

    :catchall_116
    move-exception p1

    monitor-exit v0
    :try_end_118
    .catchall {:try_start_d0 .. :try_end_118} :catchall_116

    throw p1

    :cond_119
    :goto_119
    return-void
.end method

.method private C()V
    .registers 5

    .line 1
    iget-boolean v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/b$b;->b:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_47

    const-string v0, "AvcDecoder stop"

    .line 2
    invoke-static {v0}, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/b$b;->b:Z

    .line 4
    :try_start_d
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/b$b;->g:Ljava/lang/Thread;

    if-eqz v0, :cond_18

    .line 5
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/b$b;->g:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->join()V

    .line 6
    iput-object v1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/b$b;->g:Ljava/lang/Thread;

    .line 7
    :cond_18
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/b$b;->k:Ljava/lang/Thread;

    if-eqz v0, :cond_23

    .line 8
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/b$b;->k:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->join()V

    .line 9
    iput-object v1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/b$b;->k:Ljava/lang/Thread;

    :cond_23
    const-wide/16 v2, 0x0

    .line 10
    iput-wide v2, p0, Lcn/manstep/phonemirrorBox/BoxInterface/b$b;->c:J
    :try_end_27
    .catch Ljava/lang/InterruptedException; {:try_start_d .. :try_end_27} :catch_28

    goto :goto_30

    :catch_28
    move-exception v0

    .line 11
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/manstep/phonemirrorBox/util/s;->e(Ljava/lang/String;)V

    .line 12
    :goto_30
    :try_start_30
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/b$b;->d:Landroid/media/MediaCodec;

    if-eqz v0, :cond_47

    .line 13
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/b$b;->d:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->flush()V

    .line 14
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/b$b;->d:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->stop()V
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_3e} :catch_3f

    goto :goto_47

    :catch_3f
    move-exception v0

    .line 15
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/manstep/phonemirrorBox/util/s;->e(Ljava/lang/String;)V

    .line 16
    :cond_47
    :goto_47
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/b$b;->m:Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz v0, :cond_4e

    .line 17
    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->shutdown()V

    .line 18
    :cond_4e
    iput-object v1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/b$b;->m:Ljava/util/concurrent/ScheduledExecutorService;

    .line 19
    iput-object v1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/b$b;->n:Ljava/util/TimerTask;

    return-void
.end method

.method static synthetic a(Lcn/manstep/phonemirrorBox/BoxInterface/b$b;)V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcn/manstep/phonemirrorBox/BoxInterface/b$b;->u()V

    return-void
.end method

.method static synthetic b(Lcn/manstep/phonemirrorBox/BoxInterface/b$b;)J
    .registers 3

    .line 1
    iget-wide v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/b$b;->c:J

    return-wide v0
.end method

.method static synthetic c()J
    .registers 3

    .line 1
    sget-wide v0, Lcn/manstep/phonemirrorBox/BoxInterface/b$b;->p:J

    return-wide v0
.end method

.method static synthetic d(J)J
    .registers 2

    .line 1
    sput-wide p0, Lcn/manstep/phonemirrorBox/BoxInterface/b$b;->p:J

    return-wide p0
.end method

.method static synthetic e(Lcn/manstep/phonemirrorBox/BoxInterface/b$b;)J
    .registers 3

    .line 1
    iget-wide v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/b$b;->o:J

    return-wide v0
.end method

.method static synthetic f(Lcn/manstep/phonemirrorBox/BoxInterface/b$b;J)J
    .registers 3

    .line 1
    iput-wide p1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/b$b;->o:J

    return-wide p1
.end method

.method static synthetic g(Lcn/manstep/phonemirrorBox/BoxInterface/b$b;)J
    .registers 3

    .line 1
    iget-wide v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/b$b;->j:J

    return-wide v0
.end method

.method static synthetic h(Lcn/manstep/phonemirrorBox/BoxInterface/b$b;)J
    .registers 5

    .line 1
    iget-wide v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/b$b;->j:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcn/manstep/phonemirrorBox/BoxInterface/b$b;->j:J

    return-wide v0
.end method

.method static synthetic i(Lcn/manstep/phonemirrorBox/BoxInterface/b$b;)Ljava/lang/Object;
    .registers 1

    .line 1
    iget-object p0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/b$b;->e:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic j(Lcn/manstep/phonemirrorBox/BoxInterface/b$b;)Lcn/manstep/phonemirrorBox/BoxInterface/h;
    .registers 1

    .line 1
    iget-object p0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/b$b;->f:Lcn/manstep/phonemirrorBox/BoxInterface/h;

    return-object p0
.end method

.method static synthetic k(Lcn/manstep/phonemirrorBox/BoxInterface/b$b;)Landroid/media/MediaCodec;
    .registers 1

    .line 1
    iget-object p0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/b$b;->d:Landroid/media/MediaCodec;

    return-object p0
.end method

.method static synthetic l(Lcn/manstep/phonemirrorBox/BoxInterface/b$b;)J
    .registers 3

    .line 1
    iget-wide v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/b$b;->i:J

    return-wide v0
.end method

.method static synthetic m(Lcn/manstep/phonemirrorBox/BoxInterface/b$b;J)J
    .registers 3

    .line 1
    iput-wide p1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/b$b;->i:J

    return-wide p1
.end method

.method static synthetic n(Lcn/manstep/phonemirrorBox/BoxInterface/b$b;)J
    .registers 3

    .line 1
    iget-wide v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/b$b;->h:J

    return-wide v0
.end method

.method static synthetic o(Lcn/manstep/phonemirrorBox/BoxInterface/b$b;)Ljava/util/List;
    .registers 1

    .line 1
    iget-object p0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/b$b;->l:Ljava/util/List;

    return-object p0
.end method

.method static synthetic p(Lcn/manstep/phonemirrorBox/BoxInterface/b$b;)V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcn/manstep/phonemirrorBox/BoxInterface/b$b;->z()V

    return-void
.end method

.method static synthetic q(Lcn/manstep/phonemirrorBox/BoxInterface/b$b;Landroid/view/Surface;II)V
    .registers 4

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcn/manstep/phonemirrorBox/BoxInterface/b$b;->B(Landroid/view/Surface;II)V

    return-void
.end method

.method static synthetic r(Lcn/manstep/phonemirrorBox/BoxInterface/b$b;[BJ)V
    .registers 4

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcn/manstep/phonemirrorBox/BoxInterface/b$b;->w([BJ)V

    return-void
.end method

.method static synthetic s(Lcn/manstep/phonemirrorBox/BoxInterface/b$b;[BIIJ)V
    .registers 6

    .line 1
    invoke-direct/range {p0 .. p5}, Lcn/manstep/phonemirrorBox/BoxInterface/b$b;->A([BIIJ)V

    return-void
.end method

.method static synthetic t(Lcn/manstep/phonemirrorBox/BoxInterface/b$b;[BIIJ)V
    .registers 6

    .line 1
    invoke-direct/range {p0 .. p5}, Lcn/manstep/phonemirrorBox/BoxInterface/b$b;->v([BIIJ)V

    return-void
.end method

.method private u()V
    .registers 3

    const/4 v0, 0x0

    .line 1
    sput-boolean v0, Lcn/manstep/phonemirrorBox/BoxInterface/b;->h:Z

    .line 2
    invoke-direct {p0}, Lcn/manstep/phonemirrorBox/BoxInterface/b$b;->C()V

    .line 3
    sget-boolean v0, Lcn/manstep/phonemirrorBox/p;->g:Z

    if-eqz v0, :cond_12

    .line 4
    invoke-static {}, Lcn/manstep/phonemirrorBox/BoxInterface/b;->d()Lcn/manstep/phonemirrorBox/OpenH264Decoder;

    move-result-object v0

    invoke-virtual {v0}, Lcn/manstep/phonemirrorBox/OpenH264Decoder;->a()V

    goto :goto_3d

    .line 5
    :cond_12
    :try_start_12
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/b$b;->d:Landroid/media/MediaCodec;

    if-eqz v0, :cond_3d

    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "release mediaCodec ----"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/b$b;->d:Landroid/media/MediaCodec;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V

    .line 7
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/b$b;->d:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V

    const/4 v0, 0x0

    .line 8
    iput-object v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/b$b;->d:Landroid/media/MediaCodec;
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_34} :catch_35

    goto :goto_3d

    :catch_35
    move-exception v0

    .line 9
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/manstep/phonemirrorBox/util/s;->e(Ljava/lang/String;)V

    :cond_3d
    :goto_3d
    return-void
.end method

.method private v([BIIJ)V
    .registers 27

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move/from16 v2, p2

    move/from16 v10, p3

    .line 1
    iget-boolean v3, v1, Lcn/manstep/phonemirrorBox/BoxInterface/b$b;->b:Z

    if-nez v3, :cond_d

    return-void

    .line 2
    :cond_d
    iget-wide v3, v1, Lcn/manstep/phonemirrorBox/BoxInterface/b$b;->o:J

    int-to-long v5, v10

    add-long/2addr v3, v5

    iput-wide v3, v1, Lcn/manstep/phonemirrorBox/BoxInterface/b$b;->o:J

    .line 3
    sget-boolean v3, Lcn/manstep/phonemirrorBox/p;->g:Z

    const-wide/16 v11, 0x1

    if-eqz v3, :cond_27

    .line 4
    invoke-static {}, Lcn/manstep/phonemirrorBox/BoxInterface/b;->d()Lcn/manstep/phonemirrorBox/OpenH264Decoder;

    move-result-object v3

    invoke-virtual {v3, v0, v2, v10}, Lcn/manstep/phonemirrorBox/OpenH264Decoder;->c([BII)V

    .line 5
    iget-wide v2, v1, Lcn/manstep/phonemirrorBox/BoxInterface/b$b;->c:J

    add-long/2addr v2, v11

    iput-wide v2, v1, Lcn/manstep/phonemirrorBox/BoxInterface/b$b;->c:J

    goto/16 :goto_149

    .line 6
    :cond_27
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v13

    .line 7
    iget-wide v3, v1, Lcn/manstep/phonemirrorBox/BoxInterface/b$b;->c:J

    const-wide/16 v15, 0x0

    cmp-long v5, v3, v15

    if-nez v5, :cond_39

    .line 8
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iput-wide v3, v1, Lcn/manstep/phonemirrorBox/BoxInterface/b$b;->h:J

    .line 9
    :cond_39
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iget-wide v5, v1, Lcn/manstep/phonemirrorBox/BoxInterface/b$b;->h:J

    sub-long v17, v3, v5

    const/4 v9, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_44
    if-nez v3, :cond_123

    .line 10
    :try_start_46
    iget-boolean v5, v1, Lcn/manstep/phonemirrorBox/BoxInterface/b$b;->b:Z

    if-eqz v5, :cond_123

    .line 11
    iget-object v5, v1, Lcn/manstep/phonemirrorBox/BoxInterface/b$b;->d:Landroid/media/MediaCodec;

    const-wide/32 v6, 0x186a0

    invoke-virtual {v5, v6, v7}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v5

    if-ltz v5, :cond_cd

    .line 12
    iget-object v3, v1, Lcn/manstep/phonemirrorBox/BoxInterface/b$b;->d:Landroid/media/MediaCodec;

    invoke-virtual {v3}, Landroid/media/MediaCodec;->getInputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v3

    aget-object v3, v3, v5

    .line 13
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 14
    invoke-virtual {v3, v0, v2, v10}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    cmp-long v3, p4, v15

    if-gtz v3, :cond_82

    .line 15
    sget-boolean v3, Lcn/manstep/phonemirrorBox/BoxInterface/b;->j:Z

    if-nez v3, :cond_76

    sget-boolean v3, Lcn/manstep/phonemirrorBox/p;->i:Z

    if-eqz v3, :cond_70

    goto :goto_76

    :cond_70
    const-wide/16 v3, 0x3e8

    mul-long v3, v3, v17

    :goto_74
    move-wide v7, v3

    goto :goto_84

    .line 16
    :cond_76
    :goto_76
    iget-wide v3, v1, Lcn/manstep/phonemirrorBox/BoxInterface/b$b;->c:J

    const-wide/32 v19, 0xf4240

    mul-long v3, v3, v19

    iget v6, v1, Lcn/manstep/phonemirrorBox/BoxInterface/b$b;->a:I

    int-to-long v7, v6

    div-long/2addr v3, v7

    goto :goto_74

    :cond_82
    move-wide/from16 v7, p4

    .line 17
    :goto_84
    iget-object v3, v1, Lcn/manstep/phonemirrorBox/BoxInterface/b$b;->d:Landroid/media/MediaCodec;

    const/4 v6, 0x0

    const/16 v20, 0x0

    move v4, v5

    move v5, v6

    move/from16 v6, p3

    move/from16 v9, v20

    invoke-virtual/range {v3 .. v9}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 18
    iget-wide v3, v1, Lcn/manstep/phonemirrorBox/BoxInterface/b$b;->c:J

    cmp-long v5, v3, v15

    if-nez v5, :cond_b4

    .line 19
    iget-object v3, v1, Lcn/manstep/phonemirrorBox/BoxInterface/b$b;->l:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 20
    iget-object v3, v1, Lcn/manstep/phonemirrorBox/BoxInterface/b$b;->k:Ljava/lang/Thread;

    invoke-virtual {v3}, Ljava/lang/Thread;->getState()Ljava/lang/Thread$State;

    move-result-object v3

    sget-object v4, Ljava/lang/Thread$State;->NEW:Ljava/lang/Thread$State;

    if-ne v3, v4, :cond_ad

    .line 21
    iget-object v3, v1, Lcn/manstep/phonemirrorBox/BoxInterface/b$b;->k:Ljava/lang/Thread;

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    goto :goto_b4

    :cond_ad
    const-string v3, "AvcDecoder"

    const-string v4, "decode: renderThread has already started."

    .line 22
    invoke-static {v3, v4}, Lcn/manstep/phonemirrorBox/util/s;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    :cond_b4
    :goto_b4
    iget-wide v3, v1, Lcn/manstep/phonemirrorBox/BoxInterface/b$b;->c:J

    add-long/2addr v3, v11

    iput-wide v3, v1, Lcn/manstep/phonemirrorBox/BoxInterface/b$b;->c:J

    .line 24
    iget-object v3, v1, Lcn/manstep/phonemirrorBox/BoxInterface/b$b;->l:Ljava/util/List;

    monitor-enter v3
    :try_end_bc
    .catchall {:try_start_46 .. :try_end_bc} :catchall_108

    .line 25
    :try_start_bc
    iget-object v4, v1, Lcn/manstep/phonemirrorBox/BoxInterface/b$b;->l:Ljava/util/List;

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 26
    monitor-exit v3

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v6, 0x1

    goto :goto_f7

    :catchall_ca
    move-exception v0

    monitor-exit v3
    :try_end_cc
    .catchall {:try_start_bc .. :try_end_cc} :catchall_ca

    :try_start_cc
    throw v0

    :cond_cd
    const/4 v6, 0x1

    add-int/2addr v4, v6

    const-string v7, "AvcDecoder"

    .line 27
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "decode: Get decoder inputBuffer error: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcn/manstep/phonemirrorBox/util/s;->f(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v7, -0x1

    if-ne v5, v7, :cond_f7

    const-string v5, "AvcDecoder"

    const-string v7, "decode: -1 if no such buffer is currently available."

    .line 28
    invoke-static {v5, v7}, Lcn/manstep/phonemirrorBox/util/s;->f(Ljava/lang/String;Ljava/lang/String;)V

    :cond_f7
    :goto_f7
    const/16 v5, 0x1e

    if-le v4, v5, :cond_104

    const/4 v5, 0x0

    .line 29
    iput-boolean v5, v1, Lcn/manstep/phonemirrorBox/BoxInterface/b$b;->b:Z

    const/16 v7, 0x12

    .line 30
    invoke-static {v6, v7}, Lcn/manstep/phonemirrorBox/BoxInterface/d;->O(II)Z
    :try_end_103
    .catchall {:try_start_cc .. :try_end_103} :catchall_108

    goto :goto_105

    :cond_104
    const/4 v5, 0x0

    :goto_105
    const/4 v9, 0x0

    goto/16 :goto_44

    :catchall_108
    move-exception v0

    const-string v2, "AvcDecoder"

    .line 31
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "inputBufferIndex Error:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcn/manstep/phonemirrorBox/util/s;->g(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcn/manstep/phonemirrorBox/util/s;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    :cond_123
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v13

    const-wide/16 v4, 0x3c

    cmp-long v0, v2, v4

    if-lez v0, :cond_149

    const-string v0, "AvcDecoder"

    .line 33
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Decode use time too much:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v13

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcn/manstep/phonemirrorBox/util/s;->f(Ljava/lang/String;Ljava/lang/String;)V

    :cond_149
    :goto_149
    return-void
.end method

.method private w([BJ)V
    .registers 10

    .line 1
    array-length v3, p1

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v4, p2

    invoke-direct/range {v0 .. v5}, Lcn/manstep/phonemirrorBox/BoxInterface/b$b;->v([BIIJ)V

    return-void
.end method

.method private y(Landroid/media/MediaFormat;Landroid/view/Surface;)V
    .registers 6

    .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/b$b;->d:Landroid/media/MediaCodec;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, p1, p2, v1, v2}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 2
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/b$b;->d:Landroid/media/MediaCodec;

    invoke-virtual {p1}, Landroid/media/MediaCodec;->start()V

    .line 3
    invoke-static {}, Lcn/manstep/phonemirrorBox/BoxInterface/d;->u()Z

    move-result p1

    if-eqz p1, :cond_22

    invoke-static {}, Lcn/manstep/phonemirrorBox/u;->z()Lcn/manstep/phonemirrorBox/u;

    move-result-object p1

    invoke-virtual {p1}, Lcn/manstep/phonemirrorBox/u;->T()Z

    move-result p1

    if-eqz p1, :cond_22

    .line 4
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/b$b;->d:Landroid/media/MediaCodec;

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Landroid/media/MediaCodec;->setVideoScalingMode(I)V

    :cond_22
    const/4 p1, 0x1

    .line 5
    iput-boolean p1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/b$b;->b:Z

    return-void
.end method

.method private z()V
    .registers 5

    .line 1
    sget-boolean v0, Lcn/manstep/phonemirrorBox/p;->g:Z

    if-eqz v0, :cond_d

    .line 2
    invoke-static {}, Lcn/manstep/phonemirrorBox/BoxInterface/b;->d()Lcn/manstep/phonemirrorBox/OpenH264Decoder;

    move-result-object v0

    invoke-virtual {v0}, Lcn/manstep/phonemirrorBox/OpenH264Decoder;->b()V

    goto/16 :goto_96

    :cond_d
    const/4 v0, 0x5

    :goto_e
    add-int/lit8 v0, v0, -0x1

    if-lez v0, :cond_96

    :try_start_12
    const-string v1, "video/avc"

    .line 3
    invoke-static {v1}, Landroid/media/MediaCodec;->createDecoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v1

    iput-object v1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/b$b;->d:Landroid/media/MediaCodec;

    if-nez v1, :cond_21

    const-string v1, "AvcDecoder,AvcDecoder->open:mediaCodec ----NULL"

    .line 4
    invoke-static {v1}, Lcn/manstep/phonemirrorBox/util/s;->e(Ljava/lang/String;)V

    :cond_21
    const-string v1, "AvcDecoder,AvcDecoder->open:initDecodeMediaCodec ----- video/avc"

    .line 5
    invoke-static {v1}, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V

    .line 6
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_28
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_28} :catch_5c

    const/16 v2, 0x12

    const-string v3, "AvcDecoder,AvcDecoder->open:mediaCodec ----"

    if-lt v1, v2, :cond_47

    .line 7
    :try_start_2e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcn/manstep/phonemirrorBox/BoxInterface/b$b;->d:Landroid/media/MediaCodec;

    invoke-virtual {v2}, Landroid/media/MediaCodec;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V

    goto :goto_96

    .line 8
    :cond_47
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcn/manstep/phonemirrorBox/BoxInterface/b$b;->d:Landroid/media/MediaCodec;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V
    :try_end_5b
    .catch Ljava/io/IOException; {:try_start_2e .. :try_end_5b} :catch_5c

    goto :goto_96

    :catch_5c
    move-exception v1

    .line 9
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AvcDecoder,AvcDecoder->open:Create decoder Exception!!!\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcn/manstep/phonemirrorBox/util/s;->g(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/manstep/phonemirrorBox/util/s;->e(Ljava/lang/String;)V

    const-wide/16 v1, 0xc8

    .line 10
    :try_start_77
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_7a
    .catch Ljava/lang/InterruptedException; {:try_start_77 .. :try_end_7a} :catch_7b

    goto :goto_e

    :catch_7b
    move-exception v1

    .line 11
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AvcDecoder,AvcDecoder->open:\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/manstep/phonemirrorBox/util/s;->e(Ljava/lang/String;)V

    goto/16 :goto_e

    :cond_96
    :goto_96
    return-void
.end method


# virtual methods
.method public x()Z
    .registers 7

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isBelowMinRenderFrameCnt: render_frame_cnt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/b$b;->j:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AvcDecoder"

    invoke-static {v1, v0}, Lcn/manstep/phonemirrorBox/util/s;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcn/manstep/phonemirrorBox/BoxInterface/b$b;->h:J

    sub-long/2addr v0, v2

    sget v2, Lcn/manstep/phonemirrorBox/p;->D:I

    int-to-long v2, v2

    const/4 v4, 0x0

    cmp-long v5, v0, v2

    if-gez v5, :cond_28

    return v4

    .line 3
    :cond_28
    iget-wide v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/b$b;->j:J

    const-wide/16 v2, 0x4

    cmp-long v5, v0, v2

    if-gez v5, :cond_31

    const/4 v4, 0x1

    :cond_31
    return v4
.end method
