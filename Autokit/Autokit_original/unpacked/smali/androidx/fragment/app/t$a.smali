.class Landroidx/fragment/app/t$a;
.super Ljava/lang/Object;
.implements Landroid/os/Parcelable$Creator;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Landroidx/fragment/app/t;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = null
.end annotation
.annotation system Ldalvik/annotation/Signature;
  value = {
    "Ljava/lang/Object;",
    "Landroid/os/Parcelable$Creator<",
    "Landroidx/fragment/app/t;",
    ">;"
  }
.end annotation

.method constructor <init>()V
  .registers 1
  .line 1
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public a(Landroid/os/Parcel;)Landroidx/fragment/app/t;
  .registers 3
  .line 1
    new-instance v0, Landroidx/fragment/app/t;
    invoke-direct { v0, p1 }, Landroidx/fragment/app/t;-><init>(Landroid/os/Parcel;)V
    return-object v0
.end method

.method public b(I)[Landroidx/fragment/app/t;
  .registers 2
  .line 1
    new-array p1, p1, [Landroidx/fragment/app/t;
    return-object p1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
  .registers 2
  .line 1
    invoke-virtual { p0, p1 }, Landroidx/fragment/app/t$a;->a(Landroid/os/Parcel;)Landroidx/fragment/app/t;
    move-result-object p1
    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
  .registers 2
  .line 1
    invoke-virtual { p0, p1 }, Landroidx/fragment/app/t$a;->b(I)[Landroidx/fragment/app/t;
    move-result-object p1
    return-object p1
.end method
