.class final Landroid/support/v4/media/MediaDescriptionCompat$a;
.super Ljava/lang/Object;
.implements Landroid/os/Parcelable$Creator;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Landroid/support/v4/media/MediaDescriptionCompat;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 8
  name = null
.end annotation
.annotation system Ldalvik/annotation/Signature;
  value = {
    "Ljava/lang/Object;",
    "Landroid/os/Parcelable$Creator<",
    "Landroid/support/v4/media/MediaDescriptionCompat;",
    ">;"
  }
.end annotation

.method constructor <init>()V
  .registers 1
  .line 1
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public a(Landroid/os/Parcel;)Landroid/support/v4/media/MediaDescriptionCompat;
  .registers 4
  .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v1, 21
    if-ge v0, v1, :L0
  .line 2
    new-instance v0, Landroid/support/v4/media/MediaDescriptionCompat;
    invoke-direct { v0, p1 }, Landroid/support/v4/media/MediaDescriptionCompat;-><init>(Landroid/os/Parcel;)V
    return-object v0
  :L0
  .line 3
    invoke-static { p1 }, Landroid/support/v4/media/d;->a(Landroid/os/Parcel;)Ljava/lang/Object;
    move-result-object p1
    invoke-static { p1 }, Landroid/support/v4/media/MediaDescriptionCompat;->j(Ljava/lang/Object;)Landroid/support/v4/media/MediaDescriptionCompat;
    move-result-object p1
    return-object p1
.end method

.method public b(I)[Landroid/support/v4/media/MediaDescriptionCompat;
  .registers 2
  .line 1
    new-array p1, p1, [Landroid/support/v4/media/MediaDescriptionCompat;
    return-object p1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
  .registers 2
  .line 1
    invoke-virtual { p0, p1 }, Landroid/support/v4/media/MediaDescriptionCompat$a;->a(Landroid/os/Parcel;)Landroid/support/v4/media/MediaDescriptionCompat;
    move-result-object p1
    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
  .registers 2
  .line 1
    invoke-virtual { p0, p1 }, Landroid/support/v4/media/MediaDescriptionCompat$a;->b(I)[Landroid/support/v4/media/MediaDescriptionCompat;
    move-result-object p1
    return-object p1
.end method
