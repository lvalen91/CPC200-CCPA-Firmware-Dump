.class Landroid/support/v4/media/session/MediaSessionCompat$e$a;
.super Ljava/lang/Object;
.implements Landroid/media/RemoteControlClient$OnPlaybackPositionUpdateListener;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingMethod;
  value = Landroid/support/v4/media/session/MediaSessionCompat$e;->h(Landroid/support/v4/media/session/MediaSessionCompat$c;Landroid/os/Handler;)V
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = null
.end annotation

.field final synthetic a:Landroid/support/v4/media/session/MediaSessionCompat$e;

.method constructor <init>(Landroid/support/v4/media/session/MediaSessionCompat$e;)V
  .registers 2
  .line 1
    iput-object p1, p0, Landroid/support/v4/media/session/MediaSessionCompat$e$a;->a:Landroid/support/v4/media/session/MediaSessionCompat$e;
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public onPlaybackPositionUpdate(J)V
  .registers 9
  .line 1
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$e$a;->a:Landroid/support/v4/media/session/MediaSessionCompat$e;
  .line 2
    invoke-static { p1, p2 }, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    move-result-object v4
    const/16 v1, 18
    const/4 v2, -1
    const/4 v3, -1
    const/4 v5, 0
  .line 3
    invoke-virtual/range { v0 .. v5 }, Landroid/support/v4/media/session/MediaSessionCompat$i;->o(IIILjava/lang/Object;Landroid/os/Bundle;)V
    return-void
.end method
