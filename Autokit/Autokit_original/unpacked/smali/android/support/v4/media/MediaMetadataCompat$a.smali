.class final Landroid/support/v4/media/MediaMetadataCompat$a;
.super Ljava/lang/Object;
.implements Landroid/os/Parcelable$Creator;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Landroid/support/v4/media/MediaMetadataCompat;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 8
  name = null
.end annotation
.annotation system Ldalvik/annotation/Signature;
  value = {
    "Ljava/lang/Object;",
    "Landroid/os/Parcelable$Creator<",
    "Landroid/support/v4/media/MediaMetadataCompat;",
    ">;"
  }
.end annotation

.method constructor <init>()V
  .registers 1
  .line 1
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public a(Landroid/os/Parcel;)Landroid/support/v4/media/MediaMetadataCompat;
  .registers 3
  .line 1
    new-instance v0, Landroid/support/v4/media/MediaMetadataCompat;
    invoke-direct { v0, p1 }, Landroid/support/v4/media/MediaMetadataCompat;-><init>(Landroid/os/Parcel;)V
    return-object v0
.end method

.method public b(I)[Landroid/support/v4/media/MediaMetadataCompat;
  .registers 2
  .line 1
    new-array p1, p1, [Landroid/support/v4/media/MediaMetadataCompat;
    return-object p1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
  .registers 2
  .line 1
    invoke-virtual { p0, p1 }, Landroid/support/v4/media/MediaMetadataCompat$a;->a(Landroid/os/Parcel;)Landroid/support/v4/media/MediaMetadataCompat;
    move-result-object p1
    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
  .registers 2
  .line 1
    invoke-virtual { p0, p1 }, Landroid/support/v4/media/MediaMetadataCompat$a;->b(I)[Landroid/support/v4/media/MediaMetadataCompat;
    move-result-object p1
    return-object p1
.end method
