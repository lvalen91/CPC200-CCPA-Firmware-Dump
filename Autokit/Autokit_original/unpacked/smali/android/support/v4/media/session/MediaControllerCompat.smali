.class public final Landroid/support/v4/media/session/MediaControllerCompat;
.super Ljava/lang/Object;
.source "SourceFile"

.annotation system Ldalvik/annotation/MemberClasses;
  value = {
    Landroid/support/v4/media/session/MediaControllerCompat$c;,
    Landroid/support/v4/media/session/MediaControllerCompat$b;,
    Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21;,
    Landroid/support/v4/media/session/MediaControllerCompat$d;,
    Landroid/support/v4/media/session/MediaControllerCompat$e;,
    Landroid/support/v4/media/session/MediaControllerCompat$a;
  }
.end annotation

.field private final a:Landroid/support/v4/media/session/MediaSessionCompat$Token;

.method public constructor <init>(Landroid/content/Context;Landroid/support/v4/media/session/MediaSessionCompat;)V
  .catch Landroid/os/RemoteException; { :L0 .. :L4 } :L4
  .registers 5
  .line 1
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
  .line 2
    new-instance v0, Ljava/util/HashSet;
    invoke-direct { v0 }, Ljava/util/HashSet;-><init>()V
    if-eqz p2, :L5
  .line 3
    invoke-virtual { p2 }, Landroid/support/v4/media/session/MediaSessionCompat;->b()Landroid/support/v4/media/session/MediaSessionCompat$Token;
    move-result-object p2
    iput-object p2, p0, Landroid/support/v4/media/session/MediaControllerCompat;->a:Landroid/support/v4/media/session/MediaSessionCompat$Token;
  :L0
  .line 4
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v1, 24
    if-lt v0, v1, :L1
  .line 5
    new-instance v0, Landroid/support/v4/media/session/MediaControllerCompat$c;
    invoke-direct { v0, p1, p2 }, Landroid/support/v4/media/session/MediaControllerCompat$c;-><init>(Landroid/content/Context;Landroid/support/v4/media/session/MediaSessionCompat$Token;)V
    goto :L4
  :L1
  .line 6
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v1, 23
    if-lt v0, v1, :L2
  .line 7
    new-instance v0, Landroid/support/v4/media/session/MediaControllerCompat$b;
    invoke-direct { v0, p1, p2 }, Landroid/support/v4/media/session/MediaControllerCompat$b;-><init>(Landroid/content/Context;Landroid/support/v4/media/session/MediaSessionCompat$Token;)V
    goto :L4
  :L2
  .line 8
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v1, 21
    if-lt v0, v1, :L3
  .line 9
    new-instance v0, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21;
    invoke-direct { v0, p1, p2 }, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21;-><init>(Landroid/content/Context;Landroid/support/v4/media/session/MediaSessionCompat$Token;)V
    goto :L4
  :L3
  .line 10
    new-instance p1, Landroid/support/v4/media/session/MediaControllerCompat$d;
    invoke-direct { p1, p2 }, Landroid/support/v4/media/session/MediaControllerCompat$d;-><init>(Landroid/support/v4/media/session/MediaSessionCompat$Token;)V
  :L4
    return-void
  :L5
  .line 11
    new-instance p1, Ljava/lang/IllegalArgumentException;
    const-string p2, "session must not be null"
    invoke-direct { p1, p2 }, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
    throw p1
.end method
