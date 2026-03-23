.class Lcn/manstep/phonemirrorBox/n0/a$c;
.super Ljava/lang/Object;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Lcn/manstep/phonemirrorBox/n0/a;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 10
  name = "c"
.end annotation

.field a:Z

.field b:Landroid/media/MediaCodec$BufferInfo;

.field private c:J

.field private d:Landroid/media/MediaCodec;

.field private e:Ljava/lang/Object;

.field private f:Lcn/manstep/phonemirrorBox/util/i;

.field private g:Ljava/lang/Thread;

.method private constructor <init>()V
  .registers 3
  .line 1
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    const/4 v0, 0
  .line 2
    iput-boolean v0, p0, Lcn/manstep/phonemirrorBox/n0/a$c;->a:Z
  .line 3
    new-instance v0, Landroid/media/MediaCodec$BufferInfo;
    invoke-direct { v0 }, Landroid/media/MediaCodec$BufferInfo;-><init>()V
    iput-object v0, p0, Lcn/manstep/phonemirrorBox/n0/a$c;->b:Landroid/media/MediaCodec$BufferInfo;
    const-wide/16 v0, 0
  .line 4
    iput-wide v0, p0, Lcn/manstep/phonemirrorBox/n0/a$c;->c:J
    const/4 v0, 0
  .line 5
    iput-object v0, p0, Lcn/manstep/phonemirrorBox/n0/a$c;->d:Landroid/media/MediaCodec;
  .line 6
    new-instance v1, Ljava/lang/Object;
    invoke-direct { v1 }, Ljava/lang/Object;-><init>()V
    iput-object v1, p0, Lcn/manstep/phonemirrorBox/n0/a$c;->e:Ljava/lang/Object;
  .line 7
    iput-object v0, p0, Lcn/manstep/phonemirrorBox/n0/a$c;->g:Ljava/lang/Thread;
    return-void
.end method

.method synthetic constructor <init>(Lcn/manstep/phonemirrorBox/n0/a$a;)V
  .registers 2
  .line 8
    invoke-direct { p0 }, Lcn/manstep/phonemirrorBox/n0/a$c;-><init>()V
    return-void
.end method

.method static synthetic a(Lcn/manstep/phonemirrorBox/n0/a$c;)Ljava/lang/Object;
  .registers 1
  .line 1
    iget-object p0, p0, Lcn/manstep/phonemirrorBox/n0/a$c;->e:Ljava/lang/Object;
    return-object p0
.end method

.method static synthetic b(Lcn/manstep/phonemirrorBox/n0/a$c;)Lcn/manstep/phonemirrorBox/util/i;
  .registers 1
  .line 1
    iget-object p0, p0, Lcn/manstep/phonemirrorBox/n0/a$c;->f:Lcn/manstep/phonemirrorBox/util/i;
    return-object p0
.end method

.method static synthetic c(Lcn/manstep/phonemirrorBox/n0/a$c;[B)V
  .registers 2
  .line 1
    invoke-direct { p0, p1 }, Lcn/manstep/phonemirrorBox/n0/a$c;->h([B)V
    return-void
.end method

.method static synthetic d(Lcn/manstep/phonemirrorBox/n0/a$c;)V
  .registers 1
  .line 1
    invoke-direct { p0 }, Lcn/manstep/phonemirrorBox/n0/a$c;->g()V
    return-void
.end method

.method static synthetic e(Lcn/manstep/phonemirrorBox/n0/a$c;)V
  .registers 1
  .line 1
    invoke-direct { p0 }, Lcn/manstep/phonemirrorBox/n0/a$c;->j()V
    return-void
.end method

.method static synthetic f(Lcn/manstep/phonemirrorBox/n0/a$c;Landroid/view/Surface;II)V
  .registers 4
  .line 1
    invoke-direct { p0, p1, p2, p3 }, Lcn/manstep/phonemirrorBox/n0/a$c;->k(Landroid/view/Surface;II)V
    return-void
.end method

.method private g()V
  .catch Ljava/lang/Exception; { :L0 .. :L1 } :L2
  .registers 2
    const/4 v0, 0
  .line 1
    sput-boolean v0, Lcn/manstep/phonemirrorBox/n0/a;->m:Z
  :L0
  .line 2
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/n0/a$c;->d:Landroid/media/MediaCodec;
    if-eqz v0, :L3
  .line 3
    invoke-direct { p0 }, Lcn/manstep/phonemirrorBox/n0/a$c;->l()V
  .line 4
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/n0/a$c;->d:Landroid/media/MediaCodec;
    invoke-virtual { v0 }, Landroid/media/MediaCodec;->release()V
  :L1
    goto :L3
  :L2
    move-exception v0
  .line 5
    invoke-virtual { v0 }, Ljava/lang/Exception;->printStackTrace()V
  .line 6
    invoke-static { v0 }, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;
    move-result-object v0
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/util/s;->e(Ljava/lang/String;)V
  :L3
    return-void
.end method

.method private h([B)V
  .registers 4
  .line 1
    array-length v0, p1
    const/4 v1, 0
    invoke-direct { p0, p1, v1, v0 }, Lcn/manstep/phonemirrorBox/n0/a$c;->i([BII)V
    return-void
.end method

.method private i([BII)V
  .catchall { :L1 .. :L8 } :L9
  .registers 14
  .line 1
    iget-boolean v0, p0, Lcn/manstep/phonemirrorBox/n0/a$c;->a:Z
    if-nez v0, :L0
    return-void
  :L0
    if-eqz v0, :L10
  :L1
  .line 2
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/n0/a$c;->d:Landroid/media/MediaCodec;
    const-wide/32 v1, 100000
    invoke-virtual { v0, v1, v2 }, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I
    move-result v4
    if-ltz v4, :L2
  .line 3
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/n0/a$c;->d:Landroid/media/MediaCodec;
    invoke-virtual { v0 }, Landroid/media/MediaCodec;->getInputBuffers()[Ljava/nio/ByteBuffer;
    move-result-object v0
    aget-object v0, v0, v4
  .line 4
    invoke-virtual { v0 }, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;
  .line 5
    invoke-virtual { v0, p1, p2, p3 }, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;
  .line 6
    iget-object v3, p0, Lcn/manstep/phonemirrorBox/n0/a$c;->d:Landroid/media/MediaCodec;
    const/4 v5, 0
    iget-wide p1, p0, Lcn/manstep/phonemirrorBox/n0/a$c;->c:J
    const-wide/16 v6, 1000
    mul-long p1, p1, v6
    mul-long p1, p1, v6
    const-wide/16 v6, 60
    div-long v7, p1, v6
    const/4 v9, 0
    move v6, p3
    invoke-virtual/range { v3 .. v9 }, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V
  .line 7
    iget-wide p1, p0, Lcn/manstep/phonemirrorBox/n0/a$c;->c:J
    const-wide/16 v3, 1
    add-long/2addr p1, v3
    iput-wide p1, p0, Lcn/manstep/phonemirrorBox/n0/a$c;->c:J
  :L2
  .line 8
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/n0/a$c;->d:Landroid/media/MediaCodec;
    iget-object p2, p0, Lcn/manstep/phonemirrorBox/n0/a$c;->b:Landroid/media/MediaCodec$BufferInfo;
    invoke-virtual { p1, p2, v1, v2 }, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I
    move-result p1
  :L3
    const/4 p2, -1
    if-ne p1, p2, :L4
    goto :L8
  :L4
    const/4 p2, -3
    if-ne p1, p2, :L5
    goto :L8
  :L5
    const/4 p2, -2
    if-ne p1, p2, :L6
  .line 9
    iget-object p2, p0, Lcn/manstep/phonemirrorBox/n0/a$c;->d:Landroid/media/MediaCodec;
    invoke-virtual { p2 }, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;
    move-result-object p2
  .line 10
    new-instance p3, Ljava/lang/StringBuilder;
    invoke-direct { p3 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v0, "onOutputFormatChanged: "
    invoke-virtual { p3, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string v0, "color-format"
    invoke-virtual { p2, v0 }, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I
    move-result v0
    invoke-virtual { p3, v0 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    const-string v0, ",size: "
    invoke-virtual { p3, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string v0, "width"
  .line 11
    invoke-virtual { p2, v0 }, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I
    move-result v0
    invoke-virtual { p3, v0 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    const-string v0, "x"
    invoke-virtual { p3, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string v0, "height"
    invoke-virtual { p2, v0 }, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I
    move-result p2
    invoke-virtual { p3, p2 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { p3 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p2
  .line 12
    invoke-static { p2 }, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V
    goto :L8
  :L6
    if-gez p1, :L7
    goto :L8
  :L7
  .line 13
    iget-object p2, p0, Lcn/manstep/phonemirrorBox/n0/a$c;->d:Landroid/media/MediaCodec;
    const/4 p3, 1
    invoke-virtual { p2, p1, p3 }, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V
  .line 14
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/n0/a$c;->d:Landroid/media/MediaCodec;
    iget-object p2, p0, Lcn/manstep/phonemirrorBox/n0/a$c;->b:Landroid/media/MediaCodec$BufferInfo;
    const-wide/16 v0, 0
    invoke-virtual { p1, p2, v0, v1 }, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I
    move-result p1
  :L8
    if-gez p1, :L3
    goto :L10
  :L9
    move-exception p1
  .line 15
    invoke-virtual { p1 }, Ljava/lang/Throwable;->printStackTrace()V
    const-string p1, "inputBufferIndex Error"
  .line 16
    invoke-static { p1 }, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V
  :L10
    return-void
.end method

.method private j()V
  .catch Ljava/io/IOException; { :L0 .. :L1 } :L2
  .registers 3
  :L0
    const-string v0, "video/avc"
  .line 1
    invoke-static { v0 }, Landroid/media/MediaCodec;->createDecoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;
    move-result-object v0
    iput-object v0, p0, Lcn/manstep/phonemirrorBox/n0/a$c;->d:Landroid/media/MediaCodec;
    const-string v0, "initDecodeMediaCodec ----- video/avc"
  .line 2
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V
  .line 3
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "mediaCodec ----"
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/n0/a$c;->d:Landroid/media/MediaCodec;
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V
  :L1
    goto :L3
  :L2
    move-exception v0
  .line 4
    invoke-virtual { v0 }, Ljava/io/IOException;->printStackTrace()V
  .line 5
    invoke-static { v0 }, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;
    move-result-object v0
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/util/s;->e(Ljava/lang/String;)V
  :L3
    return-void
.end method

.method private k(Landroid/view/Surface;II)V
  .catchall { :L0 .. :L2 } :L1
  .registers 7
  .line 1
    iget-boolean v0, p0, Lcn/manstep/phonemirrorBox/n0/a$c;->a:Z
    if-nez v0, :L3
    if-lez p2, :L3
    if-lez p3, :L3
  .line 2
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/n0/a$c;->e:Ljava/lang/Object;
    monitor-enter v0
  :L0
  .line 3
    new-instance v1, Ljava/lang/StringBuilder;
    invoke-direct { v1 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v2, "AvcDecoder start:"
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v1, p2 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    const-string v2, "-"
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v1, p3 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { v1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v1
    invoke-static { v1 }, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V
  .line 4
    new-instance v1, Lcn/manstep/phonemirrorBox/util/i;
    invoke-direct { v1 }, Lcn/manstep/phonemirrorBox/util/i;-><init>()V
    iput-object v1, p0, Lcn/manstep/phonemirrorBox/n0/a$c;->f:Lcn/manstep/phonemirrorBox/util/i;
    const-string v1, "video/avc"
  .line 5
    invoke-static { v1, p2, p3 }, Landroid/media/MediaFormat;->createVideoFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;
    move-result-object p2
  .line 6
    iget-object p3, p0, Lcn/manstep/phonemirrorBox/n0/a$c;->d:Landroid/media/MediaCodec;
    const/4 v1, 0
    const/4 v2, 0
    invoke-virtual { p3, p2, p1, v1, v2 }, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V
  .line 7
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/n0/a$c;->d:Landroid/media/MediaCodec;
    invoke-virtual { p1 }, Landroid/media/MediaCodec;->start()V
    const/4 p1, 1
  .line 8
    iput-boolean p1, p0, Lcn/manstep/phonemirrorBox/n0/a$c;->a:Z
  .line 9
    new-instance p1, Ljava/lang/Thread;
    new-instance p2, Lcn/manstep/phonemirrorBox/n0/a$c$a;
    invoke-direct { p2, p0 }, Lcn/manstep/phonemirrorBox/n0/a$c$a;-><init>(Lcn/manstep/phonemirrorBox/n0/a$c;)V
    const-string p3, "decode"
    invoke-direct { p1, p2, p3 }, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/n0/a$c;->g:Ljava/lang/Thread;
  .line 10
    invoke-virtual { p1 }, Ljava/lang/Thread;->start()V
  .line 11
    monitor-exit v0
    goto :L3
  :L1
    move-exception p1
    monitor-exit v0
  :L2
    throw p1
  :L3
    return-void
.end method

.method private l()V
  .catch Ljava/lang/InterruptedException; { :L0 .. :L1 } :L2
  .registers 3
  .line 1
    iget-boolean v0, p0, Lcn/manstep/phonemirrorBox/n0/a$c;->a:Z
    if-eqz v0, :L4
    const-string v0, "AvcDecoder stop"
  .line 2
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V
    const-wide/16 v0, 0
  .line 3
    iput-wide v0, p0, Lcn/manstep/phonemirrorBox/n0/a$c;->c:J
    const/4 v0, 0
  .line 4
    iput-boolean v0, p0, Lcn/manstep/phonemirrorBox/n0/a$c;->a:Z
  :L0
  .line 5
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/n0/a$c;->g:Ljava/lang/Thread;
    invoke-virtual { v0 }, Ljava/lang/Thread;->join()V
  :L1
    goto :L3
  :L2
    move-exception v0
  .line 6
    invoke-virtual { v0 }, Ljava/lang/InterruptedException;->printStackTrace()V
  .line 7
    invoke-static { v0 }, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;
    move-result-object v0
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/util/s;->e(Ljava/lang/String;)V
  :L3
  .line 8
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/n0/a$c;->d:Landroid/media/MediaCodec;
    invoke-virtual { v0 }, Landroid/media/MediaCodec;->flush()V
  .line 9
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/n0/a$c;->d:Landroid/media/MediaCodec;
    invoke-virtual { v0 }, Landroid/media/MediaCodec;->stop()V
  :L4
    return-void
.end method
