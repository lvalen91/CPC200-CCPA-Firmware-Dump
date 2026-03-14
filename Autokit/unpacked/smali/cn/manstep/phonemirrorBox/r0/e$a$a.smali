.class Lcn/manstep/phonemirrorBox/r0/e$a$a;
.super Ljava/lang/Object;
.implements Lcn/manstep/phonemirrorBox/r0/e;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Lcn/manstep/phonemirrorBox/r0/e$a;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 10
  name = "a"
.end annotation

.field public static b:Lcn/manstep/phonemirrorBox/r0/e;

.field private a:Landroid/os/IBinder;

.method constructor <init>(Landroid/os/IBinder;)V
  .registers 2
  .line 1
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
  .line 2
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/r0/e$a$a;->a:Landroid/os/IBinder;
    return-void
.end method

.method public asBinder()Landroid/os/IBinder;
  .registers 2
  .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/r0/e$a$a;->a:Landroid/os/IBinder;
    return-object v0
.end method

.method public w0(Z)V
  .catchall { :L0 .. :L3 } :L6
  .catchall { :L4 .. :L5 } :L6
  .registers 7
  .line 1
    invoke-static { }, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
    move-result-object v0
  .line 2
    invoke-static { }, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
    move-result-object v1
  :L0
    const-string v2, "cn.manstep.phonemirrorBox.sdk.IVaStateChangeListener"
  .line 3
    invoke-virtual { v0, v2 }, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
    const/4 v2, 1
    const/4 v3, 0
    if-eqz p1, :L1
    const/4 v4, 1
    goto :L2
  :L1
    const/4 v4, 0
  :L2
  .line 4
    invoke-virtual { v0, v4 }, Landroid/os/Parcel;->writeInt(I)V
  .line 5
    iget-object v4, p0, Lcn/manstep/phonemirrorBox/r0/e$a$a;->a:Landroid/os/IBinder;
    invoke-interface { v4, v2, v0, v1, v3 }, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    move-result v2
    if-nez v2, :L4
  .line 6
    invoke-static { }, Lcn/manstep/phonemirrorBox/r0/e$a;->G()Lcn/manstep/phonemirrorBox/r0/e;
    move-result-object v2
    if-eqz v2, :L4
  .line 7
    invoke-static { }, Lcn/manstep/phonemirrorBox/r0/e$a;->G()Lcn/manstep/phonemirrorBox/r0/e;
    move-result-object v2
    invoke-interface { v2, p1 }, Lcn/manstep/phonemirrorBox/r0/e;->w0(Z)V
  :L3
  .line 8
    invoke-virtual { v1 }, Landroid/os/Parcel;->recycle()V
  .line 9
    invoke-virtual { v0 }, Landroid/os/Parcel;->recycle()V
    return-void
  :L4
  .line 10
    invoke-virtual { v1 }, Landroid/os/Parcel;->readException()V
  :L5
  .line 11
    invoke-virtual { v1 }, Landroid/os/Parcel;->recycle()V
  .line 12
    invoke-virtual { v0 }, Landroid/os/Parcel;->recycle()V
    return-void
  :L6
    move-exception p1
  .line 13
    invoke-virtual { v1 }, Landroid/os/Parcel;->recycle()V
  .line 14
    invoke-virtual { v0 }, Landroid/os/Parcel;->recycle()V
  .line 15
    throw p1
.end method
