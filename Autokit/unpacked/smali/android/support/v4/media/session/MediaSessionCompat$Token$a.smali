.class final Landroid/support/v4/media/session/MediaSessionCompat$Token$a;
.super Ljava/lang/Object;
.implements Landroid/os/Parcelable$Creator;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Landroid/support/v4/media/session/MediaSessionCompat$Token;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 8
  name = null
.end annotation
.annotation system Ldalvik/annotation/Signature;
  value = {
    "Ljava/lang/Object;",
    "Landroid/os/Parcelable$Creator<",
    "Landroid/support/v4/media/session/MediaSessionCompat$Token;",
    ">;"
  }
.end annotation

.method constructor <init>()V
  .registers 1
  .line 1
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public a(Landroid/os/Parcel;)Landroid/support/v4/media/session/MediaSessionCompat$Token;
  .registers 4
  .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v1, 21
    if-lt v0, v1, :L0
    const/4 v0, 0
  .line 2
    invoke-virtual { p1, v0 }, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;
    move-result-object p1
    goto :L1
  :L0
  .line 3
    invoke-virtual { p1 }, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;
    move-result-object p1
  :L1
  .line 4
    new-instance v0, Landroid/support/v4/media/session/MediaSessionCompat$Token;
    invoke-direct { v0, p1 }, Landroid/support/v4/media/session/MediaSessionCompat$Token;-><init>(Ljava/lang/Object;)V
    return-object v0
.end method

.method public b(I)[Landroid/support/v4/media/session/MediaSessionCompat$Token;
  .registers 2
  .line 1
    new-array p1, p1, [Landroid/support/v4/media/session/MediaSessionCompat$Token;
    return-object p1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
  .registers 2
  .line 1
    invoke-virtual { p0, p1 }, Landroid/support/v4/media/session/MediaSessionCompat$Token$a;->a(Landroid/os/Parcel;)Landroid/support/v4/media/session/MediaSessionCompat$Token;
    move-result-object p1
    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
  .registers 2
  .line 1
    invoke-virtual { p0, p1 }, Landroid/support/v4/media/session/MediaSessionCompat$Token$a;->b(I)[Landroid/support/v4/media/session/MediaSessionCompat$Token;
    move-result-object p1
    return-object p1
.end method
