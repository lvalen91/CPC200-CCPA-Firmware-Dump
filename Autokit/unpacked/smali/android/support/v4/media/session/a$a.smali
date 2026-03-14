.class public abstract Landroid/support/v4/media/session/a$a;
.super Landroid/os/Binder;
.implements Landroid/support/v4/media/session/a;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Landroid/support/v4/media/session/a;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 1033
  name = "a"
.end annotation
.annotation system Ldalvik/annotation/MemberClasses;
  value = {
    Landroid/support/v4/media/session/a$a$a;
  }
.end annotation

.method public constructor <init>()V
  .registers 2
  .line 1
    invoke-direct { p0 }, Landroid/os/Binder;-><init>()V
    const-string v0, "android.support.v4.media.session.IMediaControllerCallback"
  .line 2
    invoke-virtual { p0, p0, v0 }, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V
    return-void
.end method

.method public static u(Landroid/os/IBinder;)Landroid/support/v4/media/session/a;
  .registers 3
    if-nez p0, :L0
    const/4 p0, 0
    return-object p0
  :L0
    const-string v0, "android.support.v4.media.session.IMediaControllerCallback"
  .line 1
    invoke-interface { p0, v0 }, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;
    move-result-object v0
    if-eqz v0, :L1
  .line 2
    instance-of v1, v0, Landroid/support/v4/media/session/a;
    if-eqz v1, :L1
  .line 3
    check-cast v0, Landroid/support/v4/media/session/a;
    return-object v0
  :L1
  .line 4
    new-instance v0, Landroid/support/v4/media/session/a$a$a;
    invoke-direct { v0, p0 }, Landroid/support/v4/media/session/a$a$a;-><init>(Landroid/os/IBinder;)V
    return-object v0
.end method

.method public asBinder()Landroid/os/IBinder;
  .registers 1
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
  .registers 9
    const v0, 1598968902
    const-string v1, "android.support.v4.media.session.IMediaControllerCallback"
    const/4 v2, 1
    if-eq p1, v0, :L21
    const/4 v0, 0
    const/4 v3, 0
    packed-switch p1, :L22
  .line 1
    invoke-super { p0, p1, p2, p3, p4 }, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    move-result p1
    return p1
  :L0
  .line 2
    invoke-virtual { p2, v1 }, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
  .line 3
    invoke-interface { p0 }, Landroid/support/v4/media/session/a;->C0()V
    return v2
  :L1
  .line 4
    invoke-virtual { p2, v1 }, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
  .line 5
    invoke-virtual { p2 }, Landroid/os/Parcel;->readInt()I
    move-result p1
  .line 6
    invoke-interface { p0, p1 }, Landroid/support/v4/media/session/a;->B0(I)V
    return v2
  :L2
  .line 7
    invoke-virtual { p2, v1 }, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
  .line 8
    invoke-virtual { p2 }, Landroid/os/Parcel;->readInt()I
    move-result p1
    if-eqz p1, :L3
    const/4 v0, 1
  :L3
  .line 9
    invoke-interface { p0, v0 }, Landroid/support/v4/media/session/a;->q0(Z)V
    return v2
  :L4
  .line 10
    invoke-virtual { p2, v1 }, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
  .line 11
    invoke-virtual { p2 }, Landroid/os/Parcel;->readInt()I
    move-result p1
    if-eqz p1, :L5
    const/4 v0, 1
  :L5
  .line 12
    invoke-interface { p0, v0 }, Landroid/support/v4/media/session/a;->s(Z)V
    return v2
  :L6
  .line 13
    invoke-virtual { p2, v1 }, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
  .line 14
    invoke-virtual { p2 }, Landroid/os/Parcel;->readInt()I
    move-result p1
  .line 15
    invoke-interface { p0, p1 }, Landroid/support/v4/media/session/a;->e0(I)V
    return v2
  :L7
  .line 16
    invoke-virtual { p2, v1 }, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
  .line 17
    invoke-virtual { p2 }, Landroid/os/Parcel;->readInt()I
    move-result p1
    if-eqz p1, :L8
  .line 18
    sget-object p1, Landroid/support/v4/media/session/ParcelableVolumeInfo;->CREATOR:Landroid/os/Parcelable$Creator;
    invoke-interface { p1, p2 }, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    move-result-object p1
    move-object v3, p1
    check-cast v3, Landroid/support/v4/media/session/ParcelableVolumeInfo;
  :L8
  .line 19
    invoke-interface { p0, v3 }, Landroid/support/v4/media/session/a;->P0(Landroid/support/v4/media/session/ParcelableVolumeInfo;)V
    return v2
  :L9
  .line 20
    invoke-virtual { p2, v1 }, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
  .line 21
    invoke-virtual { p2 }, Landroid/os/Parcel;->readInt()I
    move-result p1
    if-eqz p1, :L10
  .line 22
    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;
    invoke-interface { p1, p2 }, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    move-result-object p1
    move-object v3, p1
    check-cast v3, Landroid/os/Bundle;
  :L10
  .line 23
    invoke-interface { p0, v3 }, Landroid/support/v4/media/session/a;->o(Landroid/os/Bundle;)V
    return v2
  :L11
  .line 24
    invoke-virtual { p2, v1 }, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
  .line 25
    invoke-virtual { p2 }, Landroid/os/Parcel;->readInt()I
    move-result p1
    if-eqz p1, :L12
  .line 26
    sget-object p1, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;
    invoke-interface { p1, p2 }, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    move-result-object p1
    move-object v3, p1
    check-cast v3, Ljava/lang/CharSequence;
  :L12
  .line 27
    invoke-interface { p0, v3 }, Landroid/support/v4/media/session/a;->c(Ljava/lang/CharSequence;)V
    return v2
  :L13
  .line 28
    invoke-virtual { p2, v1 }, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
  .line 29
    sget-object p1, Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;->CREATOR:Landroid/os/Parcelable$Creator;
    invoke-virtual { p2, p1 }, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;
    move-result-object p1
  .line 30
    invoke-interface { p0, p1 }, Landroid/support/v4/media/session/a;->a(Ljava/util/List;)V
    return v2
  :L14
  .line 31
    invoke-virtual { p2, v1 }, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
  .line 32
    invoke-virtual { p2 }, Landroid/os/Parcel;->readInt()I
    move-result p1
    if-eqz p1, :L15
  .line 33
    sget-object p1, Landroid/support/v4/media/MediaMetadataCompat;->CREATOR:Landroid/os/Parcelable$Creator;
    invoke-interface { p1, p2 }, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    move-result-object p1
    move-object v3, p1
    check-cast v3, Landroid/support/v4/media/MediaMetadataCompat;
  :L15
  .line 34
    invoke-interface { p0, v3 }, Landroid/support/v4/media/session/a;->M(Landroid/support/v4/media/MediaMetadataCompat;)V
    return v2
  :L16
  .line 35
    invoke-virtual { p2, v1 }, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
  .line 36
    invoke-virtual { p2 }, Landroid/os/Parcel;->readInt()I
    move-result p1
    if-eqz p1, :L17
  .line 37
    sget-object p1, Landroid/support/v4/media/session/PlaybackStateCompat;->CREATOR:Landroid/os/Parcelable$Creator;
    invoke-interface { p1, p2 }, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    move-result-object p1
    move-object v3, p1
    check-cast v3, Landroid/support/v4/media/session/PlaybackStateCompat;
  :L17
  .line 38
    invoke-interface { p0, v3 }, Landroid/support/v4/media/session/a;->G0(Landroid/support/v4/media/session/PlaybackStateCompat;)V
    return v2
  :L18
  .line 39
    invoke-virtual { p2, v1 }, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
  .line 40
    invoke-interface { p0 }, Landroid/support/v4/media/session/a;->e()V
    return v2
  :L19
  .line 41
    invoke-virtual { p2, v1 }, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
  .line 42
    invoke-virtual { p2 }, Landroid/os/Parcel;->readString()Ljava/lang/String;
    move-result-object p1
  .line 43
    invoke-virtual { p2 }, Landroid/os/Parcel;->readInt()I
    move-result p3
    if-eqz p3, :L20
  .line 44
    sget-object p3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;
    invoke-interface { p3, p2 }, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    move-result-object p2
    move-object v3, p2
    check-cast v3, Landroid/os/Bundle;
  :L20
  .line 45
    invoke-interface { p0, p1, v3 }, Landroid/support/v4/media/session/a;->H0(Ljava/lang/String;Landroid/os/Bundle;)V
    return v2
  :L21
  .line 46
    invoke-virtual { p3, v1 }, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
    return v2
  :L22
  .packed-switch 1
    :L19
    :L18
    :L16
    :L14
    :L13
    :L11
    :L9
    :L7
    :L6
    :L4
    :L2
    :L1
    :L0
  .end packed-switch
.end method
