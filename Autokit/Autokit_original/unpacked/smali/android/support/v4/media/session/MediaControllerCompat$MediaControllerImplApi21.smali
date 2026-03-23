.class Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21;
.super Ljava/lang/Object;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Landroid/support/v4/media/session/MediaControllerCompat;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 8
  name = "MediaControllerImplApi21"
.end annotation
.annotation system Ldalvik/annotation/MemberClasses;
  value = {
    Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21$a;,
    Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21$ExtraBinderRequestResultReceiver;
  }
.end annotation

.field protected final a:Ljava/lang/Object;

.field final b:Ljava/lang/Object;

.field private final c:Ljava/util/List;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "Ljava/util/List<",
      "Landroid/support/v4/media/session/MediaControllerCompat$a;",
      ">;"
    }
  .end annotation
.end field

.field private d:Ljava/util/HashMap;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "Ljava/util/HashMap<",
      "Landroid/support/v4/media/session/MediaControllerCompat$a;",
      "Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21$a;",
      ">;"
    }
  .end annotation
.end field

.field final e:Landroid/support/v4/media/session/MediaSessionCompat$Token;

.method public constructor <init>(Landroid/content/Context;Landroid/support/v4/media/session/MediaSessionCompat$Token;)V
  .registers 4
  .line 1
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
  .line 2
    new-instance v0, Ljava/lang/Object;
    invoke-direct { v0 }, Ljava/lang/Object;-><init>()V
    iput-object v0, p0, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21;->b:Ljava/lang/Object;
  .line 3
    new-instance v0, Ljava/util/ArrayList;
    invoke-direct { v0 }, Ljava/util/ArrayList;-><init>()V
    iput-object v0, p0, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21;->c:Ljava/util/List;
  .line 4
    new-instance v0, Ljava/util/HashMap;
    invoke-direct { v0 }, Ljava/util/HashMap;-><init>()V
    iput-object v0, p0, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21;->d:Ljava/util/HashMap;
  .line 5
    iput-object p2, p0, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21;->e:Landroid/support/v4/media/session/MediaSessionCompat$Token;
  .line 6
    invoke-virtual { p2 }, Landroid/support/v4/media/session/MediaSessionCompat$Token;->l()Ljava/lang/Object;
    move-result-object p2
  .line 7
    invoke-static { p1, p2 }, Landroid/support/v4/media/session/c;->b(Landroid/content/Context;Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object p1
    iput-object p1, p0, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21;->a:Ljava/lang/Object;
    if-eqz p1, :L1
  .line 8
    iget-object p1, p0, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21;->e:Landroid/support/v4/media/session/MediaSessionCompat$Token;
    invoke-virtual { p1 }, Landroid/support/v4/media/session/MediaSessionCompat$Token;->j()Landroid/support/v4/media/session/b;
    move-result-object p1
    if-nez p1, :L0
  .line 9
    invoke-direct { p0 }, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21;->b()V
  :L0
    return-void
  :L1
  .line 10
    new-instance p1, Landroid/os/RemoteException;
    invoke-direct { p1 }, Landroid/os/RemoteException;-><init>()V
    throw p1
.end method

.method private b()V
  .registers 4
  .line 1
    new-instance v0, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21$ExtraBinderRequestResultReceiver;
    invoke-direct { v0, p0 }, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21$ExtraBinderRequestResultReceiver;-><init>(Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21;)V
    const-string v1, "android.support.v4.media.session.command.GET_EXTRA_BINDER"
    const/4 v2, 0
    invoke-virtual { p0, v1, v2, v0 }, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21;->c(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V
    return-void
.end method

.method a()V
  .catch Landroid/os/RemoteException; { :L2 .. :L3 } :L4
  .registers 5
  .line 1
    iget-object v0, p0, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21;->e:Landroid/support/v4/media/session/MediaSessionCompat$Token;
    invoke-virtual { v0 }, Landroid/support/v4/media/session/MediaSessionCompat$Token;->j()Landroid/support/v4/media/session/b;
    move-result-object v0
    if-nez v0, :L0
    return-void
  :L0
  .line 2
    iget-object v0, p0, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21;->c:Ljava/util/List;
    invoke-interface { v0 }, Ljava/util/List;->iterator()Ljava/util/Iterator;
    move-result-object v0
  :L1
    invoke-interface { v0 }, Ljava/util/Iterator;->hasNext()Z
    move-result v1
    if-eqz v1, :L4
    invoke-interface { v0 }, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object v1
    check-cast v1, Landroid/support/v4/media/session/MediaControllerCompat$a;
  .line 3
    new-instance v2, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21$a;
    invoke-direct { v2, v1 }, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21$a;-><init>(Landroid/support/v4/media/session/MediaControllerCompat$a;)V
  .line 4
    iget-object v3, p0, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21;->d:Ljava/util/HashMap;
    invoke-virtual { v3, v1, v2 }, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
  .line 5
    iput-object v2, v1, Landroid/support/v4/media/session/MediaControllerCompat$a;->c:Landroid/support/v4/media/session/a;
  :L2
  .line 6
    iget-object v3, p0, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21;->e:Landroid/support/v4/media/session/MediaSessionCompat$Token;
    invoke-virtual { v3 }, Landroid/support/v4/media/session/MediaSessionCompat$Token;->j()Landroid/support/v4/media/session/b;
    move-result-object v3
    invoke-interface { v3, v2 }, Landroid/support/v4/media/session/b;->F(Landroid/support/v4/media/session/a;)V
  :L3
    const/16 v2, 13
    const/4 v3, 0
  .line 7
    invoke-virtual { v1, v2, v3, v3 }, Landroid/support/v4/media/session/MediaControllerCompat$a;->i(ILjava/lang/Object;Landroid/os/Bundle;)V
    goto :L1
  :L4
  .line 8
    iget-object v0, p0, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21;->c:Ljava/util/List;
    invoke-interface { v0 }, Ljava/util/List;->clear()V
    return-void
.end method

.method public c(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V
  .registers 5
  .line 1
    iget-object v0, p0, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21;->a:Ljava/lang/Object;
    invoke-static { v0, p1, p2, p3 }, Landroid/support/v4/media/session/c;->c(Ljava/lang/Object;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V
    return-void
.end method
