.class Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21$ExtraBinderRequestResultReceiver;
.super Landroid/os/ResultReceiver;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 10
  name = "ExtraBinderRequestResultReceiver"
.end annotation

.field private b:Ljava/lang/ref/WeakReference;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "Ljava/lang/ref/WeakReference<",
      "Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21;",
      ">;"
    }
  .end annotation
.end field

.method constructor <init>(Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21;)V
  .registers 3
    const/4 v0, 0
  .line 1
    invoke-direct { p0, v0 }, Landroid/os/ResultReceiver;-><init>(Landroid/os/Handler;)V
  .line 2
    new-instance v0, Ljava/lang/ref/WeakReference;
    invoke-direct { v0, p1 }, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V
    iput-object v0, p0, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21$ExtraBinderRequestResultReceiver;->b:Ljava/lang/ref/WeakReference;
    return-void
.end method

.method protected onReceiveResult(ILandroid/os/Bundle;)V
  .catchall { :L1 .. :L3 } :L2
  .registers 6
  .line 1
    iget-object p1, p0, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21$ExtraBinderRequestResultReceiver;->b:Ljava/lang/ref/WeakReference;
    invoke-virtual { p1 }, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
    move-result-object p1
    check-cast p1, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21;
    if-eqz p1, :L4
    if-nez p2, :L0
    goto :L4
  :L0
  .line 2
    iget-object v0, p1, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21;->b:Ljava/lang/Object;
    monitor-enter v0
  :L1
  .line 3
    iget-object v1, p1, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21;->e:Landroid/support/v4/media/session/MediaSessionCompat$Token;
    const-string v2, "android.support.v4.media.session.EXTRA_BINDER"
  .line 4
    invoke-static { p2, v2 }, Landroidx/core/app/e;->a(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/IBinder;
    move-result-object v2
  .line 5
    invoke-static { v2 }, Landroid/support/v4/media/session/b$a;->u(Landroid/os/IBinder;)Landroid/support/v4/media/session/b;
    move-result-object v2
  .line 6
    invoke-virtual { v1, v2 }, Landroid/support/v4/media/session/MediaSessionCompat$Token;->m(Landroid/support/v4/media/session/b;)V
  .line 7
    iget-object v1, p1, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21;->e:Landroid/support/v4/media/session/MediaSessionCompat$Token;
    const-string v2, "android.support.v4.media.session.SESSION_TOKEN2_BUNDLE"
  .line 8
    invoke-virtual { p2, v2 }, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;
    move-result-object p2
  .line 9
    invoke-virtual { v1, p2 }, Landroid/support/v4/media/session/MediaSessionCompat$Token;->n(Landroid/os/Bundle;)V
  .line 10
    invoke-virtual { p1 }, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21;->a()V
  .line 11
    monitor-exit v0
    return-void
  :L2
    move-exception p1
    monitor-exit v0
  :L3
    throw p1
  :L4
    return-void
.end method
