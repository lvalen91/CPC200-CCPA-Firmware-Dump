.class Landroid/support/v4/media/session/f$b;
.super Landroid/support/v4/media/session/e$b;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Landroid/support/v4/media/session/f;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 8
  name = "b"
.end annotation
.annotation system Ldalvik/annotation/Signature;
  value = {
    "<T::",
    "Landroid/support/v4/media/session/f$a;",
    ">",
    "Landroid/support/v4/media/session/e$b<",
    "TT;>;"
  }
.end annotation

.method public constructor <init>(Landroid/support/v4/media/session/f$a;)V
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(TT;)V"
    }
  .end annotation
  .registers 2
  .line 1
    invoke-direct { p0, p1 }, Landroid/support/v4/media/session/e$b;-><init>(Landroid/support/v4/media/session/e$a;)V
    return-void
.end method

.method public onPrepare()V
  .registers 2
  .line 1
    iget-object v0, p0, Landroid/support/v4/media/session/d$b;->a:Landroid/support/v4/media/session/d$a;
    check-cast v0, Landroid/support/v4/media/session/f$a;
    invoke-interface { v0 }, Landroid/support/v4/media/session/f$a;->a()V
    return-void
.end method

.method public onPrepareFromMediaId(Ljava/lang/String;Landroid/os/Bundle;)V
  .registers 4
  .line 1
    invoke-static { p2 }, Landroid/support/v4/media/session/MediaSessionCompat;->a(Landroid/os/Bundle;)V
  .line 2
    iget-object v0, p0, Landroid/support/v4/media/session/d$b;->a:Landroid/support/v4/media/session/d$a;
    check-cast v0, Landroid/support/v4/media/session/f$a;
    invoke-interface { v0, p1, p2 }, Landroid/support/v4/media/session/f$a;->h(Ljava/lang/String;Landroid/os/Bundle;)V
    return-void
.end method

.method public onPrepareFromSearch(Ljava/lang/String;Landroid/os/Bundle;)V
  .registers 4
  .line 1
    invoke-static { p2 }, Landroid/support/v4/media/session/MediaSessionCompat;->a(Landroid/os/Bundle;)V
  .line 2
    iget-object v0, p0, Landroid/support/v4/media/session/d$b;->a:Landroid/support/v4/media/session/d$a;
    check-cast v0, Landroid/support/v4/media/session/f$a;
    invoke-interface { v0, p1, p2 }, Landroid/support/v4/media/session/f$a;->r(Ljava/lang/String;Landroid/os/Bundle;)V
    return-void
.end method

.method public onPrepareFromUri(Landroid/net/Uri;Landroid/os/Bundle;)V
  .registers 4
  .line 1
    invoke-static { p2 }, Landroid/support/v4/media/session/MediaSessionCompat;->a(Landroid/os/Bundle;)V
  .line 2
    iget-object v0, p0, Landroid/support/v4/media/session/d$b;->a:Landroid/support/v4/media/session/d$a;
    check-cast v0, Landroid/support/v4/media/session/f$a;
    invoke-interface { v0, p1, p2 }, Landroid/support/v4/media/session/f$a;->c(Landroid/net/Uri;Landroid/os/Bundle;)V
    return-void
.end method
