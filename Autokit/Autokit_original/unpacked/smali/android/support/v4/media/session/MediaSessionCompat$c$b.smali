.class Landroid/support/v4/media/session/MediaSessionCompat$c$b;
.super Ljava/lang/Object;
.implements Landroid/support/v4/media/session/d$a;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Landroid/support/v4/media/session/MediaSessionCompat$c;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 2
  name = "b"
.end annotation

.field final synthetic a:Landroid/support/v4/media/session/MediaSessionCompat$c;

.method constructor <init>(Landroid/support/v4/media/session/MediaSessionCompat$c;)V
  .registers 2
  .line 1
    iput-object p1, p0, Landroid/support/v4/media/session/MediaSessionCompat$c$b;->a:Landroid/support/v4/media/session/MediaSessionCompat$c;
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public b(Ljava/lang/Object;)V
  .registers 3
  .line 1
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$c$b;->a:Landroid/support/v4/media/session/MediaSessionCompat$c;
    invoke-static { p1 }, Landroid/support/v4/media/RatingCompat;->j(Ljava/lang/Object;)Landroid/support/v4/media/RatingCompat;
    move-result-object p1
    invoke-virtual { v0, p1 }, Landroid/support/v4/media/session/MediaSessionCompat$c;->u(Landroid/support/v4/media/RatingCompat;)V
    return-void
.end method

.method public d()V
  .registers 2
  .line 1
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$c$b;->a:Landroid/support/v4/media/session/MediaSessionCompat$c;
    invoke-virtual { v0 }, Landroid/support/v4/media/session/MediaSessionCompat$c;->i()V
    return-void
.end method

.method public e()V
  .registers 2
  .line 1
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$c$b;->a:Landroid/support/v4/media/session/MediaSessionCompat$c;
    invoke-virtual { v0 }, Landroid/support/v4/media/session/MediaSessionCompat$c;->r()V
    return-void
.end method

.method public f(Ljava/lang/String;Landroid/os/Bundle;)V
  .registers 4
  .line 1
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$c$b;->a:Landroid/support/v4/media/session/MediaSessionCompat$c;
    invoke-virtual { v0, p1, p2 }, Landroid/support/v4/media/session/MediaSessionCompat$c;->k(Ljava/lang/String;Landroid/os/Bundle;)V
    return-void
.end method

.method public g()V
  .registers 2
  .line 1
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$c$b;->a:Landroid/support/v4/media/session/MediaSessionCompat$c;
    invoke-virtual { v0 }, Landroid/support/v4/media/session/MediaSessionCompat$c;->B()V
    return-void
.end method

.method public i()V
  .registers 2
  .line 1
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$c$b;->a:Landroid/support/v4/media/session/MediaSessionCompat$c;
    invoke-virtual { v0 }, Landroid/support/v4/media/session/MediaSessionCompat$c;->h()V
    return-void
.end method

.method public j(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V
  .catch Landroid/os/BadParcelableException; { :L0 .. :L4 } :L13
  .catch Landroid/os/BadParcelableException; { :L5 .. :L7 } :L13
  .catch Landroid/os/BadParcelableException; { :L8 .. :L13 } :L13
  .registers 8
  :L0
    const-string v0, "android.support.v4.media.session.command.GET_EXTRA_BINDER"
  .line 1
    invoke-virtual { p1, v0 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v0
    const/4 v1, 0
    if-eqz v0, :L3
  .line 2
    iget-object p1, p0, Landroid/support/v4/media/session/MediaSessionCompat$c$b;->a:Landroid/support/v4/media/session/MediaSessionCompat$c;
    iget-object p1, p1, Landroid/support/v4/media/session/MediaSessionCompat$c;->b:Ljava/lang/ref/WeakReference;
    invoke-virtual { p1 }, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
    move-result-object p1
    check-cast p1, Landroid/support/v4/media/session/MediaSessionCompat$g;
    if-eqz p1, :L13
  .line 3
    new-instance p2, Landroid/os/Bundle;
    invoke-direct { p2 }, Landroid/os/Bundle;-><init>()V
  .line 4
    invoke-virtual { p1 }, Landroid/support/v4/media/session/MediaSessionCompat$g;->d()Landroid/support/v4/media/session/MediaSessionCompat$Token;
    move-result-object p1
  .line 5
    invoke-virtual { p1 }, Landroid/support/v4/media/session/MediaSessionCompat$Token;->j()Landroid/support/v4/media/session/b;
    move-result-object v0
    const-string v2, "android.support.v4.media.session.EXTRA_BINDER"
    if-nez v0, :L1
    goto :L2
  :L1
  .line 6
    invoke-interface { v0 }, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;
    move-result-object v1
  :L2
  .line 7
    invoke-static { p2, v2, v1 }, Landroidx/core/app/e;->b(Landroid/os/Bundle;Ljava/lang/String;Landroid/os/IBinder;)V
  .line 8
    invoke-virtual { p1 }, Landroid/support/v4/media/session/MediaSessionCompat$Token;->k()Landroid/os/Bundle;
    move-result-object p1
    const-string v0, "android.support.v4.media.session.SESSION_TOKEN2_BUNDLE"
  .line 9
    invoke-virtual { p2, v0, p1 }, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V
    const/4 p1, 0
  .line 10
    invoke-virtual { p3, p1, p2 }, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V
    goto/16 :L13
  :L3
    const-string v0, "android.support.v4.media.session.command.ADD_QUEUE_ITEM"
  .line 11
    invoke-virtual { p1, v0 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v0
  :L4
    const-string v2, "android.support.v4.media.session.command.ARGUMENT_MEDIA_DESCRIPTION"
    if-eqz v0, :L6
  :L5
  .line 12
    iget-object p1, p0, Landroid/support/v4/media/session/MediaSessionCompat$c$b;->a:Landroid/support/v4/media/session/MediaSessionCompat$c;
  .line 13
    invoke-virtual { p2, v2 }, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;
    move-result-object p2
    check-cast p2, Landroid/support/v4/media/MediaDescriptionCompat;
  .line 14
    invoke-virtual { p1, p2 }, Landroid/support/v4/media/session/MediaSessionCompat$c;->b(Landroid/support/v4/media/MediaDescriptionCompat;)V
    goto/16 :L13
  :L6
    const-string v0, "android.support.v4.media.session.command.ADD_QUEUE_ITEM_AT"
  .line 15
    invoke-virtual { p1, v0 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v0
  :L7
    const-string v3, "android.support.v4.media.session.command.ARGUMENT_INDEX"
    if-eqz v0, :L9
  :L8
  .line 16
    iget-object p1, p0, Landroid/support/v4/media/session/MediaSessionCompat$c$b;->a:Landroid/support/v4/media/session/MediaSessionCompat$c;
  .line 17
    invoke-virtual { p2, v2 }, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;
    move-result-object p3
    check-cast p3, Landroid/support/v4/media/MediaDescriptionCompat;
  .line 18
    invoke-virtual { p2, v3 }, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I
    move-result p2
  .line 19
    invoke-virtual { p1, p3, p2 }, Landroid/support/v4/media/session/MediaSessionCompat$c;->c(Landroid/support/v4/media/MediaDescriptionCompat;I)V
    goto :L13
  :L9
    const-string v0, "android.support.v4.media.session.command.REMOVE_QUEUE_ITEM"
  .line 20
    invoke-virtual { p1, v0 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :L10
  .line 21
    iget-object p1, p0, Landroid/support/v4/media/session/MediaSessionCompat$c$b;->a:Landroid/support/v4/media/session/MediaSessionCompat$c;
  .line 22
    invoke-virtual { p2, v2 }, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;
    move-result-object p2
    check-cast p2, Landroid/support/v4/media/MediaDescriptionCompat;
  .line 23
    invoke-virtual { p1, p2 }, Landroid/support/v4/media/session/MediaSessionCompat$c;->q(Landroid/support/v4/media/MediaDescriptionCompat;)V
    goto :L13
  :L10
    const-string v0, "android.support.v4.media.session.command.REMOVE_QUEUE_ITEM_AT"
  .line 24
    invoke-virtual { p1, v0 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :L12
  .line 25
    iget-object p1, p0, Landroid/support/v4/media/session/MediaSessionCompat$c$b;->a:Landroid/support/v4/media/session/MediaSessionCompat$c;
    iget-object p1, p1, Landroid/support/v4/media/session/MediaSessionCompat$c;->b:Ljava/lang/ref/WeakReference;
    invoke-virtual { p1 }, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
    move-result-object p1
    check-cast p1, Landroid/support/v4/media/session/MediaSessionCompat$g;
    if-eqz p1, :L13
  .line 26
    iget-object p3, p1, Landroid/support/v4/media/session/MediaSessionCompat$g;->f:Ljava/util/List;
    if-eqz p3, :L13
    const/4 p3, -1
  .line 27
    invoke-virtual { p2, v3, p3 }, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I
    move-result p2
    if-ltz p2, :L11
  .line 28
    iget-object p3, p1, Landroid/support/v4/media/session/MediaSessionCompat$g;->f:Ljava/util/List;
    invoke-interface { p3 }, Ljava/util/List;->size()I
    move-result p3
    if-ge p2, p3, :L11
    iget-object p1, p1, Landroid/support/v4/media/session/MediaSessionCompat$g;->f:Ljava/util/List;
  .line 29
    invoke-interface { p1, p2 }, Ljava/util/List;->get(I)Ljava/lang/Object;
    move-result-object p1
    move-object v1, p1
    check-cast v1, Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;
  :L11
    if-eqz v1, :L13
  .line 30
    iget-object p1, p0, Landroid/support/v4/media/session/MediaSessionCompat$c$b;->a:Landroid/support/v4/media/session/MediaSessionCompat$c;
    invoke-virtual { v1 }, Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;->l()Landroid/support/v4/media/MediaDescriptionCompat;
    move-result-object p2
    invoke-virtual { p1, p2 }, Landroid/support/v4/media/session/MediaSessionCompat$c;->q(Landroid/support/v4/media/MediaDescriptionCompat;)V
    goto :L13
  :L12
  .line 31
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$c$b;->a:Landroid/support/v4/media/session/MediaSessionCompat$c;
    invoke-virtual { v0, p1, p2, p3 }, Landroid/support/v4/media/session/MediaSessionCompat$c;->d(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V
  :L13
    return-void
.end method

.method public k()V
  .registers 2
  .line 1
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$c$b;->a:Landroid/support/v4/media/session/MediaSessionCompat$c;
    invoke-virtual { v0 }, Landroid/support/v4/media/session/MediaSessionCompat$c;->z()V
    return-void
.end method

.method public l(Ljava/lang/String;Landroid/os/Bundle;)V
  .registers 4
  .line 1
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$c$b;->a:Landroid/support/v4/media/session/MediaSessionCompat$c;
    invoke-virtual { v0, p1, p2 }, Landroid/support/v4/media/session/MediaSessionCompat$c;->j(Ljava/lang/String;Landroid/os/Bundle;)V
    return-void
.end method

.method public m()V
  .registers 2
  .line 1
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$c$b;->a:Landroid/support/v4/media/session/MediaSessionCompat$c;
    invoke-virtual { v0 }, Landroid/support/v4/media/session/MediaSessionCompat$c;->f()V
    return-void
.end method

.method public n(Landroid/content/Intent;)Z
  .registers 3
  .line 1
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$c$b;->a:Landroid/support/v4/media/session/MediaSessionCompat$c;
    invoke-virtual { v0, p1 }, Landroid/support/v4/media/session/MediaSessionCompat$c;->g(Landroid/content/Intent;)Z
    move-result p1
    return p1
.end method

.method public o(J)V
  .registers 4
  .line 1
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$c$b;->a:Landroid/support/v4/media/session/MediaSessionCompat$c;
    invoke-virtual { v0, p1, p2 }, Landroid/support/v4/media/session/MediaSessionCompat$c;->s(J)V
    return-void
.end method

.method public p(Ljava/lang/String;Landroid/os/Bundle;)V
  .registers 6
    const-string v0, "android.support.v4.media.session.action.ARGUMENT_EXTRAS"
  .line 1
    invoke-virtual { p2, v0 }, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;
    move-result-object v0
  .line 2
    invoke-static { v0 }, Landroid/support/v4/media/session/MediaSessionCompat;->a(Landroid/os/Bundle;)V
    const-string v1, "android.support.v4.media.session.action.PLAY_FROM_URI"
  .line 3
    invoke-virtual { p1, v1 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v1
    const-string v2, "android.support.v4.media.session.action.ARGUMENT_URI"
    if-eqz v1, :L0
  .line 4
    invoke-virtual { p2, v2 }, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;
    move-result-object p1
    check-cast p1, Landroid/net/Uri;
  .line 5
    iget-object p2, p0, Landroid/support/v4/media/session/MediaSessionCompat$c$b;->a:Landroid/support/v4/media/session/MediaSessionCompat$c;
    invoke-virtual { p2, p1, v0 }, Landroid/support/v4/media/session/MediaSessionCompat$c;->l(Landroid/net/Uri;Landroid/os/Bundle;)V
    goto/16 :L9
  :L0
    const-string v1, "android.support.v4.media.session.action.PREPARE"
  .line 6
    invoke-virtual { p1, v1 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v1
    if-eqz v1, :L1
  .line 7
    iget-object p1, p0, Landroid/support/v4/media/session/MediaSessionCompat$c$b;->a:Landroid/support/v4/media/session/MediaSessionCompat$c;
    invoke-virtual { p1 }, Landroid/support/v4/media/session/MediaSessionCompat$c;->m()V
    goto/16 :L9
  :L1
    const-string v1, "android.support.v4.media.session.action.PREPARE_FROM_MEDIA_ID"
  .line 8
    invoke-virtual { p1, v1 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v1
    if-eqz v1, :L2
    const-string p1, "android.support.v4.media.session.action.ARGUMENT_MEDIA_ID"
  .line 9
    invoke-virtual { p2, p1 }, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
    move-result-object p1
  .line 10
    iget-object p2, p0, Landroid/support/v4/media/session/MediaSessionCompat$c$b;->a:Landroid/support/v4/media/session/MediaSessionCompat$c;
    invoke-virtual { p2, p1, v0 }, Landroid/support/v4/media/session/MediaSessionCompat$c;->n(Ljava/lang/String;Landroid/os/Bundle;)V
    goto/16 :L9
  :L2
    const-string v1, "android.support.v4.media.session.action.PREPARE_FROM_SEARCH"
  .line 11
    invoke-virtual { p1, v1 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v1
    if-eqz v1, :L3
    const-string p1, "android.support.v4.media.session.action.ARGUMENT_QUERY"
  .line 12
    invoke-virtual { p2, p1 }, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
    move-result-object p1
  .line 13
    iget-object p2, p0, Landroid/support/v4/media/session/MediaSessionCompat$c$b;->a:Landroid/support/v4/media/session/MediaSessionCompat$c;
    invoke-virtual { p2, p1, v0 }, Landroid/support/v4/media/session/MediaSessionCompat$c;->o(Ljava/lang/String;Landroid/os/Bundle;)V
    goto :L9
  :L3
    const-string v1, "android.support.v4.media.session.action.PREPARE_FROM_URI"
  .line 14
    invoke-virtual { p1, v1 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v1
    if-eqz v1, :L4
  .line 15
    invoke-virtual { p2, v2 }, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;
    move-result-object p1
    check-cast p1, Landroid/net/Uri;
  .line 16
    iget-object p2, p0, Landroid/support/v4/media/session/MediaSessionCompat$c$b;->a:Landroid/support/v4/media/session/MediaSessionCompat$c;
    invoke-virtual { p2, p1, v0 }, Landroid/support/v4/media/session/MediaSessionCompat$c;->p(Landroid/net/Uri;Landroid/os/Bundle;)V
    goto :L9
  :L4
    const-string v1, "android.support.v4.media.session.action.SET_CAPTIONING_ENABLED"
  .line 17
    invoke-virtual { p1, v1 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v1
    if-eqz v1, :L5
    const-string p1, "android.support.v4.media.session.action.ARGUMENT_CAPTIONING_ENABLED"
  .line 18
    invoke-virtual { p2, p1 }, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z
    move-result p1
  .line 19
    iget-object p2, p0, Landroid/support/v4/media/session/MediaSessionCompat$c$b;->a:Landroid/support/v4/media/session/MediaSessionCompat$c;
    invoke-virtual { p2, p1 }, Landroid/support/v4/media/session/MediaSessionCompat$c;->t(Z)V
    goto :L9
  :L5
    const-string v1, "android.support.v4.media.session.action.SET_REPEAT_MODE"
  .line 20
    invoke-virtual { p1, v1 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v1
    if-eqz v1, :L6
    const-string p1, "android.support.v4.media.session.action.ARGUMENT_REPEAT_MODE"
  .line 21
    invoke-virtual { p2, p1 }, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I
    move-result p1
  .line 22
    iget-object p2, p0, Landroid/support/v4/media/session/MediaSessionCompat$c$b;->a:Landroid/support/v4/media/session/MediaSessionCompat$c;
    invoke-virtual { p2, p1 }, Landroid/support/v4/media/session/MediaSessionCompat$c;->w(I)V
    goto :L9
  :L6
    const-string v1, "android.support.v4.media.session.action.SET_SHUFFLE_MODE"
  .line 23
    invoke-virtual { p1, v1 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v1
    if-eqz v1, :L7
    const-string p1, "android.support.v4.media.session.action.ARGUMENT_SHUFFLE_MODE"
  .line 24
    invoke-virtual { p2, p1 }, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I
    move-result p1
  .line 25
    iget-object p2, p0, Landroid/support/v4/media/session/MediaSessionCompat$c$b;->a:Landroid/support/v4/media/session/MediaSessionCompat$c;
    invoke-virtual { p2, p1 }, Landroid/support/v4/media/session/MediaSessionCompat$c;->x(I)V
    goto :L9
  :L7
    const-string v1, "android.support.v4.media.session.action.SET_RATING"
  .line 26
    invoke-virtual { p1, v1 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v1
    if-eqz v1, :L8
    const-string p1, "android.support.v4.media.session.action.ARGUMENT_RATING"
  .line 27
    invoke-virtual { p2, p1 }, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;
    move-result-object p1
    check-cast p1, Landroid/support/v4/media/RatingCompat;
  .line 28
    iget-object p2, p0, Landroid/support/v4/media/session/MediaSessionCompat$c$b;->a:Landroid/support/v4/media/session/MediaSessionCompat$c;
    invoke-virtual { p2, p1, v0 }, Landroid/support/v4/media/session/MediaSessionCompat$c;->v(Landroid/support/v4/media/RatingCompat;Landroid/os/Bundle;)V
    goto :L9
  :L8
  .line 29
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$c$b;->a:Landroid/support/v4/media/session/MediaSessionCompat$c;
    invoke-virtual { v0, p1, p2 }, Landroid/support/v4/media/session/MediaSessionCompat$c;->e(Ljava/lang/String;Landroid/os/Bundle;)V
  :L9
    return-void
.end method

.method public q()V
  .registers 2
  .line 1
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$c$b;->a:Landroid/support/v4/media/session/MediaSessionCompat$c;
    invoke-virtual { v0 }, Landroid/support/v4/media/session/MediaSessionCompat$c;->y()V
    return-void
.end method

.method public s(J)V
  .registers 4
  .line 1
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$c$b;->a:Landroid/support/v4/media/session/MediaSessionCompat$c;
    invoke-virtual { v0, p1, p2 }, Landroid/support/v4/media/session/MediaSessionCompat$c;->A(J)V
    return-void
.end method
