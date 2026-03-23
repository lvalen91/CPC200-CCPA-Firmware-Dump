.class Landroid/support/v4/media/session/b$a$a;
.super Ljava/lang/Object;
.implements Landroid/support/v4/media/session/b;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Landroid/support/v4/media/session/b$a;
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
    iput-object p1, p0, Landroid/support/v4/media/session/b$a$a;->a:Landroid/os/IBinder;
    return-void
.end method

.method public A0()V
  .catchall { :L0 .. :L1 } :L2
  .registers 6
  .line 1
    invoke-static { }, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
    move-result-object v0
  .line 2
    invoke-static { }, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
    move-result-object v1
  :L0
    const-string v2, "android.support.v4.media.session.IMediaSession"
  .line 3
    invoke-virtual { v0, v2 }, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
  .line 4
    iget-object v2, p0, Landroid/support/v4/media/session/b$a$a;->a:Landroid/os/IBinder;
    const/16 v3, 33
    const/4 v4, 0
    invoke-interface { v2, v3, v0, v1, v4 }, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
  .line 5
    invoke-virtual { v1 }, Landroid/os/Parcel;->readException()V
  :L1
  .line 6
    invoke-virtual { v1 }, Landroid/os/Parcel;->recycle()V
  .line 7
    invoke-virtual { v0 }, Landroid/os/Parcel;->recycle()V
    return-void
  :L2
    move-exception v2
  .line 8
    invoke-virtual { v1 }, Landroid/os/Parcel;->recycle()V
  .line 9
    invoke-virtual { v0 }, Landroid/os/Parcel;->recycle()V
    throw v2
.end method

.method public B(Ljava/lang/String;Landroid/os/Bundle;)V
  .catchall { :L0 .. :L3 } :L4
  .registers 6
  .line 1
    invoke-static { }, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
    move-result-object v0
  .line 2
    invoke-static { }, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
    move-result-object v1
  :L0
    const-string v2, "android.support.v4.media.session.IMediaSession"
  .line 3
    invoke-virtual { v0, v2 }, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
  .line 4
    invoke-virtual { v0, p1 }, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
    const/4 p1, 0
    if-eqz p2, :L1
    const/4 v2, 1
  .line 5
    invoke-virtual { v0, v2 }, Landroid/os/Parcel;->writeInt(I)V
  .line 6
    invoke-virtual { p2, v0, p1 }, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V
    goto :L2
  :L1
  .line 7
    invoke-virtual { v0, p1 }, Landroid/os/Parcel;->writeInt(I)V
  :L2
  .line 8
    iget-object p2, p0, Landroid/support/v4/media/session/b$a$a;->a:Landroid/os/IBinder;
    const/16 v2, 26
    invoke-interface { p2, v2, v0, v1, p1 }, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
  .line 9
    invoke-virtual { v1 }, Landroid/os/Parcel;->readException()V
  :L3
  .line 10
    invoke-virtual { v1 }, Landroid/os/Parcel;->recycle()V
  .line 11
    invoke-virtual { v0 }, Landroid/os/Parcel;->recycle()V
    return-void
  :L4
    move-exception p1
  .line 12
    invoke-virtual { v1 }, Landroid/os/Parcel;->recycle()V
  .line 13
    invoke-virtual { v0 }, Landroid/os/Parcel;->recycle()V
    throw p1
.end method

.method public C(IILjava/lang/String;)V
  .catchall { :L0 .. :L1 } :L2
  .registers 7
  .line 1
    invoke-static { }, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
    move-result-object v0
  .line 2
    invoke-static { }, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
    move-result-object v1
  :L0
    const-string v2, "android.support.v4.media.session.IMediaSession"
  .line 3
    invoke-virtual { v0, v2 }, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
  .line 4
    invoke-virtual { v0, p1 }, Landroid/os/Parcel;->writeInt(I)V
  .line 5
    invoke-virtual { v0, p2 }, Landroid/os/Parcel;->writeInt(I)V
  .line 6
    invoke-virtual { v0, p3 }, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
  .line 7
    iget-object p1, p0, Landroid/support/v4/media/session/b$a$a;->a:Landroid/os/IBinder;
    const/16 p2, 11
    const/4 p3, 0
    invoke-interface { p1, p2, v0, v1, p3 }, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
  .line 8
    invoke-virtual { v1 }, Landroid/os/Parcel;->readException()V
  :L1
  .line 9
    invoke-virtual { v1 }, Landroid/os/Parcel;->recycle()V
  .line 10
    invoke-virtual { v0 }, Landroid/os/Parcel;->recycle()V
    return-void
  :L2
    move-exception p1
  .line 11
    invoke-virtual { v1 }, Landroid/os/Parcel;->recycle()V
  .line 12
    invoke-virtual { v0 }, Landroid/os/Parcel;->recycle()V
    throw p1
.end method

.method public E()V
  .catchall { :L0 .. :L1 } :L2
  .registers 6
  .line 1
    invoke-static { }, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
    move-result-object v0
  .line 2
    invoke-static { }, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
    move-result-object v1
  :L0
    const-string v2, "android.support.v4.media.session.IMediaSession"
  .line 3
    invoke-virtual { v0, v2 }, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
  .line 4
    iget-object v2, p0, Landroid/support/v4/media/session/b$a$a;->a:Landroid/os/IBinder;
    const/16 v3, 18
    const/4 v4, 0
    invoke-interface { v2, v3, v0, v1, v4 }, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
  .line 5
    invoke-virtual { v1 }, Landroid/os/Parcel;->readException()V
  :L1
  .line 6
    invoke-virtual { v1 }, Landroid/os/Parcel;->recycle()V
  .line 7
    invoke-virtual { v0 }, Landroid/os/Parcel;->recycle()V
    return-void
  :L2
    move-exception v2
  .line 8
    invoke-virtual { v1 }, Landroid/os/Parcel;->recycle()V
  .line 9
    invoke-virtual { v0 }, Landroid/os/Parcel;->recycle()V
    throw v2
.end method

.method public F(Landroid/support/v4/media/session/a;)V
  .catchall { :L0 .. :L3 } :L4
  .registers 6
  .line 1
    invoke-static { }, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
    move-result-object v0
  .line 2
    invoke-static { }, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
    move-result-object v1
  :L0
    const-string v2, "android.support.v4.media.session.IMediaSession"
  .line 3
    invoke-virtual { v0, v2 }, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
    if-eqz p1, :L1
  .line 4
    invoke-interface { p1 }, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;
    move-result-object p1
    goto :L2
  :L1
    const/4 p1, 0
  :L2
    invoke-virtual { v0, p1 }, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V
  .line 5
    iget-object p1, p0, Landroid/support/v4/media/session/b$a$a;->a:Landroid/os/IBinder;
    const/4 v2, 3
    const/4 v3, 0
    invoke-interface { p1, v2, v0, v1, v3 }, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
  .line 6
    invoke-virtual { v1 }, Landroid/os/Parcel;->readException()V
  :L3
  .line 7
    invoke-virtual { v1 }, Landroid/os/Parcel;->recycle()V
  .line 8
    invoke-virtual { v0 }, Landroid/os/Parcel;->recycle()V
    return-void
  :L4
    move-exception p1
  .line 9
    invoke-virtual { v1 }, Landroid/os/Parcel;->recycle()V
  .line 10
    invoke-virtual { v0 }, Landroid/os/Parcel;->recycle()V
    throw p1
.end method

.method public H(Landroid/support/v4/media/RatingCompat;Landroid/os/Bundle;)V
  .catchall { :L0 .. :L5 } :L6
  .registers 7
  .line 1
    invoke-static { }, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
    move-result-object v0
  .line 2
    invoke-static { }, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
    move-result-object v1
  :L0
    const-string v2, "android.support.v4.media.session.IMediaSession"
  .line 3
    invoke-virtual { v0, v2 }, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
    const/4 v2, 1
    const/4 v3, 0
    if-eqz p1, :L1
  .line 4
    invoke-virtual { v0, v2 }, Landroid/os/Parcel;->writeInt(I)V
  .line 5
    invoke-virtual { p1, v0, v3 }, Landroid/support/v4/media/RatingCompat;->writeToParcel(Landroid/os/Parcel;I)V
    goto :L2
  :L1
  .line 6
    invoke-virtual { v0, v3 }, Landroid/os/Parcel;->writeInt(I)V
  :L2
    if-eqz p2, :L3
  .line 7
    invoke-virtual { v0, v2 }, Landroid/os/Parcel;->writeInt(I)V
  .line 8
    invoke-virtual { p2, v0, v3 }, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V
    goto :L4
  :L3
  .line 9
    invoke-virtual { v0, v3 }, Landroid/os/Parcel;->writeInt(I)V
  :L4
  .line 10
    iget-object p1, p0, Landroid/support/v4/media/session/b$a$a;->a:Landroid/os/IBinder;
    const/16 p2, 51
    invoke-interface { p1, p2, v0, v1, v3 }, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
  .line 11
    invoke-virtual { v1 }, Landroid/os/Parcel;->readException()V
  :L5
  .line 12
    invoke-virtual { v1 }, Landroid/os/Parcel;->recycle()V
  .line 13
    invoke-virtual { v0 }, Landroid/os/Parcel;->recycle()V
    return-void
  :L6
    move-exception p1
  .line 14
    invoke-virtual { v1 }, Landroid/os/Parcel;->recycle()V
  .line 15
    invoke-virtual { v0 }, Landroid/os/Parcel;->recycle()V
    throw p1
.end method

.method public I()Landroid/support/v4/media/MediaMetadataCompat;
  .catchall { :L0 .. :L1 } :L4
  .registers 6
  .line 1
    invoke-static { }, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
    move-result-object v0
  .line 2
    invoke-static { }, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
    move-result-object v1
  :L0
    const-string v2, "android.support.v4.media.session.IMediaSession"
  .line 3
    invoke-virtual { v0, v2 }, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
  .line 4
    iget-object v2, p0, Landroid/support/v4/media/session/b$a$a;->a:Landroid/os/IBinder;
    const/16 v3, 27
    const/4 v4, 0
    invoke-interface { v2, v3, v0, v1, v4 }, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
  .line 5
    invoke-virtual { v1 }, Landroid/os/Parcel;->readException()V
  .line 6
    invoke-virtual { v1 }, Landroid/os/Parcel;->readInt()I
    move-result v2
    if-eqz v2, :L2
  .line 7
    sget-object v2, Landroid/support/v4/media/MediaMetadataCompat;->CREATOR:Landroid/os/Parcelable$Creator;
    invoke-interface { v2, v1 }, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    move-result-object v2
    check-cast v2, Landroid/support/v4/media/MediaMetadataCompat;
  :L1
    goto :L3
  :L2
    const/4 v2, 0
  :L3
  .line 8
    invoke-virtual { v1 }, Landroid/os/Parcel;->recycle()V
  .line 9
    invoke-virtual { v0 }, Landroid/os/Parcel;->recycle()V
    return-object v2
  :L4
    move-exception v2
  .line 10
    invoke-virtual { v1 }, Landroid/os/Parcel;->recycle()V
  .line 11
    invoke-virtual { v0 }, Landroid/os/Parcel;->recycle()V
    throw v2
.end method

.method public I0()V
  .catchall { :L0 .. :L1 } :L2
  .registers 6
  .line 1
    invoke-static { }, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
    move-result-object v0
  .line 2
    invoke-static { }, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
    move-result-object v1
  :L0
    const-string v2, "android.support.v4.media.session.IMediaSession"
  .line 3
    invoke-virtual { v0, v2 }, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
  .line 4
    iget-object v2, p0, Landroid/support/v4/media/session/b$a$a;->a:Landroid/os/IBinder;
    const/16 v3, 13
    const/4 v4, 0
    invoke-interface { v2, v3, v0, v1, v4 }, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
  .line 5
    invoke-virtual { v1 }, Landroid/os/Parcel;->readException()V
  :L1
  .line 6
    invoke-virtual { v1 }, Landroid/os/Parcel;->recycle()V
  .line 7
    invoke-virtual { v0 }, Landroid/os/Parcel;->recycle()V
    return-void
  :L2
    move-exception v2
  .line 8
    invoke-virtual { v1 }, Landroid/os/Parcel;->recycle()V
  .line 9
    invoke-virtual { v0 }, Landroid/os/Parcel;->recycle()V
    throw v2
.end method

.method public J(Ljava/lang/String;Landroid/os/Bundle;)V
  .catchall { :L0 .. :L3 } :L4
  .registers 6
  .line 1
    invoke-static { }, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
    move-result-object v0
  .line 2
    invoke-static { }, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
    move-result-object v1
  :L0
    const-string v2, "android.support.v4.media.session.IMediaSession"
  .line 3
    invoke-virtual { v0, v2 }, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
  .line 4
    invoke-virtual { v0, p1 }, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
    const/4 p1, 0
    if-eqz p2, :L1
    const/4 v2, 1
  .line 5
    invoke-virtual { v0, v2 }, Landroid/os/Parcel;->writeInt(I)V
  .line 6
    invoke-virtual { p2, v0, p1 }, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V
    goto :L2
  :L1
  .line 7
    invoke-virtual { v0, p1 }, Landroid/os/Parcel;->writeInt(I)V
  :L2
  .line 8
    iget-object p2, p0, Landroid/support/v4/media/session/b$a$a;->a:Landroid/os/IBinder;
    const/16 v2, 34
    invoke-interface { p2, v2, v0, v1, p1 }, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
  .line 9
    invoke-virtual { v1 }, Landroid/os/Parcel;->readException()V
  :L3
  .line 10
    invoke-virtual { v1 }, Landroid/os/Parcel;->recycle()V
  .line 11
    invoke-virtual { v0 }, Landroid/os/Parcel;->recycle()V
    return-void
  :L4
    move-exception p1
  .line 12
    invoke-virtual { v1 }, Landroid/os/Parcel;->recycle()V
  .line 13
    invoke-virtual { v0 }, Landroid/os/Parcel;->recycle()V
    throw p1
.end method

.method public K(Landroid/support/v4/media/session/a;)V
  .catchall { :L0 .. :L3 } :L4
  .registers 6
  .line 1
    invoke-static { }, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
    move-result-object v0
  .line 2
    invoke-static { }, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
    move-result-object v1
  :L0
    const-string v2, "android.support.v4.media.session.IMediaSession"
  .line 3
    invoke-virtual { v0, v2 }, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
    if-eqz p1, :L1
  .line 4
    invoke-interface { p1 }, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;
    move-result-object p1
    goto :L2
  :L1
    const/4 p1, 0
  :L2
    invoke-virtual { v0, p1 }, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V
  .line 5
    iget-object p1, p0, Landroid/support/v4/media/session/b$a$a;->a:Landroid/os/IBinder;
    const/4 v2, 4
    const/4 v3, 0
    invoke-interface { p1, v2, v0, v1, v3 }, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
  .line 6
    invoke-virtual { v1 }, Landroid/os/Parcel;->readException()V
  :L3
  .line 7
    invoke-virtual { v1 }, Landroid/os/Parcel;->recycle()V
  .line 8
    invoke-virtual { v0 }, Landroid/os/Parcel;->recycle()V
    return-void
  :L4
    move-exception p1
  .line 9
    invoke-virtual { v1 }, Landroid/os/Parcel;->recycle()V
  .line 10
    invoke-virtual { v0 }, Landroid/os/Parcel;->recycle()V
    throw p1
.end method

.method public K0(Ljava/lang/String;Landroid/os/Bundle;Landroid/support/v4/media/session/MediaSessionCompat$ResultReceiverWrapper;)V
  .catchall { :L0 .. :L5 } :L6
  .registers 7
  .line 1
    invoke-static { }, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
    move-result-object v0
  .line 2
    invoke-static { }, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
    move-result-object v1
  :L0
    const-string v2, "android.support.v4.media.session.IMediaSession"
  .line 3
    invoke-virtual { v0, v2 }, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
  .line 4
    invoke-virtual { v0, p1 }, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
    const/4 p1, 1
    const/4 v2, 0
    if-eqz p2, :L1
  .line 5
    invoke-virtual { v0, p1 }, Landroid/os/Parcel;->writeInt(I)V
  .line 6
    invoke-virtual { p2, v0, v2 }, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V
    goto :L2
  :L1
  .line 7
    invoke-virtual { v0, v2 }, Landroid/os/Parcel;->writeInt(I)V
  :L2
    if-eqz p3, :L3
  .line 8
    invoke-virtual { v0, p1 }, Landroid/os/Parcel;->writeInt(I)V
  .line 9
    invoke-virtual { p3, v0, v2 }, Landroid/support/v4/media/session/MediaSessionCompat$ResultReceiverWrapper;->writeToParcel(Landroid/os/Parcel;I)V
    goto :L4
  :L3
  .line 10
    invoke-virtual { v0, v2 }, Landroid/os/Parcel;->writeInt(I)V
  :L4
  .line 11
    iget-object p2, p0, Landroid/support/v4/media/session/b$a$a;->a:Landroid/os/IBinder;
    invoke-interface { p2, p1, v0, v1, v2 }, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
  .line 12
    invoke-virtual { v1 }, Landroid/os/Parcel;->readException()V
  :L5
  .line 13
    invoke-virtual { v1 }, Landroid/os/Parcel;->recycle()V
  .line 14
    invoke-virtual { v0 }, Landroid/os/Parcel;->recycle()V
    return-void
  :L6
    move-exception p1
  .line 15
    invoke-virtual { v1 }, Landroid/os/Parcel;->recycle()V
  .line 16
    invoke-virtual { v0 }, Landroid/os/Parcel;->recycle()V
    throw p1
.end method

.method public L(Landroid/support/v4/media/MediaDescriptionCompat;I)V
  .catchall { :L0 .. :L3 } :L4
  .registers 7
  .line 1
    invoke-static { }, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
    move-result-object v0
  .line 2
    invoke-static { }, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
    move-result-object v1
  :L0
    const-string v2, "android.support.v4.media.session.IMediaSession"
  .line 3
    invoke-virtual { v0, v2 }, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
    const/4 v2, 0
    if-eqz p1, :L1
    const/4 v3, 1
  .line 4
    invoke-virtual { v0, v3 }, Landroid/os/Parcel;->writeInt(I)V
  .line 5
    invoke-virtual { p1, v0, v2 }, Landroid/support/v4/media/MediaDescriptionCompat;->writeToParcel(Landroid/os/Parcel;I)V
    goto :L2
  :L1
  .line 6
    invoke-virtual { v0, v2 }, Landroid/os/Parcel;->writeInt(I)V
  :L2
  .line 7
    invoke-virtual { v0, p2 }, Landroid/os/Parcel;->writeInt(I)V
  .line 8
    iget-object p1, p0, Landroid/support/v4/media/session/b$a$a;->a:Landroid/os/IBinder;
    const/16 p2, 42
    invoke-interface { p1, p2, v0, v1, v2 }, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
  .line 9
    invoke-virtual { v1 }, Landroid/os/Parcel;->readException()V
  :L3
  .line 10
    invoke-virtual { v1 }, Landroid/os/Parcel;->recycle()V
  .line 11
    invoke-virtual { v0 }, Landroid/os/Parcel;->recycle()V
    return-void
  :L4
    move-exception p1
  .line 12
    invoke-virtual { v1 }, Landroid/os/Parcel;->recycle()V
  .line 13
    invoke-virtual { v0 }, Landroid/os/Parcel;->recycle()V
    throw p1
.end method

.method public L0()Ljava/util/List;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "()",
      "Ljava/util/List<",
      "Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;",
      ">;"
    }
  .end annotation
  .catchall { :L0 .. :L1 } :L2
  .registers 6
  .line 1
    invoke-static { }, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
    move-result-object v0
  .line 2
    invoke-static { }, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
    move-result-object v1
  :L0
    const-string v2, "android.support.v4.media.session.IMediaSession"
  .line 3
    invoke-virtual { v0, v2 }, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
  .line 4
    iget-object v2, p0, Landroid/support/v4/media/session/b$a$a;->a:Landroid/os/IBinder;
    const/16 v3, 29
    const/4 v4, 0
    invoke-interface { v2, v3, v0, v1, v4 }, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
  .line 5
    invoke-virtual { v1 }, Landroid/os/Parcel;->readException()V
  .line 6
    sget-object v2, Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;->CREATOR:Landroid/os/Parcelable$Creator;
    invoke-virtual { v1, v2 }, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;
    move-result-object v2
  :L1
  .line 7
    invoke-virtual { v1 }, Landroid/os/Parcel;->recycle()V
  .line 8
    invoke-virtual { v0 }, Landroid/os/Parcel;->recycle()V
    return-object v2
  :L2
    move-exception v2
  .line 9
    invoke-virtual { v1 }, Landroid/os/Parcel;->recycle()V
  .line 10
    invoke-virtual { v0 }, Landroid/os/Parcel;->recycle()V
    throw v2
.end method

.method public N()Ljava/lang/String;
  .catchall { :L0 .. :L1 } :L2
  .registers 6
  .line 1
    invoke-static { }, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
    move-result-object v0
  .line 2
    invoke-static { }, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
    move-result-object v1
  :L0
    const-string v2, "android.support.v4.media.session.IMediaSession"
  .line 3
    invoke-virtual { v0, v2 }, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
  .line 4
    iget-object v2, p0, Landroid/support/v4/media/session/b$a$a;->a:Landroid/os/IBinder;
    const/4 v3, 7
    const/4 v4, 0
    invoke-interface { v2, v3, v0, v1, v4 }, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
  .line 5
    invoke-virtual { v1 }, Landroid/os/Parcel;->readException()V
  .line 6
    invoke-virtual { v1 }, Landroid/os/Parcel;->readString()Ljava/lang/String;
    move-result-object v2
  :L1
  .line 7
    invoke-virtual { v1 }, Landroid/os/Parcel;->recycle()V
  .line 8
    invoke-virtual { v0 }, Landroid/os/Parcel;->recycle()V
    return-object v2
  :L2
    move-exception v2
  .line 9
    invoke-virtual { v1 }, Landroid/os/Parcel;->recycle()V
  .line 10
    invoke-virtual { v0 }, Landroid/os/Parcel;->recycle()V
    throw v2
.end method

.method public P()Z
  .catchall { :L0 .. :L1 } :L3
  .registers 6
  .line 1
    invoke-static { }, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
    move-result-object v0
  .line 2
    invoke-static { }, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
    move-result-object v1
  :L0
    const-string v2, "android.support.v4.media.session.IMediaSession"
  .line 3
    invoke-virtual { v0, v2 }, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
  .line 4
    iget-object v2, p0, Landroid/support/v4/media/session/b$a$a;->a:Landroid/os/IBinder;
    const/16 v3, 38
    const/4 v4, 0
    invoke-interface { v2, v3, v0, v1, v4 }, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
  .line 5
    invoke-virtual { v1 }, Landroid/os/Parcel;->readException()V
  .line 6
    invoke-virtual { v1 }, Landroid/os/Parcel;->readInt()I
    move-result v2
  :L1
    if-eqz v2, :L2
    const/4 v4, 1
  :L2
  .line 7
    invoke-virtual { v1 }, Landroid/os/Parcel;->recycle()V
  .line 8
    invoke-virtual { v0 }, Landroid/os/Parcel;->recycle()V
    return v4
  :L3
    move-exception v2
  .line 9
    invoke-virtual { v1 }, Landroid/os/Parcel;->recycle()V
  .line 10
    invoke-virtual { v0 }, Landroid/os/Parcel;->recycle()V
    throw v2
.end method

.method public Q(Z)V
  .catchall { :L0 .. :L3 } :L4
  .registers 6
  .line 1
    invoke-static { }, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
    move-result-object v0
  .line 2
    invoke-static { }, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
    move-result-object v1
  :L0
    const-string v2, "android.support.v4.media.session.IMediaSession"
  .line 3
    invoke-virtual { v0, v2 }, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
    const/4 v2, 0
    if-eqz p1, :L1
    const/4 p1, 1
    goto :L2
  :L1
    const/4 p1, 0
  :L2
  .line 4
    invoke-virtual { v0, p1 }, Landroid/os/Parcel;->writeInt(I)V
  .line 5
    iget-object p1, p0, Landroid/support/v4/media/session/b$a$a;->a:Landroid/os/IBinder;
    const/16 v3, 46
    invoke-interface { p1, v3, v0, v1, v2 }, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
  .line 6
    invoke-virtual { v1 }, Landroid/os/Parcel;->readException()V
  :L3
  .line 7
    invoke-virtual { v1 }, Landroid/os/Parcel;->recycle()V
  .line 8
    invoke-virtual { v0 }, Landroid/os/Parcel;->recycle()V
    return-void
  :L4
    move-exception p1
  .line 9
    invoke-virtual { v1 }, Landroid/os/Parcel;->recycle()V
  .line 10
    invoke-virtual { v0 }, Landroid/os/Parcel;->recycle()V
    throw p1
.end method

.method public Q0(Landroid/view/KeyEvent;)Z
  .catchall { :L0 .. :L3 } :L6
  .registers 7
  .line 1
    invoke-static { }, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
    move-result-object v0
  .line 2
    invoke-static { }, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
    move-result-object v1
  :L0
    const-string v2, "android.support.v4.media.session.IMediaSession"
  .line 3
    invoke-virtual { v0, v2 }, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
    const/4 v2, 1
    const/4 v3, 0
    if-eqz p1, :L1
  .line 4
    invoke-virtual { v0, v2 }, Landroid/os/Parcel;->writeInt(I)V
  .line 5
    invoke-virtual { p1, v0, v3 }, Landroid/view/KeyEvent;->writeToParcel(Landroid/os/Parcel;I)V
    goto :L2
  :L1
  .line 6
    invoke-virtual { v0, v3 }, Landroid/os/Parcel;->writeInt(I)V
  :L2
  .line 7
    iget-object p1, p0, Landroid/support/v4/media/session/b$a$a;->a:Landroid/os/IBinder;
    const/4 v4, 2
    invoke-interface { p1, v4, v0, v1, v3 }, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
  .line 8
    invoke-virtual { v1 }, Landroid/os/Parcel;->readException()V
  .line 9
    invoke-virtual { v1 }, Landroid/os/Parcel;->readInt()I
    move-result p1
  :L3
    if-eqz p1, :L4
    goto :L5
  :L4
    const/4 v2, 0
  :L5
  .line 10
    invoke-virtual { v1 }, Landroid/os/Parcel;->recycle()V
  .line 11
    invoke-virtual { v0 }, Landroid/os/Parcel;->recycle()V
    return v2
  :L6
    move-exception p1
  .line 12
    invoke-virtual { v1 }, Landroid/os/Parcel;->recycle()V
  .line 13
    invoke-virtual { v0 }, Landroid/os/Parcel;->recycle()V
    throw p1
.end method

.method public R(Landroid/support/v4/media/RatingCompat;)V
  .catchall { :L0 .. :L3 } :L4
  .registers 6
  .line 1
    invoke-static { }, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
    move-result-object v0
  .line 2
    invoke-static { }, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
    move-result-object v1
  :L0
    const-string v2, "android.support.v4.media.session.IMediaSession"
  .line 3
    invoke-virtual { v0, v2 }, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
    const/4 v2, 0
    if-eqz p1, :L1
    const/4 v3, 1
  .line 4
    invoke-virtual { v0, v3 }, Landroid/os/Parcel;->writeInt(I)V
  .line 5
    invoke-virtual { p1, v0, v2 }, Landroid/support/v4/media/RatingCompat;->writeToParcel(Landroid/os/Parcel;I)V
    goto :L2
  :L1
  .line 6
    invoke-virtual { v0, v2 }, Landroid/os/Parcel;->writeInt(I)V
  :L2
  .line 7
    iget-object p1, p0, Landroid/support/v4/media/session/b$a$a;->a:Landroid/os/IBinder;
    const/16 v3, 25
    invoke-interface { p1, v3, v0, v1, v2 }, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
  .line 8
    invoke-virtual { v1 }, Landroid/os/Parcel;->readException()V
  :L3
  .line 9
    invoke-virtual { v1 }, Landroid/os/Parcel;->recycle()V
  .line 10
    invoke-virtual { v0 }, Landroid/os/Parcel;->recycle()V
    return-void
  :L4
    move-exception p1
  .line 11
    invoke-virtual { v1 }, Landroid/os/Parcel;->recycle()V
  .line 12
    invoke-virtual { v0 }, Landroid/os/Parcel;->recycle()V
    throw p1
.end method

.method public S(Ljava/lang/String;Landroid/os/Bundle;)V
  .catchall { :L0 .. :L3 } :L4
  .registers 6
  .line 1
    invoke-static { }, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
    move-result-object v0
  .line 2
    invoke-static { }, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
    move-result-object v1
  :L0
    const-string v2, "android.support.v4.media.session.IMediaSession"
  .line 3
    invoke-virtual { v0, v2 }, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
  .line 4
    invoke-virtual { v0, p1 }, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
    const/4 p1, 0
    if-eqz p2, :L1
    const/4 v2, 1
  .line 5
    invoke-virtual { v0, v2 }, Landroid/os/Parcel;->writeInt(I)V
  .line 6
    invoke-virtual { p2, v0, p1 }, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V
    goto :L2
  :L1
  .line 7
    invoke-virtual { v0, p1 }, Landroid/os/Parcel;->writeInt(I)V
  :L2
  .line 8
    iget-object p2, p0, Landroid/support/v4/media/session/b$a$a;->a:Landroid/os/IBinder;
    const/16 v2, 14
    invoke-interface { p2, v2, v0, v1, p1 }, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
  .line 9
    invoke-virtual { v1 }, Landroid/os/Parcel;->readException()V
  :L3
  .line 10
    invoke-virtual { v1 }, Landroid/os/Parcel;->recycle()V
  .line 11
    invoke-virtual { v0 }, Landroid/os/Parcel;->recycle()V
    return-void
  :L4
    move-exception p1
  .line 12
    invoke-virtual { v1 }, Landroid/os/Parcel;->recycle()V
  .line 13
    invoke-virtual { v0 }, Landroid/os/Parcel;->recycle()V
    throw p1
.end method

.method public T()J
  .catchall { :L0 .. :L1 } :L2
  .registers 6
  .line 1
    invoke-static { }, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
    move-result-object v0
  .line 2
    invoke-static { }, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
    move-result-object v1
  :L0
    const-string v2, "android.support.v4.media.session.IMediaSession"
  .line 3
    invoke-virtual { v0, v2 }, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
  .line 4
    iget-object v2, p0, Landroid/support/v4/media/session/b$a$a;->a:Landroid/os/IBinder;
    const/16 v3, 9
    const/4 v4, 0
    invoke-interface { v2, v3, v0, v1, v4 }, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
  .line 5
    invoke-virtual { v1 }, Landroid/os/Parcel;->readException()V
  .line 6
    invoke-virtual { v1 }, Landroid/os/Parcel;->readLong()J
    move-result-wide v2
  :L1
  .line 7
    invoke-virtual { v1 }, Landroid/os/Parcel;->recycle()V
  .line 8
    invoke-virtual { v0 }, Landroid/os/Parcel;->recycle()V
    return-wide v2
  :L2
    move-exception v2
  .line 9
    invoke-virtual { v1 }, Landroid/os/Parcel;->recycle()V
  .line 10
    invoke-virtual { v0 }, Landroid/os/Parcel;->recycle()V
    throw v2
.end method

.method public U(IILjava/lang/String;)V
  .catchall { :L0 .. :L1 } :L2
  .registers 7
  .line 1
    invoke-static { }, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
    move-result-object v0
  .line 2
    invoke-static { }, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
    move-result-object v1
  :L0
    const-string v2, "android.support.v4.media.session.IMediaSession"
  .line 3
    invoke-virtual { v0, v2 }, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
  .line 4
    invoke-virtual { v0, p1 }, Landroid/os/Parcel;->writeInt(I)V
  .line 5
    invoke-virtual { v0, p2 }, Landroid/os/Parcel;->writeInt(I)V
  .line 6
    invoke-virtual { v0, p3 }, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
  .line 7
    iget-object p1, p0, Landroid/support/v4/media/session/b$a$a;->a:Landroid/os/IBinder;
    const/16 p2, 12
    const/4 p3, 0
    invoke-interface { p1, p2, v0, v1, p3 }, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
  .line 8
    invoke-virtual { v1 }, Landroid/os/Parcel;->readException()V
  :L1
  .line 9
    invoke-virtual { v1 }, Landroid/os/Parcel;->recycle()V
  .line 10
    invoke-virtual { v0 }, Landroid/os/Parcel;->recycle()V
    return-void
  :L2
    move-exception p1
  .line 11
    invoke-virtual { v1 }, Landroid/os/Parcel;->recycle()V
  .line 12
    invoke-virtual { v0 }, Landroid/os/Parcel;->recycle()V
    throw p1
.end method

.method public V(Landroid/net/Uri;Landroid/os/Bundle;)V
  .catchall { :L0 .. :L5 } :L6
  .registers 7
  .line 1
    invoke-static { }, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
    move-result-object v0
  .line 2
    invoke-static { }, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
    move-result-object v1
  :L0
    const-string v2, "android.support.v4.media.session.IMediaSession"
  .line 3
    invoke-virtual { v0, v2 }, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
    const/4 v2, 1
    const/4 v3, 0
    if-eqz p1, :L1
  .line 4
    invoke-virtual { v0, v2 }, Landroid/os/Parcel;->writeInt(I)V
  .line 5
    invoke-virtual { p1, v0, v3 }, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;I)V
    goto :L2
  :L1
  .line 6
    invoke-virtual { v0, v3 }, Landroid/os/Parcel;->writeInt(I)V
  :L2
    if-eqz p2, :L3
  .line 7
    invoke-virtual { v0, v2 }, Landroid/os/Parcel;->writeInt(I)V
  .line 8
    invoke-virtual { p2, v0, v3 }, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V
    goto :L4
  :L3
  .line 9
    invoke-virtual { v0, v3 }, Landroid/os/Parcel;->writeInt(I)V
  :L4
  .line 10
    iget-object p1, p0, Landroid/support/v4/media/session/b$a$a;->a:Landroid/os/IBinder;
    const/16 p2, 36
    invoke-interface { p1, p2, v0, v1, v3 }, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
  .line 11
    invoke-virtual { v1 }, Landroid/os/Parcel;->readException()V
  :L5
  .line 12
    invoke-virtual { v1 }, Landroid/os/Parcel;->recycle()V
  .line 13
    invoke-virtual { v0 }, Landroid/os/Parcel;->recycle()V
    return-void
  :L6
    move-exception p1
  .line 14
    invoke-virtual { v1 }, Landroid/os/Parcel;->recycle()V
  .line 15
    invoke-virtual { v0 }, Landroid/os/Parcel;->recycle()V
    throw p1
.end method

.method public W()I
  .catchall { :L0 .. :L1 } :L2
  .registers 6
  .line 1
    invoke-static { }, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
    move-result-object v0
  .line 2
    invoke-static { }, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
    move-result-object v1
  :L0
    const-string v2, "android.support.v4.media.session.IMediaSession"
  .line 3
    invoke-virtual { v0, v2 }, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
  .line 4
    iget-object v2, p0, Landroid/support/v4/media/session/b$a$a;->a:Landroid/os/IBinder;
    const/16 v3, 37
    const/4 v4, 0
    invoke-interface { v2, v3, v0, v1, v4 }, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
  .line 5
    invoke-virtual { v1 }, Landroid/os/Parcel;->readException()V
  .line 6
    invoke-virtual { v1 }, Landroid/os/Parcel;->readInt()I
    move-result v2
  :L1
  .line 7
    invoke-virtual { v1 }, Landroid/os/Parcel;->recycle()V
  .line 8
    invoke-virtual { v0 }, Landroid/os/Parcel;->recycle()V
    return v2
  :L2
    move-exception v2
  .line 9
    invoke-virtual { v1 }, Landroid/os/Parcel;->recycle()V
  .line 10
    invoke-virtual { v0 }, Landroid/os/Parcel;->recycle()V
    throw v2
.end method

.method public X(J)V
  .catchall { :L0 .. :L1 } :L2
  .registers 6
  .line 1
    invoke-static { }, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
    move-result-object v0
  .line 2
    invoke-static { }, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
    move-result-object v1
  :L0
    const-string v2, "android.support.v4.media.session.IMediaSession"
  .line 3
    invoke-virtual { v0, v2 }, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
  .line 4
    invoke-virtual { v0, p1, p2 }, Landroid/os/Parcel;->writeLong(J)V
  .line 5
    iget-object p1, p0, Landroid/support/v4/media/session/b$a$a;->a:Landroid/os/IBinder;
    const/16 p2, 17
    const/4 v2, 0
    invoke-interface { p1, p2, v0, v1, v2 }, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
  .line 6
    invoke-virtual { v1 }, Landroid/os/Parcel;->readException()V
  :L1
  .line 7
    invoke-virtual { v1 }, Landroid/os/Parcel;->recycle()V
  .line 8
    invoke-virtual { v0 }, Landroid/os/Parcel;->recycle()V
    return-void
  :L2
    move-exception p1
  .line 9
    invoke-virtual { v1 }, Landroid/os/Parcel;->recycle()V
  .line 10
    invoke-virtual { v0 }, Landroid/os/Parcel;->recycle()V
    throw p1
.end method

.method public Y(Z)V
  .catchall { :L0 .. :L3 } :L4
  .registers 6
  .line 1
    invoke-static { }, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
    move-result-object v0
  .line 2
    invoke-static { }, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
    move-result-object v1
  :L0
    const-string v2, "android.support.v4.media.session.IMediaSession"
  .line 3
    invoke-virtual { v0, v2 }, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
    const/4 v2, 0
    if-eqz p1, :L1
    const/4 p1, 1
    goto :L2
  :L1
    const/4 p1, 0
  :L2
  .line 4
    invoke-virtual { v0, p1 }, Landroid/os/Parcel;->writeInt(I)V
  .line 5
    iget-object p1, p0, Landroid/support/v4/media/session/b$a$a;->a:Landroid/os/IBinder;
    const/16 v3, 40
    invoke-interface { p1, v3, v0, v1, v2 }, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
  .line 6
    invoke-virtual { v1 }, Landroid/os/Parcel;->readException()V
  :L3
  .line 7
    invoke-virtual { v1 }, Landroid/os/Parcel;->recycle()V
  .line 8
    invoke-virtual { v0 }, Landroid/os/Parcel;->recycle()V
    return-void
  :L4
    move-exception p1
  .line 9
    invoke-virtual { v1 }, Landroid/os/Parcel;->recycle()V
  .line 10
    invoke-virtual { v0 }, Landroid/os/Parcel;->recycle()V
    throw p1
.end method

.method public Z(Ljava/lang/String;Landroid/os/Bundle;)V
  .catchall { :L0 .. :L3 } :L4
  .registers 6
  .line 1
    invoke-static { }, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
    move-result-object v0
  .line 2
    invoke-static { }, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
    move-result-object v1
  :L0
    const-string v2, "android.support.v4.media.session.IMediaSession"
  .line 3
    invoke-virtual { v0, v2 }, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
  .line 4
    invoke-virtual { v0, p1 }, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
    const/4 p1, 0
    if-eqz p2, :L1
    const/4 v2, 1
  .line 5
    invoke-virtual { v0, v2 }, Landroid/os/Parcel;->writeInt(I)V
  .line 6
    invoke-virtual { p2, v0, p1 }, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V
    goto :L2
  :L1
  .line 7
    invoke-virtual { v0, p1 }, Landroid/os/Parcel;->writeInt(I)V
  :L2
  .line 8
    iget-object p2, p0, Landroid/support/v4/media/session/b$a$a;->a:Landroid/os/IBinder;
    const/16 v2, 15
    invoke-interface { p2, v2, v0, v1, p1 }, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
  .line 9
    invoke-virtual { v1 }, Landroid/os/Parcel;->readException()V
  :L3
  .line 10
    invoke-virtual { v1 }, Landroid/os/Parcel;->recycle()V
  .line 11
    invoke-virtual { v0 }, Landroid/os/Parcel;->recycle()V
    return-void
  :L4
    move-exception p1
  .line 12
    invoke-virtual { v1 }, Landroid/os/Parcel;->recycle()V
  .line 13
    invoke-virtual { v0 }, Landroid/os/Parcel;->recycle()V
    throw p1
.end method

.method public asBinder()Landroid/os/IBinder;
  .registers 2
  .line 1
    iget-object v0, p0, Landroid/support/v4/media/session/b$a$a;->a:Landroid/os/IBinder;
    return-object v0
.end method

.method public d0()Landroid/support/v4/media/session/ParcelableVolumeInfo;
  .catchall { :L0 .. :L1 } :L4
  .registers 6
  .line 1
    invoke-static { }, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
    move-result-object v0
  .line 2
    invoke-static { }, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
    move-result-object v1
  :L0
    const-string v2, "android.support.v4.media.session.IMediaSession"
  .line 3
    invoke-virtual { v0, v2 }, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
  .line 4
    iget-object v2, p0, Landroid/support/v4/media/session/b$a$a;->a:Landroid/os/IBinder;
    const/16 v3, 10
    const/4 v4, 0
    invoke-interface { v2, v3, v0, v1, v4 }, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
  .line 5
    invoke-virtual { v1 }, Landroid/os/Parcel;->readException()V
  .line 6
    invoke-virtual { v1 }, Landroid/os/Parcel;->readInt()I
    move-result v2
    if-eqz v2, :L2
  .line 7
    sget-object v2, Landroid/support/v4/media/session/ParcelableVolumeInfo;->CREATOR:Landroid/os/Parcelable$Creator;
    invoke-interface { v2, v1 }, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    move-result-object v2
    check-cast v2, Landroid/support/v4/media/session/ParcelableVolumeInfo;
  :L1
    goto :L3
  :L2
    const/4 v2, 0
  :L3
  .line 8
    invoke-virtual { v1 }, Landroid/os/Parcel;->recycle()V
  .line 9
    invoke-virtual { v0 }, Landroid/os/Parcel;->recycle()V
    return-object v2
  :L4
    move-exception v2
  .line 10
    invoke-virtual { v1 }, Landroid/os/Parcel;->recycle()V
  .line 11
    invoke-virtual { v0 }, Landroid/os/Parcel;->recycle()V
    throw v2
.end method

.method public f0()V
  .catchall { :L0 .. :L1 } :L2
  .registers 6
  .line 1
    invoke-static { }, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
    move-result-object v0
  .line 2
    invoke-static { }, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
    move-result-object v1
  :L0
    const-string v2, "android.support.v4.media.session.IMediaSession"
  .line 3
    invoke-virtual { v0, v2 }, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
  .line 4
    iget-object v2, p0, Landroid/support/v4/media/session/b$a$a;->a:Landroid/os/IBinder;
    const/16 v3, 22
    const/4 v4, 0
    invoke-interface { v2, v3, v0, v1, v4 }, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
  .line 5
    invoke-virtual { v1 }, Landroid/os/Parcel;->readException()V
  :L1
  .line 6
    invoke-virtual { v1 }, Landroid/os/Parcel;->recycle()V
  .line 7
    invoke-virtual { v0 }, Landroid/os/Parcel;->recycle()V
    return-void
  :L2
    move-exception v2
  .line 8
    invoke-virtual { v1 }, Landroid/os/Parcel;->recycle()V
  .line 9
    invoke-virtual { v0 }, Landroid/os/Parcel;->recycle()V
    throw v2
.end method

.method public g0()Landroid/os/Bundle;
  .catchall { :L0 .. :L1 } :L4
  .registers 6
  .line 1
    invoke-static { }, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
    move-result-object v0
  .line 2
    invoke-static { }, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
    move-result-object v1
  :L0
    const-string v2, "android.support.v4.media.session.IMediaSession"
  .line 3
    invoke-virtual { v0, v2 }, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
  .line 4
    iget-object v2, p0, Landroid/support/v4/media/session/b$a$a;->a:Landroid/os/IBinder;
    const/16 v3, 31
    const/4 v4, 0
    invoke-interface { v2, v3, v0, v1, v4 }, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
  .line 5
    invoke-virtual { v1 }, Landroid/os/Parcel;->readException()V
  .line 6
    invoke-virtual { v1 }, Landroid/os/Parcel;->readInt()I
    move-result v2
    if-eqz v2, :L2
  .line 7
    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;
    invoke-interface { v2, v1 }, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    move-result-object v2
    check-cast v2, Landroid/os/Bundle;
  :L1
    goto :L3
  :L2
    const/4 v2, 0
  :L3
  .line 8
    invoke-virtual { v1 }, Landroid/os/Parcel;->recycle()V
  .line 9
    invoke-virtual { v0 }, Landroid/os/Parcel;->recycle()V
    return-object v2
  :L4
    move-exception v2
  .line 10
    invoke-virtual { v1 }, Landroid/os/Parcel;->recycle()V
  .line 11
    invoke-virtual { v0 }, Landroid/os/Parcel;->recycle()V
    throw v2
.end method

.method public i()Landroid/support/v4/media/session/PlaybackStateCompat;
  .catchall { :L0 .. :L1 } :L4
  .registers 6
  .line 1
    invoke-static { }, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
    move-result-object v0
  .line 2
    invoke-static { }, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
    move-result-object v1
  :L0
    const-string v2, "android.support.v4.media.session.IMediaSession"
  .line 3
    invoke-virtual { v0, v2 }, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
  .line 4
    iget-object v2, p0, Landroid/support/v4/media/session/b$a$a;->a:Landroid/os/IBinder;
    const/16 v3, 28
    const/4 v4, 0
    invoke-interface { v2, v3, v0, v1, v4 }, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
  .line 5
    invoke-virtual { v1 }, Landroid/os/Parcel;->readException()V
  .line 6
    invoke-virtual { v1 }, Landroid/os/Parcel;->readInt()I
    move-result v2
    if-eqz v2, :L2
  .line 7
    sget-object v2, Landroid/support/v4/media/session/PlaybackStateCompat;->CREATOR:Landroid/os/Parcelable$Creator;
    invoke-interface { v2, v1 }, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    move-result-object v2
    check-cast v2, Landroid/support/v4/media/session/PlaybackStateCompat;
  :L1
    goto :L3
  :L2
    const/4 v2, 0
  :L3
  .line 8
    invoke-virtual { v1 }, Landroid/os/Parcel;->recycle()V
  .line 9
    invoke-virtual { v0 }, Landroid/os/Parcel;->recycle()V
    return-object v2
  :L4
    move-exception v2
  .line 10
    invoke-virtual { v1 }, Landroid/os/Parcel;->recycle()V
  .line 11
    invoke-virtual { v0 }, Landroid/os/Parcel;->recycle()V
    throw v2
.end method

.method public i0(Landroid/net/Uri;Landroid/os/Bundle;)V
  .catchall { :L0 .. :L5 } :L6
  .registers 7
  .line 1
    invoke-static { }, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
    move-result-object v0
  .line 2
    invoke-static { }, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
    move-result-object v1
  :L0
    const-string v2, "android.support.v4.media.session.IMediaSession"
  .line 3
    invoke-virtual { v0, v2 }, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
    const/4 v2, 1
    const/4 v3, 0
    if-eqz p1, :L1
  .line 4
    invoke-virtual { v0, v2 }, Landroid/os/Parcel;->writeInt(I)V
  .line 5
    invoke-virtual { p1, v0, v3 }, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;I)V
    goto :L2
  :L1
  .line 6
    invoke-virtual { v0, v3 }, Landroid/os/Parcel;->writeInt(I)V
  :L2
    if-eqz p2, :L3
  .line 7
    invoke-virtual { v0, v2 }, Landroid/os/Parcel;->writeInt(I)V
  .line 8
    invoke-virtual { p2, v0, v3 }, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V
    goto :L4
  :L3
  .line 9
    invoke-virtual { v0, v3 }, Landroid/os/Parcel;->writeInt(I)V
  :L4
  .line 10
    iget-object p1, p0, Landroid/support/v4/media/session/b$a$a;->a:Landroid/os/IBinder;
    const/16 p2, 16
    invoke-interface { p1, p2, v0, v1, v3 }, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
  .line 11
    invoke-virtual { v1 }, Landroid/os/Parcel;->readException()V
  :L5
  .line 12
    invoke-virtual { v1 }, Landroid/os/Parcel;->recycle()V
  .line 13
    invoke-virtual { v0 }, Landroid/os/Parcel;->recycle()V
    return-void
  :L6
    move-exception p1
  .line 14
    invoke-virtual { v1 }, Landroid/os/Parcel;->recycle()V
  .line 15
    invoke-virtual { v0 }, Landroid/os/Parcel;->recycle()V
    throw p1
.end method

.method public j0(Landroid/support/v4/media/MediaDescriptionCompat;)V
  .catchall { :L0 .. :L3 } :L4
  .registers 6
  .line 1
    invoke-static { }, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
    move-result-object v0
  .line 2
    invoke-static { }, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
    move-result-object v1
  :L0
    const-string v2, "android.support.v4.media.session.IMediaSession"
  .line 3
    invoke-virtual { v0, v2 }, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
    const/4 v2, 0
    if-eqz p1, :L1
    const/4 v3, 1
  .line 4
    invoke-virtual { v0, v3 }, Landroid/os/Parcel;->writeInt(I)V
  .line 5
    invoke-virtual { p1, v0, v2 }, Landroid/support/v4/media/MediaDescriptionCompat;->writeToParcel(Landroid/os/Parcel;I)V
    goto :L2
  :L1
  .line 6
    invoke-virtual { v0, v2 }, Landroid/os/Parcel;->writeInt(I)V
  :L2
  .line 7
    iget-object p1, p0, Landroid/support/v4/media/session/b$a$a;->a:Landroid/os/IBinder;
    const/16 v3, 43
    invoke-interface { p1, v3, v0, v1, v2 }, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
  .line 8
    invoke-virtual { v1 }, Landroid/os/Parcel;->readException()V
  :L3
  .line 9
    invoke-virtual { v1 }, Landroid/os/Parcel;->recycle()V
  .line 10
    invoke-virtual { v0 }, Landroid/os/Parcel;->recycle()V
    return-void
  :L4
    move-exception p1
  .line 11
    invoke-virtual { v1 }, Landroid/os/Parcel;->recycle()V
  .line 12
    invoke-virtual { v0 }, Landroid/os/Parcel;->recycle()V
    throw p1
.end method

.method public k0()Z
  .catchall { :L0 .. :L1 } :L3
  .registers 6
  .line 1
    invoke-static { }, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
    move-result-object v0
  .line 2
    invoke-static { }, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
    move-result-object v1
  :L0
    const-string v2, "android.support.v4.media.session.IMediaSession"
  .line 3
    invoke-virtual { v0, v2 }, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
  .line 4
    iget-object v2, p0, Landroid/support/v4/media/session/b$a$a;->a:Landroid/os/IBinder;
    const/4 v3, 5
    const/4 v4, 0
    invoke-interface { v2, v3, v0, v1, v4 }, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
  .line 5
    invoke-virtual { v1 }, Landroid/os/Parcel;->readException()V
  .line 6
    invoke-virtual { v1 }, Landroid/os/Parcel;->readInt()I
    move-result v2
  :L1
    if-eqz v2, :L2
    const/4 v4, 1
  :L2
  .line 7
    invoke-virtual { v1 }, Landroid/os/Parcel;->recycle()V
  .line 8
    invoke-virtual { v0 }, Landroid/os/Parcel;->recycle()V
    return v4
  :L3
    move-exception v2
  .line 9
    invoke-virtual { v1 }, Landroid/os/Parcel;->recycle()V
  .line 10
    invoke-virtual { v0 }, Landroid/os/Parcel;->recycle()V
    throw v2
.end method

.method public l0(Landroid/support/v4/media/MediaDescriptionCompat;)V
  .catchall { :L0 .. :L3 } :L4
  .registers 6
  .line 1
    invoke-static { }, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
    move-result-object v0
  .line 2
    invoke-static { }, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
    move-result-object v1
  :L0
    const-string v2, "android.support.v4.media.session.IMediaSession"
  .line 3
    invoke-virtual { v0, v2 }, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
    const/4 v2, 0
    if-eqz p1, :L1
    const/4 v3, 1
  .line 4
    invoke-virtual { v0, v3 }, Landroid/os/Parcel;->writeInt(I)V
  .line 5
    invoke-virtual { p1, v0, v2 }, Landroid/support/v4/media/MediaDescriptionCompat;->writeToParcel(Landroid/os/Parcel;I)V
    goto :L2
  :L1
  .line 6
    invoke-virtual { v0, v2 }, Landroid/os/Parcel;->writeInt(I)V
  :L2
  .line 7
    iget-object p1, p0, Landroid/support/v4/media/session/b$a$a;->a:Landroid/os/IBinder;
    const/16 v3, 41
    invoke-interface { p1, v3, v0, v1, v2 }, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
  .line 8
    invoke-virtual { v1 }, Landroid/os/Parcel;->readException()V
  :L3
  .line 9
    invoke-virtual { v1 }, Landroid/os/Parcel;->recycle()V
  .line 10
    invoke-virtual { v0 }, Landroid/os/Parcel;->recycle()V
    return-void
  :L4
    move-exception p1
  .line 11
    invoke-virtual { v1 }, Landroid/os/Parcel;->recycle()V
  .line 12
    invoke-virtual { v0 }, Landroid/os/Parcel;->recycle()V
    throw p1
.end method

.method public m0()Landroid/app/PendingIntent;
  .catchall { :L0 .. :L1 } :L4
  .registers 6
  .line 1
    invoke-static { }, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
    move-result-object v0
  .line 2
    invoke-static { }, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
    move-result-object v1
  :L0
    const-string v2, "android.support.v4.media.session.IMediaSession"
  .line 3
    invoke-virtual { v0, v2 }, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
  .line 4
    iget-object v2, p0, Landroid/support/v4/media/session/b$a$a;->a:Landroid/os/IBinder;
    const/16 v3, 8
    const/4 v4, 0
    invoke-interface { v2, v3, v0, v1, v4 }, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
  .line 5
    invoke-virtual { v1 }, Landroid/os/Parcel;->readException()V
  .line 6
    invoke-virtual { v1 }, Landroid/os/Parcel;->readInt()I
    move-result v2
    if-eqz v2, :L2
  .line 7
    sget-object v2, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;
    invoke-interface { v2, v1 }, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    move-result-object v2
    check-cast v2, Landroid/app/PendingIntent;
  :L1
    goto :L3
  :L2
    const/4 v2, 0
  :L3
  .line 8
    invoke-virtual { v1 }, Landroid/os/Parcel;->recycle()V
  .line 9
    invoke-virtual { v0 }, Landroid/os/Parcel;->recycle()V
    return-object v2
  :L4
    move-exception v2
  .line 10
    invoke-virtual { v1 }, Landroid/os/Parcel;->recycle()V
  .line 11
    invoke-virtual { v0 }, Landroid/os/Parcel;->recycle()V
    throw v2
.end method

.method public n0()I
  .catchall { :L0 .. :L1 } :L2
  .registers 6
  .line 1
    invoke-static { }, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
    move-result-object v0
  .line 2
    invoke-static { }, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
    move-result-object v1
  :L0
    const-string v2, "android.support.v4.media.session.IMediaSession"
  .line 3
    invoke-virtual { v0, v2 }, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
  .line 4
    iget-object v2, p0, Landroid/support/v4/media/session/b$a$a;->a:Landroid/os/IBinder;
    const/16 v3, 47
    const/4 v4, 0
    invoke-interface { v2, v3, v0, v1, v4 }, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
  .line 5
    invoke-virtual { v1 }, Landroid/os/Parcel;->readException()V
  .line 6
    invoke-virtual { v1 }, Landroid/os/Parcel;->readInt()I
    move-result v2
  :L1
  .line 7
    invoke-virtual { v1 }, Landroid/os/Parcel;->recycle()V
  .line 8
    invoke-virtual { v0 }, Landroid/os/Parcel;->recycle()V
    return v2
  :L2
    move-exception v2
  .line 9
    invoke-virtual { v1 }, Landroid/os/Parcel;->recycle()V
  .line 10
    invoke-virtual { v0 }, Landroid/os/Parcel;->recycle()V
    throw v2
.end method

.method public next()V
  .catchall { :L0 .. :L1 } :L2
  .registers 6
  .line 1
    invoke-static { }, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
    move-result-object v0
  .line 2
    invoke-static { }, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
    move-result-object v1
  :L0
    const-string v2, "android.support.v4.media.session.IMediaSession"
  .line 3
    invoke-virtual { v0, v2 }, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
  .line 4
    iget-object v2, p0, Landroid/support/v4/media/session/b$a$a;->a:Landroid/os/IBinder;
    const/16 v3, 20
    const/4 v4, 0
    invoke-interface { v2, v3, v0, v1, v4 }, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
  .line 5
    invoke-virtual { v1 }, Landroid/os/Parcel;->readException()V
  :L1
  .line 6
    invoke-virtual { v1 }, Landroid/os/Parcel;->recycle()V
  .line 7
    invoke-virtual { v0 }, Landroid/os/Parcel;->recycle()V
    return-void
  :L2
    move-exception v2
  .line 8
    invoke-virtual { v1 }, Landroid/os/Parcel;->recycle()V
  .line 9
    invoke-virtual { v0 }, Landroid/os/Parcel;->recycle()V
    throw v2
.end method

.method public o0(J)V
  .catchall { :L0 .. :L1 } :L2
  .registers 6
  .line 1
    invoke-static { }, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
    move-result-object v0
  .line 2
    invoke-static { }, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
    move-result-object v1
  :L0
    const-string v2, "android.support.v4.media.session.IMediaSession"
  .line 3
    invoke-virtual { v0, v2 }, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
  .line 4
    invoke-virtual { v0, p1, p2 }, Landroid/os/Parcel;->writeLong(J)V
  .line 5
    iget-object p1, p0, Landroid/support/v4/media/session/b$a$a;->a:Landroid/os/IBinder;
    const/16 p2, 24
    const/4 v2, 0
    invoke-interface { p1, p2, v0, v1, v2 }, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
  .line 6
    invoke-virtual { v1 }, Landroid/os/Parcel;->readException()V
  :L1
  .line 7
    invoke-virtual { v1 }, Landroid/os/Parcel;->recycle()V
  .line 8
    invoke-virtual { v0 }, Landroid/os/Parcel;->recycle()V
    return-void
  :L2
    move-exception p1
  .line 9
    invoke-virtual { v1 }, Landroid/os/Parcel;->recycle()V
  .line 10
    invoke-virtual { v0 }, Landroid/os/Parcel;->recycle()V
    throw p1
.end method

.method public p0(I)V
  .catchall { :L0 .. :L1 } :L2
  .registers 6
  .line 1
    invoke-static { }, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
    move-result-object v0
  .line 2
    invoke-static { }, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
    move-result-object v1
  :L0
    const-string v2, "android.support.v4.media.session.IMediaSession"
  .line 3
    invoke-virtual { v0, v2 }, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
  .line 4
    invoke-virtual { v0, p1 }, Landroid/os/Parcel;->writeInt(I)V
  .line 5
    iget-object p1, p0, Landroid/support/v4/media/session/b$a$a;->a:Landroid/os/IBinder;
    const/16 v2, 48
    const/4 v3, 0
    invoke-interface { p1, v2, v0, v1, v3 }, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
  .line 6
    invoke-virtual { v1 }, Landroid/os/Parcel;->readException()V
  :L1
  .line 7
    invoke-virtual { v1 }, Landroid/os/Parcel;->recycle()V
  .line 8
    invoke-virtual { v0 }, Landroid/os/Parcel;->recycle()V
    return-void
  :L2
    move-exception p1
  .line 9
    invoke-virtual { v1 }, Landroid/os/Parcel;->recycle()V
  .line 10
    invoke-virtual { v0 }, Landroid/os/Parcel;->recycle()V
    throw p1
.end method

.method public r(I)V
  .catchall { :L0 .. :L1 } :L2
  .registers 6
  .line 1
    invoke-static { }, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
    move-result-object v0
  .line 2
    invoke-static { }, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
    move-result-object v1
  :L0
    const-string v2, "android.support.v4.media.session.IMediaSession"
  .line 3
    invoke-virtual { v0, v2 }, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
  .line 4
    invoke-virtual { v0, p1 }, Landroid/os/Parcel;->writeInt(I)V
  .line 5
    iget-object p1, p0, Landroid/support/v4/media/session/b$a$a;->a:Landroid/os/IBinder;
    const/16 v2, 39
    const/4 v3, 0
    invoke-interface { p1, v2, v0, v1, v3 }, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
  .line 6
    invoke-virtual { v1 }, Landroid/os/Parcel;->readException()V
  :L1
  .line 7
    invoke-virtual { v1 }, Landroid/os/Parcel;->recycle()V
  .line 8
    invoke-virtual { v0 }, Landroid/os/Parcel;->recycle()V
    return-void
  :L2
    move-exception p1
  .line 9
    invoke-virtual { v1 }, Landroid/os/Parcel;->recycle()V
  .line 10
    invoke-virtual { v0 }, Landroid/os/Parcel;->recycle()V
    throw p1
.end method

.method public r0(I)V
  .catchall { :L0 .. :L1 } :L2
  .registers 6
  .line 1
    invoke-static { }, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
    move-result-object v0
  .line 2
    invoke-static { }, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
    move-result-object v1
  :L0
    const-string v2, "android.support.v4.media.session.IMediaSession"
  .line 3
    invoke-virtual { v0, v2 }, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
  .line 4
    invoke-virtual { v0, p1 }, Landroid/os/Parcel;->writeInt(I)V
  .line 5
    iget-object p1, p0, Landroid/support/v4/media/session/b$a$a;->a:Landroid/os/IBinder;
    const/16 v2, 44
    const/4 v3, 0
    invoke-interface { p1, v2, v0, v1, v3 }, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
  .line 6
    invoke-virtual { v1 }, Landroid/os/Parcel;->readException()V
  :L1
  .line 7
    invoke-virtual { v1 }, Landroid/os/Parcel;->recycle()V
  .line 8
    invoke-virtual { v0 }, Landroid/os/Parcel;->recycle()V
    return-void
  :L2
    move-exception p1
  .line 9
    invoke-virtual { v1 }, Landroid/os/Parcel;->recycle()V
  .line 10
    invoke-virtual { v0 }, Landroid/os/Parcel;->recycle()V
    throw p1
.end method

.method public s0()I
  .catchall { :L0 .. :L1 } :L2
  .registers 6
  .line 1
    invoke-static { }, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
    move-result-object v0
  .line 2
    invoke-static { }, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
    move-result-object v1
  :L0
    const-string v2, "android.support.v4.media.session.IMediaSession"
  .line 3
    invoke-virtual { v0, v2 }, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
  .line 4
    iget-object v2, p0, Landroid/support/v4/media/session/b$a$a;->a:Landroid/os/IBinder;
    const/16 v3, 32
    const/4 v4, 0
    invoke-interface { v2, v3, v0, v1, v4 }, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
  .line 5
    invoke-virtual { v1 }, Landroid/os/Parcel;->readException()V
  .line 6
    invoke-virtual { v1 }, Landroid/os/Parcel;->readInt()I
    move-result v2
  :L1
  .line 7
    invoke-virtual { v1 }, Landroid/os/Parcel;->recycle()V
  .line 8
    invoke-virtual { v0 }, Landroid/os/Parcel;->recycle()V
    return v2
  :L2
    move-exception v2
  .line 9
    invoke-virtual { v1 }, Landroid/os/Parcel;->recycle()V
  .line 10
    invoke-virtual { v0 }, Landroid/os/Parcel;->recycle()V
    throw v2
.end method

.method public stop()V
  .catchall { :L0 .. :L1 } :L2
  .registers 6
  .line 1
    invoke-static { }, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
    move-result-object v0
  .line 2
    invoke-static { }, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
    move-result-object v1
  :L0
    const-string v2, "android.support.v4.media.session.IMediaSession"
  .line 3
    invoke-virtual { v0, v2 }, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
  .line 4
    iget-object v2, p0, Landroid/support/v4/media/session/b$a$a;->a:Landroid/os/IBinder;
    const/16 v3, 19
    const/4 v4, 0
    invoke-interface { v2, v3, v0, v1, v4 }, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
  .line 5
    invoke-virtual { v1 }, Landroid/os/Parcel;->readException()V
  :L1
  .line 6
    invoke-virtual { v1 }, Landroid/os/Parcel;->recycle()V
  .line 7
    invoke-virtual { v0 }, Landroid/os/Parcel;->recycle()V
    return-void
  :L2
    move-exception v2
  .line 8
    invoke-virtual { v1 }, Landroid/os/Parcel;->recycle()V
  .line 9
    invoke-virtual { v0 }, Landroid/os/Parcel;->recycle()V
    throw v2
.end method

.method public t()V
  .catchall { :L0 .. :L1 } :L2
  .registers 6
  .line 1
    invoke-static { }, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
    move-result-object v0
  .line 2
    invoke-static { }, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
    move-result-object v1
  :L0
    const-string v2, "android.support.v4.media.session.IMediaSession"
  .line 3
    invoke-virtual { v0, v2 }, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
  .line 4
    iget-object v2, p0, Landroid/support/v4/media/session/b$a$a;->a:Landroid/os/IBinder;
    const/16 v3, 21
    const/4 v4, 0
    invoke-interface { v2, v3, v0, v1, v4 }, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
  .line 5
    invoke-virtual { v1 }, Landroid/os/Parcel;->readException()V
  :L1
  .line 6
    invoke-virtual { v1 }, Landroid/os/Parcel;->recycle()V
  .line 7
    invoke-virtual { v0 }, Landroid/os/Parcel;->recycle()V
    return-void
  :L2
    move-exception v2
  .line 8
    invoke-virtual { v1 }, Landroid/os/Parcel;->recycle()V
  .line 9
    invoke-virtual { v0 }, Landroid/os/Parcel;->recycle()V
    throw v2
.end method

.method public t0(Ljava/lang/String;Landroid/os/Bundle;)V
  .catchall { :L0 .. :L3 } :L4
  .registers 6
  .line 1
    invoke-static { }, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
    move-result-object v0
  .line 2
    invoke-static { }, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
    move-result-object v1
  :L0
    const-string v2, "android.support.v4.media.session.IMediaSession"
  .line 3
    invoke-virtual { v0, v2 }, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
  .line 4
    invoke-virtual { v0, p1 }, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
    const/4 p1, 0
    if-eqz p2, :L1
    const/4 v2, 1
  .line 5
    invoke-virtual { v0, v2 }, Landroid/os/Parcel;->writeInt(I)V
  .line 6
    invoke-virtual { p2, v0, p1 }, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V
    goto :L2
  :L1
  .line 7
    invoke-virtual { v0, p1 }, Landroid/os/Parcel;->writeInt(I)V
  :L2
  .line 8
    iget-object p2, p0, Landroid/support/v4/media/session/b$a$a;->a:Landroid/os/IBinder;
    const/16 v2, 35
    invoke-interface { p2, v2, v0, v1, p1 }, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
  .line 9
    invoke-virtual { v1 }, Landroid/os/Parcel;->readException()V
  :L3
  .line 10
    invoke-virtual { v1 }, Landroid/os/Parcel;->recycle()V
  .line 11
    invoke-virtual { v0 }, Landroid/os/Parcel;->recycle()V
    return-void
  :L4
    move-exception p1
  .line 12
    invoke-virtual { v1 }, Landroid/os/Parcel;->recycle()V
  .line 13
    invoke-virtual { v0 }, Landroid/os/Parcel;->recycle()V
    throw p1
.end method

.method public u0()Z
  .catchall { :L0 .. :L1 } :L3
  .registers 6
  .line 1
    invoke-static { }, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
    move-result-object v0
  .line 2
    invoke-static { }, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
    move-result-object v1
  :L0
    const-string v2, "android.support.v4.media.session.IMediaSession"
  .line 3
    invoke-virtual { v0, v2 }, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
  .line 4
    iget-object v2, p0, Landroid/support/v4/media/session/b$a$a;->a:Landroid/os/IBinder;
    const/16 v3, 45
    const/4 v4, 0
    invoke-interface { v2, v3, v0, v1, v4 }, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
  .line 5
    invoke-virtual { v1 }, Landroid/os/Parcel;->readException()V
  .line 6
    invoke-virtual { v1 }, Landroid/os/Parcel;->readInt()I
    move-result v2
  :L1
    if-eqz v2, :L2
    const/4 v4, 1
  :L2
  .line 7
    invoke-virtual { v1 }, Landroid/os/Parcel;->recycle()V
  .line 8
    invoke-virtual { v0 }, Landroid/os/Parcel;->recycle()V
    return v4
  :L3
    move-exception v2
  .line 9
    invoke-virtual { v1 }, Landroid/os/Parcel;->recycle()V
  .line 10
    invoke-virtual { v0 }, Landroid/os/Parcel;->recycle()V
    throw v2
.end method

.method public w()V
  .catchall { :L0 .. :L1 } :L2
  .registers 6
  .line 1
    invoke-static { }, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
    move-result-object v0
  .line 2
    invoke-static { }, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
    move-result-object v1
  :L0
    const-string v2, "android.support.v4.media.session.IMediaSession"
  .line 3
    invoke-virtual { v0, v2 }, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
  .line 4
    iget-object v2, p0, Landroid/support/v4/media/session/b$a$a;->a:Landroid/os/IBinder;
    const/16 v3, 23
    const/4 v4, 0
    invoke-interface { v2, v3, v0, v1, v4 }, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
  .line 5
    invoke-virtual { v1 }, Landroid/os/Parcel;->readException()V
  :L1
  .line 6
    invoke-virtual { v1 }, Landroid/os/Parcel;->recycle()V
  .line 7
    invoke-virtual { v0 }, Landroid/os/Parcel;->recycle()V
    return-void
  :L2
    move-exception v2
  .line 8
    invoke-virtual { v1 }, Landroid/os/Parcel;->recycle()V
  .line 9
    invoke-virtual { v0 }, Landroid/os/Parcel;->recycle()V
    throw v2
.end method

.method public x()Ljava/lang/CharSequence;
  .catchall { :L0 .. :L1 } :L4
  .registers 6
  .line 1
    invoke-static { }, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
    move-result-object v0
  .line 2
    invoke-static { }, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
    move-result-object v1
  :L0
    const-string v2, "android.support.v4.media.session.IMediaSession"
  .line 3
    invoke-virtual { v0, v2 }, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
  .line 4
    iget-object v2, p0, Landroid/support/v4/media/session/b$a$a;->a:Landroid/os/IBinder;
    const/16 v3, 30
    const/4 v4, 0
    invoke-interface { v2, v3, v0, v1, v4 }, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
  .line 5
    invoke-virtual { v1 }, Landroid/os/Parcel;->readException()V
  .line 6
    invoke-virtual { v1 }, Landroid/os/Parcel;->readInt()I
    move-result v2
    if-eqz v2, :L2
  .line 7
    sget-object v2, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;
    invoke-interface { v2, v1 }, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    move-result-object v2
    check-cast v2, Ljava/lang/CharSequence;
  :L1
    goto :L3
  :L2
    const/4 v2, 0
  :L3
  .line 8
    invoke-virtual { v1 }, Landroid/os/Parcel;->recycle()V
  .line 9
    invoke-virtual { v0 }, Landroid/os/Parcel;->recycle()V
    return-object v2
  :L4
    move-exception v2
  .line 10
    invoke-virtual { v1 }, Landroid/os/Parcel;->recycle()V
  .line 11
    invoke-virtual { v0 }, Landroid/os/Parcel;->recycle()V
    throw v2
.end method

.method public x0()Ljava/lang/String;
  .catchall { :L0 .. :L1 } :L2
  .registers 6
  .line 1
    invoke-static { }, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
    move-result-object v0
  .line 2
    invoke-static { }, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
    move-result-object v1
  :L0
    const-string v2, "android.support.v4.media.session.IMediaSession"
  .line 3
    invoke-virtual { v0, v2 }, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
  .line 4
    iget-object v2, p0, Landroid/support/v4/media/session/b$a$a;->a:Landroid/os/IBinder;
    const/4 v3, 6
    const/4 v4, 0
    invoke-interface { v2, v3, v0, v1, v4 }, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
  .line 5
    invoke-virtual { v1 }, Landroid/os/Parcel;->readException()V
  .line 6
    invoke-virtual { v1 }, Landroid/os/Parcel;->readString()Ljava/lang/String;
    move-result-object v2
  :L1
  .line 7
    invoke-virtual { v1 }, Landroid/os/Parcel;->recycle()V
  .line 8
    invoke-virtual { v0 }, Landroid/os/Parcel;->recycle()V
    return-object v2
  :L2
    move-exception v2
  .line 9
    invoke-virtual { v1 }, Landroid/os/Parcel;->recycle()V
  .line 10
    invoke-virtual { v0 }, Landroid/os/Parcel;->recycle()V
    throw v2
.end method
