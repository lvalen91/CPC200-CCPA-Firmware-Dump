.class Landroid/support/v4/media/session/MediaSessionCompat$e;
.super Landroid/support/v4/media/session/MediaSessionCompat$i;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Landroid/support/v4/media/session/MediaSessionCompat;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 8
  name = "e"
.end annotation

.field private static F:Z = true

.method static constructor <clinit>()V
  .registers 0
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/content/ComponentName;Landroid/app/PendingIntent;)V
  .registers 5
  .line 1
    invoke-direct { p0, p1, p2, p3, p4 }, Landroid/support/v4/media/session/MediaSessionCompat$i;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/content/ComponentName;Landroid/app/PendingIntent;)V
    return-void
.end method

.method public h(Landroid/support/v4/media/session/MediaSessionCompat$c;Landroid/os/Handler;)V
  .registers 3
  .line 1
    invoke-super { p0, p1, p2 }, Landroid/support/v4/media/session/MediaSessionCompat$i;->h(Landroid/support/v4/media/session/MediaSessionCompat$c;Landroid/os/Handler;)V
    if-nez p1, :L0
  .line 2
    iget-object p1, p0, Landroid/support/v4/media/session/MediaSessionCompat$i;->h:Landroid/media/RemoteControlClient;
    const/4 p2, 0
    invoke-virtual { p1, p2 }, Landroid/media/RemoteControlClient;->setPlaybackPositionUpdateListener(Landroid/media/RemoteControlClient$OnPlaybackPositionUpdateListener;)V
    goto :L1
  :L0
  .line 3
    new-instance p1, Landroid/support/v4/media/session/MediaSessionCompat$e$a;
    invoke-direct { p1, p0 }, Landroid/support/v4/media/session/MediaSessionCompat$e$a;-><init>(Landroid/support/v4/media/session/MediaSessionCompat$e;)V
  .line 4
    iget-object p2, p0, Landroid/support/v4/media/session/MediaSessionCompat$i;->h:Landroid/media/RemoteControlClient;
    invoke-virtual { p2, p1 }, Landroid/media/RemoteControlClient;->setPlaybackPositionUpdateListener(Landroid/media/RemoteControlClient$OnPlaybackPositionUpdateListener;)V
  :L1
    return-void
.end method

.method n(J)I
  .registers 7
  .line 1
    invoke-super { p0, p1, p2 }, Landroid/support/v4/media/session/MediaSessionCompat$i;->n(J)I
    move-result v0
    const-wide/16 v1, 256
    and-long/2addr p1, v1
    const-wide/16 v1, 0
    cmp-long v3, p1, v1
    if-eqz v3, :L0
    or-int/lit16 v0, v0, 256
  :L0
    return v0
.end method

.method p(Landroid/app/PendingIntent;Landroid/content/ComponentName;)V
  .catch Ljava/lang/NullPointerException; { :L0 .. :L1 } :L2
  .registers 4
  .line 1
    sget-boolean v0, Landroid/support/v4/media/session/MediaSessionCompat$e;->F:Z
    if-eqz v0, :L3
  :L0
  .line 2
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$i;->g:Landroid/media/AudioManager;
    invoke-virtual { v0, p1 }, Landroid/media/AudioManager;->registerMediaButtonEventReceiver(Landroid/app/PendingIntent;)V
  :L1
    goto :L3
  :L2
    const/4 v0, 0
  .line 3
    sput-boolean v0, Landroid/support/v4/media/session/MediaSessionCompat$e;->F:Z
  :L3
  .line 4
    sget-boolean v0, Landroid/support/v4/media/session/MediaSessionCompat$e;->F:Z
    if-nez v0, :L4
  .line 5
    invoke-super { p0, p1, p2 }, Landroid/support/v4/media/session/MediaSessionCompat$i;->p(Landroid/app/PendingIntent;Landroid/content/ComponentName;)V
  :L4
    return-void
.end method

.method u(Landroid/support/v4/media/session/PlaybackStateCompat;)V
  .registers 12
  .line 1
    invoke-virtual { p1 }, Landroid/support/v4/media/session/PlaybackStateCompat;->o()J
    move-result-wide v0
  .line 2
    invoke-virtual { p1 }, Landroid/support/v4/media/session/PlaybackStateCompat;->m()F
    move-result v2
  .line 3
    invoke-virtual { p1 }, Landroid/support/v4/media/session/PlaybackStateCompat;->l()J
    move-result-wide v3
  .line 4
    invoke-static { }, Landroid/os/SystemClock;->elapsedRealtime()J
    move-result-wide v5
  .line 5
    invoke-virtual { p1 }, Landroid/support/v4/media/session/PlaybackStateCompat;->p()I
    move-result v7
    const/4 v8, 3
    if-ne v7, v8, :L1
    const-wide/16 v7, 0
    cmp-long v9, v0, v7
    if-lez v9, :L1
    cmp-long v9, v3, v7
    if-lez v9, :L0
    sub-long v7, v5, v3
    const/4 v3, 0
    cmpl-float v3, v2, v3
    if-lez v3, :L0
    const/high16 v3, 16256
    cmpl-float v3, v2, v3
    if-eqz v3, :L0
    long-to-float v3, v7
    mul-float v3, v3, v2
    float-to-long v7, v3
  :L0
    add-long/2addr v0, v7
  :L1
  .line 6
    iget-object v3, p0, Landroid/support/v4/media/session/MediaSessionCompat$i;->h:Landroid/media/RemoteControlClient;
    invoke-virtual { p1 }, Landroid/support/v4/media/session/PlaybackStateCompat;->p()I
    move-result p1
    invoke-virtual { p0, p1 }, Landroid/support/v4/media/session/MediaSessionCompat$i;->m(I)I
    move-result p1
    invoke-virtual { v3, p1, v0, v1, v2 }, Landroid/media/RemoteControlClient;->setPlaybackState(IJF)V
    return-void
.end method

.method w(Landroid/app/PendingIntent;Landroid/content/ComponentName;)V
  .registers 4
  .line 1
    sget-boolean v0, Landroid/support/v4/media/session/MediaSessionCompat$e;->F:Z
    if-eqz v0, :L0
  .line 2
    iget-object p2, p0, Landroid/support/v4/media/session/MediaSessionCompat$i;->g:Landroid/media/AudioManager;
    invoke-virtual { p2, p1 }, Landroid/media/AudioManager;->unregisterMediaButtonEventReceiver(Landroid/app/PendingIntent;)V
    goto :L1
  :L0
  .line 3
    invoke-super { p0, p1, p2 }, Landroid/support/v4/media/session/MediaSessionCompat$i;->w(Landroid/app/PendingIntent;Landroid/content/ComponentName;)V
  :L1
    return-void
.end method
