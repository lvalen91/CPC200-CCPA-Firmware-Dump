.class Landroid/support/v4/media/session/d;
.super Ljava/lang/Object;
.source "SourceFile"

.annotation system Ldalvik/annotation/MemberClasses;
  value = {
    Landroid/support/v4/media/session/d$c;,
    Landroid/support/v4/media/session/d$b;,
    Landroid/support/v4/media/session/d$a;
  }
.end annotation

.method public static a(Landroid/support/v4/media/session/d$a;)Ljava/lang/Object;
  .registers 2
  .line 1
    new-instance v0, Landroid/support/v4/media/session/d$b;
    invoke-direct { v0, p0 }, Landroid/support/v4/media/session/d$b;-><init>(Landroid/support/v4/media/session/d$a;)V
    return-object v0
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;
  .registers 3
  .line 1
    new-instance v0, Landroid/media/session/MediaSession;
    invoke-direct { v0, p0, p1 }, Landroid/media/session/MediaSession;-><init>(Landroid/content/Context;Ljava/lang/String;)V
    return-object v0
.end method

.method public static c(Ljava/lang/Object;)Landroid/os/Parcelable;
  .registers 1
  .line 1
    check-cast p0, Landroid/media/session/MediaSession;
    invoke-virtual { p0 }, Landroid/media/session/MediaSession;->getSessionToken()Landroid/media/session/MediaSession$Token;
    move-result-object p0
    return-object p0
.end method

.method public static d(Ljava/lang/Object;)V
  .registers 1
  .line 1
    check-cast p0, Landroid/media/session/MediaSession;
    invoke-virtual { p0 }, Landroid/media/session/MediaSession;->release()V
    return-void
.end method

.method public static e(Ljava/lang/Object;Z)V
  .registers 2
  .line 1
    check-cast p0, Landroid/media/session/MediaSession;
    invoke-virtual { p0, p1 }, Landroid/media/session/MediaSession;->setActive(Z)V
    return-void
.end method

.method public static f(Ljava/lang/Object;Ljava/lang/Object;Landroid/os/Handler;)V
  .registers 3
  .line 1
    check-cast p0, Landroid/media/session/MediaSession;
    check-cast p1, Landroid/media/session/MediaSession$Callback;
    invoke-virtual { p0, p1, p2 }, Landroid/media/session/MediaSession;->setCallback(Landroid/media/session/MediaSession$Callback;Landroid/os/Handler;)V
    return-void
.end method

.method public static g(Ljava/lang/Object;I)V
  .registers 2
  .line 1
    check-cast p0, Landroid/media/session/MediaSession;
    invoke-virtual { p0, p1 }, Landroid/media/session/MediaSession;->setFlags(I)V
    return-void
.end method

.method public static h(Ljava/lang/Object;Landroid/app/PendingIntent;)V
  .registers 2
  .line 1
    check-cast p0, Landroid/media/session/MediaSession;
    invoke-virtual { p0, p1 }, Landroid/media/session/MediaSession;->setMediaButtonReceiver(Landroid/app/PendingIntent;)V
    return-void
.end method

.method public static i(Ljava/lang/Object;Ljava/lang/Object;)V
  .registers 2
  .line 1
    check-cast p0, Landroid/media/session/MediaSession;
    check-cast p1, Landroid/media/session/PlaybackState;
    invoke-virtual { p0, p1 }, Landroid/media/session/MediaSession;->setPlaybackState(Landroid/media/session/PlaybackState;)V
    return-void
.end method
