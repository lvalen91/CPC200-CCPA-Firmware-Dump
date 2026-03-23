.class final Landroidx/media/c;
.super Ljava/lang/Object;
.implements Landroidx/media/b;
.source "SourceFile"

.field final a:Landroid/media/session/MediaSessionManager$RemoteUserInfo;

.method constructor <init>(Landroid/media/session/MediaSessionManager$RemoteUserInfo;)V
  .registers 2
  .line 3
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
  .line 4
    iput-object p1, p0, Landroidx/media/c;->a:Landroid/media/session/MediaSessionManager$RemoteUserInfo;
    return-void
.end method

.method constructor <init>(Ljava/lang/String;II)V
  .registers 5
  .line 1
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
  .line 2
    new-instance v0, Landroid/media/session/MediaSessionManager$RemoteUserInfo;
    invoke-direct { v0, p1, p2, p3 }, Landroid/media/session/MediaSessionManager$RemoteUserInfo;-><init>(Ljava/lang/String;II)V
    iput-object v0, p0, Landroidx/media/c;->a:Landroid/media/session/MediaSessionManager$RemoteUserInfo;
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
  .registers 3
    if-ne p0, p1, :L0
    const/4 p1, 1
    return p1
  :L0
  .line 1
    instance-of v0, p1, Landroidx/media/c;
    if-nez v0, :L1
    const/4 p1, 0
    return p1
  :L1
  .line 2
    check-cast p1, Landroidx/media/c;
  .line 3
    iget-object v0, p0, Landroidx/media/c;->a:Landroid/media/session/MediaSessionManager$RemoteUserInfo;
    iget-object p1, p1, Landroidx/media/c;->a:Landroid/media/session/MediaSessionManager$RemoteUserInfo;
    invoke-virtual { v0, p1 }, Landroid/media/session/MediaSessionManager$RemoteUserInfo;->equals(Ljava/lang/Object;)Z
    move-result p1
    return p1
.end method

.method public hashCode()I
  .registers 4
    const/4 v0, 1
    new-array v0, v0, [Ljava/lang/Object;
  .line 1
    iget-object v1, p0, Landroidx/media/c;->a:Landroid/media/session/MediaSessionManager$RemoteUserInfo;
    const/4 v2, 0
    aput-object v1, v0, v2
    invoke-static { v0 }, Lc/g/j/c;->b([Ljava/lang/Object;)I
    move-result v0
    return v0
.end method
