.class final Lcom/yalantis/ucrop/model/AspectRatio$1;
.super Ljava/lang/Object;
.implements Landroid/os/Parcelable$Creator;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Lcom/yalantis/ucrop/model/AspectRatio;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 8
  name = null
.end annotation
.annotation system Ldalvik/annotation/Signature;
  value = {
    "Ljava/lang/Object;",
    "Landroid/os/Parcelable$Creator<",
    "Lcom/yalantis/ucrop/model/AspectRatio;",
    ">;"
  }
.end annotation

.method constructor <init>()V
  .registers 1
  .line 1
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public createFromParcel(Landroid/os/Parcel;)Lcom/yalantis/ucrop/model/AspectRatio;
  .registers 3
  .line 2
    new-instance v0, Lcom/yalantis/ucrop/model/AspectRatio;
    invoke-direct { v0, p1 }, Lcom/yalantis/ucrop/model/AspectRatio;-><init>(Landroid/os/Parcel;)V
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
  .registers 2
  .line 1
    invoke-virtual { p0, p1 }, Lcom/yalantis/ucrop/model/AspectRatio$1;->createFromParcel(Landroid/os/Parcel;)Lcom/yalantis/ucrop/model/AspectRatio;
    move-result-object p1
    return-object p1
.end method

.method public newArray(I)[Lcom/yalantis/ucrop/model/AspectRatio;
  .registers 2
  .line 2
    new-array p1, p1, [Lcom/yalantis/ucrop/model/AspectRatio;
    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
  .registers 2
  .line 1
    invoke-virtual { p0, p1 }, Lcom/yalantis/ucrop/model/AspectRatio$1;->newArray(I)[Lcom/yalantis/ucrop/model/AspectRatio;
    move-result-object p1
    return-object p1
.end method
