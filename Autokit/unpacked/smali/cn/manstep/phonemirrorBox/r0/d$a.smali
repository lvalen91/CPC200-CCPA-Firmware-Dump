.class public abstract Lcn/manstep/phonemirrorBox/r0/d$a;
.super Landroid/os/Binder;
.implements Lcn/manstep/phonemirrorBox/r0/d;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Lcn/manstep/phonemirrorBox/r0/d;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 1033
  name = "a"
.end annotation

.method public constructor <init>()V
  .registers 2
  .line 1
    invoke-direct { p0 }, Landroid/os/Binder;-><init>()V
    const-string v0, "cn.manstep.phonemirrorBox.sdk.IRemoteService"
  .line 2
    invoke-virtual { p0, p0, v0 }, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V
    return-void
.end method

.method public asBinder()Landroid/os/IBinder;
  .registers 1
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
  .registers 8
    const v0, 1598968902
    const/4 v1, 1
    const-string v2, "cn.manstep.phonemirrorBox.sdk.IRemoteService"
    if-eq p1, v0, :L13
    packed-switch p1, :L14
  .line 1
    invoke-super { p0, p1, p2, p3, p4 }, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    move-result p1
    return p1
  :L0
  .line 2
    invoke-virtual { p2, v2 }, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
  .line 3
    invoke-interface { p0 }, Lcn/manstep/phonemirrorBox/r0/d;->p()Z
    move-result p1
  .line 4
    invoke-virtual { p3 }, Landroid/os/Parcel;->writeNoException()V
  .line 5
    invoke-virtual { p3, p1 }, Landroid/os/Parcel;->writeInt(I)V
    return v1
  :L1
  .line 6
    invoke-virtual { p2, v2 }, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
  .line 7
    invoke-interface { p0 }, Lcn/manstep/phonemirrorBox/r0/d;->f()Z
    move-result p1
  .line 8
    invoke-virtual { p3 }, Landroid/os/Parcel;->writeNoException()V
  .line 9
    invoke-virtual { p3, p1 }, Landroid/os/Parcel;->writeInt(I)V
    return v1
  :L2
  .line 10
    invoke-virtual { p2, v2 }, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
  .line 11
    invoke-virtual { p2 }, Landroid/os/Parcel;->readString()Ljava/lang/String;
    move-result-object p1
  .line 12
    invoke-interface { p0, p1 }, Lcn/manstep/phonemirrorBox/r0/d;->k(Ljava/lang/String;)V
  .line 13
    invoke-virtual { p3 }, Landroid/os/Parcel;->writeNoException()V
    return v1
  :L3
  .line 14
    invoke-virtual { p2, v2 }, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
  .line 15
    invoke-virtual { p2 }, Landroid/os/Parcel;->readInt()I
    move-result p1
  .line 16
    invoke-interface { p0, p1 }, Lcn/manstep/phonemirrorBox/r0/d;->g(I)V
  .line 17
    invoke-virtual { p3 }, Landroid/os/Parcel;->writeNoException()V
    return v1
  :L4
  .line 18
    invoke-virtual { p2, v2 }, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
  .line 19
    invoke-virtual { p2 }, Landroid/os/Parcel;->readInt()I
    move-result p1
  .line 20
    invoke-interface { p0, p1 }, Lcn/manstep/phonemirrorBox/r0/d;->b(I)V
  .line 21
    invoke-virtual { p3 }, Landroid/os/Parcel;->writeNoException()V
    return v1
  :L5
  .line 22
    invoke-virtual { p2, v2 }, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
  .line 23
    invoke-virtual { p2 }, Landroid/os/Parcel;->readInt()I
    move-result p1
  .line 24
    invoke-interface { p0, p1 }, Lcn/manstep/phonemirrorBox/r0/d;->v0(I)V
  .line 25
    invoke-virtual { p3 }, Landroid/os/Parcel;->writeNoException()V
    return v1
  :L6
  .line 26
    invoke-virtual { p2, v2 }, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
  .line 27
    invoke-interface { p0 }, Lcn/manstep/phonemirrorBox/r0/d;->d()I
    move-result p1
  .line 28
    invoke-virtual { p3 }, Landroid/os/Parcel;->writeNoException()V
  .line 29
    invoke-virtual { p3, p1 }, Landroid/os/Parcel;->writeInt(I)V
    return v1
  :L7
  .line 30
    invoke-virtual { p2, v2 }, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
  .line 31
    invoke-interface { p0 }, Lcn/manstep/phonemirrorBox/r0/d;->m()Ljava/lang/String;
    move-result-object p1
  .line 32
    invoke-virtual { p3 }, Landroid/os/Parcel;->writeNoException()V
  .line 33
    invoke-virtual { p3, p1 }, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
    return v1
  :L8
  .line 34
    invoke-virtual { p2, v2 }, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
  .line 35
    invoke-virtual { p2 }, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;
    move-result-object p1
    invoke-static { p1 }, Lcn/manstep/phonemirrorBox/r0/a$a;->u(Landroid/os/IBinder;)Lcn/manstep/phonemirrorBox/r0/a;
    move-result-object p1
  .line 36
    invoke-interface { p0, p1 }, Lcn/manstep/phonemirrorBox/r0/d;->l(Lcn/manstep/phonemirrorBox/r0/a;)V
  .line 37
    invoke-virtual { p3 }, Landroid/os/Parcel;->writeNoException()V
    return v1
  :L9
  .line 38
    invoke-virtual { p2, v2 }, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
  .line 39
    invoke-virtual { p2 }, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;
    move-result-object p1
    invoke-static { p1 }, Lcn/manstep/phonemirrorBox/r0/c$a;->u(Landroid/os/IBinder;)Lcn/manstep/phonemirrorBox/r0/c;
    move-result-object p1
  .line 40
    invoke-interface { p0, p1 }, Lcn/manstep/phonemirrorBox/r0/d;->h(Lcn/manstep/phonemirrorBox/r0/c;)V
  .line 41
    invoke-virtual { p3 }, Landroid/os/Parcel;->writeNoException()V
    return v1
  :L10
  .line 42
    invoke-virtual { p2, v2 }, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
  .line 43
    invoke-virtual { p2 }, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;
    move-result-object p1
    invoke-static { p1 }, Lcn/manstep/phonemirrorBox/r0/e$a;->u(Landroid/os/IBinder;)Lcn/manstep/phonemirrorBox/r0/e;
    move-result-object p1
  .line 44
    invoke-interface { p0, p1 }, Lcn/manstep/phonemirrorBox/r0/d;->q(Lcn/manstep/phonemirrorBox/r0/e;)V
  .line 45
    invoke-virtual { p3 }, Landroid/os/Parcel;->writeNoException()V
    return v1
  :L11
  .line 46
    invoke-virtual { p2, v2 }, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
  .line 47
    invoke-virtual { p2 }, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;
    move-result-object p1
    invoke-static { p1 }, Lcn/manstep/phonemirrorBox/r0/b$a;->u(Landroid/os/IBinder;)Lcn/manstep/phonemirrorBox/r0/b;
    move-result-object p1
  .line 48
    invoke-interface { p0, p1 }, Lcn/manstep/phonemirrorBox/r0/d;->j(Lcn/manstep/phonemirrorBox/r0/b;)V
  .line 49
    invoke-virtual { p3 }, Landroid/os/Parcel;->writeNoException()V
    return v1
  :L12
  .line 50
    invoke-virtual { p2, v2 }, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
  .line 51
    invoke-virtual { p2 }, Landroid/os/Parcel;->readString()Ljava/lang/String;
    move-result-object p1
  .line 52
    invoke-interface { p0, p1 }, Lcn/manstep/phonemirrorBox/r0/d;->O0(Ljava/lang/String;)V
  .line 53
    invoke-virtual { p3 }, Landroid/os/Parcel;->writeNoException()V
    return v1
  :L13
  .line 54
    invoke-virtual { p3, v2 }, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
    return v1
  :L14
  .packed-switch 1
    :L12
    :L11
    :L10
    :L9
    :L8
    :L7
    :L6
    :L5
    :L4
    :L3
    :L2
    :L1
    :L0
  .end packed-switch
.end method
