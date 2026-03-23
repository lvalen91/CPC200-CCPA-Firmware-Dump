.class Landroid/support/v4/media/session/MediaSessionCompat$f;
.super Landroid/support/v4/media/session/MediaSessionCompat$e;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Landroid/support/v4/media/session/MediaSessionCompat;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 8
  name = "f"
.end annotation

.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/content/ComponentName;Landroid/app/PendingIntent;)V
  .registers 5
  .line 1
    invoke-direct { p0, p1, p2, p3, p4 }, Landroid/support/v4/media/session/MediaSessionCompat$e;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/content/ComponentName;Landroid/app/PendingIntent;)V
    return-void
.end method

.method public h(Landroid/support/v4/media/session/MediaSessionCompat$c;Landroid/os/Handler;)V
  .registers 3
  .line 1
    invoke-super { p0, p1, p2 }, Landroid/support/v4/media/session/MediaSessionCompat$e;->h(Landroid/support/v4/media/session/MediaSessionCompat$c;Landroid/os/Handler;)V
    if-nez p1, :L0
  .line 2
    iget-object p1, p0, Landroid/support/v4/media/session/MediaSessionCompat$i;->h:Landroid/media/RemoteControlClient;
    const/4 p2, 0
    invoke-virtual { p1, p2 }, Landroid/media/RemoteControlClient;->setMetadataUpdateListener(Landroid/media/RemoteControlClient$OnMetadataUpdateListener;)V
    goto :L1
  :L0
  .line 3
    new-instance p1, Landroid/support/v4/media/session/MediaSessionCompat$f$a;
    invoke-direct { p1, p0 }, Landroid/support/v4/media/session/MediaSessionCompat$f$a;-><init>(Landroid/support/v4/media/session/MediaSessionCompat$f;)V
  .line 4
    iget-object p2, p0, Landroid/support/v4/media/session/MediaSessionCompat$i;->h:Landroid/media/RemoteControlClient;
    invoke-virtual { p2, p1 }, Landroid/media/RemoteControlClient;->setMetadataUpdateListener(Landroid/media/RemoteControlClient$OnMetadataUpdateListener;)V
  :L1
    return-void
.end method

.method l(Landroid/os/Bundle;)Landroid/media/RemoteControlClient$MetadataEditor;
  .registers 10
  .line 1
    invoke-super { p0, p1 }, Landroid/support/v4/media/session/MediaSessionCompat$i;->l(Landroid/os/Bundle;)Landroid/media/RemoteControlClient$MetadataEditor;
    move-result-object v0
  .line 2
    iget-object v1, p0, Landroid/support/v4/media/session/MediaSessionCompat$i;->t:Landroid/support/v4/media/session/PlaybackStateCompat;
    const-wide/16 v2, 0
    if-nez v1, :L0
    move-wide v4, v2
    goto :L1
  :L0
    invoke-virtual { v1 }, Landroid/support/v4/media/session/PlaybackStateCompat;->k()J
    move-result-wide v4
  :L1
    const-wide/16 v6, 128
    and-long/2addr v4, v6
    const v1, 268435457
    cmp-long v6, v4, v2
    if-eqz v6, :L2
  .line 3
    invoke-virtual { v0, v1 }, Landroid/media/RemoteControlClient$MetadataEditor;->addEditableKey(I)V
  :L2
    if-nez p1, :L3
    return-object v0
  :L3
    const-string v2, "android.media.metadata.YEAR"
  .line 4
    invoke-virtual { p1, v2 }, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z
    move-result v3
    if-eqz v3, :L4
    const/16 v3, 8
  .line 5
    invoke-virtual { p1, v2 }, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J
    move-result-wide v4
  .line 6
    invoke-virtual { v0, v3, v4, v5 }, Landroid/media/RemoteControlClient$MetadataEditor;->putLong(IJ)Landroid/media/RemoteControlClient$MetadataEditor;
  :L4
    const-string v2, "android.media.metadata.RATING"
  .line 7
    invoke-virtual { p1, v2 }, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z
    move-result v3
    if-eqz v3, :L5
    const/16 v3, 101
  .line 8
    invoke-virtual { p1, v2 }, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;
    move-result-object v2
  .line 9
    invoke-virtual { v0, v3, v2 }, Landroid/media/MediaMetadataEditor;->putObject(ILjava/lang/Object;)Landroid/media/MediaMetadataEditor;
  :L5
    const-string v2, "android.media.metadata.USER_RATING"
  .line 10
    invoke-virtual { p1, v2 }, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z
    move-result v3
    if-eqz v3, :L6
  .line 11
    invoke-virtual { p1, v2 }, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;
    move-result-object p1
  .line 12
    invoke-virtual { v0, v1, p1 }, Landroid/media/MediaMetadataEditor;->putObject(ILjava/lang/Object;)Landroid/media/MediaMetadataEditor;
  :L6
    return-object v0
.end method

.method n(J)I
  .registers 7
  .line 1
    invoke-super { p0, p1, p2 }, Landroid/support/v4/media/session/MediaSessionCompat$e;->n(J)I
    move-result v0
    const-wide/16 v1, 128
    and-long/2addr p1, v1
    const-wide/16 v1, 0
    cmp-long v3, p1, v1
    if-eqz v3, :L0
    or-int/lit16 v0, v0, 512
  :L0
    return v0
.end method
