.class Lcn/manstep/phonemirrorBox/BoxInterface/b$b;
.super Ljava/lang/Object;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Lcn/manstep/phonemirrorBox/BoxInterface/b;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 10
  name = "b"
.end annotation
.annotation system Ldalvik/annotation/MemberClasses;
  value = {
    Lcn/manstep/phonemirrorBox/BoxInterface/b$b$d;
  }
.end annotation

.field private static p:J

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

.method static constructor <clinit>()V
  .registers 1
    return-void
.end method

.method public constructor <init>()V
  .registers 5
  .line 1
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
  .line 2
    sget v0, Lcn/manstep/phonemirrorBox/p;->C:I
    iput v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/b$b;->a:I
    const/4 v0, 0
  .line 3
    iput-boolean v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/b$b;->b:Z
    const-wide/16 v0, 0
  .line 4
    iput-wide v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/b$b;->c:J
    const/4 v2, 0
  .line 5
    iput-object v2, p0, Lcn/manstep/phonemirrorBox/BoxInterface/b$b;->d:Landroid/media/MediaCodec;
  .line 6
    new-instance v3, Ljava/lang/Object;
    invoke-direct { v3 }, Ljava/lang/Object;-><init>()V
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
    invoke-direct { v3 }, Ljava/util/ArrayList;-><init>()V
    iput-object v3, p0, Lcn/manstep/phonemirrorBox/BoxInterface/b$b;->l:Ljava/util/List;
  .line 13
    iput-object v2, p0, Lcn/manstep/phonemirrorBox/BoxInterface/b$b;->m:Ljava/util/concurrent/ScheduledExecutorService;
  .line 14
    iput-object v2, p0, Lcn/manstep/phonemirrorBox/BoxInterface/b$b;->n:Ljava/util/TimerTask;
  .line 15
    iput-wide v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/b$b;->o:J
    const-string v0, "New AvcDecoder"
  .line 16
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V
    return-void
.end method

.method private A([BIIJ)V
  .catchall { :L0 .. :L2 } :L1
  .catchall { :L4 .. :L7 } :L6
  .registers 9
  .line 1
    sget-boolean v0, Lcn/manstep/phonemirrorBox/p;->g:Z
    const/4 v1, 0
    if-eqz v0, :L3
  .line 2
    new-array v0, p3, [B
  .line 3
    invoke-static { p1, p2, v0, v1, p3 }, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
  .line 4
    iget-object v2, p0, Lcn/manstep/phonemirrorBox/BoxInterface/b$b;->e:Ljava/lang/Object;
    monitor-enter v2
  :L0
  .line 5
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/b$b;->f:Lcn/manstep/phonemirrorBox/BoxInterface/h;
    invoke-virtual { p1, v0, p4, p5 }, Lcn/manstep/phonemirrorBox/BoxInterface/h;->a([BJ)V
  .line 6
    monitor-exit v2
    goto :L9
  :L1
    move-exception p1
    monitor-exit v2
  :L2
    throw p1
  :L3
  .line 7
    sget v0, Lcn/manstep/phonemirrorBox/p;->F:I
    if-lez v0, :L8
  .line 8
    new-array v0, p3, [B
  .line 9
    invoke-static { p1, p2, v0, v1, p3 }, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
  .line 10
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/b$b;->e:Ljava/lang/Object;
    monitor-enter v1
  :L4
  .line 11
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/b$b;->f:Lcn/manstep/phonemirrorBox/BoxInterface/h;
    invoke-virtual { p1, v0, p4, p5 }, Lcn/manstep/phonemirrorBox/BoxInterface/h;->a([BJ)V
  .line 12
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/b$b;->f:Lcn/manstep/phonemirrorBox/BoxInterface/h;
    invoke-virtual { p1 }, Lcn/manstep/phonemirrorBox/BoxInterface/h;->f()I
    move-result p1
    sget p2, Lcn/manstep/phonemirrorBox/p;->F:I
    if-ne p1, p2, :L5
  .line 13
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/b$b;->e:Ljava/lang/Object;
    invoke-virtual { p1 }, Ljava/lang/Object;->notifyAll()V
  :L5
  .line 14
    monitor-exit v1
    goto :L9
  :L6
    move-exception p1
    monitor-exit v1
  :L7
    throw p1
  :L8
  .line 15
    invoke-direct/range { p0 .. p5 }, Lcn/manstep/phonemirrorBox/BoxInterface/b$b;->v([BIIJ)V
  :L9
    return-void
.end method

.method private B(Landroid/view/Surface;II)V
  .catchall { :L1 .. :L3 } :L14
  .catch Ljava/lang/Exception; { :L3 .. :L4 } :L5
  .catchall { :L3 .. :L4 } :L14
  .catchall { :L6 .. :L7 } :L14
  .catch Ljava/lang/Exception; { :L7 .. :L8 } :L9
  .catchall { :L7 .. :L8 } :L14
  .catchall { :L10 .. :L15 } :L14
  .registers 14
  .line 1
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "AvcDecoder,start: decode h264 size:"
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0, p2 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    const-string v1, "x"
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0, p3 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V
  .line 2
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/b$b;->m:Ljava/util/concurrent/ScheduledExecutorService;
    const/4 v1, 0
    const/4 v2, 1
    if-nez v0, :L0
  .line 3
    new-instance v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;
    invoke-direct { v0, v2 }, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(I)V
    iput-object v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/b$b;->m:Ljava/util/concurrent/ScheduledExecutorService;
  .line 4
    new-instance v4, Lcn/manstep/phonemirrorBox/BoxInterface/b$b$d;
    invoke-direct { v4, p0, v1 }, Lcn/manstep/phonemirrorBox/BoxInterface/b$b$d;-><init>(Lcn/manstep/phonemirrorBox/BoxInterface/b$b;Lcn/manstep/phonemirrorBox/BoxInterface/b$a;)V
    iput-object v4, p0, Lcn/manstep/phonemirrorBox/BoxInterface/b$b;->n:Ljava/util/TimerTask;
  .line 5
    iget-object v3, p0, Lcn/manstep/phonemirrorBox/BoxInterface/b$b;->m:Ljava/util/concurrent/ScheduledExecutorService;
    const-wide/16 v5, 1000
    const-wide/16 v7, 1000
    sget-object v9, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;
    invoke-interface/range { v3 .. v9 }, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
  :L0
  .line 6
    iget-boolean v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/b$b;->b:Z
    if-nez v0, :L16
    if-lez p2, :L16
    if-lez p3, :L16
  .line 7
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/b$b;->e:Ljava/lang/Object;
    monitor-enter v0
  :L1
  .line 8
    sget-boolean v3, Lcn/manstep/phonemirrorBox/p;->g:Z
    const/16 v4, 320
    if-eqz v3, :L2
  .line 9
    new-instance p1, Lcn/manstep/phonemirrorBox/BoxInterface/h;
    invoke-direct { p1, v4 }, Lcn/manstep/phonemirrorBox/BoxInterface/h;-><init>(I)V
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/b$b;->f:Lcn/manstep/phonemirrorBox/BoxInterface/h;
  .line 10
    iput-boolean v2, p0, Lcn/manstep/phonemirrorBox/BoxInterface/b$b;->b:Z
  .line 11
    new-instance p1, Ljava/lang/Thread;
    new-instance p2, Lcn/manstep/phonemirrorBox/BoxInterface/b$b$a;
    invoke-direct { p2, p0 }, Lcn/manstep/phonemirrorBox/BoxInterface/b$b$a;-><init>(Lcn/manstep/phonemirrorBox/BoxInterface/b$b;)V
    const-string p3, "sdv"
    invoke-direct { p1, p2, p3 }, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/b$b;->g:Ljava/lang/Thread;
  .line 12
    invoke-virtual { p1 }, Ljava/lang/Thread;->start()V
    goto/16 :L13
  :L2
  .line 13
    iget-object v3, p0, Lcn/manstep/phonemirrorBox/BoxInterface/b$b;->d:Landroid/media/MediaCodec;
    if-eqz v3, :L13
  .line 14
    new-instance v3, Ljava/lang/StringBuilder;
    invoke-direct { v3 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v5, "AvcDecoder,start: AvcDecoder start:"
    invoke-virtual { v3, v5 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v3, p2 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    const-string v5, "-"
    invoke-virtual { v3, v5 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v3, p3 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { v3 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v3
    invoke-static { v3 }, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V
  .line 15
    new-instance v3, Lcn/manstep/phonemirrorBox/BoxInterface/h;
    invoke-direct { v3, v4 }, Lcn/manstep/phonemirrorBox/BoxInterface/h;-><init>(I)V
    iput-object v3, p0, Lcn/manstep/phonemirrorBox/BoxInterface/b$b;->f:Lcn/manstep/phonemirrorBox/BoxInterface/h;
    const-string v3, "video/avc"
  .line 16
    invoke-static { v3, p2, p3 }, Landroid/media/MediaFormat;->createVideoFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;
    move-result-object p2
  :L3
  .line 17
    invoke-direct { p0, p2, p1 }, Lcn/manstep/phonemirrorBox/BoxInterface/b$b;->y(Landroid/media/MediaFormat;Landroid/view/Surface;)V
  :L4
    goto :L11
  :L5
    move-exception p3
  :L6
    const-string v3, "AvcDecoder"
  .line 18
    new-instance v4, Ljava/lang/StringBuilder;
    invoke-direct { v4 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v5, "start: surface="
    invoke-virtual { v4, v5 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v4, p1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    const-string v5, "\n"
    invoke-virtual { v4, v5 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-static { p3 }, Lcn/manstep/phonemirrorBox/util/s;->g(Ljava/lang/Throwable;)Ljava/lang/String;
    move-result-object p3
    invoke-virtual { v4, p3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v4 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p3
    invoke-static { v3, p3 }, Lcn/manstep/phonemirrorBox/util/s;->f(Ljava/lang/String;Ljava/lang/String;)V
  :L7
  .line 19
    iget-object p3, p0, Lcn/manstep/phonemirrorBox/BoxInterface/b$b;->d:Landroid/media/MediaCodec;
    invoke-virtual { p3 }, Landroid/media/MediaCodec;->release()V
  .line 20
    iput-object v1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/b$b;->d:Landroid/media/MediaCodec;
    const-string p3, "video/avc"
  .line 21
    invoke-static { p3 }, Landroid/media/MediaCodec;->createDecoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;
    move-result-object p3
    iput-object p3, p0, Lcn/manstep/phonemirrorBox/BoxInterface/b$b;->d:Landroid/media/MediaCodec;
  .line 22
    invoke-direct { p0, p2, p1 }, Lcn/manstep/phonemirrorBox/BoxInterface/b$b;->y(Landroid/media/MediaFormat;Landroid/view/Surface;)V
  :L8
    goto :L11
  :L9
    move-exception p1
  :L10
  .line 23
    new-instance p2, Ljava/lang/StringBuilder;
    invoke-direct { p2 }, Ljava/lang/StringBuilder;-><init>()V
    const-string p3, "AvcDecoder,start:\n"
    invoke-virtual { p2, p3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-static { p1 }, Lcn/manstep/phonemirrorBox/util/s;->g(Ljava/lang/Throwable;)Ljava/lang/String;
    move-result-object p1
    invoke-virtual { p2, p1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { p2 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p1
    invoke-static { p1 }, Lcn/manstep/phonemirrorBox/util/s;->e(Ljava/lang/String;)V
    const/16 p1, 18
  .line 24
    invoke-static { v2, p1 }, Lcn/manstep/phonemirrorBox/BoxInterface/d;->O(II)Z
  :L11
  .line 25
    new-instance p1, Ljava/lang/Thread;
    new-instance p2, Lcn/manstep/phonemirrorBox/BoxInterface/b$b$b;
    invoke-direct { p2, p0 }, Lcn/manstep/phonemirrorBox/BoxInterface/b$b$b;-><init>(Lcn/manstep/phonemirrorBox/BoxInterface/b$b;)V
    const-string p3, "hdv"
    invoke-direct { p1, p2, p3 }, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/b$b;->g:Ljava/lang/Thread;
  .line 26
    sget p2, Lcn/manstep/phonemirrorBox/p;->F:I
    if-lez p2, :L12
  .line 27
    invoke-virtual { p1 }, Ljava/lang/Thread;->start()V
  :L12
    const-wide/16 p1, 0
  .line 28
    iput-wide p1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/b$b;->j:J
  .line 29
    new-instance p1, Ljava/lang/Thread;
    new-instance p2, Lcn/manstep/phonemirrorBox/BoxInterface/b$b$c;
    invoke-direct { p2, p0 }, Lcn/manstep/phonemirrorBox/BoxInterface/b$b$c;-><init>(Lcn/manstep/phonemirrorBox/BoxInterface/b$b;)V
    const-string p3, "render"
    invoke-direct { p1, p2, p3 }, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/b$b;->k:Ljava/lang/Thread;
  :L13
  .line 30
    monitor-exit v0
    goto :L16
  :L14
    move-exception p1
    monitor-exit v0
  :L15
    throw p1
  :L16
    return-void
.end method

.method private C()V
  .catch Ljava/lang/InterruptedException; { :L0 .. :L3 } :L4
  .catch Ljava/lang/Exception; { :L5 .. :L6 } :L7
  .registers 5
  .line 1
    iget-boolean v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/b$b;->b:Z
    const/4 v1, 0
    if-eqz v0, :L8
    const-string v0, "AvcDecoder stop"
  .line 2
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V
    const/4 v0, 0
  .line 3
    iput-boolean v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/b$b;->b:Z
  :L0
  .line 4
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/b$b;->g:Ljava/lang/Thread;
    if-eqz v0, :L1
  .line 5
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/b$b;->g:Ljava/lang/Thread;
    invoke-virtual { v0 }, Ljava/lang/Thread;->join()V
  .line 6
    iput-object v1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/b$b;->g:Ljava/lang/Thread;
  :L1
  .line 7
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/b$b;->k:Ljava/lang/Thread;
    if-eqz v0, :L2
  .line 8
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/b$b;->k:Ljava/lang/Thread;
    invoke-virtual { v0 }, Ljava/lang/Thread;->join()V
  .line 9
    iput-object v1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/b$b;->k:Ljava/lang/Thread;
  :L2
    const-wide/16 v2, 0
  .line 10
    iput-wide v2, p0, Lcn/manstep/phonemirrorBox/BoxInterface/b$b;->c:J
  :L3
    goto :L5
  :L4
    move-exception v0
  .line 11
    invoke-static { v0 }, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;
    move-result-object v0
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/util/s;->e(Ljava/lang/String;)V
  :L5
  .line 12
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/b$b;->d:Landroid/media/MediaCodec;
    if-eqz v0, :L8
  .line 13
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/b$b;->d:Landroid/media/MediaCodec;
    invoke-virtual { v0 }, Landroid/media/MediaCodec;->flush()V
  .line 14
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/b$b;->d:Landroid/media/MediaCodec;
    invoke-virtual { v0 }, Landroid/media/MediaCodec;->stop()V
  :L6
    goto :L8
  :L7
    move-exception v0
  .line 15
    invoke-static { v0 }, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;
    move-result-object v0
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/util/s;->e(Ljava/lang/String;)V
  :L8
  .line 16
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/b$b;->m:Ljava/util/concurrent/ScheduledExecutorService;
    if-eqz v0, :L9
  .line 17
    invoke-interface { v0 }, Ljava/util/concurrent/ScheduledExecutorService;->shutdown()V
  :L9
  .line 18
    iput-object v1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/b$b;->m:Ljava/util/concurrent/ScheduledExecutorService;
  .line 19
    iput-object v1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/b$b;->n:Ljava/util/TimerTask;
    return-void
.end method

.method static synthetic a(Lcn/manstep/phonemirrorBox/BoxInterface/b$b;)V
  .registers 1
  .line 1
    invoke-direct { p0 }, Lcn/manstep/phonemirrorBox/BoxInterface/b$b;->u()V
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
    const-wide/16 v2, 1
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
    invoke-direct { p0 }, Lcn/manstep/phonemirrorBox/BoxInterface/b$b;->z()V
    return-void
.end method

.method static synthetic q(Lcn/manstep/phonemirrorBox/BoxInterface/b$b;Landroid/view/Surface;II)V
  .registers 4
  .line 1
    invoke-direct { p0, p1, p2, p3 }, Lcn/manstep/phonemirrorBox/BoxInterface/b$b;->B(Landroid/view/Surface;II)V
    return-void
.end method

.method static synthetic r(Lcn/manstep/phonemirrorBox/BoxInterface/b$b;[BJ)V
  .registers 4
  .line 1
    invoke-direct { p0, p1, p2, p3 }, Lcn/manstep/phonemirrorBox/BoxInterface/b$b;->w([BJ)V
    return-void
.end method

.method static synthetic s(Lcn/manstep/phonemirrorBox/BoxInterface/b$b;[BIIJ)V
  .registers 6
  .line 1
    invoke-direct/range { p0 .. p5 }, Lcn/manstep/phonemirrorBox/BoxInterface/b$b;->A([BIIJ)V
    return-void
.end method

.method static synthetic t(Lcn/manstep/phonemirrorBox/BoxInterface/b$b;[BIIJ)V
  .registers 6
  .line 1
    invoke-direct/range { p0 .. p5 }, Lcn/manstep/phonemirrorBox/BoxInterface/b$b;->v([BIIJ)V
    return-void
.end method

.method private u()V
  .catch Ljava/lang/Exception; { :L0 .. :L1 } :L2
  .registers 3
    const/4 v0, 0
  .line 1
    sput-boolean v0, Lcn/manstep/phonemirrorBox/BoxInterface/b;->h:Z
  .line 2
    invoke-direct { p0 }, Lcn/manstep/phonemirrorBox/BoxInterface/b$b;->C()V
  .line 3
    sget-boolean v0, Lcn/manstep/phonemirrorBox/p;->g:Z
    if-eqz v0, :L0
  .line 4
    invoke-static { }, Lcn/manstep/phonemirrorBox/BoxInterface/b;->d()Lcn/manstep/phonemirrorBox/OpenH264Decoder;
    move-result-object v0
    invoke-virtual { v0 }, Lcn/manstep/phonemirrorBox/OpenH264Decoder;->a()V
    goto :L3
  :L0
  .line 5
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/b$b;->d:Landroid/media/MediaCodec;
    if-eqz v0, :L3
  .line 6
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "release mediaCodec ----"
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/b$b;->d:Landroid/media/MediaCodec;
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V
  .line 7
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/b$b;->d:Landroid/media/MediaCodec;
    invoke-virtual { v0 }, Landroid/media/MediaCodec;->release()V
    const/4 v0, 0
  .line 8
    iput-object v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/b$b;->d:Landroid/media/MediaCodec;
  :L1
    goto :L3
  :L2
    move-exception v0
  .line 9
    invoke-static { v0 }, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;
    move-result-object v0
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/util/s;->e(Ljava/lang/String;)V
  :L3
    return-void
.end method

.method private v([BIIJ)V
  .catchall { :L4 .. :L12 } :L20
  .catchall { :L12 .. :L14 } :L13
  .catchall { :L14 .. :L17 } :L20
  .registers 27
    move-object/from16 v1, p0
    move-object/from16 v0, p1
    move/from16 v2, p2
    move/from16 v10, p3
  .line 1
    iget-boolean v3, v1, Lcn/manstep/phonemirrorBox/BoxInterface/b$b;->b:Z
    if-nez v3, :L0
    return-void
  :L0
  .line 2
    iget-wide v3, v1, Lcn/manstep/phonemirrorBox/BoxInterface/b$b;->o:J
    int-to-long v5, v10
    add-long/2addr v3, v5
    iput-wide v3, v1, Lcn/manstep/phonemirrorBox/BoxInterface/b$b;->o:J
  .line 3
    sget-boolean v3, Lcn/manstep/phonemirrorBox/p;->g:Z
    const-wide/16 v11, 1
    if-eqz v3, :L1
  .line 4
    invoke-static { }, Lcn/manstep/phonemirrorBox/BoxInterface/b;->d()Lcn/manstep/phonemirrorBox/OpenH264Decoder;
    move-result-object v3
    invoke-virtual { v3, v0, v2, v10 }, Lcn/manstep/phonemirrorBox/OpenH264Decoder;->c([BII)V
  .line 5
    iget-wide v2, v1, Lcn/manstep/phonemirrorBox/BoxInterface/b$b;->c:J
    add-long/2addr v2, v11
    iput-wide v2, v1, Lcn/manstep/phonemirrorBox/BoxInterface/b$b;->c:J
    goto/16 :L22
  :L1
  .line 6
    invoke-static { }, Landroid/os/SystemClock;->uptimeMillis()J
    move-result-wide v13
  .line 7
    iget-wide v3, v1, Lcn/manstep/phonemirrorBox/BoxInterface/b$b;->c:J
    const-wide/16 v15, 0
    cmp-long v5, v3, v15
    if-nez v5, :L2
  .line 8
    invoke-static { }, Landroid/os/SystemClock;->uptimeMillis()J
    move-result-wide v3
    iput-wide v3, v1, Lcn/manstep/phonemirrorBox/BoxInterface/b$b;->h:J
  :L2
  .line 9
    invoke-static { }, Landroid/os/SystemClock;->uptimeMillis()J
    move-result-wide v3
    iget-wide v5, v1, Lcn/manstep/phonemirrorBox/BoxInterface/b$b;->h:J
    sub-long v17, v3, v5
    const/4 v9, 0
    const/4 v3, 0
    const/4 v4, 0
  :L3
    if-nez v3, :L21
  :L4
  .line 10
    iget-boolean v5, v1, Lcn/manstep/phonemirrorBox/BoxInterface/b$b;->b:Z
    if-eqz v5, :L21
  .line 11
    iget-object v5, v1, Lcn/manstep/phonemirrorBox/BoxInterface/b$b;->d:Landroid/media/MediaCodec;
    const-wide/32 v6, 100000
    invoke-virtual { v5, v6, v7 }, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I
    move-result v5
    if-ltz v5, :L15
  .line 12
    iget-object v3, v1, Lcn/manstep/phonemirrorBox/BoxInterface/b$b;->d:Landroid/media/MediaCodec;
    invoke-virtual { v3 }, Landroid/media/MediaCodec;->getInputBuffers()[Ljava/nio/ByteBuffer;
    move-result-object v3
    aget-object v3, v3, v5
  .line 13
    invoke-virtual { v3 }, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;
  .line 14
    invoke-virtual { v3, v0, v2, v10 }, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;
    cmp-long v3, p4, v15
    if-gtz v3, :L8
  .line 15
    sget-boolean v3, Lcn/manstep/phonemirrorBox/BoxInterface/b;->j:Z
    if-nez v3, :L7
    sget-boolean v3, Lcn/manstep/phonemirrorBox/p;->i:Z
    if-eqz v3, :L5
    goto :L7
  :L5
    const-wide/16 v3, 1000
    mul-long v3, v3, v17
  :L6
    move-wide v7, v3
    goto :L9
  :L7
  .line 16
    iget-wide v3, v1, Lcn/manstep/phonemirrorBox/BoxInterface/b$b;->c:J
    const-wide/32 v19, 1000000
    mul-long v3, v3, v19
    iget v6, v1, Lcn/manstep/phonemirrorBox/BoxInterface/b$b;->a:I
    int-to-long v7, v6
    div-long/2addr v3, v7
    goto :L6
  :L8
    move-wide/from16 v7, p4
  :L9
  .line 17
    iget-object v3, v1, Lcn/manstep/phonemirrorBox/BoxInterface/b$b;->d:Landroid/media/MediaCodec;
    const/4 v6, 0
    const/16 v20, 0
    move v4, v5
    move v5, v6
    move/from16 v6, p3
    move/from16 v9, v20
    invoke-virtual/range { v3 .. v9 }, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V
  .line 18
    iget-wide v3, v1, Lcn/manstep/phonemirrorBox/BoxInterface/b$b;->c:J
    cmp-long v5, v3, v15
    if-nez v5, :L11
  .line 19
    iget-object v3, v1, Lcn/manstep/phonemirrorBox/BoxInterface/b$b;->l:Ljava/util/List;
    invoke-interface { v3 }, Ljava/util/List;->clear()V
  .line 20
    iget-object v3, v1, Lcn/manstep/phonemirrorBox/BoxInterface/b$b;->k:Ljava/lang/Thread;
    invoke-virtual { v3 }, Ljava/lang/Thread;->getState()Ljava/lang/Thread$State;
    move-result-object v3
    sget-object v4, Ljava/lang/Thread$State;->NEW:Ljava/lang/Thread$State;
    if-ne v3, v4, :L10
  .line 21
    iget-object v3, v1, Lcn/manstep/phonemirrorBox/BoxInterface/b$b;->k:Ljava/lang/Thread;
    invoke-virtual { v3 }, Ljava/lang/Thread;->start()V
    goto :L11
  :L10
    const-string v3, "AvcDecoder"
    const-string v4, "decode: renderThread has already started."
  .line 22
    invoke-static { v3, v4 }, Lcn/manstep/phonemirrorBox/util/s;->d(Ljava/lang/String;Ljava/lang/String;)V
  :L11
  .line 23
    iget-wide v3, v1, Lcn/manstep/phonemirrorBox/BoxInterface/b$b;->c:J
    add-long/2addr v3, v11
    iput-wide v3, v1, Lcn/manstep/phonemirrorBox/BoxInterface/b$b;->c:J
  .line 24
    iget-object v3, v1, Lcn/manstep/phonemirrorBox/BoxInterface/b$b;->l:Ljava/util/List;
    monitor-enter v3
  :L12
  .line 25
    iget-object v4, v1, Lcn/manstep/phonemirrorBox/BoxInterface/b$b;->l:Ljava/util/List;
    invoke-static/range { v17 .. v18 }, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    move-result-object v5
    invoke-interface { v4, v5 }, Ljava/util/List;->add(Ljava/lang/Object;)Z
  .line 26
    monitor-exit v3
    const/4 v3, 1
    const/4 v4, 0
    const/4 v6, 1
    goto :L16
  :L13
    move-exception v0
    monitor-exit v3
  :L14
    throw v0
  :L15
    const/4 v6, 1
    add-int/2addr v4, v6
    const-string v7, "AvcDecoder"
  .line 27
    new-instance v8, Ljava/lang/StringBuilder;
    invoke-direct { v8 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v9, "decode: Get decoder inputBuffer error: "
    invoke-virtual { v8, v9 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v8, v5 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    const-string v9, " "
    invoke-virtual { v8, v9 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v8, v4 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { v8 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v8
    invoke-static { v7, v8 }, Lcn/manstep/phonemirrorBox/util/s;->f(Ljava/lang/String;Ljava/lang/String;)V
    const/4 v7, -1
    if-ne v5, v7, :L16
    const-string v5, "AvcDecoder"
    const-string v7, "decode: -1 if no such buffer is currently available."
  .line 28
    invoke-static { v5, v7 }, Lcn/manstep/phonemirrorBox/util/s;->f(Ljava/lang/String;Ljava/lang/String;)V
  :L16
    const/16 v5, 30
    if-le v4, v5, :L18
    const/4 v5, 0
  .line 29
    iput-boolean v5, v1, Lcn/manstep/phonemirrorBox/BoxInterface/b$b;->b:Z
    const/16 v7, 18
  .line 30
    invoke-static { v6, v7 }, Lcn/manstep/phonemirrorBox/BoxInterface/d;->O(II)Z
  :L17
    goto :L19
  :L18
    const/4 v5, 0
  :L19
    const/4 v9, 0
    goto/16 :L3
  :L20
    move-exception v0
    const-string v2, "AvcDecoder"
  .line 31
    new-instance v3, Ljava/lang/StringBuilder;
    invoke-direct { v3 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v4, "inputBufferIndex Error:"
    invoke-virtual { v3, v4 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/util/s;->g(Ljava/lang/Throwable;)Ljava/lang/String;
    move-result-object v0
    invoke-virtual { v3, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v3 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    invoke-static { v2, v0 }, Lcn/manstep/phonemirrorBox/util/s;->f(Ljava/lang/String;Ljava/lang/String;)V
  :L21
  .line 32
    invoke-static { }, Landroid/os/SystemClock;->uptimeMillis()J
    move-result-wide v2
    sub-long/2addr v2, v13
    const-wide/16 v4, 60
    cmp-long v0, v2, v4
    if-lez v0, :L22
    const-string v0, "AvcDecoder"
  .line 33
    new-instance v2, Ljava/lang/StringBuilder;
    invoke-direct { v2 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v3, "Decode use time too much:"
    invoke-virtual { v2, v3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-static { }, Landroid/os/SystemClock;->uptimeMillis()J
    move-result-wide v3
    sub-long/2addr v3, v13
    invoke-virtual { v2, v3, v4 }, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
    invoke-virtual { v2 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v2
    invoke-static { v0, v2 }, Lcn/manstep/phonemirrorBox/util/s;->f(Ljava/lang/String;Ljava/lang/String;)V
  :L22
    return-void
.end method

.method private w([BJ)V
  .registers 10
  .line 1
    array-length v3, p1
    const/4 v2, 0
    move-object v0, p0
    move-object v1, p1
    move-wide v4, p2
    invoke-direct/range { v0 .. v5 }, Lcn/manstep/phonemirrorBox/BoxInterface/b$b;->v([BIIJ)V
    return-void
.end method

.method private y(Landroid/media/MediaFormat;Landroid/view/Surface;)V
  .registers 6
  .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/b$b;->d:Landroid/media/MediaCodec;
    const/4 v1, 0
    const/4 v2, 0
    invoke-virtual { v0, p1, p2, v1, v2 }, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V
  .line 2
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/b$b;->d:Landroid/media/MediaCodec;
    invoke-virtual { p1 }, Landroid/media/MediaCodec;->start()V
  .line 3
    invoke-static { }, Lcn/manstep/phonemirrorBox/BoxInterface/d;->u()Z
    move-result p1
    if-eqz p1, :L0
    invoke-static { }, Lcn/manstep/phonemirrorBox/u;->z()Lcn/manstep/phonemirrorBox/u;
    move-result-object p1
    invoke-virtual { p1 }, Lcn/manstep/phonemirrorBox/u;->T()Z
    move-result p1
    if-eqz p1, :L0
  .line 4
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/b$b;->d:Landroid/media/MediaCodec;
    const/4 p2, 2
    invoke-virtual { p1, p2 }, Landroid/media/MediaCodec;->setVideoScalingMode(I)V
  :L0
    const/4 p1, 1
  .line 5
    iput-boolean p1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/b$b;->b:Z
    return-void
.end method

.method private z()V
  .catch Ljava/io/IOException; { :L2 .. :L4 } :L8
  .catch Ljava/io/IOException; { :L5 .. :L7 } :L8
  .catch Ljava/lang/InterruptedException; { :L9 .. :L10 } :L11
  .registers 5
  .line 1
    sget-boolean v0, Lcn/manstep/phonemirrorBox/p;->g:Z
    if-eqz v0, :L0
  .line 2
    invoke-static { }, Lcn/manstep/phonemirrorBox/BoxInterface/b;->d()Lcn/manstep/phonemirrorBox/OpenH264Decoder;
    move-result-object v0
    invoke-virtual { v0 }, Lcn/manstep/phonemirrorBox/OpenH264Decoder;->b()V
    goto/16 :L12
  :L0
    const/4 v0, 5
  :L1
    add-int/lit8 v0, v0, -1
    if-lez v0, :L12
  :L2
    const-string v1, "video/avc"
  .line 3
    invoke-static { v1 }, Landroid/media/MediaCodec;->createDecoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;
    move-result-object v1
    iput-object v1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/b$b;->d:Landroid/media/MediaCodec;
    if-nez v1, :L3
    const-string v1, "AvcDecoder,AvcDecoder->open:mediaCodec ----NULL"
  .line 4
    invoke-static { v1 }, Lcn/manstep/phonemirrorBox/util/s;->e(Ljava/lang/String;)V
  :L3
    const-string v1, "AvcDecoder,AvcDecoder->open:initDecodeMediaCodec ----- video/avc"
  .line 5
    invoke-static { v1 }, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V
  .line 6
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I
  :L4
    const/16 v2, 18
    const-string v3, "AvcDecoder,AvcDecoder->open:mediaCodec ----"
    if-lt v1, v2, :L6
  :L5
  .line 7
    new-instance v1, Ljava/lang/StringBuilder;
    invoke-direct { v1 }, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual { v1, v3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget-object v2, p0, Lcn/manstep/phonemirrorBox/BoxInterface/b$b;->d:Landroid/media/MediaCodec;
    invoke-virtual { v2 }, Landroid/media/MediaCodec;->getName()Ljava/lang/String;
    move-result-object v2
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v1
    invoke-static { v1 }, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V
    goto :L12
  :L6
  .line 8
    new-instance v1, Ljava/lang/StringBuilder;
    invoke-direct { v1 }, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual { v1, v3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget-object v2, p0, Lcn/manstep/phonemirrorBox/BoxInterface/b$b;->d:Landroid/media/MediaCodec;
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    invoke-virtual { v1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v1
    invoke-static { v1 }, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V
  :L7
    goto :L12
  :L8
    move-exception v1
  .line 9
    new-instance v2, Ljava/lang/StringBuilder;
    invoke-direct { v2 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v3, "AvcDecoder,AvcDecoder->open:Create decoder Exception!!!\n"
    invoke-virtual { v2, v3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-static { v1 }, Lcn/manstep/phonemirrorBox/util/s;->g(Ljava/lang/Throwable;)Ljava/lang/String;
    move-result-object v1
    invoke-virtual { v2, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v2 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v1
    invoke-static { v1 }, Lcn/manstep/phonemirrorBox/util/s;->e(Ljava/lang/String;)V
    const-wide/16 v1, 200
  :L9
  .line 10
    invoke-static { v1, v2 }, Ljava/lang/Thread;->sleep(J)V
  :L10
    goto :L1
  :L11
    move-exception v1
  .line 11
    new-instance v2, Ljava/lang/StringBuilder;
    invoke-direct { v2 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v3, "AvcDecoder,AvcDecoder->open:\n"
    invoke-virtual { v2, v3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-static { v1 }, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;
    move-result-object v1
    invoke-virtual { v2, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v2 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v1
    invoke-static { v1 }, Lcn/manstep/phonemirrorBox/util/s;->e(Ljava/lang/String;)V
    goto/16 :L1
  :L12
    return-void
.end method

.method public x()Z
  .registers 7
  .line 1
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "isBelowMinRenderFrameCnt: render_frame_cnt="
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget-wide v1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/b$b;->j:J
    invoke-virtual { v0, v1, v2 }, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    const-string v1, "AvcDecoder"
    invoke-static { v1, v0 }, Lcn/manstep/phonemirrorBox/util/s;->d(Ljava/lang/String;Ljava/lang/String;)V
  .line 2
    invoke-static { }, Landroid/os/SystemClock;->uptimeMillis()J
    move-result-wide v0
    iget-wide v2, p0, Lcn/manstep/phonemirrorBox/BoxInterface/b$b;->h:J
    sub-long/2addr v0, v2
    sget v2, Lcn/manstep/phonemirrorBox/p;->D:I
    int-to-long v2, v2
    const/4 v4, 0
    cmp-long v5, v0, v2
    if-gez v5, :L0
    return v4
  :L0
  .line 3
    iget-wide v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/b$b;->j:J
    const-wide/16 v2, 4
    cmp-long v5, v0, v2
    if-gez v5, :L1
    const/4 v4, 1
  :L1
    return v4
.end method
