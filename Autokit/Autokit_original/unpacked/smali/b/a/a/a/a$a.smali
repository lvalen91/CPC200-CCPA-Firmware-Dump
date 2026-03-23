.class public abstract Lb/a/a/a/a$a;
.super Landroid/os/Binder;
.implements Lb/a/a/a/a;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Lb/a/a/a/a;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 1033
  name = "a"
.end annotation
.annotation system Ldalvik/annotation/MemberClasses;
  value = {
    Lb/a/a/a/a$a$a;
  }
.end annotation

.method public constructor <init>()V
  .registers 2
  .line 1
    invoke-direct { p0 }, Landroid/os/Binder;-><init>()V
    const-string v0, "android.support.v4.os.IResultReceiver"
  .line 2
    invoke-virtual { p0, p0, v0 }, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V
    return-void
.end method

.method public static G()Lb/a/a/a/a;
  .registers 1
  .line 1
    sget-object v0, Lb/a/a/a/a$a$a;->b:Lb/a/a/a/a;
    return-object v0
.end method

.method public static u(Landroid/os/IBinder;)Lb/a/a/a/a;
  .registers 3
    if-nez p0, :L0
    const/4 p0, 0
    return-object p0
  :L0
    const-string v0, "android.support.v4.os.IResultReceiver"
  .line 1
    invoke-interface { p0, v0 }, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;
    move-result-object v0
    if-eqz v0, :L1
  .line 2
    instance-of v1, v0, Lb/a/a/a/a;
    if-eqz v1, :L1
  .line 3
    check-cast v0, Lb/a/a/a/a;
    return-object v0
  :L1
  .line 4
    new-instance v0, Lb/a/a/a/a$a$a;
    invoke-direct { v0, p0 }, Lb/a/a/a/a$a$a;-><init>(Landroid/os/IBinder;)V
    return-object v0
.end method

.method public asBinder()Landroid/os/IBinder;
  .registers 1
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
  .registers 8
    const/4 v0, 1
    const-string v1, "android.support.v4.os.IResultReceiver"
    if-eq p1, v0, :L1
    const v2, 1598968902
    if-eq p1, v2, :L0
  .line 1
    invoke-super { p0, p1, p2, p3, p4 }, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    move-result p1
    return p1
  :L0
  .line 2
    invoke-virtual { p3, v1 }, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
    return v0
  :L1
  .line 3
    invoke-virtual { p2, v1 }, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
  .line 4
    invoke-virtual { p2 }, Landroid/os/Parcel;->readInt()I
    move-result p1
  .line 5
    invoke-virtual { p2 }, Landroid/os/Parcel;->readInt()I
    move-result p3
    if-eqz p3, :L2
  .line 6
    sget-object p3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;
    invoke-interface { p3, p2 }, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    move-result-object p2
    check-cast p2, Landroid/os/Bundle;
    goto :L3
  :L2
    const/4 p2, 0
  :L3
  .line 7
    invoke-interface { p0, p1, p2 }, Lb/a/a/a/a;->M0(ILandroid/os/Bundle;)V
    return v0
.end method
