.class public abstract Landroid/support/v4/media/session/MediaSessionCompat$c;
.super Ljava/lang/Object;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Landroid/support/v4/media/session/MediaSessionCompat;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 1033
  name = "c"
.end annotation
.annotation system Ldalvik/annotation/MemberClasses;
  value = {
    Landroid/support/v4/media/session/MediaSessionCompat$c$d;,
    Landroid/support/v4/media/session/MediaSessionCompat$c$c;,
    Landroid/support/v4/media/session/MediaSessionCompat$c$b;,
    Landroid/support/v4/media/session/MediaSessionCompat$c$a;
  }
.end annotation

.field final a:Ljava/lang/Object;

.field b:Ljava/lang/ref/WeakReference;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "Ljava/lang/ref/WeakReference<",
      "Landroid/support/v4/media/session/MediaSessionCompat$d;",
      ">;"
    }
  .end annotation
.end field

.field private c:Landroid/support/v4/media/session/MediaSessionCompat$c$a;

.field private d:Z

.method public constructor <init>()V
  .registers 4
  .line 1
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    const/4 v0, 0
  .line 2
    iput-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$c;->c:Landroid/support/v4/media/session/MediaSessionCompat$c$a;
  .line 3
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v2, 24
    if-lt v1, v2, :L0
  .line 4
    new-instance v0, Landroid/support/v4/media/session/MediaSessionCompat$c$d;
    invoke-direct { v0, p0 }, Landroid/support/v4/media/session/MediaSessionCompat$c$d;-><init>(Landroid/support/v4/media/session/MediaSessionCompat$c;)V
    invoke-static { v0 }, Landroid/support/v4/media/session/f;->a(Landroid/support/v4/media/session/f$a;)Ljava/lang/Object;
    move-result-object v0
    iput-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$c;->a:Ljava/lang/Object;
    goto :L3
  :L0
    const/16 v2, 23
    if-lt v1, v2, :L1
  .line 5
    new-instance v0, Landroid/support/v4/media/session/MediaSessionCompat$c$c;
    invoke-direct { v0, p0 }, Landroid/support/v4/media/session/MediaSessionCompat$c$c;-><init>(Landroid/support/v4/media/session/MediaSessionCompat$c;)V
    invoke-static { v0 }, Landroid/support/v4/media/session/e;->a(Landroid/support/v4/media/session/e$a;)Ljava/lang/Object;
    move-result-object v0
    iput-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$c;->a:Ljava/lang/Object;
    goto :L3
  :L1
    const/16 v2, 21
    if-lt v1, v2, :L2
  .line 6
    new-instance v0, Landroid/support/v4/media/session/MediaSessionCompat$c$b;
    invoke-direct { v0, p0 }, Landroid/support/v4/media/session/MediaSessionCompat$c$b;-><init>(Landroid/support/v4/media/session/MediaSessionCompat$c;)V
    invoke-static { v0 }, Landroid/support/v4/media/session/d;->a(Landroid/support/v4/media/session/d$a;)Ljava/lang/Object;
    move-result-object v0
    iput-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$c;->a:Ljava/lang/Object;
    goto :L3
  :L2
  .line 7
    iput-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$c;->a:Ljava/lang/Object;
  :L3
    return-void
.end method

.method public A(J)V
  .registers 3
    return-void
.end method

.method public B()V
  .registers 1
    return-void
.end method

.method C(Landroid/support/v4/media/session/MediaSessionCompat$d;Landroid/os/Handler;)V
  .registers 4
  .line 1
    new-instance v0, Ljava/lang/ref/WeakReference;
    invoke-direct { v0, p1 }, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V
    iput-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$c;->b:Ljava/lang/ref/WeakReference;
  .line 2
    iget-object p1, p0, Landroid/support/v4/media/session/MediaSessionCompat$c;->c:Landroid/support/v4/media/session/MediaSessionCompat$c$a;
    if-eqz p1, :L0
    const/4 v0, 0
  .line 3
    invoke-virtual { p1, v0 }, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V
  :L0
  .line 4
    new-instance p1, Landroid/support/v4/media/session/MediaSessionCompat$c$a;
    invoke-virtual { p2 }, Landroid/os/Handler;->getLooper()Landroid/os/Looper;
    move-result-object p2
    invoke-direct { p1, p0, p2 }, Landroid/support/v4/media/session/MediaSessionCompat$c$a;-><init>(Landroid/support/v4/media/session/MediaSessionCompat$c;Landroid/os/Looper;)V
    iput-object p1, p0, Landroid/support/v4/media/session/MediaSessionCompat$c;->c:Landroid/support/v4/media/session/MediaSessionCompat$c$a;
    return-void
.end method

.method a(Landroidx/media/a;)V
  .registers 13
  .line 1
    iget-boolean v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$c;->d:Z
    if-nez v0, :L0
    return-void
  :L0
    const/4 v0, 0
  .line 2
    iput-boolean v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$c;->d:Z
  .line 3
    iget-object v1, p0, Landroid/support/v4/media/session/MediaSessionCompat$c;->c:Landroid/support/v4/media/session/MediaSessionCompat$c$a;
    const/4 v2, 1
    invoke-virtual { v1, v2 }, Landroid/os/Handler;->removeMessages(I)V
  .line 4
    iget-object v1, p0, Landroid/support/v4/media/session/MediaSessionCompat$c;->b:Ljava/lang/ref/WeakReference;
    invoke-virtual { v1 }, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
    move-result-object v1
    check-cast v1, Landroid/support/v4/media/session/MediaSessionCompat$d;
    if-nez v1, :L1
    return-void
  :L1
  .line 5
    invoke-interface { v1 }, Landroid/support/v4/media/session/MediaSessionCompat$d;->i()Landroid/support/v4/media/session/PlaybackStateCompat;
    move-result-object v3
    const-wide/16 v4, 0
    if-nez v3, :L2
    move-wide v6, v4
    goto :L3
  :L2
  .line 6
    invoke-virtual { v3 }, Landroid/support/v4/media/session/PlaybackStateCompat;->k()J
    move-result-wide v6
  :L3
    if-eqz v3, :L4
  .line 7
    invoke-virtual { v3 }, Landroid/support/v4/media/session/PlaybackStateCompat;->p()I
    move-result v3
    const/4 v8, 3
    if-ne v3, v8, :L4
    const/4 v3, 1
    goto :L5
  :L4
    const/4 v3, 0
  :L5
    const-wide/16 v8, 516
    and-long/2addr v8, v6
    cmp-long v10, v8, v4
    if-eqz v10, :L6
    const/4 v8, 1
    goto :L7
  :L6
    const/4 v8, 0
  :L7
    const-wide/16 v9, 514
    and-long/2addr v6, v9
    cmp-long v9, v6, v4
    if-eqz v9, :L8
    const/4 v0, 1
  :L8
  .line 8
    invoke-interface { v1, p1 }, Landroid/support/v4/media/session/MediaSessionCompat$d;->f(Landroidx/media/a;)V
    if-eqz v3, :L9
    if-eqz v0, :L9
  .line 9
    invoke-virtual { p0 }, Landroid/support/v4/media/session/MediaSessionCompat$c;->h()V
    goto :L10
  :L9
    if-nez v3, :L10
    if-eqz v8, :L10
  .line 10
    invoke-virtual { p0 }, Landroid/support/v4/media/session/MediaSessionCompat$c;->i()V
  :L10
    const/4 p1, 0
  .line 11
    invoke-interface { v1, p1 }, Landroid/support/v4/media/session/MediaSessionCompat$d;->f(Landroidx/media/a;)V
    return-void
.end method

.method public b(Landroid/support/v4/media/MediaDescriptionCompat;)V
  .registers 2
    return-void
.end method

.method public c(Landroid/support/v4/media/MediaDescriptionCompat;I)V
  .registers 3
    return-void
.end method

.method public d(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V
  .registers 4
    return-void
.end method

.method public e(Ljava/lang/String;Landroid/os/Bundle;)V
  .registers 3
    return-void
.end method

.method public f()V
  .registers 1
    return-void
.end method

.method public g(Landroid/content/Intent;)Z
  .registers 10
  .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    const/4 v1, 0
    const/16 v2, 27
    if-lt v0, v2, :L0
    return v1
  :L0
  .line 2
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$c;->b:Ljava/lang/ref/WeakReference;
    invoke-virtual { v0 }, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Landroid/support/v4/media/session/MediaSessionCompat$d;
    if-eqz v0, :L9
  .line 3
    iget-object v2, p0, Landroid/support/v4/media/session/MediaSessionCompat$c;->c:Landroid/support/v4/media/session/MediaSessionCompat$c$a;
    if-nez v2, :L1
    goto :L9
  :L1
    const-string v2, "android.intent.extra.KEY_EVENT"
  .line 4
    invoke-virtual { p1, v2 }, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;
    move-result-object p1
    check-cast p1, Landroid/view/KeyEvent;
    if-eqz p1, :L9
  .line 5
    invoke-virtual { p1 }, Landroid/view/KeyEvent;->getAction()I
    move-result v2
    if-eqz v2, :L2
    goto :L9
  :L2
  .line 6
    invoke-interface { v0 }, Landroid/support/v4/media/session/MediaSessionCompat$d;->e()Landroidx/media/a;
    move-result-object v2
  .line 7
    invoke-virtual { p1 }, Landroid/view/KeyEvent;->getKeyCode()I
    move-result v3
    const/16 v4, 79
    if-eq v3, v4, :L3
    const/16 v4, 85
    if-eq v3, v4, :L3
  .line 8
    invoke-virtual { p0, v2 }, Landroid/support/v4/media/session/MediaSessionCompat$c;->a(Landroidx/media/a;)V
    return v1
  :L3
  .line 9
    invoke-virtual { p1 }, Landroid/view/KeyEvent;->getRepeatCount()I
    move-result p1
    const/4 v3, 1
    if-lez p1, :L4
  .line 10
    invoke-virtual { p0, v2 }, Landroid/support/v4/media/session/MediaSessionCompat$c;->a(Landroidx/media/a;)V
    goto :L8
  :L4
  .line 11
    iget-boolean p1, p0, Landroid/support/v4/media/session/MediaSessionCompat$c;->d:Z
    if-eqz p1, :L7
  .line 12
    iget-object p1, p0, Landroid/support/v4/media/session/MediaSessionCompat$c;->c:Landroid/support/v4/media/session/MediaSessionCompat$c$a;
    invoke-virtual { p1, v3 }, Landroid/os/Handler;->removeMessages(I)V
  .line 13
    iput-boolean v1, p0, Landroid/support/v4/media/session/MediaSessionCompat$c;->d:Z
  .line 14
    invoke-interface { v0 }, Landroid/support/v4/media/session/MediaSessionCompat$d;->i()Landroid/support/v4/media/session/PlaybackStateCompat;
    move-result-object p1
    const-wide/16 v0, 0
    if-nez p1, :L5
    move-wide v4, v0
    goto :L6
  :L5
  .line 15
    invoke-virtual { p1 }, Landroid/support/v4/media/session/PlaybackStateCompat;->k()J
    move-result-wide v4
  :L6
    const-wide/16 v6, 32
    and-long/2addr v4, v6
    cmp-long p1, v4, v0
    if-eqz p1, :L8
  .line 16
    invoke-virtual { p0 }, Landroid/support/v4/media/session/MediaSessionCompat$c;->y()V
    goto :L8
  :L7
  .line 17
    iput-boolean v3, p0, Landroid/support/v4/media/session/MediaSessionCompat$c;->d:Z
  .line 18
    iget-object p1, p0, Landroid/support/v4/media/session/MediaSessionCompat$c;->c:Landroid/support/v4/media/session/MediaSessionCompat$c$a;
    invoke-virtual { p1, v3, v2 }, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;
    move-result-object v0
  .line 19
    invoke-static { }, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I
    move-result v1
    int-to-long v1, v1
  .line 20
    invoke-virtual { p1, v0, v1, v2 }, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
  :L8
    return v3
  :L9
    return v1
.end method

.method public h()V
  .registers 1
    return-void
.end method

.method public i()V
  .registers 1
    return-void
.end method

.method public j(Ljava/lang/String;Landroid/os/Bundle;)V
  .registers 3
    return-void
.end method

.method public k(Ljava/lang/String;Landroid/os/Bundle;)V
  .registers 3
    return-void
.end method

.method public l(Landroid/net/Uri;Landroid/os/Bundle;)V
  .registers 3
    return-void
.end method

.method public m()V
  .registers 1
    return-void
.end method

.method public n(Ljava/lang/String;Landroid/os/Bundle;)V
  .registers 3
    return-void
.end method

.method public o(Ljava/lang/String;Landroid/os/Bundle;)V
  .registers 3
    return-void
.end method

.method public p(Landroid/net/Uri;Landroid/os/Bundle;)V
  .registers 3
    return-void
.end method

.method public q(Landroid/support/v4/media/MediaDescriptionCompat;)V
  .registers 2
    return-void
.end method

.method public r()V
  .registers 1
    return-void
.end method

.method public s(J)V
  .registers 3
    return-void
.end method

.method public t(Z)V
  .registers 2
    return-void
.end method

.method public u(Landroid/support/v4/media/RatingCompat;)V
  .registers 2
    return-void
.end method

.method public v(Landroid/support/v4/media/RatingCompat;Landroid/os/Bundle;)V
  .registers 3
    return-void
.end method

.method public w(I)V
  .registers 2
    return-void
.end method

.method public x(I)V
  .registers 2
    return-void
.end method

.method public y()V
  .registers 1
    return-void
.end method

.method public z()V
  .registers 1
    return-void
.end method
