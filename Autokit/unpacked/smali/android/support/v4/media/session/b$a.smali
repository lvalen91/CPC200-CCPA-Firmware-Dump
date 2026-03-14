.class public abstract Landroid/support/v4/media/session/b$a;
.super Landroid/os/Binder;
.implements Landroid/support/v4/media/session/b;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Landroid/support/v4/media/session/b;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 1033
  name = "a"
.end annotation
.annotation system Ldalvik/annotation/MemberClasses;
  value = {
    Landroid/support/v4/media/session/b$a$a;
  }
.end annotation

.method public constructor <init>()V
  .registers 2
  .line 1
    invoke-direct { p0 }, Landroid/os/Binder;-><init>()V
    const-string v0, "android.support.v4.media.session.IMediaSession"
  .line 2
    invoke-virtual { p0, p0, v0 }, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V
    return-void
.end method

.method public static u(Landroid/os/IBinder;)Landroid/support/v4/media/session/b;
  .registers 3
    if-nez p0, :L0
    const/4 p0, 0
    return-object p0
  :L0
    const-string v0, "android.support.v4.media.session.IMediaSession"
  .line 1
    invoke-interface { p0, v0 }, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;
    move-result-object v0
    if-eqz v0, :L1
  .line 2
    instance-of v1, v0, Landroid/support/v4/media/session/b;
    if-eqz v1, :L1
  .line 3
    check-cast v0, Landroid/support/v4/media/session/b;
    return-object v0
  :L1
  .line 4
    new-instance v0, Landroid/support/v4/media/session/b$a$a;
    invoke-direct { v0, p0 }, Landroid/support/v4/media/session/b$a$a;-><init>(Landroid/os/IBinder;)V
    return-object v0
.end method

.method public asBinder()Landroid/os/IBinder;
  .registers 1
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
  .registers 9
    const/16 v0, 51
    const/4 v1, 0
    const-string v2, "android.support.v4.media.session.IMediaSession"
    const/4 v3, 1
    if-eq p1, v0, :L82
    const v0, 1598968902
    if-eq p1, v0, :L81
    const/4 v0, 0
    packed-switch p1, :L86
  .line 1
    invoke-super { p0, p1, p2, p3, p4 }, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    move-result p1
    return p1
  :L0
  .line 2
    invoke-virtual { p2, v2 }, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
  .line 3
    invoke-virtual { p2 }, Landroid/os/Parcel;->readInt()I
    move-result p1
  .line 4
    invoke-interface { p0, p1 }, Landroid/support/v4/media/session/b;->p0(I)V
  .line 5
    invoke-virtual { p3 }, Landroid/os/Parcel;->writeNoException()V
    return v3
  :L1
  .line 6
    invoke-virtual { p2, v2 }, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
  .line 7
    invoke-interface { p0 }, Landroid/support/v4/media/session/b;->n0()I
    move-result p1
  .line 8
    invoke-virtual { p3 }, Landroid/os/Parcel;->writeNoException()V
  .line 9
    invoke-virtual { p3, p1 }, Landroid/os/Parcel;->writeInt(I)V
    return v3
  :L2
  .line 10
    invoke-virtual { p2, v2 }, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
  .line 11
    invoke-virtual { p2 }, Landroid/os/Parcel;->readInt()I
    move-result p1
    if-eqz p1, :L3
    const/4 v0, 1
  :L3
  .line 12
    invoke-interface { p0, v0 }, Landroid/support/v4/media/session/b;->Q(Z)V
  .line 13
    invoke-virtual { p3 }, Landroid/os/Parcel;->writeNoException()V
    return v3
  :L4
  .line 14
    invoke-virtual { p2, v2 }, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
  .line 15
    invoke-interface { p0 }, Landroid/support/v4/media/session/b;->u0()Z
    move-result p1
  .line 16
    invoke-virtual { p3 }, Landroid/os/Parcel;->writeNoException()V
  .line 17
    invoke-virtual { p3, p1 }, Landroid/os/Parcel;->writeInt(I)V
    return v3
  :L5
  .line 18
    invoke-virtual { p2, v2 }, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
  .line 19
    invoke-virtual { p2 }, Landroid/os/Parcel;->readInt()I
    move-result p1
  .line 20
    invoke-interface { p0, p1 }, Landroid/support/v4/media/session/b;->r0(I)V
  .line 21
    invoke-virtual { p3 }, Landroid/os/Parcel;->writeNoException()V
    return v3
  :L6
  .line 22
    invoke-virtual { p2, v2 }, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
  .line 23
    invoke-virtual { p2 }, Landroid/os/Parcel;->readInt()I
    move-result p1
    if-eqz p1, :L7
  .line 24
    sget-object p1, Landroid/support/v4/media/MediaDescriptionCompat;->CREATOR:Landroid/os/Parcelable$Creator;
    invoke-interface { p1, p2 }, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    move-result-object p1
    move-object v1, p1
    check-cast v1, Landroid/support/v4/media/MediaDescriptionCompat;
  :L7
  .line 25
    invoke-interface { p0, v1 }, Landroid/support/v4/media/session/b;->j0(Landroid/support/v4/media/MediaDescriptionCompat;)V
  .line 26
    invoke-virtual { p3 }, Landroid/os/Parcel;->writeNoException()V
    return v3
  :L8
  .line 27
    invoke-virtual { p2, v2 }, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
  .line 28
    invoke-virtual { p2 }, Landroid/os/Parcel;->readInt()I
    move-result p1
    if-eqz p1, :L9
  .line 29
    sget-object p1, Landroid/support/v4/media/MediaDescriptionCompat;->CREATOR:Landroid/os/Parcelable$Creator;
    invoke-interface { p1, p2 }, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    move-result-object p1
    move-object v1, p1
    check-cast v1, Landroid/support/v4/media/MediaDescriptionCompat;
  :L9
  .line 30
    invoke-virtual { p2 }, Landroid/os/Parcel;->readInt()I
    move-result p1
  .line 31
    invoke-interface { p0, v1, p1 }, Landroid/support/v4/media/session/b;->L(Landroid/support/v4/media/MediaDescriptionCompat;I)V
  .line 32
    invoke-virtual { p3 }, Landroid/os/Parcel;->writeNoException()V
    return v3
  :L10
  .line 33
    invoke-virtual { p2, v2 }, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
  .line 34
    invoke-virtual { p2 }, Landroid/os/Parcel;->readInt()I
    move-result p1
    if-eqz p1, :L11
  .line 35
    sget-object p1, Landroid/support/v4/media/MediaDescriptionCompat;->CREATOR:Landroid/os/Parcelable$Creator;
    invoke-interface { p1, p2 }, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    move-result-object p1
    move-object v1, p1
    check-cast v1, Landroid/support/v4/media/MediaDescriptionCompat;
  :L11
  .line 36
    invoke-interface { p0, v1 }, Landroid/support/v4/media/session/b;->l0(Landroid/support/v4/media/MediaDescriptionCompat;)V
  .line 37
    invoke-virtual { p3 }, Landroid/os/Parcel;->writeNoException()V
    return v3
  :L12
  .line 38
    invoke-virtual { p2, v2 }, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
  .line 39
    invoke-virtual { p2 }, Landroid/os/Parcel;->readInt()I
    move-result p1
    if-eqz p1, :L13
    const/4 v0, 1
  :L13
  .line 40
    invoke-interface { p0, v0 }, Landroid/support/v4/media/session/b;->Y(Z)V
  .line 41
    invoke-virtual { p3 }, Landroid/os/Parcel;->writeNoException()V
    return v3
  :L14
  .line 42
    invoke-virtual { p2, v2 }, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
  .line 43
    invoke-virtual { p2 }, Landroid/os/Parcel;->readInt()I
    move-result p1
  .line 44
    invoke-interface { p0, p1 }, Landroid/support/v4/media/session/b;->r(I)V
  .line 45
    invoke-virtual { p3 }, Landroid/os/Parcel;->writeNoException()V
    return v3
  :L15
  .line 46
    invoke-virtual { p2, v2 }, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
  .line 47
    invoke-interface { p0 }, Landroid/support/v4/media/session/b;->P()Z
    move-result p1
  .line 48
    invoke-virtual { p3 }, Landroid/os/Parcel;->writeNoException()V
  .line 49
    invoke-virtual { p3, p1 }, Landroid/os/Parcel;->writeInt(I)V
    return v3
  :L16
  .line 50
    invoke-virtual { p2, v2 }, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
  .line 51
    invoke-interface { p0 }, Landroid/support/v4/media/session/b;->W()I
    move-result p1
  .line 52
    invoke-virtual { p3 }, Landroid/os/Parcel;->writeNoException()V
  .line 53
    invoke-virtual { p3, p1 }, Landroid/os/Parcel;->writeInt(I)V
    return v3
  :L17
  .line 54
    invoke-virtual { p2, v2 }, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
  .line 55
    invoke-virtual { p2 }, Landroid/os/Parcel;->readInt()I
    move-result p1
    if-eqz p1, :L18
  .line 56
    sget-object p1, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;
    invoke-interface { p1, p2 }, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    move-result-object p1
    check-cast p1, Landroid/net/Uri;
    goto :L19
  :L18
    move-object p1, v1
  :L19
  .line 57
    invoke-virtual { p2 }, Landroid/os/Parcel;->readInt()I
    move-result p4
    if-eqz p4, :L20
  .line 58
    sget-object p4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;
    invoke-interface { p4, p2 }, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    move-result-object p2
    move-object v1, p2
    check-cast v1, Landroid/os/Bundle;
  :L20
  .line 59
    invoke-interface { p0, p1, v1 }, Landroid/support/v4/media/session/b;->V(Landroid/net/Uri;Landroid/os/Bundle;)V
  .line 60
    invoke-virtual { p3 }, Landroid/os/Parcel;->writeNoException()V
    return v3
  :L21
  .line 61
    invoke-virtual { p2, v2 }, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
  .line 62
    invoke-virtual { p2 }, Landroid/os/Parcel;->readString()Ljava/lang/String;
    move-result-object p1
  .line 63
    invoke-virtual { p2 }, Landroid/os/Parcel;->readInt()I
    move-result p4
    if-eqz p4, :L22
  .line 64
    sget-object p4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;
    invoke-interface { p4, p2 }, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    move-result-object p2
    move-object v1, p2
    check-cast v1, Landroid/os/Bundle;
  :L22
  .line 65
    invoke-interface { p0, p1, v1 }, Landroid/support/v4/media/session/b;->t0(Ljava/lang/String;Landroid/os/Bundle;)V
  .line 66
    invoke-virtual { p3 }, Landroid/os/Parcel;->writeNoException()V
    return v3
  :L23
  .line 67
    invoke-virtual { p2, v2 }, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
  .line 68
    invoke-virtual { p2 }, Landroid/os/Parcel;->readString()Ljava/lang/String;
    move-result-object p1
  .line 69
    invoke-virtual { p2 }, Landroid/os/Parcel;->readInt()I
    move-result p4
    if-eqz p4, :L24
  .line 70
    sget-object p4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;
    invoke-interface { p4, p2 }, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    move-result-object p2
    move-object v1, p2
    check-cast v1, Landroid/os/Bundle;
  :L24
  .line 71
    invoke-interface { p0, p1, v1 }, Landroid/support/v4/media/session/b;->J(Ljava/lang/String;Landroid/os/Bundle;)V
  .line 72
    invoke-virtual { p3 }, Landroid/os/Parcel;->writeNoException()V
    return v3
  :L25
  .line 73
    invoke-virtual { p2, v2 }, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
  .line 74
    invoke-interface { p0 }, Landroid/support/v4/media/session/b;->A0()V
  .line 75
    invoke-virtual { p3 }, Landroid/os/Parcel;->writeNoException()V
    return v3
  :L26
  .line 76
    invoke-virtual { p2, v2 }, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
  .line 77
    invoke-interface { p0 }, Landroid/support/v4/media/session/b;->s0()I
    move-result p1
  .line 78
    invoke-virtual { p3 }, Landroid/os/Parcel;->writeNoException()V
  .line 79
    invoke-virtual { p3, p1 }, Landroid/os/Parcel;->writeInt(I)V
    return v3
  :L27
  .line 80
    invoke-virtual { p2, v2 }, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
  .line 81
    invoke-interface { p0 }, Landroid/support/v4/media/session/b;->g0()Landroid/os/Bundle;
    move-result-object p1
  .line 82
    invoke-virtual { p3 }, Landroid/os/Parcel;->writeNoException()V
    if-eqz p1, :L28
  .line 83
    invoke-virtual { p3, v3 }, Landroid/os/Parcel;->writeInt(I)V
  .line 84
    invoke-virtual { p1, p3, v3 }, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V
    goto :L29
  :L28
  .line 85
    invoke-virtual { p3, v0 }, Landroid/os/Parcel;->writeInt(I)V
  :L29
    return v3
  :L30
  .line 86
    invoke-virtual { p2, v2 }, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
  .line 87
    invoke-interface { p0 }, Landroid/support/v4/media/session/b;->x()Ljava/lang/CharSequence;
    move-result-object p1
  .line 88
    invoke-virtual { p3 }, Landroid/os/Parcel;->writeNoException()V
    if-eqz p1, :L31
  .line 89
    invoke-virtual { p3, v3 }, Landroid/os/Parcel;->writeInt(I)V
  .line 90
    invoke-static { p1, p3, v3 }, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V
    goto :L32
  :L31
  .line 91
    invoke-virtual { p3, v0 }, Landroid/os/Parcel;->writeInt(I)V
  :L32
    return v3
  :L33
  .line 92
    invoke-virtual { p2, v2 }, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
  .line 93
    invoke-interface { p0 }, Landroid/support/v4/media/session/b;->L0()Ljava/util/List;
    move-result-object p1
  .line 94
    invoke-virtual { p3 }, Landroid/os/Parcel;->writeNoException()V
  .line 95
    invoke-virtual { p3, p1 }, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V
    return v3
  :L34
  .line 96
    invoke-virtual { p2, v2 }, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
  .line 97
    invoke-interface { p0 }, Landroid/support/v4/media/session/b;->i()Landroid/support/v4/media/session/PlaybackStateCompat;
    move-result-object p1
  .line 98
    invoke-virtual { p3 }, Landroid/os/Parcel;->writeNoException()V
    if-eqz p1, :L35
  .line 99
    invoke-virtual { p3, v3 }, Landroid/os/Parcel;->writeInt(I)V
  .line 100
    invoke-virtual { p1, p3, v3 }, Landroid/support/v4/media/session/PlaybackStateCompat;->writeToParcel(Landroid/os/Parcel;I)V
    goto :L36
  :L35
  .line 101
    invoke-virtual { p3, v0 }, Landroid/os/Parcel;->writeInt(I)V
  :L36
    return v3
  :L37
  .line 102
    invoke-virtual { p2, v2 }, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
  .line 103
    invoke-interface { p0 }, Landroid/support/v4/media/session/b;->I()Landroid/support/v4/media/MediaMetadataCompat;
    move-result-object p1
  .line 104
    invoke-virtual { p3 }, Landroid/os/Parcel;->writeNoException()V
    if-eqz p1, :L38
  .line 105
    invoke-virtual { p3, v3 }, Landroid/os/Parcel;->writeInt(I)V
  .line 106
    invoke-virtual { p1, p3, v3 }, Landroid/support/v4/media/MediaMetadataCompat;->writeToParcel(Landroid/os/Parcel;I)V
    goto :L39
  :L38
  .line 107
    invoke-virtual { p3, v0 }, Landroid/os/Parcel;->writeInt(I)V
  :L39
    return v3
  :L40
  .line 108
    invoke-virtual { p2, v2 }, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
  .line 109
    invoke-virtual { p2 }, Landroid/os/Parcel;->readString()Ljava/lang/String;
    move-result-object p1
  .line 110
    invoke-virtual { p2 }, Landroid/os/Parcel;->readInt()I
    move-result p4
    if-eqz p4, :L41
  .line 111
    sget-object p4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;
    invoke-interface { p4, p2 }, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    move-result-object p2
    move-object v1, p2
    check-cast v1, Landroid/os/Bundle;
  :L41
  .line 112
    invoke-interface { p0, p1, v1 }, Landroid/support/v4/media/session/b;->B(Ljava/lang/String;Landroid/os/Bundle;)V
  .line 113
    invoke-virtual { p3 }, Landroid/os/Parcel;->writeNoException()V
    return v3
  :L42
  .line 114
    invoke-virtual { p2, v2 }, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
  .line 115
    invoke-virtual { p2 }, Landroid/os/Parcel;->readInt()I
    move-result p1
    if-eqz p1, :L43
  .line 116
    sget-object p1, Landroid/support/v4/media/RatingCompat;->CREATOR:Landroid/os/Parcelable$Creator;
    invoke-interface { p1, p2 }, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    move-result-object p1
    move-object v1, p1
    check-cast v1, Landroid/support/v4/media/RatingCompat;
  :L43
  .line 117
    invoke-interface { p0, v1 }, Landroid/support/v4/media/session/b;->R(Landroid/support/v4/media/RatingCompat;)V
  .line 118
    invoke-virtual { p3 }, Landroid/os/Parcel;->writeNoException()V
    return v3
  :L44
  .line 119
    invoke-virtual { p2, v2 }, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
  .line 120
    invoke-virtual { p2 }, Landroid/os/Parcel;->readLong()J
    move-result-wide p1
  .line 121
    invoke-interface { p0, p1, p2 }, Landroid/support/v4/media/session/b;->o0(J)V
  .line 122
    invoke-virtual { p3 }, Landroid/os/Parcel;->writeNoException()V
    return v3
  :L45
  .line 123
    invoke-virtual { p2, v2 }, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
  .line 124
    invoke-interface { p0 }, Landroid/support/v4/media/session/b;->w()V
  .line 125
    invoke-virtual { p3 }, Landroid/os/Parcel;->writeNoException()V
    return v3
  :L46
  .line 126
    invoke-virtual { p2, v2 }, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
  .line 127
    invoke-interface { p0 }, Landroid/support/v4/media/session/b;->f0()V
  .line 128
    invoke-virtual { p3 }, Landroid/os/Parcel;->writeNoException()V
    return v3
  :L47
  .line 129
    invoke-virtual { p2, v2 }, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
  .line 130
    invoke-interface { p0 }, Landroid/support/v4/media/session/b;->t()V
  .line 131
    invoke-virtual { p3 }, Landroid/os/Parcel;->writeNoException()V
    return v3
  :L48
  .line 132
    invoke-virtual { p2, v2 }, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
  .line 133
    invoke-interface { p0 }, Landroid/support/v4/media/session/b;->next()V
  .line 134
    invoke-virtual { p3 }, Landroid/os/Parcel;->writeNoException()V
    return v3
  :L49
  .line 135
    invoke-virtual { p2, v2 }, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
  .line 136
    invoke-interface { p0 }, Landroid/support/v4/media/session/b;->stop()V
  .line 137
    invoke-virtual { p3 }, Landroid/os/Parcel;->writeNoException()V
    return v3
  :L50
  .line 138
    invoke-virtual { p2, v2 }, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
  .line 139
    invoke-interface { p0 }, Landroid/support/v4/media/session/b;->E()V
  .line 140
    invoke-virtual { p3 }, Landroid/os/Parcel;->writeNoException()V
    return v3
  :L51
  .line 141
    invoke-virtual { p2, v2 }, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
  .line 142
    invoke-virtual { p2 }, Landroid/os/Parcel;->readLong()J
    move-result-wide p1
  .line 143
    invoke-interface { p0, p1, p2 }, Landroid/support/v4/media/session/b;->X(J)V
  .line 144
    invoke-virtual { p3 }, Landroid/os/Parcel;->writeNoException()V
    return v3
  :L52
  .line 145
    invoke-virtual { p2, v2 }, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
  .line 146
    invoke-virtual { p2 }, Landroid/os/Parcel;->readInt()I
    move-result p1
    if-eqz p1, :L53
  .line 147
    sget-object p1, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;
    invoke-interface { p1, p2 }, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    move-result-object p1
    check-cast p1, Landroid/net/Uri;
    goto :L54
  :L53
    move-object p1, v1
  :L54
  .line 148
    invoke-virtual { p2 }, Landroid/os/Parcel;->readInt()I
    move-result p4
    if-eqz p4, :L55
  .line 149
    sget-object p4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;
    invoke-interface { p4, p2 }, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    move-result-object p2
    move-object v1, p2
    check-cast v1, Landroid/os/Bundle;
  :L55
  .line 150
    invoke-interface { p0, p1, v1 }, Landroid/support/v4/media/session/b;->i0(Landroid/net/Uri;Landroid/os/Bundle;)V
  .line 151
    invoke-virtual { p3 }, Landroid/os/Parcel;->writeNoException()V
    return v3
  :L56
  .line 152
    invoke-virtual { p2, v2 }, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
  .line 153
    invoke-virtual { p2 }, Landroid/os/Parcel;->readString()Ljava/lang/String;
    move-result-object p1
  .line 154
    invoke-virtual { p2 }, Landroid/os/Parcel;->readInt()I
    move-result p4
    if-eqz p4, :L57
  .line 155
    sget-object p4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;
    invoke-interface { p4, p2 }, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    move-result-object p2
    move-object v1, p2
    check-cast v1, Landroid/os/Bundle;
  :L57
  .line 156
    invoke-interface { p0, p1, v1 }, Landroid/support/v4/media/session/b;->Z(Ljava/lang/String;Landroid/os/Bundle;)V
  .line 157
    invoke-virtual { p3 }, Landroid/os/Parcel;->writeNoException()V
    return v3
  :L58
  .line 158
    invoke-virtual { p2, v2 }, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
  .line 159
    invoke-virtual { p2 }, Landroid/os/Parcel;->readString()Ljava/lang/String;
    move-result-object p1
  .line 160
    invoke-virtual { p2 }, Landroid/os/Parcel;->readInt()I
    move-result p4
    if-eqz p4, :L59
  .line 161
    sget-object p4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;
    invoke-interface { p4, p2 }, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    move-result-object p2
    move-object v1, p2
    check-cast v1, Landroid/os/Bundle;
  :L59
  .line 162
    invoke-interface { p0, p1, v1 }, Landroid/support/v4/media/session/b;->S(Ljava/lang/String;Landroid/os/Bundle;)V
  .line 163
    invoke-virtual { p3 }, Landroid/os/Parcel;->writeNoException()V
    return v3
  :L60
  .line 164
    invoke-virtual { p2, v2 }, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
  .line 165
    invoke-interface { p0 }, Landroid/support/v4/media/session/b;->I0()V
  .line 166
    invoke-virtual { p3 }, Landroid/os/Parcel;->writeNoException()V
    return v3
  :L61
  .line 167
    invoke-virtual { p2, v2 }, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
  .line 168
    invoke-virtual { p2 }, Landroid/os/Parcel;->readInt()I
    move-result p1
  .line 169
    invoke-virtual { p2 }, Landroid/os/Parcel;->readInt()I
    move-result p4
  .line 170
    invoke-virtual { p2 }, Landroid/os/Parcel;->readString()Ljava/lang/String;
    move-result-object p2
  .line 171
    invoke-interface { p0, p1, p4, p2 }, Landroid/support/v4/media/session/b;->U(IILjava/lang/String;)V
  .line 172
    invoke-virtual { p3 }, Landroid/os/Parcel;->writeNoException()V
    return v3
  :L62
  .line 173
    invoke-virtual { p2, v2 }, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
  .line 174
    invoke-virtual { p2 }, Landroid/os/Parcel;->readInt()I
    move-result p1
  .line 175
    invoke-virtual { p2 }, Landroid/os/Parcel;->readInt()I
    move-result p4
  .line 176
    invoke-virtual { p2 }, Landroid/os/Parcel;->readString()Ljava/lang/String;
    move-result-object p2
  .line 177
    invoke-interface { p0, p1, p4, p2 }, Landroid/support/v4/media/session/b;->C(IILjava/lang/String;)V
  .line 178
    invoke-virtual { p3 }, Landroid/os/Parcel;->writeNoException()V
    return v3
  :L63
  .line 179
    invoke-virtual { p2, v2 }, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
  .line 180
    invoke-interface { p0 }, Landroid/support/v4/media/session/b;->d0()Landroid/support/v4/media/session/ParcelableVolumeInfo;
    move-result-object p1
  .line 181
    invoke-virtual { p3 }, Landroid/os/Parcel;->writeNoException()V
    if-eqz p1, :L64
  .line 182
    invoke-virtual { p3, v3 }, Landroid/os/Parcel;->writeInt(I)V
  .line 183
    invoke-virtual { p1, p3, v3 }, Landroid/support/v4/media/session/ParcelableVolumeInfo;->writeToParcel(Landroid/os/Parcel;I)V
    goto :L65
  :L64
  .line 184
    invoke-virtual { p3, v0 }, Landroid/os/Parcel;->writeInt(I)V
  :L65
    return v3
  :L66
  .line 185
    invoke-virtual { p2, v2 }, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
  .line 186
    invoke-interface { p0 }, Landroid/support/v4/media/session/b;->T()J
    move-result-wide p1
  .line 187
    invoke-virtual { p3 }, Landroid/os/Parcel;->writeNoException()V
  .line 188
    invoke-virtual { p3, p1, p2 }, Landroid/os/Parcel;->writeLong(J)V
    return v3
  :L67
  .line 189
    invoke-virtual { p2, v2 }, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
  .line 190
    invoke-interface { p0 }, Landroid/support/v4/media/session/b;->m0()Landroid/app/PendingIntent;
    move-result-object p1
  .line 191
    invoke-virtual { p3 }, Landroid/os/Parcel;->writeNoException()V
    if-eqz p1, :L68
  .line 192
    invoke-virtual { p3, v3 }, Landroid/os/Parcel;->writeInt(I)V
  .line 193
    invoke-virtual { p1, p3, v3 }, Landroid/app/PendingIntent;->writeToParcel(Landroid/os/Parcel;I)V
    goto :L69
  :L68
  .line 194
    invoke-virtual { p3, v0 }, Landroid/os/Parcel;->writeInt(I)V
  :L69
    return v3
  :L70
  .line 195
    invoke-virtual { p2, v2 }, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
  .line 196
    invoke-interface { p0 }, Landroid/support/v4/media/session/b;->N()Ljava/lang/String;
    move-result-object p1
  .line 197
    invoke-virtual { p3 }, Landroid/os/Parcel;->writeNoException()V
  .line 198
    invoke-virtual { p3, p1 }, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
    return v3
  :L71
  .line 199
    invoke-virtual { p2, v2 }, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
  .line 200
    invoke-interface { p0 }, Landroid/support/v4/media/session/b;->x0()Ljava/lang/String;
    move-result-object p1
  .line 201
    invoke-virtual { p3 }, Landroid/os/Parcel;->writeNoException()V
  .line 202
    invoke-virtual { p3, p1 }, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
    return v3
  :L72
  .line 203
    invoke-virtual { p2, v2 }, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
  .line 204
    invoke-interface { p0 }, Landroid/support/v4/media/session/b;->k0()Z
    move-result p1
  .line 205
    invoke-virtual { p3 }, Landroid/os/Parcel;->writeNoException()V
  .line 206
    invoke-virtual { p3, p1 }, Landroid/os/Parcel;->writeInt(I)V
    return v3
  :L73
  .line 207
    invoke-virtual { p2, v2 }, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
  .line 208
    invoke-virtual { p2 }, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;
    move-result-object p1
    invoke-static { p1 }, Landroid/support/v4/media/session/a$a;->u(Landroid/os/IBinder;)Landroid/support/v4/media/session/a;
    move-result-object p1
  .line 209
    invoke-interface { p0, p1 }, Landroid/support/v4/media/session/b;->K(Landroid/support/v4/media/session/a;)V
  .line 210
    invoke-virtual { p3 }, Landroid/os/Parcel;->writeNoException()V
    return v3
  :L74
  .line 211
    invoke-virtual { p2, v2 }, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
  .line 212
    invoke-virtual { p2 }, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;
    move-result-object p1
    invoke-static { p1 }, Landroid/support/v4/media/session/a$a;->u(Landroid/os/IBinder;)Landroid/support/v4/media/session/a;
    move-result-object p1
  .line 213
    invoke-interface { p0, p1 }, Landroid/support/v4/media/session/b;->F(Landroid/support/v4/media/session/a;)V
  .line 214
    invoke-virtual { p3 }, Landroid/os/Parcel;->writeNoException()V
    return v3
  :L75
  .line 215
    invoke-virtual { p2, v2 }, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
  .line 216
    invoke-virtual { p2 }, Landroid/os/Parcel;->readInt()I
    move-result p1
    if-eqz p1, :L76
  .line 217
    sget-object p1, Landroid/view/KeyEvent;->CREATOR:Landroid/os/Parcelable$Creator;
    invoke-interface { p1, p2 }, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    move-result-object p1
    move-object v1, p1
    check-cast v1, Landroid/view/KeyEvent;
  :L76
  .line 218
    invoke-interface { p0, v1 }, Landroid/support/v4/media/session/b;->Q0(Landroid/view/KeyEvent;)Z
    move-result p1
  .line 219
    invoke-virtual { p3 }, Landroid/os/Parcel;->writeNoException()V
  .line 220
    invoke-virtual { p3, p1 }, Landroid/os/Parcel;->writeInt(I)V
    return v3
  :L77
  .line 221
    invoke-virtual { p2, v2 }, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
  .line 222
    invoke-virtual { p2 }, Landroid/os/Parcel;->readString()Ljava/lang/String;
    move-result-object p1
  .line 223
    invoke-virtual { p2 }, Landroid/os/Parcel;->readInt()I
    move-result p4
    if-eqz p4, :L78
  .line 224
    sget-object p4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;
    invoke-interface { p4, p2 }, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    move-result-object p4
    check-cast p4, Landroid/os/Bundle;
    goto :L79
  :L78
    move-object p4, v1
  :L79
  .line 225
    invoke-virtual { p2 }, Landroid/os/Parcel;->readInt()I
    move-result v0
    if-eqz v0, :L80
  .line 226
    sget-object v0, Landroid/support/v4/media/session/MediaSessionCompat$ResultReceiverWrapper;->CREATOR:Landroid/os/Parcelable$Creator;
    invoke-interface { v0, p2 }, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    move-result-object p2
    move-object v1, p2
    check-cast v1, Landroid/support/v4/media/session/MediaSessionCompat$ResultReceiverWrapper;
  :L80
  .line 227
    invoke-interface { p0, p1, p4, v1 }, Landroid/support/v4/media/session/b;->K0(Ljava/lang/String;Landroid/os/Bundle;Landroid/support/v4/media/session/MediaSessionCompat$ResultReceiverWrapper;)V
  .line 228
    invoke-virtual { p3 }, Landroid/os/Parcel;->writeNoException()V
    return v3
  :L81
  .line 229
    invoke-virtual { p3, v2 }, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
    return v3
  :L82
  .line 230
    invoke-virtual { p2, v2 }, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
  .line 231
    invoke-virtual { p2 }, Landroid/os/Parcel;->readInt()I
    move-result p1
    if-eqz p1, :L83
  .line 232
    sget-object p1, Landroid/support/v4/media/RatingCompat;->CREATOR:Landroid/os/Parcelable$Creator;
    invoke-interface { p1, p2 }, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    move-result-object p1
    check-cast p1, Landroid/support/v4/media/RatingCompat;
    goto :L84
  :L83
    move-object p1, v1
  :L84
  .line 233
    invoke-virtual { p2 }, Landroid/os/Parcel;->readInt()I
    move-result p4
    if-eqz p4, :L85
  .line 234
    sget-object p4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;
    invoke-interface { p4, p2 }, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    move-result-object p2
    move-object v1, p2
    check-cast v1, Landroid/os/Bundle;
  :L85
  .line 235
    invoke-interface { p0, p1, v1 }, Landroid/support/v4/media/session/b;->H(Landroid/support/v4/media/RatingCompat;Landroid/os/Bundle;)V
  .line 236
    invoke-virtual { p3 }, Landroid/os/Parcel;->writeNoException()V
    return v3
  :L86
  .packed-switch 1
    :L77
    :L75
    :L74
    :L73
    :L72
    :L71
    :L70
    :L67
    :L66
    :L63
    :L62
    :L61
    :L60
    :L58
    :L56
    :L52
    :L51
    :L50
    :L49
    :L48
    :L47
    :L46
    :L45
    :L44
    :L42
    :L40
    :L37
    :L34
    :L33
    :L30
    :L27
    :L26
    :L25
    :L23
    :L21
    :L17
    :L16
    :L15
    :L14
    :L12
    :L10
    :L8
    :L6
    :L5
    :L4
    :L2
    :L1
    :L0
  .end packed-switch
.end method
