.class public abstract Lcn/manstep/phonemirrorBox/r0/b$a;
.super Landroid/os/Binder;
.implements Lcn/manstep/phonemirrorBox/r0/b;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Lcn/manstep/phonemirrorBox/r0/b;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 1033
  name = "a"
.end annotation
.annotation system Ldalvik/annotation/MemberClasses;
  value = {
    Lcn/manstep/phonemirrorBox/r0/b$a$a;
  }
.end annotation

.method public static G()Lcn/manstep/phonemirrorBox/r0/b;
  .registers 1
  .line 1
    sget-object v0, Lcn/manstep/phonemirrorBox/r0/b$a$a;->b:Lcn/manstep/phonemirrorBox/r0/b;
    return-object v0
.end method

.method public static u(Landroid/os/IBinder;)Lcn/manstep/phonemirrorBox/r0/b;
  .registers 3
    if-nez p0, :L0
    const/4 p0, 0
    return-object p0
  :L0
    const-string v0, "cn.manstep.phonemirrorBox.sdk.IConnectStateChangeListener"
  .line 1
    invoke-interface { p0, v0 }, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;
    move-result-object v0
    if-eqz v0, :L1
  .line 2
    instance-of v1, v0, Lcn/manstep/phonemirrorBox/r0/b;
    if-eqz v1, :L1
  .line 3
    check-cast v0, Lcn/manstep/phonemirrorBox/r0/b;
    return-object v0
  :L1
  .line 4
    new-instance v0, Lcn/manstep/phonemirrorBox/r0/b$a$a;
    invoke-direct { v0, p0 }, Lcn/manstep/phonemirrorBox/r0/b$a$a;-><init>(Landroid/os/IBinder;)V
    return-object v0
.end method
