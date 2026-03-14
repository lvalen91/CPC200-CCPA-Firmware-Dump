.class Landroid/support/v4/media/session/MediaSessionCompat$i$c;
.super Landroid/os/Handler;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Landroid/support/v4/media/session/MediaSessionCompat$i;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = "c"
.end annotation

.field final synthetic a:Landroid/support/v4/media/session/MediaSessionCompat$i;

.method public constructor <init>(Landroid/support/v4/media/session/MediaSessionCompat$i;Landroid/os/Looper;)V
  .registers 3
  .line 1
    iput-object p1, p0, Landroid/support/v4/media/session/MediaSessionCompat$i$c;->a:Landroid/support/v4/media/session/MediaSessionCompat$i;
  .line 2
    invoke-direct { p0, p2 }, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V
    return-void
.end method

.method private a(Landroid/view/KeyEvent;Landroid/support/v4/media/session/MediaSessionCompat$c;)V
  .registers 10
    if-eqz p1, :L10
  .line 1
    invoke-virtual { p1 }, Landroid/view/KeyEvent;->getAction()I
    move-result v0
    if-eqz v0, :L0
    goto/16 :L10
  :L0
  .line 2
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$i$c;->a:Landroid/support/v4/media/session/MediaSessionCompat$i;
    iget-object v0, v0, Landroid/support/v4/media/session/MediaSessionCompat$i;->t:Landroid/support/v4/media/session/PlaybackStateCompat;
    const-wide/16 v1, 0
    if-nez v0, :L1
    move-wide v3, v1
    goto :L2
  :L1
    invoke-virtual { v0 }, Landroid/support/v4/media/session/PlaybackStateCompat;->k()J
    move-result-wide v3
  :L2
  .line 3
    invoke-virtual { p1 }, Landroid/view/KeyEvent;->getKeyCode()I
    move-result p1
    const/16 v0, 126
    if-eq p1, v0, :L9
    const/16 v0, 127
    if-eq p1, v0, :L8
    packed-switch p1, :L11
    goto :L10
  :L3
    const-wide/16 v5, 64
    and-long/2addr v3, v5
    cmp-long p1, v3, v1
    if-eqz p1, :L10
  .line 4
    invoke-virtual { p2 }, Landroid/support/v4/media/session/MediaSessionCompat$c;->f()V
    goto :L10
  :L4
    const-wide/16 v5, 8
    and-long/2addr v3, v5
    cmp-long p1, v3, v1
    if-eqz p1, :L10
  .line 5
    invoke-virtual { p2 }, Landroid/support/v4/media/session/MediaSessionCompat$c;->r()V
    goto :L10
  :L5
    const-wide/16 v5, 16
    and-long/2addr v3, v5
    cmp-long p1, v3, v1
    if-eqz p1, :L10
  .line 6
    invoke-virtual { p2 }, Landroid/support/v4/media/session/MediaSessionCompat$c;->z()V
    goto :L10
  :L6
    const-wide/16 v5, 32
    and-long/2addr v3, v5
    cmp-long p1, v3, v1
    if-eqz p1, :L10
  .line 7
    invoke-virtual { p2 }, Landroid/support/v4/media/session/MediaSessionCompat$c;->y()V
    goto :L10
  :L7
    const-wide/16 v5, 1
    and-long/2addr v3, v5
    cmp-long p1, v3, v1
    if-eqz p1, :L10
  .line 8
    invoke-virtual { p2 }, Landroid/support/v4/media/session/MediaSessionCompat$c;->B()V
    goto :L10
  :L8
    const-wide/16 v5, 2
    and-long/2addr v3, v5
    cmp-long p1, v3, v1
    if-eqz p1, :L10
  .line 9
    invoke-virtual { p2 }, Landroid/support/v4/media/session/MediaSessionCompat$c;->h()V
    goto :L10
  :L9
    const-wide/16 v5, 4
    and-long/2addr v3, v5
    cmp-long p1, v3, v1
    if-eqz p1, :L10
  .line 10
    invoke-virtual { p2 }, Landroid/support/v4/media/session/MediaSessionCompat$c;->i()V
  :L10
    return-void
  :L11
  .packed-switch 86
    :L7
    :L6
    :L5
    :L4
    :L3
  .end packed-switch
.end method

.method public handleMessage(Landroid/os/Message;)V
  .catchall { :L1 .. :L35 } :L36
  .registers 9
  .line 1
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$i$c;->a:Landroid/support/v4/media/session/MediaSessionCompat$i;
    iget-object v0, v0, Landroid/support/v4/media/session/MediaSessionCompat$i;->p:Landroid/support/v4/media/session/MediaSessionCompat$c;
    if-nez v0, :L0
    return-void
  :L0
  .line 2
    invoke-virtual { p1 }, Landroid/os/Message;->getData()Landroid/os/Bundle;
    move-result-object v1
  .line 3
    invoke-static { v1 }, Landroid/support/v4/media/session/MediaSessionCompat;->a(Landroid/os/Bundle;)V
  .line 4
    iget-object v2, p0, Landroid/support/v4/media/session/MediaSessionCompat$i$c;->a:Landroid/support/v4/media/session/MediaSessionCompat$i;
    new-instance v3, Landroidx/media/a;
    const-string v4, "data_calling_pkg"
    invoke-virtual { v1, v4 }, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v4
    const-string v5, "data_calling_pid"
  .line 5
    invoke-virtual { v1, v5 }, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I
    move-result v5
    const-string v6, "data_calling_uid"
    invoke-virtual { v1, v6 }, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I
    move-result v6
    invoke-direct { v3, v4, v5, v6 }, Landroidx/media/a;-><init>(Ljava/lang/String;II)V
  .line 6
    invoke-virtual { v2, v3 }, Landroid/support/v4/media/session/MediaSessionCompat$i;->f(Landroidx/media/a;)V
    const-string v2, "data_extras"
  .line 7
    invoke-virtual { v1, v2 }, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;
    move-result-object v1
  .line 8
    invoke-static { v1 }, Landroid/support/v4/media/session/MediaSessionCompat;->a(Landroid/os/Bundle;)V
    const/4 v2, 0
  :L1
  .line 9
    iget v3, p1, Landroid/os/Message;->what:I
    const/4 v4, 0
    packed-switch v3, :L37
  :L2
    goto/16 :L35
  :L3
  .line 10
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;
    check-cast p1, Landroid/support/v4/media/RatingCompat;
    invoke-virtual { v0, p1, v1 }, Landroid/support/v4/media/session/MediaSessionCompat$c;->v(Landroid/support/v4/media/RatingCompat;Landroid/os/Bundle;)V
    goto/16 :L35
  :L4
  .line 11
    iget p1, p1, Landroid/os/Message;->arg1:I
    invoke-virtual { v0, p1 }, Landroid/support/v4/media/session/MediaSessionCompat$c;->x(I)V
    goto/16 :L35
  :L5
  .line 12
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;
    check-cast p1, Ljava/lang/Boolean;
    invoke-virtual { p1 }, Ljava/lang/Boolean;->booleanValue()Z
    move-result p1
    invoke-virtual { v0, p1 }, Landroid/support/v4/media/session/MediaSessionCompat$c;->t(Z)V
    goto/16 :L35
  :L6
  .line 13
    iget-object v1, p0, Landroid/support/v4/media/session/MediaSessionCompat$i$c;->a:Landroid/support/v4/media/session/MediaSessionCompat$i;
    iget-object v1, v1, Landroid/support/v4/media/session/MediaSessionCompat$i;->v:Ljava/util/List;
    if-eqz v1, :L35
  .line 14
    iget v1, p1, Landroid/os/Message;->arg1:I
    if-ltz v1, :L7
    iget v1, p1, Landroid/os/Message;->arg1:I
    iget-object v3, p0, Landroid/support/v4/media/session/MediaSessionCompat$i$c;->a:Landroid/support/v4/media/session/MediaSessionCompat$i;
    iget-object v3, v3, Landroid/support/v4/media/session/MediaSessionCompat$i;->v:Ljava/util/List;
    invoke-interface { v3 }, Ljava/util/List;->size()I
    move-result v3
    if-ge v1, v3, :L7
    iget-object v1, p0, Landroid/support/v4/media/session/MediaSessionCompat$i$c;->a:Landroid/support/v4/media/session/MediaSessionCompat$i;
    iget-object v1, v1, Landroid/support/v4/media/session/MediaSessionCompat$i;->v:Ljava/util/List;
    iget p1, p1, Landroid/os/Message;->arg1:I
  .line 15
    invoke-interface { v1, p1 }, Ljava/util/List;->get(I)Ljava/lang/Object;
    move-result-object p1
    check-cast p1, Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;
    goto :L8
  :L7
    move-object p1, v2
  :L8
    if-eqz p1, :L35
  .line 16
    invoke-virtual { p1 }, Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;->l()Landroid/support/v4/media/MediaDescriptionCompat;
    move-result-object p1
    invoke-virtual { v0, p1 }, Landroid/support/v4/media/session/MediaSessionCompat$c;->q(Landroid/support/v4/media/MediaDescriptionCompat;)V
    goto/16 :L35
  :L9
  .line 17
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;
    check-cast p1, Landroid/support/v4/media/MediaDescriptionCompat;
    invoke-virtual { v0, p1 }, Landroid/support/v4/media/session/MediaSessionCompat$c;->q(Landroid/support/v4/media/MediaDescriptionCompat;)V
    goto/16 :L35
  :L10
  .line 18
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;
    check-cast v1, Landroid/support/v4/media/MediaDescriptionCompat;
    iget p1, p1, Landroid/os/Message;->arg1:I
    invoke-virtual { v0, v1, p1 }, Landroid/support/v4/media/session/MediaSessionCompat$c;->c(Landroid/support/v4/media/MediaDescriptionCompat;I)V
    goto/16 :L35
  :L11
  .line 19
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;
    check-cast p1, Landroid/support/v4/media/MediaDescriptionCompat;
    invoke-virtual { v0, p1 }, Landroid/support/v4/media/session/MediaSessionCompat$c;->b(Landroid/support/v4/media/MediaDescriptionCompat;)V
    goto/16 :L35
  :L12
  .line 20
    iget p1, p1, Landroid/os/Message;->arg1:I
    invoke-virtual { v0, p1 }, Landroid/support/v4/media/session/MediaSessionCompat$c;->w(I)V
    goto/16 :L35
  :L13
  .line 21
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$i$c;->a:Landroid/support/v4/media/session/MediaSessionCompat$i;
    iget p1, p1, Landroid/os/Message;->arg1:I
    invoke-virtual { v0, p1, v4 }, Landroid/support/v4/media/session/MediaSessionCompat$i;->v(II)V
    goto/16 :L35
  :L14
  .line 22
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;
    check-cast p1, Landroid/view/KeyEvent;
  .line 23
    new-instance v1, Landroid/content/Intent;
    const-string v3, "android.intent.action.MEDIA_BUTTON"
    invoke-direct { v1, v3 }, Landroid/content/Intent;-><init>(Ljava/lang/String;)V
    const-string v3, "android.intent.extra.KEY_EVENT"
  .line 24
    invoke-virtual { v1, v3, p1 }, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;
  .line 25
    invoke-virtual { v0, v1 }, Landroid/support/v4/media/session/MediaSessionCompat$c;->g(Landroid/content/Intent;)Z
    move-result v1
    if-nez v1, :L35
  .line 26
    invoke-direct { p0, p1, v0 }, Landroid/support/v4/media/session/MediaSessionCompat$i$c;->a(Landroid/view/KeyEvent;Landroid/support/v4/media/session/MediaSessionCompat$c;)V
    goto/16 :L35
  :L15
  .line 27
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;
    check-cast p1, Ljava/lang/String;
    invoke-virtual { v0, p1, v1 }, Landroid/support/v4/media/session/MediaSessionCompat$c;->e(Ljava/lang/String;Landroid/os/Bundle;)V
    goto/16 :L35
  :L16
  .line 28
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;
    check-cast p1, Landroid/support/v4/media/RatingCompat;
    invoke-virtual { v0, p1 }, Landroid/support/v4/media/session/MediaSessionCompat$c;->u(Landroid/support/v4/media/RatingCompat;)V
    goto/16 :L35
  :L17
  .line 29
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;
    check-cast p1, Ljava/lang/Long;
    invoke-virtual { p1 }, Ljava/lang/Long;->longValue()J
    move-result-wide v3
    invoke-virtual { v0, v3, v4 }, Landroid/support/v4/media/session/MediaSessionCompat$c;->s(J)V
    goto/16 :L35
  :L18
  .line 30
    invoke-virtual { v0 }, Landroid/support/v4/media/session/MediaSessionCompat$c;->r()V
    goto/16 :L35
  :L19
  .line 31
    invoke-virtual { v0 }, Landroid/support/v4/media/session/MediaSessionCompat$c;->f()V
    goto/16 :L35
  :L20
  .line 32
    invoke-virtual { v0 }, Landroid/support/v4/media/session/MediaSessionCompat$c;->z()V
    goto/16 :L35
  :L21
  .line 33
    invoke-virtual { v0 }, Landroid/support/v4/media/session/MediaSessionCompat$c;->y()V
    goto :L35
  :L22
  .line 34
    invoke-virtual { v0 }, Landroid/support/v4/media/session/MediaSessionCompat$c;->B()V
    goto :L35
  :L23
  .line 35
    invoke-virtual { v0 }, Landroid/support/v4/media/session/MediaSessionCompat$c;->h()V
    goto :L35
  :L24
  .line 36
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;
    check-cast p1, Ljava/lang/Long;
    invoke-virtual { p1 }, Ljava/lang/Long;->longValue()J
    move-result-wide v3
    invoke-virtual { v0, v3, v4 }, Landroid/support/v4/media/session/MediaSessionCompat$c;->A(J)V
    goto :L35
  :L25
  .line 37
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;
    check-cast p1, Landroid/net/Uri;
    invoke-virtual { v0, p1, v1 }, Landroid/support/v4/media/session/MediaSessionCompat$c;->l(Landroid/net/Uri;Landroid/os/Bundle;)V
    goto :L35
  :L26
  .line 38
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;
    check-cast p1, Ljava/lang/String;
    invoke-virtual { v0, p1, v1 }, Landroid/support/v4/media/session/MediaSessionCompat$c;->k(Ljava/lang/String;Landroid/os/Bundle;)V
    goto :L35
  :L27
  .line 39
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;
    check-cast p1, Ljava/lang/String;
    invoke-virtual { v0, p1, v1 }, Landroid/support/v4/media/session/MediaSessionCompat$c;->j(Ljava/lang/String;Landroid/os/Bundle;)V
    goto :L35
  :L28
  .line 40
    invoke-virtual { v0 }, Landroid/support/v4/media/session/MediaSessionCompat$c;->i()V
    goto :L35
  :L29
  .line 41
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;
    check-cast p1, Landroid/net/Uri;
    invoke-virtual { v0, p1, v1 }, Landroid/support/v4/media/session/MediaSessionCompat$c;->p(Landroid/net/Uri;Landroid/os/Bundle;)V
    goto :L35
  :L30
  .line 42
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;
    check-cast p1, Ljava/lang/String;
    invoke-virtual { v0, p1, v1 }, Landroid/support/v4/media/session/MediaSessionCompat$c;->o(Ljava/lang/String;Landroid/os/Bundle;)V
    goto :L35
  :L31
  .line 43
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;
    check-cast p1, Ljava/lang/String;
    invoke-virtual { v0, p1, v1 }, Landroid/support/v4/media/session/MediaSessionCompat$c;->n(Ljava/lang/String;Landroid/os/Bundle;)V
    goto :L35
  :L32
  .line 44
    invoke-virtual { v0 }, Landroid/support/v4/media/session/MediaSessionCompat$c;->m()V
    goto :L35
  :L33
  .line 45
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$i$c;->a:Landroid/support/v4/media/session/MediaSessionCompat$i;
    iget p1, p1, Landroid/os/Message;->arg1:I
    invoke-virtual { v0, p1, v4 }, Landroid/support/v4/media/session/MediaSessionCompat$i;->k(II)V
    goto :L35
  :L34
  .line 46
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;
    check-cast p1, Landroid/support/v4/media/session/MediaSessionCompat$i$a;
  .line 47
    iget-object v1, p1, Landroid/support/v4/media/session/MediaSessionCompat$i$a;->a:Ljava/lang/String;
    iget-object v3, p1, Landroid/support/v4/media/session/MediaSessionCompat$i$a;->b:Landroid/os/Bundle;
    iget-object p1, p1, Landroid/support/v4/media/session/MediaSessionCompat$i$a;->c:Landroid/os/ResultReceiver;
    invoke-virtual { v0, v1, v3, p1 }, Landroid/support/v4/media/session/MediaSessionCompat$c;->d(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V
  :L35
  .line 48
    iget-object p1, p0, Landroid/support/v4/media/session/MediaSessionCompat$i$c;->a:Landroid/support/v4/media/session/MediaSessionCompat$i;
    invoke-virtual { p1, v2 }, Landroid/support/v4/media/session/MediaSessionCompat$i;->f(Landroidx/media/a;)V
    return-void
  :L36
    move-exception p1
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$i$c;->a:Landroid/support/v4/media/session/MediaSessionCompat$i;
    invoke-virtual { v0, v2 }, Landroid/support/v4/media/session/MediaSessionCompat$i;->f(Landroidx/media/a;)V
    throw p1
  :L37
  .packed-switch 1
    :L34
    :L33
    :L32
    :L31
    :L30
    :L29
    :L28
    :L27
    :L26
    :L25
    :L24
    :L23
    :L22
    :L21
    :L20
    :L19
    :L18
    :L17
    :L16
    :L15
    :L14
    :L13
    :L12
    :L2
    :L11
    :L10
    :L9
    :L6
    :L5
    :L4
    :L3
  .end packed-switch
.end method
