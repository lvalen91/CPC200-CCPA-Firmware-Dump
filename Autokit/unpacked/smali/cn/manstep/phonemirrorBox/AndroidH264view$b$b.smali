.class Lcn/manstep/phonemirrorBox/AndroidH264view$b$b;
.super Ljava/lang/Object;
.implements Ljava/lang/Runnable;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingMethod;
  value = Lcn/manstep/phonemirrorBox/AndroidH264view$b;->t(Landroid/view/Surface;II)V
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = null
.end annotation

.field final synthetic b:Lcn/manstep/phonemirrorBox/AndroidH264view$b;

.method constructor <init>(Lcn/manstep/phonemirrorBox/AndroidH264view$b;)V
  .registers 2
  .line 1
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/AndroidH264view$b$b;->b:Lcn/manstep/phonemirrorBox/AndroidH264view$b;
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public run()V
  .catchall { :L7 .. :L10 } :L15
  .catchall { :L16 .. :L17 } :L15
  .registers 12
    const/16 v0, -19
  .line 1
    invoke-static { v0 }, Landroid/os/Process;->setThreadPriority(I)V
  :L0
  .line 2
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/AndroidH264view$b$b;->b:Lcn/manstep/phonemirrorBox/AndroidH264view$b;
    iget-boolean v1, v0, Lcn/manstep/phonemirrorBox/AndroidH264view$b;->a:Z
    if-eqz v1, :L18
  .line 3
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/AndroidH264view$b;->d(Lcn/manstep/phonemirrorBox/AndroidH264view$b;)Landroid/media/MediaCodec;
    move-result-object v0
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/AndroidH264view$b$b;->b:Lcn/manstep/phonemirrorBox/AndroidH264view$b;
    iget-object v1, v1, Lcn/manstep/phonemirrorBox/AndroidH264view$b;->b:Landroid/media/MediaCodec$BufferInfo;
    const-wide/32 v2, 100000
    invoke-virtual { v0, v1, v2, v3 }, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I
    move-result v0
  :L1
    const/4 v1, -1
    if-ne v0, v1, :L2
    goto/16 :L14
  :L2
    const/4 v1, -3
    if-ne v0, v1, :L3
    goto/16 :L14
  :L3
    const/4 v1, -2
    if-ne v0, v1, :L4
  .line 4
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/AndroidH264view$b$b;->b:Lcn/manstep/phonemirrorBox/AndroidH264view$b;
    invoke-static { v1 }, Lcn/manstep/phonemirrorBox/AndroidH264view$b;->d(Lcn/manstep/phonemirrorBox/AndroidH264view$b;)Landroid/media/MediaCodec;
    move-result-object v1
    invoke-virtual { v1 }, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;
    move-result-object v1
  .line 5
    new-instance v2, Ljava/lang/StringBuilder;
    invoke-direct { v2 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v3, "onOutputFormatChanged: "
    invoke-virtual { v2, v3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string v3, "color-format"
    invoke-virtual { v1, v3 }, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I
    move-result v3
    invoke-virtual { v2, v3 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    const-string v3, ",size: "
    invoke-virtual { v2, v3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string v3, "width"
  .line 6
    invoke-virtual { v1, v3 }, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I
    move-result v3
    invoke-virtual { v2, v3 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    const-string v3, "x"
    invoke-virtual { v2, v3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string v3, "height"
    invoke-virtual { v1, v3 }, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I
    move-result v1
    invoke-virtual { v2, v1 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { v2 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    goto/16 :L14
  :L4
    if-gez v0, :L5
    goto/16 :L14
  :L5
  .line 7
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/AndroidH264view$b$b;->b:Lcn/manstep/phonemirrorBox/AndroidH264view$b;
    invoke-static { v1 }, Lcn/manstep/phonemirrorBox/AndroidH264view$b;->e(Lcn/manstep/phonemirrorBox/AndroidH264view$b;)J
    move-result-wide v1
    const-wide/16 v3, 0
    cmp-long v5, v1, v3
    if-nez v5, :L6
  .line 8
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/AndroidH264view$b$b;->b:Lcn/manstep/phonemirrorBox/AndroidH264view$b;
    invoke-static { }, Landroid/os/SystemClock;->uptimeMillis()J
    move-result-wide v5
    invoke-static { v1, v5, v6 }, Lcn/manstep/phonemirrorBox/AndroidH264view$b;->h(Lcn/manstep/phonemirrorBox/AndroidH264view$b;J)J
  .line 9
    new-instance v1, Ljava/lang/StringBuilder;
    invoke-direct { v1 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v2, "decode latency: "
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget-object v2, p0, Lcn/manstep/phonemirrorBox/AndroidH264view$b$b;->b:Lcn/manstep/phonemirrorBox/AndroidH264view$b;
    invoke-static { v2 }, Lcn/manstep/phonemirrorBox/AndroidH264view$b;->g(Lcn/manstep/phonemirrorBox/AndroidH264view$b;)J
    move-result-wide v5
    iget-object v2, p0, Lcn/manstep/phonemirrorBox/AndroidH264view$b$b;->b:Lcn/manstep/phonemirrorBox/AndroidH264view$b;
    invoke-static { v2 }, Lcn/manstep/phonemirrorBox/AndroidH264view$b;->i(Lcn/manstep/phonemirrorBox/AndroidH264view$b;)J
    move-result-wide v7
    sub-long/2addr v5, v7
    invoke-virtual { v1, v5, v6 }, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
    invoke-virtual { v1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
  :L6
  .line 10
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/AndroidH264view$b$b;->b:Lcn/manstep/phonemirrorBox/AndroidH264view$b;
    invoke-static { v1 }, Lcn/manstep/phonemirrorBox/AndroidH264view$b;->f(Lcn/manstep/phonemirrorBox/AndroidH264view$b;)J
  .line 11
    invoke-static { }, Landroid/os/SystemClock;->uptimeMillis()J
    move-result-wide v1
    iget-object v5, p0, Lcn/manstep/phonemirrorBox/AndroidH264view$b$b;->b:Lcn/manstep/phonemirrorBox/AndroidH264view$b;
    invoke-static { v5 }, Lcn/manstep/phonemirrorBox/AndroidH264view$b;->g(Lcn/manstep/phonemirrorBox/AndroidH264view$b;)J
    move-result-wide v5
    sub-long/2addr v1, v5
  .line 12
    iget-object v5, p0, Lcn/manstep/phonemirrorBox/AndroidH264view$b$b;->b:Lcn/manstep/phonemirrorBox/AndroidH264view$b;
    invoke-static { v5 }, Lcn/manstep/phonemirrorBox/AndroidH264view$b;->j(Lcn/manstep/phonemirrorBox/AndroidH264view$b;)Ljava/util/List;
    move-result-object v5
    monitor-enter v5
  :L7
  .line 13
    iget-object v6, p0, Lcn/manstep/phonemirrorBox/AndroidH264view$b$b;->b:Lcn/manstep/phonemirrorBox/AndroidH264view$b;
    invoke-static { v6 }, Lcn/manstep/phonemirrorBox/AndroidH264view$b;->j(Lcn/manstep/phonemirrorBox/AndroidH264view$b;)Ljava/util/List;
    move-result-object v6
    invoke-interface { v6 }, Ljava/util/List;->size()I
    move-result v6
    const/4 v7, 0
    if-lez v6, :L8
  .line 14
    iget-object v6, p0, Lcn/manstep/phonemirrorBox/AndroidH264view$b$b;->b:Lcn/manstep/phonemirrorBox/AndroidH264view$b;
    invoke-static { v6 }, Lcn/manstep/phonemirrorBox/AndroidH264view$b;->j(Lcn/manstep/phonemirrorBox/AndroidH264view$b;)Ljava/util/List;
    move-result-object v6
    invoke-interface { v6, v7 }, Ljava/util/List;->get(I)Ljava/lang/Object;
    move-result-object v6
    check-cast v6, Ljava/lang/Long;
    invoke-virtual { v6 }, Ljava/lang/Long;->longValue()J
    move-result-wide v8
  .line 15
    iget-object v6, p0, Lcn/manstep/phonemirrorBox/AndroidH264view$b$b;->b:Lcn/manstep/phonemirrorBox/AndroidH264view$b;
    invoke-static { v6 }, Lcn/manstep/phonemirrorBox/AndroidH264view$b;->j(Lcn/manstep/phonemirrorBox/AndroidH264view$b;)Ljava/util/List;
    move-result-object v6
    invoke-interface { v6, v7 }, Ljava/util/List;->remove(I)Ljava/lang/Object;
    goto :L9
  :L8
    move-wide v8, v1
  :L9
  .line 16
    monitor-exit v5
  :L10
  .line 17
    sget v5, Lcn/manstep/phonemirrorBox/p;->D:I
    int-to-long v5, v5
    cmp-long v10, v8, v5
    if-gez v10, :L11
  .line 18
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/AndroidH264view$b$b;->b:Lcn/manstep/phonemirrorBox/AndroidH264view$b;
    invoke-static { v1 }, Lcn/manstep/phonemirrorBox/AndroidH264view$b;->d(Lcn/manstep/phonemirrorBox/AndroidH264view$b;)Landroid/media/MediaCodec;
    move-result-object v1
    invoke-virtual { v1, v0, v7 }, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V
    const-string v0, "AvcDecoder"
  .line 19
    new-instance v1, Ljava/lang/StringBuilder;
    invoke-direct { v1 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v2, "drop frames:"
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget-object v2, p0, Lcn/manstep/phonemirrorBox/AndroidH264view$b$b;->b:Lcn/manstep/phonemirrorBox/AndroidH264view$b;
    invoke-static { v2 }, Lcn/manstep/phonemirrorBox/AndroidH264view$b;->e(Lcn/manstep/phonemirrorBox/AndroidH264view$b;)J
    move-result-wide v5
    invoke-virtual { v1, v5, v6 }, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
    invoke-virtual { v1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v1
    invoke-static { v0, v1 }, Lcn/manstep/phonemirrorBox/util/s;->f(Ljava/lang/String;Ljava/lang/String;)V
    goto :L13
  :L11
    const-wide/16 v5, 1000
    add-long/2addr v5, v8
    const/4 v7, 1
    cmp-long v10, v1, v5
    if-lez v10, :L12
  .line 20
    iget-object v5, p0, Lcn/manstep/phonemirrorBox/AndroidH264view$b$b;->b:Lcn/manstep/phonemirrorBox/AndroidH264view$b;
    invoke-static { v5 }, Lcn/manstep/phonemirrorBox/AndroidH264view$b;->d(Lcn/manstep/phonemirrorBox/AndroidH264view$b;)Landroid/media/MediaCodec;
    move-result-object v5
    invoke-virtual { v5, v0, v7 }, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V
    const-string v0, "AvcDecoder"
  .line 21
    new-instance v5, Ljava/lang/StringBuilder;
    invoke-direct { v5 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v6, "late frame: "
    invoke-virtual { v5, v6 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget-object v6, p0, Lcn/manstep/phonemirrorBox/AndroidH264view$b$b;->b:Lcn/manstep/phonemirrorBox/AndroidH264view$b;
    invoke-static { v6 }, Lcn/manstep/phonemirrorBox/AndroidH264view$b;->e(Lcn/manstep/phonemirrorBox/AndroidH264view$b;)J
    move-result-wide v6
    invoke-virtual { v5, v6, v7 }, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
    const-string v6, ", late timestamp: "
    invoke-virtual { v5, v6 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    sub-long/2addr v1, v8
    invoke-virtual { v5, v1, v2 }, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
    invoke-virtual { v5 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v1
    invoke-static { v0, v1 }, Lcn/manstep/phonemirrorBox/util/s;->f(Ljava/lang/String;Ljava/lang/String;)V
    goto :L13
  :L12
  .line 22
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/AndroidH264view$b$b;->b:Lcn/manstep/phonemirrorBox/AndroidH264view$b;
    invoke-static { v1 }, Lcn/manstep/phonemirrorBox/AndroidH264view$b;->d(Lcn/manstep/phonemirrorBox/AndroidH264view$b;)Landroid/media/MediaCodec;
    move-result-object v1
    invoke-virtual { v1, v0, v7 }, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V
  :L13
  .line 23
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/AndroidH264view$b$b;->b:Lcn/manstep/phonemirrorBox/AndroidH264view$b;
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/AndroidH264view$b;->d(Lcn/manstep/phonemirrorBox/AndroidH264view$b;)Landroid/media/MediaCodec;
    move-result-object v0
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/AndroidH264view$b$b;->b:Lcn/manstep/phonemirrorBox/AndroidH264view$b;
    iget-object v1, v1, Lcn/manstep/phonemirrorBox/AndroidH264view$b;->b:Landroid/media/MediaCodec$BufferInfo;
    invoke-virtual { v0, v1, v3, v4 }, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I
    move-result v0
  :L14
    if-gez v0, :L1
    goto/16 :L0
  :L15
    move-exception v0
  :L16
  .line 24
    monitor-exit v5
  :L17
    throw v0
  :L18
    return-void
.end method
