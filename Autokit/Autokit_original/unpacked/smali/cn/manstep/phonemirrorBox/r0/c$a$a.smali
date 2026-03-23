.class Lcn/manstep/phonemirrorBox/r0/c$a$a;
.super Ljava/lang/Object;
.implements Lcn/manstep/phonemirrorBox/r0/c;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Lcn/manstep/phonemirrorBox/r0/c$a;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 10
  name = "a"
.end annotation

.field public static b:Lcn/manstep/phonemirrorBox/r0/c;

.field private a:Landroid/os/IBinder;

.method constructor <init>(Landroid/os/IBinder;)V
  .registers 2
  .line 1
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
  .line 2
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/r0/c$a$a;->a:Landroid/os/IBinder;
    return-void
.end method

.method public A(Ljava/lang/String;)V
  .catchall { :L0 .. :L1 } :L4
  .catchall { :L2 .. :L3 } :L4
  .registers 7
  .line 1
    invoke-static { }, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
    move-result-object v0
  .line 2
    invoke-static { }, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
    move-result-object v1
  :L0
    const-string v2, "cn.manstep.phonemirrorBox.sdk.IMusicInfoChangeListener"
  .line 3
    invoke-virtual { v0, v2 }, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
  .line 4
    invoke-virtual { v0, p1 }, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
  .line 5
    iget-object v2, p0, Lcn/manstep/phonemirrorBox/r0/c$a$a;->a:Landroid/os/IBinder;
    const/4 v3, 7
    const/4 v4, 0
    invoke-interface { v2, v3, v0, v1, v4 }, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    move-result v2
    if-nez v2, :L2
  .line 6
    invoke-static { }, Lcn/manstep/phonemirrorBox/r0/c$a;->G()Lcn/manstep/phonemirrorBox/r0/c;
    move-result-object v2
    if-eqz v2, :L2
  .line 7
    invoke-static { }, Lcn/manstep/phonemirrorBox/r0/c$a;->G()Lcn/manstep/phonemirrorBox/r0/c;
    move-result-object v2
    invoke-interface { v2, p1 }, Lcn/manstep/phonemirrorBox/r0/c;->A(Ljava/lang/String;)V
  :L1
  .line 8
    invoke-virtual { v1 }, Landroid/os/Parcel;->recycle()V
  .line 9
    invoke-virtual { v0 }, Landroid/os/Parcel;->recycle()V
    return-void
  :L2
  .line 10
    invoke-virtual { v1 }, Landroid/os/Parcel;->readException()V
  :L3
  .line 11
    invoke-virtual { v1 }, Landroid/os/Parcel;->recycle()V
  .line 12
    invoke-virtual { v0 }, Landroid/os/Parcel;->recycle()V
    return-void
  :L4
    move-exception p1
  .line 13
    invoke-virtual { v1 }, Landroid/os/Parcel;->recycle()V
  .line 14
    invoke-virtual { v0 }, Landroid/os/Parcel;->recycle()V
  .line 15
    throw p1
.end method

.method public D0(Ljava/lang/String;)V
  .catchall { :L0 .. :L1 } :L4
  .catchall { :L2 .. :L3 } :L4
  .registers 7
  .line 1
    invoke-static { }, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
    move-result-object v0
  .line 2
    invoke-static { }, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
    move-result-object v1
  :L0
    const-string v2, "cn.manstep.phonemirrorBox.sdk.IMusicInfoChangeListener"
  .line 3
    invoke-virtual { v0, v2 }, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
  .line 4
    invoke-virtual { v0, p1 }, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
  .line 5
    iget-object v2, p0, Lcn/manstep/phonemirrorBox/r0/c$a$a;->a:Landroid/os/IBinder;
    const/4 v3, 5
    const/4 v4, 0
    invoke-interface { v2, v3, v0, v1, v4 }, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    move-result v2
    if-nez v2, :L2
  .line 6
    invoke-static { }, Lcn/manstep/phonemirrorBox/r0/c$a;->G()Lcn/manstep/phonemirrorBox/r0/c;
    move-result-object v2
    if-eqz v2, :L2
  .line 7
    invoke-static { }, Lcn/manstep/phonemirrorBox/r0/c$a;->G()Lcn/manstep/phonemirrorBox/r0/c;
    move-result-object v2
    invoke-interface { v2, p1 }, Lcn/manstep/phonemirrorBox/r0/c;->D0(Ljava/lang/String;)V
  :L1
  .line 8
    invoke-virtual { v1 }, Landroid/os/Parcel;->recycle()V
  .line 9
    invoke-virtual { v0 }, Landroid/os/Parcel;->recycle()V
    return-void
  :L2
  .line 10
    invoke-virtual { v1 }, Landroid/os/Parcel;->readException()V
  :L3
  .line 11
    invoke-virtual { v1 }, Landroid/os/Parcel;->recycle()V
  .line 12
    invoke-virtual { v0 }, Landroid/os/Parcel;->recycle()V
    return-void
  :L4
    move-exception p1
  .line 13
    invoke-virtual { v1 }, Landroid/os/Parcel;->recycle()V
  .line 14
    invoke-virtual { v0 }, Landroid/os/Parcel;->recycle()V
  .line 15
    throw p1
.end method

.method public F0([B)V
  .catchall { :L0 .. :L1 } :L4
  .catchall { :L2 .. :L3 } :L4
  .registers 7
  .line 1
    invoke-static { }, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
    move-result-object v0
  .line 2
    invoke-static { }, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
    move-result-object v1
  :L0
    const-string v2, "cn.manstep.phonemirrorBox.sdk.IMusicInfoChangeListener"
  .line 3
    invoke-virtual { v0, v2 }, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
  .line 4
    invoke-virtual { v0, p1 }, Landroid/os/Parcel;->writeByteArray([B)V
  .line 5
    iget-object v2, p0, Lcn/manstep/phonemirrorBox/r0/c$a$a;->a:Landroid/os/IBinder;
    const/16 v3, 10
    const/4 v4, 0
    invoke-interface { v2, v3, v0, v1, v4 }, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    move-result v2
    if-nez v2, :L2
  .line 6
    invoke-static { }, Lcn/manstep/phonemirrorBox/r0/c$a;->G()Lcn/manstep/phonemirrorBox/r0/c;
    move-result-object v2
    if-eqz v2, :L2
  .line 7
    invoke-static { }, Lcn/manstep/phonemirrorBox/r0/c$a;->G()Lcn/manstep/phonemirrorBox/r0/c;
    move-result-object v2
    invoke-interface { v2, p1 }, Lcn/manstep/phonemirrorBox/r0/c;->F0([B)V
  :L1
  .line 8
    invoke-virtual { v1 }, Landroid/os/Parcel;->recycle()V
  .line 9
    invoke-virtual { v0 }, Landroid/os/Parcel;->recycle()V
    return-void
  :L2
  .line 10
    invoke-virtual { v1 }, Landroid/os/Parcel;->readException()V
  :L3
  .line 11
    invoke-virtual { v1 }, Landroid/os/Parcel;->recycle()V
  .line 12
    invoke-virtual { v0 }, Landroid/os/Parcel;->recycle()V
    return-void
  :L4
    move-exception p1
  .line 13
    invoke-virtual { v1 }, Landroid/os/Parcel;->recycle()V
  .line 14
    invoke-virtual { v0 }, Landroid/os/Parcel;->recycle()V
  .line 15
    throw p1
.end method

.method public N0(Ljava/lang/String;)V
  .catchall { :L0 .. :L1 } :L4
  .catchall { :L2 .. :L3 } :L4
  .registers 7
  .line 1
    invoke-static { }, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
    move-result-object v0
  .line 2
    invoke-static { }, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
    move-result-object v1
  :L0
    const-string v2, "cn.manstep.phonemirrorBox.sdk.IMusicInfoChangeListener"
  .line 3
    invoke-virtual { v0, v2 }, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
  .line 4
    invoke-virtual { v0, p1 }, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
  .line 5
    iget-object v2, p0, Lcn/manstep/phonemirrorBox/r0/c$a$a;->a:Landroid/os/IBinder;
    const/4 v3, 6
    const/4 v4, 0
    invoke-interface { v2, v3, v0, v1, v4 }, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    move-result v2
    if-nez v2, :L2
  .line 6
    invoke-static { }, Lcn/manstep/phonemirrorBox/r0/c$a;->G()Lcn/manstep/phonemirrorBox/r0/c;
    move-result-object v2
    if-eqz v2, :L2
  .line 7
    invoke-static { }, Lcn/manstep/phonemirrorBox/r0/c$a;->G()Lcn/manstep/phonemirrorBox/r0/c;
    move-result-object v2
    invoke-interface { v2, p1 }, Lcn/manstep/phonemirrorBox/r0/c;->N0(Ljava/lang/String;)V
  :L1
  .line 8
    invoke-virtual { v1 }, Landroid/os/Parcel;->recycle()V
  .line 9
    invoke-virtual { v0 }, Landroid/os/Parcel;->recycle()V
    return-void
  :L2
  .line 10
    invoke-virtual { v1 }, Landroid/os/Parcel;->readException()V
  :L3
  .line 11
    invoke-virtual { v1 }, Landroid/os/Parcel;->recycle()V
  .line 12
    invoke-virtual { v0 }, Landroid/os/Parcel;->recycle()V
    return-void
  :L4
    move-exception p1
  .line 13
    invoke-virtual { v1 }, Landroid/os/Parcel;->recycle()V
  .line 14
    invoke-virtual { v0 }, Landroid/os/Parcel;->recycle()V
  .line 15
    throw p1
.end method

.method public asBinder()Landroid/os/IBinder;
  .registers 2
  .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/r0/c$a$a;->a:Landroid/os/IBinder;
    return-object v0
.end method

.method public b0(I)V
  .catchall { :L0 .. :L1 } :L4
  .catchall { :L2 .. :L3 } :L4
  .registers 7
  .line 1
    invoke-static { }, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
    move-result-object v0
  .line 2
    invoke-static { }, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
    move-result-object v1
  :L0
    const-string v2, "cn.manstep.phonemirrorBox.sdk.IMusicInfoChangeListener"
  .line 3
    invoke-virtual { v0, v2 }, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
  .line 4
    invoke-virtual { v0, p1 }, Landroid/os/Parcel;->writeInt(I)V
  .line 5
    iget-object v2, p0, Lcn/manstep/phonemirrorBox/r0/c$a$a;->a:Landroid/os/IBinder;
    const/4 v3, 2
    const/4 v4, 0
    invoke-interface { v2, v3, v0, v1, v4 }, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    move-result v2
    if-nez v2, :L2
  .line 6
    invoke-static { }, Lcn/manstep/phonemirrorBox/r0/c$a;->G()Lcn/manstep/phonemirrorBox/r0/c;
    move-result-object v2
    if-eqz v2, :L2
  .line 7
    invoke-static { }, Lcn/manstep/phonemirrorBox/r0/c$a;->G()Lcn/manstep/phonemirrorBox/r0/c;
    move-result-object v2
    invoke-interface { v2, p1 }, Lcn/manstep/phonemirrorBox/r0/c;->b0(I)V
  :L1
  .line 8
    invoke-virtual { v1 }, Landroid/os/Parcel;->recycle()V
  .line 9
    invoke-virtual { v0 }, Landroid/os/Parcel;->recycle()V
    return-void
  :L2
  .line 10
    invoke-virtual { v1 }, Landroid/os/Parcel;->readException()V
  :L3
  .line 11
    invoke-virtual { v1 }, Landroid/os/Parcel;->recycle()V
  .line 12
    invoke-virtual { v0 }, Landroid/os/Parcel;->recycle()V
    return-void
  :L4
    move-exception p1
  .line 13
    invoke-virtual { v1 }, Landroid/os/Parcel;->recycle()V
  .line 14
    invoke-virtual { v0 }, Landroid/os/Parcel;->recycle()V
  .line 15
    throw p1
.end method

.method public h0(Ljava/lang/String;)V
  .catchall { :L0 .. :L1 } :L4
  .catchall { :L2 .. :L3 } :L4
  .registers 7
  .line 1
    invoke-static { }, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
    move-result-object v0
  .line 2
    invoke-static { }, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
    move-result-object v1
  :L0
    const-string v2, "cn.manstep.phonemirrorBox.sdk.IMusicInfoChangeListener"
  .line 3
    invoke-virtual { v0, v2 }, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
  .line 4
    invoke-virtual { v0, p1 }, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
  .line 5
    iget-object v2, p0, Lcn/manstep/phonemirrorBox/r0/c$a$a;->a:Landroid/os/IBinder;
    const/16 v3, 8
    const/4 v4, 0
    invoke-interface { v2, v3, v0, v1, v4 }, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    move-result v2
    if-nez v2, :L2
  .line 6
    invoke-static { }, Lcn/manstep/phonemirrorBox/r0/c$a;->G()Lcn/manstep/phonemirrorBox/r0/c;
    move-result-object v2
    if-eqz v2, :L2
  .line 7
    invoke-static { }, Lcn/manstep/phonemirrorBox/r0/c$a;->G()Lcn/manstep/phonemirrorBox/r0/c;
    move-result-object v2
    invoke-interface { v2, p1 }, Lcn/manstep/phonemirrorBox/r0/c;->h0(Ljava/lang/String;)V
  :L1
  .line 8
    invoke-virtual { v1 }, Landroid/os/Parcel;->recycle()V
  .line 9
    invoke-virtual { v0 }, Landroid/os/Parcel;->recycle()V
    return-void
  :L2
  .line 10
    invoke-virtual { v1 }, Landroid/os/Parcel;->readException()V
  :L3
  .line 11
    invoke-virtual { v1 }, Landroid/os/Parcel;->recycle()V
  .line 12
    invoke-virtual { v0 }, Landroid/os/Parcel;->recycle()V
    return-void
  :L4
    move-exception p1
  .line 13
    invoke-virtual { v1 }, Landroid/os/Parcel;->recycle()V
  .line 14
    invoke-virtual { v0 }, Landroid/os/Parcel;->recycle()V
  .line 15
    throw p1
.end method

.method public n(Ljava/lang/String;)V
  .catchall { :L0 .. :L1 } :L4
  .catchall { :L2 .. :L3 } :L4
  .registers 7
  .line 1
    invoke-static { }, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
    move-result-object v0
  .line 2
    invoke-static { }, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
    move-result-object v1
  :L0
    const-string v2, "cn.manstep.phonemirrorBox.sdk.IMusicInfoChangeListener"
  .line 3
    invoke-virtual { v0, v2 }, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
  .line 4
    invoke-virtual { v0, p1 }, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
  .line 5
    iget-object v2, p0, Lcn/manstep/phonemirrorBox/r0/c$a$a;->a:Landroid/os/IBinder;
    const/4 v3, 1
    const/4 v4, 0
    invoke-interface { v2, v3, v0, v1, v4 }, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    move-result v2
    if-nez v2, :L2
  .line 6
    invoke-static { }, Lcn/manstep/phonemirrorBox/r0/c$a;->G()Lcn/manstep/phonemirrorBox/r0/c;
    move-result-object v2
    if-eqz v2, :L2
  .line 7
    invoke-static { }, Lcn/manstep/phonemirrorBox/r0/c$a;->G()Lcn/manstep/phonemirrorBox/r0/c;
    move-result-object v2
    invoke-interface { v2, p1 }, Lcn/manstep/phonemirrorBox/r0/c;->n(Ljava/lang/String;)V
  :L1
  .line 8
    invoke-virtual { v1 }, Landroid/os/Parcel;->recycle()V
  .line 9
    invoke-virtual { v0 }, Landroid/os/Parcel;->recycle()V
    return-void
  :L2
  .line 10
    invoke-virtual { v1 }, Landroid/os/Parcel;->readException()V
  :L3
  .line 11
    invoke-virtual { v1 }, Landroid/os/Parcel;->recycle()V
  .line 12
    invoke-virtual { v0 }, Landroid/os/Parcel;->recycle()V
    return-void
  :L4
    move-exception p1
  .line 13
    invoke-virtual { v1 }, Landroid/os/Parcel;->recycle()V
  .line 14
    invoke-virtual { v0 }, Landroid/os/Parcel;->recycle()V
  .line 15
    throw p1
.end method

.method public y(I)V
  .catchall { :L0 .. :L1 } :L4
  .catchall { :L2 .. :L3 } :L4
  .registers 7
  .line 1
    invoke-static { }, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
    move-result-object v0
  .line 2
    invoke-static { }, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
    move-result-object v1
  :L0
    const-string v2, "cn.manstep.phonemirrorBox.sdk.IMusicInfoChangeListener"
  .line 3
    invoke-virtual { v0, v2 }, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
  .line 4
    invoke-virtual { v0, p1 }, Landroid/os/Parcel;->writeInt(I)V
  .line 5
    iget-object v2, p0, Lcn/manstep/phonemirrorBox/r0/c$a$a;->a:Landroid/os/IBinder;
    const/4 v3, 4
    const/4 v4, 0
    invoke-interface { v2, v3, v0, v1, v4 }, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    move-result v2
    if-nez v2, :L2
  .line 6
    invoke-static { }, Lcn/manstep/phonemirrorBox/r0/c$a;->G()Lcn/manstep/phonemirrorBox/r0/c;
    move-result-object v2
    if-eqz v2, :L2
  .line 7
    invoke-static { }, Lcn/manstep/phonemirrorBox/r0/c$a;->G()Lcn/manstep/phonemirrorBox/r0/c;
    move-result-object v2
    invoke-interface { v2, p1 }, Lcn/manstep/phonemirrorBox/r0/c;->y(I)V
  :L1
  .line 8
    invoke-virtual { v1 }, Landroid/os/Parcel;->recycle()V
  .line 9
    invoke-virtual { v0 }, Landroid/os/Parcel;->recycle()V
    return-void
  :L2
  .line 10
    invoke-virtual { v1 }, Landroid/os/Parcel;->readException()V
  :L3
  .line 11
    invoke-virtual { v1 }, Landroid/os/Parcel;->recycle()V
  .line 12
    invoke-virtual { v0 }, Landroid/os/Parcel;->recycle()V
    return-void
  :L4
    move-exception p1
  .line 13
    invoke-virtual { v1 }, Landroid/os/Parcel;->recycle()V
  .line 14
    invoke-virtual { v0 }, Landroid/os/Parcel;->recycle()V
  .line 15
    throw p1
.end method

.method public y0(Landroid/net/Uri;)V
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
    const-string v2, "cn.manstep.phonemirrorBox.sdk.IMusicInfoChangeListener"
  .line 3
    invoke-virtual { v0, v2 }, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
    const/4 v2, 0
    if-eqz p1, :L1
    const/4 v3, 1
  .line 4
    invoke-virtual { v0, v3 }, Landroid/os/Parcel;->writeInt(I)V
  .line 5
    invoke-virtual { p1, v0, v2 }, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;I)V
    goto :L2
  :L1
  .line 6
    invoke-virtual { v0, v2 }, Landroid/os/Parcel;->writeInt(I)V
  :L2
  .line 7
    iget-object v3, p0, Lcn/manstep/phonemirrorBox/r0/c$a$a;->a:Landroid/os/IBinder;
    const/16 v4, 11
    invoke-interface { v3, v4, v0, v1, v2 }, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    move-result v2
    if-nez v2, :L4
  .line 8
    invoke-static { }, Lcn/manstep/phonemirrorBox/r0/c$a;->G()Lcn/manstep/phonemirrorBox/r0/c;
    move-result-object v2
    if-eqz v2, :L4
  .line 9
    invoke-static { }, Lcn/manstep/phonemirrorBox/r0/c$a;->G()Lcn/manstep/phonemirrorBox/r0/c;
    move-result-object v2
    invoke-interface { v2, p1 }, Lcn/manstep/phonemirrorBox/r0/c;->y0(Landroid/net/Uri;)V
  :L3
  .line 10
    invoke-virtual { v1 }, Landroid/os/Parcel;->recycle()V
  .line 11
    invoke-virtual { v0 }, Landroid/os/Parcel;->recycle()V
    return-void
  :L4
  .line 12
    invoke-virtual { v1 }, Landroid/os/Parcel;->readException()V
  :L5
  .line 13
    invoke-virtual { v1 }, Landroid/os/Parcel;->recycle()V
  .line 14
    invoke-virtual { v0 }, Landroid/os/Parcel;->recycle()V
    return-void
  :L6
    move-exception p1
  .line 15
    invoke-virtual { v1 }, Landroid/os/Parcel;->recycle()V
  .line 16
    invoke-virtual { v0 }, Landroid/os/Parcel;->recycle()V
  .line 17
    throw p1
.end method

.method public z(I)V
  .catchall { :L0 .. :L1 } :L4
  .catchall { :L2 .. :L3 } :L4
  .registers 7
  .line 1
    invoke-static { }, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
    move-result-object v0
  .line 2
    invoke-static { }, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
    move-result-object v1
  :L0
    const-string v2, "cn.manstep.phonemirrorBox.sdk.IMusicInfoChangeListener"
  .line 3
    invoke-virtual { v0, v2 }, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
  .line 4
    invoke-virtual { v0, p1 }, Landroid/os/Parcel;->writeInt(I)V
  .line 5
    iget-object v2, p0, Lcn/manstep/phonemirrorBox/r0/c$a$a;->a:Landroid/os/IBinder;
    const/4 v3, 3
    const/4 v4, 0
    invoke-interface { v2, v3, v0, v1, v4 }, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    move-result v2
    if-nez v2, :L2
  .line 6
    invoke-static { }, Lcn/manstep/phonemirrorBox/r0/c$a;->G()Lcn/manstep/phonemirrorBox/r0/c;
    move-result-object v2
    if-eqz v2, :L2
  .line 7
    invoke-static { }, Lcn/manstep/phonemirrorBox/r0/c$a;->G()Lcn/manstep/phonemirrorBox/r0/c;
    move-result-object v2
    invoke-interface { v2, p1 }, Lcn/manstep/phonemirrorBox/r0/c;->z(I)V
  :L1
  .line 8
    invoke-virtual { v1 }, Landroid/os/Parcel;->recycle()V
  .line 9
    invoke-virtual { v0 }, Landroid/os/Parcel;->recycle()V
    return-void
  :L2
  .line 10
    invoke-virtual { v1 }, Landroid/os/Parcel;->readException()V
  :L3
  .line 11
    invoke-virtual { v1 }, Landroid/os/Parcel;->recycle()V
  .line 12
    invoke-virtual { v0 }, Landroid/os/Parcel;->recycle()V
    return-void
  :L4
    move-exception p1
  .line 13
    invoke-virtual { v1 }, Landroid/os/Parcel;->recycle()V
  .line 14
    invoke-virtual { v0 }, Landroid/os/Parcel;->recycle()V
  .line 15
    throw p1
.end method

.method public z0(Ljava/lang/String;)V
  .catchall { :L0 .. :L1 } :L4
  .catchall { :L2 .. :L3 } :L4
  .registers 7
  .line 1
    invoke-static { }, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
    move-result-object v0
  .line 2
    invoke-static { }, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
    move-result-object v1
  :L0
    const-string v2, "cn.manstep.phonemirrorBox.sdk.IMusicInfoChangeListener"
  .line 3
    invoke-virtual { v0, v2 }, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
  .line 4
    invoke-virtual { v0, p1 }, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
  .line 5
    iget-object v2, p0, Lcn/manstep/phonemirrorBox/r0/c$a$a;->a:Landroid/os/IBinder;
    const/16 v3, 9
    const/4 v4, 0
    invoke-interface { v2, v3, v0, v1, v4 }, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    move-result v2
    if-nez v2, :L2
  .line 6
    invoke-static { }, Lcn/manstep/phonemirrorBox/r0/c$a;->G()Lcn/manstep/phonemirrorBox/r0/c;
    move-result-object v2
    if-eqz v2, :L2
  .line 7
    invoke-static { }, Lcn/manstep/phonemirrorBox/r0/c$a;->G()Lcn/manstep/phonemirrorBox/r0/c;
    move-result-object v2
    invoke-interface { v2, p1 }, Lcn/manstep/phonemirrorBox/r0/c;->z0(Ljava/lang/String;)V
  :L1
  .line 8
    invoke-virtual { v1 }, Landroid/os/Parcel;->recycle()V
  .line 9
    invoke-virtual { v0 }, Landroid/os/Parcel;->recycle()V
    return-void
  :L2
  .line 10
    invoke-virtual { v1 }, Landroid/os/Parcel;->readException()V
  :L3
  .line 11
    invoke-virtual { v1 }, Landroid/os/Parcel;->recycle()V
  .line 12
    invoke-virtual { v0 }, Landroid/os/Parcel;->recycle()V
    return-void
  :L4
    move-exception p1
  .line 13
    invoke-virtual { v1 }, Landroid/os/Parcel;->recycle()V
  .line 14
    invoke-virtual { v0 }, Landroid/os/Parcel;->recycle()V
  .line 15
    throw p1
.end method
