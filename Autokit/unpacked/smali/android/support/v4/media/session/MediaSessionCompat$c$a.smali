.class Landroid/support/v4/media/session/MediaSessionCompat$c$a;
.super Landroid/os/Handler;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Landroid/support/v4/media/session/MediaSessionCompat$c;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 2
  name = "a"
.end annotation

.field final synthetic a:Landroid/support/v4/media/session/MediaSessionCompat$c;

.method constructor <init>(Landroid/support/v4/media/session/MediaSessionCompat$c;Landroid/os/Looper;)V
  .registers 3
  .line 1
    iput-object p1, p0, Landroid/support/v4/media/session/MediaSessionCompat$c$a;->a:Landroid/support/v4/media/session/MediaSessionCompat$c;
  .line 2
    invoke-direct { p0, p2 }, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
  .registers 4
  .line 1
    iget v0, p1, Landroid/os/Message;->what:I
    const/4 v1, 1
    if-ne v0, v1, :L0
  .line 2
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$c$a;->a:Landroid/support/v4/media/session/MediaSessionCompat$c;
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;
    check-cast p1, Landroidx/media/a;
    invoke-virtual { v0, p1 }, Landroid/support/v4/media/session/MediaSessionCompat$c;->a(Landroidx/media/a;)V
  :L0
    return-void
.end method
