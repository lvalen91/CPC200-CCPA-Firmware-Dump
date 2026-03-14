.class Landroid/support/v4/media/session/d$b;
.super Landroid/media/session/MediaSession$Callback;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Landroid/support/v4/media/session/d;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 8
  name = "b"
.end annotation
.annotation system Ldalvik/annotation/Signature;
  value = {
    "<T::",
    "Landroid/support/v4/media/session/d$a;",
    ">",
    "Landroid/media/session/MediaSession$Callback;"
  }
.end annotation

.field protected final a:Landroid/support/v4/media/session/d$a;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "TT;"
    }
  .end annotation
.end field

.method public constructor <init>(Landroid/support/v4/media/session/d$a;)V
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(TT;)V"
    }
  .end annotation
  .registers 2
  .line 1
    invoke-direct { p0 }, Landroid/media/session/MediaSession$Callback;-><init>()V
  .line 2
    iput-object p1, p0, Landroid/support/v4/media/session/d$b;->a:Landroid/support/v4/media/session/d$a;
    return-void
.end method

.method public onCommand(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V
  .registers 5
  .line 1
    invoke-static { p2 }, Landroid/support/v4/media/session/MediaSessionCompat;->a(Landroid/os/Bundle;)V
  .line 2
    iget-object v0, p0, Landroid/support/v4/media/session/d$b;->a:Landroid/support/v4/media/session/d$a;
    invoke-interface { v0, p1, p2, p3 }, Landroid/support/v4/media/session/d$a;->j(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V
    return-void
.end method

.method public onCustomAction(Ljava/lang/String;Landroid/os/Bundle;)V
  .registers 4
  .line 1
    invoke-static { p2 }, Landroid/support/v4/media/session/MediaSessionCompat;->a(Landroid/os/Bundle;)V
  .line 2
    iget-object v0, p0, Landroid/support/v4/media/session/d$b;->a:Landroid/support/v4/media/session/d$a;
    invoke-interface { v0, p1, p2 }, Landroid/support/v4/media/session/d$a;->p(Ljava/lang/String;Landroid/os/Bundle;)V
    return-void
.end method

.method public onFastForward()V
  .registers 2
  .line 1
    iget-object v0, p0, Landroid/support/v4/media/session/d$b;->a:Landroid/support/v4/media/session/d$a;
    invoke-interface { v0 }, Landroid/support/v4/media/session/d$a;->m()V
    return-void
.end method

.method public onMediaButtonEvent(Landroid/content/Intent;)Z
  .registers 3
  .line 1
    iget-object v0, p0, Landroid/support/v4/media/session/d$b;->a:Landroid/support/v4/media/session/d$a;
    invoke-interface { v0, p1 }, Landroid/support/v4/media/session/d$a;->n(Landroid/content/Intent;)Z
    move-result v0
    if-nez v0, :L1
  .line 2
    invoke-super { p0, p1 }, Landroid/media/session/MediaSession$Callback;->onMediaButtonEvent(Landroid/content/Intent;)Z
    move-result p1
    if-eqz p1, :L0
    goto :L1
  :L0
    const/4 p1, 0
    goto :L2
  :L1
    const/4 p1, 1
  :L2
    return p1
.end method

.method public onPause()V
  .registers 2
  .line 1
    iget-object v0, p0, Landroid/support/v4/media/session/d$b;->a:Landroid/support/v4/media/session/d$a;
    invoke-interface { v0 }, Landroid/support/v4/media/session/d$a;->i()V
    return-void
.end method

.method public onPlay()V
  .registers 2
  .line 1
    iget-object v0, p0, Landroid/support/v4/media/session/d$b;->a:Landroid/support/v4/media/session/d$a;
    invoke-interface { v0 }, Landroid/support/v4/media/session/d$a;->d()V
    return-void
.end method

.method public onPlayFromMediaId(Ljava/lang/String;Landroid/os/Bundle;)V
  .registers 4
  .line 1
    invoke-static { p2 }, Landroid/support/v4/media/session/MediaSessionCompat;->a(Landroid/os/Bundle;)V
  .line 2
    iget-object v0, p0, Landroid/support/v4/media/session/d$b;->a:Landroid/support/v4/media/session/d$a;
    invoke-interface { v0, p1, p2 }, Landroid/support/v4/media/session/d$a;->l(Ljava/lang/String;Landroid/os/Bundle;)V
    return-void
.end method

.method public onPlayFromSearch(Ljava/lang/String;Landroid/os/Bundle;)V
  .registers 4
  .line 1
    invoke-static { p2 }, Landroid/support/v4/media/session/MediaSessionCompat;->a(Landroid/os/Bundle;)V
  .line 2
    iget-object v0, p0, Landroid/support/v4/media/session/d$b;->a:Landroid/support/v4/media/session/d$a;
    invoke-interface { v0, p1, p2 }, Landroid/support/v4/media/session/d$a;->f(Ljava/lang/String;Landroid/os/Bundle;)V
    return-void
.end method

.method public onRewind()V
  .registers 2
  .line 1
    iget-object v0, p0, Landroid/support/v4/media/session/d$b;->a:Landroid/support/v4/media/session/d$a;
    invoke-interface { v0 }, Landroid/support/v4/media/session/d$a;->e()V
    return-void
.end method

.method public onSeekTo(J)V
  .registers 4
  .line 1
    iget-object v0, p0, Landroid/support/v4/media/session/d$b;->a:Landroid/support/v4/media/session/d$a;
    invoke-interface { v0, p1, p2 }, Landroid/support/v4/media/session/d$a;->o(J)V
    return-void
.end method

.method public onSetRating(Landroid/media/Rating;)V
  .registers 3
  .line 1
    iget-object v0, p0, Landroid/support/v4/media/session/d$b;->a:Landroid/support/v4/media/session/d$a;
    invoke-interface { v0, p1 }, Landroid/support/v4/media/session/d$a;->b(Ljava/lang/Object;)V
    return-void
.end method

.method public onSkipToNext()V
  .registers 2
  .line 1
    iget-object v0, p0, Landroid/support/v4/media/session/d$b;->a:Landroid/support/v4/media/session/d$a;
    invoke-interface { v0 }, Landroid/support/v4/media/session/d$a;->q()V
    return-void
.end method

.method public onSkipToPrevious()V
  .registers 2
  .line 1
    iget-object v0, p0, Landroid/support/v4/media/session/d$b;->a:Landroid/support/v4/media/session/d$a;
    invoke-interface { v0 }, Landroid/support/v4/media/session/d$a;->k()V
    return-void
.end method

.method public onSkipToQueueItem(J)V
  .registers 4
  .line 1
    iget-object v0, p0, Landroid/support/v4/media/session/d$b;->a:Landroid/support/v4/media/session/d$a;
    invoke-interface { v0, p1, p2 }, Landroid/support/v4/media/session/d$a;->s(J)V
    return-void
.end method

.method public onStop()V
  .registers 2
  .line 1
    iget-object v0, p0, Landroid/support/v4/media/session/d$b;->a:Landroid/support/v4/media/session/d$a;
    invoke-interface { v0 }, Landroid/support/v4/media/session/d$a;->g()V
    return-void
.end method
