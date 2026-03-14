.class Landroid/support/v4/media/MediaBrowserCompat$CustomActionResultReceiver;
.super Lb/a/a/a/b;
.source "SourceFile"

.field private final d:Ljava/lang/String;

.field private final e:Landroid/os/Bundle;

.field private final f:Landroid/support/v4/media/a;

.method protected j(ILandroid/os/Bundle;)V
  .registers 5
  .line 1
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$CustomActionResultReceiver;->f:Landroid/support/v4/media/a;
    if-nez v0, :L0
    return-void
  :L0
  .line 2
    invoke-static { p2 }, Landroid/support/v4/media/session/MediaSessionCompat;->a(Landroid/os/Bundle;)V
    const/4 v0, -1
    if-eq p1, v0, :L3
    if-eqz p1, :L2
    const/4 v0, 1
    if-eq p1, v0, :L1
  .line 3
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "Unknown result code: "
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0, p1 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    const-string p1, " (extras="
    invoke-virtual { v0, p1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget-object p1, p0, Landroid/support/v4/media/MediaBrowserCompat$CustomActionResultReceiver;->e:Landroid/os/Bundle;
    invoke-virtual { v0, p1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    const-string p1, ", resultData="
    invoke-virtual { v0, p1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0, p2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    const-string p1, ")"
    invoke-virtual { v0, p1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    goto :L4
  :L1
  .line 4
    iget-object p1, p0, Landroid/support/v4/media/MediaBrowserCompat$CustomActionResultReceiver;->f:Landroid/support/v4/media/a;
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$CustomActionResultReceiver;->d:Ljava/lang/String;
    iget-object v1, p0, Landroid/support/v4/media/MediaBrowserCompat$CustomActionResultReceiver;->e:Landroid/os/Bundle;
    invoke-virtual { p1, v0, v1, p2 }, Landroid/support/v4/media/a;->b(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;)V
    goto :L4
  :L2
  .line 5
    iget-object p1, p0, Landroid/support/v4/media/MediaBrowserCompat$CustomActionResultReceiver;->f:Landroid/support/v4/media/a;
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$CustomActionResultReceiver;->d:Ljava/lang/String;
    iget-object v1, p0, Landroid/support/v4/media/MediaBrowserCompat$CustomActionResultReceiver;->e:Landroid/os/Bundle;
    invoke-virtual { p1, v0, v1, p2 }, Landroid/support/v4/media/a;->c(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;)V
    goto :L4
  :L3
  .line 6
    iget-object p1, p0, Landroid/support/v4/media/MediaBrowserCompat$CustomActionResultReceiver;->f:Landroid/support/v4/media/a;
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$CustomActionResultReceiver;->d:Ljava/lang/String;
    iget-object v1, p0, Landroid/support/v4/media/MediaBrowserCompat$CustomActionResultReceiver;->e:Landroid/os/Bundle;
    invoke-virtual { p1, v0, v1, p2 }, Landroid/support/v4/media/a;->a(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;)V
  :L4
    return-void
.end method
