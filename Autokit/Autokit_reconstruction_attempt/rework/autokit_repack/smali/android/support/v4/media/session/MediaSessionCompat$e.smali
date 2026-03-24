.class Landroid/support/v4/media/session/MediaSessionCompat$e;
.super Landroid/support/v4/media/session/MediaSessionCompat$i;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/session/MediaSessionCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "e"
.end annotation


# static fields
.field private static F:Z = true


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/content/ComponentName;Landroid/app/PendingIntent;)V
    .registers 5

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/support/v4/media/session/MediaSessionCompat$i;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/content/ComponentName;Landroid/app/PendingIntent;)V

    return-void
.end method


# virtual methods
.method public h(Landroid/support/v4/media/session/MediaSessionCompat$c;Landroid/os/Handler;)V
    .registers 3

    .line 1
    invoke-super {p0, p1, p2}, Landroid/support/v4/media/session/MediaSessionCompat$i;->h(Landroid/support/v4/media/session/MediaSessionCompat$c;Landroid/os/Handler;)V

    if-nez p1, :cond_c

    .line 2
    iget-object p1, p0, Landroid/support/v4/media/session/MediaSessionCompat$i;->h:Landroid/media/RemoteControlClient;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/media/RemoteControlClient;->setPlaybackPositionUpdateListener(Landroid/media/RemoteControlClient$OnPlaybackPositionUpdateListener;)V

    goto :goto_16

    .line 3
    :cond_c
    new-instance p1, Landroid/support/v4/media/session/MediaSessionCompat$e$a;

    invoke-direct {p1, p0}, Landroid/support/v4/media/session/MediaSessionCompat$e$a;-><init>(Landroid/support/v4/media/session/MediaSessionCompat$e;)V

    .line 4
    iget-object p2, p0, Landroid/support/v4/media/session/MediaSessionCompat$i;->h:Landroid/media/RemoteControlClient;

    invoke-virtual {p2, p1}, Landroid/media/RemoteControlClient;->setPlaybackPositionUpdateListener(Landroid/media/RemoteControlClient$OnPlaybackPositionUpdateListener;)V

    :goto_16
    return-void
.end method

.method n(J)I
    .registers 7

    .line 1
    invoke-super {p0, p1, p2}, Landroid/support/v4/media/session/MediaSessionCompat$i;->n(J)I

    move-result v0

    const-wide/16 v1, 0x100

    and-long/2addr p1, v1

    const-wide/16 v1, 0x0

    cmp-long v3, p1, v1

    if-eqz v3, :cond_f

    or-int/lit16 v0, v0, 0x100

    :cond_f
    return v0
.end method

.method p(Landroid/app/PendingIntent;Landroid/content/ComponentName;)V
    .registers 4

    .line 1
    sget-boolean v0, Landroid/support/v4/media/session/MediaSessionCompat$e;->F:Z

    if-eqz v0, :cond_d

    .line 2
    :try_start_4
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$i;->g:Landroid/media/AudioManager;

    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->registerMediaButtonEventReceiver(Landroid/app/PendingIntent;)V
    :try_end_9
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_9} :catch_a

    goto :goto_d

    :catch_a
    const/4 v0, 0x0

    .line 3
    sput-boolean v0, Landroid/support/v4/media/session/MediaSessionCompat$e;->F:Z

    .line 4
    :cond_d
    :goto_d
    sget-boolean v0, Landroid/support/v4/media/session/MediaSessionCompat$e;->F:Z

    if-nez v0, :cond_14

    .line 5
    invoke-super {p0, p1, p2}, Landroid/support/v4/media/session/MediaSessionCompat$i;->p(Landroid/app/PendingIntent;Landroid/content/ComponentName;)V

    :cond_14
    return-void
.end method

.method u(Landroid/support/v4/media/session/PlaybackStateCompat;)V
    .registers 12

    .line 1
    invoke-virtual {p1}, Landroid/support/v4/media/session/PlaybackStateCompat;->o()J

    move-result-wide v0

    .line 2
    invoke-virtual {p1}, Landroid/support/v4/media/session/PlaybackStateCompat;->m()F

    move-result v2

    .line 3
    invoke-virtual {p1}, Landroid/support/v4/media/session/PlaybackStateCompat;->l()J

    move-result-wide v3

    .line 4
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    .line 5
    invoke-virtual {p1}, Landroid/support/v4/media/session/PlaybackStateCompat;->p()I

    move-result v7

    const/4 v8, 0x3

    if-ne v7, v8, :cond_33

    const-wide/16 v7, 0x0

    cmp-long v9, v0, v7

    if-lez v9, :cond_33

    cmp-long v9, v3, v7

    if-lez v9, :cond_32

    sub-long v7, v5, v3

    const/4 v3, 0x0

    cmpl-float v3, v2, v3

    if-lez v3, :cond_32

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v3, v2, v3

    if-eqz v3, :cond_32

    long-to-float v3, v7

    mul-float v3, v3, v2

    float-to-long v7, v3

    :cond_32
    add-long/2addr v0, v7

    .line 6
    :cond_33
    iget-object v3, p0, Landroid/support/v4/media/session/MediaSessionCompat$i;->h:Landroid/media/RemoteControlClient;

    invoke-virtual {p1}, Landroid/support/v4/media/session/PlaybackStateCompat;->p()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/support/v4/media/session/MediaSessionCompat$i;->m(I)I

    move-result p1

    invoke-virtual {v3, p1, v0, v1, v2}, Landroid/media/RemoteControlClient;->setPlaybackState(IJF)V

    return-void
.end method

.method w(Landroid/app/PendingIntent;Landroid/content/ComponentName;)V
    .registers 4

    .line 1
    sget-boolean v0, Landroid/support/v4/media/session/MediaSessionCompat$e;->F:Z

    if-eqz v0, :cond_a

    .line 2
    iget-object p2, p0, Landroid/support/v4/media/session/MediaSessionCompat$i;->g:Landroid/media/AudioManager;

    invoke-virtual {p2, p1}, Landroid/media/AudioManager;->unregisterMediaButtonEventReceiver(Landroid/app/PendingIntent;)V

    goto :goto_d

    .line 3
    :cond_a
    invoke-super {p0, p1, p2}, Landroid/support/v4/media/session/MediaSessionCompat$i;->w(Landroid/app/PendingIntent;Landroid/content/ComponentName;)V

    :goto_d
    return-void
.end method
