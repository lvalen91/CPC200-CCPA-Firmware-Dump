.class final Lcom/google/android/material/datepicker/a$a;
.super Ljava/lang/Object;
.implements Landroid/os/Parcelable$Creator;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Lcom/google/android/material/datepicker/a;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 8
  name = null
.end annotation
.annotation system Ldalvik/annotation/Signature;
  value = {
    "Ljava/lang/Object;",
    "Landroid/os/Parcelable$Creator<",
    "Lcom/google/android/material/datepicker/a;",
    ">;"
  }
.end annotation

.method constructor <init>()V
  .registers 1
  .line 1
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public a(Landroid/os/Parcel;)Lcom/google/android/material/datepicker/a;
  .registers 9
  .line 1
    const-class v0, Lcom/google/android/material/datepicker/l;
    invoke-virtual { v0 }, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;
    move-result-object v0
    invoke-virtual { p1, v0 }, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;
    move-result-object v0
    move-object v2, v0
    check-cast v2, Lcom/google/android/material/datepicker/l;
  .line 2
    const-class v0, Lcom/google/android/material/datepicker/l;
    invoke-virtual { v0 }, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;
    move-result-object v0
    invoke-virtual { p1, v0 }, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;
    move-result-object v0
    move-object v3, v0
    check-cast v3, Lcom/google/android/material/datepicker/l;
  .line 3
    const-class v0, Lcom/google/android/material/datepicker/l;
    invoke-virtual { v0 }, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;
    move-result-object v0
    invoke-virtual { p1, v0 }, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;
    move-result-object v0
    move-object v5, v0
    check-cast v5, Lcom/google/android/material/datepicker/l;
  .line 4
    const-class v0, Lcom/google/android/material/datepicker/a$c;
    invoke-virtual { v0 }, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;
    move-result-object v0
    invoke-virtual { p1, v0 }, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;
    move-result-object p1
    move-object v4, p1
    check-cast v4, Lcom/google/android/material/datepicker/a$c;
  .line 5
    new-instance p1, Lcom/google/android/material/datepicker/a;
    const/4 v6, 0
    move-object v1, p1
    invoke-direct/range { v1 .. v6 }, Lcom/google/android/material/datepicker/a;-><init>(Lcom/google/android/material/datepicker/l;Lcom/google/android/material/datepicker/l;Lcom/google/android/material/datepicker/a$c;Lcom/google/android/material/datepicker/l;Lcom/google/android/material/datepicker/a$a;)V
    return-object p1
.end method

.method public b(I)[Lcom/google/android/material/datepicker/a;
  .registers 2
  .line 1
    new-array p1, p1, [Lcom/google/android/material/datepicker/a;
    return-object p1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
  .registers 2
  .line 1
    invoke-virtual { p0, p1 }, Lcom/google/android/material/datepicker/a$a;->a(Landroid/os/Parcel;)Lcom/google/android/material/datepicker/a;
    move-result-object p1
    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
  .registers 2
  .line 1
    invoke-virtual { p0, p1 }, Lcom/google/android/material/datepicker/a$a;->b(I)[Lcom/google/android/material/datepicker/a;
    move-result-object p1
    return-object p1
.end method
