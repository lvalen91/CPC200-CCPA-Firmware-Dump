.class Landroid/support/v4/media/session/MediaSessionCompat$i;
.super Ljava/lang/Object;
.implements Landroid/support/v4/media/session/MediaSessionCompat$d;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Landroid/support/v4/media/session/MediaSessionCompat;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 8
  name = "i"
.end annotation
.annotation system Ldalvik/annotation/MemberClasses;
  value = {
    Landroid/support/v4/media/session/MediaSessionCompat$i$c;,
    Landroid/support/v4/media/session/MediaSessionCompat$i$a;,
    Landroid/support/v4/media/session/MediaSessionCompat$i$b;
  }
.end annotation

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

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/content/ComponentName;Landroid/app/PendingIntent;)V
  .registers 7
  .line 1
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
  .line 2
    new-instance v0, Ljava/lang/Object;
    invoke-direct { v0 }, Ljava/lang/Object;-><init>()V
    iput-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$i;->i:Ljava/lang/Object;
  .line 3
    new-instance v0, Landroid/os/RemoteCallbackList;
    invoke-direct { v0 }, Landroid/os/RemoteCallbackList;-><init>()V
    iput-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$i;->j:Landroid/os/RemoteCallbackList;
    const/4 v0, 0
  .line 4
    iput-boolean v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$i;->l:Z
  .line 5
    iput-boolean v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$i;->m:Z
  .line 6
    iput-boolean v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$i;->n:Z
  .line 7
    iput-boolean v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$i;->o:Z
    if-eqz p3, :L0
  .line 8
    invoke-virtual { p1 }, Landroid/content/Context;->getPackageName()Ljava/lang/String;
    move-result-object v1
    iput-object v1, p0, Landroid/support/v4/media/session/MediaSessionCompat$i;->e:Ljava/lang/String;
    const-string v1, "audio"
  .line 9
    invoke-virtual { p1, v1 }, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
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
    invoke-direct { p1, p0 }, Landroid/support/v4/media/session/MediaSessionCompat$i$b;-><init>(Landroid/support/v4/media/session/MediaSessionCompat$i;)V
    iput-object p1, p0, Landroid/support/v4/media/session/MediaSessionCompat$i;->c:Landroid/support/v4/media/session/MediaSessionCompat$i$b;
  .line 14
    new-instance p1, Landroid/support/v4/media/session/MediaSessionCompat$Token;
    iget-object p2, p0, Landroid/support/v4/media/session/MediaSessionCompat$i;->c:Landroid/support/v4/media/session/MediaSessionCompat$i$b;
    invoke-direct { p1, p2 }, Landroid/support/v4/media/session/MediaSessionCompat$Token;-><init>(Ljava/lang/Object;)V
    iput-object p1, p0, Landroid/support/v4/media/session/MediaSessionCompat$i;->d:Landroid/support/v4/media/session/MediaSessionCompat$Token;
  .line 15
    iput v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$i;->x:I
    const/4 p1, 1
  .line 16
    iput p1, p0, Landroid/support/v4/media/session/MediaSessionCompat$i;->C:I
    const/4 p1, 3
  .line 17
    iput p1, p0, Landroid/support/v4/media/session/MediaSessionCompat$i;->D:I
  .line 18
    new-instance p1, Landroid/media/RemoteControlClient;
    invoke-direct { p1, p4 }, Landroid/media/RemoteControlClient;-><init>(Landroid/app/PendingIntent;)V
    iput-object p1, p0, Landroid/support/v4/media/session/MediaSessionCompat$i;->h:Landroid/media/RemoteControlClient;
    return-void
  :L0
  .line 19
    new-instance p1, Ljava/lang/IllegalArgumentException;
    const-string p2, "MediaButtonReceiver component may not be null."
    invoke-direct { p1, p2 }, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
    throw p1
.end method

.method private q(Landroid/support/v4/media/MediaMetadataCompat;)V
  .catch Landroid/os/RemoteException; { :L1 .. :L2 } :L2
  .registers 4
  .line 1
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$i;->j:Landroid/os/RemoteCallbackList;
    invoke-virtual { v0 }, Landroid/os/RemoteCallbackList;->beginBroadcast()I
    move-result v0
    add-int/lit8 v0, v0, -1
  :L0
    if-ltz v0, :L3
  .line 2
    iget-object v1, p0, Landroid/support/v4/media/session/MediaSessionCompat$i;->j:Landroid/os/RemoteCallbackList;
    invoke-virtual { v1, v0 }, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;
    move-result-object v1
    check-cast v1, Landroid/support/v4/media/session/a;
  :L1
  .line 3
    invoke-interface { v1, p1 }, Landroid/support/v4/media/session/a;->M(Landroid/support/v4/media/MediaMetadataCompat;)V
  :L2
    add-int/lit8 v0, v0, -1
    goto :L0
  :L3
  .line 4
    iget-object p1, p0, Landroid/support/v4/media/session/MediaSessionCompat$i;->j:Landroid/os/RemoteCallbackList;
    invoke-virtual { p1 }, Landroid/os/RemoteCallbackList;->finishBroadcast()V
    return-void
.end method

.method private r()V
  .catch Landroid/os/RemoteException; { :L1 .. :L2 } :L2
  .registers 3
  .line 1
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$i;->j:Landroid/os/RemoteCallbackList;
    invoke-virtual { v0 }, Landroid/os/RemoteCallbackList;->beginBroadcast()I
    move-result v0
    add-int/lit8 v0, v0, -1
  :L0
    if-ltz v0, :L3
  .line 2
    iget-object v1, p0, Landroid/support/v4/media/session/MediaSessionCompat$i;->j:Landroid/os/RemoteCallbackList;
    invoke-virtual { v1, v0 }, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;
    move-result-object v1
    check-cast v1, Landroid/support/v4/media/session/a;
  :L1
  .line 3
    invoke-interface { v1 }, Landroid/support/v4/media/session/a;->e()V
  :L2
    add-int/lit8 v0, v0, -1
    goto :L0
  :L3
  .line 4
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$i;->j:Landroid/os/RemoteCallbackList;
    invoke-virtual { v0 }, Landroid/os/RemoteCallbackList;->finishBroadcast()V
  .line 5
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$i;->j:Landroid/os/RemoteCallbackList;
    invoke-virtual { v0 }, Landroid/os/RemoteCallbackList;->kill()V
    return-void
.end method

.method private s(Landroid/support/v4/media/session/PlaybackStateCompat;)V
  .catch Landroid/os/RemoteException; { :L1 .. :L2 } :L2
  .registers 4
  .line 1
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$i;->j:Landroid/os/RemoteCallbackList;
    invoke-virtual { v0 }, Landroid/os/RemoteCallbackList;->beginBroadcast()I
    move-result v0
    add-int/lit8 v0, v0, -1
  :L0
    if-ltz v0, :L3
  .line 2
    iget-object v1, p0, Landroid/support/v4/media/session/MediaSessionCompat$i;->j:Landroid/os/RemoteCallbackList;
    invoke-virtual { v1, v0 }, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;
    move-result-object v1
    check-cast v1, Landroid/support/v4/media/session/a;
  :L1
  .line 3
    invoke-interface { v1, p1 }, Landroid/support/v4/media/session/a;->G0(Landroid/support/v4/media/session/PlaybackStateCompat;)V
  :L2
    add-int/lit8 v0, v0, -1
    goto :L0
  :L3
  .line 4
    iget-object p1, p0, Landroid/support/v4/media/session/MediaSessionCompat$i;->j:Landroid/os/RemoteCallbackList;
    invoke-virtual { p1 }, Landroid/os/RemoteCallbackList;->finishBroadcast()V
    return-void
.end method

.method public a()V
  .registers 2
    const/4 v0, 0
  .line 1
    iput-boolean v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$i;->m:Z
    const/4 v0, 1
  .line 2
    iput-boolean v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$i;->l:Z
  .line 3
    invoke-virtual { p0 }, Landroid/support/v4/media/session/MediaSessionCompat$i;->x()Z
  .line 4
    invoke-direct { p0 }, Landroid/support/v4/media/session/MediaSessionCompat$i;->r()V
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
    if-ne p1, v0, :L0
    return-void
  :L0
  .line 2
    iput-boolean p1, p0, Landroid/support/v4/media/session/MediaSessionCompat$i;->m:Z
  .line 3
    invoke-virtual { p0 }, Landroid/support/v4/media/session/MediaSessionCompat$i;->x()Z
    move-result p1
    if-eqz p1, :L1
  .line 4
    iget-object p1, p0, Landroid/support/v4/media/session/MediaSessionCompat$i;->s:Landroid/support/v4/media/MediaMetadataCompat;
    invoke-virtual { p0, p1 }, Landroid/support/v4/media/session/MediaSessionCompat$i;->t(Landroid/support/v4/media/MediaMetadataCompat;)V
  .line 5
    iget-object p1, p0, Landroid/support/v4/media/session/MediaSessionCompat$i;->t:Landroid/support/v4/media/session/PlaybackStateCompat;
    invoke-virtual { p0, p1 }, Landroid/support/v4/media/session/MediaSessionCompat$i;->g(Landroid/support/v4/media/session/PlaybackStateCompat;)V
  :L1
    return-void
.end method

.method public d()Landroid/support/v4/media/session/MediaSessionCompat$Token;
  .registers 2
  .line 1
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$i;->d:Landroid/support/v4/media/session/MediaSessionCompat$Token;
    return-object v0
.end method

.method public e()Landroidx/media/a;
  .catchall { :L0 .. :L2 } :L1
  .registers 3
  .line 1
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$i;->i:Ljava/lang/Object;
    monitor-enter v0
  :L0
  .line 2
    iget-object v1, p0, Landroid/support/v4/media/session/MediaSessionCompat$i;->q:Landroidx/media/a;
    monitor-exit v0
    return-object v1
  :L1
    move-exception v1
  .line 3
    monitor-exit v0
  :L2
    throw v1
.end method

.method public f(Landroidx/media/a;)V
  .catchall { :L0 .. :L2 } :L1
  .registers 3
  .line 1
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$i;->i:Ljava/lang/Object;
    monitor-enter v0
  :L0
  .line 2
    iput-object p1, p0, Landroid/support/v4/media/session/MediaSessionCompat$i;->q:Landroidx/media/a;
  .line 3
    monitor-exit v0
    return-void
  :L1
    move-exception p1
    monitor-exit v0
  :L2
    throw p1
.end method

.method public g(Landroid/support/v4/media/session/PlaybackStateCompat;)V
  .catchall { :L0 .. :L1 } :L5
  .catchall { :L6 .. :L7 } :L5
  .registers 5
  .line 1
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$i;->i:Ljava/lang/Object;
    monitor-enter v0
  :L0
  .line 2
    iput-object p1, p0, Landroid/support/v4/media/session/MediaSessionCompat$i;->t:Landroid/support/v4/media/session/PlaybackStateCompat;
  .line 3
    monitor-exit v0
  :L1
  .line 4
    invoke-direct { p0, p1 }, Landroid/support/v4/media/session/MediaSessionCompat$i;->s(Landroid/support/v4/media/session/PlaybackStateCompat;)V
  .line 5
    iget-boolean v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$i;->m:Z
    if-nez v0, :L2
    return-void
  :L2
    if-nez p1, :L3
  .line 6
    iget-object p1, p0, Landroid/support/v4/media/session/MediaSessionCompat$i;->h:Landroid/media/RemoteControlClient;
    const/4 v0, 0
    invoke-virtual { p1, v0 }, Landroid/media/RemoteControlClient;->setPlaybackState(I)V
  .line 7
    iget-object p1, p0, Landroid/support/v4/media/session/MediaSessionCompat$i;->h:Landroid/media/RemoteControlClient;
    invoke-virtual { p1, v0 }, Landroid/media/RemoteControlClient;->setTransportControlFlags(I)V
    goto :L4
  :L3
  .line 8
    invoke-virtual { p0, p1 }, Landroid/support/v4/media/session/MediaSessionCompat$i;->u(Landroid/support/v4/media/session/PlaybackStateCompat;)V
  .line 9
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$i;->h:Landroid/media/RemoteControlClient;
  .line 10
    invoke-virtual { p1 }, Landroid/support/v4/media/session/PlaybackStateCompat;->k()J
    move-result-wide v1
    invoke-virtual { p0, v1, v2 }, Landroid/support/v4/media/session/MediaSessionCompat$i;->n(J)I
    move-result p1
  .line 11
    invoke-virtual { v0, p1 }, Landroid/media/RemoteControlClient;->setTransportControlFlags(I)V
  :L4
    return-void
  :L5
    move-exception p1
  :L6
  .line 12
    monitor-exit v0
  :L7
    throw p1
.end method

.method public h(Landroid/support/v4/media/session/MediaSessionCompat$c;Landroid/os/Handler;)V
  .catchall { :L1 .. :L4 } :L3
  .registers 5
  .line 1
    iput-object p1, p0, Landroid/support/v4/media/session/MediaSessionCompat$i;->p:Landroid/support/v4/media/session/MediaSessionCompat$c;
    if-eqz p1, :L5
    if-nez p2, :L0
  .line 2
    new-instance p2, Landroid/os/Handler;
    invoke-direct { p2 }, Landroid/os/Handler;-><init>()V
  :L0
  .line 3
    iget-object p1, p0, Landroid/support/v4/media/session/MediaSessionCompat$i;->i:Ljava/lang/Object;
    monitor-enter p1
  :L1
  .line 4
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$i;->k:Landroid/support/v4/media/session/MediaSessionCompat$i$c;
    if-eqz v0, :L2
  .line 5
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$i;->k:Landroid/support/v4/media/session/MediaSessionCompat$i$c;
    const/4 v1, 0
    invoke-virtual { v0, v1 }, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V
  :L2
  .line 6
    new-instance v0, Landroid/support/v4/media/session/MediaSessionCompat$i$c;
    invoke-virtual { p2 }, Landroid/os/Handler;->getLooper()Landroid/os/Looper;
    move-result-object v1
    invoke-direct { v0, p0, v1 }, Landroid/support/v4/media/session/MediaSessionCompat$i$c;-><init>(Landroid/support/v4/media/session/MediaSessionCompat$i;Landroid/os/Looper;)V
    iput-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$i;->k:Landroid/support/v4/media/session/MediaSessionCompat$i$c;
  .line 7
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$i;->p:Landroid/support/v4/media/session/MediaSessionCompat$c;
    invoke-virtual { v0, p0, p2 }, Landroid/support/v4/media/session/MediaSessionCompat$c;->C(Landroid/support/v4/media/session/MediaSessionCompat$d;Landroid/os/Handler;)V
  .line 8
    monitor-exit p1
    goto :L5
  :L3
    move-exception p2
    monitor-exit p1
  :L4
    throw p2
  :L5
    return-void
.end method

.method public i()Landroid/support/v4/media/session/PlaybackStateCompat;
  .catchall { :L0 .. :L2 } :L1
  .registers 3
  .line 1
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$i;->i:Ljava/lang/Object;
    monitor-enter v0
  :L0
  .line 2
    iget-object v1, p0, Landroid/support/v4/media/session/MediaSessionCompat$i;->t:Landroid/support/v4/media/session/PlaybackStateCompat;
    monitor-exit v0
    return-object v1
  :L1
    move-exception v1
  .line 3
    monitor-exit v0
  :L2
    throw v1
.end method

.method public j(I)V
  .catchall { :L0 .. :L1 } :L2
  .catchall { :L3 .. :L4 } :L2
  .registers 3
  .line 1
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$i;->i:Ljava/lang/Object;
    monitor-enter v0
  :L0
  .line 2
    iput p1, p0, Landroid/support/v4/media/session/MediaSessionCompat$i;->r:I
  .line 3
    monitor-exit v0
  :L1
  .line 4
    invoke-virtual { p0 }, Landroid/support/v4/media/session/MediaSessionCompat$i;->x()Z
    return-void
  :L2
    move-exception p1
  :L3
  .line 5
    monitor-exit v0
  :L4
    throw p1
.end method

.method k(II)V
  .registers 5
  .line 1
    iget v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$i;->C:I
    const/4 v1, 2
    if-ne v0, v1, :L0
  .line 2
    iget-object p2, p0, Landroid/support/v4/media/session/MediaSessionCompat$i;->E:Landroidx/media/e;
    if-eqz p2, :L1
  .line 3
    invoke-virtual { p2, p1 }, Landroidx/media/e;->b(I)V
    goto :L1
  :L0
  .line 4
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$i;->g:Landroid/media/AudioManager;
    iget v1, p0, Landroid/support/v4/media/session/MediaSessionCompat$i;->D:I
    invoke-virtual { v0, v1, p1, p2 }, Landroid/media/AudioManager;->adjustStreamVolume(III)V
  :L1
    return-void
.end method

.method l(Landroid/os/Bundle;)Landroid/media/RemoteControlClient$MetadataEditor;
  .registers 8
  .line 1
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$i;->h:Landroid/media/RemoteControlClient;
    const/4 v1, 1
    invoke-virtual { v0, v1 }, Landroid/media/RemoteControlClient;->editMetadata(Z)Landroid/media/RemoteControlClient$MetadataEditor;
    move-result-object v0
    if-nez p1, :L0
    return-object v0
  :L0
    const-string v2, "android.media.metadata.ART"
  .line 2
    invoke-virtual { p1, v2 }, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z
    move-result v3
    const/16 v4, 100
    const/4 v5, 0
    if-eqz v3, :L2
  .line 3
    invoke-virtual { p1, v2 }, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;
    move-result-object v2
    check-cast v2, Landroid/graphics/Bitmap;
    if-eqz v2, :L1
  .line 4
    invoke-virtual { v2 }, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;
    move-result-object v3
    invoke-virtual { v2, v3, v5 }, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;
    move-result-object v2
  :L1
  .line 5
    invoke-virtual { v0, v4, v2 }, Landroid/media/RemoteControlClient$MetadataEditor;->putBitmap(ILandroid/graphics/Bitmap;)Landroid/media/RemoteControlClient$MetadataEditor;
    goto :L4
  :L2
    const-string v2, "android.media.metadata.ALBUM_ART"
  .line 6
    invoke-virtual { p1, v2 }, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z
    move-result v3
    if-eqz v3, :L4
  .line 7
    invoke-virtual { p1, v2 }, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;
    move-result-object v2
    check-cast v2, Landroid/graphics/Bitmap;
    if-eqz v2, :L3
  .line 8
    invoke-virtual { v2 }, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;
    move-result-object v3
    invoke-virtual { v2, v3, v5 }, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;
    move-result-object v2
  :L3
  .line 9
    invoke-virtual { v0, v4, v2 }, Landroid/media/RemoteControlClient$MetadataEditor;->putBitmap(ILandroid/graphics/Bitmap;)Landroid/media/RemoteControlClient$MetadataEditor;
  :L4
    const-string v2, "android.media.metadata.ALBUM"
  .line 10
    invoke-virtual { p1, v2 }, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z
    move-result v3
    if-eqz v3, :L5
  .line 11
    invoke-virtual { p1, v2 }, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v2
  .line 12
    invoke-virtual { v0, v1, v2 }, Landroid/media/RemoteControlClient$MetadataEditor;->putString(ILjava/lang/String;)Landroid/media/RemoteControlClient$MetadataEditor;
  :L5
    const-string v1, "android.media.metadata.ALBUM_ARTIST"
  .line 13
    invoke-virtual { p1, v1 }, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z
    move-result v2
    if-eqz v2, :L6
    const/16 v2, 13
  .line 14
    invoke-virtual { p1, v1 }, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v1
  .line 15
    invoke-virtual { v0, v2, v1 }, Landroid/media/RemoteControlClient$MetadataEditor;->putString(ILjava/lang/String;)Landroid/media/RemoteControlClient$MetadataEditor;
  :L6
    const-string v1, "android.media.metadata.ARTIST"
  .line 16
    invoke-virtual { p1, v1 }, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z
    move-result v2
    if-eqz v2, :L7
    const/4 v2, 2
  .line 17
    invoke-virtual { p1, v1 }, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v1
  .line 18
    invoke-virtual { v0, v2, v1 }, Landroid/media/RemoteControlClient$MetadataEditor;->putString(ILjava/lang/String;)Landroid/media/RemoteControlClient$MetadataEditor;
  :L7
    const-string v1, "android.media.metadata.AUTHOR"
  .line 19
    invoke-virtual { p1, v1 }, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z
    move-result v2
    if-eqz v2, :L8
    const/4 v2, 3
  .line 20
    invoke-virtual { p1, v1 }, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v1
  .line 21
    invoke-virtual { v0, v2, v1 }, Landroid/media/RemoteControlClient$MetadataEditor;->putString(ILjava/lang/String;)Landroid/media/RemoteControlClient$MetadataEditor;
  :L8
    const-string v1, "android.media.metadata.COMPILATION"
  .line 22
    invoke-virtual { p1, v1 }, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z
    move-result v2
    if-eqz v2, :L9
    const/16 v2, 15
  .line 23
    invoke-virtual { p1, v1 }, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v1
  .line 24
    invoke-virtual { v0, v2, v1 }, Landroid/media/RemoteControlClient$MetadataEditor;->putString(ILjava/lang/String;)Landroid/media/RemoteControlClient$MetadataEditor;
  :L9
    const-string v1, "android.media.metadata.COMPOSER"
  .line 25
    invoke-virtual { p1, v1 }, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z
    move-result v2
    if-eqz v2, :L10
    const/4 v2, 4
  .line 26
    invoke-virtual { p1, v1 }, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v1
  .line 27
    invoke-virtual { v0, v2, v1 }, Landroid/media/RemoteControlClient$MetadataEditor;->putString(ILjava/lang/String;)Landroid/media/RemoteControlClient$MetadataEditor;
  :L10
    const-string v1, "android.media.metadata.DATE"
  .line 28
    invoke-virtual { p1, v1 }, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z
    move-result v2
    if-eqz v2, :L11
    const/4 v2, 5
  .line 29
    invoke-virtual { p1, v1 }, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v1
  .line 30
    invoke-virtual { v0, v2, v1 }, Landroid/media/RemoteControlClient$MetadataEditor;->putString(ILjava/lang/String;)Landroid/media/RemoteControlClient$MetadataEditor;
  :L11
    const-string v1, "android.media.metadata.DISC_NUMBER"
  .line 31
    invoke-virtual { p1, v1 }, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z
    move-result v2
    if-eqz v2, :L12
    const/16 v2, 14
  .line 32
    invoke-virtual { p1, v1 }, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J
    move-result-wide v3
  .line 33
    invoke-virtual { v0, v2, v3, v4 }, Landroid/media/RemoteControlClient$MetadataEditor;->putLong(IJ)Landroid/media/RemoteControlClient$MetadataEditor;
  :L12
    const-string v1, "android.media.metadata.DURATION"
  .line 34
    invoke-virtual { p1, v1 }, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z
    move-result v2
    if-eqz v2, :L13
    const/16 v2, 9
  .line 35
    invoke-virtual { p1, v1 }, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J
    move-result-wide v3
  .line 36
    invoke-virtual { v0, v2, v3, v4 }, Landroid/media/RemoteControlClient$MetadataEditor;->putLong(IJ)Landroid/media/RemoteControlClient$MetadataEditor;
  :L13
    const-string v1, "android.media.metadata.GENRE"
  .line 37
    invoke-virtual { p1, v1 }, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z
    move-result v2
    if-eqz v2, :L14
    const/4 v2, 6
  .line 38
    invoke-virtual { p1, v1 }, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v1
  .line 39
    invoke-virtual { v0, v2, v1 }, Landroid/media/RemoteControlClient$MetadataEditor;->putString(ILjava/lang/String;)Landroid/media/RemoteControlClient$MetadataEditor;
  :L14
    const-string v1, "android.media.metadata.TITLE"
  .line 40
    invoke-virtual { p1, v1 }, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z
    move-result v2
    if-eqz v2, :L15
    const/4 v2, 7
  .line 41
    invoke-virtual { p1, v1 }, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v1
  .line 42
    invoke-virtual { v0, v2, v1 }, Landroid/media/RemoteControlClient$MetadataEditor;->putString(ILjava/lang/String;)Landroid/media/RemoteControlClient$MetadataEditor;
  :L15
    const-string v1, "android.media.metadata.TRACK_NUMBER"
  .line 43
    invoke-virtual { p1, v1 }, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z
    move-result v2
    if-eqz v2, :L16
  .line 44
    invoke-virtual { p1, v1 }, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J
    move-result-wide v1
  .line 45
    invoke-virtual { v0, v5, v1, v2 }, Landroid/media/RemoteControlClient$MetadataEditor;->putLong(IJ)Landroid/media/RemoteControlClient$MetadataEditor;
  :L16
    const-string v1, "android.media.metadata.WRITER"
  .line 46
    invoke-virtual { p1, v1 }, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z
    move-result v2
    if-eqz v2, :L17
    const/16 v2, 11
  .line 47
    invoke-virtual { p1, v1 }, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
    move-result-object p1
  .line 48
    invoke-virtual { v0, v2, p1 }, Landroid/media/RemoteControlClient$MetadataEditor;->putString(ILjava/lang/String;)Landroid/media/RemoteControlClient$MetadataEditor;
  :L17
    return-object v0
.end method

.method m(I)I
  .registers 2
    packed-switch p1, :L10
    const/4 p1, -1
    return p1
  :L0
    const/4 p1, 6
    return p1
  :L1
    const/4 p1, 7
    return p1
  :L2
    const/16 p1, 9
    return p1
  :L3
    const/16 p1, 8
    return p1
  :L4
    const/4 p1, 5
    return p1
  :L5
    const/4 p1, 4
    return p1
  :L6
    const/4 p1, 3
    return p1
  :L7
    const/4 p1, 2
    return p1
  :L8
    const/4 p1, 1
    return p1
  :L9
    const/4 p1, 0
    return p1
  :L10
  .packed-switch 0
    :L9
    :L8
    :L7
    :L6
    :L5
    :L4
    :L3
    :L2
    :L3
    :L1
    :L0
    :L0
  .end packed-switch
.end method

.method n(J)I
  .registers 9
    const-wide/16 v0, 1
    and-long/2addr v0, p1
    const-wide/16 v2, 0
    cmp-long v4, v0, v2
    if-eqz v4, :L0
    const/16 v0, 32
    goto :L1
  :L0
    const/4 v0, 0
  :L1
    const-wide/16 v4, 2
    and-long/2addr v4, p1
    cmp-long v1, v4, v2
    if-eqz v1, :L2
    or-int/lit8 v0, v0, 16
  :L2
    const-wide/16 v4, 4
    and-long/2addr v4, p1
    cmp-long v1, v4, v2
    if-eqz v1, :L3
    or-int/lit8 v0, v0, 4
  :L3
    const-wide/16 v4, 8
    and-long/2addr v4, p1
    cmp-long v1, v4, v2
    if-eqz v1, :L4
    or-int/lit8 v0, v0, 2
  :L4
    const-wide/16 v4, 16
    and-long/2addr v4, p1
    cmp-long v1, v4, v2
    if-eqz v1, :L5
    or-int/lit8 v0, v0, 1
  :L5
    const-wide/16 v4, 32
    and-long/2addr v4, p1
    cmp-long v1, v4, v2
    if-eqz v1, :L6
    or-int/lit16 v0, v0, 128
  :L6
    const-wide/16 v4, 64
    and-long/2addr v4, p1
    cmp-long v1, v4, v2
    if-eqz v1, :L7
    or-int/lit8 v0, v0, 64
  :L7
    const-wide/16 v4, 512
    and-long/2addr p1, v4
    cmp-long v1, p1, v2
    if-eqz v1, :L8
    or-int/lit8 v0, v0, 8
  :L8
    return v0
.end method

.method o(IIILjava/lang/Object;Landroid/os/Bundle;)V
  .catchall { :L0 .. :L4 } :L3
  .registers 8
  .line 1
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$i;->i:Ljava/lang/Object;
    monitor-enter v0
  :L0
  .line 2
    iget-object v1, p0, Landroid/support/v4/media/session/MediaSessionCompat$i;->k:Landroid/support/v4/media/session/MediaSessionCompat$i$c;
    if-eqz v1, :L2
  .line 3
    iget-object v1, p0, Landroid/support/v4/media/session/MediaSessionCompat$i;->k:Landroid/support/v4/media/session/MediaSessionCompat$i$c;
    invoke-virtual { v1, p1, p2, p3, p4 }, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;
    move-result-object p1
  .line 4
    new-instance p2, Landroid/os/Bundle;
    invoke-direct { p2 }, Landroid/os/Bundle;-><init>()V
    const-string p3, "data_calling_pkg"
    const-string p4, "android.media.session.MediaController"
  .line 5
    invoke-virtual { p2, p3, p4 }, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    const-string p3, "data_calling_pid"
  .line 6
    invoke-static { }, Landroid/os/Binder;->getCallingPid()I
    move-result p4
    invoke-virtual { p2, p3, p4 }, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    const-string p3, "data_calling_uid"
  .line 7
    invoke-static { }, Landroid/os/Binder;->getCallingUid()I
    move-result p4
    invoke-virtual { p2, p3, p4 }, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    if-eqz p5, :L1
    const-string p3, "data_extras"
  .line 8
    invoke-virtual { p2, p3, p5 }, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V
  :L1
  .line 9
    invoke-virtual { p1, p2 }, Landroid/os/Message;->setData(Landroid/os/Bundle;)V
  .line 10
    invoke-virtual { p1 }, Landroid/os/Message;->sendToTarget()V
  :L2
  .line 11
    monitor-exit v0
    return-void
  :L3
    move-exception p1
    monitor-exit v0
  :L4
    throw p1
.end method

.method p(Landroid/app/PendingIntent;Landroid/content/ComponentName;)V
  .registers 3
  .line 1
    iget-object p1, p0, Landroid/support/v4/media/session/MediaSessionCompat$i;->g:Landroid/media/AudioManager;
    invoke-virtual { p1, p2 }, Landroid/media/AudioManager;->registerMediaButtonEventReceiver(Landroid/content/ComponentName;)V
    return-void
.end method

.method public t(Landroid/support/v4/media/MediaMetadataCompat;)V
  .catchall { :L1 .. :L2 } :L6
  .catchall { :L7 .. :L8 } :L6
  .registers 4
    if-eqz p1, :L0
  .line 1
    new-instance v0, Landroid/support/v4/media/MediaMetadataCompat$b;
    sget v1, Landroid/support/v4/media/session/MediaSessionCompat;->c:I
    invoke-direct { v0, p1, v1 }, Landroid/support/v4/media/MediaMetadataCompat$b;-><init>(Landroid/support/v4/media/MediaMetadataCompat;I)V
    invoke-virtual { v0 }, Landroid/support/v4/media/MediaMetadataCompat$b;->a()Landroid/support/v4/media/MediaMetadataCompat;
    move-result-object p1
  :L0
  .line 2
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$i;->i:Ljava/lang/Object;
    monitor-enter v0
  :L1
  .line 3
    iput-object p1, p0, Landroid/support/v4/media/session/MediaSessionCompat$i;->s:Landroid/support/v4/media/MediaMetadataCompat;
  .line 4
    monitor-exit v0
  :L2
  .line 5
    invoke-direct { p0, p1 }, Landroid/support/v4/media/session/MediaSessionCompat$i;->q(Landroid/support/v4/media/MediaMetadataCompat;)V
  .line 6
    iget-boolean v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$i;->m:Z
    if-nez v0, :L3
    return-void
  :L3
    if-nez p1, :L4
    const/4 p1, 0
    goto :L5
  :L4
  .line 7
    invoke-virtual { p1 }, Landroid/support/v4/media/MediaMetadataCompat;->l()Landroid/os/Bundle;
    move-result-object p1
  :L5
  .line 8
    invoke-virtual { p0, p1 }, Landroid/support/v4/media/session/MediaSessionCompat$i;->l(Landroid/os/Bundle;)Landroid/media/RemoteControlClient$MetadataEditor;
    move-result-object p1
  .line 9
    invoke-virtual { p1 }, Landroid/media/RemoteControlClient$MetadataEditor;->apply()V
    return-void
  :L6
    move-exception p1
  :L7
  .line 10
    monitor-exit v0
  :L8
    throw p1
.end method

.method u(Landroid/support/v4/media/session/PlaybackStateCompat;)V
  .registers 3
  .line 1
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$i;->h:Landroid/media/RemoteControlClient;
    invoke-virtual { p1 }, Landroid/support/v4/media/session/PlaybackStateCompat;->p()I
    move-result p1
    invoke-virtual { p0, p1 }, Landroid/support/v4/media/session/MediaSessionCompat$i;->m(I)I
    move-result p1
    invoke-virtual { v0, p1 }, Landroid/media/RemoteControlClient;->setPlaybackState(I)V
    return-void
.end method

.method v(II)V
  .registers 5
  .line 1
    iget v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$i;->C:I
    const/4 v1, 2
    if-ne v0, v1, :L0
  .line 2
    iget-object p2, p0, Landroid/support/v4/media/session/MediaSessionCompat$i;->E:Landroidx/media/e;
    if-eqz p2, :L1
  .line 3
    invoke-virtual { p2, p1 }, Landroidx/media/e;->c(I)V
    goto :L1
  :L0
  .line 4
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$i;->g:Landroid/media/AudioManager;
    iget v1, p0, Landroid/support/v4/media/session/MediaSessionCompat$i;->D:I
    invoke-virtual { v0, v1, p1, p2 }, Landroid/media/AudioManager;->setStreamVolume(III)V
  :L1
    return-void
.end method

.method w(Landroid/app/PendingIntent;Landroid/content/ComponentName;)V
  .registers 3
  .line 1
    iget-object p1, p0, Landroid/support/v4/media/session/MediaSessionCompat$i;->g:Landroid/media/AudioManager;
    invoke-virtual { p1, p2 }, Landroid/media/AudioManager;->unregisterMediaButtonEventReceiver(Landroid/content/ComponentName;)V
    return-void
.end method

.method x()Z
  .registers 5
  .line 1
    iget-boolean v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$i;->m:Z
    const/4 v1, 1
    const/4 v2, 0
    if-eqz v0, :L3
  .line 2
    iget-boolean v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$i;->n:Z
    if-nez v0, :L0
    iget v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$i;->r:I
    and-int/2addr v0, v1
    if-eqz v0, :L0
  .line 3
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$i;->b:Landroid/app/PendingIntent;
    iget-object v3, p0, Landroid/support/v4/media/session/MediaSessionCompat$i;->a:Landroid/content/ComponentName;
    invoke-virtual { p0, v0, v3 }, Landroid/support/v4/media/session/MediaSessionCompat$i;->p(Landroid/app/PendingIntent;Landroid/content/ComponentName;)V
  .line 4
    iput-boolean v1, p0, Landroid/support/v4/media/session/MediaSessionCompat$i;->n:Z
    goto :L1
  :L0
  .line 5
    iget-boolean v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$i;->n:Z
    if-eqz v0, :L1
    iget v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$i;->r:I
    and-int/2addr v0, v1
    if-nez v0, :L1
  .line 6
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$i;->b:Landroid/app/PendingIntent;
    iget-object v3, p0, Landroid/support/v4/media/session/MediaSessionCompat$i;->a:Landroid/content/ComponentName;
    invoke-virtual { p0, v0, v3 }, Landroid/support/v4/media/session/MediaSessionCompat$i;->w(Landroid/app/PendingIntent;Landroid/content/ComponentName;)V
  .line 7
    iput-boolean v2, p0, Landroid/support/v4/media/session/MediaSessionCompat$i;->n:Z
  :L1
  .line 8
    iget-boolean v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$i;->o:Z
    if-nez v0, :L2
    iget v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$i;->r:I
    and-int/lit8 v0, v0, 2
    if-eqz v0, :L2
  .line 9
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$i;->g:Landroid/media/AudioManager;
    iget-object v2, p0, Landroid/support/v4/media/session/MediaSessionCompat$i;->h:Landroid/media/RemoteControlClient;
    invoke-virtual { v0, v2 }, Landroid/media/AudioManager;->registerRemoteControlClient(Landroid/media/RemoteControlClient;)V
  .line 10
    iput-boolean v1, p0, Landroid/support/v4/media/session/MediaSessionCompat$i;->o:Z
    goto :L6
  :L2
  .line 11
    iget-boolean v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$i;->o:Z
    if-eqz v0, :L5
    iget v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$i;->r:I
    and-int/lit8 v0, v0, 2
    if-nez v0, :L5
  .line 12
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$i;->h:Landroid/media/RemoteControlClient;
    invoke-virtual { v0, v2 }, Landroid/media/RemoteControlClient;->setPlaybackState(I)V
  .line 13
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$i;->g:Landroid/media/AudioManager;
    iget-object v1, p0, Landroid/support/v4/media/session/MediaSessionCompat$i;->h:Landroid/media/RemoteControlClient;
    invoke-virtual { v0, v1 }, Landroid/media/AudioManager;->unregisterRemoteControlClient(Landroid/media/RemoteControlClient;)V
  .line 14
    iput-boolean v2, p0, Landroid/support/v4/media/session/MediaSessionCompat$i;->o:Z
    goto :L5
  :L3
  .line 15
    iget-boolean v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$i;->n:Z
    if-eqz v0, :L4
  .line 16
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$i;->b:Landroid/app/PendingIntent;
    iget-object v1, p0, Landroid/support/v4/media/session/MediaSessionCompat$i;->a:Landroid/content/ComponentName;
    invoke-virtual { p0, v0, v1 }, Landroid/support/v4/media/session/MediaSessionCompat$i;->w(Landroid/app/PendingIntent;Landroid/content/ComponentName;)V
  .line 17
    iput-boolean v2, p0, Landroid/support/v4/media/session/MediaSessionCompat$i;->n:Z
  :L4
  .line 18
    iget-boolean v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$i;->o:Z
    if-eqz v0, :L5
  .line 19
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$i;->h:Landroid/media/RemoteControlClient;
    invoke-virtual { v0, v2 }, Landroid/media/RemoteControlClient;->setPlaybackState(I)V
  .line 20
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$i;->g:Landroid/media/AudioManager;
    iget-object v1, p0, Landroid/support/v4/media/session/MediaSessionCompat$i;->h:Landroid/media/RemoteControlClient;
    invoke-virtual { v0, v1 }, Landroid/media/AudioManager;->unregisterRemoteControlClient(Landroid/media/RemoteControlClient;)V
  .line 21
    iput-boolean v2, p0, Landroid/support/v4/media/session/MediaSessionCompat$i;->o:Z
  :L5
    const/4 v1, 0
  :L6
    return v1
.end method
