.class Lcn/manstep/phonemirrorBox/AndroidH264view$b$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/manstep/phonemirrorBox/AndroidH264view$b;->t(Landroid/view/Surface;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcn/manstep/phonemirrorBox/AndroidH264view$b;


# direct methods
.method constructor <init>(Lcn/manstep/phonemirrorBox/AndroidH264view$b;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/AndroidH264view$b$b;->b:Lcn/manstep/phonemirrorBox/AndroidH264view$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 12

    const/16 v0, -0x13

    .line 1
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 2
    :goto_5
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/AndroidH264view$b$b;->b:Lcn/manstep/phonemirrorBox/AndroidH264view$b;

    iget-boolean v1, v0, Lcn/manstep/phonemirrorBox/AndroidH264view$b;->a:Z

    if-eqz v1, :cond_15d

    .line 3
    invoke-static {v0}, Lcn/manstep/phonemirrorBox/AndroidH264view$b;->d(Lcn/manstep/phonemirrorBox/AndroidH264view$b;)Landroid/media/MediaCodec;

    move-result-object v0

    iget-object v1, p0, Lcn/manstep/phonemirrorBox/AndroidH264view$b$b;->b:Lcn/manstep/phonemirrorBox/AndroidH264view$b;

    iget-object v1, v1, Lcn/manstep/phonemirrorBox/AndroidH264view$b;->b:Landroid/media/MediaCodec$BufferInfo;

    const-wide/32 v2, 0x186a0

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v0

    :cond_1a
    const/4 v1, -0x1

    if-ne v0, v1, :cond_1f

    goto/16 :goto_156

    :cond_1f
    const/4 v1, -0x3

    if-ne v0, v1, :cond_24

    goto/16 :goto_156

    :cond_24
    const/4 v1, -0x2

    if-ne v0, v1, :cond_65

    .line 4
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/AndroidH264view$b$b;->b:Lcn/manstep/phonemirrorBox/AndroidH264view$b;

    invoke-static {v1}, Lcn/manstep/phonemirrorBox/AndroidH264view$b;->d(Lcn/manstep/phonemirrorBox/AndroidH264view$b;)Landroid/media/MediaCodec;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v1

    .line 5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onOutputFormatChanged: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "color-format"

    invoke-virtual {v1, v3}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "width"

    .line 6
    invoke-virtual {v1, v3}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "height"

    invoke-virtual {v1, v3}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto/16 :goto_156

    :cond_65
    if-gez v0, :cond_69

    goto/16 :goto_156

    .line 7
    :cond_69
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/AndroidH264view$b$b;->b:Lcn/manstep/phonemirrorBox/AndroidH264view$b;

    invoke-static {v1}, Lcn/manstep/phonemirrorBox/AndroidH264view$b;->e(Lcn/manstep/phonemirrorBox/AndroidH264view$b;)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-nez v5, :cond_9b

    .line 8
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/AndroidH264view$b$b;->b:Lcn/manstep/phonemirrorBox/AndroidH264view$b;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    invoke-static {v1, v5, v6}, Lcn/manstep/phonemirrorBox/AndroidH264view$b;->h(Lcn/manstep/phonemirrorBox/AndroidH264view$b;J)J

    .line 9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "decode latency: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcn/manstep/phonemirrorBox/AndroidH264view$b$b;->b:Lcn/manstep/phonemirrorBox/AndroidH264view$b;

    invoke-static {v2}, Lcn/manstep/phonemirrorBox/AndroidH264view$b;->g(Lcn/manstep/phonemirrorBox/AndroidH264view$b;)J

    move-result-wide v5

    iget-object v2, p0, Lcn/manstep/phonemirrorBox/AndroidH264view$b$b;->b:Lcn/manstep/phonemirrorBox/AndroidH264view$b;

    invoke-static {v2}, Lcn/manstep/phonemirrorBox/AndroidH264view$b;->i(Lcn/manstep/phonemirrorBox/AndroidH264view$b;)J

    move-result-wide v7

    sub-long/2addr v5, v7

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 10
    :cond_9b
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/AndroidH264view$b$b;->b:Lcn/manstep/phonemirrorBox/AndroidH264view$b;

    invoke-static {v1}, Lcn/manstep/phonemirrorBox/AndroidH264view$b;->f(Lcn/manstep/phonemirrorBox/AndroidH264view$b;)J

    .line 11
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iget-object v5, p0, Lcn/manstep/phonemirrorBox/AndroidH264view$b$b;->b:Lcn/manstep/phonemirrorBox/AndroidH264view$b;

    invoke-static {v5}, Lcn/manstep/phonemirrorBox/AndroidH264view$b;->g(Lcn/manstep/phonemirrorBox/AndroidH264view$b;)J

    move-result-wide v5

    sub-long/2addr v1, v5

    .line 12
    iget-object v5, p0, Lcn/manstep/phonemirrorBox/AndroidH264view$b$b;->b:Lcn/manstep/phonemirrorBox/AndroidH264view$b;

    invoke-static {v5}, Lcn/manstep/phonemirrorBox/AndroidH264view$b;->j(Lcn/manstep/phonemirrorBox/AndroidH264view$b;)Ljava/util/List;

    move-result-object v5

    monitor-enter v5

    .line 13
    :try_start_b2
    iget-object v6, p0, Lcn/manstep/phonemirrorBox/AndroidH264view$b$b;->b:Lcn/manstep/phonemirrorBox/AndroidH264view$b;

    invoke-static {v6}, Lcn/manstep/phonemirrorBox/AndroidH264view$b;->j(Lcn/manstep/phonemirrorBox/AndroidH264view$b;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    const/4 v7, 0x0

    if-lez v6, :cond_d9

    .line 14
    iget-object v6, p0, Lcn/manstep/phonemirrorBox/AndroidH264view$b$b;->b:Lcn/manstep/phonemirrorBox/AndroidH264view$b;

    invoke-static {v6}, Lcn/manstep/phonemirrorBox/AndroidH264view$b;->j(Lcn/manstep/phonemirrorBox/AndroidH264view$b;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    .line 15
    iget-object v6, p0, Lcn/manstep/phonemirrorBox/AndroidH264view$b$b;->b:Lcn/manstep/phonemirrorBox/AndroidH264view$b;

    invoke-static {v6}, Lcn/manstep/phonemirrorBox/AndroidH264view$b;->j(Lcn/manstep/phonemirrorBox/AndroidH264view$b;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v7}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_da

    :cond_d9
    move-wide v8, v1

    .line 16
    :goto_da
    monitor-exit v5
    :try_end_db
    .catchall {:try_start_b2 .. :try_end_db} :catchall_15a

    .line 17
    sget v5, Lcn/manstep/phonemirrorBox/p;->D:I

    int-to-long v5, v5

    cmp-long v10, v8, v5

    if-gez v10, :cond_108

    .line 18
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/AndroidH264view$b$b;->b:Lcn/manstep/phonemirrorBox/AndroidH264view$b;

    invoke-static {v1}, Lcn/manstep/phonemirrorBox/AndroidH264view$b;->d(Lcn/manstep/phonemirrorBox/AndroidH264view$b;)Landroid/media/MediaCodec;

    move-result-object v1

    invoke-virtual {v1, v0, v7}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    const-string v0, "AvcDecoder"

    .line 19
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "drop frames:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcn/manstep/phonemirrorBox/AndroidH264view$b$b;->b:Lcn/manstep/phonemirrorBox/AndroidH264view$b;

    invoke-static {v2}, Lcn/manstep/phonemirrorBox/AndroidH264view$b;->e(Lcn/manstep/phonemirrorBox/AndroidH264view$b;)J

    move-result-wide v5

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/manstep/phonemirrorBox/util/s;->f(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_148

    :cond_108
    const-wide/16 v5, 0x3e8

    add-long/2addr v5, v8

    const/4 v7, 0x1

    cmp-long v10, v1, v5

    if-lez v10, :cond_13f

    .line 20
    iget-object v5, p0, Lcn/manstep/phonemirrorBox/AndroidH264view$b$b;->b:Lcn/manstep/phonemirrorBox/AndroidH264view$b;

    invoke-static {v5}, Lcn/manstep/phonemirrorBox/AndroidH264view$b;->d(Lcn/manstep/phonemirrorBox/AndroidH264view$b;)Landroid/media/MediaCodec;

    move-result-object v5

    invoke-virtual {v5, v0, v7}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    const-string v0, "AvcDecoder"

    .line 21
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "late frame: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcn/manstep/phonemirrorBox/AndroidH264view$b$b;->b:Lcn/manstep/phonemirrorBox/AndroidH264view$b;

    invoke-static {v6}, Lcn/manstep/phonemirrorBox/AndroidH264view$b;->e(Lcn/manstep/phonemirrorBox/AndroidH264view$b;)J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, ", late timestamp: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long/2addr v1, v8

    invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/manstep/phonemirrorBox/util/s;->f(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_148

    .line 22
    :cond_13f
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/AndroidH264view$b$b;->b:Lcn/manstep/phonemirrorBox/AndroidH264view$b;

    invoke-static {v1}, Lcn/manstep/phonemirrorBox/AndroidH264view$b;->d(Lcn/manstep/phonemirrorBox/AndroidH264view$b;)Landroid/media/MediaCodec;

    move-result-object v1

    invoke-virtual {v1, v0, v7}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 23
    :goto_148
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/AndroidH264view$b$b;->b:Lcn/manstep/phonemirrorBox/AndroidH264view$b;

    invoke-static {v0}, Lcn/manstep/phonemirrorBox/AndroidH264view$b;->d(Lcn/manstep/phonemirrorBox/AndroidH264view$b;)Landroid/media/MediaCodec;

    move-result-object v0

    iget-object v1, p0, Lcn/manstep/phonemirrorBox/AndroidH264view$b$b;->b:Lcn/manstep/phonemirrorBox/AndroidH264view$b;

    iget-object v1, v1, Lcn/manstep/phonemirrorBox/AndroidH264view$b;->b:Landroid/media/MediaCodec$BufferInfo;

    invoke-virtual {v0, v1, v3, v4}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v0

    :goto_156
    if-gez v0, :cond_1a

    goto/16 :goto_5

    :catchall_15a
    move-exception v0

    .line 24
    :try_start_15b
    monitor-exit v5
    :try_end_15c
    .catchall {:try_start_15b .. :try_end_15c} :catchall_15a

    throw v0

    :cond_15d
    return-void
.end method
