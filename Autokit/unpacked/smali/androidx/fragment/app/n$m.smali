.class Landroidx/fragment/app/n$m;
.super Ljava/lang/Object;
.implements Landroid/os/Parcelable;
.source "SourceFile"

.annotation build Landroid/annotation/SuppressLint;
  value = {
    "BanParcelableUsage"
  }
.end annotation
.annotation system Ldalvik/annotation/EnclosingClass;
  value = Landroidx/fragment/app/n;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 8
  name = "m"
.end annotation

.field public final static CREATOR:Landroid/os/Parcelable$Creator;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "Landroid/os/Parcelable$Creator<",
      "Landroidx/fragment/app/n$m;",
      ">;"
    }
  .end annotation
.end field

.field b:Ljava/lang/String;

.field c:I

.method static constructor <clinit>()V
  .registers 1
  .line 1
    new-instance v0, Landroidx/fragment/app/n$m$a;
    invoke-direct { v0 }, Landroidx/fragment/app/n$m$a;-><init>()V
    sput-object v0, Landroidx/fragment/app/n$m;->CREATOR:Landroid/os/Parcelable$Creator;
    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
  .registers 3
  .line 4
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
  .line 5
    invoke-virtual { p1 }, Landroid/os/Parcel;->readString()Ljava/lang/String;
    move-result-object v0
    iput-object v0, p0, Landroidx/fragment/app/n$m;->b:Ljava/lang/String;
  .line 6
    invoke-virtual { p1 }, Landroid/os/Parcel;->readInt()I
    move-result p1
    iput p1, p0, Landroidx/fragment/app/n$m;->c:I
    return-void
.end method

.method constructor <init>(Ljava/lang/String;I)V
  .registers 3
  .line 1
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
  .line 2
    iput-object p1, p0, Landroidx/fragment/app/n$m;->b:Ljava/lang/String;
  .line 3
    iput p2, p0, Landroidx/fragment/app/n$m;->c:I
    return-void
.end method

.method public describeContents()I
  .registers 2
    const/4 v0, 0
    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
  .registers 3
  .line 1
    iget-object p2, p0, Landroidx/fragment/app/n$m;->b:Ljava/lang/String;
    invoke-virtual { p1, p2 }, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
  .line 2
    iget p2, p0, Landroidx/fragment/app/n$m;->c:I
    invoke-virtual { p1, p2 }, Landroid/os/Parcel;->writeInt(I)V
    return-void
.end method
