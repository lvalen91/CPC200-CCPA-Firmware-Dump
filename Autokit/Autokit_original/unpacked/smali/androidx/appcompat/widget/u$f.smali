.class Landroidx/appcompat/widget/u$f;
.super Landroid/view/View$BaseSavedState;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Landroidx/appcompat/widget/u;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 8
  name = "f"
.end annotation

.field public final static CREATOR:Landroid/os/Parcelable$Creator;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "Landroid/os/Parcelable$Creator<",
      "Landroidx/appcompat/widget/u$f;",
      ">;"
    }
  .end annotation
.end field

.field b:Z

.method static constructor <clinit>()V
  .registers 1
  .line 1
    new-instance v0, Landroidx/appcompat/widget/u$f$a;
    invoke-direct { v0 }, Landroidx/appcompat/widget/u$f$a;-><init>()V
    sput-object v0, Landroidx/appcompat/widget/u$f;->CREATOR:Landroid/os/Parcelable$Creator;
    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
  .registers 2
  .line 2
    invoke-direct { p0, p1 }, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V
  .line 3
    invoke-virtual { p1 }, Landroid/os/Parcel;->readByte()B
    move-result p1
    if-eqz p1, :L0
    const/4 p1, 1
    goto :L1
  :L0
    const/4 p1, 0
  :L1
    iput-boolean p1, p0, Landroidx/appcompat/widget/u$f;->b:Z
    return-void
.end method

.method constructor <init>(Landroid/os/Parcelable;)V
  .registers 2
  .line 1
    invoke-direct { p0, p1 }, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
  .registers 3
  .line 1
    invoke-super { p0, p1, p2 }, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V
  .line 2
    iget-boolean p2, p0, Landroidx/appcompat/widget/u$f;->b:Z
    int-to-byte p2, p2
    invoke-virtual { p1, p2 }, Landroid/os/Parcel;->writeByte(B)V
    return-void
.end method
