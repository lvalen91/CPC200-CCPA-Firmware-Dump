.class Ld/b/a/b$a;
.super Ljava/lang/Object;
.implements Ljava/lang/Runnable;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Ld/b/a/b;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = null
.end annotation

.field final synthetic b:Ld/b/a/b;

.method constructor <init>(Ld/b/a/b;)V
  .registers 2
  .line 1
    iput-object p1, p0, Ld/b/a/b$a;->b:Ld/b/a/b;
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public run()V
  .catchall { :L0 .. :L4 } :L28
  .catchall { :L5 .. :L6 } :L21
  .catch Ljava/lang/Exception; { :L8 .. :L9 } :L11
  .catch Ljava/lang/Error; { :L8 .. :L9 } :L10
  .catchall { :L8 .. :L9 } :L21
  .catchall { :L12 .. :L14 } :L21
  .catch Ljava/lang/Exception; { :L14 .. :L17 } :L18
  .catchall { :L14 .. :L17 } :L21
  .catchall { :L19 .. :L22 } :L21
  .catchall { :L24 .. :L27 } :L26
  .catchall { :L29 .. :L30 } :L28
  .registers 9
  .line 1
    iget-object v0, p0, Ld/b/a/b$a;->b:Ld/b/a/b;
    invoke-static { v0 }, Ld/b/a/b;->o(Ld/b/a/b;)Ljava/lang/Object;
    move-result-object v0
    monitor-enter v0
  :L0
  .line 2
    iget-object v1, p0, Ld/b/a/b$a;->b:Ld/b/a/b;
    invoke-static { v1 }, Ld/b/a/b;->p(Ld/b/a/b;)Lcn/manstep/phonemirrorBox/util/i;
    move-result-object v1
    invoke-virtual { v1 }, Lcn/manstep/phonemirrorBox/util/i;->g()I
    move-result v1
    const/16 v2, 50
    const/4 v3, 0
    if-le v1, v2, :L1
  .line 3
    iget-object v1, p0, Ld/b/a/b$a;->b:Ld/b/a/b;
    invoke-static { v1 }, Ld/b/a/b;->p(Ld/b/a/b;)Lcn/manstep/phonemirrorBox/util/i;
    move-result-object v1
    invoke-virtual { v1, v3 }, Lcn/manstep/phonemirrorBox/util/i;->f(I)V
  .line 4
    new-instance v1, Ljava/lang/StringBuilder;
    invoke-direct { v1 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v2, "AudioPlayer,delayPlayRunnable: AudioTrack get data vector size:"
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget-object v2, p0, Ld/b/a/b$a;->b:Ld/b/a/b;
    invoke-static { v2 }, Ld/b/a/b;->p(Ld/b/a/b;)Lcn/manstep/phonemirrorBox/util/i;
    move-result-object v2
    invoke-virtual { v2 }, Lcn/manstep/phonemirrorBox/util/i;->g()I
    move-result v2
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { v1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v1
    invoke-static { v1 }, Lcn/manstep/phonemirrorBox/util/s;->e(Ljava/lang/String;)V
    goto :L0
  :L1
  .line 5
    iget-object v1, p0, Ld/b/a/b$a;->b:Ld/b/a/b;
    invoke-static { v1 }, Ld/b/a/b;->p(Ld/b/a/b;)Lcn/manstep/phonemirrorBox/util/i;
    move-result-object v1
    invoke-virtual { v1 }, Lcn/manstep/phonemirrorBox/util/i;->e()Z
    move-result v1
    if-nez v1, :L2
  .line 6
    iget-object v1, p0, Ld/b/a/b$a;->b:Ld/b/a/b;
    invoke-static { v1 }, Ld/b/a/b;->p(Ld/b/a/b;)Lcn/manstep/phonemirrorBox/util/i;
    move-result-object v1
    invoke-virtual { v1 }, Lcn/manstep/phonemirrorBox/util/i;->c()[B
    move-result-object v1
    goto :L3
  :L2
    const/4 v1, 0
  :L3
  .line 7
    monitor-exit v0
  :L4
    if-eqz v1, :L23
  .line 8
    iget-object v0, p0, Ld/b/a/b$a;->b:Ld/b/a/b;
    invoke-static { v0 }, Ld/b/a/b;->q(Ld/b/a/b;)Landroid/media/AudioTrack;
    move-result-object v0
    if-eqz v0, :L23
  .line 9
    iget-object v0, p0, Ld/b/a/b$a;->b:Ld/b/a/b;
    monitor-enter v0
  :L5
  .line 10
    iget-object v2, p0, Ld/b/a/b$a;->b:Ld/b/a/b;
    invoke-static { v2 }, Ld/b/a/b;->r(Ld/b/a/b;)Z
    move-result v2
    if-eqz v2, :L20
  .line 11
    iget-object v2, p0, Ld/b/a/b$a;->b:Ld/b/a/b;
    invoke-static { v2 }, Ld/b/a/b;->q(Ld/b/a/b;)Landroid/media/AudioTrack;
    move-result-object v2
    invoke-virtual { v2 }, Landroid/media/AudioTrack;->getState()I
    move-result v2
    if-nez v2, :L7
    const-string v1, "AudioPlayer"
    const-string v2, "delayPlayRunnable->run: AudioTrack STATE_UNINITIALIZED"
  .line 12
    invoke-static { v1, v2 }, Lcn/manstep/phonemirrorBox/util/s;->d(Ljava/lang/String;Ljava/lang/String;)V
  .line 13
    monitor-exit v0
  :L6
    return-void
  :L7
    const/4 v2, -1
  :L8
  .line 14
    iget-object v4, p0, Ld/b/a/b$a;->b:Ld/b/a/b;
    invoke-static { v4 }, Ld/b/a/b;->q(Ld/b/a/b;)Landroid/media/AudioTrack;
    move-result-object v4
    array-length v5, v1
    invoke-virtual { v4, v1, v3, v5 }, Landroid/media/AudioTrack;->write([BII)I
    move-result v2
  :L9
    goto :L13
  :L10
    move-exception v4
    goto :L12
  :L11
    move-exception v4
  :L12
    const-string v5, "AudioPlayer"
  .line 15
    new-instance v6, Ljava/lang/StringBuilder;
    invoke-direct { v6 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v7, "delayPlayRunnable->run: "
    invoke-virtual { v6, v7 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-static { v4 }, Lcn/manstep/phonemirrorBox/util/s;->g(Ljava/lang/Throwable;)Ljava/lang/String;
    move-result-object v4
    invoke-virtual { v6, v4 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v6 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v4
    invoke-static { v5, v4 }, Lcn/manstep/phonemirrorBox/util/s;->f(Ljava/lang/String;Ljava/lang/String;)V
  :L13
  .line 16
    array-length v4, v1
    if-eq v2, v4, :L20
  .line 17
    new-instance v4, Ljava/lang/StringBuilder;
    invoke-direct { v4 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v5, "AudioPlayer,delayPlayRunnable: mAudioTrack Write data failed: ret = "
    invoke-virtual { v4, v5 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v4, v2 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    const-string v2, ", data.length = "
    invoke-virtual { v4, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    array-length v2, v1
    invoke-virtual { v4, v2 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { v4 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v2
    invoke-static { v2 }, Lcn/manstep/phonemirrorBox/util/s;->e(Ljava/lang/String;)V
  .line 18
    iget-object v2, p0, Ld/b/a/b$a;->b:Ld/b/a/b;
    invoke-static { v2 }, Ld/b/a/b;->s(Ld/b/a/b;)V
  :L14
  .line 19
    iget-object v2, p0, Ld/b/a/b$a;->b:Ld/b/a/b;
    invoke-static { v2 }, Ld/b/a/b;->t(Ld/b/a/b;)Z
    move-result v2
    if-eqz v2, :L15
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v4, 21
    if-lt v2, v4, :L15
  .line 20
    iget-object v2, p0, Ld/b/a/b$a;->b:Ld/b/a/b;
    invoke-virtual { v2 }, Ld/b/a/b;->g()V
    goto :L16
  :L15
  .line 21
    iget-object v2, p0, Ld/b/a/b$a;->b:Ld/b/a/b;
    invoke-virtual { v2 }, Ld/b/a/b;->h()V
  :L16
  .line 22
    iget-object v2, p0, Ld/b/a/b$a;->b:Ld/b/a/b;
    invoke-static { v2 }, Ld/b/a/b;->q(Ld/b/a/b;)Landroid/media/AudioTrack;
    move-result-object v2
    array-length v4, v1
    invoke-virtual { v2, v1, v3, v4 }, Landroid/media/AudioTrack;->write([BII)I
  :L17
    goto :L20
  :L18
    move-exception v1
  :L19
  .line 23
    new-instance v2, Ljava/lang/StringBuilder;
    invoke-direct { v2 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v4, "AudioPlayer,delayPlayRunnable: \n"
    invoke-virtual { v2, v4 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-static { v1 }, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;
    move-result-object v1
    invoke-virtual { v2, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v2 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v1
    invoke-static { v1 }, Lcn/manstep/phonemirrorBox/util/s;->e(Ljava/lang/String;)V
  :L20
  .line 24
    monitor-exit v0
    goto :L23
  :L21
    move-exception v1
    monitor-exit v0
  :L22
    throw v1
  :L23
  .line 25
    iget-object v0, p0, Ld/b/a/b$a;->b:Ld/b/a/b;
    invoke-static { v0 }, Ld/b/a/b;->o(Ld/b/a/b;)Ljava/lang/Object;
    move-result-object v1
    monitor-enter v1
  :L24
  .line 26
    iget-object v0, p0, Ld/b/a/b$a;->b:Ld/b/a/b;
    invoke-static { v0 }, Ld/b/a/b;->p(Ld/b/a/b;)Lcn/manstep/phonemirrorBox/util/i;
    move-result-object v0
    invoke-virtual { v0 }, Lcn/manstep/phonemirrorBox/util/i;->e()Z
    move-result v0
    if-nez v0, :L25
  .line 27
    iget-object v0, p0, Ld/b/a/b$a;->b:Ld/b/a/b;
    invoke-static { v0 }, Ld/b/a/b;->p(Ld/b/a/b;)Lcn/manstep/phonemirrorBox/util/i;
    move-result-object v0
    invoke-virtual { v0, v3 }, Lcn/manstep/phonemirrorBox/util/i;->f(I)V
  :L25
  .line 28
    monitor-exit v1
    return-void
  :L26
    move-exception v0
    monitor-exit v1
  :L27
    throw v0
  :L28
    move-exception v1
  :L29
  .line 29
    monitor-exit v0
  :L30
    goto :L32
  :L31
    throw v1
  :L32
    goto :L31
.end method
