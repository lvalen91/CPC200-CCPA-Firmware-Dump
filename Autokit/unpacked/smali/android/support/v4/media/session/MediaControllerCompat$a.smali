.class public abstract Landroid/support/v4/media/session/MediaControllerCompat$a;
.super Ljava/lang/Object;
.implements Landroid/os/IBinder$DeathRecipient;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Landroid/support/v4/media/session/MediaControllerCompat;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 1033
  name = "a"
.end annotation
.annotation system Ldalvik/annotation/MemberClasses;
  value = {
    Landroid/support/v4/media/session/MediaControllerCompat$a$a;,
    Landroid/support/v4/media/session/MediaControllerCompat$a$c;,
    Landroid/support/v4/media/session/MediaControllerCompat$a$b;
  }
.end annotation

.field final a:Ljava/lang/Object;

.field b:Landroid/support/v4/media/session/MediaControllerCompat$a$a;

.field c:Landroid/support/v4/media/session/a;

.method public constructor <init>()V
  .registers 3
  .line 1
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
  .line 2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v1, 21
    if-lt v0, v1, :L0
  .line 3
    new-instance v0, Landroid/support/v4/media/session/MediaControllerCompat$a$b;
    invoke-direct { v0, p0 }, Landroid/support/v4/media/session/MediaControllerCompat$a$b;-><init>(Landroid/support/v4/media/session/MediaControllerCompat$a;)V
    invoke-static { v0 }, Landroid/support/v4/media/session/c;->a(Landroid/support/v4/media/session/c$a;)Ljava/lang/Object;
    move-result-object v0
    iput-object v0, p0, Landroid/support/v4/media/session/MediaControllerCompat$a;->a:Ljava/lang/Object;
    goto :L1
  :L0
  .line 4
    new-instance v0, Landroid/support/v4/media/session/MediaControllerCompat$a$c;
    invoke-direct { v0, p0 }, Landroid/support/v4/media/session/MediaControllerCompat$a$c;-><init>(Landroid/support/v4/media/session/MediaControllerCompat$a;)V
    iput-object v0, p0, Landroid/support/v4/media/session/MediaControllerCompat$a;->c:Landroid/support/v4/media/session/a;
  :L1
    return-void
.end method

.method public a(Landroid/support/v4/media/session/MediaControllerCompat$e;)V
  .registers 2
    return-void
.end method

.method public b(Landroid/os/Bundle;)V
  .registers 2
    return-void
.end method

.method public binderDied()V
  .registers 3
    const/16 v0, 8
    const/4 v1, 0
  .line 1
    invoke-virtual { p0, v0, v1, v1 }, Landroid/support/v4/media/session/MediaControllerCompat$a;->i(ILjava/lang/Object;Landroid/os/Bundle;)V
    return-void
.end method

.method public c(Landroid/support/v4/media/MediaMetadataCompat;)V
  .registers 2
    return-void
.end method

.method public d(Landroid/support/v4/media/session/PlaybackStateCompat;)V
  .registers 2
    return-void
.end method

.method public e(Ljava/util/List;)V
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(",
      "Ljava/util/List<",
      "Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;",
      ">;)V"
    }
  .end annotation
  .registers 2
    return-void
.end method

.method public f(Ljava/lang/CharSequence;)V
  .registers 2
    return-void
.end method

.method public g()V
  .registers 1
    return-void
.end method

.method public h(Ljava/lang/String;Landroid/os/Bundle;)V
  .registers 3
    return-void
.end method

.method i(ILjava/lang/Object;Landroid/os/Bundle;)V
  .registers 5
  .line 1
    iget-object v0, p0, Landroid/support/v4/media/session/MediaControllerCompat$a;->b:Landroid/support/v4/media/session/MediaControllerCompat$a$a;
    if-eqz v0, :L0
  .line 2
    invoke-virtual { v0, p1, p2 }, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;
    move-result-object p1
  .line 3
    invoke-virtual { p1, p3 }, Landroid/os/Message;->setData(Landroid/os/Bundle;)V
  .line 4
    invoke-virtual { p1 }, Landroid/os/Message;->sendToTarget()V
  :L0
    return-void
.end method
