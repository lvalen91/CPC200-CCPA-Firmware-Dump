.class public abstract Landroid/support/v4/media/session/MediaSessionCompat$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/session/MediaSessionCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
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


# instance fields
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


# direct methods
.method public constructor <init>()V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$c;->c:Landroid/support/v4/media/session/MediaSessionCompat$c$a;

    .line 3
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-lt v1, v2, :cond_18

    .line 4
    new-instance v0, Landroid/support/v4/media/session/MediaSessionCompat$c$d;

    invoke-direct {v0, p0}, Landroid/support/v4/media/session/MediaSessionCompat$c$d;-><init>(Landroid/support/v4/media/session/MediaSessionCompat$c;)V

    invoke-static {v0}, Landroid/support/v4/media/session/f;->a(Landroid/support/v4/media/session/f$a;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$c;->a:Ljava/lang/Object;

    goto :goto_3a

    :cond_18
    const/16 v2, 0x17

    if-lt v1, v2, :cond_28

    .line 5
    new-instance v0, Landroid/support/v4/media/session/MediaSessionCompat$c$c;

    invoke-direct {v0, p0}, Landroid/support/v4/media/session/MediaSessionCompat$c$c;-><init>(Landroid/support/v4/media/session/MediaSessionCompat$c;)V

    invoke-static {v0}, Landroid/support/v4/media/session/e;->a(Landroid/support/v4/media/session/e$a;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$c;->a:Ljava/lang/Object;

    goto :goto_3a

    :cond_28
    const/16 v2, 0x15

    if-lt v1, v2, :cond_38

    .line 6
    new-instance v0, Landroid/support/v4/media/session/MediaSessionCompat$c$b;

    invoke-direct {v0, p0}, Landroid/support/v4/media/session/MediaSessionCompat$c$b;-><init>(Landroid/support/v4/media/session/MediaSessionCompat$c;)V

    invoke-static {v0}, Landroid/support/v4/media/session/d;->a(Landroid/support/v4/media/session/d$a;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$c;->a:Ljava/lang/Object;

    goto :goto_3a

    .line 7
    :cond_38
    iput-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$c;->a:Ljava/lang/Object;

    :goto_3a
    return-void
.end method


# virtual methods
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

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$c;->b:Ljava/lang/ref/WeakReference;

    .line 2
    iget-object p1, p0, Landroid/support/v4/media/session/MediaSessionCompat$c;->c:Landroid/support/v4/media/session/MediaSessionCompat$c$a;

    if-eqz p1, :cond_f

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 4
    :cond_f
    new-instance p1, Landroid/support/v4/media/session/MediaSessionCompat$c$a;

    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Landroid/support/v4/media/session/MediaSessionCompat$c$a;-><init>(Landroid/support/v4/media/session/MediaSessionCompat$c;Landroid/os/Looper;)V

    iput-object p1, p0, Landroid/support/v4/media/session/MediaSessionCompat$c;->c:Landroid/support/v4/media/session/MediaSessionCompat$c$a;

    return-void
.end method

.method a(Landroidx/media/a;)V
    .registers 13

    .line 1
    iget-boolean v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$c;->d:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$c;->d:Z

    .line 3
    iget-object v1, p0, Landroid/support/v4/media/session/MediaSessionCompat$c;->c:Landroid/support/v4/media/session/MediaSessionCompat$c$a;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 4
    iget-object v1, p0, Landroid/support/v4/media/session/MediaSessionCompat$c;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/media/session/MediaSessionCompat$d;

    if-nez v1, :cond_19

    return-void

    .line 5
    :cond_19
    invoke-interface {v1}, Landroid/support/v4/media/session/MediaSessionCompat$d;->i()Landroid/support/v4/media/session/PlaybackStateCompat;

    move-result-object v3

    const-wide/16 v4, 0x0

    if-nez v3, :cond_23

    move-wide v6, v4

    goto :goto_27

    .line 6
    :cond_23
    invoke-virtual {v3}, Landroid/support/v4/media/session/PlaybackStateCompat;->k()J

    move-result-wide v6

    :goto_27
    if-eqz v3, :cond_32

    .line 7
    invoke-virtual {v3}, Landroid/support/v4/media/session/PlaybackStateCompat;->p()I

    move-result v3

    const/4 v8, 0x3

    if-ne v3, v8, :cond_32

    const/4 v3, 0x1

    goto :goto_33

    :cond_32
    const/4 v3, 0x0

    :goto_33
    const-wide/16 v8, 0x204

    and-long/2addr v8, v6

    cmp-long v10, v8, v4

    if-eqz v10, :cond_3c

    const/4 v8, 0x1

    goto :goto_3d

    :cond_3c
    const/4 v8, 0x0

    :goto_3d
    const-wide/16 v9, 0x202

    and-long/2addr v6, v9

    cmp-long v9, v6, v4

    if-eqz v9, :cond_45

    const/4 v0, 0x1

    .line 8
    :cond_45
    invoke-interface {v1, p1}, Landroid/support/v4/media/session/MediaSessionCompat$d;->f(Landroidx/media/a;)V

    if-eqz v3, :cond_50

    if-eqz v0, :cond_50

    .line 9
    invoke-virtual {p0}, Landroid/support/v4/media/session/MediaSessionCompat$c;->h()V

    goto :goto_57

    :cond_50
    if-nez v3, :cond_57

    if-eqz v8, :cond_57

    .line 10
    invoke-virtual {p0}, Landroid/support/v4/media/session/MediaSessionCompat$c;->i()V

    :cond_57
    :goto_57
    const/4 p1, 0x0

    .line 11
    invoke-interface {v1, p1}, Landroid/support/v4/media/session/MediaSessionCompat$d;->f(Landroidx/media/a;)V

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

    const/4 v1, 0x0

    const/16 v2, 0x1b

    if-lt v0, v2, :cond_8

    return v1

    .line 2
    :cond_8
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$c;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/media/session/MediaSessionCompat$d;

    if-eqz v0, :cond_7c

    .line 3
    iget-object v2, p0, Landroid/support/v4/media/session/MediaSessionCompat$c;->c:Landroid/support/v4/media/session/MediaSessionCompat$c$a;

    if-nez v2, :cond_17

    goto :goto_7c

    :cond_17
    const-string v2, "android.intent.extra.KEY_EVENT"

    .line 4
    invoke-virtual {p1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/view/KeyEvent;

    if-eqz p1, :cond_7c

    .line 5
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-eqz v2, :cond_28

    goto :goto_7c

    .line 6
    :cond_28
    invoke-interface {v0}, Landroid/support/v4/media/session/MediaSessionCompat$d;->e()Landroidx/media/a;

    move-result-object v2

    .line 7
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    const/16 v4, 0x4f

    if-eq v3, v4, :cond_3c

    const/16 v4, 0x55

    if-eq v3, v4, :cond_3c

    .line 8
    invoke-virtual {p0, v2}, Landroid/support/v4/media/session/MediaSessionCompat$c;->a(Landroidx/media/a;)V

    return v1

    .line 9
    :cond_3c
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result p1

    const/4 v3, 0x1

    if-lez p1, :cond_47

    .line 10
    invoke-virtual {p0, v2}, Landroid/support/v4/media/session/MediaSessionCompat$c;->a(Landroidx/media/a;)V

    goto :goto_7b

    .line 11
    :cond_47
    iget-boolean p1, p0, Landroid/support/v4/media/session/MediaSessionCompat$c;->d:Z

    if-eqz p1, :cond_6b

    .line 12
    iget-object p1, p0, Landroid/support/v4/media/session/MediaSessionCompat$c;->c:Landroid/support/v4/media/session/MediaSessionCompat$c$a;

    invoke-virtual {p1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 13
    iput-boolean v1, p0, Landroid/support/v4/media/session/MediaSessionCompat$c;->d:Z

    .line 14
    invoke-interface {v0}, Landroid/support/v4/media/session/MediaSessionCompat$d;->i()Landroid/support/v4/media/session/PlaybackStateCompat;

    move-result-object p1

    const-wide/16 v0, 0x0

    if-nez p1, :cond_5c

    move-wide v4, v0

    goto :goto_60

    .line 15
    :cond_5c
    invoke-virtual {p1}, Landroid/support/v4/media/session/PlaybackStateCompat;->k()J

    move-result-wide v4

    :goto_60
    const-wide/16 v6, 0x20

    and-long/2addr v4, v6

    cmp-long p1, v4, v0

    if-eqz p1, :cond_7b

    .line 16
    invoke-virtual {p0}, Landroid/support/v4/media/session/MediaSessionCompat$c;->y()V

    goto :goto_7b

    .line 17
    :cond_6b
    iput-boolean v3, p0, Landroid/support/v4/media/session/MediaSessionCompat$c;->d:Z

    .line 18
    iget-object p1, p0, Landroid/support/v4/media/session/MediaSessionCompat$c;->c:Landroid/support/v4/media/session/MediaSessionCompat$c$a;

    invoke-virtual {p1, v3, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 19
    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v1

    int-to-long v1, v1

    .line 20
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_7b
    :goto_7b
    return v3

    :cond_7c
    :goto_7c
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
