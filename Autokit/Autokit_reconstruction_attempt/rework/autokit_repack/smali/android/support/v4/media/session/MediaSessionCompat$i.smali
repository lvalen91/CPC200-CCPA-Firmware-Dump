.class Landroid/support/v4/media/session/MediaSessionCompat$i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/media/session/MediaSessionCompat$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/session/MediaSessionCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "i"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/media/session/MediaSessionCompat$i$c;,
        Landroid/support/v4/media/session/MediaSessionCompat$i$a;,
        Landroid/support/v4/media/session/MediaSessionCompat$i$b;
    }
.end annotation


# instance fields
.field A:I

.field B:Landroid/os/Bundle;

.field C:I

.field D:I

.field E:Landroidx/media/e;

.field private final a:Landroid/content/ComponentName;

.field private final b:Landroid/app/PendingIntent;

.field private final c:Landroid/support/v4/media/session/MediaSessionCompat$i$b;

.field private final d:Landroid/support/v4/media/session/MediaSessionCompat$Token;

.field final e:Ljava/lang/String;

.field final f:Ljava/lang/String;

.field final g:Landroid/media/AudioManager;

.field final h:Landroid/media/RemoteControlClient;

.field final i:Ljava/lang/Object;

.field final j:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Landroid/support/v4/media/session/a;",
            ">;"
        }
    .end annotation
.end field

.field private k:Landroid/support/v4/media/session/MediaSessionCompat$i$c;

.field l:Z

.field m:Z

.field private n:Z

.field private o:Z

.field volatile p:Landroid/support/v4/media/session/MediaSessionCompat$c;

.field private q:Landroidx/media/a;

.field r:I

.field s:Landroid/support/v4/media/MediaMetadataCompat;

.field t:Landroid/support/v4/media/session/PlaybackStateCompat;

.field u:Landroid/app/PendingIntent;

.field v:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;",
            ">;"
        }
    .end annotation
.end field

.field w:Ljava/lang/CharSequence;

.field x:I

.field y:Z

.field z:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/content/ComponentName;Landroid/app/PendingIntent;)V
    .registers 7

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$i;->i:Ljava/lang/Object;

    .line 3
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$i;->j:Landroid/os/RemoteCallbackList;

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$i;->l:Z

    .line 5
    iput-boolean v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$i;->m:Z

    .line 6
    iput-boolean v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$i;->n:Z

    .line 7
    iput-boolean v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$i;->o:Z

    if-eqz p3, :cond_52

    .line 8
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v4/media/session/MediaSessionCompat$i;->e:Ljava/lang/String;

    const-string v1, "audio"

    .line 9
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    iput-object p1, p0, Landroid/support/v4/media/session/MediaSessionCompat$i;->g:Landroid/media/AudioManager;

    .line 10
    iput-object p2, p0, Landroid/support/v4/media/session/MediaSessionCompat$i;->f:Ljava/lang/String;

    .line 11
    iput-object p3, p0, Landroid/support/v4/media/session/MediaSessionCompat$i;->a:Landroid/content/ComponentName;

    .line 12
    iput-object p4, p0, Landroid/support/v4/media/session/MediaSessionCompat$i;->b:Landroid/app/PendingIntent;

    .line 13
    new-instance p1, Landroid/support/v4/media/session/MediaSessionCompat$i$b;

    invoke-direct {p1, p0}, Landroid/support/v4/media/session/MediaSessionCompat$i$b;-><init>(Landroid/support/v4/media/session/MediaSessionCompat$i;)V

    iput-object p1, p0, Landroid/support/v4/media/session/MediaSessionCompat$i;->c:Landroid/support/v4/media/session/MediaSessionCompat$i$b;

    .line 14
    new-instance p1, Landroid/support/v4/media/session/MediaSessionCompat$Token;

    iget-object p2, p0, Landroid/support/v4/media/session/MediaSessionCompat$i;->c:Landroid/support/v4/media/session/MediaSessionCompat$i$b;

    invoke-direct {p1, p2}, Landroid/support/v4/media/session/MediaSessionCompat$Token;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Landroid/support/v4/media/session/MediaSessionCompat$i;->d:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    .line 15
    iput v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$i;->x:I

    const/4 p1, 0x1

    .line 16
    iput p1, p0, Landroid/support/v4/media/session/MediaSessionCompat$i;->C:I

    const/4 p1, 0x3

    .line 17
    iput p1, p0, Landroid/support/v4/media/session/MediaSessionCompat$i;->D:I

    .line 18
    new-instance p1, Landroid/media/RemoteControlClient;

    invoke-direct {p1, p4}, Landroid/media/RemoteControlClient;-><init>(Landroid/app/PendingIntent;)V

    iput-object p1, p0, Landroid/support/v4/media/session/MediaSessionCompat$i;->h:Landroid/media/RemoteControlClient;

    return-void

    .line 19
    :cond_52
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "MediaButtonReceiver component may not be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private q(Landroid/support/v4/media/MediaMetadataCompat;)V
    .registers 4

    .line 1
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$i;->j:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_18

    .line 2
    iget-object v1, p0, Landroid/support/v4/media/session/MediaSessionCompat$i;->j:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1, v0}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Landroid/support/v4/media/session/a;

    .line 3
    :try_start_12
    invoke-interface {v1, p1}, Landroid/support/v4/media/session/a;->M(Landroid/support/v4/media/MediaMetadataCompat;)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_15} :catch_15

    :catch_15
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 4
    :cond_18
    iget-object p1, p0, Landroid/support/v4/media/session/MediaSessionCompat$i;->j:Landroid/os/RemoteCallbackList;

    invoke-virtual {p1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    return-void
.end method

.method private r()V
    .registers 3

    .line 1
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$i;->j:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_18

    .line 2
    iget-object v1, p0, Landroid/support/v4/media/session/MediaSessionCompat$i;->j:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1, v0}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Landroid/support/v4/media/session/a;

    .line 3
    :try_start_12
    invoke-interface {v1}, Landroid/support/v4/media/session/a;->e()V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_15} :catch_15

    :catch_15
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 4
    :cond_18
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$i;->j:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 5
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$i;->j:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->kill()V

    return-void
.end method

.method private s(Landroid/support/v4/media/session/PlaybackStateCompat;)V
    .registers 4

    .line 1
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$i;->j:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_18

    .line 2
    iget-object v1, p0, Landroid/support/v4/media/session/MediaSessionCompat$i;->j:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1, v0}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Landroid/support/v4/media/session/a;

    .line 3
    :try_start_12
    invoke-interface {v1, p1}, Landroid/support/v4/media/session/a;->G0(Landroid/support/v4/media/session/PlaybackStateCompat;)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_15} :catch_15

    :catch_15
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 4
    :cond_18
    iget-object p1, p0, Landroid/support/v4/media/session/MediaSessionCompat$i;->j:Landroid/os/RemoteCallbackList;

    invoke-virtual {p1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$i;->m:Z

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$i;->l:Z

    .line 3
    invoke-virtual {p0}, Landroid/support/v4/media/session/MediaSessionCompat$i;->x()Z

    .line 4
    invoke-direct {p0}, Landroid/support/v4/media/session/MediaSessionCompat$i;->r()V

    return-void
.end method

.method public b(Landroid/app/PendingIntent;)V
    .registers 2

    return-void
.end method

.method public c(Z)V
    .registers 3

    .line 1
    iget-boolean v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$i;->m:Z

    if-ne p1, v0, :cond_5

    return-void

    .line 2
    :cond_5
    iput-boolean p1, p0, Landroid/support/v4/media/session/MediaSessionCompat$i;->m:Z

    .line 3
    invoke-virtual {p0}, Landroid/support/v4/media/session/MediaSessionCompat$i;->x()Z

    move-result p1

    if-eqz p1, :cond_17

    .line 4
    iget-object p1, p0, Landroid/support/v4/media/session/MediaSessionCompat$i;->s:Landroid/support/v4/media/MediaMetadataCompat;

    invoke-virtual {p0, p1}, Landroid/support/v4/media/session/MediaSessionCompat$i;->t(Landroid/support/v4/media/MediaMetadataCompat;)V

    .line 5
    iget-object p1, p0, Landroid/support/v4/media/session/MediaSessionCompat$i;->t:Landroid/support/v4/media/session/PlaybackStateCompat;

    invoke-virtual {p0, p1}, Landroid/support/v4/media/session/MediaSessionCompat$i;->g(Landroid/support/v4/media/session/PlaybackStateCompat;)V

    :cond_17
    return-void
.end method

.method public d()Landroid/support/v4/media/session/MediaSessionCompat$Token;
    .registers 2

    .line 1
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$i;->d:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    return-object v0
.end method

.method public e()Landroidx/media/a;
    .registers 3

    .line 1
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$i;->i:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_3
    iget-object v1, p0, Landroid/support/v4/media/session/MediaSessionCompat$i;->q:Landroidx/media/a;

    monitor-exit v0

    return-object v1

    :catchall_7
    move-exception v1

    .line 3
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public f(Landroidx/media/a;)V
    .registers 3

    .line 1
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$i;->i:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_3
    iput-object p1, p0, Landroid/support/v4/media/session/MediaSessionCompat$i;->q:Landroidx/media/a;

    .line 3
    monitor-exit v0

    return-void

    :catchall_7
    move-exception p1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p1
.end method

.method public g(Landroid/support/v4/media/session/PlaybackStateCompat;)V
    .registers 5

    .line 1
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$i;->i:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_3
    iput-object p1, p0, Landroid/support/v4/media/session/MediaSessionCompat$i;->t:Landroid/support/v4/media/session/PlaybackStateCompat;

    .line 3
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_2d

    .line 4
    invoke-direct {p0, p1}, Landroid/support/v4/media/session/MediaSessionCompat$i;->s(Landroid/support/v4/media/session/PlaybackStateCompat;)V

    .line 5
    iget-boolean v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$i;->m:Z

    if-nez v0, :cond_e

    return-void

    :cond_e
    if-nez p1, :cond_1c

    .line 6
    iget-object p1, p0, Landroid/support/v4/media/session/MediaSessionCompat$i;->h:Landroid/media/RemoteControlClient;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/media/RemoteControlClient;->setPlaybackState(I)V

    .line 7
    iget-object p1, p0, Landroid/support/v4/media/session/MediaSessionCompat$i;->h:Landroid/media/RemoteControlClient;

    invoke-virtual {p1, v0}, Landroid/media/RemoteControlClient;->setTransportControlFlags(I)V

    goto :goto_2c

    .line 8
    :cond_1c
    invoke-virtual {p0, p1}, Landroid/support/v4/media/session/MediaSessionCompat$i;->u(Landroid/support/v4/media/session/PlaybackStateCompat;)V

    .line 9
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$i;->h:Landroid/media/RemoteControlClient;

    .line 10
    invoke-virtual {p1}, Landroid/support/v4/media/session/PlaybackStateCompat;->k()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Landroid/support/v4/media/session/MediaSessionCompat$i;->n(J)I

    move-result p1

    .line 11
    invoke-virtual {v0, p1}, Landroid/media/RemoteControlClient;->setTransportControlFlags(I)V

    :goto_2c
    return-void

    :catchall_2d
    move-exception p1

    .line 12
    :try_start_2e
    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_2e .. :try_end_2f} :catchall_2d

    throw p1
.end method

.method public h(Landroid/support/v4/media/session/MediaSessionCompat$c;Landroid/os/Handler;)V
    .registers 5

    .line 1
    iput-object p1, p0, Landroid/support/v4/media/session/MediaSessionCompat$i;->p:Landroid/support/v4/media/session/MediaSessionCompat$c;

    if-eqz p1, :cond_2d

    if-nez p2, :cond_b

    .line 2
    new-instance p2, Landroid/os/Handler;

    invoke-direct {p2}, Landroid/os/Handler;-><init>()V

    .line 3
    :cond_b
    iget-object p1, p0, Landroid/support/v4/media/session/MediaSessionCompat$i;->i:Ljava/lang/Object;

    monitor-enter p1

    .line 4
    :try_start_e
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$i;->k:Landroid/support/v4/media/session/MediaSessionCompat$i$c;

    if-eqz v0, :cond_18

    .line 5
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$i;->k:Landroid/support/v4/media/session/MediaSessionCompat$i$c;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 6
    :cond_18
    new-instance v0, Landroid/support/v4/media/session/MediaSessionCompat$i$c;

    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/support/v4/media/session/MediaSessionCompat$i$c;-><init>(Landroid/support/v4/media/session/MediaSessionCompat$i;Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$i;->k:Landroid/support/v4/media/session/MediaSessionCompat$i$c;

    .line 7
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$i;->p:Landroid/support/v4/media/session/MediaSessionCompat$c;

    invoke-virtual {v0, p0, p2}, Landroid/support/v4/media/session/MediaSessionCompat$c;->C(Landroid/support/v4/media/session/MediaSessionCompat$d;Landroid/os/Handler;)V

    .line 8
    monitor-exit p1

    goto :goto_2d

    :catchall_2a
    move-exception p2

    monitor-exit p1
    :try_end_2c
    .catchall {:try_start_e .. :try_end_2c} :catchall_2a

    throw p2

    :cond_2d
    :goto_2d
    return-void
.end method

.method public i()Landroid/support/v4/media/session/PlaybackStateCompat;
    .registers 3

    .line 1
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$i;->i:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_3
    iget-object v1, p0, Landroid/support/v4/media/session/MediaSessionCompat$i;->t:Landroid/support/v4/media/session/PlaybackStateCompat;

    monitor-exit v0

    return-object v1

    :catchall_7
    move-exception v1

    .line 3
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public j(I)V
    .registers 3

    .line 1
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$i;->i:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_3
    iput p1, p0, Landroid/support/v4/media/session/MediaSessionCompat$i;->r:I

    .line 3
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_a

    .line 4
    invoke-virtual {p0}, Landroid/support/v4/media/session/MediaSessionCompat$i;->x()Z

    return-void

    :catchall_a
    move-exception p1

    .line 5
    :try_start_b
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_b .. :try_end_c} :catchall_a

    throw p1
.end method

.method k(II)V
    .registers 5

    .line 1
    iget v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$i;->C:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_d

    .line 2
    iget-object p2, p0, Landroid/support/v4/media/session/MediaSessionCompat$i;->E:Landroidx/media/e;

    if-eqz p2, :cond_14

    .line 3
    invoke-virtual {p2, p1}, Landroidx/media/e;->b(I)V

    goto :goto_14

    .line 4
    :cond_d
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$i;->g:Landroid/media/AudioManager;

    iget v1, p0, Landroid/support/v4/media/session/MediaSessionCompat$i;->D:I

    invoke-virtual {v0, v1, p1, p2}, Landroid/media/AudioManager;->adjustStreamVolume(III)V

    :cond_14
    :goto_14
    return-void
.end method

.method l(Landroid/os/Bundle;)Landroid/media/RemoteControlClient$MetadataEditor;
    .registers 8

    .line 1
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$i;->h:Landroid/media/RemoteControlClient;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/RemoteControlClient;->editMetadata(Z)Landroid/media/RemoteControlClient$MetadataEditor;

    move-result-object v0

    if-nez p1, :cond_a

    return-object v0

    :cond_a
    const-string v2, "android.media.metadata.ART"

    .line 2
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    const/16 v4, 0x64

    const/4 v5, 0x0

    if-eqz v3, :cond_29

    .line 3
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    if-eqz v2, :cond_25

    .line 4
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v3

    invoke-virtual {v2, v3, v5}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 5
    :cond_25
    invoke-virtual {v0, v4, v2}, Landroid/media/RemoteControlClient$MetadataEditor;->putBitmap(ILandroid/graphics/Bitmap;)Landroid/media/RemoteControlClient$MetadataEditor;

    goto :goto_44

    :cond_29
    const-string v2, "android.media.metadata.ALBUM_ART"

    .line 6
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_44

    .line 7
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    if-eqz v2, :cond_41

    .line 8
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v3

    invoke-virtual {v2, v3, v5}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 9
    :cond_41
    invoke-virtual {v0, v4, v2}, Landroid/media/RemoteControlClient$MetadataEditor;->putBitmap(ILandroid/graphics/Bitmap;)Landroid/media/RemoteControlClient$MetadataEditor;

    :cond_44
    :goto_44
    const-string v2, "android.media.metadata.ALBUM"

    .line 10
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_53

    .line 11
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 12
    invoke-virtual {v0, v1, v2}, Landroid/media/RemoteControlClient$MetadataEditor;->putString(ILjava/lang/String;)Landroid/media/RemoteControlClient$MetadataEditor;

    :cond_53
    const-string v1, "android.media.metadata.ALBUM_ARTIST"

    .line 13
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_64

    const/16 v2, 0xd

    .line 14
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 15
    invoke-virtual {v0, v2, v1}, Landroid/media/RemoteControlClient$MetadataEditor;->putString(ILjava/lang/String;)Landroid/media/RemoteControlClient$MetadataEditor;

    :cond_64
    const-string v1, "android.media.metadata.ARTIST"

    .line 16
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_74

    const/4 v2, 0x2

    .line 17
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 18
    invoke-virtual {v0, v2, v1}, Landroid/media/RemoteControlClient$MetadataEditor;->putString(ILjava/lang/String;)Landroid/media/RemoteControlClient$MetadataEditor;

    :cond_74
    const-string v1, "android.media.metadata.AUTHOR"

    .line 19
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_84

    const/4 v2, 0x3

    .line 20
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 21
    invoke-virtual {v0, v2, v1}, Landroid/media/RemoteControlClient$MetadataEditor;->putString(ILjava/lang/String;)Landroid/media/RemoteControlClient$MetadataEditor;

    :cond_84
    const-string v1, "android.media.metadata.COMPILATION"

    .line 22
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_95

    const/16 v2, 0xf

    .line 23
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 24
    invoke-virtual {v0, v2, v1}, Landroid/media/RemoteControlClient$MetadataEditor;->putString(ILjava/lang/String;)Landroid/media/RemoteControlClient$MetadataEditor;

    :cond_95
    const-string v1, "android.media.metadata.COMPOSER"

    .line 25
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a5

    const/4 v2, 0x4

    .line 26
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 27
    invoke-virtual {v0, v2, v1}, Landroid/media/RemoteControlClient$MetadataEditor;->putString(ILjava/lang/String;)Landroid/media/RemoteControlClient$MetadataEditor;

    :cond_a5
    const-string v1, "android.media.metadata.DATE"

    .line 28
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b5

    const/4 v2, 0x5

    .line 29
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 30
    invoke-virtual {v0, v2, v1}, Landroid/media/RemoteControlClient$MetadataEditor;->putString(ILjava/lang/String;)Landroid/media/RemoteControlClient$MetadataEditor;

    :cond_b5
    const-string v1, "android.media.metadata.DISC_NUMBER"

    .line 31
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c6

    const/16 v2, 0xe

    .line 32
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 33
    invoke-virtual {v0, v2, v3, v4}, Landroid/media/RemoteControlClient$MetadataEditor;->putLong(IJ)Landroid/media/RemoteControlClient$MetadataEditor;

    :cond_c6
    const-string v1, "android.media.metadata.DURATION"

    .line 34
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_d7

    const/16 v2, 0x9

    .line 35
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 36
    invoke-virtual {v0, v2, v3, v4}, Landroid/media/RemoteControlClient$MetadataEditor;->putLong(IJ)Landroid/media/RemoteControlClient$MetadataEditor;

    :cond_d7
    const-string v1, "android.media.metadata.GENRE"

    .line 37
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_e7

    const/4 v2, 0x6

    .line 38
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 39
    invoke-virtual {v0, v2, v1}, Landroid/media/RemoteControlClient$MetadataEditor;->putString(ILjava/lang/String;)Landroid/media/RemoteControlClient$MetadataEditor;

    :cond_e7
    const-string v1, "android.media.metadata.TITLE"

    .line 40
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_f7

    const/4 v2, 0x7

    .line 41
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 42
    invoke-virtual {v0, v2, v1}, Landroid/media/RemoteControlClient$MetadataEditor;->putString(ILjava/lang/String;)Landroid/media/RemoteControlClient$MetadataEditor;

    :cond_f7
    const-string v1, "android.media.metadata.TRACK_NUMBER"

    .line 43
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_106

    .line 44
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    .line 45
    invoke-virtual {v0, v5, v1, v2}, Landroid/media/RemoteControlClient$MetadataEditor;->putLong(IJ)Landroid/media/RemoteControlClient$MetadataEditor;

    :cond_106
    const-string v1, "android.media.metadata.WRITER"

    .line 46
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_117

    const/16 v2, 0xb

    .line 47
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 48
    invoke-virtual {v0, v2, p1}, Landroid/media/RemoteControlClient$MetadataEditor;->putString(ILjava/lang/String;)Landroid/media/RemoteControlClient$MetadataEditor;

    :cond_117
    return-object v0
.end method

.method m(I)I
    .registers 2

    packed-switch p1, :pswitch_data_1c

    const/4 p1, -0x1

    return p1

    :pswitch_5
    const/4 p1, 0x6

    return p1

    :pswitch_7
    const/4 p1, 0x7

    return p1

    :pswitch_9
    const/16 p1, 0x9

    return p1

    :pswitch_c
    const/16 p1, 0x8

    return p1

    :pswitch_f
    const/4 p1, 0x5

    return p1

    :pswitch_11
    const/4 p1, 0x4

    return p1

    :pswitch_13
    const/4 p1, 0x3

    return p1

    :pswitch_15
    const/4 p1, 0x2

    return p1

    :pswitch_17
    const/4 p1, 0x1

    return p1

    :pswitch_19
    const/4 p1, 0x0

    return p1

    nop

    :pswitch_data_1c
    .packed-switch 0x0
        :pswitch_19
        :pswitch_17
        :pswitch_15
        :pswitch_13
        :pswitch_11
        :pswitch_f
        :pswitch_c
        :pswitch_9
        :pswitch_c
        :pswitch_7
        :pswitch_5
        :pswitch_5
    .end packed-switch
.end method

.method n(J)I
    .registers 9

    const-wide/16 v0, 0x1

    and-long/2addr v0, p1

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_c

    const/16 v0, 0x20

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    const-wide/16 v4, 0x2

    and-long/2addr v4, p1

    cmp-long v1, v4, v2

    if-eqz v1, :cond_16

    or-int/lit8 v0, v0, 0x10

    :cond_16
    const-wide/16 v4, 0x4

    and-long/2addr v4, p1

    cmp-long v1, v4, v2

    if-eqz v1, :cond_1f

    or-int/lit8 v0, v0, 0x4

    :cond_1f
    const-wide/16 v4, 0x8

    and-long/2addr v4, p1

    cmp-long v1, v4, v2

    if-eqz v1, :cond_28

    or-int/lit8 v0, v0, 0x2

    :cond_28
    const-wide/16 v4, 0x10

    and-long/2addr v4, p1

    cmp-long v1, v4, v2

    if-eqz v1, :cond_31

    or-int/lit8 v0, v0, 0x1

    :cond_31
    const-wide/16 v4, 0x20

    and-long/2addr v4, p1

    cmp-long v1, v4, v2

    if-eqz v1, :cond_3a

    or-int/lit16 v0, v0, 0x80

    :cond_3a
    const-wide/16 v4, 0x40

    and-long/2addr v4, p1

    cmp-long v1, v4, v2

    if-eqz v1, :cond_43

    or-int/lit8 v0, v0, 0x40

    :cond_43
    const-wide/16 v4, 0x200

    and-long/2addr p1, v4

    cmp-long v1, p1, v2

    if-eqz v1, :cond_4c

    or-int/lit8 v0, v0, 0x8

    :cond_4c
    return v0
.end method

.method o(IIILjava/lang/Object;Landroid/os/Bundle;)V
    .registers 8

    .line 1
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$i;->i:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_3
    iget-object v1, p0, Landroid/support/v4/media/session/MediaSessionCompat$i;->k:Landroid/support/v4/media/session/MediaSessionCompat$i$c;

    if-eqz v1, :cond_38

    .line 3
    iget-object v1, p0, Landroid/support/v4/media/session/MediaSessionCompat$i;->k:Landroid/support/v4/media/session/MediaSessionCompat$i$c;

    invoke-virtual {v1, p1, p2, p3, p4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 4
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    const-string p3, "data_calling_pkg"

    const-string p4, "android.media.session.MediaController"

    .line 5
    invoke-virtual {p2, p3, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p3, "data_calling_pid"

    .line 6
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result p4

    invoke-virtual {p2, p3, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p3, "data_calling_uid"

    .line 7
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p4

    invoke-virtual {p2, p3, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    if-eqz p5, :cond_32

    const-string p3, "data_extras"

    .line 8
    invoke-virtual {p2, p3, p5}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 9
    :cond_32
    invoke-virtual {p1, p2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 10
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 11
    :cond_38
    monitor-exit v0

    return-void

    :catchall_3a
    move-exception p1

    monitor-exit v0
    :try_end_3c
    .catchall {:try_start_3 .. :try_end_3c} :catchall_3a

    throw p1
.end method

.method p(Landroid/app/PendingIntent;Landroid/content/ComponentName;)V
    .registers 3

    .line 1
    iget-object p1, p0, Landroid/support/v4/media/session/MediaSessionCompat$i;->g:Landroid/media/AudioManager;

    invoke-virtual {p1, p2}, Landroid/media/AudioManager;->registerMediaButtonEventReceiver(Landroid/content/ComponentName;)V

    return-void
.end method

.method public t(Landroid/support/v4/media/MediaMetadataCompat;)V
    .registers 4

    if-eqz p1, :cond_d

    .line 1
    new-instance v0, Landroid/support/v4/media/MediaMetadataCompat$b;

    sget v1, Landroid/support/v4/media/session/MediaSessionCompat;->c:I

    invoke-direct {v0, p1, v1}, Landroid/support/v4/media/MediaMetadataCompat$b;-><init>(Landroid/support/v4/media/MediaMetadataCompat;I)V

    invoke-virtual {v0}, Landroid/support/v4/media/MediaMetadataCompat$b;->a()Landroid/support/v4/media/MediaMetadataCompat;

    move-result-object p1

    .line 2
    :cond_d
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$i;->i:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_10
    iput-object p1, p0, Landroid/support/v4/media/session/MediaSessionCompat$i;->s:Landroid/support/v4/media/MediaMetadataCompat;

    .line 4
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_10 .. :try_end_13} :catchall_2b

    .line 5
    invoke-direct {p0, p1}, Landroid/support/v4/media/session/MediaSessionCompat$i;->q(Landroid/support/v4/media/MediaMetadataCompat;)V

    .line 6
    iget-boolean v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$i;->m:Z

    if-nez v0, :cond_1b

    return-void

    :cond_1b
    if-nez p1, :cond_1f

    const/4 p1, 0x0

    goto :goto_23

    .line 7
    :cond_1f
    invoke-virtual {p1}, Landroid/support/v4/media/MediaMetadataCompat;->l()Landroid/os/Bundle;

    move-result-object p1

    .line 8
    :goto_23
    invoke-virtual {p0, p1}, Landroid/support/v4/media/session/MediaSessionCompat$i;->l(Landroid/os/Bundle;)Landroid/media/RemoteControlClient$MetadataEditor;

    move-result-object p1

    .line 9
    invoke-virtual {p1}, Landroid/media/RemoteControlClient$MetadataEditor;->apply()V

    return-void

    :catchall_2b
    move-exception p1

    .line 10
    :try_start_2c
    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_2c .. :try_end_2d} :catchall_2b

    throw p1
.end method

.method u(Landroid/support/v4/media/session/PlaybackStateCompat;)V
    .registers 3

    .line 1
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$i;->h:Landroid/media/RemoteControlClient;

    invoke-virtual {p1}, Landroid/support/v4/media/session/PlaybackStateCompat;->p()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/support/v4/media/session/MediaSessionCompat$i;->m(I)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/media/RemoteControlClient;->setPlaybackState(I)V

    return-void
.end method

.method v(II)V
    .registers 5

    .line 1
    iget v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$i;->C:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_d

    .line 2
    iget-object p2, p0, Landroid/support/v4/media/session/MediaSessionCompat$i;->E:Landroidx/media/e;

    if-eqz p2, :cond_14

    .line 3
    invoke-virtual {p2, p1}, Landroidx/media/e;->c(I)V

    goto :goto_14

    .line 4
    :cond_d
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$i;->g:Landroid/media/AudioManager;

    iget v1, p0, Landroid/support/v4/media/session/MediaSessionCompat$i;->D:I

    invoke-virtual {v0, v1, p1, p2}, Landroid/media/AudioManager;->setStreamVolume(III)V

    :cond_14
    :goto_14
    return-void
.end method

.method w(Landroid/app/PendingIntent;Landroid/content/ComponentName;)V
    .registers 3

    .line 1
    iget-object p1, p0, Landroid/support/v4/media/session/MediaSessionCompat$i;->g:Landroid/media/AudioManager;

    invoke-virtual {p1, p2}, Landroid/media/AudioManager;->unregisterMediaButtonEventReceiver(Landroid/content/ComponentName;)V

    return-void
.end method

.method x()Z
    .registers 5

    .line 1
    iget-boolean v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$i;->m:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_58

    .line 2
    iget-boolean v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$i;->n:Z

    if-nez v0, :cond_19

    iget v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$i;->r:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_19

    .line 3
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$i;->b:Landroid/app/PendingIntent;

    iget-object v3, p0, Landroid/support/v4/media/session/MediaSessionCompat$i;->a:Landroid/content/ComponentName;

    invoke-virtual {p0, v0, v3}, Landroid/support/v4/media/session/MediaSessionCompat$i;->p(Landroid/app/PendingIntent;Landroid/content/ComponentName;)V

    .line 4
    iput-boolean v1, p0, Landroid/support/v4/media/session/MediaSessionCompat$i;->n:Z

    goto :goto_2b

    .line 5
    :cond_19
    iget-boolean v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$i;->n:Z

    if-eqz v0, :cond_2b

    iget v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$i;->r:I

    and-int/2addr v0, v1

    if-nez v0, :cond_2b

    .line 6
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$i;->b:Landroid/app/PendingIntent;

    iget-object v3, p0, Landroid/support/v4/media/session/MediaSessionCompat$i;->a:Landroid/content/ComponentName;

    invoke-virtual {p0, v0, v3}, Landroid/support/v4/media/session/MediaSessionCompat$i;->w(Landroid/app/PendingIntent;Landroid/content/ComponentName;)V

    .line 7
    iput-boolean v2, p0, Landroid/support/v4/media/session/MediaSessionCompat$i;->n:Z

    .line 8
    :cond_2b
    :goto_2b
    iget-boolean v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$i;->o:Z

    if-nez v0, :cond_3f

    iget v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$i;->r:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_3f

    .line 9
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$i;->g:Landroid/media/AudioManager;

    iget-object v2, p0, Landroid/support/v4/media/session/MediaSessionCompat$i;->h:Landroid/media/RemoteControlClient;

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->registerRemoteControlClient(Landroid/media/RemoteControlClient;)V

    .line 10
    iput-boolean v1, p0, Landroid/support/v4/media/session/MediaSessionCompat$i;->o:Z

    goto :goto_78

    .line 11
    :cond_3f
    iget-boolean v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$i;->o:Z

    if-eqz v0, :cond_77

    iget v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$i;->r:I

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_77

    .line 12
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$i;->h:Landroid/media/RemoteControlClient;

    invoke-virtual {v0, v2}, Landroid/media/RemoteControlClient;->setPlaybackState(I)V

    .line 13
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$i;->g:Landroid/media/AudioManager;

    iget-object v1, p0, Landroid/support/v4/media/session/MediaSessionCompat$i;->h:Landroid/media/RemoteControlClient;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->unregisterRemoteControlClient(Landroid/media/RemoteControlClient;)V

    .line 14
    iput-boolean v2, p0, Landroid/support/v4/media/session/MediaSessionCompat$i;->o:Z

    goto :goto_77

    .line 15
    :cond_58
    iget-boolean v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$i;->n:Z

    if-eqz v0, :cond_65

    .line 16
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$i;->b:Landroid/app/PendingIntent;

    iget-object v1, p0, Landroid/support/v4/media/session/MediaSessionCompat$i;->a:Landroid/content/ComponentName;

    invoke-virtual {p0, v0, v1}, Landroid/support/v4/media/session/MediaSessionCompat$i;->w(Landroid/app/PendingIntent;Landroid/content/ComponentName;)V

    .line 17
    iput-boolean v2, p0, Landroid/support/v4/media/session/MediaSessionCompat$i;->n:Z

    .line 18
    :cond_65
    iget-boolean v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$i;->o:Z

    if-eqz v0, :cond_77

    .line 19
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$i;->h:Landroid/media/RemoteControlClient;

    invoke-virtual {v0, v2}, Landroid/media/RemoteControlClient;->setPlaybackState(I)V

    .line 20
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$i;->g:Landroid/media/AudioManager;

    iget-object v1, p0, Landroid/support/v4/media/session/MediaSessionCompat$i;->h:Landroid/media/RemoteControlClient;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->unregisterRemoteControlClient(Landroid/media/RemoteControlClient;)V

    .line 21
    iput-boolean v2, p0, Landroid/support/v4/media/session/MediaSessionCompat$i;->o:Z

    :cond_77
    :goto_77
    const/4 v1, 0x0

    :goto_78
    return v1
.end method
