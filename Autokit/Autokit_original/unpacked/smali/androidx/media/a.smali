.class public final Landroidx/media/a;
.super Ljava/lang/Object;
.source "SourceFile"

.field a:Landroidx/media/b;

.method public constructor <init>(Landroid/media/session/MediaSessionManager$RemoteUserInfo;)V
  .registers 3
  .line 5
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
  .line 6
    new-instance v0, Landroidx/media/c;
    invoke-direct { v0, p1 }, Landroidx/media/c;-><init>(Landroid/media/session/MediaSessionManager$RemoteUserInfo;)V
    iput-object v0, p0, Landroidx/media/a;->a:Landroidx/media/b;
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
  .registers 6
  .line 1
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
  .line 2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v1, 28
    if-lt v0, v1, :L0
  .line 3
    new-instance v0, Landroidx/media/c;
    invoke-direct { v0, p1, p2, p3 }, Landroidx/media/c;-><init>(Ljava/lang/String;II)V
    iput-object v0, p0, Landroidx/media/a;->a:Landroidx/media/b;
    goto :L1
  :L0
  .line 4
    new-instance v0, Landroidx/media/d;
    invoke-direct { v0, p1, p2, p3 }, Landroidx/media/d;-><init>(Ljava/lang/String;II)V
    iput-object v0, p0, Landroidx/media/a;->a:Landroidx/media/b;
  :L1
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
  .registers 3
    if-ne p0, p1, :L0
    const/4 p1, 1
    return p1
  :L0
  .line 1
    instance-of v0, p1, Landroidx/media/a;
    if-nez v0, :L1
    const/4 p1, 0
    return p1
  :L1
  .line 2
    iget-object v0, p0, Landroidx/media/a;->a:Landroidx/media/b;
    check-cast p1, Landroidx/media/a;
    iget-object p1, p1, Landroidx/media/a;->a:Landroidx/media/b;
    invoke-virtual { v0, p1 }, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    move-result p1
    return p1
.end method

.method public hashCode()I
  .registers 2
  .line 1
    iget-object v0, p0, Landroidx/media/a;->a:Landroidx/media/b;
    invoke-virtual { v0 }, Ljava/lang/Object;->hashCode()I
    move-result v0
    return v0
.end method
