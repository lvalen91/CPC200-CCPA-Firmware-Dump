.class Landroid/support/v4/media/session/e$b;
.super Landroid/support/v4/media/session/d$b;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Landroid/support/v4/media/session/e;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 8
  name = "b"
.end annotation
.annotation system Ldalvik/annotation/Signature;
  value = {
    "<T::",
    "Landroid/support/v4/media/session/e$a;",
    ">",
    "Landroid/support/v4/media/session/d$b<",
    "TT;>;"
  }
.end annotation

.method public constructor <init>(Landroid/support/v4/media/session/e$a;)V
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(TT;)V"
    }
  .end annotation
  .registers 2
  .line 1
    invoke-direct { p0, p1 }, Landroid/support/v4/media/session/d$b;-><init>(Landroid/support/v4/media/session/d$a;)V
    return-void
.end method

.method public onPlayFromUri(Landroid/net/Uri;Landroid/os/Bundle;)V
  .registers 4
  .line 1
    invoke-static { p2 }, Landroid/support/v4/media/session/MediaSessionCompat;->a(Landroid/os/Bundle;)V
  .line 2
    iget-object v0, p0, Landroid/support/v4/media/session/d$b;->a:Landroid/support/v4/media/session/d$a;
    check-cast v0, Landroid/support/v4/media/session/e$a;
    invoke-interface { v0, p1, p2 }, Landroid/support/v4/media/session/e$a;->t(Landroid/net/Uri;Landroid/os/Bundle;)V
    return-void
.end method
