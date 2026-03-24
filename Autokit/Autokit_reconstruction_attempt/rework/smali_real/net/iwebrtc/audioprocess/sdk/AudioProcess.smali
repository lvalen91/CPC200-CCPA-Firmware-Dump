.class public Lnet/iwebrtc/audioprocess/sdk/AudioProcess;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final MicGain:I = 0x6

.field public static final PhoneCallGain:I = 0xc

.field public static RecordDelay:I = 0x0

.field private static final TAG:Ljava/lang/String; = "AudioProcess"


# instance fields
.field private nativeAudioAgcHandle:J

.field private nativeAudioProcess:J


# direct methods
.method static constructor <clinit>()V
    .registers 6

    const-string v0, "AudioProcess"

    .line 1
    invoke-static {}, Lcn/manstep/phonemirrorBox/p;->b()I

    move-result v1

    sput v1, Lnet/iwebrtc/audioprocess/sdk/AudioProcess;->RecordDelay:I

    .line 2
    sget-boolean v1, Lcn/manstep/phonemirrorBox/p;->H:Z

    if-eqz v1, :cond_66

    const/4 v1, 0x0

    :try_start_d
    const-string v2, "htlog"

    .line 3
    invoke-static {v2}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_12
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_d .. :try_end_12} :catch_4b
    .catch Ljava/lang/Error; {:try_start_d .. :try_end_12} :catch_2f
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_12} :catch_13

    goto :goto_66

    :catch_13
    move-exception v2

    .line 4
    sput-boolean v1, Lcn/manstep/phonemirrorBox/p;->H:Z

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "3 Couldn\'t load lib: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/manstep/phonemirrorBox/util/s;->f(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_66

    :catch_2f
    move-exception v2

    .line 6
    sput-boolean v1, Lcn/manstep/phonemirrorBox/p;->H:Z

    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "2 Couldn\'t load lib: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Error;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/manstep/phonemirrorBox/util/s;->f(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_66

    :catch_4b
    move-exception v2

    .line 8
    sput-boolean v1, Lcn/manstep/phonemirrorBox/p;->H:Z

    .line 9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "1 Couldn\'t load lib: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/UnsatisfiedLinkError;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/manstep/phonemirrorBox/util/s;->f(Ljava/lang/String;Ljava/lang/String;)V

    :cond_66
    :goto_66
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static calculateBufferSize(III)I
    .registers 3

    mul-int p0, p0, p2

    mul-int p0, p0, p1

    .line 1
    div-int/lit8 p0, p0, 0x64

    return p0
.end method

.method private native create()I
.end method


# virtual methods
.method public Destroy()V
    .registers 2

    .line 1
    sget-boolean v0, Lcn/manstep/phonemirrorBox/p;->H:Z

    if-eqz v0, :cond_7

    .line 2
    invoke-virtual {p0}, Lnet/iwebrtc/audioprocess/sdk/AudioProcess;->destroy()Z

    :cond_7
    return-void
.end method

.method public DestroyAgc()V
    .registers 3

    .line 1
    sget-boolean v0, Lcn/manstep/phonemirrorBox/p;->H:Z

    if-eqz v0, :cond_9

    .line 2
    iget-wide v0, p0, Lnet/iwebrtc/audioprocess/sdk/AudioProcess;->nativeAudioAgcHandle:J

    invoke-virtual {p0, v0, v1}, Lnet/iwebrtc/audioprocess/sdk/AudioProcess;->destroyAgc(J)Z

    :cond_9
    return-void
.end method

.method public Init(I)V
    .registers 7

    const-string v0, "Init:"

    .line 1
    sget-boolean v1, Lcn/manstep/phonemirrorBox/p;->H:Z

    const-string v2, "AudioProcess"

    if-eqz v1, :cond_51

    const/4 v1, 0x0

    .line 2
    :try_start_9
    invoke-direct {p0}, Lnet/iwebrtc/audioprocess/sdk/AudioProcess;->create()I

    move-result v3

    int-to-long v3, v3

    iput-wide v3, p0, Lnet/iwebrtc/audioprocess/sdk/AudioProcess;->nativeAudioProcess:J

    const/16 v3, 0x64

    .line 3
    invoke-virtual {p0, p1, v3}, Lnet/iwebrtc/audioprocess/sdk/AudioProcess;->set_config(II)I

    .line 4
    invoke-virtual {p0}, Lnet/iwebrtc/audioprocess/sdk/AudioProcess;->init()I

    const-string p1, "AudioProcess,Init: !!!"

    .line 5
    invoke-static {p1}, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V
    :try_end_1d
    .catch Ljava/lang/Error; {:try_start_9 .. :try_end_1d} :catch_38
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_1d} :catch_1e

    goto :goto_51

    :catch_1e
    move-exception p1

    .line 6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcn/manstep/phonemirrorBox/util/s;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    sput-boolean v1, Lcn/manstep/phonemirrorBox/p;->H:Z

    goto :goto_51

    :catch_38
    move-exception p1

    .line 8
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcn/manstep/phonemirrorBox/util/s;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    sput-boolean v1, Lcn/manstep/phonemirrorBox/p;->H:Z

    .line 10
    :cond_51
    :goto_51
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Init: Config.bEableAudioAEC="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v0, Lcn/manstep/phonemirrorBox/p;->H:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcn/manstep/phonemirrorBox/util/s;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public InitAgc(II)V
    .registers 4

    .line 1
    sget-boolean v0, Lcn/manstep/phonemirrorBox/p;->H:Z

    if-eqz v0, :cond_a

    .line 2
    invoke-virtual {p0, p1, p2}, Lnet/iwebrtc/audioprocess/sdk/AudioProcess;->initAgc(II)J

    move-result-wide p1

    iput-wide p1, p0, Lnet/iwebrtc/audioprocess/sdk/AudioProcess;->nativeAudioAgcHandle:J

    :cond_a
    return-void
.end method

.method public ProcessData([B[B[B)V
    .registers 11

    .line 1
    sget-boolean v0, Lcn/manstep/phonemirrorBox/p;->H:Z

    if-eqz v0, :cond_e

    .line 2
    array-length v3, p1

    array-length v5, p2

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    move-object v6, p3

    invoke-virtual/range {v1 .. v6}, Lnet/iwebrtc/audioprocess/sdk/AudioProcess;->processData([BI[BI[B)Z

    goto :goto_13

    .line 3
    :cond_e
    array-length p1, p2

    const/4 v0, 0x0

    invoke-static {p2, v0, p3, v0, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_13
    return-void
.end method

.method public ProcessDataAgc([B)V
    .registers 5

    .line 1
    sget-boolean v0, Lcn/manstep/phonemirrorBox/p;->H:Z

    if-eqz v0, :cond_a

    .line 2
    iget-wide v0, p0, Lnet/iwebrtc/audioprocess/sdk/AudioProcess;->nativeAudioAgcHandle:J

    array-length v2, p1

    invoke-virtual {p0, v0, v1, p1, v2}, Lnet/iwebrtc/audioprocess/sdk/AudioProcess;->processDataAgc(J[BI)Z

    :cond_a
    return-void
.end method

.method public native destroy()Z
.end method

.method public native destroyAgc(J)Z
.end method

.method public native init()I
.end method

.method public native initAgc(II)J
.end method

.method public native processData([BI[BI[B)Z
.end method

.method public native processDataAgc(J[BI)Z
.end method

.method public native set_config(II)I
.end method
