.class public Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;
.super Ljava/lang/Object;
.implements Landroid/os/Parcelable;
.source "SourceFile"

.annotation build Landroid/annotation/SuppressLint;
  value = {
    "BanParcelableUsage"
  }
.end annotation
.annotation system Ldalvik/annotation/EnclosingClass;
  value = Landroidx/recyclerview/widget/StaggeredGridLayoutManager;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 9
  name = "e"
.end annotation

.field public final static CREATOR:Landroid/os/Parcelable$Creator;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "Landroid/os/Parcelable$Creator<",
      "Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;",
      ">;"
    }
  .end annotation
.end field

.field b:I

.field c:I

.field d:I

.field e:[I

.field f:I

.field g:[I

.field h:Ljava/util/List;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "Ljava/util/List<",
      "Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d$a;",
      ">;"
    }
  .end annotation
.end field

.field i:Z

.field j:Z

.field k:Z

.method static constructor <clinit>()V
  .registers 1
  .line 1
    new-instance v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e$a;
    invoke-direct { v0 }, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e$a;-><init>()V
    sput-object v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;->CREATOR:Landroid/os/Parcelable$Creator;
    return-void
.end method

.method public constructor <init>()V
  .registers 1
  .line 1
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
  .registers 5
  .line 2
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
  .line 3
    invoke-virtual { p1 }, Landroid/os/Parcel;->readInt()I
    move-result v0
    iput v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;->b:I
  .line 4
    invoke-virtual { p1 }, Landroid/os/Parcel;->readInt()I
    move-result v0
    iput v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;->c:I
  .line 5
    invoke-virtual { p1 }, Landroid/os/Parcel;->readInt()I
    move-result v0
    iput v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;->d:I
    if-lez v0, :L0
  .line 6
    new-array v0, v0, [I
    iput-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;->e:[I
  .line 7
    invoke-virtual { p1, v0 }, Landroid/os/Parcel;->readIntArray([I)V
  :L0
  .line 8
    invoke-virtual { p1 }, Landroid/os/Parcel;->readInt()I
    move-result v0
    iput v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;->f:I
    if-lez v0, :L1
  .line 9
    new-array v0, v0, [I
    iput-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;->g:[I
  .line 10
    invoke-virtual { p1, v0 }, Landroid/os/Parcel;->readIntArray([I)V
  :L1
  .line 11
    invoke-virtual { p1 }, Landroid/os/Parcel;->readInt()I
    move-result v0
    const/4 v1, 0
    const/4 v2, 1
    if-ne v0, v2, :L2
    const/4 v0, 1
    goto :L3
  :L2
    const/4 v0, 0
  :L3
    iput-boolean v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;->i:Z
  .line 12
    invoke-virtual { p1 }, Landroid/os/Parcel;->readInt()I
    move-result v0
    if-ne v0, v2, :L4
    const/4 v0, 1
    goto :L5
  :L4
    const/4 v0, 0
  :L5
    iput-boolean v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;->j:Z
  .line 13
    invoke-virtual { p1 }, Landroid/os/Parcel;->readInt()I
    move-result v0
    if-ne v0, v2, :L6
    const/4 v1, 1
  :L6
    iput-boolean v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;->k:Z
  .line 14
    const-class v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d$a;
  .line 15
    invoke-virtual { v0 }, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;
    move-result-object v0
    invoke-virtual { p1, v0 }, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;
    move-result-object p1
  .line 16
    iput-object p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;->h:Ljava/util/List;
    return-void
.end method

.method public constructor <init>(Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;)V
  .registers 3
  .line 17
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
  .line 18
    iget v0, p1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;->d:I
    iput v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;->d:I
  .line 19
    iget v0, p1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;->b:I
    iput v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;->b:I
  .line 20
    iget v0, p1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;->c:I
    iput v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;->c:I
  .line 21
    iget-object v0, p1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;->e:[I
    iput-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;->e:[I
  .line 22
    iget v0, p1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;->f:I
    iput v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;->f:I
  .line 23
    iget-object v0, p1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;->g:[I
    iput-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;->g:[I
  .line 24
    iget-boolean v0, p1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;->i:Z
    iput-boolean v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;->i:Z
  .line 25
    iget-boolean v0, p1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;->j:Z
    iput-boolean v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;->j:Z
  .line 26
    iget-boolean v0, p1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;->k:Z
    iput-boolean v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;->k:Z
  .line 27
    iget-object p1, p1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;->h:Ljava/util/List;
    iput-object p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;->h:Ljava/util/List;
    return-void
.end method

.method public describeContents()I
  .registers 2
    const/4 v0, 0
    return v0
.end method

.method j()V
  .registers 2
    const/4 v0, 0
  .line 1
    iput-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;->e:[I
    const/4 v0, 0
  .line 2
    iput v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;->d:I
    const/4 v0, -1
  .line 3
    iput v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;->b:I
  .line 4
    iput v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;->c:I
    return-void
.end method

.method k()V
  .registers 3
    const/4 v0, 0
  .line 1
    iput-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;->e:[I
    const/4 v1, 0
  .line 2
    iput v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;->d:I
  .line 3
    iput v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;->f:I
  .line 4
    iput-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;->g:[I
  .line 5
    iput-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;->h:Ljava/util/List;
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
  .registers 3
  .line 1
    iget p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;->b:I
    invoke-virtual { p1, p2 }, Landroid/os/Parcel;->writeInt(I)V
  .line 2
    iget p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;->c:I
    invoke-virtual { p1, p2 }, Landroid/os/Parcel;->writeInt(I)V
  .line 3
    iget p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;->d:I
    invoke-virtual { p1, p2 }, Landroid/os/Parcel;->writeInt(I)V
  .line 4
    iget p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;->d:I
    if-lez p2, :L0
  .line 5
    iget-object p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;->e:[I
    invoke-virtual { p1, p2 }, Landroid/os/Parcel;->writeIntArray([I)V
  :L0
  .line 6
    iget p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;->f:I
    invoke-virtual { p1, p2 }, Landroid/os/Parcel;->writeInt(I)V
  .line 7
    iget p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;->f:I
    if-lez p2, :L1
  .line 8
    iget-object p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;->g:[I
    invoke-virtual { p1, p2 }, Landroid/os/Parcel;->writeIntArray([I)V
  :L1
  .line 9
    iget-boolean p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;->i:Z
    invoke-virtual { p1, p2 }, Landroid/os/Parcel;->writeInt(I)V
  .line 10
    iget-boolean p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;->j:Z
    invoke-virtual { p1, p2 }, Landroid/os/Parcel;->writeInt(I)V
  .line 11
    iget-boolean p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;->k:Z
    invoke-virtual { p1, p2 }, Landroid/os/Parcel;->writeInt(I)V
  .line 12
    iget-object p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;->h:Ljava/util/List;
    invoke-virtual { p1, p2 }, Landroid/os/Parcel;->writeList(Ljava/util/List;)V
    return-void
.end method
