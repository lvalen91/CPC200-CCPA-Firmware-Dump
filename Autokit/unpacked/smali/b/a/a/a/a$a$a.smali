.class Lb/a/a/a/a$a$a;
.super Ljava/lang/Object;
.implements Lb/a/a/a/a;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Lb/a/a/a/a$a;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 10
  name = "a"
.end annotation

.field public static b:Lb/a/a/a/a;

.field private a:Landroid/os/IBinder;

.method constructor <init>(Landroid/os/IBinder;)V
  .registers 2
  .line 1
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
  .line 2
    iput-object p1, p0, Lb/a/a/a/a$a$a;->a:Landroid/os/IBinder;
    return-void
.end method

.method public M0(ILandroid/os/Bundle;)V
  .catchall { :L0 .. :L3 } :L5
  .registers 7
  .line 1
    invoke-static { }, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
    move-result-object v0
  :L0
    const-string v1, "android.support.v4.os.IResultReceiver"
  .line 2
    invoke-virtual { v0, v1 }, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
  .line 3
    invoke-virtual { v0, p1 }, Landroid/os/Parcel;->writeInt(I)V
    const/4 v1, 0
    const/4 v2, 1
    if-eqz p2, :L1
  .line 4
    invoke-virtual { v0, v2 }, Landroid/os/Parcel;->writeInt(I)V
  .line 5
    invoke-virtual { p2, v0, v1 }, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V
    goto :L2
  :L1
  .line 6
    invoke-virtual { v0, v1 }, Landroid/os/Parcel;->writeInt(I)V
  :L2
  .line 7
    iget-object v1, p0, Lb/a/a/a/a$a$a;->a:Landroid/os/IBinder;
    const/4 v3, 0
    invoke-interface { v1, v2, v0, v3, v2 }, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    move-result v1
    if-nez v1, :L4
  .line 8
    invoke-static { }, Lb/a/a/a/a$a;->G()Lb/a/a/a/a;
    move-result-object v1
    if-eqz v1, :L4
  .line 9
    invoke-static { }, Lb/a/a/a/a$a;->G()Lb/a/a/a/a;
    move-result-object v1
    invoke-interface { v1, p1, p2 }, Lb/a/a/a/a;->M0(ILandroid/os/Bundle;)V
  :L3
  .line 10
    invoke-virtual { v0 }, Landroid/os/Parcel;->recycle()V
    return-void
  :L4
    invoke-virtual { v0 }, Landroid/os/Parcel;->recycle()V
    return-void
  :L5
    move-exception p1
    invoke-virtual { v0 }, Landroid/os/Parcel;->recycle()V
  .line 11
    throw p1
.end method

.method public asBinder()Landroid/os/IBinder;
  .registers 2
  .line 1
    iget-object v0, p0, Lb/a/a/a/a$a$a;->a:Landroid/os/IBinder;
    return-object v0
.end method
