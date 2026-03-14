.class final Lcom/google/android/material/datepicker/f$a;
.super Ljava/lang/Object;
.implements Landroid/os/Parcelable$Creator;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Lcom/google/android/material/datepicker/f;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 8
  name = null
.end annotation
.annotation system Ldalvik/annotation/Signature;
  value = {
    "Ljava/lang/Object;",
    "Landroid/os/Parcelable$Creator<",
    "Lcom/google/android/material/datepicker/f;",
    ">;"
  }
.end annotation

.method constructor <init>()V
  .registers 1
  .line 1
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public a(Landroid/os/Parcel;)Lcom/google/android/material/datepicker/f;
  .registers 5
  .line 1
    new-instance v0, Lcom/google/android/material/datepicker/f;
    invoke-virtual { p1 }, Landroid/os/Parcel;->readLong()J
    move-result-wide v1
    const/4 p1, 0
    invoke-direct { v0, v1, v2, p1 }, Lcom/google/android/material/datepicker/f;-><init>(JLcom/google/android/material/datepicker/f$a;)V
    return-object v0
.end method

.method public b(I)[Lcom/google/android/material/datepicker/f;
  .registers 2
  .line 1
    new-array p1, p1, [Lcom/google/android/material/datepicker/f;
    return-object p1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
  .registers 2
  .line 1
    invoke-virtual { p0, p1 }, Lcom/google/android/material/datepicker/f$a;->a(Landroid/os/Parcel;)Lcom/google/android/material/datepicker/f;
    move-result-object p1
    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
  .registers 2
  .line 1
    invoke-virtual { p0, p1 }, Lcom/google/android/material/datepicker/f$a;->b(I)[Lcom/google/android/material/datepicker/f;
    move-result-object p1
    return-object p1
.end method
