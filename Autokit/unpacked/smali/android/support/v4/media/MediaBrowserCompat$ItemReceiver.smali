.class Landroid/support/v4/media/MediaBrowserCompat$ItemReceiver;
.super Lb/a/a/a/b;
.source "SourceFile"

.field private final d:Ljava/lang/String;

.field private final e:Landroid/support/v4/media/b;

.method protected j(ILandroid/os/Bundle;)V
  .registers 4
  .line 1
    invoke-static { p2 }, Landroid/support/v4/media/session/MediaSessionCompat;->a(Landroid/os/Bundle;)V
    if-nez p1, :L4
    if-eqz p2, :L4
    const-string p1, "media_item"
  .line 2
    invoke-virtual { p2, p1 }, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z
    move-result v0
    if-nez v0, :L0
    goto :L4
  :L0
  .line 3
    invoke-virtual { p2, p1 }, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;
    move-result-object p1
    if-eqz p1, :L2
  .line 4
    instance-of p2, p1, Landroid/support/v4/media/MediaBrowserCompat$MediaItem;
    if-eqz p2, :L1
    goto :L2
  :L1
  .line 5
    iget-object p1, p0, Landroid/support/v4/media/MediaBrowserCompat$ItemReceiver;->e:Landroid/support/v4/media/b;
    iget-object p2, p0, Landroid/support/v4/media/MediaBrowserCompat$ItemReceiver;->d:Ljava/lang/String;
    invoke-virtual { p1, p2 }, Landroid/support/v4/media/b;->a(Ljava/lang/String;)V
    goto :L3
  :L2
  .line 6
    iget-object p2, p0, Landroid/support/v4/media/MediaBrowserCompat$ItemReceiver;->e:Landroid/support/v4/media/b;
    check-cast p1, Landroid/support/v4/media/MediaBrowserCompat$MediaItem;
    invoke-virtual { p2, p1 }, Landroid/support/v4/media/b;->b(Landroid/support/v4/media/MediaBrowserCompat$MediaItem;)V
  :L3
    return-void
  :L4
  .line 7
    iget-object p1, p0, Landroid/support/v4/media/MediaBrowserCompat$ItemReceiver;->e:Landroid/support/v4/media/b;
    iget-object p2, p0, Landroid/support/v4/media/MediaBrowserCompat$ItemReceiver;->d:Ljava/lang/String;
    invoke-virtual { p1, p2 }, Landroid/support/v4/media/b;->a(Ljava/lang/String;)V
    return-void
.end method
