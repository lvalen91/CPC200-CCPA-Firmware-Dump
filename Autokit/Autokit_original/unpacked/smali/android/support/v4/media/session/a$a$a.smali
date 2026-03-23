.class Landroid/support/v4/media/session/a$a$a;
.super Ljava/lang/Object;
.implements Landroid/support/v4/media/session/a;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Landroid/support/v4/media/session/a$a;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 10
  name = "a"
.end annotation

.field private a:Landroid/os/IBinder;

.method constructor <init>(Landroid/os/IBinder;)V
  .registers 2
  .line 1
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
  .line 2
    iput-object p1, p0, Landroid/support/v4/media/session/a$a$a;->a:Landroid/os/IBinder;
    return-void
.end method

.method public B0(I)V
  .catchall { :L0 .. :L1 } :L2
  .registers 6
  .line 1
    invoke-static { }, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
    move-result-object v0
  :L0
    const-string v1, "android.support.v4.media.session.IMediaControllerCallback"
  .line 2
    invoke-virtual { v0, v1 }, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
  .line 3
    invoke-virtual { v0, p1 }, Landroid/os/Parcel;->writeInt(I)V
  .line 4
    iget-object p1, p0, Landroid/support/v4/media/session/a$a$a;->a:Landroid/os/IBinder;
    const/16 v1, 12
    const/4 v2, 0
    const/4 v3, 1
    invoke-interface { p1, v1, v0, v2, v3 }, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
  :L1
  .line 5
    invoke-virtual { v0 }, Landroid/os/Parcel;->recycle()V
    return-void
  :L2
    move-exception p1
    invoke-virtual { v0 }, Landroid/os/Parcel;->recycle()V
    throw p1
.end method

.method public C0()V
  .catchall { :L0 .. :L1 } :L2
  .registers 6
  .line 1
    invoke-static { }, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
    move-result-object v0
  :L0
    const-string v1, "android.support.v4.media.session.IMediaControllerCallback"
  .line 2
    invoke-virtual { v0, v1 }, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
  .line 3
    iget-object v1, p0, Landroid/support/v4/media/session/a$a$a;->a:Landroid/os/IBinder;
    const/16 v2, 13
    const/4 v3, 0
    const/4 v4, 1
    invoke-interface { v1, v2, v0, v3, v4 }, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
  :L1
  .line 4
    invoke-virtual { v0 }, Landroid/os/Parcel;->recycle()V
    return-void
  :L2
    move-exception v1
    invoke-virtual { v0 }, Landroid/os/Parcel;->recycle()V
    throw v1
.end method

.method public G0(Landroid/support/v4/media/session/PlaybackStateCompat;)V
  .catchall { :L0 .. :L3 } :L4
  .registers 6
  .line 1
    invoke-static { }, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
    move-result-object v0
  :L0
    const-string v1, "android.support.v4.media.session.IMediaControllerCallback"
  .line 2
    invoke-virtual { v0, v1 }, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
    const/4 v1, 1
    const/4 v2, 0
    if-eqz p1, :L1
  .line 3
    invoke-virtual { v0, v1 }, Landroid/os/Parcel;->writeInt(I)V
  .line 4
    invoke-virtual { p1, v0, v2 }, Landroid/support/v4/media/session/PlaybackStateCompat;->writeToParcel(Landroid/os/Parcel;I)V
    goto :L2
  :L1
  .line 5
    invoke-virtual { v0, v2 }, Landroid/os/Parcel;->writeInt(I)V
  :L2
  .line 6
    iget-object p1, p0, Landroid/support/v4/media/session/a$a$a;->a:Landroid/os/IBinder;
    const/4 v2, 3
    const/4 v3, 0
    invoke-interface { p1, v2, v0, v3, v1 }, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
  :L3
  .line 7
    invoke-virtual { v0 }, Landroid/os/Parcel;->recycle()V
    return-void
  :L4
    move-exception p1
    invoke-virtual { v0 }, Landroid/os/Parcel;->recycle()V
    throw p1
.end method

.method public H0(Ljava/lang/String;Landroid/os/Bundle;)V
  .catchall { :L0 .. :L3 } :L4
  .registers 5
  .line 1
    invoke-static { }, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
    move-result-object v0
  :L0
    const-string v1, "android.support.v4.media.session.IMediaControllerCallback"
  .line 2
    invoke-virtual { v0, v1 }, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
  .line 3
    invoke-virtual { v0, p1 }, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
    const/4 p1, 0
    const/4 v1, 1
    if-eqz p2, :L1
  .line 4
    invoke-virtual { v0, v1 }, Landroid/os/Parcel;->writeInt(I)V
  .line 5
    invoke-virtual { p2, v0, p1 }, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V
    goto :L2
  :L1
  .line 6
    invoke-virtual { v0, p1 }, Landroid/os/Parcel;->writeInt(I)V
  :L2
  .line 7
    iget-object p1, p0, Landroid/support/v4/media/session/a$a$a;->a:Landroid/os/IBinder;
    const/4 p2, 0
    invoke-interface { p1, v1, v0, p2, v1 }, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
  :L3
  .line 8
    invoke-virtual { v0 }, Landroid/os/Parcel;->recycle()V
    return-void
  :L4
    move-exception p1
    invoke-virtual { v0 }, Landroid/os/Parcel;->recycle()V
    throw p1
.end method

.method public M(Landroid/support/v4/media/MediaMetadataCompat;)V
  .catchall { :L0 .. :L3 } :L4
  .registers 6
  .line 1
    invoke-static { }, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
    move-result-object v0
  :L0
    const-string v1, "android.support.v4.media.session.IMediaControllerCallback"
  .line 2
    invoke-virtual { v0, v1 }, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
    const/4 v1, 1
    const/4 v2, 0
    if-eqz p1, :L1
  .line 3
    invoke-virtual { v0, v1 }, Landroid/os/Parcel;->writeInt(I)V
  .line 4
    invoke-virtual { p1, v0, v2 }, Landroid/support/v4/media/MediaMetadataCompat;->writeToParcel(Landroid/os/Parcel;I)V
    goto :L2
  :L1
  .line 5
    invoke-virtual { v0, v2 }, Landroid/os/Parcel;->writeInt(I)V
  :L2
  .line 6
    iget-object p1, p0, Landroid/support/v4/media/session/a$a$a;->a:Landroid/os/IBinder;
    const/4 v2, 4
    const/4 v3, 0
    invoke-interface { p1, v2, v0, v3, v1 }, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
  :L3
  .line 7
    invoke-virtual { v0 }, Landroid/os/Parcel;->recycle()V
    return-void
  :L4
    move-exception p1
    invoke-virtual { v0 }, Landroid/os/Parcel;->recycle()V
    throw p1
.end method

.method public P0(Landroid/support/v4/media/session/ParcelableVolumeInfo;)V
  .catchall { :L0 .. :L3 } :L4
  .registers 6
  .line 1
    invoke-static { }, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
    move-result-object v0
  :L0
    const-string v1, "android.support.v4.media.session.IMediaControllerCallback"
  .line 2
    invoke-virtual { v0, v1 }, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
    const/4 v1, 1
    const/4 v2, 0
    if-eqz p1, :L1
  .line 3
    invoke-virtual { v0, v1 }, Landroid/os/Parcel;->writeInt(I)V
  .line 4
    invoke-virtual { p1, v0, v2 }, Landroid/support/v4/media/session/ParcelableVolumeInfo;->writeToParcel(Landroid/os/Parcel;I)V
    goto :L2
  :L1
  .line 5
    invoke-virtual { v0, v2 }, Landroid/os/Parcel;->writeInt(I)V
  :L2
  .line 6
    iget-object p1, p0, Landroid/support/v4/media/session/a$a$a;->a:Landroid/os/IBinder;
    const/16 v2, 8
    const/4 v3, 0
    invoke-interface { p1, v2, v0, v3, v1 }, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
  :L3
  .line 7
    invoke-virtual { v0 }, Landroid/os/Parcel;->recycle()V
    return-void
  :L4
    move-exception p1
    invoke-virtual { v0 }, Landroid/os/Parcel;->recycle()V
    throw p1
.end method

.method public a(Ljava/util/List;)V
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(",
      "Ljava/util/List<",
      "Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;",
      ">;)V"
    }
  .end annotation
  .catchall { :L0 .. :L1 } :L2
  .registers 6
  .line 1
    invoke-static { }, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
    move-result-object v0
  :L0
    const-string v1, "android.support.v4.media.session.IMediaControllerCallback"
  .line 2
    invoke-virtual { v0, v1 }, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
  .line 3
    invoke-virtual { v0, p1 }, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V
  .line 4
    iget-object p1, p0, Landroid/support/v4/media/session/a$a$a;->a:Landroid/os/IBinder;
    const/4 v1, 5
    const/4 v2, 0
    const/4 v3, 1
    invoke-interface { p1, v1, v0, v2, v3 }, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
  :L1
  .line 5
    invoke-virtual { v0 }, Landroid/os/Parcel;->recycle()V
    return-void
  :L2
    move-exception p1
    invoke-virtual { v0 }, Landroid/os/Parcel;->recycle()V
    throw p1
.end method

.method public asBinder()Landroid/os/IBinder;
  .registers 2
  .line 1
    iget-object v0, p0, Landroid/support/v4/media/session/a$a$a;->a:Landroid/os/IBinder;
    return-object v0
.end method

.method public c(Ljava/lang/CharSequence;)V
  .catchall { :L0 .. :L3 } :L4
  .registers 6
  .line 1
    invoke-static { }, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
    move-result-object v0
  :L0
    const-string v1, "android.support.v4.media.session.IMediaControllerCallback"
  .line 2
    invoke-virtual { v0, v1 }, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
    const/4 v1, 1
    const/4 v2, 0
    if-eqz p1, :L1
  .line 3
    invoke-virtual { v0, v1 }, Landroid/os/Parcel;->writeInt(I)V
  .line 4
    invoke-static { p1, v0, v2 }, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V
    goto :L2
  :L1
  .line 5
    invoke-virtual { v0, v2 }, Landroid/os/Parcel;->writeInt(I)V
  :L2
  .line 6
    iget-object p1, p0, Landroid/support/v4/media/session/a$a$a;->a:Landroid/os/IBinder;
    const/4 v2, 6
    const/4 v3, 0
    invoke-interface { p1, v2, v0, v3, v1 }, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
  :L3
  .line 7
    invoke-virtual { v0 }, Landroid/os/Parcel;->recycle()V
    return-void
  :L4
    move-exception p1
    invoke-virtual { v0 }, Landroid/os/Parcel;->recycle()V
    throw p1
.end method

.method public e()V
  .catchall { :L0 .. :L1 } :L2
  .registers 6
  .line 1
    invoke-static { }, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
    move-result-object v0
  :L0
    const-string v1, "android.support.v4.media.session.IMediaControllerCallback"
  .line 2
    invoke-virtual { v0, v1 }, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
  .line 3
    iget-object v1, p0, Landroid/support/v4/media/session/a$a$a;->a:Landroid/os/IBinder;
    const/4 v2, 2
    const/4 v3, 0
    const/4 v4, 1
    invoke-interface { v1, v2, v0, v3, v4 }, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
  :L1
  .line 4
    invoke-virtual { v0 }, Landroid/os/Parcel;->recycle()V
    return-void
  :L2
    move-exception v1
    invoke-virtual { v0 }, Landroid/os/Parcel;->recycle()V
    throw v1
.end method

.method public e0(I)V
  .catchall { :L0 .. :L1 } :L2
  .registers 6
  .line 1
    invoke-static { }, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
    move-result-object v0
  :L0
    const-string v1, "android.support.v4.media.session.IMediaControllerCallback"
  .line 2
    invoke-virtual { v0, v1 }, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
  .line 3
    invoke-virtual { v0, p1 }, Landroid/os/Parcel;->writeInt(I)V
  .line 4
    iget-object p1, p0, Landroid/support/v4/media/session/a$a$a;->a:Landroid/os/IBinder;
    const/16 v1, 9
    const/4 v2, 0
    const/4 v3, 1
    invoke-interface { p1, v1, v0, v2, v3 }, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
  :L1
  .line 5
    invoke-virtual { v0 }, Landroid/os/Parcel;->recycle()V
    return-void
  :L2
    move-exception p1
    invoke-virtual { v0 }, Landroid/os/Parcel;->recycle()V
    throw p1
.end method

.method public o(Landroid/os/Bundle;)V
  .catchall { :L0 .. :L3 } :L4
  .registers 6
  .line 1
    invoke-static { }, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
    move-result-object v0
  :L0
    const-string v1, "android.support.v4.media.session.IMediaControllerCallback"
  .line 2
    invoke-virtual { v0, v1 }, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
    const/4 v1, 1
    const/4 v2, 0
    if-eqz p1, :L1
  .line 3
    invoke-virtual { v0, v1 }, Landroid/os/Parcel;->writeInt(I)V
  .line 4
    invoke-virtual { p1, v0, v2 }, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V
    goto :L2
  :L1
  .line 5
    invoke-virtual { v0, v2 }, Landroid/os/Parcel;->writeInt(I)V
  :L2
  .line 6
    iget-object p1, p0, Landroid/support/v4/media/session/a$a$a;->a:Landroid/os/IBinder;
    const/4 v2, 7
    const/4 v3, 0
    invoke-interface { p1, v2, v0, v3, v1 }, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
  :L3
  .line 7
    invoke-virtual { v0 }, Landroid/os/Parcel;->recycle()V
    return-void
  :L4
    move-exception p1
    invoke-virtual { v0 }, Landroid/os/Parcel;->recycle()V
    throw p1
.end method

.method public q0(Z)V
  .catchall { :L0 .. :L3 } :L4
  .registers 6
  .line 1
    invoke-static { }, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
    move-result-object v0
  :L0
    const-string v1, "android.support.v4.media.session.IMediaControllerCallback"
  .line 2
    invoke-virtual { v0, v1 }, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
    const/4 v1, 1
    if-eqz p1, :L1
    const/4 p1, 1
    goto :L2
  :L1
    const/4 p1, 0
  :L2
  .line 3
    invoke-virtual { v0, p1 }, Landroid/os/Parcel;->writeInt(I)V
  .line 4
    iget-object p1, p0, Landroid/support/v4/media/session/a$a$a;->a:Landroid/os/IBinder;
    const/16 v2, 11
    const/4 v3, 0
    invoke-interface { p1, v2, v0, v3, v1 }, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
  :L3
  .line 5
    invoke-virtual { v0 }, Landroid/os/Parcel;->recycle()V
    return-void
  :L4
    move-exception p1
    invoke-virtual { v0 }, Landroid/os/Parcel;->recycle()V
    throw p1
.end method

.method public s(Z)V
  .catchall { :L0 .. :L3 } :L4
  .registers 6
  .line 1
    invoke-static { }, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
    move-result-object v0
  :L0
    const-string v1, "android.support.v4.media.session.IMediaControllerCallback"
  .line 2
    invoke-virtual { v0, v1 }, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
    const/4 v1, 1
    if-eqz p1, :L1
    const/4 p1, 1
    goto :L2
  :L1
    const/4 p1, 0
  :L2
  .line 3
    invoke-virtual { v0, p1 }, Landroid/os/Parcel;->writeInt(I)V
  .line 4
    iget-object p1, p0, Landroid/support/v4/media/session/a$a$a;->a:Landroid/os/IBinder;
    const/16 v2, 10
    const/4 v3, 0
    invoke-interface { p1, v2, v0, v3, v1 }, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
  :L3
  .line 5
    invoke-virtual { v0 }, Landroid/os/Parcel;->recycle()V
    return-void
  :L4
    move-exception p1
    invoke-virtual { v0 }, Landroid/os/Parcel;->recycle()V
    throw p1
.end method
