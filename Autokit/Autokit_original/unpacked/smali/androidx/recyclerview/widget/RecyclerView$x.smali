.class public Landroidx/recyclerview/widget/RecyclerView$x;
.super Lc/i/a/a;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Landroidx/recyclerview/widget/RecyclerView;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 9
  name = "x"
.end annotation

.field public final static CREATOR:Landroid/os/Parcelable$Creator;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "Landroid/os/Parcelable$Creator<",
      "Landroidx/recyclerview/widget/RecyclerView$x;",
      ">;"
    }
  .end annotation
.end field

.field d:Landroid/os/Parcelable;

.method static constructor <clinit>()V
  .registers 1
  .line 1
    new-instance v0, Landroidx/recyclerview/widget/RecyclerView$x$a;
    invoke-direct { v0 }, Landroidx/recyclerview/widget/RecyclerView$x$a;-><init>()V
    sput-object v0, Landroidx/recyclerview/widget/RecyclerView$x;->CREATOR:Landroid/os/Parcelable$Creator;
    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V
  .registers 3
  .line 1
    invoke-direct { p0, p1, p2 }, Lc/i/a/a;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V
    if-eqz p2, :L0
    goto :L1
  :L0
  .line 2
    const-class p2, Landroidx/recyclerview/widget/RecyclerView$n;
  .line 3
    invoke-virtual { p2 }, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;
    move-result-object p2
  :L1
  .line 4
    invoke-virtual { p1, p2 }, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;
    move-result-object p1
    iput-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$x;->d:Landroid/os/Parcelable;
    return-void
.end method

.method constructor <init>(Landroid/os/Parcelable;)V
  .registers 2
  .line 5
    invoke-direct { p0, p1 }, Lc/i/a/a;-><init>(Landroid/os/Parcelable;)V
    return-void
.end method

.method k(Landroidx/recyclerview/widget/RecyclerView$x;)V
  .registers 2
  .line 1
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$x;->d:Landroid/os/Parcelable;
    iput-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$x;->d:Landroid/os/Parcelable;
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
  .registers 4
  .line 1
    invoke-super { p0, p1, p2 }, Lc/i/a/a;->writeToParcel(Landroid/os/Parcel;I)V
  .line 2
    iget-object p2, p0, Landroidx/recyclerview/widget/RecyclerView$x;->d:Landroid/os/Parcelable;
    const/4 v0, 0
    invoke-virtual { p1, p2, v0 }, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V
    return-void
.end method
