.class Lcn/manstep/phonemirrorBox/BoxInterface/b$b$c;
.super Ljava/lang/Object;
.implements Ljava/lang/Runnable;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingMethod;
  value = Lcn/manstep/phonemirrorBox/BoxInterface/b$b;->B(Landroid/view/Surface;II)V
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = null
.end annotation

.field final synthetic b:Lcn/manstep/phonemirrorBox/BoxInterface/b$b;

.method constructor <init>(Lcn/manstep/phonemirrorBox/BoxInterface/b$b;)V
  .registers 2
  .line 1
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/b$b$c;->b:Lcn/manstep/phonemirrorBox/BoxInterface/b$b;
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public run()V
  .catch Ljava/lang/Exception; { :L2 .. :L8 } :L18
  .catchall { :L8 .. :L10 } :L15
  .catch Ljava/lang/Exception; { :L10 .. :L14 } :L18
  .catchall { :L16 .. :L17 } :L15
  .catch Ljava/lang/Exception; { :L17 .. :L18 } :L18
  .registers 18
    move-object/from16 v1, p0
  .line 1
    new-instance v2, Landroid/media/MediaCodec$BufferInfo;
    invoke-direct { v2 }, Landroid/media/MediaCodec$BufferInfo;-><init>()V
    const/16 v0, -19
  .line 2
    invoke-static { v0 }, Landroid/os/Process;->setThreadPriority(I)V
    const/4 v3, 0
    const/4 v4, 0
  :L0
    const/4 v5, 0
  :L1
  .line 3
    iget-object v0, v1, Lcn/manstep/phonemirrorBox/BoxInterface/b$b$c;->b:Lcn/manstep/phonemirrorBox/BoxInterface/b$b;
    iget-boolean v6, v0, Lcn/manstep/phonemirrorBox/BoxInterface/b$b;->b:Z
    if-eqz v6, :L22
    const/16 v6, 19
    const-wide/16 v7, 30
    const/4 v9, 1
  :L2
  .line 4
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/BoxInterface/b$b;->k(Lcn/manstep/phonemirrorBox/BoxInterface/b$b;)Landroid/media/MediaCodec;
    move-result-object v0
    const-wide/32 v10, 100000
    invoke-virtual { v0, v2, v10, v11 }, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I
    move-result v0
    const/4 v10, -1
    const-wide/16 v11, 0
    if-ne v0, v10, :L3
  .line 5
    iget-object v0, v1, Lcn/manstep/phonemirrorBox/BoxInterface/b$b$c;->b:Lcn/manstep/phonemirrorBox/BoxInterface/b$b;
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/BoxInterface/b$b;->b(Lcn/manstep/phonemirrorBox/BoxInterface/b$b;)J
    move-result-wide v13
    iget-object v0, v1, Lcn/manstep/phonemirrorBox/BoxInterface/b$b$c;->b:Lcn/manstep/phonemirrorBox/BoxInterface/b$b;
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/BoxInterface/b$b;->g(Lcn/manstep/phonemirrorBox/BoxInterface/b$b;)J
    move-result-wide v15
    sub-long/2addr v13, v15
    cmp-long v0, v13, v7
    if-ltz v0, :L0
    iget-object v0, v1, Lcn/manstep/phonemirrorBox/BoxInterface/b$b$c;->b:Lcn/manstep/phonemirrorBox/BoxInterface/b$b;
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/BoxInterface/b$b;->g(Lcn/manstep/phonemirrorBox/BoxInterface/b$b;)J
    move-result-wide v13
    cmp-long v0, v13, v11
    if-nez v0, :L0
    const-string v0, "(frame_cnt - render_frame_cnt >= 30) && (render_frame_cnt == 0)"
  .line 6
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V
    if-nez v4, :L0
    const-string v0, "(frame_cnt - render_frame_cnt >= 30) && (render_frame_cnt == 0)"
  .line 7
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V
  .line 8
    invoke-static { v9, v6 }, Lcn/manstep/phonemirrorBox/BoxInterface/d;->O(II)Z
    const/4 v4, 1
    goto :L0
  :L3
    const/4 v10, -3
    if-ne v0, v10, :L4
    goto :L0
  :L4
    const/4 v10, -2
    if-ne v0, v10, :L5
  .line 9
    iget-object v0, v1, Lcn/manstep/phonemirrorBox/BoxInterface/b$b$c;->b:Lcn/manstep/phonemirrorBox/BoxInterface/b$b;
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/BoxInterface/b$b;->k(Lcn/manstep/phonemirrorBox/BoxInterface/b$b;)Landroid/media/MediaCodec;
    move-result-object v0
    invoke-virtual { v0 }, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;
    move-result-object v0
    const-string v10, "AvcDecoder"
  .line 10
    new-instance v11, Ljava/lang/StringBuilder;
    invoke-direct { v11 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v12, "onOutputFormatChanged: "
    invoke-virtual { v11, v12 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string v12, "color-format"
    invoke-virtual { v0, v12 }, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I
    move-result v12
    invoke-virtual { v11, v12 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    const-string v12, ",size: "
    invoke-virtual { v11, v12 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string v12, "width"
  .line 11
    invoke-virtual { v0, v12 }, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I
    move-result v12
    invoke-virtual { v11, v12 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    const-string v12, "x"
    invoke-virtual { v11, v12 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string v12, "height"
    invoke-virtual { v0, v12 }, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I
    move-result v0
    invoke-virtual { v11, v0 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { v11 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
  .line 12
    invoke-static { v10, v0 }, Lcn/manstep/phonemirrorBox/util/s;->d(Ljava/lang/String;Ljava/lang/String;)V
    goto/16 :L0
  :L5
    if-gez v0, :L6
    goto/16 :L0
  :L6
  .line 13
    iget-object v10, v1, Lcn/manstep/phonemirrorBox/BoxInterface/b$b$c;->b:Lcn/manstep/phonemirrorBox/BoxInterface/b$b;
    invoke-static { v10 }, Lcn/manstep/phonemirrorBox/BoxInterface/b$b;->g(Lcn/manstep/phonemirrorBox/BoxInterface/b$b;)J
    move-result-wide v13
    cmp-long v10, v13, v11
    if-nez v10, :L7
  .line 14
    iget-object v10, v1, Lcn/manstep/phonemirrorBox/BoxInterface/b$b$c;->b:Lcn/manstep/phonemirrorBox/BoxInterface/b$b;
    invoke-static { }, Landroid/os/SystemClock;->uptimeMillis()J
    move-result-wide v11
    invoke-static { v10, v11, v12 }, Lcn/manstep/phonemirrorBox/BoxInterface/b$b;->m(Lcn/manstep/phonemirrorBox/BoxInterface/b$b;J)J
    const-string v10, "AvcDecoder"
  .line 15
    new-instance v11, Ljava/lang/StringBuilder;
    invoke-direct { v11 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v12, "decode latency: "
    invoke-virtual { v11, v12 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget-object v12, v1, Lcn/manstep/phonemirrorBox/BoxInterface/b$b$c;->b:Lcn/manstep/phonemirrorBox/BoxInterface/b$b;
    invoke-static { v12 }, Lcn/manstep/phonemirrorBox/BoxInterface/b$b;->l(Lcn/manstep/phonemirrorBox/BoxInterface/b$b;)J
    move-result-wide v12
    iget-object v14, v1, Lcn/manstep/phonemirrorBox/BoxInterface/b$b$c;->b:Lcn/manstep/phonemirrorBox/BoxInterface/b$b;
    invoke-static { v14 }, Lcn/manstep/phonemirrorBox/BoxInterface/b$b;->n(Lcn/manstep/phonemirrorBox/BoxInterface/b$b;)J
    move-result-wide v14
    sub-long/2addr v12, v14
    invoke-virtual { v11, v12, v13 }, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
    invoke-virtual { v11 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v11
    invoke-static { v10, v11 }, Lcn/manstep/phonemirrorBox/util/s;->f(Ljava/lang/String;Ljava/lang/String;)V
  :L7
  .line 16
    iget-object v10, v1, Lcn/manstep/phonemirrorBox/BoxInterface/b$b$c;->b:Lcn/manstep/phonemirrorBox/BoxInterface/b$b;
    invoke-static { v10 }, Lcn/manstep/phonemirrorBox/BoxInterface/b$b;->h(Lcn/manstep/phonemirrorBox/BoxInterface/b$b;)J
  .line 17
    iget-object v10, v1, Lcn/manstep/phonemirrorBox/BoxInterface/b$b$c;->b:Lcn/manstep/phonemirrorBox/BoxInterface/b$b;
    invoke-static { v10 }, Lcn/manstep/phonemirrorBox/BoxInterface/b$b;->l(Lcn/manstep/phonemirrorBox/BoxInterface/b$b;)J
    move-result-wide v10
    iget-object v12, v1, Lcn/manstep/phonemirrorBox/BoxInterface/b$b$c;->b:Lcn/manstep/phonemirrorBox/BoxInterface/b$b;
    invoke-static { v12 }, Lcn/manstep/phonemirrorBox/BoxInterface/b$b;->n(Lcn/manstep/phonemirrorBox/BoxInterface/b$b;)J
    move-result-wide v12
    sub-long/2addr v10, v12
  .line 18
    invoke-static { }, Landroid/os/SystemClock;->uptimeMillis()J
    move-result-wide v12
    iget-object v14, v1, Lcn/manstep/phonemirrorBox/BoxInterface/b$b$c;->b:Lcn/manstep/phonemirrorBox/BoxInterface/b$b;
    invoke-static { v14 }, Lcn/manstep/phonemirrorBox/BoxInterface/b$b;->l(Lcn/manstep/phonemirrorBox/BoxInterface/b$b;)J
    move-result-wide v14
    sub-long/2addr v12, v14
  .line 19
    iget-object v14, v1, Lcn/manstep/phonemirrorBox/BoxInterface/b$b$c;->b:Lcn/manstep/phonemirrorBox/BoxInterface/b$b;
    invoke-static { v14 }, Lcn/manstep/phonemirrorBox/BoxInterface/b$b;->o(Lcn/manstep/phonemirrorBox/BoxInterface/b$b;)Ljava/util/List;
    move-result-object v14
    monitor-enter v14
  :L8
  .line 20
    iget-object v15, v1, Lcn/manstep/phonemirrorBox/BoxInterface/b$b$c;->b:Lcn/manstep/phonemirrorBox/BoxInterface/b$b;
    invoke-static { v15 }, Lcn/manstep/phonemirrorBox/BoxInterface/b$b;->o(Lcn/manstep/phonemirrorBox/BoxInterface/b$b;)Ljava/util/List;
    move-result-object v15
    invoke-interface { v15 }, Ljava/util/List;->size()I
    move-result v15
    if-lez v15, :L9
  .line 21
    iget-object v15, v1, Lcn/manstep/phonemirrorBox/BoxInterface/b$b$c;->b:Lcn/manstep/phonemirrorBox/BoxInterface/b$b;
    invoke-static { v15 }, Lcn/manstep/phonemirrorBox/BoxInterface/b$b;->o(Lcn/manstep/phonemirrorBox/BoxInterface/b$b;)Ljava/util/List;
    move-result-object v15
    invoke-interface { v15, v3 }, Ljava/util/List;->get(I)Ljava/lang/Object;
    move-result-object v15
    check-cast v15, Ljava/lang/Long;
    invoke-virtual { v15 }, Ljava/lang/Long;->longValue()J
  .line 22
    iget-object v15, v1, Lcn/manstep/phonemirrorBox/BoxInterface/b$b$c;->b:Lcn/manstep/phonemirrorBox/BoxInterface/b$b;
    invoke-static { v15 }, Lcn/manstep/phonemirrorBox/BoxInterface/b$b;->o(Lcn/manstep/phonemirrorBox/BoxInterface/b$b;)Ljava/util/List;
    move-result-object v15
    invoke-interface { v15, v3 }, Ljava/util/List;->remove(I)Ljava/lang/Object;
  :L9
  .line 23
    monitor-exit v14
  :L10
  .line 24
    sget v14, Lcn/manstep/phonemirrorBox/p;->D:I
    int-to-long v14, v14
    sub-long/2addr v14, v10
    cmp-long v10, v12, v14
    if-gez v10, :L11
  .line 25
    iget-object v10, v1, Lcn/manstep/phonemirrorBox/BoxInterface/b$b$c;->b:Lcn/manstep/phonemirrorBox/BoxInterface/b$b;
    invoke-static { v10 }, Lcn/manstep/phonemirrorBox/BoxInterface/b$b;->k(Lcn/manstep/phonemirrorBox/BoxInterface/b$b;)Landroid/media/MediaCodec;
    move-result-object v10
    invoke-virtual { v10, v0, v3 }, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V
    goto/16 :L0
  :L11
  .line 26
    iget-object v10, v1, Lcn/manstep/phonemirrorBox/BoxInterface/b$b$c;->b:Lcn/manstep/phonemirrorBox/BoxInterface/b$b;
    invoke-static { v10 }, Lcn/manstep/phonemirrorBox/BoxInterface/b$b;->k(Lcn/manstep/phonemirrorBox/BoxInterface/b$b;)Landroid/media/MediaCodec;
    move-result-object v10
    iget-object v11, v1, Lcn/manstep/phonemirrorBox/BoxInterface/b$b$c;->b:Lcn/manstep/phonemirrorBox/BoxInterface/b$b;
    invoke-static { v11 }, Lcn/manstep/phonemirrorBox/BoxInterface/b$b;->g(Lcn/manstep/phonemirrorBox/BoxInterface/b$b;)J
    move-result-wide v11
    const-wide/16 v13, 4
    cmp-long v15, v11, v13
    if-ltz v15, :L12
    const/4 v11, 1
    goto :L13
  :L12
    const/4 v11, 0
  :L13
    invoke-virtual { v10, v0, v11 }, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V
  :L14
    goto/16 :L0
  :L15
    move-exception v0
  :L16
  .line 27
    monitor-exit v14
  :L17
    throw v0
  :L18
    move-exception v0
    const/16 v10, 10
    if-lt v5, v10, :L19
    if-nez v4, :L20
  .line 28
    invoke-static { v9, v6 }, Lcn/manstep/phonemirrorBox/BoxInterface/d;->O(II)Z
    const/4 v4, 1
    goto :L20
  :L19
    add-int/lit8 v5, v5, 1
  :L20
  .line 29
    iget-object v10, v1, Lcn/manstep/phonemirrorBox/BoxInterface/b$b$c;->b:Lcn/manstep/phonemirrorBox/BoxInterface/b$b;
    invoke-static { v10 }, Lcn/manstep/phonemirrorBox/BoxInterface/b$b;->b(Lcn/manstep/phonemirrorBox/BoxInterface/b$b;)J
    move-result-wide v10
    iget-object v12, v1, Lcn/manstep/phonemirrorBox/BoxInterface/b$b$c;->b:Lcn/manstep/phonemirrorBox/BoxInterface/b$b;
    invoke-static { v12 }, Lcn/manstep/phonemirrorBox/BoxInterface/b$b;->g(Lcn/manstep/phonemirrorBox/BoxInterface/b$b;)J
    move-result-wide v12
    sub-long/2addr v10, v12
    cmp-long v12, v10, v7
    if-ltz v12, :L21
    iget-object v10, v1, Lcn/manstep/phonemirrorBox/BoxInterface/b$b$c;->b:Lcn/manstep/phonemirrorBox/BoxInterface/b$b;
    invoke-static { v10 }, Lcn/manstep/phonemirrorBox/BoxInterface/b$b;->g(Lcn/manstep/phonemirrorBox/BoxInterface/b$b;)J
    move-result-wide v10
    cmp-long v12, v10, v7
    if-gtz v12, :L21
    if-nez v4, :L21
  .line 30
    invoke-static { v9, v6 }, Lcn/manstep/phonemirrorBox/BoxInterface/d;->O(II)Z
    const/4 v4, 1
  :L21
    const-string v6, "AvcDecoder"
  .line 31
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/util/s;->g(Ljava/lang/Throwable;)Ljava/lang/String;
    move-result-object v0
    invoke-static { v6, v0 }, Lcn/manstep/phonemirrorBox/util/s;->f(Ljava/lang/String;Ljava/lang/String;)V
    goto/16 :L1
  :L22
    return-void
.end method
