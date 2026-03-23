.class Landroid/support/v4/media/session/MediaSessionCompat$g;
.super Ljava/lang/Object;
.implements Landroid/support/v4/media/session/MediaSessionCompat$d;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Landroid/support/v4/media/session/MediaSessionCompat;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 8
  name = "g"
.end annotation
.annotation system Ldalvik/annotation/MemberClasses;
  value = {
    Landroid/support/v4/media/session/MediaSessionCompat$g$a;
  }
.end annotation

.field final a:Ljava/lang/Object;

.field final b:Landroid/support/v4/media/session/MediaSessionCompat$Token;

.field c:Z

.field final d:Landroid/os/RemoteCallbackList;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "Landroid/os/RemoteCallbackList<",
      "Landroid/support/v4/media/session/a;",
      ">;"
    }
  .end annotation
.end field

.field e:Landroid/support/v4/media/session/PlaybackStateCompat;

.field f:Ljava/util/List;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "Ljava/util/List<",
      "Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;",
      ">;"
    }
  .end annotation
.end field

.field g:Landroid/support/v4/media/MediaMetadataCompat;

.field h:I

.field i:Z

.field j:I

.field k:I

.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V
  .registers 5
  .line 1
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    const/4 v0, 0
  .line 2
    iput-boolean v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$g;->c:Z
  .line 3
    new-instance v0, Landroid/os/RemoteCallbackList;
    invoke-direct { v0 }, Landroid/os/RemoteCallbackList;-><init>()V
    iput-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$g;->d:Landroid/os/RemoteCallbackList;
  .line 4
    invoke-static { p1, p2 }, Landroid/support/v4/media/session/d;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;
    move-result-object p1
    iput-object p1, p0, Landroid/support/v4/media/session/MediaSessionCompat$g;->a:Ljava/lang/Object;
  .line 5
    new-instance p1, Landroid/support/v4/media/session/MediaSessionCompat$Token;
    iget-object p2, p0, Landroid/support/v4/media/session/MediaSessionCompat$g;->a:Ljava/lang/Object;
    invoke-static { p2 }, Landroid/support/v4/media/session/d;->c(Ljava/lang/Object;)Landroid/os/Parcelable;
    move-result-object p2
    new-instance v0, Landroid/support/v4/media/session/MediaSessionCompat$g$a;
    invoke-direct { v0, p0 }, Landroid/support/v4/media/session/MediaSessionCompat$g$a;-><init>(Landroid/support/v4/media/session/MediaSessionCompat$g;)V
    invoke-direct { p1, p2, v0, p3 }, Landroid/support/v4/media/session/MediaSessionCompat$Token;-><init>(Ljava/lang/Object;Landroid/support/v4/media/session/b;Landroid/os/Bundle;)V
    iput-object p1, p0, Landroid/support/v4/media/session/MediaSessionCompat$g;->b:Landroid/support/v4/media/session/MediaSessionCompat$Token;
    return-void
.end method

.method public a()V
  .registers 2
    const/4 v0, 1
  .line 1
    iput-boolean v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$g;->c:Z
  .line 2
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$g;->a:Ljava/lang/Object;
    invoke-static { v0 }, Landroid/support/v4/media/session/d;->d(Ljava/lang/Object;)V
    return-void
.end method

.method public b(Landroid/app/PendingIntent;)V
  .registers 3
  .line 1
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$g;->a:Ljava/lang/Object;
    invoke-static { v0, p1 }, Landroid/support/v4/media/session/d;->h(Ljava/lang/Object;Landroid/app/PendingIntent;)V
    return-void
.end method

.method public c(Z)V
  .registers 3
  .line 1
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$g;->a:Ljava/lang/Object;
    invoke-static { v0, p1 }, Landroid/support/v4/media/session/d;->e(Ljava/lang/Object;Z)V
    return-void
.end method

.method public d()Landroid/support/v4/media/session/MediaSessionCompat$Token;
  .registers 2
  .line 1
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$g;->b:Landroid/support/v4/media/session/MediaSessionCompat$Token;
    return-object v0
.end method

.method public e()Landroidx/media/a;
  .registers 2
    const/4 v0, 0
    return-object v0
.end method

.method public f(Landroidx/media/a;)V
  .registers 2
    return-void
.end method

.method public g(Landroid/support/v4/media/session/PlaybackStateCompat;)V
  .catch Landroid/os/RemoteException; { :L1 .. :L2 } :L2
  .registers 4
  .line 1
    iput-object p1, p0, Landroid/support/v4/media/session/MediaSessionCompat$g;->e:Landroid/support/v4/media/session/PlaybackStateCompat;
  .line 2
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$g;->d:Landroid/os/RemoteCallbackList;
    invoke-virtual { v0 }, Landroid/os/RemoteCallbackList;->beginBroadcast()I
    move-result v0
    add-int/lit8 v0, v0, -1
  :L0
    if-ltz v0, :L3
  .line 3
    iget-object v1, p0, Landroid/support/v4/media/session/MediaSessionCompat$g;->d:Landroid/os/RemoteCallbackList;
    invoke-virtual { v1, v0 }, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;
    move-result-object v1
    check-cast v1, Landroid/support/v4/media/session/a;
  :L1
  .line 4
    invoke-interface { v1, p1 }, Landroid/support/v4/media/session/a;->G0(Landroid/support/v4/media/session/PlaybackStateCompat;)V
  :L2
    add-int/lit8 v0, v0, -1
    goto :L0
  :L3
  .line 5
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$g;->d:Landroid/os/RemoteCallbackList;
    invoke-virtual { v0 }, Landroid/os/RemoteCallbackList;->finishBroadcast()V
  .line 6
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$g;->a:Ljava/lang/Object;
    if-nez p1, :L4
    const/4 p1, 0
    goto :L5
  :L4
  .line 7
    invoke-virtual { p1 }, Landroid/support/v4/media/session/PlaybackStateCompat;->n()Ljava/lang/Object;
    move-result-object p1
  :L5
  .line 8
    invoke-static { v0, p1 }, Landroid/support/v4/media/session/d;->i(Ljava/lang/Object;Ljava/lang/Object;)V
    return-void
.end method

.method public h(Landroid/support/v4/media/session/MediaSessionCompat$c;Landroid/os/Handler;)V
  .registers 5
  .line 1
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$g;->a:Ljava/lang/Object;
    if-nez p1, :L0
    const/4 v1, 0
    goto :L1
  :L0
    iget-object v1, p1, Landroid/support/v4/media/session/MediaSessionCompat$c;->a:Ljava/lang/Object;
  :L1
    invoke-static { v0, v1, p2 }, Landroid/support/v4/media/session/d;->f(Ljava/lang/Object;Ljava/lang/Object;Landroid/os/Handler;)V
    if-eqz p1, :L2
  .line 2
    invoke-virtual { p1, p0, p2 }, Landroid/support/v4/media/session/MediaSessionCompat$c;->C(Landroid/support/v4/media/session/MediaSessionCompat$d;Landroid/os/Handler;)V
  :L2
    return-void
.end method

.method public i()Landroid/support/v4/media/session/PlaybackStateCompat;
  .registers 2
  .line 1
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$g;->e:Landroid/support/v4/media/session/PlaybackStateCompat;
    return-object v0
.end method

.method public j(I)V
  .registers 3
  .line 1
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$g;->a:Ljava/lang/Object;
    invoke-static { v0, p1 }, Landroid/support/v4/media/session/d;->g(Ljava/lang/Object;I)V
    return-void
.end method

.method public k()Ljava/lang/String;
  .registers 3
  .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v1, 24
    if-ge v0, v1, :L0
    const/4 v0, 0
    return-object v0
  :L0
  .line 2
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$g;->a:Ljava/lang/Object;
    invoke-static { v0 }, Landroid/support/v4/media/session/f;->b(Ljava/lang/Object;)Ljava/lang/String;
    move-result-object v0
    return-object v0
.end method
