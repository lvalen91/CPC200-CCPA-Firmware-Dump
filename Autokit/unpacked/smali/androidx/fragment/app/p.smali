.class final Landroidx/fragment/app/p;
.super Ljava/lang/Object;
.implements Landroid/os/Parcelable;
.source "SourceFile"

.annotation build Landroid/annotation/SuppressLint;
  value = {
    "BanParcelableUsage"
  }
.end annotation

.field public final static CREATOR:Landroid/os/Parcelable$Creator;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "Landroid/os/Parcelable$Creator<",
      "Landroidx/fragment/app/p;",
      ">;"
    }
  .end annotation
.end field

.field b:Ljava/util/ArrayList;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "Ljava/util/ArrayList<",
      "Landroidx/fragment/app/t;",
      ">;"
    }
  .end annotation
.end field

.field c:Ljava/util/ArrayList;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "Ljava/util/ArrayList<",
      "Ljava/lang/String;",
      ">;"
    }
  .end annotation
.end field

.field d:[Landroidx/fragment/app/b;

.field e:I

.field f:Ljava/lang/String;

.field g:Ljava/util/ArrayList;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "Ljava/util/ArrayList<",
      "Ljava/lang/String;",
      ">;"
    }
  .end annotation
.end field

.field h:Ljava/util/ArrayList;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "Ljava/util/ArrayList<",
      "Landroid/os/Bundle;",
      ">;"
    }
  .end annotation
.end field

.field i:Ljava/util/ArrayList;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "Ljava/util/ArrayList<",
      "Landroidx/fragment/app/n$m;",
      ">;"
    }
  .end annotation
.end field

.method static constructor <clinit>()V
  .registers 1
  .line 1
    new-instance v0, Landroidx/fragment/app/p$a;
    invoke-direct { v0 }, Landroidx/fragment/app/p$a;-><init>()V
    sput-object v0, Landroidx/fragment/app/p;->CREATOR:Landroid/os/Parcelable$Creator;
    return-void
.end method

.method public constructor <init>()V
  .registers 2
  .line 1
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    const/4 v0, 0
  .line 2
    iput-object v0, p0, Landroidx/fragment/app/p;->f:Ljava/lang/String;
  .line 3
    new-instance v0, Ljava/util/ArrayList;
    invoke-direct { v0 }, Ljava/util/ArrayList;-><init>()V
    iput-object v0, p0, Landroidx/fragment/app/p;->g:Ljava/util/ArrayList;
  .line 4
    new-instance v0, Ljava/util/ArrayList;
    invoke-direct { v0 }, Ljava/util/ArrayList;-><init>()V
    iput-object v0, p0, Landroidx/fragment/app/p;->h:Ljava/util/ArrayList;
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
  .registers 3
  .line 5
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    const/4 v0, 0
  .line 6
    iput-object v0, p0, Landroidx/fragment/app/p;->f:Ljava/lang/String;
  .line 7
    new-instance v0, Ljava/util/ArrayList;
    invoke-direct { v0 }, Ljava/util/ArrayList;-><init>()V
    iput-object v0, p0, Landroidx/fragment/app/p;->g:Ljava/util/ArrayList;
  .line 8
    new-instance v0, Ljava/util/ArrayList;
    invoke-direct { v0 }, Ljava/util/ArrayList;-><init>()V
    iput-object v0, p0, Landroidx/fragment/app/p;->h:Ljava/util/ArrayList;
  .line 9
    sget-object v0, Landroidx/fragment/app/t;->CREATOR:Landroid/os/Parcelable$Creator;
    invoke-virtual { p1, v0 }, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;
    move-result-object v0
    iput-object v0, p0, Landroidx/fragment/app/p;->b:Ljava/util/ArrayList;
  .line 10
    invoke-virtual { p1 }, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;
    move-result-object v0
    iput-object v0, p0, Landroidx/fragment/app/p;->c:Ljava/util/ArrayList;
  .line 11
    sget-object v0, Landroidx/fragment/app/b;->CREATOR:Landroid/os/Parcelable$Creator;
    invoke-virtual { p1, v0 }, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;
    move-result-object v0
    check-cast v0, [Landroidx/fragment/app/b;
    iput-object v0, p0, Landroidx/fragment/app/p;->d:[Landroidx/fragment/app/b;
  .line 12
    invoke-virtual { p1 }, Landroid/os/Parcel;->readInt()I
    move-result v0
    iput v0, p0, Landroidx/fragment/app/p;->e:I
  .line 13
    invoke-virtual { p1 }, Landroid/os/Parcel;->readString()Ljava/lang/String;
    move-result-object v0
    iput-object v0, p0, Landroidx/fragment/app/p;->f:Ljava/lang/String;
  .line 14
    invoke-virtual { p1 }, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;
    move-result-object v0
    iput-object v0, p0, Landroidx/fragment/app/p;->g:Ljava/util/ArrayList;
  .line 15
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;
    invoke-virtual { p1, v0 }, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;
    move-result-object v0
    iput-object v0, p0, Landroidx/fragment/app/p;->h:Ljava/util/ArrayList;
  .line 16
    sget-object v0, Landroidx/fragment/app/n$m;->CREATOR:Landroid/os/Parcelable$Creator;
    invoke-virtual { p1, v0 }, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;
    move-result-object p1
    iput-object p1, p0, Landroidx/fragment/app/p;->i:Ljava/util/ArrayList;
    return-void
.end method

.method public describeContents()I
  .registers 2
    const/4 v0, 0
    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
  .registers 4
  .line 1
    iget-object v0, p0, Landroidx/fragment/app/p;->b:Ljava/util/ArrayList;
    invoke-virtual { p1, v0 }, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V
  .line 2
    iget-object v0, p0, Landroidx/fragment/app/p;->c:Ljava/util/ArrayList;
    invoke-virtual { p1, v0 }, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V
  .line 3
    iget-object v0, p0, Landroidx/fragment/app/p;->d:[Landroidx/fragment/app/b;
    invoke-virtual { p1, v0, p2 }, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V
  .line 4
    iget p2, p0, Landroidx/fragment/app/p;->e:I
    invoke-virtual { p1, p2 }, Landroid/os/Parcel;->writeInt(I)V
  .line 5
    iget-object p2, p0, Landroidx/fragment/app/p;->f:Ljava/lang/String;
    invoke-virtual { p1, p2 }, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
  .line 6
    iget-object p2, p0, Landroidx/fragment/app/p;->g:Ljava/util/ArrayList;
    invoke-virtual { p1, p2 }, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V
  .line 7
    iget-object p2, p0, Landroidx/fragment/app/p;->h:Ljava/util/ArrayList;
    invoke-virtual { p1, p2 }, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V
  .line 8
    iget-object p2, p0, Landroidx/fragment/app/p;->i:Ljava/util/ArrayList;
    invoke-virtual { p1, p2 }, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V
    return-void
.end method
