.class Ld/b/a/b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld/b/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Ld/b/a/b;


# direct methods
.method constructor <init>(Ld/b/a/b;)V
    .registers 2

    .line 1
    iput-object p1, p0, Ld/b/a/b$a;->b:Ld/b/a/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    .line 1
    iget-object v0, p0, Ld/b/a/b$a;->b:Ld/b/a/b;

    invoke-static {v0}, Ld/b/a/b;->o(Ld/b/a/b;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2
    :goto_7
    :try_start_7
    iget-object v1, p0, Ld/b/a/b$a;->b:Ld/b/a/b;

    invoke-static {v1}, Ld/b/a/b;->p(Ld/b/a/b;)Lcn/manstep/phonemirrorBox/util/i;

    move-result-object v1

    invoke-virtual {v1}, Lcn/manstep/phonemirrorBox/util/i;->g()I

    move-result v1

    const/16 v2, 0x32

    const/4 v3, 0x0

    if-le v1, v2, :cond_3e

    .line 3
    iget-object v1, p0, Ld/b/a/b$a;->b:Ld/b/a/b;

    invoke-static {v1}, Ld/b/a/b;->p(Ld/b/a/b;)Lcn/manstep/phonemirrorBox/util/i;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcn/manstep/phonemirrorBox/util/i;->f(I)V

    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AudioPlayer,delayPlayRunnable: AudioTrack get data vector size:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Ld/b/a/b$a;->b:Ld/b/a/b;

    invoke-static {v2}, Ld/b/a/b;->p(Ld/b/a/b;)Lcn/manstep/phonemirrorBox/util/i;

    move-result-object v2

    invoke-virtual {v2}, Lcn/manstep/phonemirrorBox/util/i;->g()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/manstep/phonemirrorBox/util/s;->e(Ljava/lang/String;)V

    goto :goto_7

    .line 5
    :cond_3e
    iget-object v1, p0, Ld/b/a/b$a;->b:Ld/b/a/b;

    invoke-static {v1}, Ld/b/a/b;->p(Ld/b/a/b;)Lcn/manstep/phonemirrorBox/util/i;

    move-result-object v1

    invoke-virtual {v1}, Lcn/manstep/phonemirrorBox/util/i;->e()Z

    move-result v1

    if-nez v1, :cond_55

    .line 6
    iget-object v1, p0, Ld/b/a/b$a;->b:Ld/b/a/b;

    invoke-static {v1}, Ld/b/a/b;->p(Ld/b/a/b;)Lcn/manstep/phonemirrorBox/util/i;

    move-result-object v1

    invoke-virtual {v1}, Lcn/manstep/phonemirrorBox/util/i;->c()[B

    move-result-object v1

    goto :goto_56

    :cond_55
    const/4 v1, 0x0

    .line 7
    :goto_56
    monitor-exit v0
    :try_end_57
    .catchall {:try_start_7 .. :try_end_57} :catchall_133

    if-eqz v1, :cond_112

    .line 8
    iget-object v0, p0, Ld/b/a/b$a;->b:Ld/b/a/b;

    invoke-static {v0}, Ld/b/a/b;->q(Ld/b/a/b;)Landroid/media/AudioTrack;

    move-result-object v0

    if-eqz v0, :cond_112

    .line 9
    iget-object v0, p0, Ld/b/a/b$a;->b:Ld/b/a/b;

    monitor-enter v0

    .line 10
    :try_start_64
    iget-object v2, p0, Ld/b/a/b$a;->b:Ld/b/a/b;

    invoke-static {v2}, Ld/b/a/b;->r(Ld/b/a/b;)Z

    move-result v2

    if-eqz v2, :cond_10d

    .line 11
    iget-object v2, p0, Ld/b/a/b$a;->b:Ld/b/a/b;

    invoke-static {v2}, Ld/b/a/b;->q(Ld/b/a/b;)Landroid/media/AudioTrack;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/AudioTrack;->getState()I

    move-result v2

    if-nez v2, :cond_81

    const-string v1, "AudioPlayer"

    const-string v2, "delayPlayRunnable->run: AudioTrack STATE_UNINITIALIZED"

    .line 12
    invoke-static {v1, v2}, Lcn/manstep/phonemirrorBox/util/s;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    monitor-exit v0
    :try_end_80
    .catchall {:try_start_64 .. :try_end_80} :catchall_10f

    return-void

    :cond_81
    const/4 v2, -0x1

    .line 14
    :try_start_82
    iget-object v4, p0, Ld/b/a/b$a;->b:Ld/b/a/b;

    invoke-static {v4}, Ld/b/a/b;->q(Ld/b/a/b;)Landroid/media/AudioTrack;

    move-result-object v4

    array-length v5, v1

    invoke-virtual {v4, v1, v3, v5}, Landroid/media/AudioTrack;->write([BII)I

    move-result v2
    :try_end_8d
    .catch Ljava/lang/Exception; {:try_start_82 .. :try_end_8d} :catch_90
    .catch Ljava/lang/Error; {:try_start_82 .. :try_end_8d} :catch_8e
    .catchall {:try_start_82 .. :try_end_8d} :catchall_10f

    goto :goto_ab

    :catch_8e
    move-exception v4

    goto :goto_91

    :catch_90
    move-exception v4

    :goto_91
    :try_start_91
    const-string v5, "AudioPlayer"

    .line 15
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "delayPlayRunnable->run: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Lcn/manstep/phonemirrorBox/util/s;->g(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lcn/manstep/phonemirrorBox/util/s;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    :goto_ab
    array-length v4, v1

    if-eq v2, v4, :cond_10d

    .line 17
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "AudioPlayer,delayPlayRunnable: mAudioTrack Write data failed: ret = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", data.length = "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v2, v1

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcn/manstep/phonemirrorBox/util/s;->e(Ljava/lang/String;)V

    .line 18
    iget-object v2, p0, Ld/b/a/b$a;->b:Ld/b/a/b;

    invoke-static {v2}, Ld/b/a/b;->s(Ld/b/a/b;)V
    :try_end_d0
    .catchall {:try_start_91 .. :try_end_d0} :catchall_10f

    .line 19
    :try_start_d0
    iget-object v2, p0, Ld/b/a/b$a;->b:Ld/b/a/b;

    invoke-static {v2}, Ld/b/a/b;->t(Ld/b/a/b;)Z

    move-result v2

    if-eqz v2, :cond_e4

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-lt v2, v4, :cond_e4

    .line 20
    iget-object v2, p0, Ld/b/a/b$a;->b:Ld/b/a/b;

    invoke-virtual {v2}, Ld/b/a/b;->g()V

    goto :goto_e9

    .line 21
    :cond_e4
    iget-object v2, p0, Ld/b/a/b$a;->b:Ld/b/a/b;

    invoke-virtual {v2}, Ld/b/a/b;->h()V

    .line 22
    :goto_e9
    iget-object v2, p0, Ld/b/a/b$a;->b:Ld/b/a/b;

    invoke-static {v2}, Ld/b/a/b;->q(Ld/b/a/b;)Landroid/media/AudioTrack;

    move-result-object v2

    array-length v4, v1

    invoke-virtual {v2, v1, v3, v4}, Landroid/media/AudioTrack;->write([BII)I
    :try_end_f3
    .catch Ljava/lang/Exception; {:try_start_d0 .. :try_end_f3} :catch_f4
    .catchall {:try_start_d0 .. :try_end_f3} :catchall_10f

    goto :goto_10d

    :catch_f4
    move-exception v1

    .line 23
    :try_start_f5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AudioPlayer,delayPlayRunnable: \n"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/manstep/phonemirrorBox/util/s;->e(Ljava/lang/String;)V

    .line 24
    :cond_10d
    :goto_10d
    monitor-exit v0

    goto :goto_112

    :catchall_10f
    move-exception v1

    monitor-exit v0
    :try_end_111
    .catchall {:try_start_f5 .. :try_end_111} :catchall_10f

    throw v1

    .line 25
    :cond_112
    :goto_112
    iget-object v0, p0, Ld/b/a/b$a;->b:Ld/b/a/b;

    invoke-static {v0}, Ld/b/a/b;->o(Ld/b/a/b;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 26
    :try_start_119
    iget-object v0, p0, Ld/b/a/b$a;->b:Ld/b/a/b;

    invoke-static {v0}, Ld/b/a/b;->p(Ld/b/a/b;)Lcn/manstep/phonemirrorBox/util/i;

    move-result-object v0

    invoke-virtual {v0}, Lcn/manstep/phonemirrorBox/util/i;->e()Z

    move-result v0

    if-nez v0, :cond_12e

    .line 27
    iget-object v0, p0, Ld/b/a/b$a;->b:Ld/b/a/b;

    invoke-static {v0}, Ld/b/a/b;->p(Ld/b/a/b;)Lcn/manstep/phonemirrorBox/util/i;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcn/manstep/phonemirrorBox/util/i;->f(I)V

    .line 28
    :cond_12e
    monitor-exit v1

    return-void

    :catchall_130
    move-exception v0

    monitor-exit v1
    :try_end_132
    .catchall {:try_start_119 .. :try_end_132} :catchall_130

    throw v0

    :catchall_133
    move-exception v1

    .line 29
    :try_start_134
    monitor-exit v0
    :try_end_135
    .catchall {:try_start_134 .. :try_end_135} :catchall_133

    goto :goto_137

    :goto_136
    throw v1

    :goto_137
    goto :goto_136
.end method
