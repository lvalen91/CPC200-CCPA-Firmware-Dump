.class Lcn/manstep/phonemirrorBox/BoxInterface/b$b$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/manstep/phonemirrorBox/BoxInterface/b$b;->B(Landroid/view/Surface;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcn/manstep/phonemirrorBox/BoxInterface/b$b;


# direct methods
.method constructor <init>(Lcn/manstep/phonemirrorBox/BoxInterface/b$b;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/b$b$c;->b:Lcn/manstep/phonemirrorBox/BoxInterface/b$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 18

    move-object/from16 v1, p0

    .line 1
    new-instance v2, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v2}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    const/16 v0, -0x13

    .line 2
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    :cond_e
    :goto_e
    const/4 v5, 0x0

    .line 3
    :goto_f
    iget-object v0, v1, Lcn/manstep/phonemirrorBox/BoxInterface/b$b$c;->b:Lcn/manstep/phonemirrorBox/BoxInterface/b$b;

    iget-boolean v6, v0, Lcn/manstep/phonemirrorBox/BoxInterface/b$b;->b:Z

    if-eqz v6, :cond_18e

    const/16 v6, 0x13

    const-wide/16 v7, 0x1e

    const/4 v9, 0x1

    .line 4
    :try_start_1a
    invoke-static {v0}, Lcn/manstep/phonemirrorBox/BoxInterface/b$b;->k(Lcn/manstep/phonemirrorBox/BoxInterface/b$b;)Landroid/media/MediaCodec;

    move-result-object v0

    const-wide/32 v10, 0x186a0

    invoke-virtual {v0, v2, v10, v11}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v0

    const/4 v10, -0x1

    const-wide/16 v11, 0x0

    if-ne v0, v10, :cond_56

    .line 5
    iget-object v0, v1, Lcn/manstep/phonemirrorBox/BoxInterface/b$b$c;->b:Lcn/manstep/phonemirrorBox/BoxInterface/b$b;

    invoke-static {v0}, Lcn/manstep/phonemirrorBox/BoxInterface/b$b;->b(Lcn/manstep/phonemirrorBox/BoxInterface/b$b;)J

    move-result-wide v13

    iget-object v0, v1, Lcn/manstep/phonemirrorBox/BoxInterface/b$b$c;->b:Lcn/manstep/phonemirrorBox/BoxInterface/b$b;

    invoke-static {v0}, Lcn/manstep/phonemirrorBox/BoxInterface/b$b;->g(Lcn/manstep/phonemirrorBox/BoxInterface/b$b;)J

    move-result-wide v15

    sub-long/2addr v13, v15

    cmp-long v0, v13, v7

    if-ltz v0, :cond_e

    iget-object v0, v1, Lcn/manstep/phonemirrorBox/BoxInterface/b$b$c;->b:Lcn/manstep/phonemirrorBox/BoxInterface/b$b;

    invoke-static {v0}, Lcn/manstep/phonemirrorBox/BoxInterface/b$b;->g(Lcn/manstep/phonemirrorBox/BoxInterface/b$b;)J

    move-result-wide v13

    cmp-long v0, v13, v11

    if-nez v0, :cond_e

    const-string v0, "(frame_cnt - render_frame_cnt >= 30) && (render_frame_cnt == 0)"

    .line 6
    invoke-static {v0}, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V

    if-nez v4, :cond_e

    const-string v0, "(frame_cnt - render_frame_cnt >= 30) && (render_frame_cnt == 0)"

    .line 7
    invoke-static {v0}, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V

    .line 8
    invoke-static {v9, v6}, Lcn/manstep/phonemirrorBox/BoxInterface/d;->O(II)Z

    const/4 v4, 0x1

    goto :goto_e

    :cond_56
    const/4 v10, -0x3

    if-ne v0, v10, :cond_5a

    goto :goto_e

    :cond_5a
    const/4 v10, -0x2

    if-ne v0, v10, :cond_a1

    .line 9
    iget-object v0, v1, Lcn/manstep/phonemirrorBox/BoxInterface/b$b$c;->b:Lcn/manstep/phonemirrorBox/BoxInterface/b$b;

    invoke-static {v0}, Lcn/manstep/phonemirrorBox/BoxInterface/b$b;->k(Lcn/manstep/phonemirrorBox/BoxInterface/b$b;)Landroid/media/MediaCodec;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v0

    const-string v10, "AvcDecoder"

    .line 10
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "onOutputFormatChanged: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "color-format"

    invoke-virtual {v0, v12}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, ",size: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "width"

    .line 11
    invoke-virtual {v0, v12}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, "x"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "height"

    invoke-virtual {v0, v12}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 12
    invoke-static {v10, v0}, Lcn/manstep/phonemirrorBox/util/s;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_e

    :cond_a1
    if-gez v0, :cond_a5

    goto/16 :goto_e

    .line 13
    :cond_a5
    iget-object v10, v1, Lcn/manstep/phonemirrorBox/BoxInterface/b$b$c;->b:Lcn/manstep/phonemirrorBox/BoxInterface/b$b;

    invoke-static {v10}, Lcn/manstep/phonemirrorBox/BoxInterface/b$b;->g(Lcn/manstep/phonemirrorBox/BoxInterface/b$b;)J

    move-result-wide v13

    cmp-long v10, v13, v11

    if-nez v10, :cond_db

    .line 14
    iget-object v10, v1, Lcn/manstep/phonemirrorBox/BoxInterface/b$b$c;->b:Lcn/manstep/phonemirrorBox/BoxInterface/b$b;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v11

    invoke-static {v10, v11, v12}, Lcn/manstep/phonemirrorBox/BoxInterface/b$b;->m(Lcn/manstep/phonemirrorBox/BoxInterface/b$b;J)J

    const-string v10, "AvcDecoder"

    .line 15
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "decode latency: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v1, Lcn/manstep/phonemirrorBox/BoxInterface/b$b$c;->b:Lcn/manstep/phonemirrorBox/BoxInterface/b$b;

    invoke-static {v12}, Lcn/manstep/phonemirrorBox/BoxInterface/b$b;->l(Lcn/manstep/phonemirrorBox/BoxInterface/b$b;)J

    move-result-wide v12

    iget-object v14, v1, Lcn/manstep/phonemirrorBox/BoxInterface/b$b$c;->b:Lcn/manstep/phonemirrorBox/BoxInterface/b$b;

    invoke-static {v14}, Lcn/manstep/phonemirrorBox/BoxInterface/b$b;->n(Lcn/manstep/phonemirrorBox/BoxInterface/b$b;)J

    move-result-wide v14

    sub-long/2addr v12, v14

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcn/manstep/phonemirrorBox/util/s;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    :cond_db
    iget-object v10, v1, Lcn/manstep/phonemirrorBox/BoxInterface/b$b$c;->b:Lcn/manstep/phonemirrorBox/BoxInterface/b$b;

    invoke-static {v10}, Lcn/manstep/phonemirrorBox/BoxInterface/b$b;->h(Lcn/manstep/phonemirrorBox/BoxInterface/b$b;)J

    .line 17
    iget-object v10, v1, Lcn/manstep/phonemirrorBox/BoxInterface/b$b$c;->b:Lcn/manstep/phonemirrorBox/BoxInterface/b$b;

    invoke-static {v10}, Lcn/manstep/phonemirrorBox/BoxInterface/b$b;->l(Lcn/manstep/phonemirrorBox/BoxInterface/b$b;)J

    move-result-wide v10

    iget-object v12, v1, Lcn/manstep/phonemirrorBox/BoxInterface/b$b$c;->b:Lcn/manstep/phonemirrorBox/BoxInterface/b$b;

    invoke-static {v12}, Lcn/manstep/phonemirrorBox/BoxInterface/b$b;->n(Lcn/manstep/phonemirrorBox/BoxInterface/b$b;)J

    move-result-wide v12

    sub-long/2addr v10, v12

    .line 18
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v12

    iget-object v14, v1, Lcn/manstep/phonemirrorBox/BoxInterface/b$b$c;->b:Lcn/manstep/phonemirrorBox/BoxInterface/b$b;

    invoke-static {v14}, Lcn/manstep/phonemirrorBox/BoxInterface/b$b;->l(Lcn/manstep/phonemirrorBox/BoxInterface/b$b;)J

    move-result-wide v14

    sub-long/2addr v12, v14

    .line 19
    iget-object v14, v1, Lcn/manstep/phonemirrorBox/BoxInterface/b$b$c;->b:Lcn/manstep/phonemirrorBox/BoxInterface/b$b;

    invoke-static {v14}, Lcn/manstep/phonemirrorBox/BoxInterface/b$b;->o(Lcn/manstep/phonemirrorBox/BoxInterface/b$b;)Ljava/util/List;

    move-result-object v14

    monitor-enter v14
    :try_end_ff
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_ff} :catch_154

    .line 20
    :try_start_ff
    iget-object v15, v1, Lcn/manstep/phonemirrorBox/BoxInterface/b$b$c;->b:Lcn/manstep/phonemirrorBox/BoxInterface/b$b;

    invoke-static {v15}, Lcn/manstep/phonemirrorBox/BoxInterface/b$b;->o(Lcn/manstep/phonemirrorBox/BoxInterface/b$b;)Ljava/util/List;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v15

    if-lez v15, :cond_123

    .line 21
    iget-object v15, v1, Lcn/manstep/phonemirrorBox/BoxInterface/b$b$c;->b:Lcn/manstep/phonemirrorBox/BoxInterface/b$b;

    invoke-static {v15}, Lcn/manstep/phonemirrorBox/BoxInterface/b$b;->o(Lcn/manstep/phonemirrorBox/BoxInterface/b$b;)Ljava/util/List;

    move-result-object v15

    invoke-interface {v15, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Long;

    invoke-virtual {v15}, Ljava/lang/Long;->longValue()J

    .line 22
    iget-object v15, v1, Lcn/manstep/phonemirrorBox/BoxInterface/b$b$c;->b:Lcn/manstep/phonemirrorBox/BoxInterface/b$b;

    invoke-static {v15}, Lcn/manstep/phonemirrorBox/BoxInterface/b$b;->o(Lcn/manstep/phonemirrorBox/BoxInterface/b$b;)Ljava/util/List;

    move-result-object v15

    invoke-interface {v15, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 23
    :cond_123
    monitor-exit v14
    :try_end_124
    .catchall {:try_start_ff .. :try_end_124} :catchall_151

    .line 24
    :try_start_124
    sget v14, Lcn/manstep/phonemirrorBox/p;->D:I

    int-to-long v14, v14

    sub-long/2addr v14, v10

    cmp-long v10, v12, v14

    if-gez v10, :cond_137

    .line 25
    iget-object v10, v1, Lcn/manstep/phonemirrorBox/BoxInterface/b$b$c;->b:Lcn/manstep/phonemirrorBox/BoxInterface/b$b;

    invoke-static {v10}, Lcn/manstep/phonemirrorBox/BoxInterface/b$b;->k(Lcn/manstep/phonemirrorBox/BoxInterface/b$b;)Landroid/media/MediaCodec;

    move-result-object v10

    invoke-virtual {v10, v0, v3}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    goto/16 :goto_e

    .line 26
    :cond_137
    iget-object v10, v1, Lcn/manstep/phonemirrorBox/BoxInterface/b$b$c;->b:Lcn/manstep/phonemirrorBox/BoxInterface/b$b;

    invoke-static {v10}, Lcn/manstep/phonemirrorBox/BoxInterface/b$b;->k(Lcn/manstep/phonemirrorBox/BoxInterface/b$b;)Landroid/media/MediaCodec;

    move-result-object v10

    iget-object v11, v1, Lcn/manstep/phonemirrorBox/BoxInterface/b$b$c;->b:Lcn/manstep/phonemirrorBox/BoxInterface/b$b;

    invoke-static {v11}, Lcn/manstep/phonemirrorBox/BoxInterface/b$b;->g(Lcn/manstep/phonemirrorBox/BoxInterface/b$b;)J

    move-result-wide v11

    const-wide/16 v13, 0x4

    cmp-long v15, v11, v13

    if-ltz v15, :cond_14b

    const/4 v11, 0x1

    goto :goto_14c

    :cond_14b
    const/4 v11, 0x0

    :goto_14c
    invoke-virtual {v10, v0, v11}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V
    :try_end_14f
    .catch Ljava/lang/Exception; {:try_start_124 .. :try_end_14f} :catch_154

    goto/16 :goto_e

    :catchall_151
    move-exception v0

    .line 27
    :try_start_152
    monitor-exit v14
    :try_end_153
    .catchall {:try_start_152 .. :try_end_153} :catchall_151

    :try_start_153
    throw v0
    :try_end_154
    .catch Ljava/lang/Exception; {:try_start_153 .. :try_end_154} :catch_154

    :catch_154
    move-exception v0

    const/16 v10, 0xa

    if-lt v5, v10, :cond_160

    if-nez v4, :cond_162

    .line 28
    invoke-static {v9, v6}, Lcn/manstep/phonemirrorBox/BoxInterface/d;->O(II)Z

    const/4 v4, 0x1

    goto :goto_162

    :cond_160
    add-int/lit8 v5, v5, 0x1

    .line 29
    :cond_162
    :goto_162
    iget-object v10, v1, Lcn/manstep/phonemirrorBox/BoxInterface/b$b$c;->b:Lcn/manstep/phonemirrorBox/BoxInterface/b$b;

    invoke-static {v10}, Lcn/manstep/phonemirrorBox/BoxInterface/b$b;->b(Lcn/manstep/phonemirrorBox/BoxInterface/b$b;)J

    move-result-wide v10

    iget-object v12, v1, Lcn/manstep/phonemirrorBox/BoxInterface/b$b$c;->b:Lcn/manstep/phonemirrorBox/BoxInterface/b$b;

    invoke-static {v12}, Lcn/manstep/phonemirrorBox/BoxInterface/b$b;->g(Lcn/manstep/phonemirrorBox/BoxInterface/b$b;)J

    move-result-wide v12

    sub-long/2addr v10, v12

    cmp-long v12, v10, v7

    if-ltz v12, :cond_183

    iget-object v10, v1, Lcn/manstep/phonemirrorBox/BoxInterface/b$b$c;->b:Lcn/manstep/phonemirrorBox/BoxInterface/b$b;

    invoke-static {v10}, Lcn/manstep/phonemirrorBox/BoxInterface/b$b;->g(Lcn/manstep/phonemirrorBox/BoxInterface/b$b;)J

    move-result-wide v10

    cmp-long v12, v10, v7

    if-gtz v12, :cond_183

    if-nez v4, :cond_183

    .line 30
    invoke-static {v9, v6}, Lcn/manstep/phonemirrorBox/BoxInterface/d;->O(II)Z

    const/4 v4, 0x1

    :cond_183
    const-string v6, "AvcDecoder"

    .line 31
    invoke-static {v0}, Lcn/manstep/phonemirrorBox/util/s;->g(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcn/manstep/phonemirrorBox/util/s;->f(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_f

    :cond_18e
    return-void
.end method
