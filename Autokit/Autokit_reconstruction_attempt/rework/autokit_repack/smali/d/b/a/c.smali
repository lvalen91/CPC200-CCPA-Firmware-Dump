.class public Ld/b/a/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcn/manstep/phonemirrorBox/util/i;

.field protected b:I

.field protected c:Ld/b/a/a;

.field protected d:Landroid/media/AudioRecord;

.field protected e:Z

.field private f:Z

.field private g:Lnet/iwebrtc/audioprocess/sdk/AudioProcess;

.field private h:I

.field protected i:I

.field private j:I

.field private k:[B

.field private l:[B

.field private m:[B

.field private n:I

.field protected o:I


# direct methods
.method public constructor <init>()V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcn/manstep/phonemirrorBox/util/i;

    invoke-direct {v0}, Lcn/manstep/phonemirrorBox/util/i;-><init>()V

    iput-object v0, p0, Ld/b/a/c;->a:Lcn/manstep/phonemirrorBox/util/i;

    const/4 v0, 0x1

    .line 3
    iput v0, p0, Ld/b/a/c;->b:I

    const/4 v1, 0x0

    .line 4
    iput-boolean v1, p0, Ld/b/a/c;->e:Z

    .line 5
    iput-boolean v1, p0, Ld/b/a/c;->f:Z

    const/16 v2, 0x140

    .line 6
    iput v2, p0, Ld/b/a/c;->h:I

    .line 7
    iput v1, p0, Ld/b/a/c;->j:I

    .line 8
    iput v1, p0, Ld/b/a/c;->n:I

    .line 9
    iput v0, p0, Ld/b/a/c;->o:I

    return-void
.end method

.method public constructor <init>(I)V
    .registers 4

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    new-instance v0, Lcn/manstep/phonemirrorBox/util/i;

    invoke-direct {v0}, Lcn/manstep/phonemirrorBox/util/i;-><init>()V

    iput-object v0, p0, Ld/b/a/c;->a:Lcn/manstep/phonemirrorBox/util/i;

    const/4 v0, 0x1

    .line 12
    iput v0, p0, Ld/b/a/c;->b:I

    const/4 v0, 0x0

    .line 13
    iput-boolean v0, p0, Ld/b/a/c;->e:Z

    .line 14
    iput-boolean v0, p0, Ld/b/a/c;->f:Z

    const/16 v1, 0x140

    .line 15
    iput v1, p0, Ld/b/a/c;->h:I

    .line 16
    iput v0, p0, Ld/b/a/c;->j:I

    .line 17
    iput v0, p0, Ld/b/a/c;->n:I

    .line 18
    iput p1, p0, Ld/b/a/c;->o:I

    return-void
.end method

.method private a()V
    .registers 4

    .line 1
    iget-object v0, p0, Ld/b/a/c;->g:Lnet/iwebrtc/audioprocess/sdk/AudioProcess;

    if-eqz v0, :cond_22

    .line 2
    invoke-virtual {v0}, Lnet/iwebrtc/audioprocess/sdk/AudioProcess;->Destroy()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Ld/b/a/c;->g:Lnet/iwebrtc/audioprocess/sdk/AudioProcess;

    .line 4
    iput-object v0, p0, Ld/b/a/c;->m:[B

    .line 5
    iput-object v0, p0, Ld/b/a/c;->l:[B

    .line 6
    iget-object v1, p0, Ld/b/a/c;->a:Lcn/manstep/phonemirrorBox/util/i;

    monitor-enter v1

    .line 7
    :try_start_11
    iget-object v2, p0, Ld/b/a/c;->a:Lcn/manstep/phonemirrorBox/util/i;

    invoke-virtual {v2}, Lcn/manstep/phonemirrorBox/util/i;->b()V

    const/4 v2, 0x0

    .line 8
    iput v2, p0, Ld/b/a/c;->j:I

    .line 9
    iput-object v0, p0, Ld/b/a/c;->k:[B

    .line 10
    monitor-exit v1
    :try_end_1c
    .catchall {:try_start_11 .. :try_end_1c} :catchall_1f

    .line 11
    iput-boolean v2, p0, Ld/b/a/c;->f:Z

    goto :goto_22

    :catchall_1f
    move-exception v0

    .line 12
    :try_start_20
    monitor-exit v1
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_1f

    throw v0

    :cond_22
    :goto_22
    return-void
.end method

.method private d()V
    .registers 3

    const-string v0, "AudioRecorder,InitAECProcesser: !!!"

    .line 1
    invoke-static {v0}, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Ld/b/a/c;->g:Lnet/iwebrtc/audioprocess/sdk/AudioProcess;

    if-nez v0, :cond_21

    .line 3
    new-instance v0, Lnet/iwebrtc/audioprocess/sdk/AudioProcess;

    invoke-direct {v0}, Lnet/iwebrtc/audioprocess/sdk/AudioProcess;-><init>()V

    iput-object v0, p0, Ld/b/a/c;->g:Lnet/iwebrtc/audioprocess/sdk/AudioProcess;

    .line 4
    iget-object v1, p0, Ld/b/a/c;->c:Ld/b/a/a;

    iget v1, v1, Ld/b/a/a;->a:I

    invoke-virtual {v0, v1}, Lnet/iwebrtc/audioprocess/sdk/AudioProcess;->Init(I)V

    .line 5
    iget v0, p0, Ld/b/a/c;->h:I

    new-array v1, v0, [B

    iput-object v1, p0, Ld/b/a/c;->l:[B

    .line 6
    new-array v0, v0, [B

    iput-object v0, p0, Ld/b/a/c;->m:[B

    :cond_21
    return-void
.end method

.method private m()I
    .registers 7

    .line 1
    iget-object v0, p0, Ld/b/a/c;->c:Ld/b/a/a;

    if-eqz v0, :cond_91

    .line 2
    iget v1, v0, Ld/b/a/a;->a:I

    iget v2, v0, Ld/b/a/a;->b:I

    iget v0, v0, Ld/b/a/a;->c:I

    invoke-static {v1, v2, v0}, Landroid/media/AudioRecord;->getMinBufferSize(III)I

    move-result v0

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "calculateBufSize: minBufSize="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",mChannelCount="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Ld/b/a/c;->b:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "AudioRecorder"

    invoke-static {v3, v1}, Lcn/manstep/phonemirrorBox/util/s;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-lez v0, :cond_6c

    .line 4
    iget v1, p0, Ld/b/a/c;->b:I

    const/4 v4, 0x1

    if-le v1, v4, :cond_45

    .line 5
    iget-object v0, p0, Ld/b/a/c;->c:Ld/b/a/a;

    iget v1, v0, Ld/b/a/a;->a:I

    const/16 v4, 0x10

    iget v0, v0, Ld/b/a/a;->c:I

    invoke-static {v1, v4, v0}, Landroid/media/AudioRecord;->getMinBufferSize(III)I

    move-result v0

    iget v1, p0, Ld/b/a/c;->b:I

    mul-int v0, v0, v1

    .line 6
    :cond_45
    iget v1, p0, Ld/b/a/c;->h:I

    div-int v4, v0, v1

    const/16 v5, 0x8

    if-ge v4, v5, :cond_50

    mul-int/lit8 v1, v1, 0x8

    goto :goto_59

    .line 7
    :cond_50
    div-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x4

    mul-int/lit8 v0, v0, 0x4

    add-int/lit8 v0, v0, 0x4

    mul-int v1, v1, v0

    .line 8
    :goto_59
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcn/manstep/phonemirrorBox/util/s;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 9
    :cond_6c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "calculateBufSize: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v0}, Ld/b/a/c;->p(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcn/manstep/phonemirrorBox/util/s;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    iget v0, p0, Ld/b/a/c;->b:I

    mul-int/lit16 v0, v0, 0x200

    return v0

    :cond_91
    const/4 v0, 0x0

    return v0
.end method

.method private p(I)Ljava/lang/String;
    .registers 4

    const/4 v0, -0x6

    if-eq p1, v0, :cond_27

    const/4 v0, -0x3

    if-eq p1, v0, :cond_24

    const/4 v0, -0x2

    if-eq p1, v0, :cond_21

    const/4 v0, -0x1

    if-eq p1, v0, :cond_1e

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1e
    const-string p1, "ERROR"

    return-object p1

    :cond_21
    const-string p1, "ERROR_BAD_VALUE"

    return-object p1

    :cond_24
    const-string p1, "ERROR_INVALID_OPERATION"

    return-object p1

    :cond_27
    const-string p1, "ERROR_DEAD_OBJECT"

    return-object p1
.end method

.method private t([BII[BII)V
    .registers 11

    .line 1
    rem-int/lit8 v0, p3, 0x2

    if-nez v0, :cond_8

    rem-int/lit8 v0, p6, 0x2

    if-eqz v0, :cond_d

    :cond_8
    const-string v0, "reSampleAudio size error!!!"

    .line 2
    invoke-static {v0}, Lcn/manstep/phonemirrorBox/util/s;->e(Ljava/lang/String;)V

    :cond_d
    int-to-float p3, p3

    int-to-float v0, p6

    div-float/2addr p3, v0

    const/4 v0, 0x0

    .line 3
    :goto_11
    div-int/lit8 v1, p6, 0x2

    if-ge v0, v1, :cond_33

    int-to-float v1, v0

    mul-float v1, v1, p3

    float-to-double v1, v1

    .line 4
    invoke-static {v1, v2}, Ljava/lang/Math;->floor(D)D

    move-result-wide v1

    double-to-int v1, v1

    mul-int/lit8 v2, v0, 0x2

    add-int/2addr v2, p5

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v1, p2

    .line 5
    aget-byte v3, p1, v1

    aput-byte v3, p4, v2

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v1, v1, 0x1

    .line 6
    aget-byte v1, p1, v1

    aput-byte v1, p4, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    :cond_33
    return-void
.end method


# virtual methods
.method protected b([BII)V
    .registers 11

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    :goto_2
    iget v2, p0, Ld/b/a/c;->h:I

    add-int/2addr v2, v1

    if-gt v2, p3, :cond_95

    .line 2
    iget-object v2, p0, Ld/b/a/c;->a:Lcn/manstep/phonemirrorBox/util/i;

    monitor-enter v2

    .line 3
    :try_start_a
    iget-object v3, p0, Ld/b/a/c;->a:Lcn/manstep/phonemirrorBox/util/i;

    invoke-virtual {v3}, Lcn/manstep/phonemirrorBox/util/i;->c()[B

    move-result-object v3

    .line 4
    sget-boolean v4, Lcn/manstep/phonemirrorBox/p;->w:Z

    if-eqz v4, :cond_1d

    const-string v4, "output.pcm"

    .line 5
    invoke-static {}, Lcn/manstep/phonemirrorBox/MyApplication;->b()Lcn/manstep/phonemirrorBox/MyApplication;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcn/manstep/phonemirrorBox/util/n;->A([BLjava/lang/String;Landroid/content/Context;)Z

    .line 6
    :cond_1d
    iget-boolean v4, p0, Ld/b/a/c;->f:Z

    if-nez v4, :cond_40

    const-string v4, "AudioRecorder"

    .line 7
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "DoAECProcess: Start DoAeEC, OutPut Audio buffer size: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Ld/b/a/c;->a:Lcn/manstep/phonemirrorBox/util/i;

    invoke-virtual {v6}, Lcn/manstep/phonemirrorBox/util/i;->g()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcn/manstep/phonemirrorBox/util/s;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x1

    .line 8
    iput-boolean v4, p0, Ld/b/a/c;->f:Z

    .line 9
    :cond_40
    monitor-exit v2
    :try_end_41
    .catchall {:try_start_a .. :try_end_41} :catchall_92

    if-eqz v3, :cond_71

    add-int v2, p2, v1

    .line 10
    iget-object v4, p0, Ld/b/a/c;->l:[B

    iget v5, p0, Ld/b/a/c;->h:I

    invoke-static {p1, v2, v4, v0, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 11
    iget-object v4, p0, Ld/b/a/c;->g:Lnet/iwebrtc/audioprocess/sdk/AudioProcess;

    iget-object v5, p0, Ld/b/a/c;->l:[B

    iget-object v6, p0, Ld/b/a/c;->m:[B

    invoke-virtual {v4, v3, v5, v6}, Lnet/iwebrtc/audioprocess/sdk/AudioProcess;->ProcessData([B[B[B)V

    .line 12
    iget-object v3, p0, Ld/b/a/c;->m:[B

    iget v4, p0, Ld/b/a/c;->h:I

    invoke-static {v3, v0, p1, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 13
    iget-object v2, p0, Ld/b/a/c;->a:Lcn/manstep/phonemirrorBox/util/i;

    monitor-enter v2

    .line 14
    :try_start_5f
    iget-object v3, p0, Ld/b/a/c;->a:Lcn/manstep/phonemirrorBox/util/i;

    invoke-virtual {v3}, Lcn/manstep/phonemirrorBox/util/i;->e()Z

    move-result v3

    if-nez v3, :cond_6c

    .line 15
    iget-object v3, p0, Ld/b/a/c;->a:Lcn/manstep/phonemirrorBox/util/i;

    invoke-virtual {v3, v0}, Lcn/manstep/phonemirrorBox/util/i;->f(I)V

    .line 16
    :cond_6c
    monitor-exit v2

    goto :goto_8d

    :catchall_6e
    move-exception p1

    monitor-exit v2
    :try_end_70
    .catchall {:try_start_5f .. :try_end_70} :catchall_6e

    throw p1

    :cond_71
    const-string v2, "AudioRecorder"

    .line 17
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DoAECProcess: OutPut Audio buffer not enough: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Ld/b/a/c;->a:Lcn/manstep/phonemirrorBox/util/i;

    invoke-virtual {v4}, Lcn/manstep/phonemirrorBox/util/i;->g()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcn/manstep/phonemirrorBox/util/s;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    :goto_8d
    iget v2, p0, Ld/b/a/c;->h:I

    add-int/2addr v1, v2

    goto/16 :goto_2

    :catchall_92
    move-exception p1

    .line 19
    :try_start_93
    monitor-exit v2
    :try_end_94
    .catchall {:try_start_93 .. :try_end_94} :catchall_92

    throw p1

    :cond_95
    return-void
.end method

.method public c()I
    .registers 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AudioRecord GetBufferSize: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Ld/b/a/c;->i:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/manstep/phonemirrorBox/util/s;->e(Ljava/lang/String;)V

    .line 2
    iget v0, p0, Ld/b/a/c;->i:I

    return v0
.end method

.method public e([BII)V
    .registers 10

    .line 1
    iget-object v0, p0, Ld/b/a/c;->a:Lcn/manstep/phonemirrorBox/util/i;

    monitor-enter v0

    .line 2
    :try_start_3
    iget-object v1, p0, Ld/b/a/c;->k:[B

    if-nez v1, :cond_d

    .line 3
    iget v1, p0, Ld/b/a/c;->h:I

    new-array v1, v1, [B

    iput-object v1, p0, Ld/b/a/c;->k:[B

    .line 4
    :cond_d
    iget v1, p0, Ld/b/a/c;->j:I

    const/4 v2, 0x0

    if-eqz v1, :cond_41

    .line 5
    iget-object v1, p0, Ld/b/a/c;->k:[B

    .line 6
    iget v3, p0, Ld/b/a/c;->h:I

    iget v4, p0, Ld/b/a/c;->j:I

    sub-int/2addr v3, v4

    if-ltz v3, :cond_29

    add-int/lit8 v4, p2, 0x0

    .line 7
    iget v5, p0, Ld/b/a/c;->j:I

    invoke-static {p1, v4, v1, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v3, v2

    .line 8
    iget-object v4, p0, Ld/b/a/c;->a:Lcn/manstep/phonemirrorBox/util/i;

    invoke-virtual {v4, v1}, Lcn/manstep/phonemirrorBox/util/i;->a([B)V

    goto :goto_3e

    .line 9
    :cond_29
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AudioRecorder,PushOutPutAudio: len = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/manstep/phonemirrorBox/util/s;->e(Ljava/lang/String;)V

    const/4 v3, 0x0

    .line 10
    :goto_3e
    iput v2, p0, Ld/b/a/c;->j:I

    goto :goto_42

    :cond_41
    const/4 v3, 0x0

    .line 11
    :goto_42
    iget v1, p0, Ld/b/a/c;->h:I

    add-int/2addr v1, v3

    if-gt v1, p3, :cond_5f

    .line 12
    iget-object v1, p0, Ld/b/a/c;->a:Lcn/manstep/phonemirrorBox/util/i;

    iget v4, p0, Ld/b/a/c;->h:I

    invoke-virtual {v1, v4}, Lcn/manstep/phonemirrorBox/util/i;->d(I)[B

    move-result-object v1

    add-int v4, p2, v3

    .line 13
    iget v5, p0, Ld/b/a/c;->h:I

    invoke-static {p1, v4, v1, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 14
    iget-object v4, p0, Ld/b/a/c;->a:Lcn/manstep/phonemirrorBox/util/i;

    invoke-virtual {v4, v1}, Lcn/manstep/phonemirrorBox/util/i;->a([B)V

    .line 15
    iget v1, p0, Ld/b/a/c;->h:I

    add-int/2addr v3, v1

    goto :goto_42

    :cond_5f
    if-ge v3, p3, :cond_76

    .line 16
    iget-object v1, p0, Ld/b/a/c;->k:[B

    sub-int/2addr p3, v3

    .line 17
    array-length v4, v1

    if-le p3, v4, :cond_70

    const-string p1, "AudioRecorder"

    const-string p2, "PushOutPutAudio: java.lang.ArrayIndexOutOfBoundsException"

    .line 18
    invoke-static {p1, p2}, Lcn/manstep/phonemirrorBox/util/s;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    monitor-exit v0

    return-void

    :cond_70
    add-int/2addr p2, v3

    .line 20
    invoke-static {p1, p2, v1, v2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 21
    iput p3, p0, Ld/b/a/c;->j:I

    .line 22
    :cond_76
    sget p1, Lnet/iwebrtc/audioprocess/sdk/AudioProcess;->RecordDelay:I

    div-int/lit8 p1, p1, 0xa

    .line 23
    iget-boolean p2, p0, Ld/b/a/c;->f:Z

    if-eqz p2, :cond_80

    add-int/lit8 p1, p1, 0x8

    :cond_80
    const-string p2, "AudioRecorder"

    .line 24
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PushOutPutAudio: OutPut Audio buffer size: "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ld/b/a/c;->a:Lcn/manstep/phonemirrorBox/util/i;

    invoke-virtual {v1}, Lcn/manstep/phonemirrorBox/util/i;->g()I

    move-result v1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lcn/manstep/phonemirrorBox/util/s;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    :goto_9c
    iget-object p2, p0, Ld/b/a/c;->a:Lcn/manstep/phonemirrorBox/util/i;

    invoke-virtual {p2}, Lcn/manstep/phonemirrorBox/util/i;->g()I

    move-result p2

    if-le p2, p1, :cond_c6

    .line 26
    iget-object p2, p0, Ld/b/a/c;->a:Lcn/manstep/phonemirrorBox/util/i;

    invoke-virtual {p2, v2}, Lcn/manstep/phonemirrorBox/util/i;->f(I)V

    const-string p2, "AudioRecorder"

    .line 27
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PushOutPutAudio: OutPut Audio buffer overrun size: "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ld/b/a/c;->a:Lcn/manstep/phonemirrorBox/util/i;

    invoke-virtual {v1}, Lcn/manstep/phonemirrorBox/util/i;->g()I

    move-result v1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lcn/manstep/phonemirrorBox/util/s;->f(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9c

    .line 28
    :cond_c6
    monitor-exit v0

    return-void

    :catchall_c8
    move-exception p1

    monitor-exit v0
    :try_end_ca
    .catchall {:try_start_3 .. :try_end_ca} :catchall_c8

    goto :goto_cc

    :goto_cb
    throw p1

    :goto_cc
    goto :goto_cb
.end method

.method public f([BII)Z
    .registers 10

    .line 1
    new-array v0, p3, [B

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 2
    :cond_4
    :goto_4
    iget-boolean v2, p0, Ld/b/a/c;->e:Z

    if-eqz v2, :cond_c8

    iget-object v2, p0, Ld/b/a/c;->d:Landroid/media/AudioRecord;

    if-eqz v2, :cond_c8

    .line 3
    :try_start_c
    invoke-static {}, Lcn/manstep/phonemirrorBox/u;->z()Lcn/manstep/phonemirrorBox/u;

    move-result-object v2

    invoke-virtual {v2}, Lcn/manstep/phonemirrorBox/u;->a0()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_20

    add-int v2, p2, v1

    sub-int v4, p3, v1

    .line 4
    invoke-virtual {p0, p1, v2, v4}, Ld/b/a/c;->u([BII)I

    move-result v2

    goto :goto_37

    .line 5
    :cond_20
    iget v2, p0, Ld/b/a/c;->b:I

    if-le v2, v3, :cond_2d

    add-int v2, p2, v1

    sub-int v4, p3, v1

    .line 6
    invoke-virtual {p0, p1, v2, v4}, Ld/b/a/c;->g([BII)I

    move-result v2

    goto :goto_37

    .line 7
    :cond_2d
    iget-object v2, p0, Ld/b/a/c;->d:Landroid/media/AudioRecord;

    add-int v4, p2, v1

    sub-int v5, p3, v1

    invoke-virtual {v2, p1, v4, v5}, Landroid/media/AudioRecord;->read([BII)I

    move-result v2

    :goto_37
    if-lez v2, :cond_8a

    add-int/2addr v1, v2

    if-ne v1, p3, :cond_6b

    .line 8
    sget-boolean v2, Lcn/manstep/phonemirrorBox/p;->x:Z

    if-eqz v2, :cond_49

    const-string v2, "input_src.pcm"

    .line 9
    invoke-static {}, Lcn/manstep/phonemirrorBox/MyApplication;->b()Lcn/manstep/phonemirrorBox/MyApplication;

    move-result-object v4

    invoke-static {p1, p2, p3, v2, v4}, Lcn/manstep/phonemirrorBox/util/n;->z([BIILjava/lang/String;Landroid/content/Context;)Z

    .line 10
    :cond_49
    sget-boolean v2, Lcn/manstep/phonemirrorBox/p;->H:Z

    if-eqz v2, :cond_50

    .line 11
    invoke-virtual {p0, p1, p2, p3}, Ld/b/a/c;->b([BII)V

    .line 12
    :cond_50
    sget-boolean v2, Lcn/manstep/phonemirrorBox/p;->y:Z

    if-eqz v2, :cond_61

    sget-boolean v2, Lcn/manstep/phonemirrorBox/p;->H:Z

    if-eqz v2, :cond_61

    const-string v2, "input_aec.pcm"

    .line 13
    invoke-static {}, Lcn/manstep/phonemirrorBox/MyApplication;->b()Lcn/manstep/phonemirrorBox/MyApplication;

    move-result-object v4

    invoke-static {p1, p2, p3, v2, v4}, Lcn/manstep/phonemirrorBox/util/n;->z([BIILjava/lang/String;Landroid/content/Context;)Z

    .line 14
    :cond_61
    iget v2, p0, Ld/b/a/c;->n:I

    if-eqz v2, :cond_6a

    .line 15
    iget v2, p0, Ld/b/a/c;->n:I

    invoke-static {p1, p2, p3, v2}, Lcn/manstep/phonemirrorBox/util/JniTools;->amplifyPcmData([BIII)V

    :cond_6a
    return v3

    :cond_6b
    if-le v1, p3, :cond_4

    .line 16
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AudioRecorder,ReadAudioData: read over size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " > "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcn/manstep/phonemirrorBox/util/s;->e(Ljava/lang/String;)V

    goto :goto_c8

    :cond_8a
    const/4 v3, -0x3

    if-ne v2, v3, :cond_96

    const-string v2, "AudioRecorder,ReadAudioData: read failed: the object isn\'t properly initialized."

    .line 17
    invoke-static {v2}, Lcn/manstep/phonemirrorBox/util/s;->e(Ljava/lang/String;)V

    .line 18
    invoke-virtual {p0, v0}, Ld/b/a/c;->l(Z)V

    goto :goto_c8

    .line 19
    :cond_96
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AudioRecorder,ReadAudioData: read failed:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcn/manstep/phonemirrorBox/util/s;->e(Ljava/lang/String;)V
    :try_end_aa
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_aa} :catch_ab

    goto :goto_c8

    :catch_ab
    move-exception v2

    .line 20
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ReadAudioData:\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lcn/manstep/phonemirrorBox/util/s;->g(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "AudioRecorder"

    invoke-static {v3, v2}, Lcn/manstep/phonemirrorBox/util/s;->f(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_c8
    :goto_c8
    return v0
.end method

.method public g([BII)I
    .registers 9

    .line 1
    invoke-static {}, Lcn/manstep/phonemirrorBox/u;->z()Lcn/manstep/phonemirrorBox/u;

    move-result-object p3

    invoke-virtual {p3}, Lcn/manstep/phonemirrorBox/u;->E()I

    move-result p3

    .line 2
    iget v0, p0, Ld/b/a/c;->b:I

    const/4 v1, 0x0

    if-lt p3, v0, :cond_e

    const/4 p3, 0x0

    .line 3
    :cond_e
    iget v0, p0, Ld/b/a/c;->i:I

    .line 4
    new-array v2, v0, [B

    .line 5
    iget-object v3, p0, Ld/b/a/c;->d:Landroid/media/AudioRecord;

    invoke-virtual {v3, v2, v1, v0}, Landroid/media/AudioRecord;->read([BII)I

    move-result v0

    if-lez v0, :cond_58

    .line 6
    sget-boolean v3, Lcn/manstep/phonemirrorBox/p;->x:Z

    if-eqz v3, :cond_3d

    .line 7
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "input2_16k_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Ld/b/a/c;->b:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ".pcm"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcn/manstep/phonemirrorBox/MyApplication;->b()Lcn/manstep/phonemirrorBox/MyApplication;

    move-result-object v4

    invoke-static {v2, v1, v0, v3, v4}, Lcn/manstep/phonemirrorBox/util/n;->z([BIILjava/lang/String;Landroid/content/Context;)Z

    .line 8
    :cond_3d
    :goto_3d
    iget v3, p0, Ld/b/a/c;->b:I

    div-int v4, v0, v3

    if-ge v1, v4, :cond_58

    .line 9
    div-int/lit8 v4, v1, 0x2

    mul-int/lit8 v3, v3, 0x2

    mul-int v4, v4, v3

    mul-int/lit8 v3, p3, 0x2

    add-int/2addr v4, v3

    rem-int/lit8 v3, v1, 0x2

    add-int/2addr v4, v3

    add-int v3, v1, p2

    .line 10
    aget-byte v4, v2, v4

    aput-byte v4, p1, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_3d

    .line 11
    :cond_58
    iget p1, p0, Ld/b/a/c;->b:I

    div-int/2addr v0, p1

    return v0
.end method

.method public h(Ld/b/a/a;)V
    .registers 5

    .line 1
    iput-object p1, p0, Ld/b/a/c;->c:Ld/b/a/a;

    .line 2
    iget v0, p1, Ld/b/a/a;->a:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lnet/iwebrtc/audioprocess/sdk/AudioProcess;->calculateBufferSize(III)I

    move-result v0

    iput v0, p0, Ld/b/a/c;->h:I

    .line 3
    iget v0, p0, Ld/b/a/c;->b:I

    const/16 v2, 0x8

    if-ne v0, v2, :cond_19

    .line 4
    iget-object v0, p0, Ld/b/a/c;->c:Ld/b/a/a;

    const/16 v1, 0x3fc

    iput v1, v0, Ld/b/a/a;->b:I

    goto :goto_21

    :cond_19
    if-ne v0, v1, :cond_21

    .line 5
    iget-object v0, p0, Ld/b/a/c;->c:Ld/b/a/a;

    const/16 v1, 0xc

    iput v1, v0, Ld/b/a/a;->b:I

    .line 6
    :cond_21
    :goto_21
    invoke-direct {p0}, Ld/b/a/c;->m()I

    move-result v0

    iput v0, p0, Ld/b/a/c;->i:I

    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SetAudioRecordConfig: mBufSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Ld/b/a/c;->i:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ld/b/a/a;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AudioRecorder"

    invoke-static {v0, p1}, Lcn/manstep/phonemirrorBox/util/s;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public i()V
    .registers 2

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Ld/b/a/c;->j(Z)V

    return-void
.end method

.method public j(Z)V
    .registers 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AudioRecorder,StartAudioRecord: notice = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Ld/b/a/c;->c:Ld/b/a/a;

    if-eqz v0, :cond_ea

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p0, v0}, Ld/b/a/c;->l(Z)V

    if-eqz p1, :cond_2a

    .line 4
    invoke-static {}, Lcn/manstep/phonemirrorBox/v0/a;->t()Lcn/manstep/phonemirrorBox/v0/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/manstep/phonemirrorBox/v0/a;->p()V

    const-string v0, "AudioRecorder,StartAudioRecord: AUTO_BOX_MODE_REQUEST_MIC"

    .line 5
    invoke-static {v0}, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V

    .line 6
    :cond_2a
    iget v0, p0, Ld/b/a/c;->i:I

    if-lez v0, :cond_a2

    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AudioRecorder,StartAudioRecord: mBufSize = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Ld/b/a/c;->i:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V

    .line 8
    :try_start_44
    invoke-virtual {p0}, Ld/b/a/c;->s()Z

    move-result v0

    iput-boolean v0, p0, Ld/b/a/c;->e:Z

    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AudioRecorder,StartAudioRecord: notice="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", isRecording="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p1, p0, Ld/b/a/c;->e:Z

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V

    .line 10
    iget-boolean p1, p0, Ld/b/a/c;->e:Z

    if-eqz p1, :cond_a2

    sget-boolean p1, Lcn/manstep/phonemirrorBox/p;->H:Z

    if-eqz p1, :cond_a2

    .line 11
    invoke-direct {p0}, Ld/b/a/c;->d()V
    :try_end_73
    .catch Ljava/lang/Exception; {:try_start_44 .. :try_end_73} :catch_74

    goto :goto_a2

    :catch_74
    move-exception p1

    .line 12
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AudioRecorder,StartAudioRecord: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcn/manstep/phonemirrorBox/util/s;->g(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/manstep/phonemirrorBox/util/s;->e(Ljava/lang/String;)V

    const/4 p1, 0x1

    const/16 v0, 0x11

    .line 13
    invoke-static {p1, v0}, Lcn/manstep/phonemirrorBox/BoxInterface/d;->O(II)Z

    const/4 p1, 0x0

    .line 14
    iput-object p1, p0, Ld/b/a/c;->d:Landroid/media/AudioRecord;

    .line 15
    :cond_a2
    :goto_a2
    iget-object p1, p0, Ld/b/a/c;->d:Landroid/media/AudioRecord;

    if-eqz p1, :cond_ea

    .line 16
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "StartAudioRecord: AudioSource="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Ld/b/a/c;->d:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->getAudioSource()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ",ChannelCount="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Ld/b/a/c;->d:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->getChannelCount()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AudioRecorder"

    invoke-static {v0, p1}, Lcn/manstep/phonemirrorBox/util/s;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "StartAudioRecord: SampleRate="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ld/b/a/c;->d:Landroid/media/AudioRecord;

    invoke-virtual {v1}, Landroid/media/AudioRecord;->getSampleRate()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcn/manstep/phonemirrorBox/util/s;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_ea
    return-void
.end method

.method public k()V
    .registers 2

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Ld/b/a/c;->l(Z)V

    return-void
.end method

.method protected l(Z)V
    .registers 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AudioRecorder,StopAudioRecord: notice="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isRecording="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Ld/b/a/c;->e:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V

    .line 2
    iget-boolean v0, p0, Ld/b/a/c;->e:Z

    if-eqz v0, :cond_63

    if-eqz p1, :cond_30

    .line 3
    invoke-static {}, Lcn/manstep/phonemirrorBox/v0/a;->t()Lcn/manstep/phonemirrorBox/v0/a;

    move-result-object p1

    invoke-virtual {p1}, Lcn/manstep/phonemirrorBox/v0/a;->D()V

    const-string p1, "AudioRecorder,StopAudioRecord: AUTO_BOX_MODE_RELEASE_MIC"

    .line 4
    invoke-static {p1}, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V

    :cond_30
    const/4 p1, 0x0

    .line 5
    :try_start_31
    iput-boolean p1, p0, Ld/b/a/c;->e:Z

    .line 6
    iget-object p1, p0, Ld/b/a/c;->d:Landroid/media/AudioRecord;

    invoke-virtual {p1}, Landroid/media/AudioRecord;->stop()V

    .line 7
    iget-object p1, p0, Ld/b/a/c;->d:Landroid/media/AudioRecord;

    invoke-virtual {p1}, Landroid/media/AudioRecord;->release()V

    const/4 p1, 0x0

    .line 8
    iput-object p1, p0, Ld/b/a/c;->d:Landroid/media/AudioRecord;

    .line 9
    sget-boolean p1, Lcn/manstep/phonemirrorBox/p;->H:Z

    if-eqz p1, :cond_63

    .line 10
    invoke-direct {p0}, Ld/b/a/c;->a()V
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_47} :catch_48

    goto :goto_63

    :catch_48
    move-exception p1

    .line 11
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "StopAudioRecord\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcn/manstep/phonemirrorBox/util/s;->g(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AudioRecorder"

    invoke-static {v0, p1}, Lcn/manstep/phonemirrorBox/util/s;->f(Ljava/lang/String;Ljava/lang/String;)V

    :cond_63
    :goto_63
    return-void
.end method

.method public n()I
    .registers 2

    .line 1
    iget-object v0, p0, Ld/b/a/c;->d:Landroid/media/AudioRecord;

    if-eqz v0, :cond_9

    .line 2
    invoke-virtual {v0}, Landroid/media/AudioRecord;->getChannelCount()I

    move-result v0

    return v0

    :cond_9
    const/4 v0, 0x1

    return v0
.end method

.method public o()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Ld/b/a/c;->e:Z

    return v0
.end method

.method public q()I
    .registers 2

    .line 1
    iget-object v0, p0, Ld/b/a/c;->d:Landroid/media/AudioRecord;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_6
    invoke-virtual {v0}, Landroid/media/AudioRecord;->getRecordingState()I

    move-result v0

    return v0
.end method

.method protected r(I)V
    .registers 8

    .line 1
    new-instance v0, Landroid/media/AudioFormat$Builder;

    invoke-direct {v0}, Landroid/media/AudioFormat$Builder;-><init>()V

    iget-object v1, p0, Ld/b/a/c;->c:Ld/b/a/a;

    iget v1, v1, Ld/b/a/a;->c:I

    .line 2
    invoke-virtual {v0, v1}, Landroid/media/AudioFormat$Builder;->setEncoding(I)Landroid/media/AudioFormat$Builder;

    move-result-object v0

    iget-object v1, p0, Ld/b/a/c;->c:Ld/b/a/a;

    iget v1, v1, Ld/b/a/a;->a:I

    .line 3
    invoke-virtual {v0, v1}, Landroid/media/AudioFormat$Builder;->setSampleRate(I)Landroid/media/AudioFormat$Builder;

    move-result-object v0

    .line 4
    invoke-virtual {v0, p1}, Landroid/media/AudioFormat$Builder;->setChannelIndexMask(I)Landroid/media/AudioFormat$Builder;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/media/AudioFormat$Builder;->build()Landroid/media/AudioFormat;

    move-result-object v0

    .line 6
    invoke-virtual {v0}, Landroid/media/AudioFormat;->getChannelCount()I

    move-result v1

    iput v1, p0, Ld/b/a/c;->b:I

    .line 7
    invoke-direct {p0}, Ld/b/a/c;->m()I

    move-result v1

    iput v1, p0, Ld/b/a/c;->i:I

    .line 8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initMultiChannelRecorder: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/Object;

    iget v4, p0, Ld/b/a/c;->b:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v3, v5

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v4, 0x2

    aput-object p1, v3, v4

    iget p1, p0, Ld/b/a/c;->i:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v4, 0x3

    aput-object p1, v3, v4

    iget p1, p0, Ld/b/a/c;->o:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v4, 0x4

    aput-object p1, v3, v4

    const-string p1, "ChannelCount=%d, channelIndexMask=%d(0x%02x), BufSize=%d, audioSource=%d"

    invoke-static {v2, p1, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "AudioRecorder"

    invoke-static {v1, p1}, Lcn/manstep/phonemirrorBox/util/s;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    :try_start_75
    new-instance p1, Landroid/media/AudioRecord$Builder;

    invoke-direct {p1}, Landroid/media/AudioRecord$Builder;-><init>()V

    .line 10
    invoke-virtual {p1, v0}, Landroid/media/AudioRecord$Builder;->setAudioFormat(Landroid/media/AudioFormat;)Landroid/media/AudioRecord$Builder;

    move-result-object p1

    iget v0, p0, Ld/b/a/c;->o:I

    .line 11
    invoke-virtual {p1, v0}, Landroid/media/AudioRecord$Builder;->setAudioSource(I)Landroid/media/AudioRecord$Builder;

    move-result-object p1

    iget v0, p0, Ld/b/a/c;->i:I

    .line 12
    invoke-virtual {p1, v0}, Landroid/media/AudioRecord$Builder;->setBufferSizeInBytes(I)Landroid/media/AudioRecord$Builder;

    move-result-object p1

    .line 13
    invoke-virtual {p1}, Landroid/media/AudioRecord$Builder;->build()Landroid/media/AudioRecord;

    move-result-object p1

    iput-object p1, p0, Ld/b/a/c;->d:Landroid/media/AudioRecord;
    :try_end_90
    .catch Ljava/lang/Exception; {:try_start_75 .. :try_end_90} :catch_91

    goto :goto_ad

    :catch_91
    move-exception p1

    const/4 v0, 0x0

    .line 14
    iput-object v0, p0, Ld/b/a/c;->d:Landroid/media/AudioRecord;

    .line 15
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initMultiChannelRecorder:\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcn/manstep/phonemirrorBox/util/s;->g(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcn/manstep/phonemirrorBox/util/s;->f(Ljava/lang/String;Ljava/lang/String;)V

    :goto_ad
    return-void
.end method

.method protected s()Z
    .registers 10

    .line 1
    invoke-static {}, Lcn/manstep/phonemirrorBox/u;->z()Lcn/manstep/phonemirrorBox/u;

    move-result-object v0

    invoke-virtual {v0}, Lcn/manstep/phonemirrorBox/u;->a0()Z

    move-result v0

    const-string v1, "AudioRecorder"

    if-eqz v0, :cond_2f

    const-string v0, "AudioRecorder,initRecorder: use 48K record"

    .line 2
    invoke-static {v0}, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V

    .line 3
    new-instance v0, Landroid/media/AudioRecord;

    iget v3, p0, Ld/b/a/c;->o:I

    const v4, 0xbb80

    iget-object v2, p0, Ld/b/a/c;->c:Ld/b/a/a;

    iget v5, v2, Ld/b/a/a;->b:I

    iget v6, v2, Ld/b/a/a;->c:I

    const v7, 0xbb80

    iget v2, v2, Ld/b/a/a;->a:I

    div-int/2addr v7, v2

    iget v2, p0, Ld/b/a/c;->i:I

    mul-int v7, v7, v2

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Landroid/media/AudioRecord;-><init>(IIIII)V

    iput-object v0, p0, Ld/b/a/c;->d:Landroid/media/AudioRecord;

    goto :goto_79

    .line 4
    :cond_2f
    invoke-static {}, Lcn/manstep/phonemirrorBox/b0;->i()Lcn/manstep/phonemirrorBox/b0;

    move-result-object v0

    invoke-static {}, Lcn/manstep/phonemirrorBox/u;->z()Lcn/manstep/phonemirrorBox/u;

    move-result-object v2

    invoke-virtual {v2}, Lcn/manstep/phonemirrorBox/u;->D()I

    move-result v2

    const-string v3, "RecordChannel"

    invoke-virtual {v0, v3, v2}, Lcn/manstep/phonemirrorBox/b0;->m(Ljava/lang/String;I)I

    move-result v0

    .line 5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initRecorder: indexMask="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/manstep/phonemirrorBox/util/s;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-lt v2, v3, :cond_65

    if-lez v0, :cond_65

    const/16 v2, 0x10

    if-eq v0, v2, :cond_65

    .line 7
    invoke-virtual {p0, v0}, Ld/b/a/c;->r(I)V

    goto :goto_79

    .line 8
    :cond_65
    new-instance v0, Landroid/media/AudioRecord;

    iget v4, p0, Ld/b/a/c;->o:I

    iget-object v2, p0, Ld/b/a/c;->c:Ld/b/a/a;

    iget v5, v2, Ld/b/a/a;->a:I

    iget v6, v2, Ld/b/a/a;->b:I

    iget v7, v2, Ld/b/a/a;->c:I

    iget v8, p0, Ld/b/a/c;->i:I

    move-object v3, v0

    invoke-direct/range {v3 .. v8}, Landroid/media/AudioRecord;-><init>(IIIII)V

    iput-object v0, p0, Ld/b/a/c;->d:Landroid/media/AudioRecord;

    .line 9
    :goto_79
    iget-object v0, p0, Ld/b/a/c;->d:Landroid/media/AudioRecord;

    const/4 v2, 0x0

    if-nez v0, :cond_84

    const-string v0, "initRecorder: mRecorder == null"

    .line 10
    invoke-static {v1, v0}, Lcn/manstep/phonemirrorBox/util/s;->f(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    .line 11
    :cond_84
    invoke-virtual {v0}, Landroid/media/AudioRecord;->getState()I

    move-result v0

    const/16 v3, 0x1a

    const/4 v4, 0x1

    if-eq v0, v4, :cond_95

    .line 12
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v4, v3, v0}, Lcn/manstep/phonemirrorBox/BoxInterface/d;->P(IILjava/lang/Object;)Z

    return v2

    .line 13
    :cond_95
    iget-object v0, p0, Ld/b/a/c;->d:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->startRecording()V

    .line 14
    iget-object v0, p0, Ld/b/a/c;->d:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->getRecordingState()I

    move-result v0

    const/4 v2, 0x3

    if-eq v0, v2, :cond_ab

    .line 15
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v4, v3, v0}, Lcn/manstep/phonemirrorBox/BoxInterface/d;->P(IILjava/lang/Object;)Z

    goto :goto_b0

    :cond_ab
    const/16 v0, 0x1b

    .line 16
    invoke-static {v4, v0}, Lcn/manstep/phonemirrorBox/BoxInterface/d;->O(II)Z

    .line 17
    :goto_b0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initRecorder: AudioSource="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Ld/b/a/c;->d:Landroid/media/AudioRecord;

    invoke-virtual {v2}, Landroid/media/AudioRecord;->getAudioSource()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Ld/b/a/c;->o:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcn/manstep/phonemirrorBox/util/s;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initRecorder: ChannelCount="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Ld/b/a/c;->d:Landroid/media/AudioRecord;

    invoke-virtual {v2}, Landroid/media/AudioRecord;->getChannelCount()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcn/manstep/phonemirrorBox/util/s;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v4
.end method

.method protected u([BII)I
    .registers 12

    const v0, 0xbb80

    mul-int p3, p3, v0

    .line 1
    iget-object v1, p0, Ld/b/a/c;->c:Ld/b/a/a;

    iget v1, v1, Ld/b/a/a;->a:I

    div-int/2addr p3, v1

    .line 2
    new-array v2, p3, [B

    .line 3
    iget-object v1, p0, Ld/b/a/c;->d:Landroid/media/AudioRecord;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, p3}, Landroid/media/AudioRecord;->read([BII)I

    move-result v4

    if-lez v4, :cond_32

    .line 4
    sget-boolean p3, Lcn/manstep/phonemirrorBox/p;->x:Z

    if-eqz p3, :cond_22

    .line 5
    invoke-static {}, Lcn/manstep/phonemirrorBox/MyApplication;->b()Lcn/manstep/phonemirrorBox/MyApplication;

    move-result-object p3

    const-string v1, "input2_48k_1.pcm"

    invoke-static {v2, v3, v4, v1, p3}, Lcn/manstep/phonemirrorBox/util/n;->z([BIILjava/lang/String;Landroid/content/Context;)Z

    .line 6
    :cond_22
    iget-object p3, p0, Ld/b/a/c;->c:Ld/b/a/a;

    iget p3, p3, Ld/b/a/a;->a:I

    mul-int p3, p3, v4

    div-int/2addr p3, v0

    const/4 v3, 0x0

    move-object v1, p0

    move-object v5, p1

    move v6, p2

    move v7, p3

    .line 7
    invoke-direct/range {v1 .. v7}, Ld/b/a/c;->t([BII[BII)V

    return p3

    :cond_32
    return v4
.end method

.method public v(I)V
    .registers 2

    .line 1
    iput p1, p0, Ld/b/a/c;->o:I

    return-void
.end method

.method public w(I)V
    .registers 4

    .line 1
    iput p1, p0, Ld/b/a/c;->n:I

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AudioRecorder,setMicGain: gain = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "db"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V

    return-void
.end method
