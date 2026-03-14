.class Landroid/support/v4/media/session/MediaSessionCompat$i$b;
.super Landroid/support/v4/media/session/b$a;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Landroid/support/v4/media/session/MediaSessionCompat$i;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = "b"
.end annotation

.field final synthetic a:Landroid/support/v4/media/session/MediaSessionCompat$i;

.method constructor <init>(Landroid/support/v4/media/session/MediaSessionCompat$i;)V
  .registers 2
  .line 1
    iput-object p1, p0, Landroid/support/v4/media/session/MediaSessionCompat$i$b;->a:Landroid/support/v4/media/session/MediaSessionCompat$i;
    invoke-direct { p0 }, Landroid/support/v4/media/session/b$a;-><init>()V
    return-void
.end method

.method public A0()V
  .registers 2
    const/4 v0, 3
  .line 1
    invoke-virtual { p0, v0 }, Landroid/support/v4/media/session/MediaSessionCompat$i$b;->G(I)V
    return-void
.end method

.method public B(Ljava/lang/String;Landroid/os/Bundle;)V
  .registers 4
    const/16 v0, 20
  .line 1
    invoke-virtual { p0, v0, p1, p2 }, Landroid/support/v4/media/session/MediaSessionCompat$i$b;->R0(ILjava/lang/Object;Landroid/os/Bundle;)V
    return-void
.end method

.method public C(IILjava/lang/String;)V
  .registers 4
  .line 1
    iget-object p3, p0, Landroid/support/v4/media/session/MediaSessionCompat$i$b;->a:Landroid/support/v4/media/session/MediaSessionCompat$i;
    invoke-virtual { p3, p1, p2 }, Landroid/support/v4/media/session/MediaSessionCompat$i;->k(II)V
    return-void
.end method

.method public E()V
  .registers 2
    const/16 v0, 12
  .line 1
    invoke-virtual { p0, v0 }, Landroid/support/v4/media/session/MediaSessionCompat$i$b;->G(I)V
    return-void
.end method

.method E0(ILjava/lang/Object;I)V
  .registers 10
  .line 1
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$i$b;->a:Landroid/support/v4/media/session/MediaSessionCompat$i;
    const/4 v3, 0
    const/4 v5, 0
    move v1, p1
    move v2, p3
    move-object v4, p2
    invoke-virtual/range { v0 .. v5 }, Landroid/support/v4/media/session/MediaSessionCompat$i;->o(IIILjava/lang/Object;Landroid/os/Bundle;)V
    return-void
.end method

.method public F(Landroid/support/v4/media/session/a;)V
  .catch Ljava/lang/Exception; { :L0 .. :L1 } :L1
  .registers 6
  .line 1
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$i$b;->a:Landroid/support/v4/media/session/MediaSessionCompat$i;
    iget-boolean v0, v0, Landroid/support/v4/media/session/MediaSessionCompat$i;->l:Z
    if-eqz v0, :L2
  :L0
  .line 2
    invoke-interface { p1 }, Landroid/support/v4/media/session/a;->e()V
  :L1
    return-void
  :L2
  .line 3
    new-instance v0, Landroidx/media/a;
  .line 4
    invoke-static { }, Landroid/os/Binder;->getCallingPid()I
    move-result v1
    invoke-static { }, Landroid/os/Binder;->getCallingUid()I
    move-result v2
    const-string v3, "android.media.session.MediaController"
    invoke-direct { v0, v3, v1, v2 }, Landroidx/media/a;-><init>(Ljava/lang/String;II)V
  .line 5
    iget-object v1, p0, Landroid/support/v4/media/session/MediaSessionCompat$i$b;->a:Landroid/support/v4/media/session/MediaSessionCompat$i;
    iget-object v1, v1, Landroid/support/v4/media/session/MediaSessionCompat$i;->j:Landroid/os/RemoteCallbackList;
    invoke-virtual { v1, p1, v0 }, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;Ljava/lang/Object;)Z
    return-void
.end method

.method G(I)V
  .registers 8
  .line 1
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$i$b;->a:Landroid/support/v4/media/session/MediaSessionCompat$i;
    const/4 v2, 0
    const/4 v3, 0
    const/4 v4, 0
    const/4 v5, 0
    move v1, p1
    invoke-virtual/range { v0 .. v5 }, Landroid/support/v4/media/session/MediaSessionCompat$i;->o(IIILjava/lang/Object;Landroid/os/Bundle;)V
    return-void
.end method

.method public H(Landroid/support/v4/media/RatingCompat;Landroid/os/Bundle;)V
  .registers 4
    const/16 v0, 31
  .line 1
    invoke-virtual { p0, v0, p1, p2 }, Landroid/support/v4/media/session/MediaSessionCompat$i$b;->R0(ILjava/lang/Object;Landroid/os/Bundle;)V
    return-void
.end method

.method public I()Landroid/support/v4/media/MediaMetadataCompat;
  .registers 2
  .line 1
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$i$b;->a:Landroid/support/v4/media/session/MediaSessionCompat$i;
    iget-object v0, v0, Landroid/support/v4/media/session/MediaSessionCompat$i;->s:Landroid/support/v4/media/MediaMetadataCompat;
    return-object v0
.end method

.method public I0()V
  .registers 2
    const/4 v0, 7
  .line 1
    invoke-virtual { p0, v0 }, Landroid/support/v4/media/session/MediaSessionCompat$i$b;->G(I)V
    return-void
.end method

.method public J(Ljava/lang/String;Landroid/os/Bundle;)V
  .registers 4
    const/4 v0, 4
  .line 1
    invoke-virtual { p0, v0, p1, p2 }, Landroid/support/v4/media/session/MediaSessionCompat$i$b;->R0(ILjava/lang/Object;Landroid/os/Bundle;)V
    return-void
.end method

.method public K(Landroid/support/v4/media/session/a;)V
  .registers 3
  .line 1
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$i$b;->a:Landroid/support/v4/media/session/MediaSessionCompat$i;
    iget-object v0, v0, Landroid/support/v4/media/session/MediaSessionCompat$i;->j:Landroid/os/RemoteCallbackList;
    invoke-virtual { v0, p1 }, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z
    return-void
.end method

.method public K0(Ljava/lang/String;Landroid/os/Bundle;Landroid/support/v4/media/session/MediaSessionCompat$ResultReceiverWrapper;)V
  .registers 5
  .line 1
    new-instance v0, Landroid/support/v4/media/session/MediaSessionCompat$i$a;
    iget-object p3, p3, Landroid/support/v4/media/session/MediaSessionCompat$ResultReceiverWrapper;->b:Landroid/os/ResultReceiver;
    invoke-direct { v0, p1, p2, p3 }, Landroid/support/v4/media/session/MediaSessionCompat$i$a;-><init>(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V
    const/4 p1, 1
    invoke-virtual { p0, p1, v0 }, Landroid/support/v4/media/session/MediaSessionCompat$i$b;->c0(ILjava/lang/Object;)V
    return-void
.end method

.method public L(Landroid/support/v4/media/MediaDescriptionCompat;I)V
  .registers 4
    const/16 v0, 26
  .line 1
    invoke-virtual { p0, v0, p1, p2 }, Landroid/support/v4/media/session/MediaSessionCompat$i$b;->E0(ILjava/lang/Object;I)V
    return-void
.end method

.method public L0()Ljava/util/List;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "()",
      "Ljava/util/List<",
      "Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;",
      ">;"
    }
  .end annotation
  .catchall { :L0 .. :L2 } :L1
  .registers 3
  .line 1
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$i$b;->a:Landroid/support/v4/media/session/MediaSessionCompat$i;
    iget-object v0, v0, Landroid/support/v4/media/session/MediaSessionCompat$i;->i:Ljava/lang/Object;
    monitor-enter v0
  :L0
  .line 2
    iget-object v1, p0, Landroid/support/v4/media/session/MediaSessionCompat$i$b;->a:Landroid/support/v4/media/session/MediaSessionCompat$i;
    iget-object v1, v1, Landroid/support/v4/media/session/MediaSessionCompat$i;->v:Ljava/util/List;
    monitor-exit v0
    return-object v1
  :L1
    move-exception v1
  .line 3
    monitor-exit v0
  :L2
    throw v1
.end method

.method public N()Ljava/lang/String;
  .registers 2
  .line 1
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$i$b;->a:Landroid/support/v4/media/session/MediaSessionCompat$i;
    iget-object v0, v0, Landroid/support/v4/media/session/MediaSessionCompat$i;->f:Ljava/lang/String;
    return-object v0
.end method

.method O(II)V
  .registers 9
  .line 1
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$i$b;->a:Landroid/support/v4/media/session/MediaSessionCompat$i;
    const/4 v3, 0
    const/4 v4, 0
    const/4 v5, 0
    move v1, p1
    move v2, p2
    invoke-virtual/range { v0 .. v5 }, Landroid/support/v4/media/session/MediaSessionCompat$i;->o(IIILjava/lang/Object;Landroid/os/Bundle;)V
    return-void
.end method

.method public P()Z
  .registers 2
    const/4 v0, 0
    return v0
.end method

.method public Q(Z)V
  .registers 3
  .line 1
    invoke-static { p1 }, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    move-result-object p1
    const/16 v0, 29
    invoke-virtual { p0, v0, p1 }, Landroid/support/v4/media/session/MediaSessionCompat$i$b;->c0(ILjava/lang/Object;)V
    return-void
.end method

.method public Q0(Landroid/view/KeyEvent;)Z
  .registers 4
  .line 1
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$i$b;->a:Landroid/support/v4/media/session/MediaSessionCompat$i;
    iget v0, v0, Landroid/support/v4/media/session/MediaSessionCompat$i;->r:I
    const/4 v1, 1
    and-int/2addr v0, v1
    if-eqz v0, :L0
    goto :L1
  :L0
    const/4 v1, 0
  :L1
    if-eqz v1, :L2
    const/16 v0, 21
  .line 2
    invoke-virtual { p0, v0, p1 }, Landroid/support/v4/media/session/MediaSessionCompat$i$b;->c0(ILjava/lang/Object;)V
  :L2
    return v1
.end method

.method public R(Landroid/support/v4/media/RatingCompat;)V
  .registers 3
    const/16 v0, 19
  .line 1
    invoke-virtual { p0, v0, p1 }, Landroid/support/v4/media/session/MediaSessionCompat$i$b;->c0(ILjava/lang/Object;)V
    return-void
.end method

.method R0(ILjava/lang/Object;Landroid/os/Bundle;)V
  .registers 10
  .line 1
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$i$b;->a:Landroid/support/v4/media/session/MediaSessionCompat$i;
    const/4 v2, 0
    const/4 v3, 0
    move v1, p1
    move-object v4, p2
    move-object v5, p3
    invoke-virtual/range { v0 .. v5 }, Landroid/support/v4/media/session/MediaSessionCompat$i;->o(IIILjava/lang/Object;Landroid/os/Bundle;)V
    return-void
.end method

.method public S(Ljava/lang/String;Landroid/os/Bundle;)V
  .registers 4
    const/16 v0, 8
  .line 1
    invoke-virtual { p0, v0, p1, p2 }, Landroid/support/v4/media/session/MediaSessionCompat$i$b;->R0(ILjava/lang/Object;Landroid/os/Bundle;)V
    return-void
.end method

.method public T()J
  .catchall { :L0 .. :L2 } :L1
  .registers 4
  .line 1
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$i$b;->a:Landroid/support/v4/media/session/MediaSessionCompat$i;
    iget-object v0, v0, Landroid/support/v4/media/session/MediaSessionCompat$i;->i:Ljava/lang/Object;
    monitor-enter v0
  :L0
  .line 2
    iget-object v1, p0, Landroid/support/v4/media/session/MediaSessionCompat$i$b;->a:Landroid/support/v4/media/session/MediaSessionCompat$i;
    iget v1, v1, Landroid/support/v4/media/session/MediaSessionCompat$i;->r:I
    int-to-long v1, v1
    monitor-exit v0
    return-wide v1
  :L1
    move-exception v1
  .line 3
    monitor-exit v0
  :L2
    throw v1
.end method

.method public U(IILjava/lang/String;)V
  .registers 4
  .line 1
    iget-object p3, p0, Landroid/support/v4/media/session/MediaSessionCompat$i$b;->a:Landroid/support/v4/media/session/MediaSessionCompat$i;
    invoke-virtual { p3, p1, p2 }, Landroid/support/v4/media/session/MediaSessionCompat$i;->v(II)V
    return-void
.end method

.method public V(Landroid/net/Uri;Landroid/os/Bundle;)V
  .registers 4
    const/4 v0, 6
  .line 1
    invoke-virtual { p0, v0, p1, p2 }, Landroid/support/v4/media/session/MediaSessionCompat$i$b;->R0(ILjava/lang/Object;Landroid/os/Bundle;)V
    return-void
.end method

.method public W()I
  .registers 2
  .line 1
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$i$b;->a:Landroid/support/v4/media/session/MediaSessionCompat$i;
    iget v0, v0, Landroid/support/v4/media/session/MediaSessionCompat$i;->z:I
    return v0
.end method

.method public X(J)V
  .registers 3
  .line 1
    invoke-static { p1, p2 }, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    move-result-object p1
    const/16 p2, 11
    invoke-virtual { p0, p2, p1 }, Landroid/support/v4/media/session/MediaSessionCompat$i$b;->c0(ILjava/lang/Object;)V
    return-void
.end method

.method public Y(Z)V
  .registers 2
    return-void
.end method

.method public Z(Ljava/lang/String;Landroid/os/Bundle;)V
  .registers 4
    const/16 v0, 9
  .line 1
    invoke-virtual { p0, v0, p1, p2 }, Landroid/support/v4/media/session/MediaSessionCompat$i$b;->R0(ILjava/lang/Object;Landroid/os/Bundle;)V
    return-void
.end method

.method c0(ILjava/lang/Object;)V
  .registers 9
  .line 1
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$i$b;->a:Landroid/support/v4/media/session/MediaSessionCompat$i;
    const/4 v2, 0
    const/4 v3, 0
    const/4 v5, 0
    move v1, p1
    move-object v4, p2
    invoke-virtual/range { v0 .. v5 }, Landroid/support/v4/media/session/MediaSessionCompat$i;->o(IIILjava/lang/Object;Landroid/os/Bundle;)V
    return-void
.end method

.method public d0()Landroid/support/v4/media/session/ParcelableVolumeInfo;
  .catchall { :L0 .. :L1 } :L4
  .catchall { :L2 .. :L3 } :L4
  .catchall { :L5 .. :L6 } :L4
  .registers 9
  .line 1
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$i$b;->a:Landroid/support/v4/media/session/MediaSessionCompat$i;
    iget-object v0, v0, Landroid/support/v4/media/session/MediaSessionCompat$i;->i:Ljava/lang/Object;
    monitor-enter v0
  :L0
  .line 2
    iget-object v1, p0, Landroid/support/v4/media/session/MediaSessionCompat$i$b;->a:Landroid/support/v4/media/session/MediaSessionCompat$i;
    iget v3, v1, Landroid/support/v4/media/session/MediaSessionCompat$i;->C:I
  .line 3
    iget-object v1, p0, Landroid/support/v4/media/session/MediaSessionCompat$i$b;->a:Landroid/support/v4/media/session/MediaSessionCompat$i;
    iget v4, v1, Landroid/support/v4/media/session/MediaSessionCompat$i;->D:I
  .line 4
    iget-object v1, p0, Landroid/support/v4/media/session/MediaSessionCompat$i$b;->a:Landroid/support/v4/media/session/MediaSessionCompat$i;
    iget-object v1, v1, Landroid/support/v4/media/session/MediaSessionCompat$i;->E:Landroidx/media/e;
    const/4 v2, 2
    if-eq v3, v2, :L2
    const/4 v5, 2
  .line 5
    iget-object v1, p0, Landroid/support/v4/media/session/MediaSessionCompat$i$b;->a:Landroid/support/v4/media/session/MediaSessionCompat$i;
    iget-object v1, v1, Landroid/support/v4/media/session/MediaSessionCompat$i;->g:Landroid/media/AudioManager;
    invoke-virtual { v1, v4 }, Landroid/media/AudioManager;->getStreamMaxVolume(I)I
    move-result v6
  .line 6
    iget-object v1, p0, Landroid/support/v4/media/session/MediaSessionCompat$i$b;->a:Landroid/support/v4/media/session/MediaSessionCompat$i;
    iget-object v1, v1, Landroid/support/v4/media/session/MediaSessionCompat$i;->g:Landroid/media/AudioManager;
    invoke-virtual { v1, v4 }, Landroid/media/AudioManager;->getStreamVolume(I)I
    move-result v7
  .line 7
    monitor-exit v0
  :L1
  .line 8
    new-instance v0, Landroid/support/v4/media/session/ParcelableVolumeInfo;
    move-object v2, v0
    invoke-direct/range { v2 .. v7 }, Landroid/support/v4/media/session/ParcelableVolumeInfo;-><init>(IIIII)V
    return-object v0
  :L2
  .line 9
    invoke-virtual { v1 }, Landroidx/media/e;->a()I
  :L3
    const/4 v0, 0
    throw v0
  :L4
    move-exception v1
  :L5
  .line 10
    monitor-exit v0
  :L6
    throw v1
.end method

.method public f0()V
  .registers 2
    const/16 v0, 16
  .line 1
    invoke-virtual { p0, v0 }, Landroid/support/v4/media/session/MediaSessionCompat$i$b;->G(I)V
    return-void
.end method

.method public g0()Landroid/os/Bundle;
  .catchall { :L0 .. :L2 } :L1
  .registers 3
  .line 1
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$i$b;->a:Landroid/support/v4/media/session/MediaSessionCompat$i;
    iget-object v0, v0, Landroid/support/v4/media/session/MediaSessionCompat$i;->i:Ljava/lang/Object;
    monitor-enter v0
  :L0
  .line 2
    iget-object v1, p0, Landroid/support/v4/media/session/MediaSessionCompat$i$b;->a:Landroid/support/v4/media/session/MediaSessionCompat$i;
    iget-object v1, v1, Landroid/support/v4/media/session/MediaSessionCompat$i;->B:Landroid/os/Bundle;
    monitor-exit v0
    return-object v1
  :L1
    move-exception v1
  .line 3
    monitor-exit v0
  :L2
    throw v1
.end method

.method public i()Landroid/support/v4/media/session/PlaybackStateCompat;
  .catchall { :L0 .. :L1 } :L2
  .catchall { :L3 .. :L4 } :L2
  .registers 4
  .line 1
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$i$b;->a:Landroid/support/v4/media/session/MediaSessionCompat$i;
    iget-object v0, v0, Landroid/support/v4/media/session/MediaSessionCompat$i;->i:Ljava/lang/Object;
    monitor-enter v0
  :L0
  .line 2
    iget-object v1, p0, Landroid/support/v4/media/session/MediaSessionCompat$i$b;->a:Landroid/support/v4/media/session/MediaSessionCompat$i;
    iget-object v1, v1, Landroid/support/v4/media/session/MediaSessionCompat$i;->t:Landroid/support/v4/media/session/PlaybackStateCompat;
  .line 3
    iget-object v2, p0, Landroid/support/v4/media/session/MediaSessionCompat$i$b;->a:Landroid/support/v4/media/session/MediaSessionCompat$i;
    iget-object v2, v2, Landroid/support/v4/media/session/MediaSessionCompat$i;->s:Landroid/support/v4/media/MediaMetadataCompat;
  .line 4
    monitor-exit v0
  :L1
  .line 5
    invoke-static { v1, v2 }, Landroid/support/v4/media/session/MediaSessionCompat;->c(Landroid/support/v4/media/session/PlaybackStateCompat;Landroid/support/v4/media/MediaMetadataCompat;)Landroid/support/v4/media/session/PlaybackStateCompat;
    move-result-object v0
    return-object v0
  :L2
    move-exception v1
  :L3
  .line 6
    monitor-exit v0
  :L4
    throw v1
.end method

.method public i0(Landroid/net/Uri;Landroid/os/Bundle;)V
  .registers 4
    const/16 v0, 10
  .line 1
    invoke-virtual { p0, v0, p1, p2 }, Landroid/support/v4/media/session/MediaSessionCompat$i$b;->R0(ILjava/lang/Object;Landroid/os/Bundle;)V
    return-void
.end method

.method public j0(Landroid/support/v4/media/MediaDescriptionCompat;)V
  .registers 3
    const/16 v0, 27
  .line 1
    invoke-virtual { p0, v0, p1 }, Landroid/support/v4/media/session/MediaSessionCompat$i$b;->c0(ILjava/lang/Object;)V
    return-void
.end method

.method public k0()Z
  .registers 2
  .line 1
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$i$b;->a:Landroid/support/v4/media/session/MediaSessionCompat$i;
    iget v0, v0, Landroid/support/v4/media/session/MediaSessionCompat$i;->r:I
    and-int/lit8 v0, v0, 2
    if-eqz v0, :L0
    const/4 v0, 1
    goto :L1
  :L0
    const/4 v0, 0
  :L1
    return v0
.end method

.method public l0(Landroid/support/v4/media/MediaDescriptionCompat;)V
  .registers 3
    const/16 v0, 25
  .line 1
    invoke-virtual { p0, v0, p1 }, Landroid/support/v4/media/session/MediaSessionCompat$i$b;->c0(ILjava/lang/Object;)V
    return-void
.end method

.method public m0()Landroid/app/PendingIntent;
  .catchall { :L0 .. :L2 } :L1
  .registers 3
  .line 1
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$i$b;->a:Landroid/support/v4/media/session/MediaSessionCompat$i;
    iget-object v0, v0, Landroid/support/v4/media/session/MediaSessionCompat$i;->i:Ljava/lang/Object;
    monitor-enter v0
  :L0
  .line 2
    iget-object v1, p0, Landroid/support/v4/media/session/MediaSessionCompat$i$b;->a:Landroid/support/v4/media/session/MediaSessionCompat$i;
    iget-object v1, v1, Landroid/support/v4/media/session/MediaSessionCompat$i;->u:Landroid/app/PendingIntent;
    monitor-exit v0
    return-object v1
  :L1
    move-exception v1
  .line 3
    monitor-exit v0
  :L2
    throw v1
.end method

.method public n0()I
  .registers 2
  .line 1
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$i$b;->a:Landroid/support/v4/media/session/MediaSessionCompat$i;
    iget v0, v0, Landroid/support/v4/media/session/MediaSessionCompat$i;->A:I
    return v0
.end method

.method public next()V
  .registers 2
    const/16 v0, 14
  .line 1
    invoke-virtual { p0, v0 }, Landroid/support/v4/media/session/MediaSessionCompat$i$b;->G(I)V
    return-void
.end method

.method public o0(J)V
  .registers 3
  .line 1
    invoke-static { p1, p2 }, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    move-result-object p1
    const/16 p2, 18
    invoke-virtual { p0, p2, p1 }, Landroid/support/v4/media/session/MediaSessionCompat$i$b;->c0(ILjava/lang/Object;)V
    return-void
.end method

.method public p0(I)V
  .registers 3
    const/16 v0, 30
  .line 1
    invoke-virtual { p0, v0, p1 }, Landroid/support/v4/media/session/MediaSessionCompat$i$b;->O(II)V
    return-void
.end method

.method public r(I)V
  .registers 3
    const/16 v0, 23
  .line 1
    invoke-virtual { p0, v0, p1 }, Landroid/support/v4/media/session/MediaSessionCompat$i$b;->O(II)V
    return-void
.end method

.method public r0(I)V
  .registers 3
    const/16 v0, 28
  .line 1
    invoke-virtual { p0, v0, p1 }, Landroid/support/v4/media/session/MediaSessionCompat$i$b;->O(II)V
    return-void
.end method

.method public s0()I
  .registers 2
  .line 1
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$i$b;->a:Landroid/support/v4/media/session/MediaSessionCompat$i;
    iget v0, v0, Landroid/support/v4/media/session/MediaSessionCompat$i;->x:I
    return v0
.end method

.method public stop()V
  .registers 2
    const/16 v0, 13
  .line 1
    invoke-virtual { p0, v0 }, Landroid/support/v4/media/session/MediaSessionCompat$i$b;->G(I)V
    return-void
.end method

.method public t()V
  .registers 2
    const/16 v0, 15
  .line 1
    invoke-virtual { p0, v0 }, Landroid/support/v4/media/session/MediaSessionCompat$i$b;->G(I)V
    return-void
.end method

.method public t0(Ljava/lang/String;Landroid/os/Bundle;)V
  .registers 4
    const/4 v0, 5
  .line 1
    invoke-virtual { p0, v0, p1, p2 }, Landroid/support/v4/media/session/MediaSessionCompat$i$b;->R0(ILjava/lang/Object;Landroid/os/Bundle;)V
    return-void
.end method

.method public u0()Z
  .registers 2
  .line 1
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$i$b;->a:Landroid/support/v4/media/session/MediaSessionCompat$i;
    iget-boolean v0, v0, Landroid/support/v4/media/session/MediaSessionCompat$i;->y:Z
    return v0
.end method

.method public w()V
  .registers 2
    const/16 v0, 17
  .line 1
    invoke-virtual { p0, v0 }, Landroid/support/v4/media/session/MediaSessionCompat$i$b;->G(I)V
    return-void
.end method

.method public x()Ljava/lang/CharSequence;
  .registers 2
  .line 1
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$i$b;->a:Landroid/support/v4/media/session/MediaSessionCompat$i;
    iget-object v0, v0, Landroid/support/v4/media/session/MediaSessionCompat$i;->w:Ljava/lang/CharSequence;
    return-object v0
.end method

.method public x0()Ljava/lang/String;
  .registers 2
  .line 1
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$i$b;->a:Landroid/support/v4/media/session/MediaSessionCompat$i;
    iget-object v0, v0, Landroid/support/v4/media/session/MediaSessionCompat$i;->e:Ljava/lang/String;
    return-object v0
.end method
