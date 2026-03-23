.class public Ld/b/a/b;
.super Ljava/lang/Object;
.source "SourceFile"

.field private final a:Ljava/lang/Object;

.field private b:Landroid/os/Handler;

.field private c:Ld/b/a/a;

.field private d:Landroid/media/AudioAttributes;

.field private e:Z

.field private f:I

.field private g:Landroid/media/AudioTrack;

.field private h:Z

.field private i:Lnet/iwebrtc/audioprocess/sdk/AudioProcess;

.field private j:Lcn/manstep/phonemirrorBox/util/i;

.field private k:Ljava/lang/Runnable;

.field private l:Z

.method public constructor <init>(Landroid/os/Handler;)V
  .registers 4
  .line 1
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
  .line 2
    new-instance v0, Ljava/lang/Object;
    invoke-direct { v0 }, Ljava/lang/Object;-><init>()V
    iput-object v0, p0, Ld/b/a/b;->a:Ljava/lang/Object;
    const/4 v0, 0
  .line 3
    iput-boolean v0, p0, Ld/b/a/b;->e:Z
  .line 4
    iput-boolean v0, p0, Ld/b/a/b;->h:Z
  .line 5
    invoke-static { }, Landroid/media/AudioTrack;->getMaxVolume()F
  .line 6
    new-instance v1, Lcn/manstep/phonemirrorBox/util/i;
    invoke-direct { v1 }, Lcn/manstep/phonemirrorBox/util/i;-><init>()V
    iput-object v1, p0, Ld/b/a/b;->j:Lcn/manstep/phonemirrorBox/util/i;
  .line 7
    new-instance v1, Ld/b/a/b$a;
    invoke-direct { v1, p0 }, Ld/b/a/b$a;-><init>(Ld/b/a/b;)V
    iput-object v1, p0, Ld/b/a/b;->k:Ljava/lang/Runnable;
  .line 8
    iput-boolean v0, p0, Ld/b/a/b;->l:Z
  .line 9
    iput-object p1, p0, Ld/b/a/b;->b:Landroid/os/Handler;
    return-void
.end method

.method private E()V
  .catch Ljava/lang/Exception; { :L0 .. :L1 } :L2
  .catchall { :L4 .. :L6 } :L5
  .registers 4
  :L0
  .line 1
    iget-object v0, p0, Ld/b/a/b;->g:Landroid/media/AudioTrack;
    if-eqz v0, :L3
  .line 2
    iget-object v0, p0, Ld/b/a/b;->g:Landroid/media/AudioTrack;
    invoke-virtual { v0 }, Landroid/media/AudioTrack;->stop()V
  .line 3
    iget-object v0, p0, Ld/b/a/b;->g:Landroid/media/AudioTrack;
    invoke-virtual { v0 }, Landroid/media/AudioTrack;->release()V
    const/4 v0, 0
  .line 4
    iput-object v0, p0, Ld/b/a/b;->g:Landroid/media/AudioTrack;
  :L1
    goto :L3
  :L2
    move-exception v0
  .line 5
    new-instance v1, Ljava/lang/StringBuilder;
    invoke-direct { v1 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v2, "AudioPlayer,releaseAudioTrack: \n"
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-static { v0 }, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;
    move-result-object v0
    invoke-virtual { v1, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/util/s;->e(Ljava/lang/String;)V
  :L3
  .line 6
    iget-object v0, p0, Ld/b/a/b;->a:Ljava/lang/Object;
    monitor-enter v0
  :L4
  .line 7
    iget-object v1, p0, Ld/b/a/b;->j:Lcn/manstep/phonemirrorBox/util/i;
    invoke-virtual { v1 }, Lcn/manstep/phonemirrorBox/util/i;->b()V
  .line 8
    monitor-exit v0
    return-void
  :L5
    move-exception v1
    monitor-exit v0
  :L6
    throw v1
.end method

.method private j()V
  .registers 2
  .line 1
    iget-object v0, p0, Ld/b/a/b;->i:Lnet/iwebrtc/audioprocess/sdk/AudioProcess;
    if-eqz v0, :L0
  .line 2
    invoke-virtual { v0 }, Lnet/iwebrtc/audioprocess/sdk/AudioProcess;->DestroyAgc()V
    const/4 v0, 0
  .line 3
    iput-object v0, p0, Ld/b/a/b;->i:Lnet/iwebrtc/audioprocess/sdk/AudioProcess;
  :L0
    return-void
.end method

.method private k([BII)V
  .registers 10
  .line 1
    iget-object v0, p0, Ld/b/a/b;->i:Lnet/iwebrtc/audioprocess/sdk/AudioProcess;
    if-eqz v0, :L1
  .line 2
    iget-object v0, p0, Ld/b/a/b;->c:Ld/b/a/a;
    iget v0, v0, Ld/b/a/a;->a:I
    const/4 v1, 2
    const/4 v2, 1
    invoke-static { v0, v1, v2 }, Lnet/iwebrtc/audioprocess/sdk/AudioProcess;->calculateBufferSize(III)I
    move-result v0
  .line 3
    new-array v1, v0, [B
    const/4 v2, 0
    const/4 v3, 0
  :L0
    add-int v4, v3, v0
    if-gt v4, p3, :L2
    add-int/2addr v3, p2
  .line 4
    invoke-static { p1, v3, v1, v2, v0 }, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
  .line 5
    iget-object v5, p0, Ld/b/a/b;->i:Lnet/iwebrtc/audioprocess/sdk/AudioProcess;
    invoke-virtual { v5, v1 }, Lnet/iwebrtc/audioprocess/sdk/AudioProcess;->ProcessDataAgc([B)V
  .line 6
    invoke-static { v1, v2, p1, v3, v0 }, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    move v3, v4
    goto :L0
  :L1
  .line 7
    invoke-direct { p0 }, Ld/b/a/b;->m()V
  :L2
    return-void
.end method

.method private m()V
  .registers 4
  .line 1
    iget-object v0, p0, Ld/b/a/b;->i:Lnet/iwebrtc/audioprocess/sdk/AudioProcess;
    if-nez v0, :L0
  .line 2
    new-instance v0, Lnet/iwebrtc/audioprocess/sdk/AudioProcess;
    invoke-direct { v0 }, Lnet/iwebrtc/audioprocess/sdk/AudioProcess;-><init>()V
    iput-object v0, p0, Ld/b/a/b;->i:Lnet/iwebrtc/audioprocess/sdk/AudioProcess;
  .line 3
    iget-object v1, p0, Ld/b/a/b;->c:Ld/b/a/a;
    iget v1, v1, Ld/b/a/a;->a:I
    const/16 v2, 12
    invoke-virtual { v0, v1, v2 }, Lnet/iwebrtc/audioprocess/sdk/AudioProcess;->InitAgc(II)V
  :L0
    return-void
.end method

.method static synthetic o(Ld/b/a/b;)Ljava/lang/Object;
  .registers 1
  .line 1
    iget-object p0, p0, Ld/b/a/b;->a:Ljava/lang/Object;
    return-object p0
.end method

.method static synthetic p(Ld/b/a/b;)Lcn/manstep/phonemirrorBox/util/i;
  .registers 1
  .line 1
    iget-object p0, p0, Ld/b/a/b;->j:Lcn/manstep/phonemirrorBox/util/i;
    return-object p0
.end method

.method static synthetic q(Ld/b/a/b;)Landroid/media/AudioTrack;
  .registers 1
  .line 1
    iget-object p0, p0, Ld/b/a/b;->g:Landroid/media/AudioTrack;
    return-object p0
.end method

.method static synthetic r(Ld/b/a/b;)Z
  .registers 1
  .line 1
    iget-boolean p0, p0, Ld/b/a/b;->h:Z
    return p0
.end method

.method static synthetic s(Ld/b/a/b;)V
  .registers 1
  .line 1
    invoke-direct { p0 }, Ld/b/a/b;->E()V
    return-void
.end method

.method static synthetic t(Ld/b/a/b;)Z
  .registers 1
  .line 1
    iget-boolean p0, p0, Ld/b/a/b;->e:Z
    return p0
.end method

.method private u(I)Ljava/lang/String;
  .registers 4
    const/4 v0, 4
    if-eq p1, v0, :L1
    const/16 v0, 12
    if-eq p1, v0, :L0
  .line 1
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "channel="
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0, p1 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p1
    return-object p1
  :L0
    const-string p1, "AudioFormat.CHANNEL_OUT_STEREO"
    return-object p1
  :L1
    const-string p1, "AudioFormat.CHANNEL_OUT_MONO"
    return-object p1
.end method

.method private v(I)V
  .registers 14
  .line 1
    invoke-static { }, Landroid/os/SystemClock;->elapsedRealtime()J
    move-result-wide v0
    const-wide/32 v2, 120000
    cmp-long v4, v0, v2
  .line 2
    invoke-virtual { p0 }, Ld/b/a/b;->A()I
    move-result v10
  .line 3
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "AudioPlayer, createAudioTrack: AudioTrack getMinBufferSize:"
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget-object v1, p0, Ld/b/a/b;->c:Ld/b/a/a;
    iget v2, v1, Ld/b/a/a;->a:I
    iget v3, v1, Ld/b/a/a;->b:I
    iget v1, v1, Ld/b/a/a;->c:I
    invoke-static { v2, v3, v1 }, Landroid/media/AudioTrack;->getMinBufferSize(III)I
    move-result v1
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/util/s;->e(Ljava/lang/String;)V
  .line 4
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "AudioPlayer, createAudioTrack: AudioTrack mFrequency:"
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget-object v1, p0, Ld/b/a/b;->c:Ld/b/a/a;
    iget v1, v1, Ld/b/a/a;->a:I
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    const-string v1, ", minBufSize:"
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0, v10 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    const-string v1, ",mChannel:"
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget-object v1, p0, Ld/b/a/b;->c:Ld/b/a/a;
    iget v1, v1, Ld/b/a/a;->b:I
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    const-string v1, ",mSampBit:"
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget-object v1, p0, Ld/b/a/b;->c:Ld/b/a/a;
    iget v1, v1, Ld/b/a/a;->c:I
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/util/s;->e(Ljava/lang/String;)V
  .line 5
    new-instance v0, Landroid/media/AudioTrack;
    iget-object v1, p0, Ld/b/a/b;->c:Ld/b/a/a;
    iget v7, v1, Ld/b/a/a;->a:I
    iget v8, v1, Ld/b/a/a;->b:I
    iget v9, v1, Ld/b/a/a;->c:I
    const/4 v11, 1
    move-object v5, v0
    move v6, p1
    invoke-direct/range { v5 .. v11 }, Landroid/media/AudioTrack;-><init>(IIIIII)V
    iput-object v0, p0, Ld/b/a/b;->g:Landroid/media/AudioTrack;
  .line 6
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "createAudioTrack: streamType="
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0, p1 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    const-string v1, ",streamType="
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget-object v1, p0, Ld/b/a/b;->g:Landroid/media/AudioTrack;
    invoke-virtual { v1 }, Landroid/media/AudioTrack;->getStreamType()I
    move-result v1
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    const-string v1, "AudioPlayer"
    invoke-static { v1, v0 }, Lcn/manstep/phonemirrorBox/util/s;->d(Ljava/lang/String;Ljava/lang/String;)V
  .line 7
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v2, "createAudioTrack: NativeOutputSampleRate="
    invoke-virtual { v0, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-static { p1 }, Landroid/media/AudioTrack;->getNativeOutputSampleRate(I)I
    move-result p1
    invoke-virtual { v0, p1 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    const-string p1, ",NativeOutputSampleRate="
    invoke-virtual { v0, p1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget-object p1, p0, Ld/b/a/b;->g:Landroid/media/AudioTrack;
    invoke-virtual { p1 }, Landroid/media/AudioTrack;->getStreamType()I
    move-result p1
    invoke-static { p1 }, Landroid/media/AudioTrack;->getNativeOutputSampleRate(I)I
    move-result p1
    invoke-virtual { v0, p1 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p1
    invoke-static { v1, p1 }, Lcn/manstep/phonemirrorBox/util/s;->d(Ljava/lang/String;Ljava/lang/String;)V
  .line 8
    iget-object p1, p0, Ld/b/a/b;->g:Landroid/media/AudioTrack;
    invoke-virtual { p1 }, Landroid/media/AudioTrack;->play()V
    return-void
.end method

.method private w(Landroid/media/AudioAttributes;)V
  .registers 4
  .line 1
    new-instance v0, Landroid/media/AudioFormat$Builder;
    invoke-direct { v0 }, Landroid/media/AudioFormat$Builder;-><init>()V
    iget-object v1, p0, Ld/b/a/b;->c:Ld/b/a/a;
    iget v1, v1, Ld/b/a/a;->a:I
  .line 2
    invoke-virtual { v0, v1 }, Landroid/media/AudioFormat$Builder;->setSampleRate(I)Landroid/media/AudioFormat$Builder;
    move-result-object v0
    iget-object v1, p0, Ld/b/a/b;->c:Ld/b/a/a;
    iget v1, v1, Ld/b/a/a;->b:I
  .line 3
    invoke-virtual { v0, v1 }, Landroid/media/AudioFormat$Builder;->setChannelMask(I)Landroid/media/AudioFormat$Builder;
    move-result-object v0
    iget-object v1, p0, Ld/b/a/b;->c:Ld/b/a/a;
    iget v1, v1, Ld/b/a/a;->c:I
  .line 4
    invoke-virtual { v0, v1 }, Landroid/media/AudioFormat$Builder;->setEncoding(I)Landroid/media/AudioFormat$Builder;
    move-result-object v0
  .line 5
    invoke-virtual { v0 }, Landroid/media/AudioFormat$Builder;->build()Landroid/media/AudioFormat;
    move-result-object v0
  .line 6
    invoke-direct { p0, p1, v0 }, Ld/b/a/b;->x(Landroid/media/AudioAttributes;Landroid/media/AudioFormat;)V
    return-void
.end method

.method private x(Landroid/media/AudioAttributes;Landroid/media/AudioFormat;)V
  .registers 12
  .line 1
    invoke-static { }, Landroid/os/SystemClock;->elapsedRealtime()J
    move-result-wide v0
    const-wide/32 v2, 120000
    cmp-long v4, v0, v2
  .line 2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v1, 23
    if-lt v0, v1, :L0
  .line 3
    invoke-virtual { p2 }, Landroid/media/AudioFormat;->getChannelCount()I
    move-result v0
    invoke-virtual { p0, v0 }, Ld/b/a/b;->B(I)I
    move-result v0
    goto :L1
  :L0
  .line 4
    invoke-virtual { p0 }, Ld/b/a/b;->A()I
    move-result v0
  :L1
    move v5, v0
  .line 5
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v2, "AudioPlayer, createAudioTrack: AudioTrack mFrequency:"
    invoke-virtual { v0, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget-object v2, p0, Ld/b/a/b;->c:Ld/b/a/a;
    iget v2, v2, Ld/b/a/a;->a:I
    invoke-virtual { v0, v2 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    const-string v2, ", minBufSize:"
    invoke-virtual { v0, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0, v5 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/util/s;->h(Ljava/lang/String;)V
  .line 6
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    const-string v8, "AudioPlayer"
    if-lt v0, v1, :L2
  .line 7
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "createAudioTrack: ChannelCount="
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { p2 }, Landroid/media/AudioFormat;->getChannelCount()I
    move-result v1
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    const-string v1, ",SampleRate="
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { p2 }, Landroid/media/AudioFormat;->getSampleRate()I
    move-result v1
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    invoke-static { v8, v0 }, Lcn/manstep/phonemirrorBox/util/s;->d(Ljava/lang/String;Ljava/lang/String;)V
  :L2
  .line 8
    new-instance v0, Landroid/media/AudioTrack;
    const/4 v6, 1
    const/4 v7, 0
    move-object v2, v0
    move-object v3, p1
    move-object v4, p2
    invoke-direct/range { v2 .. v7 }, Landroid/media/AudioTrack;-><init>(Landroid/media/AudioAttributes;Landroid/media/AudioFormat;III)V
    iput-object v0, p0, Ld/b/a/b;->g:Landroid/media/AudioTrack;
  .line 9
    new-instance p1, Ljava/lang/StringBuilder;
    invoke-direct { p1 }, Ljava/lang/StringBuilder;-><init>()V
    const-string p2, "createAudioTrack: streamType="
    invoke-virtual { p1, p2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget-object p2, p0, Ld/b/a/b;->g:Landroid/media/AudioTrack;
    invoke-virtual { p2 }, Landroid/media/AudioTrack;->getStreamType()I
    move-result p2
    invoke-virtual { p1, p2 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { p1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p1
    invoke-static { v8, p1 }, Lcn/manstep/phonemirrorBox/util/s;->d(Ljava/lang/String;Ljava/lang/String;)V
  .line 10
    new-instance p1, Ljava/lang/StringBuilder;
    invoke-direct { p1 }, Ljava/lang/StringBuilder;-><init>()V
    const-string p2, "createAudioTrack: NativeOutputSampleRate="
    invoke-virtual { p1, p2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget-object p2, p0, Ld/b/a/b;->g:Landroid/media/AudioTrack;
    invoke-virtual { p2 }, Landroid/media/AudioTrack;->getStreamType()I
    move-result p2
    invoke-static { p2 }, Landroid/media/AudioTrack;->getNativeOutputSampleRate(I)I
    move-result p2
    invoke-virtual { p1, p2 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { p1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p1
    invoke-static { v8, p1 }, Lcn/manstep/phonemirrorBox/util/s;->d(Ljava/lang/String;Ljava/lang/String;)V
  .line 11
    iget-object p1, p0, Ld/b/a/b;->g:Landroid/media/AudioTrack;
    invoke-virtual { p1 }, Landroid/media/AudioTrack;->play()V
    return-void
.end method

.method public A()I
  .registers 3
  .line 1
    iget-object v0, p0, Ld/b/a/b;->c:Ld/b/a/a;
    iget v0, v0, Ld/b/a/a;->b:I
    const/4 v1, 4
    if-ne v0, v1, :L0
    const/4 v0, 1
    goto :L1
  :L0
    const/4 v0, 2
  :L1
  .line 2
    invoke-virtual { p0, v0 }, Ld/b/a/b;->B(I)I
    move-result v0
    return v0
.end method

.method public B(I)I
  .registers 6
  .line 1
    iget-object v0, p0, Ld/b/a/b;->c:Ld/b/a/a;
    iget v1, v0, Ld/b/a/a;->a:I
    iget v2, v0, Ld/b/a/a;->b:I
    iget v0, v0, Ld/b/a/a;->c:I
    invoke-static { v1, v2, v0 }, Landroid/media/AudioTrack;->getMinBufferSize(III)I
    move-result v0
  .line 2
    new-instance v1, Ljava/lang/StringBuilder;
    invoke-direct { v1 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v2, "getPlayerBufSize: minBufSize="
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v1, v0 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { v1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v1
    const-string v2, "AudioPlayer"
    invoke-static { v2, v1 }, Lcn/manstep/phonemirrorBox/util/s;->d(Ljava/lang/String;Ljava/lang/String;)V
  .line 3
    iget-object v1, p0, Ld/b/a/b;->c:Ld/b/a/a;
    iget v1, v1, Ld/b/a/a;->c:I
    const/16 v2, 8
    const/4 v3, 2
    if-ne v1, v3, :L0
    const/16 v1, 16
    goto :L1
  :L0
    const/16 v1, 8
  :L1
  .line 4
    iget-object v3, p0, Ld/b/a/b;->c:Ld/b/a/a;
    iget v3, v3, Ld/b/a/a;->a:I
    mul-int v3, v3, p1
    mul-int v3, v3, v1
    div-int/2addr v3, v2
    div-int/lit16 v3, v3, 1000
  .line 5
    new-instance v1, Ljava/lang/StringBuilder;
    invoke-direct { v1 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v2, "AudioPlayer,getPlayerBufSize : bufBytesMs:"
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v1, v3 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    const-string v2, ", channels="
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v1, p1 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    const-string p1, ","
    invoke-virtual { v1, p1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget-object p1, p0, Ld/b/a/b;->c:Ld/b/a/a;
    iget p1, p1, Ld/b/a/a;->b:I
    invoke-direct { p0, p1 }, Ld/b/a/b;->u(I)Ljava/lang/String;
    move-result-object p1
    invoke-virtual { v1, p1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p1
    invoke-static { p1 }, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V
    mul-int/lit16 v3, v3, 200
    if-ge v0, v3, :L2
    move v0, v3
  :L2
    return v0
.end method

.method public C()I
  .registers 2
  .line 1
    iget-object v0, p0, Ld/b/a/b;->g:Landroid/media/AudioTrack;
    if-eqz v0, :L0
  .line 2
    invoke-virtual { v0 }, Landroid/media/AudioTrack;->getStreamType()I
    move-result v0
    return v0
  :L0
    const/16 v0, -255
    return v0
.end method

.method public D()Z
  .registers 2
  .line 1
    iget-boolean v0, p0, Ld/b/a/b;->h:Z
    return v0
.end method

.method public a(Landroid/media/AudioAttributes;Ld/b/a/a;)V
  .catch Ljava/lang/Exception; { :L0 .. :L1 } :L2
  .registers 5
    const/4 v0, 0
  .line 1
    iput-boolean v0, p0, Ld/b/a/b;->e:Z
  .line 2
    invoke-direct { p0 }, Ld/b/a/b;->E()V
  .line 3
    iput-object p2, p0, Ld/b/a/b;->c:Ld/b/a/a;
  .line 4
    iput-object p1, p0, Ld/b/a/b;->d:Landroid/media/AudioAttributes;
  :L0
  .line 5
    invoke-direct { p0, p1 }, Ld/b/a/b;->w(Landroid/media/AudioAttributes;)V
    const/4 p1, 1
  .line 6
    iput-boolean p1, p0, Ld/b/a/b;->h:Z
  .line 7
    new-instance p1, Ljava/lang/StringBuilder;
    invoke-direct { p1 }, Ljava/lang/StringBuilder;-><init>()V
    const-string p2, "AudioPlayer,AudioInit: AudioSessionId="
    invoke-virtual { p1, p2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget-object p2, p0, Ld/b/a/b;->g:Landroid/media/AudioTrack;
    invoke-virtual { p2 }, Landroid/media/AudioTrack;->getAudioSessionId()I
    move-result p2
    invoke-virtual { p1, p2 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { p1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p1
    invoke-static { p1 }, Lcn/manstep/phonemirrorBox/util/s;->h(Ljava/lang/String;)V
  :L1
    goto :L3
  :L2
    move-exception p1
  .line 8
    new-instance p2, Ljava/lang/StringBuilder;
    invoke-direct { p2 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "AudioPlayer,AudioInit: \n"
    invoke-virtual { p2, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-static { p1 }, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;
    move-result-object p1
    invoke-virtual { p2, p1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { p2 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p1
    invoke-static { p1 }, Lcn/manstep/phonemirrorBox/util/s;->e(Ljava/lang/String;)V
  .line 9
    iput-boolean v0, p0, Ld/b/a/b;->h:Z
  :L3
    return-void
.end method

.method public b(Landroid/media/AudioAttributes;Ld/b/a/a;Landroid/media/AudioFormat;)V
  .catch Ljava/lang/Exception; { :L0 .. :L1 } :L2
  .registers 5
    const/4 v0, 0
  .line 1
    iput-boolean v0, p0, Ld/b/a/b;->e:Z
  .line 2
    invoke-direct { p0 }, Ld/b/a/b;->E()V
  .line 3
    iput-object p1, p0, Ld/b/a/b;->d:Landroid/media/AudioAttributes;
  .line 4
    iput-object p2, p0, Ld/b/a/b;->c:Ld/b/a/a;
  :L0
  .line 5
    invoke-direct { p0, p1, p3 }, Ld/b/a/b;->x(Landroid/media/AudioAttributes;Landroid/media/AudioFormat;)V
    const/4 p1, 1
  .line 6
    iput-boolean p1, p0, Ld/b/a/b;->h:Z
  .line 7
    new-instance p1, Ljava/lang/StringBuilder;
    invoke-direct { p1 }, Ljava/lang/StringBuilder;-><init>()V
    const-string p2, "AudioPlayer,AudioInit: AudioSessionId="
    invoke-virtual { p1, p2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget-object p2, p0, Ld/b/a/b;->g:Landroid/media/AudioTrack;
    invoke-virtual { p2 }, Landroid/media/AudioTrack;->getAudioSessionId()I
    move-result p2
    invoke-virtual { p1, p2 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { p1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p1
    invoke-static { p1 }, Lcn/manstep/phonemirrorBox/util/s;->h(Ljava/lang/String;)V
  :L1
    goto :L3
  :L2
    move-exception p1
  .line 8
    new-instance p2, Ljava/lang/StringBuilder;
    invoke-direct { p2 }, Ljava/lang/StringBuilder;-><init>()V
    const-string p3, "AudioPlayer,AudioInit: \n"
    invoke-virtual { p2, p3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-static { p1 }, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;
    move-result-object p1
    invoke-virtual { p2, p1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { p2 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p1
    invoke-static { p1 }, Lcn/manstep/phonemirrorBox/util/s;->e(Ljava/lang/String;)V
  .line 9
    iput-boolean v0, p0, Ld/b/a/b;->h:Z
  :L3
    return-void
.end method

.method public c(Ld/b/a/a;)V
  .registers 3
    const/4 v0, 3
  .line 1
    invoke-virtual { p0, p1, v0 }, Ld/b/a/b;->d(Ld/b/a/a;I)V
    return-void
.end method

.method public d(Ld/b/a/a;I)V
  .catch Ljava/lang/Exception; { :L0 .. :L1 } :L2
  .registers 5
    const/4 v0, 0
  .line 1
    iput-boolean v0, p0, Ld/b/a/b;->e:Z
  .line 2
    invoke-direct { p0 }, Ld/b/a/b;->E()V
  .line 3
    iput-object p1, p0, Ld/b/a/b;->c:Ld/b/a/a;
  .line 4
    iput p2, p0, Ld/b/a/b;->f:I
  :L0
  .line 5
    invoke-direct { p0, p2 }, Ld/b/a/b;->v(I)V
    const/4 p1, 1
  .line 6
    iput-boolean p1, p0, Ld/b/a/b;->h:Z
  .line 7
    new-instance p1, Ljava/lang/StringBuilder;
    invoke-direct { p1 }, Ljava/lang/StringBuilder;-><init>()V
    const-string p2, "AudioPlayer,AudioInit: AudioSessionId="
    invoke-virtual { p1, p2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget-object p2, p0, Ld/b/a/b;->g:Landroid/media/AudioTrack;
    invoke-virtual { p2 }, Landroid/media/AudioTrack;->getAudioSessionId()I
    move-result p2
    invoke-virtual { p1, p2 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { p1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p1
    invoke-static { p1 }, Lcn/manstep/phonemirrorBox/util/s;->h(Ljava/lang/String;)V
  :L1
    goto :L3
  :L2
    move-exception p1
  .line 8
    new-instance p2, Ljava/lang/StringBuilder;
    invoke-direct { p2 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "AudioPlayer,AudioInit: \n"
    invoke-virtual { p2, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-static { p1 }, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;
    move-result-object p1
    invoke-virtual { p2, p1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { p2 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p1
    invoke-static { p1 }, Lcn/manstep/phonemirrorBox/util/s;->e(Ljava/lang/String;)V
  .line 9
    iput-boolean v0, p0, Ld/b/a/b;->h:Z
  :L3
    return-void
.end method

.method public e([BI)V
  .registers 4
    const/4 v0, 0
  .line 1
    invoke-virtual { p0, p1, v0, p2 }, Ld/b/a/b;->f([BII)V
    return-void
.end method

.method public f([BII)V
  .catchall { :L2 .. :L3 } :L4
  .catchall { :L5 .. :L6 } :L4
  .catch Ljava/lang/Exception; { :L7 .. :L9 } :L11
  .registers 7
  .line 1
    iget-boolean v0, p0, Ld/b/a/b;->h:Z
    if-nez v0, :L0
    return-void
  :L0
  .line 2
    iget-boolean v0, p0, Ld/b/a/b;->l:Z
    if-eqz v0, :L1
    sget-boolean v0, Lcn/manstep/phonemirrorBox/p;->H:Z
    if-eqz v0, :L1
  .line 3
    invoke-direct { p0, p1, p2, p3 }, Ld/b/a/b;->k([BII)V
  :L1
  .line 4
    sget v0, Lcn/manstep/phonemirrorBox/p;->E:I
    if-lez v0, :L7
  .line 5
    iget-object v0, p0, Ld/b/a/b;->a:Ljava/lang/Object;
    monitor-enter v0
  :L2
  .line 6
    iget-object v1, p0, Ld/b/a/b;->j:Lcn/manstep/phonemirrorBox/util/i;
    invoke-virtual { v1, p3 }, Lcn/manstep/phonemirrorBox/util/i;->d(I)[B
    move-result-object v1
    const/4 v2, 0
  .line 7
    invoke-static { p1, p2, v1, v2, p3 }, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
  .line 8
    iget-object p1, p0, Ld/b/a/b;->j:Lcn/manstep/phonemirrorBox/util/i;
    invoke-virtual { p1, v1 }, Lcn/manstep/phonemirrorBox/util/i;->a([B)V
  .line 9
    monitor-exit v0
  :L3
  .line 10
    iget-object p1, p0, Ld/b/a/b;->b:Landroid/os/Handler;
    iget-object p2, p0, Ld/b/a/b;->k:Ljava/lang/Runnable;
    sget p3, Lcn/manstep/phonemirrorBox/p;->E:I
    int-to-long v0, p3
    invoke-virtual { p1, p2, v0, v1 }, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    goto :L12
  :L4
    move-exception p1
  :L5
  .line 11
    monitor-exit v0
  :L6
    throw p1
  :L7
  .line 12
    iget-object v0, p0, Ld/b/a/b;->g:Landroid/media/AudioTrack;
    if-eqz v0, :L10
    iget-object v0, p0, Ld/b/a/b;->g:Landroid/media/AudioTrack;
    invoke-virtual { v0 }, Landroid/media/AudioTrack;->getPlayState()I
    move-result v0
    const/4 v1, 3
    if-eq v0, v1, :L8
    goto :L10
  :L8
  .line 13
    iget-object v0, p0, Ld/b/a/b;->g:Landroid/media/AudioTrack;
    invoke-virtual { v0, p1, p2, p3 }, Landroid/media/AudioTrack;->write([BII)I
    move-result p1
    if-eq p1, p3, :L12
  .line 14
    new-instance p2, Ljava/lang/StringBuilder;
    invoke-direct { p2 }, Ljava/lang/StringBuilder;-><init>()V
    const-string p3, "AudioPlayer,AudioProcess: AudioPlayer Write data failed: "
    invoke-virtual { p2, p3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { p2, p1 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { p2 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p1
    invoke-static { p1 }, Lcn/manstep/phonemirrorBox/util/s;->e(Ljava/lang/String;)V
  :L9
    goto :L12
  :L10
    return-void
  :L11
    move-exception p1
  .line 15
    new-instance p2, Ljava/lang/StringBuilder;
    invoke-direct { p2 }, Ljava/lang/StringBuilder;-><init>()V
    const-string p3, "AudioPlayer,AudioProcess:\n"
    invoke-virtual { p2, p3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-static { p1 }, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;
    move-result-object p1
    invoke-virtual { p2, p1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { p2 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p1
    invoke-static { p1 }, Lcn/manstep/phonemirrorBox/util/s;->e(Ljava/lang/String;)V
  :L12
    return-void
.end method

.method public g()V
  .registers 3
  .line 1
    iget-object v0, p0, Ld/b/a/b;->d:Landroid/media/AudioAttributes;
    iget-object v1, p0, Ld/b/a/b;->c:Ld/b/a/a;
    invoke-virtual { p0, v0, v1 }, Ld/b/a/b;->a(Landroid/media/AudioAttributes;Ld/b/a/a;)V
    return-void
.end method

.method public h()V
  .registers 3
  .line 1
    iget-object v0, p0, Ld/b/a/b;->c:Ld/b/a/a;
    iget v1, p0, Ld/b/a/b;->f:I
    invoke-virtual { p0, v0, v1 }, Ld/b/a/b;->d(Ld/b/a/a;I)V
    return-void
.end method

.method public i()V
  .catchall { :L0 .. :L1 } :L3
  .catchall { :L4 .. :L5 } :L3
  .registers 3
  .line 1
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "AudioPlayer,AudioStop: SessionId="
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { p0 }, Ld/b/a/b;->y()I
    move-result v1
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V
  .line 2
    iget-object v0, p0, Ld/b/a/b;->b:Landroid/os/Handler;
    iget-object v1, p0, Ld/b/a/b;->k:Ljava/lang/Runnable;
    invoke-virtual { v0, v1 }, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V
  .line 3
    monitor-enter p0
  :L0
  .line 4
    invoke-direct { p0 }, Ld/b/a/b;->E()V
    const/4 v0, 0
  .line 5
    iput-boolean v0, p0, Ld/b/a/b;->h:Z
  .line 6
    monitor-exit p0
  :L1
  .line 7
    iget-boolean v1, p0, Ld/b/a/b;->l:Z
    if-eqz v1, :L2
  .line 8
    invoke-virtual { p0, v0 }, Ld/b/a/b;->l(Z)V
  :L2
    return-void
  :L3
    move-exception v0
  :L4
  .line 9
    monitor-exit p0
  :L5
    throw v0
.end method

.method public l(Z)V
  .registers 2
  .line 1
    iput-boolean p1, p0, Ld/b/a/b;->l:Z
    if-nez p1, :L0
  .line 2
    invoke-direct { p0 }, Ld/b/a/b;->j()V
  :L0
    return-void
.end method

.method public n(F)V
  .registers 5
  .line 1
    iget-boolean v0, p0, Ld/b/a/b;->h:Z
    if-eqz v0, :L4
    iget-object v0, p0, Ld/b/a/b;->g:Landroid/media/AudioTrack;
    if-nez v0, :L0
    goto :L4
  :L0
  .line 2
    invoke-virtual { v0 }, Landroid/media/AudioTrack;->getPlayState()I
    move-result v0
    const/4 v1, 3
    if-eq v0, v1, :L1
    return-void
  :L1
  .line 3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v1, 21
    if-lt v0, v1, :L2
  .line 4
    iget-object v0, p0, Ld/b/a/b;->g:Landroid/media/AudioTrack;
    invoke-virtual { v0, p1 }, Landroid/media/AudioTrack;->setVolume(F)I
    move-result v0
    goto :L3
  :L2
  .line 5
    iget-object v0, p0, Ld/b/a/b;->g:Landroid/media/AudioTrack;
    invoke-virtual { v0, p1, p1 }, Landroid/media/AudioTrack;->setStereoVolume(FF)I
    move-result v0
  :L3
  .line 6
    new-instance v1, Ljava/lang/StringBuilder;
    invoke-direct { v1 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v2, "AudioPlayer,SetVolume: volume = "
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v1, p1 }, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;
    const-string p1, ", ret = "
    invoke-virtual { v1, p1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v1, v0 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    const-string p1, ", AudioSessionId: "
    invoke-virtual { v1, p1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { p0 }, Ld/b/a/b;->y()I
    move-result p1
    invoke-virtual { v1, p1 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { v1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p1
    invoke-static { p1 }, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V
  :L4
    return-void
.end method

.method public y()I
  .registers 2
  .line 1
    iget-object v0, p0, Ld/b/a/b;->g:Landroid/media/AudioTrack;
    if-eqz v0, :L0
  .line 2
    invoke-virtual { v0 }, Landroid/media/AudioTrack;->getAudioSessionId()I
    move-result v0
    return v0
  :L0
    const/4 v0, -1
    return v0
.end method

.method public z()Landroid/media/AudioTrack;
  .registers 2
  .line 1
    iget-object v0, p0, Ld/b/a/b;->g:Landroid/media/AudioTrack;
    return-object v0
.end method
