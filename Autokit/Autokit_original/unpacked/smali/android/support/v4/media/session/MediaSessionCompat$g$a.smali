.class Landroid/support/v4/media/session/MediaSessionCompat$g$a;
.super Landroid/support/v4/media/session/b$a;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Landroid/support/v4/media/session/MediaSessionCompat$g;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = "a"
.end annotation

.field final synthetic a:Landroid/support/v4/media/session/MediaSessionCompat$g;

.method constructor <init>(Landroid/support/v4/media/session/MediaSessionCompat$g;)V
  .registers 2
  .line 1
    iput-object p1, p0, Landroid/support/v4/media/session/MediaSessionCompat$g$a;->a:Landroid/support/v4/media/session/MediaSessionCompat$g;
    invoke-direct { p0 }, Landroid/support/v4/media/session/b$a;-><init>()V
    return-void
.end method

.method public A0()V
  .registers 2
  .line 1
    new-instance v0, Ljava/lang/AssertionError;
    invoke-direct { v0 }, Ljava/lang/AssertionError;-><init>()V
    throw v0
.end method

.method public B(Ljava/lang/String;Landroid/os/Bundle;)V
  .registers 3
  .line 1
    new-instance p1, Ljava/lang/AssertionError;
    invoke-direct { p1 }, Ljava/lang/AssertionError;-><init>()V
    throw p1
.end method

.method public C(IILjava/lang/String;)V
  .registers 4
  .line 1
    new-instance p1, Ljava/lang/AssertionError;
    invoke-direct { p1 }, Ljava/lang/AssertionError;-><init>()V
    throw p1
.end method

.method public E()V
  .registers 2
  .line 1
    new-instance v0, Ljava/lang/AssertionError;
    invoke-direct { v0 }, Ljava/lang/AssertionError;-><init>()V
    throw v0
.end method

.method public F(Landroid/support/v4/media/session/a;)V
  .registers 6
  .line 1
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$g$a;->a:Landroid/support/v4/media/session/MediaSessionCompat$g;
    iget-boolean v1, v0, Landroid/support/v4/media/session/MediaSessionCompat$g;->c:Z
    if-nez v1, :L1
  .line 2
    invoke-virtual { v0 }, Landroid/support/v4/media/session/MediaSessionCompat$g;->k()Ljava/lang/String;
    move-result-object v0
    if-nez v0, :L0
    const-string v0, "android.media.session.MediaController"
  :L0
  .line 3
    new-instance v1, Landroidx/media/a;
  .line 4
    invoke-static { }, Landroid/os/Binder;->getCallingPid()I
    move-result v2
    invoke-static { }, Landroid/os/Binder;->getCallingUid()I
    move-result v3
    invoke-direct { v1, v0, v2, v3 }, Landroidx/media/a;-><init>(Ljava/lang/String;II)V
  .line 5
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$g$a;->a:Landroid/support/v4/media/session/MediaSessionCompat$g;
    iget-object v0, v0, Landroid/support/v4/media/session/MediaSessionCompat$g;->d:Landroid/os/RemoteCallbackList;
    invoke-virtual { v0, p1, v1 }, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;Ljava/lang/Object;)Z
  :L1
    return-void
.end method

.method public H(Landroid/support/v4/media/RatingCompat;Landroid/os/Bundle;)V
  .registers 3
  .line 1
    new-instance p1, Ljava/lang/AssertionError;
    invoke-direct { p1 }, Ljava/lang/AssertionError;-><init>()V
    throw p1
.end method

.method public I()Landroid/support/v4/media/MediaMetadataCompat;
  .registers 2
  .line 1
    new-instance v0, Ljava/lang/AssertionError;
    invoke-direct { v0 }, Ljava/lang/AssertionError;-><init>()V
    throw v0
.end method

.method public I0()V
  .registers 2
  .line 1
    new-instance v0, Ljava/lang/AssertionError;
    invoke-direct { v0 }, Ljava/lang/AssertionError;-><init>()V
    throw v0
.end method

.method public J(Ljava/lang/String;Landroid/os/Bundle;)V
  .registers 3
  .line 1
    new-instance p1, Ljava/lang/AssertionError;
    invoke-direct { p1 }, Ljava/lang/AssertionError;-><init>()V
    throw p1
.end method

.method public K(Landroid/support/v4/media/session/a;)V
  .registers 3
  .line 1
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$g$a;->a:Landroid/support/v4/media/session/MediaSessionCompat$g;
    iget-object v0, v0, Landroid/support/v4/media/session/MediaSessionCompat$g;->d:Landroid/os/RemoteCallbackList;
    invoke-virtual { v0, p1 }, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z
    return-void
.end method

.method public K0(Ljava/lang/String;Landroid/os/Bundle;Landroid/support/v4/media/session/MediaSessionCompat$ResultReceiverWrapper;)V
  .registers 4
  .line 1
    new-instance p1, Ljava/lang/AssertionError;
    invoke-direct { p1 }, Ljava/lang/AssertionError;-><init>()V
    throw p1
.end method

.method public L(Landroid/support/v4/media/MediaDescriptionCompat;I)V
  .registers 3
  .line 1
    new-instance p1, Ljava/lang/AssertionError;
    invoke-direct { p1 }, Ljava/lang/AssertionError;-><init>()V
    throw p1
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
  .registers 2
    const/4 v0, 0
    return-object v0
.end method

.method public N()Ljava/lang/String;
  .registers 2
  .line 1
    new-instance v0, Ljava/lang/AssertionError;
    invoke-direct { v0 }, Ljava/lang/AssertionError;-><init>()V
    throw v0
.end method

.method public P()Z
  .registers 2
    const/4 v0, 0
    return v0
.end method

.method public Q(Z)V
  .registers 2
  .line 1
    new-instance p1, Ljava/lang/AssertionError;
    invoke-direct { p1 }, Ljava/lang/AssertionError;-><init>()V
    throw p1
.end method

.method public Q0(Landroid/view/KeyEvent;)Z
  .registers 2
  .line 1
    new-instance p1, Ljava/lang/AssertionError;
    invoke-direct { p1 }, Ljava/lang/AssertionError;-><init>()V
    throw p1
.end method

.method public R(Landroid/support/v4/media/RatingCompat;)V
  .registers 2
  .line 1
    new-instance p1, Ljava/lang/AssertionError;
    invoke-direct { p1 }, Ljava/lang/AssertionError;-><init>()V
    throw p1
.end method

.method public S(Ljava/lang/String;Landroid/os/Bundle;)V
  .registers 3
  .line 1
    new-instance p1, Ljava/lang/AssertionError;
    invoke-direct { p1 }, Ljava/lang/AssertionError;-><init>()V
    throw p1
.end method

.method public T()J
  .registers 2
  .line 1
    new-instance v0, Ljava/lang/AssertionError;
    invoke-direct { v0 }, Ljava/lang/AssertionError;-><init>()V
    throw v0
.end method

.method public U(IILjava/lang/String;)V
  .registers 4
  .line 1
    new-instance p1, Ljava/lang/AssertionError;
    invoke-direct { p1 }, Ljava/lang/AssertionError;-><init>()V
    throw p1
.end method

.method public V(Landroid/net/Uri;Landroid/os/Bundle;)V
  .registers 3
  .line 1
    new-instance p1, Ljava/lang/AssertionError;
    invoke-direct { p1 }, Ljava/lang/AssertionError;-><init>()V
    throw p1
.end method

.method public W()I
  .registers 2
  .line 1
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$g$a;->a:Landroid/support/v4/media/session/MediaSessionCompat$g;
    iget v0, v0, Landroid/support/v4/media/session/MediaSessionCompat$g;->j:I
    return v0
.end method

.method public X(J)V
  .registers 3
  .line 1
    new-instance p1, Ljava/lang/AssertionError;
    invoke-direct { p1 }, Ljava/lang/AssertionError;-><init>()V
    throw p1
.end method

.method public Y(Z)V
  .registers 2
    return-void
.end method

.method public Z(Ljava/lang/String;Landroid/os/Bundle;)V
  .registers 3
  .line 1
    new-instance p1, Ljava/lang/AssertionError;
    invoke-direct { p1 }, Ljava/lang/AssertionError;-><init>()V
    throw p1
.end method

.method public d0()Landroid/support/v4/media/session/ParcelableVolumeInfo;
  .registers 2
  .line 1
    new-instance v0, Ljava/lang/AssertionError;
    invoke-direct { v0 }, Ljava/lang/AssertionError;-><init>()V
    throw v0
.end method

.method public f0()V
  .registers 2
  .line 1
    new-instance v0, Ljava/lang/AssertionError;
    invoke-direct { v0 }, Ljava/lang/AssertionError;-><init>()V
    throw v0
.end method

.method public g0()Landroid/os/Bundle;
  .registers 2
  .line 1
    new-instance v0, Ljava/lang/AssertionError;
    invoke-direct { v0 }, Ljava/lang/AssertionError;-><init>()V
    throw v0
.end method

.method public i()Landroid/support/v4/media/session/PlaybackStateCompat;
  .registers 3
  .line 1
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$g$a;->a:Landroid/support/v4/media/session/MediaSessionCompat$g;
    iget-object v1, v0, Landroid/support/v4/media/session/MediaSessionCompat$g;->e:Landroid/support/v4/media/session/PlaybackStateCompat;
    iget-object v0, v0, Landroid/support/v4/media/session/MediaSessionCompat$g;->g:Landroid/support/v4/media/MediaMetadataCompat;
    invoke-static { v1, v0 }, Landroid/support/v4/media/session/MediaSessionCompat;->c(Landroid/support/v4/media/session/PlaybackStateCompat;Landroid/support/v4/media/MediaMetadataCompat;)Landroid/support/v4/media/session/PlaybackStateCompat;
    move-result-object v0
    return-object v0
.end method

.method public i0(Landroid/net/Uri;Landroid/os/Bundle;)V
  .registers 3
  .line 1
    new-instance p1, Ljava/lang/AssertionError;
    invoke-direct { p1 }, Ljava/lang/AssertionError;-><init>()V
    throw p1
.end method

.method public j0(Landroid/support/v4/media/MediaDescriptionCompat;)V
  .registers 2
  .line 1
    new-instance p1, Ljava/lang/AssertionError;
    invoke-direct { p1 }, Ljava/lang/AssertionError;-><init>()V
    throw p1
.end method

.method public k0()Z
  .registers 2
  .line 1
    new-instance v0, Ljava/lang/AssertionError;
    invoke-direct { v0 }, Ljava/lang/AssertionError;-><init>()V
    throw v0
.end method

.method public l0(Landroid/support/v4/media/MediaDescriptionCompat;)V
  .registers 2
  .line 1
    new-instance p1, Ljava/lang/AssertionError;
    invoke-direct { p1 }, Ljava/lang/AssertionError;-><init>()V
    throw p1
.end method

.method public m0()Landroid/app/PendingIntent;
  .registers 2
  .line 1
    new-instance v0, Ljava/lang/AssertionError;
    invoke-direct { v0 }, Ljava/lang/AssertionError;-><init>()V
    throw v0
.end method

.method public n0()I
  .registers 2
  .line 1
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$g$a;->a:Landroid/support/v4/media/session/MediaSessionCompat$g;
    iget v0, v0, Landroid/support/v4/media/session/MediaSessionCompat$g;->k:I
    return v0
.end method

.method public next()V
  .registers 2
  .line 1
    new-instance v0, Ljava/lang/AssertionError;
    invoke-direct { v0 }, Ljava/lang/AssertionError;-><init>()V
    throw v0
.end method

.method public o0(J)V
  .registers 3
  .line 1
    new-instance p1, Ljava/lang/AssertionError;
    invoke-direct { p1 }, Ljava/lang/AssertionError;-><init>()V
    throw p1
.end method

.method public p0(I)V
  .registers 2
  .line 1
    new-instance p1, Ljava/lang/AssertionError;
    invoke-direct { p1 }, Ljava/lang/AssertionError;-><init>()V
    throw p1
.end method

.method public r(I)V
  .registers 2
  .line 1
    new-instance p1, Ljava/lang/AssertionError;
    invoke-direct { p1 }, Ljava/lang/AssertionError;-><init>()V
    throw p1
.end method

.method public r0(I)V
  .registers 2
  .line 1
    new-instance p1, Ljava/lang/AssertionError;
    invoke-direct { p1 }, Ljava/lang/AssertionError;-><init>()V
    throw p1
.end method

.method public s0()I
  .registers 2
  .line 1
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$g$a;->a:Landroid/support/v4/media/session/MediaSessionCompat$g;
    iget v0, v0, Landroid/support/v4/media/session/MediaSessionCompat$g;->h:I
    return v0
.end method

.method public stop()V
  .registers 2
  .line 1
    new-instance v0, Ljava/lang/AssertionError;
    invoke-direct { v0 }, Ljava/lang/AssertionError;-><init>()V
    throw v0
.end method

.method public t()V
  .registers 2
  .line 1
    new-instance v0, Ljava/lang/AssertionError;
    invoke-direct { v0 }, Ljava/lang/AssertionError;-><init>()V
    throw v0
.end method

.method public t0(Ljava/lang/String;Landroid/os/Bundle;)V
  .registers 3
  .line 1
    new-instance p1, Ljava/lang/AssertionError;
    invoke-direct { p1 }, Ljava/lang/AssertionError;-><init>()V
    throw p1
.end method

.method public u0()Z
  .registers 2
  .line 1
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$g$a;->a:Landroid/support/v4/media/session/MediaSessionCompat$g;
    iget-boolean v0, v0, Landroid/support/v4/media/session/MediaSessionCompat$g;->i:Z
    return v0
.end method

.method public w()V
  .registers 2
  .line 1
    new-instance v0, Ljava/lang/AssertionError;
    invoke-direct { v0 }, Ljava/lang/AssertionError;-><init>()V
    throw v0
.end method

.method public x()Ljava/lang/CharSequence;
  .registers 2
  .line 1
    new-instance v0, Ljava/lang/AssertionError;
    invoke-direct { v0 }, Ljava/lang/AssertionError;-><init>()V
    throw v0
.end method

.method public x0()Ljava/lang/String;
  .registers 2
  .line 1
    new-instance v0, Ljava/lang/AssertionError;
    invoke-direct { v0 }, Ljava/lang/AssertionError;-><init>()V
    throw v0
.end method
