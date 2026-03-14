.class Landroid/support/v4/media/session/MediaControllerCompat$a$c;
.super Landroid/support/v4/media/session/a$a;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Landroid/support/v4/media/session/MediaControllerCompat$a;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 10
  name = "c"
.end annotation

.field private final a:Ljava/lang/ref/WeakReference;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "Ljava/lang/ref/WeakReference<",
      "Landroid/support/v4/media/session/MediaControllerCompat$a;",
      ">;"
    }
  .end annotation
.end field

.method constructor <init>(Landroid/support/v4/media/session/MediaControllerCompat$a;)V
  .registers 3
  .line 1
    invoke-direct { p0 }, Landroid/support/v4/media/session/a$a;-><init>()V
  .line 2
    new-instance v0, Ljava/lang/ref/WeakReference;
    invoke-direct { v0, p1 }, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V
    iput-object v0, p0, Landroid/support/v4/media/session/MediaControllerCompat$a$c;->a:Ljava/lang/ref/WeakReference;
    return-void
.end method

.method public B0(I)V
  .registers 5
  .line 1
    iget-object v0, p0, Landroid/support/v4/media/session/MediaControllerCompat$a$c;->a:Ljava/lang/ref/WeakReference;
    invoke-virtual { v0 }, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Landroid/support/v4/media/session/MediaControllerCompat$a;
    if-eqz v0, :L0
    const/16 v1, 12
  .line 2
    invoke-static { p1 }, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object p1
    const/4 v2, 0
  .line 3
    invoke-virtual { v0, v1, p1, v2 }, Landroid/support/v4/media/session/MediaControllerCompat$a;->i(ILjava/lang/Object;Landroid/os/Bundle;)V
  :L0
    return-void
.end method

.method public C0()V
  .registers 4
  .line 1
    iget-object v0, p0, Landroid/support/v4/media/session/MediaControllerCompat$a$c;->a:Ljava/lang/ref/WeakReference;
    invoke-virtual { v0 }, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Landroid/support/v4/media/session/MediaControllerCompat$a;
    if-eqz v0, :L0
    const/16 v1, 13
    const/4 v2, 0
  .line 2
    invoke-virtual { v0, v1, v2, v2 }, Landroid/support/v4/media/session/MediaControllerCompat$a;->i(ILjava/lang/Object;Landroid/os/Bundle;)V
  :L0
    return-void
.end method

.method public G0(Landroid/support/v4/media/session/PlaybackStateCompat;)V
  .registers 5
  .line 1
    iget-object v0, p0, Landroid/support/v4/media/session/MediaControllerCompat$a$c;->a:Ljava/lang/ref/WeakReference;
    invoke-virtual { v0 }, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Landroid/support/v4/media/session/MediaControllerCompat$a;
    if-eqz v0, :L0
    const/4 v1, 2
    const/4 v2, 0
  .line 2
    invoke-virtual { v0, v1, p1, v2 }, Landroid/support/v4/media/session/MediaControllerCompat$a;->i(ILjava/lang/Object;Landroid/os/Bundle;)V
  :L0
    return-void
.end method

.method public H0(Ljava/lang/String;Landroid/os/Bundle;)V
  .registers 5
  .line 1
    iget-object v0, p0, Landroid/support/v4/media/session/MediaControllerCompat$a$c;->a:Ljava/lang/ref/WeakReference;
    invoke-virtual { v0 }, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Landroid/support/v4/media/session/MediaControllerCompat$a;
    if-eqz v0, :L0
    const/4 v1, 1
  .line 2
    invoke-virtual { v0, v1, p1, p2 }, Landroid/support/v4/media/session/MediaControllerCompat$a;->i(ILjava/lang/Object;Landroid/os/Bundle;)V
  :L0
    return-void
.end method

.method public M(Landroid/support/v4/media/MediaMetadataCompat;)V
  .registers 5
  .line 1
    iget-object v0, p0, Landroid/support/v4/media/session/MediaControllerCompat$a$c;->a:Ljava/lang/ref/WeakReference;
    invoke-virtual { v0 }, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Landroid/support/v4/media/session/MediaControllerCompat$a;
    if-eqz v0, :L0
    const/4 v1, 3
    const/4 v2, 0
  .line 2
    invoke-virtual { v0, v1, p1, v2 }, Landroid/support/v4/media/session/MediaControllerCompat$a;->i(ILjava/lang/Object;Landroid/os/Bundle;)V
  :L0
    return-void
.end method

.method public P0(Landroid/support/v4/media/session/ParcelableVolumeInfo;)V
  .registers 11
  .line 1
    iget-object v0, p0, Landroid/support/v4/media/session/MediaControllerCompat$a$c;->a:Ljava/lang/ref/WeakReference;
    invoke-virtual { v0 }, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Landroid/support/v4/media/session/MediaControllerCompat$a;
    if-eqz v0, :L2
    const/4 v1, 0
    if-eqz p1, :L0
  .line 2
    new-instance v8, Landroid/support/v4/media/session/MediaControllerCompat$e;
    iget v3, p1, Landroid/support/v4/media/session/ParcelableVolumeInfo;->b:I
    iget v4, p1, Landroid/support/v4/media/session/ParcelableVolumeInfo;->c:I
    iget v5, p1, Landroid/support/v4/media/session/ParcelableVolumeInfo;->d:I
    iget v6, p1, Landroid/support/v4/media/session/ParcelableVolumeInfo;->e:I
    iget v7, p1, Landroid/support/v4/media/session/ParcelableVolumeInfo;->f:I
    move-object v2, v8
    invoke-direct/range { v2 .. v7 }, Landroid/support/v4/media/session/MediaControllerCompat$e;-><init>(IIIII)V
    goto :L1
  :L0
    move-object v8, v1
  :L1
    const/4 p1, 4
  .line 3
    invoke-virtual { v0, p1, v8, v1 }, Landroid/support/v4/media/session/MediaControllerCompat$a;->i(ILjava/lang/Object;Landroid/os/Bundle;)V
  :L2
    return-void
.end method

.method public a(Ljava/util/List;)V
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(",
      "Ljava/util/List<",
      "Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;",
      ">;)V"
    }
  .end annotation
  .registers 5
  .line 1
    iget-object v0, p0, Landroid/support/v4/media/session/MediaControllerCompat$a$c;->a:Ljava/lang/ref/WeakReference;
    invoke-virtual { v0 }, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Landroid/support/v4/media/session/MediaControllerCompat$a;
    if-eqz v0, :L0
    const/4 v1, 5
    const/4 v2, 0
  .line 2
    invoke-virtual { v0, v1, p1, v2 }, Landroid/support/v4/media/session/MediaControllerCompat$a;->i(ILjava/lang/Object;Landroid/os/Bundle;)V
  :L0
    return-void
.end method

.method public c(Ljava/lang/CharSequence;)V
  .registers 5
  .line 1
    iget-object v0, p0, Landroid/support/v4/media/session/MediaControllerCompat$a$c;->a:Ljava/lang/ref/WeakReference;
    invoke-virtual { v0 }, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Landroid/support/v4/media/session/MediaControllerCompat$a;
    if-eqz v0, :L0
    const/4 v1, 6
    const/4 v2, 0
  .line 2
    invoke-virtual { v0, v1, p1, v2 }, Landroid/support/v4/media/session/MediaControllerCompat$a;->i(ILjava/lang/Object;Landroid/os/Bundle;)V
  :L0
    return-void
.end method

.method public e()V
  .registers 4
  .line 1
    iget-object v0, p0, Landroid/support/v4/media/session/MediaControllerCompat$a$c;->a:Ljava/lang/ref/WeakReference;
    invoke-virtual { v0 }, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Landroid/support/v4/media/session/MediaControllerCompat$a;
    if-eqz v0, :L0
    const/16 v1, 8
    const/4 v2, 0
  .line 2
    invoke-virtual { v0, v1, v2, v2 }, Landroid/support/v4/media/session/MediaControllerCompat$a;->i(ILjava/lang/Object;Landroid/os/Bundle;)V
  :L0
    return-void
.end method

.method public e0(I)V
  .registers 5
  .line 1
    iget-object v0, p0, Landroid/support/v4/media/session/MediaControllerCompat$a$c;->a:Ljava/lang/ref/WeakReference;
    invoke-virtual { v0 }, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Landroid/support/v4/media/session/MediaControllerCompat$a;
    if-eqz v0, :L0
    const/16 v1, 9
  .line 2
    invoke-static { p1 }, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object p1
    const/4 v2, 0
    invoke-virtual { v0, v1, p1, v2 }, Landroid/support/v4/media/session/MediaControllerCompat$a;->i(ILjava/lang/Object;Landroid/os/Bundle;)V
  :L0
    return-void
.end method

.method public o(Landroid/os/Bundle;)V
  .registers 5
  .line 1
    iget-object v0, p0, Landroid/support/v4/media/session/MediaControllerCompat$a$c;->a:Ljava/lang/ref/WeakReference;
    invoke-virtual { v0 }, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Landroid/support/v4/media/session/MediaControllerCompat$a;
    if-eqz v0, :L0
    const/4 v1, 7
    const/4 v2, 0
  .line 2
    invoke-virtual { v0, v1, p1, v2 }, Landroid/support/v4/media/session/MediaControllerCompat$a;->i(ILjava/lang/Object;Landroid/os/Bundle;)V
  :L0
    return-void
.end method

.method public q0(Z)V
  .registers 5
  .line 1
    iget-object v0, p0, Landroid/support/v4/media/session/MediaControllerCompat$a$c;->a:Ljava/lang/ref/WeakReference;
    invoke-virtual { v0 }, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Landroid/support/v4/media/session/MediaControllerCompat$a;
    if-eqz v0, :L0
    const/16 v1, 11
  .line 2
    invoke-static { p1 }, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    move-result-object p1
    const/4 v2, 0
  .line 3
    invoke-virtual { v0, v1, p1, v2 }, Landroid/support/v4/media/session/MediaControllerCompat$a;->i(ILjava/lang/Object;Landroid/os/Bundle;)V
  :L0
    return-void
.end method

.method public s(Z)V
  .registers 2
    return-void
.end method
