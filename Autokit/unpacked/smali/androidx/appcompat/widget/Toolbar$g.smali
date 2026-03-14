.class public Landroidx/appcompat/widget/Toolbar$g;
.super Lc/i/a/a;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Landroidx/appcompat/widget/Toolbar;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 9
  name = "g"
.end annotation

.field public final static CREATOR:Landroid/os/Parcelable$Creator;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "Landroid/os/Parcelable$Creator<",
      "Landroidx/appcompat/widget/Toolbar$g;",
      ">;"
    }
  .end annotation
.end field

.field d:I

.field e:Z

.method static constructor <clinit>()V
  .registers 1
  .line 1
    new-instance v0, Landroidx/appcompat/widget/Toolbar$g$a;
    invoke-direct { v0 }, Landroidx/appcompat/widget/Toolbar$g$a;-><init>()V
    sput-object v0, Landroidx/appcompat/widget/Toolbar$g;->CREATOR:Landroid/os/Parcelable$Creator;
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V
  .registers 3
  .line 1
    invoke-direct { p0, p1, p2 }, Lc/i/a/a;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V
  .line 2
    invoke-virtual { p1 }, Landroid/os/Parcel;->readInt()I
    move-result p2
    iput p2, p0, Landroidx/appcompat/widget/Toolbar$g;->d:I
  .line 3
    invoke-virtual { p1 }, Landroid/os/Parcel;->readInt()I
    move-result p1
    if-eqz p1, :L0
    const/4 p1, 1
    goto :L1
  :L0
    const/4 p1, 0
  :L1
    iput-boolean p1, p0, Landroidx/appcompat/widget/Toolbar$g;->e:Z
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcelable;)V
  .registers 2
  .line 4
    invoke-direct { p0, p1 }, Lc/i/a/a;-><init>(Landroid/os/Parcelable;)V
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
  .registers 3
  .line 1
    invoke-super { p0, p1, p2 }, Lc/i/a/a;->writeToParcel(Landroid/os/Parcel;I)V
  .line 2
    iget p2, p0, Landroidx/appcompat/widget/Toolbar$g;->d:I
    invoke-virtual { p1, p2 }, Landroid/os/Parcel;->writeInt(I)V
  .line 3
    iget-boolean p2, p0, Landroidx/appcompat/widget/Toolbar$g;->e:Z
    invoke-virtual { p1, p2 }, Landroid/os/Parcel;->writeInt(I)V
    return-void
.end method
