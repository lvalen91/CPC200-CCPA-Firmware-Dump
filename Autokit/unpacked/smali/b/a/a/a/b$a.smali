.class Lb/a/a/a/b$a;
.super Ljava/lang/Object;
.implements Landroid/os/Parcelable$Creator;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Lb/a/a/a/b;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = null
.end annotation
.annotation system Ldalvik/annotation/Signature;
  value = {
    "Ljava/lang/Object;",
    "Landroid/os/Parcelable$Creator<",
    "Lb/a/a/a/b;",
    ">;"
  }
.end annotation

.method constructor <init>()V
  .registers 1
  .line 1
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public a(Landroid/os/Parcel;)Lb/a/a/a/b;
  .registers 3
  .line 1
    new-instance v0, Lb/a/a/a/b;
    invoke-direct { v0, p1 }, Lb/a/a/a/b;-><init>(Landroid/os/Parcel;)V
    return-object v0
.end method

.method public b(I)[Lb/a/a/a/b;
  .registers 2
  .line 1
    new-array p1, p1, [Lb/a/a/a/b;
    return-object p1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
  .registers 2
  .line 1
    invoke-virtual { p0, p1 }, Lb/a/a/a/b$a;->a(Landroid/os/Parcel;)Lb/a/a/a/b;
    move-result-object p1
    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
  .registers 2
  .line 1
    invoke-virtual { p0, p1 }, Lb/a/a/a/b$a;->b(I)[Lb/a/a/a/b;
    move-result-object p1
    return-object p1
.end method
