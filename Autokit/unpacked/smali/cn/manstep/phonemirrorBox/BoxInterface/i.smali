.class public Lcn/manstep/phonemirrorBox/BoxInterface/i;
.super Ljava/lang/Object;
.source "SourceFile"

.field private a:Landroid/media/MediaMuxer;

.field private b:Ljava/lang/String;

.field private c:J

.field private d:J

.field private e:Ljava/lang/String;

.method public constructor <init>()V
  .registers 4
  .line 1
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    const-string v0, ""
  .line 2
    iput-object v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/i;->b:Ljava/lang/String;
    const-wide/16 v1, 0
  .line 3
    iput-wide v1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/i;->c:J
  .line 4
    iput-wide v1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/i;->d:J
  .line 5
    iput-object v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/i;->e:Ljava/lang/String;
    return-void
.end method

.method public a([BII)V
  .registers 9
  .line 1
    iget-wide v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/i;->c:J
    add-int/lit8 v2, p3, 4
    int-to-long v2, v2
    add-long/2addr v0, v2
    iput-wide v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/i;->c:J
    const-wide/32 v2, 524288000
    cmp-long v4, v0, v2
    if-gez v4, :L0
    const/4 v0, 4
  .line 2
    invoke-static { v0 }, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;
    move-result-object v1
  .line 3
    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;
    invoke-virtual { v1, v2 }, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;
  .line 4
    invoke-virtual { v1, p3 }, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;
  .line 5
    invoke-virtual { v1 }, Ljava/nio/ByteBuffer;->array()[B
    move-result-object v1
    iget-object v2, p0, Lcn/manstep/phonemirrorBox/BoxInterface/i;->b:Ljava/lang/String;
    const/4 v3, 0
    invoke-static { v1, v3, v0, v2 }, Lcn/manstep/phonemirrorBox/util/n;->x([BIILjava/lang/String;)Z
  .line 6
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/i;->b:Ljava/lang/String;
    invoke-static { p1, p2, p3, v0 }, Lcn/manstep/phonemirrorBox/util/n;->x([BIILjava/lang/String;)Z
  .line 7
    invoke-static { }, Landroid/os/SystemClock;->elapsedRealtime()J
    move-result-wide p1
  .line 8
    invoke-static { }, Ljava/util/Locale;->getDefault()Ljava/util/Locale;
    move-result-object p3
    const/4 v0, 2
    new-array v0, v0, [Ljava/lang/Object;
    invoke-static { p1, p2 }, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    move-result-object v1
    aput-object v1, v0, v3
    const/4 v1, 1
    iget-wide v2, p0, Lcn/manstep/phonemirrorBox/BoxInterface/i;->d:J
    sub-long v2, p1, v2
    invoke-static { v2, v3 }, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    move-result-object v2
    aput-object v2, v0, v1
    const-string v1, "%d, %d\n"
    invoke-static { p3, v1, v0 }, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    move-result-object p3
  .line 9
    invoke-virtual { p3 }, Ljava/lang/String;->getBytes()[B
    move-result-object p3
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/i;->e:Ljava/lang/String;
    invoke-static { p3, v0 }, Lcn/manstep/phonemirrorBox/util/n;->y([BLjava/lang/String;)Z
  .line 10
    iput-wide p1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/i;->d:J
  :L0
    return-void
.end method

.method public b(II)V
  .registers 5
    const-wide/16 v0, 0
  .line 1
    iput-wide v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/i;->c:J
  .line 2
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    invoke-static { }, Lcn/manstep/phonemirrorBox/MyApplication;->b()Lcn/manstep/phonemirrorBox/MyApplication;
    move-result-object v1
    invoke-static { v1 }, Lcn/manstep/phonemirrorBox/util/n;->s(Landroid/content/Context;)Ljava/io/File;
    move-result-object v1
    invoke-virtual { v1 }, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
    move-result-object v1
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string v1, "/box_"
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0, p1 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    const-string p1, "x"
    invoke-virtual { v0, p1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0, p2 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    const-string p1, "_"
    invoke-virtual { v0, p1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-static { }, Landroid/os/SystemClock;->elapsedRealtime()J
    move-result-wide p1
    invoke-virtual { v0, p1, p2 }, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
    const-string p1, ".mp4"
    invoke-virtual { v0, p1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p2
    const-string v0, ".h264"
  .line 3
    invoke-virtual { p2, p1, v0 }, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    move-result-object v0
    iput-object v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/i;->b:Ljava/lang/String;
    const-string v0, ".ts"
  .line 4
    invoke-virtual { p2, p1, v0 }, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    move-result-object p1
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/i;->e:Ljava/lang/String;
    return-void
.end method

.method public c()V
  .registers 3
  .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v1, 18
    if-lt v0, v1, :L0
  .line 2
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/i;->a:Landroid/media/MediaMuxer;
    if-eqz v0, :L0
  .line 3
    invoke-virtual { v0 }, Landroid/media/MediaMuxer;->stop()V
  .line 4
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/i;->a:Landroid/media/MediaMuxer;
    invoke-virtual { v0 }, Landroid/media/MediaMuxer;->release()V
    const/4 v0, 0
  .line 5
    iput-object v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/i;->a:Landroid/media/MediaMuxer;
  :L0
    return-void
.end method
