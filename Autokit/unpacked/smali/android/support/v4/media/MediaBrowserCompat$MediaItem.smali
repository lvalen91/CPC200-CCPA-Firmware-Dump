.class public Landroid/support/v4/media/MediaBrowserCompat$MediaItem;
.super Ljava/lang/Object;
.implements Landroid/os/Parcelable;
.source "SourceFile"

.field public final static CREATOR:Landroid/os/Parcelable$Creator;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "Landroid/os/Parcelable$Creator<",
      "Landroid/support/v4/media/MediaBrowserCompat$MediaItem;",
      ">;"
    }
  .end annotation
.end field

.field private final b:I

.field private final c:Landroid/support/v4/media/MediaDescriptionCompat;

.method static constructor <clinit>()V
  .registers 1
  .line 1
    new-instance v0, Landroid/support/v4/media/MediaBrowserCompat$MediaItem$a;
    invoke-direct { v0 }, Landroid/support/v4/media/MediaBrowserCompat$MediaItem$a;-><init>()V
    sput-object v0, Landroid/support/v4/media/MediaBrowserCompat$MediaItem;->CREATOR:Landroid/os/Parcelable$Creator;
    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
  .registers 3
  .line 1
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
  .line 2
    invoke-virtual { p1 }, Landroid/os/Parcel;->readInt()I
    move-result v0
    iput v0, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaItem;->b:I
  .line 3
    sget-object v0, Landroid/support/v4/media/MediaDescriptionCompat;->CREATOR:Landroid/os/Parcelable$Creator;
    invoke-interface { v0, p1 }, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    move-result-object p1
    check-cast p1, Landroid/support/v4/media/MediaDescriptionCompat;
    iput-object p1, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaItem;->c:Landroid/support/v4/media/MediaDescriptionCompat;
    return-void
.end method

.method public describeContents()I
  .registers 2
    const/4 v0, 0
    return v0
.end method

.method public toString()Ljava/lang/String;
  .registers 3
  .line 1
    new-instance v0, Ljava/lang/StringBuilder;
    const-string v1, "MediaItem{"
    invoke-direct { v0, v1 }, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
    const-string v1, "mFlags="
  .line 2
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget v1, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaItem;->b:I
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    const-string v1, ", mDescription="
  .line 3
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget-object v1, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaItem;->c:Landroid/support/v4/media/MediaDescriptionCompat;
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    const/16 v1, 125
  .line 4
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
  .line 5
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
  .registers 4
  .line 1
    iget v0, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaItem;->b:I
    invoke-virtual { p1, v0 }, Landroid/os/Parcel;->writeInt(I)V
  .line 2
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaItem;->c:Landroid/support/v4/media/MediaDescriptionCompat;
    invoke-virtual { v0, p1, p2 }, Landroid/support/v4/media/MediaDescriptionCompat;->writeToParcel(Landroid/os/Parcel;I)V
    return-void
.end method
