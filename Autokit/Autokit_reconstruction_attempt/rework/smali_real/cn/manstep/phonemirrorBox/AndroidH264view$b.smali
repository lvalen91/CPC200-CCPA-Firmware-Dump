.class Lcn/manstep/phonemirrorBox/AndroidH264view$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/manstep/phonemirrorBox/AndroidH264view;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# instance fields
.field a:Z

.field b:Landroid/media/MediaCodec$BufferInfo;

.field private c:J

.field private d:Landroid/media/MediaCodec;

.field private e:Ljava/lang/Object;

.field private f:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "[B>;"
        }
    .end annotation
.end field

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

.field private m:Ljava/util/Timer;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    return-void
.end method

.method private constructor <init>()V
    .registers 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcn/manstep/phonemirrorBox/AndroidH264view$b;->a:Z

    .line 3
    new-instance v0, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v0}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    iput-object v0, p0, Lcn/manstep/phonemirrorBox/AndroidH264view$b;->b:Landroid/media/MediaCodec$BufferInfo;

    const-wide/16 v0, 0x0

    .line 4
    iput-wide v0, p0, Lcn/manstep/phonemirrorBox/AndroidH264view$b;->c:J

    const/4 v2, 0x0

    .line 5
    iput-object v2, p0, Lcn/manstep/phonemirrorBox/AndroidH264view$b;->d:Landroid/media/MediaCodec;

    .line 6
    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v3, p0, Lcn/manstep/phonemirrorBox/AndroidH264view$b;->e:Ljava/lang/Object;

    .line 7
    iput-object v2, p0, Lcn/manstep/phonemirrorBox/AndroidH264view$b;->g:Ljava/lang/Thread;

    .line 8
    iput-wide v0, p0, Lcn/manstep/phonemirrorBox/AndroidH264view$b;->h:J

    .line 9
    iput-wide v0, p0, Lcn/manstep/phonemirrorBox/AndroidH264view$b;->i:J

    .line 10
    iput-wide v0, p0, Lcn/manstep/phonemirrorBox/AndroidH264view$b;->j:J

    .line 11
    iput-object v2, p0, Lcn/manstep/phonemirrorBox/AndroidH264view$b;->k:Ljava/lang/Thread;

    .line 12
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/manstep/phonemirrorBox/AndroidH264view$b;->l:Ljava/util/List;

    .line 13
    iput-object v2, p0, Lcn/manstep/phonemirrorBox/AndroidH264view$b;->m:Ljava/util/Timer;

    return-void
.end method

.method synthetic constructor <init>(Lcn/manstep/phonemirrorBox/AndroidH264view$a;)V
    .registers 2

    .line 14
    invoke-direct {p0}, Lcn/manstep/phonemirrorBox/AndroidH264view$b;-><init>()V

    return-void
.end method

.method static synthetic a(Lcn/manstep/phonemirrorBox/AndroidH264view$b;)Ljava/lang/Object;
    .registers 1

    .line 1
    iget-object p0, p0, Lcn/manstep/phonemirrorBox/AndroidH264view$b;->e:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic b(Lcn/manstep/phonemirrorBox/AndroidH264view$b;)Ljava/util/Vector;
    .registers 1

    .line 1
    iget-object p0, p0, Lcn/manstep/phonemirrorBox/AndroidH264view$b;->f:Ljava/util/Vector;

    return-object p0
.end method

.method static synthetic c(Lcn/manstep/phonemirrorBox/AndroidH264view$b;[B)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcn/manstep/phonemirrorBox/AndroidH264view$b;->p([B)V

    return-void
.end method

.method static synthetic d(Lcn/manstep/phonemirrorBox/AndroidH264view$b;)Landroid/media/MediaCodec;
    .registers 1

    .line 1
    iget-object p0, p0, Lcn/manstep/phonemirrorBox/AndroidH264view$b;->d:Landroid/media/MediaCodec;

    return-object p0
.end method

.method static synthetic e(Lcn/manstep/phonemirrorBox/AndroidH264view$b;)J
    .registers 3

    .line 1
    iget-wide v0, p0, Lcn/manstep/phonemirrorBox/AndroidH264view$b;->j:J

    return-wide v0
.end method

.method static synthetic f(Lcn/manstep/phonemirrorBox/AndroidH264view$b;)J
    .registers 5

    .line 1
    iget-wide v0, p0, Lcn/manstep/phonemirrorBox/AndroidH264view$b;->j:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcn/manstep/phonemirrorBox/AndroidH264view$b;->j:J

    return-wide v0
.end method

.method static synthetic g(Lcn/manstep/phonemirrorBox/AndroidH264view$b;)J
    .registers 3

    .line 1
    iget-wide v0, p0, Lcn/manstep/phonemirrorBox/AndroidH264view$b;->i:J

    return-wide v0
.end method

.method static synthetic h(Lcn/manstep/phonemirrorBox/AndroidH264view$b;J)J
    .registers 3

    .line 1
    iput-wide p1, p0, Lcn/manstep/phonemirrorBox/AndroidH264view$b;->i:J

    return-wide p1
.end method

.method static synthetic i(Lcn/manstep/phonemirrorBox/AndroidH264view$b;)J
    .registers 3

    .line 1
    iget-wide v0, p0, Lcn/manstep/phonemirrorBox/AndroidH264view$b;->h:J

    return-wide v0
.end method

.method static synthetic j(Lcn/manstep/phonemirrorBox/AndroidH264view$b;)Ljava/util/List;
    .registers 1

    .line 1
    iget-object p0, p0, Lcn/manstep/phonemirrorBox/AndroidH264view$b;->l:Ljava/util/List;

    return-object p0
.end method

.method static synthetic k(Lcn/manstep/phonemirrorBox/AndroidH264view$b;)V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcn/manstep/phonemirrorBox/AndroidH264view$b;->o()V

    return-void
.end method

.method static synthetic l(Lcn/manstep/phonemirrorBox/AndroidH264view$b;)V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcn/manstep/phonemirrorBox/AndroidH264view$b;->r()V

    return-void
.end method

.method static synthetic m(Lcn/manstep/phonemirrorBox/AndroidH264view$b;Landroid/view/Surface;II)V
    .registers 4

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcn/manstep/phonemirrorBox/AndroidH264view$b;->t(Landroid/view/Surface;II)V

    return-void
.end method

.method static synthetic n(Lcn/manstep/phonemirrorBox/AndroidH264view$b;[BII)V
    .registers 4

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcn/manstep/phonemirrorBox/AndroidH264view$b;->s([BII)V

    return-void
.end method

.method private o()V
    .registers 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/AndroidH264view$b;->d:Landroid/media/MediaCodec;

    if-eqz v0, :cond_31

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "release mediaCodec ----"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/manstep/phonemirrorBox/AndroidH264view$b;->d:Landroid/media/MediaCodec;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V

    .line 3
    invoke-direct {p0}, Lcn/manstep/phonemirrorBox/AndroidH264view$b;->u()V

    .line 4
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/AndroidH264view$b;->d:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcn/manstep/phonemirrorBox/AndroidH264view$b;->d:Landroid/media/MediaCodec;
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_25} :catch_26

    goto :goto_31

    :catch_26
    move-exception v0

    .line 6
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 7
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/manstep/phonemirrorBox/util/s;->e(Ljava/lang/String;)V

    :cond_31
    :goto_31
    return-void
.end method

.method private p([B)V
    .registers 4

    .line 1
    array-length v0, p1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0}, Lcn/manstep/phonemirrorBox/AndroidH264view$b;->q([BII)V

    return-void
.end method

.method private q([BII)V
    .registers 20

    move-object/from16 v1, p0

    .line 1
    iget-boolean v0, v1, Lcn/manstep/phonemirrorBox/AndroidH264view$b;->a:Z

    if-nez v0, :cond_7

    return-void

    .line 2
    :cond_7
    iget-wide v2, v1, Lcn/manstep/phonemirrorBox/AndroidH264view$b;->c:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-nez v0, :cond_17

    .line 3
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iput-wide v2, v1, Lcn/manstep/phonemirrorBox/AndroidH264view$b;->h:J

    move-wide v2, v4

    goto :goto_1e

    .line 4
    :cond_17
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-wide v6, v1, Lcn/manstep/phonemirrorBox/AndroidH264view$b;->h:J

    sub-long/2addr v2, v6

    :goto_1e
    const/4 v0, 0x0

    :goto_1f
    if-nez v0, :cond_a0

    .line 5
    :try_start_21
    iget-boolean v6, v1, Lcn/manstep/phonemirrorBox/AndroidH264view$b;->a:Z

    if-eqz v6, :cond_a0

    .line 6
    iget-object v6, v1, Lcn/manstep/phonemirrorBox/AndroidH264view$b;->d:Landroid/media/MediaCodec;

    const-wide/32 v7, 0x186a0

    invoke-virtual {v6, v7, v8}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v10

    if-ltz v10, :cond_7a

    .line 7
    iget-object v0, v1, Lcn/manstep/phonemirrorBox/AndroidH264view$b;->d:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getInputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v0

    aget-object v0, v0, v10

    .line 8
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    move-object/from16 v6, p1

    move/from16 v7, p2

    move/from16 v8, p3

    .line 9
    invoke-virtual {v0, v6, v7, v8}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 10
    iget-object v9, v1, Lcn/manstep/phonemirrorBox/AndroidH264view$b;->d:Landroid/media/MediaCodec;

    const/4 v11, 0x0

    const-wide/16 v12, 0x3e8

    mul-long v13, v2, v12

    const/4 v15, 0x0

    move/from16 v12, p3

    invoke-virtual/range {v9 .. v15}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 11
    iget-wide v9, v1, Lcn/manstep/phonemirrorBox/AndroidH264view$b;->c:J

    cmp-long v0, v9, v4

    if-nez v0, :cond_61

    .line 12
    iget-object v0, v1, Lcn/manstep/phonemirrorBox/AndroidH264view$b;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 13
    iget-object v0, v1, Lcn/manstep/phonemirrorBox/AndroidH264view$b;->k:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 14
    :cond_61
    iget-wide v9, v1, Lcn/manstep/phonemirrorBox/AndroidH264view$b;->c:J

    const-wide/16 v11, 0x1

    add-long/2addr v9, v11

    iput-wide v9, v1, Lcn/manstep/phonemirrorBox/AndroidH264view$b;->c:J

    .line 15
    iget-object v9, v1, Lcn/manstep/phonemirrorBox/AndroidH264view$b;->l:Ljava/util/List;

    monitor-enter v9
    :try_end_6b
    .catchall {:try_start_21 .. :try_end_6b} :catchall_97

    .line 16
    :try_start_6b
    iget-object v0, v1, Lcn/manstep/phonemirrorBox/AndroidH264view$b;->l:Ljava/util/List;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 17
    monitor-exit v9

    const/4 v0, 0x1

    goto :goto_1f

    :catchall_77
    move-exception v0

    monitor-exit v9
    :try_end_79
    .catchall {:try_start_6b .. :try_end_79} :catchall_77

    :try_start_79
    throw v0

    :cond_7a
    move-object/from16 v6, p1

    move/from16 v7, p2

    move/from16 v8, p3

    const-string v9, "AvcDecoder"

    .line 18
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Get decoder inputBuffer error: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcn/manstep/phonemirrorBox/util/s;->f(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_96
    .catchall {:try_start_79 .. :try_end_96} :catchall_97

    goto :goto_1f

    :catchall_97
    move-exception v0

    .line 19
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const-string v0, "inputBufferIndex Error"

    .line 20
    invoke-static {v0}, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V

    :cond_a0
    return-void
.end method

.method private r()V
    .registers 3

    :try_start_0
    const-string v0, "video/avc"

    .line 1
    invoke-static {v0}, Landroid/media/MediaCodec;->createDecoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v0

    iput-object v0, p0, Lcn/manstep/phonemirrorBox/AndroidH264view$b;->d:Landroid/media/MediaCodec;

    if-nez v0, :cond_f

    const-string v0, "mediaCodec ----NULL"

    .line 2
    invoke-static {v0}, Lcn/manstep/phonemirrorBox/util/s;->e(Ljava/lang/String;)V

    :cond_f
    const-string v0, "initDecodeMediaCodec ----- video/avc"

    .line 3
    invoke-static {v0}, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mediaCodec ----"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/manstep/phonemirrorBox/AndroidH264view$b;->d:Landroid/media/MediaCodec;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V
    :try_end_2a
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_2a} :catch_2b

    goto :goto_36

    :catch_2b
    move-exception v0

    .line 5
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 6
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/manstep/phonemirrorBox/util/s;->e(Ljava/lang/String;)V

    :goto_36
    return-void
.end method

.method private s([BII)V
    .registers 6

    .line 1
    sget v0, Lcn/manstep/phonemirrorBox/p;->F:I

    if-lez v0, :cond_26

    .line 2
    new-array v0, p3, [B

    const/4 v1, 0x0

    .line 3
    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/AndroidH264view$b;->e:Ljava/lang/Object;

    monitor-enter v1

    .line 5
    :try_start_d
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/AndroidH264view$b;->f:Ljava/util/Vector;

    invoke-virtual {p1, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 6
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/AndroidH264view$b;->f:Ljava/util/Vector;

    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result p1

    sget p2, Lcn/manstep/phonemirrorBox/p;->F:I

    if-le p1, p2, :cond_21

    .line 7
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/AndroidH264view$b;->e:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 8
    :cond_21
    monitor-exit v1

    goto :goto_29

    :catchall_23
    move-exception p1

    monitor-exit v1
    :try_end_25
    .catchall {:try_start_d .. :try_end_25} :catchall_23

    throw p1

    .line 9
    :cond_26
    invoke-direct {p0, p1, p2, p3}, Lcn/manstep/phonemirrorBox/AndroidH264view$b;->q([BII)V

    :goto_29
    return-void
.end method

.method private t(Landroid/view/Surface;II)V
    .registers 7

    .line 1
    iget-boolean v0, p0, Lcn/manstep/phonemirrorBox/AndroidH264view$b;->a:Z

    if-nez v0, :cond_75

    if-lez p2, :cond_75

    if-lez p3, :cond_75

    .line 2
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/AndroidH264view$b;->e:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_b
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/AndroidH264view$b;->d:Landroid/media/MediaCodec;

    if-eqz v1, :cond_70

    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AvcDecoder start:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V

    .line 5
    new-instance v1, Ljava/util/Vector;

    const/16 v2, 0x140

    invoke-direct {v1, v2}, Ljava/util/Vector;-><init>(I)V

    iput-object v1, p0, Lcn/manstep/phonemirrorBox/AndroidH264view$b;->f:Ljava/util/Vector;

    const-string v1, "video/avc"

    .line 6
    invoke-static {v1, p2, p3}, Landroid/media/MediaFormat;->createVideoFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object p2

    .line 7
    iget-object p3, p0, Lcn/manstep/phonemirrorBox/AndroidH264view$b;->d:Landroid/media/MediaCodec;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p3, p2, p1, v1, v2}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 8
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/AndroidH264view$b;->d:Landroid/media/MediaCodec;

    invoke-virtual {p1}, Landroid/media/MediaCodec;->start()V

    const/4 p1, 0x1

    .line 9
    iput-boolean p1, p0, Lcn/manstep/phonemirrorBox/AndroidH264view$b;->a:Z

    .line 10
    new-instance p1, Ljava/lang/Thread;

    new-instance p2, Lcn/manstep/phonemirrorBox/AndroidH264view$b$a;

    invoke-direct {p2, p0}, Lcn/manstep/phonemirrorBox/AndroidH264view$b$a;-><init>(Lcn/manstep/phonemirrorBox/AndroidH264view$b;)V

    const-string p3, "hdv"

    invoke-direct {p1, p2, p3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object p1, p0, Lcn/manstep/phonemirrorBox/AndroidH264view$b;->g:Ljava/lang/Thread;

    .line 11
    sget p2, Lcn/manstep/phonemirrorBox/p;->F:I

    if-lez p2, :cond_5e

    .line 12
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    :cond_5e
    const-wide/16 p1, 0x0

    .line 13
    iput-wide p1, p0, Lcn/manstep/phonemirrorBox/AndroidH264view$b;->j:J

    .line 14
    new-instance p1, Ljava/lang/Thread;

    new-instance p2, Lcn/manstep/phonemirrorBox/AndroidH264view$b$b;

    invoke-direct {p2, p0}, Lcn/manstep/phonemirrorBox/AndroidH264view$b$b;-><init>(Lcn/manstep/phonemirrorBox/AndroidH264view$b;)V

    const-string p3, "render"

    invoke-direct {p1, p2, p3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object p1, p0, Lcn/manstep/phonemirrorBox/AndroidH264view$b;->k:Ljava/lang/Thread;

    .line 15
    :cond_70
    monitor-exit v0

    goto :goto_75

    :catchall_72
    move-exception p1

    monitor-exit v0
    :try_end_74
    .catchall {:try_start_b .. :try_end_74} :catchall_72

    throw p1

    :cond_75
    :goto_75
    return-void
.end method

.method private u()V
    .registers 3

    .line 1
    iget-boolean v0, p0, Lcn/manstep/phonemirrorBox/AndroidH264view$b;->a:Z

    if-eqz v0, :cond_30

    const-string v0, "AvcDecoder stop"

    .line 2
    invoke-static {v0}, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    .line 3
    iput-wide v0, p0, Lcn/manstep/phonemirrorBox/AndroidH264view$b;->c:J

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcn/manstep/phonemirrorBox/AndroidH264view$b;->a:Z

    .line 5
    :try_start_10
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/AndroidH264view$b;->g:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->join()V

    .line 6
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/AndroidH264view$b;->k:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->join()V
    :try_end_1a
    .catch Ljava/lang/InterruptedException; {:try_start_10 .. :try_end_1a} :catch_1b

    goto :goto_26

    :catch_1b
    move-exception v0

    .line 7
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 8
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/manstep/phonemirrorBox/util/s;->e(Ljava/lang/String;)V

    .line 9
    :goto_26
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/AndroidH264view$b;->d:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->flush()V

    .line 10
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/AndroidH264view$b;->d:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->stop()V

    .line 11
    :cond_30
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/AndroidH264view$b;->m:Ljava/util/Timer;

    if-eqz v0, :cond_37

    .line 12
    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    :cond_37
    const/4 v0, 0x0

    .line 13
    iput-object v0, p0, Lcn/manstep/phonemirrorBox/AndroidH264view$b;->m:Ljava/util/Timer;

    return-void
.end method
