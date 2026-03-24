.class Landroid/support/v4/media/session/MediaSessionCompat$i$c;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/session/MediaSessionCompat$i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v4/media/session/MediaSessionCompat$i;


# direct methods
.method public constructor <init>(Landroid/support/v4/media/session/MediaSessionCompat$i;Landroid/os/Looper;)V
    .registers 3

    .line 1
    iput-object p1, p0, Landroid/support/v4/media/session/MediaSessionCompat$i$c;->a:Landroid/support/v4/media/session/MediaSessionCompat$i;

    .line 2
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method private a(Landroid/view/KeyEvent;Landroid/support/v4/media/session/MediaSessionCompat$c;)V
    .registers 10

    if-eqz p1, :cond_74

    .line 1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_a

    goto/16 :goto_74

    .line 2
    :cond_a
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$i$c;->a:Landroid/support/v4/media/session/MediaSessionCompat$i;

    iget-object v0, v0, Landroid/support/v4/media/session/MediaSessionCompat$i;->t:Landroid/support/v4/media/session/PlaybackStateCompat;

    const-wide/16 v1, 0x0

    if-nez v0, :cond_14

    move-wide v3, v1

    goto :goto_18

    :cond_14
    invoke-virtual {v0}, Landroid/support/v4/media/session/PlaybackStateCompat;->k()J

    move-result-wide v3

    .line 3
    :goto_18
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p1

    const/16 v0, 0x7e

    if-eq p1, v0, :cond_6a

    const/16 v0, 0x7f

    if-eq p1, v0, :cond_5f

    packed-switch p1, :pswitch_data_76

    goto :goto_74

    :pswitch_28
    const-wide/16 v5, 0x40

    and-long/2addr v3, v5

    cmp-long p1, v3, v1

    if-eqz p1, :cond_74

    .line 4
    invoke-virtual {p2}, Landroid/support/v4/media/session/MediaSessionCompat$c;->f()V

    goto :goto_74

    :pswitch_33
    const-wide/16 v5, 0x8

    and-long/2addr v3, v5

    cmp-long p1, v3, v1

    if-eqz p1, :cond_74

    .line 5
    invoke-virtual {p2}, Landroid/support/v4/media/session/MediaSessionCompat$c;->r()V

    goto :goto_74

    :pswitch_3e
    const-wide/16 v5, 0x10

    and-long/2addr v3, v5

    cmp-long p1, v3, v1

    if-eqz p1, :cond_74

    .line 6
    invoke-virtual {p2}, Landroid/support/v4/media/session/MediaSessionCompat$c;->z()V

    goto :goto_74

    :pswitch_49
    const-wide/16 v5, 0x20

    and-long/2addr v3, v5

    cmp-long p1, v3, v1

    if-eqz p1, :cond_74

    .line 7
    invoke-virtual {p2}, Landroid/support/v4/media/session/MediaSessionCompat$c;->y()V

    goto :goto_74

    :pswitch_54
    const-wide/16 v5, 0x1

    and-long/2addr v3, v5

    cmp-long p1, v3, v1

    if-eqz p1, :cond_74

    .line 8
    invoke-virtual {p2}, Landroid/support/v4/media/session/MediaSessionCompat$c;->B()V

    goto :goto_74

    :cond_5f
    const-wide/16 v5, 0x2

    and-long/2addr v3, v5

    cmp-long p1, v3, v1

    if-eqz p1, :cond_74

    .line 9
    invoke-virtual {p2}, Landroid/support/v4/media/session/MediaSessionCompat$c;->h()V

    goto :goto_74

    :cond_6a
    const-wide/16 v5, 0x4

    and-long/2addr v3, v5

    cmp-long p1, v3, v1

    if-eqz p1, :cond_74

    .line 10
    invoke-virtual {p2}, Landroid/support/v4/media/session/MediaSessionCompat$c;->i()V

    :cond_74
    :goto_74
    return-void

    nop

    :pswitch_data_76
    .packed-switch 0x56
        :pswitch_54
        :pswitch_49
        :pswitch_3e
        :pswitch_33
        :pswitch_28
    .end packed-switch
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 9

    .line 1
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$i$c;->a:Landroid/support/v4/media/session/MediaSessionCompat$i;

    iget-object v0, v0, Landroid/support/v4/media/session/MediaSessionCompat$i;->p:Landroid/support/v4/media/session/MediaSessionCompat$c;

    if-nez v0, :cond_7

    return-void

    .line 2
    :cond_7
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    .line 3
    invoke-static {v1}, Landroid/support/v4/media/session/MediaSessionCompat;->a(Landroid/os/Bundle;)V

    .line 4
    iget-object v2, p0, Landroid/support/v4/media/session/MediaSessionCompat$i$c;->a:Landroid/support/v4/media/session/MediaSessionCompat$i;

    new-instance v3, Landroidx/media/a;

    const-string v4, "data_calling_pkg"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "data_calling_pid"

    .line 5
    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    const-string v6, "data_calling_uid"

    invoke-virtual {v1, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    invoke-direct {v3, v4, v5, v6}, Landroidx/media/a;-><init>(Ljava/lang/String;II)V

    .line 6
    invoke-virtual {v2, v3}, Landroid/support/v4/media/session/MediaSessionCompat$i;->f(Landroidx/media/a;)V

    const-string v2, "data_extras"

    .line 7
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 8
    invoke-static {v1}, Landroid/support/v4/media/session/MediaSessionCompat;->a(Landroid/os/Bundle;)V

    const/4 v2, 0x0

    .line 9
    :try_start_34
    iget v3, p1, Landroid/os/Message;->what:I

    const/4 v4, 0x0

    packed-switch v3, :pswitch_data_170

    :pswitch_3a
    goto/16 :goto_163

    .line 10
    :pswitch_3c
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/support/v4/media/RatingCompat;

    invoke-virtual {v0, p1, v1}, Landroid/support/v4/media/session/MediaSessionCompat$c;->v(Landroid/support/v4/media/RatingCompat;Landroid/os/Bundle;)V

    goto/16 :goto_163

    .line 11
    :pswitch_45
    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, p1}, Landroid/support/v4/media/session/MediaSessionCompat$c;->x(I)V

    goto/16 :goto_163

    .line 12
    :pswitch_4c
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {v0, p1}, Landroid/support/v4/media/session/MediaSessionCompat$c;->t(Z)V

    goto/16 :goto_163

    .line 13
    :pswitch_59
    iget-object v1, p0, Landroid/support/v4/media/session/MediaSessionCompat$i$c;->a:Landroid/support/v4/media/session/MediaSessionCompat$i;

    iget-object v1, v1, Landroid/support/v4/media/session/MediaSessionCompat$i;->v:Ljava/util/List;

    if-eqz v1, :cond_163

    .line 14
    iget v1, p1, Landroid/os/Message;->arg1:I

    if-ltz v1, :cond_7c

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget-object v3, p0, Landroid/support/v4/media/session/MediaSessionCompat$i$c;->a:Landroid/support/v4/media/session/MediaSessionCompat$i;

    iget-object v3, v3, Landroid/support/v4/media/session/MediaSessionCompat$i;->v:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_7c

    iget-object v1, p0, Landroid/support/v4/media/session/MediaSessionCompat$i$c;->a:Landroid/support/v4/media/session/MediaSessionCompat$i;

    iget-object v1, v1, Landroid/support/v4/media/session/MediaSessionCompat$i;->v:Ljava/util/List;

    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 15
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;

    goto :goto_7d

    :cond_7c
    move-object p1, v2

    :goto_7d
    if-eqz p1, :cond_163

    .line 16
    invoke-virtual {p1}, Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;->l()Landroid/support/v4/media/MediaDescriptionCompat;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/support/v4/media/session/MediaSessionCompat$c;->q(Landroid/support/v4/media/MediaDescriptionCompat;)V

    goto/16 :goto_163

    .line 17
    :pswitch_88
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/support/v4/media/MediaDescriptionCompat;

    invoke-virtual {v0, p1}, Landroid/support/v4/media/session/MediaSessionCompat$c;->q(Landroid/support/v4/media/MediaDescriptionCompat;)V

    goto/16 :goto_163

    .line 18
    :pswitch_91
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/support/v4/media/MediaDescriptionCompat;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1, p1}, Landroid/support/v4/media/session/MediaSessionCompat$c;->c(Landroid/support/v4/media/MediaDescriptionCompat;I)V

    goto/16 :goto_163

    .line 19
    :pswitch_9c
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/support/v4/media/MediaDescriptionCompat;

    invoke-virtual {v0, p1}, Landroid/support/v4/media/session/MediaSessionCompat$c;->b(Landroid/support/v4/media/MediaDescriptionCompat;)V

    goto/16 :goto_163

    .line 20
    :pswitch_a5
    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, p1}, Landroid/support/v4/media/session/MediaSessionCompat$c;->w(I)V

    goto/16 :goto_163

    .line 21
    :pswitch_ac
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$i$c;->a:Landroid/support/v4/media/session/MediaSessionCompat$i;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, p1, v4}, Landroid/support/v4/media/session/MediaSessionCompat$i;->v(II)V

    goto/16 :goto_163

    .line 22
    :pswitch_b5
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/view/KeyEvent;

    .line 23
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.MEDIA_BUTTON"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "android.intent.extra.KEY_EVENT"

    .line 24
    invoke-virtual {v1, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 25
    invoke-virtual {v0, v1}, Landroid/support/v4/media/session/MediaSessionCompat$c;->g(Landroid/content/Intent;)Z

    move-result v1

    if-nez v1, :cond_163

    .line 26
    invoke-direct {p0, p1, v0}, Landroid/support/v4/media/session/MediaSessionCompat$i$c;->a(Landroid/view/KeyEvent;Landroid/support/v4/media/session/MediaSessionCompat$c;)V

    goto/16 :goto_163

    .line 27
    :pswitch_d0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Landroid/support/v4/media/session/MediaSessionCompat$c;->e(Ljava/lang/String;Landroid/os/Bundle;)V

    goto/16 :goto_163

    .line 28
    :pswitch_d9
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/support/v4/media/RatingCompat;

    invoke-virtual {v0, p1}, Landroid/support/v4/media/session/MediaSessionCompat$c;->u(Landroid/support/v4/media/RatingCompat;)V

    goto/16 :goto_163

    .line 29
    :pswitch_e2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Landroid/support/v4/media/session/MediaSessionCompat$c;->s(J)V

    goto/16 :goto_163

    .line 30
    :pswitch_ef
    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaSessionCompat$c;->r()V

    goto/16 :goto_163

    .line 31
    :pswitch_f4
    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaSessionCompat$c;->f()V

    goto/16 :goto_163

    .line 32
    :pswitch_f9
    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaSessionCompat$c;->z()V

    goto/16 :goto_163

    .line 33
    :pswitch_fe
    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaSessionCompat$c;->y()V

    goto :goto_163

    .line 34
    :pswitch_102
    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaSessionCompat$c;->B()V

    goto :goto_163

    .line 35
    :pswitch_106
    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaSessionCompat$c;->h()V

    goto :goto_163

    .line 36
    :pswitch_10a
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Landroid/support/v4/media/session/MediaSessionCompat$c;->A(J)V

    goto :goto_163

    .line 37
    :pswitch_116
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/net/Uri;

    invoke-virtual {v0, p1, v1}, Landroid/support/v4/media/session/MediaSessionCompat$c;->l(Landroid/net/Uri;Landroid/os/Bundle;)V

    goto :goto_163

    .line 38
    :pswitch_11e
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Landroid/support/v4/media/session/MediaSessionCompat$c;->k(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_163

    .line 39
    :pswitch_126
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Landroid/support/v4/media/session/MediaSessionCompat$c;->j(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_163

    .line 40
    :pswitch_12e
    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaSessionCompat$c;->i()V

    goto :goto_163

    .line 41
    :pswitch_132
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/net/Uri;

    invoke-virtual {v0, p1, v1}, Landroid/support/v4/media/session/MediaSessionCompat$c;->p(Landroid/net/Uri;Landroid/os/Bundle;)V

    goto :goto_163

    .line 42
    :pswitch_13a
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Landroid/support/v4/media/session/MediaSessionCompat$c;->o(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_163

    .line 43
    :pswitch_142
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Landroid/support/v4/media/session/MediaSessionCompat$c;->n(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_163

    .line 44
    :pswitch_14a
    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaSessionCompat$c;->m()V

    goto :goto_163

    .line 45
    :pswitch_14e
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$i$c;->a:Landroid/support/v4/media/session/MediaSessionCompat$i;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, p1, v4}, Landroid/support/v4/media/session/MediaSessionCompat$i;->k(II)V

    goto :goto_163

    .line 46
    :pswitch_156
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/support/v4/media/session/MediaSessionCompat$i$a;

    .line 47
    iget-object v1, p1, Landroid/support/v4/media/session/MediaSessionCompat$i$a;->a:Ljava/lang/String;

    iget-object v3, p1, Landroid/support/v4/media/session/MediaSessionCompat$i$a;->b:Landroid/os/Bundle;

    iget-object p1, p1, Landroid/support/v4/media/session/MediaSessionCompat$i$a;->c:Landroid/os/ResultReceiver;

    invoke-virtual {v0, v1, v3, p1}, Landroid/support/v4/media/session/MediaSessionCompat$c;->d(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V
    :try_end_163
    .catchall {:try_start_34 .. :try_end_163} :catchall_169

    .line 48
    :cond_163
    :goto_163
    iget-object p1, p0, Landroid/support/v4/media/session/MediaSessionCompat$i$c;->a:Landroid/support/v4/media/session/MediaSessionCompat$i;

    invoke-virtual {p1, v2}, Landroid/support/v4/media/session/MediaSessionCompat$i;->f(Landroidx/media/a;)V

    return-void

    :catchall_169
    move-exception p1

    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$i$c;->a:Landroid/support/v4/media/session/MediaSessionCompat$i;

    invoke-virtual {v0, v2}, Landroid/support/v4/media/session/MediaSessionCompat$i;->f(Landroidx/media/a;)V

    throw p1

    :pswitch_data_170
    .packed-switch 0x1
        :pswitch_156
        :pswitch_14e
        :pswitch_14a
        :pswitch_142
        :pswitch_13a
        :pswitch_132
        :pswitch_12e
        :pswitch_126
        :pswitch_11e
        :pswitch_116
        :pswitch_10a
        :pswitch_106
        :pswitch_102
        :pswitch_fe
        :pswitch_f9
        :pswitch_f4
        :pswitch_ef
        :pswitch_e2
        :pswitch_d9
        :pswitch_d0
        :pswitch_b5
        :pswitch_ac
        :pswitch_a5
        :pswitch_3a
        :pswitch_9c
        :pswitch_91
        :pswitch_88
        :pswitch_59
        :pswitch_4c
        :pswitch_45
        :pswitch_3c
    .end packed-switch
.end method
