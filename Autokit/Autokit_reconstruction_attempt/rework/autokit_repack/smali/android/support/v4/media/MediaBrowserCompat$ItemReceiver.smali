.class Landroid/support/v4/media/MediaBrowserCompat$ItemReceiver;
.super Lb/a/a/a/b;
.source "SourceFile"


# instance fields
.field private final d:Ljava/lang/String;

.field private final e:Landroid/support/v4/media/b;


# virtual methods
.method protected j(ILandroid/os/Bundle;)V
    .registers 4

    .line 1
    invoke-static {p2}, Landroid/support/v4/media/session/MediaSessionCompat;->a(Landroid/os/Bundle;)V

    if-nez p1, :cond_2b

    if-eqz p2, :cond_2b

    const-string p1, "media_item"

    .line 2
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_10

    goto :goto_2b

    .line 3
    :cond_10
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    if-eqz p1, :cond_23

    .line 4
    instance-of p2, p1, Landroid/support/v4/media/MediaBrowserCompat$MediaItem;

    if-eqz p2, :cond_1b

    goto :goto_23

    .line 5
    :cond_1b
    iget-object p1, p0, Landroid/support/v4/media/MediaBrowserCompat$ItemReceiver;->e:Landroid/support/v4/media/b;

    iget-object p2, p0, Landroid/support/v4/media/MediaBrowserCompat$ItemReceiver;->d:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/support/v4/media/b;->a(Ljava/lang/String;)V

    goto :goto_2a

    .line 6
    :cond_23
    :goto_23
    iget-object p2, p0, Landroid/support/v4/media/MediaBrowserCompat$ItemReceiver;->e:Landroid/support/v4/media/b;

    check-cast p1, Landroid/support/v4/media/MediaBrowserCompat$MediaItem;

    invoke-virtual {p2, p1}, Landroid/support/v4/media/b;->b(Landroid/support/v4/media/MediaBrowserCompat$MediaItem;)V

    :goto_2a
    return-void

    .line 7
    :cond_2b
    :goto_2b
    iget-object p1, p0, Landroid/support/v4/media/MediaBrowserCompat$ItemReceiver;->e:Landroid/support/v4/media/b;

    iget-object p2, p0, Landroid/support/v4/media/MediaBrowserCompat$ItemReceiver;->d:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/support/v4/media/b;->a(Ljava/lang/String;)V

    return-void
.end method
