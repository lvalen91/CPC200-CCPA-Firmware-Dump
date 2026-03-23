.class Landroid/support/v4/media/session/MediaControllerCompat$a$b;
.super Ljava/lang/Object;
.implements Landroid/support/v4/media/session/c$a;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Landroid/support/v4/media/session/MediaControllerCompat$a;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 10
  name = "b"
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
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
  .line 2
    new-instance v0, Ljava/lang/ref/WeakReference;
    invoke-direct { v0, p1 }, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V
    iput-object v0, p0, Landroid/support/v4/media/session/MediaControllerCompat$a$b;->a:Ljava/lang/ref/WeakReference;
    return-void
.end method

.method public a(Ljava/util/List;)V
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(",
      "Ljava/util/List<",
      "*>;)V"
    }
  .end annotation
  .registers 3
  .line 1
    iget-object v0, p0, Landroid/support/v4/media/session/MediaControllerCompat$a$b;->a:Ljava/lang/ref/WeakReference;
    invoke-virtual { v0 }, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Landroid/support/v4/media/session/MediaControllerCompat$a;
    if-eqz v0, :L0
  .line 2
    invoke-static { p1 }, Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;->k(Ljava/util/List;)Ljava/util/List;
    move-result-object p1
    invoke-virtual { v0, p1 }, Landroid/support/v4/media/session/MediaControllerCompat$a;->e(Ljava/util/List;)V
  :L0
    return-void
.end method

.method public b(Ljava/lang/Object;)V
  .registers 4
  .line 1
    iget-object v0, p0, Landroid/support/v4/media/session/MediaControllerCompat$a$b;->a:Ljava/lang/ref/WeakReference;
    invoke-virtual { v0 }, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Landroid/support/v4/media/session/MediaControllerCompat$a;
    if-eqz v0, :L1
  .line 2
    iget-object v1, v0, Landroid/support/v4/media/session/MediaControllerCompat$a;->c:Landroid/support/v4/media/session/a;
    if-eqz v1, :L0
    goto :L1
  :L0
  .line 3
    invoke-static { p1 }, Landroid/support/v4/media/session/PlaybackStateCompat;->j(Ljava/lang/Object;)Landroid/support/v4/media/session/PlaybackStateCompat;
    move-result-object p1
  .line 4
    invoke-virtual { v0, p1 }, Landroid/support/v4/media/session/MediaControllerCompat$a;->d(Landroid/support/v4/media/session/PlaybackStateCompat;)V
  :L1
    return-void
.end method

.method public c(Ljava/lang/CharSequence;)V
  .registers 3
  .line 1
    iget-object v0, p0, Landroid/support/v4/media/session/MediaControllerCompat$a$b;->a:Ljava/lang/ref/WeakReference;
    invoke-virtual { v0 }, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Landroid/support/v4/media/session/MediaControllerCompat$a;
    if-eqz v0, :L0
  .line 2
    invoke-virtual { v0, p1 }, Landroid/support/v4/media/session/MediaControllerCompat$a;->f(Ljava/lang/CharSequence;)V
  :L0
    return-void
.end method

.method public d(Ljava/lang/Object;)V
  .registers 3
  .line 1
    iget-object v0, p0, Landroid/support/v4/media/session/MediaControllerCompat$a$b;->a:Ljava/lang/ref/WeakReference;
    invoke-virtual { v0 }, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Landroid/support/v4/media/session/MediaControllerCompat$a;
    if-eqz v0, :L0
  .line 2
    invoke-static { p1 }, Landroid/support/v4/media/MediaMetadataCompat;->k(Ljava/lang/Object;)Landroid/support/v4/media/MediaMetadataCompat;
    move-result-object p1
    invoke-virtual { v0, p1 }, Landroid/support/v4/media/session/MediaControllerCompat$a;->c(Landroid/support/v4/media/MediaMetadataCompat;)V
  :L0
    return-void
.end method

.method public e()V
  .registers 2
  .line 1
    iget-object v0, p0, Landroid/support/v4/media/session/MediaControllerCompat$a$b;->a:Ljava/lang/ref/WeakReference;
    invoke-virtual { v0 }, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Landroid/support/v4/media/session/MediaControllerCompat$a;
    if-eqz v0, :L0
  .line 2
    invoke-virtual { v0 }, Landroid/support/v4/media/session/MediaControllerCompat$a;->g()V
  :L0
    return-void
.end method

.method public f(IIIII)V
  .registers 14
  .line 1
    iget-object v0, p0, Landroid/support/v4/media/session/MediaControllerCompat$a$b;->a:Ljava/lang/ref/WeakReference;
    invoke-virtual { v0 }, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Landroid/support/v4/media/session/MediaControllerCompat$a;
    if-eqz v0, :L0
  .line 2
    new-instance v7, Landroid/support/v4/media/session/MediaControllerCompat$e;
    move-object v1, v7
    move v2, p1
    move v3, p2
    move v4, p3
    move v5, p4
    move v6, p5
    invoke-direct/range { v1 .. v6 }, Landroid/support/v4/media/session/MediaControllerCompat$e;-><init>(IIIII)V
    invoke-virtual { v0, v7 }, Landroid/support/v4/media/session/MediaControllerCompat$a;->a(Landroid/support/v4/media/session/MediaControllerCompat$e;)V
  :L0
    return-void
.end method

.method public g(Ljava/lang/String;Landroid/os/Bundle;)V
  .registers 6
  .line 1
    iget-object v0, p0, Landroid/support/v4/media/session/MediaControllerCompat$a$b;->a:Ljava/lang/ref/WeakReference;
    invoke-virtual { v0 }, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Landroid/support/v4/media/session/MediaControllerCompat$a;
    if-eqz v0, :L1
  .line 2
    iget-object v1, v0, Landroid/support/v4/media/session/MediaControllerCompat$a;->c:Landroid/support/v4/media/session/a;
    if-eqz v1, :L0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v2, 23
    if-ge v1, v2, :L0
    goto :L1
  :L0
  .line 3
    invoke-virtual { v0, p1, p2 }, Landroid/support/v4/media/session/MediaControllerCompat$a;->h(Ljava/lang/String;Landroid/os/Bundle;)V
  :L1
    return-void
.end method

.method public o(Landroid/os/Bundle;)V
  .registers 3
  .line 1
    iget-object v0, p0, Landroid/support/v4/media/session/MediaControllerCompat$a$b;->a:Ljava/lang/ref/WeakReference;
    invoke-virtual { v0 }, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Landroid/support/v4/media/session/MediaControllerCompat$a;
    if-eqz v0, :L0
  .line 2
    invoke-virtual { v0, p1 }, Landroid/support/v4/media/session/MediaControllerCompat$a;->b(Landroid/os/Bundle;)V
  :L0
    return-void
.end method
