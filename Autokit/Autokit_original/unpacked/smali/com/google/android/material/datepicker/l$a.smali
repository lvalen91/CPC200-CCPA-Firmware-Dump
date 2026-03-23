.class final Lcom/google/android/material/datepicker/l$a;
.super Ljava/lang/Object;
.implements Landroid/os/Parcelable$Creator;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Lcom/google/android/material/datepicker/l;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 8
  name = null
.end annotation
.annotation system Ldalvik/annotation/Signature;
  value = {
    "Ljava/lang/Object;",
    "Landroid/os/Parcelable$Creator<",
    "Lcom/google/android/material/datepicker/l;",
    ">;"
  }
.end annotation

.method constructor <init>()V
  .registers 1
  .line 1
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public a(Landroid/os/Parcel;)Lcom/google/android/material/datepicker/l;
  .registers 3
  .line 1
    invoke-virtual { p1 }, Landroid/os/Parcel;->readInt()I
    move-result v0
  .line 2
    invoke-virtual { p1 }, Landroid/os/Parcel;->readInt()I
    move-result p1
  .line 3
    invoke-static { v0, p1 }, Lcom/google/android/material/datepicker/l;->k(II)Lcom/google/android/material/datepicker/l;
    move-result-object p1
    return-object p1
.end method

.method public b(I)[Lcom/google/android/material/datepicker/l;
  .registers 2
  .line 1
    new-array p1, p1, [Lcom/google/android/material/datepicker/l;
    return-object p1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
  .registers 2
  .line 1
    invoke-virtual { p0, p1 }, Lcom/google/android/material/datepicker/l$a;->a(Landroid/os/Parcel;)Lcom/google/android/material/datepicker/l;
    move-result-object p1
    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
  .registers 2
  .line 1
    invoke-virtual { p0, p1 }, Lcom/google/android/material/datepicker/l$a;->b(I)[Lcom/google/android/material/datepicker/l;
    move-result-object p1
    return-object p1
.end method
