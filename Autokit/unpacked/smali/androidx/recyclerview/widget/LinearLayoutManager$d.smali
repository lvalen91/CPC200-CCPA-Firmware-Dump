.class public Landroidx/recyclerview/widget/LinearLayoutManager$d;
.super Ljava/lang/Object;
.implements Landroid/os/Parcelable;
.source "SourceFile"

.annotation build Landroid/annotation/SuppressLint;
  value = {
    "BanParcelableUsage"
  }
.end annotation
.annotation system Ldalvik/annotation/EnclosingClass;
  value = Landroidx/recyclerview/widget/LinearLayoutManager;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 9
  name = "d"
.end annotation

.field public final static CREATOR:Landroid/os/Parcelable$Creator;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "Landroid/os/Parcelable$Creator<",
      "Landroidx/recyclerview/widget/LinearLayoutManager$d;",
      ">;"
    }
  .end annotation
.end field

.field b:I

.field c:I

.field d:Z

.method static constructor <clinit>()V
  .registers 1
  .line 1
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager$d$a;
    invoke-direct { v0 }, Landroidx/recyclerview/widget/LinearLayoutManager$d$a;-><init>()V
    sput-object v0, Landroidx/recyclerview/widget/LinearLayoutManager$d;->CREATOR:Landroid/os/Parcelable$Creator;
    return-void
.end method

.method public constructor <init>()V
  .registers 1
  .line 1
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
  .registers 3
  .line 2
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
  .line 3
    invoke-virtual { p1 }, Landroid/os/Parcel;->readInt()I
    move-result v0
    iput v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager$d;->b:I
  .line 4
    invoke-virtual { p1 }, Landroid/os/Parcel;->readInt()I
    move-result v0
    iput v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager$d;->c:I
  .line 5
    invoke-virtual { p1 }, Landroid/os/Parcel;->readInt()I
    move-result p1
    const/4 v0, 1
    if-ne p1, v0, :L0
    goto :L1
  :L0
    const/4 v0, 0
  :L1
    iput-boolean v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager$d;->d:Z
    return-void
.end method

.method public constructor <init>(Landroidx/recyclerview/widget/LinearLayoutManager$d;)V
  .registers 3
  .line 6
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
  .line 7
    iget v0, p1, Landroidx/recyclerview/widget/LinearLayoutManager$d;->b:I
    iput v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager$d;->b:I
  .line 8
    iget v0, p1, Landroidx/recyclerview/widget/LinearLayoutManager$d;->c:I
    iput v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager$d;->c:I
  .line 9
    iget-boolean p1, p1, Landroidx/recyclerview/widget/LinearLayoutManager$d;->d:Z
    iput-boolean p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager$d;->d:Z
    return-void
.end method

.method public describeContents()I
  .registers 2
    const/4 v0, 0
    return v0
.end method

.method j()Z
  .registers 2
  .line 1
    iget v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager$d;->b:I
    if-ltz v0, :L0
    const/4 v0, 1
    goto :L1
  :L0
    const/4 v0, 0
  :L1
    return v0
.end method

.method k()V
  .registers 2
    const/4 v0, -1
  .line 1
    iput v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager$d;->b:I
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
  .registers 3
  .line 1
    iget p2, p0, Landroidx/recyclerview/widget/LinearLayoutManager$d;->b:I
    invoke-virtual { p1, p2 }, Landroid/os/Parcel;->writeInt(I)V
  .line 2
    iget p2, p0, Landroidx/recyclerview/widget/LinearLayoutManager$d;->c:I
    invoke-virtual { p1, p2 }, Landroid/os/Parcel;->writeInt(I)V
  .line 3
    iget-boolean p2, p0, Landroidx/recyclerview/widget/LinearLayoutManager$d;->d:Z
    invoke-virtual { p1, p2 }, Landroid/os/Parcel;->writeInt(I)V
    return-void
.end method
