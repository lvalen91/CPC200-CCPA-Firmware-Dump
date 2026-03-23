.class Landroid/support/v4/media/MediaBrowserCompat$SearchResultReceiver;
.super Lb/a/a/a/b;
.source "SourceFile"

.field private final d:Ljava/lang/String;

.field private final e:Landroid/os/Bundle;

.field private final f:Landroid/support/v4/media/c;

.method protected j(ILandroid/os/Bundle;)V
  .registers 6
  .line 1
    invoke-static { p2 }, Landroid/support/v4/media/session/MediaSessionCompat;->a(Landroid/os/Bundle;)V
    if-nez p1, :L3
    if-eqz p2, :L3
    const-string p1, "search_results"
  .line 2
    invoke-virtual { p2, p1 }, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z
    move-result v0
    if-nez v0, :L0
    goto :L3
  :L0
  .line 3
    invoke-virtual { p2, p1 }, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;
    move-result-object p1
    const/4 p2, 0
    if-eqz p1, :L2
  .line 4
    new-instance p2, Ljava/util/ArrayList;
    invoke-direct { p2 }, Ljava/util/ArrayList;-><init>()V
  .line 5
    array-length v0, p1
    const/4 v1, 0
  :L1
    if-ge v1, v0, :L2
    aget-object v2, p1, v1
  .line 6
    check-cast v2, Landroid/support/v4/media/MediaBrowserCompat$MediaItem;
    invoke-interface { p2, v2 }, Ljava/util/List;->add(Ljava/lang/Object;)Z
    add-int/lit8 v1, v1, 1
    goto :L1
  :L2
  .line 7
    iget-object p1, p0, Landroid/support/v4/media/MediaBrowserCompat$SearchResultReceiver;->f:Landroid/support/v4/media/c;
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$SearchResultReceiver;->d:Ljava/lang/String;
    iget-object v1, p0, Landroid/support/v4/media/MediaBrowserCompat$SearchResultReceiver;->e:Landroid/os/Bundle;
    invoke-virtual { p1, v0, v1, p2 }, Landroid/support/v4/media/c;->b(Ljava/lang/String;Landroid/os/Bundle;Ljava/util/List;)V
    return-void
  :L3
  .line 8
    iget-object p1, p0, Landroid/support/v4/media/MediaBrowserCompat$SearchResultReceiver;->f:Landroid/support/v4/media/c;
    iget-object p2, p0, Landroid/support/v4/media/MediaBrowserCompat$SearchResultReceiver;->d:Ljava/lang/String;
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$SearchResultReceiver;->e:Landroid/os/Bundle;
    invoke-virtual { p1, p2, v0 }, Landroid/support/v4/media/c;->a(Ljava/lang/String;Landroid/os/Bundle;)V
    return-void
.end method
