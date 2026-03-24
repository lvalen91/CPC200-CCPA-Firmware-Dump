.class public abstract Lcn/manstep/phonemirrorBox/r0/a$a;
.super Landroid/os/Binder;
.source "SourceFile"

# interfaces
.implements Lcn/manstep/phonemirrorBox/r0/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/manstep/phonemirrorBox/r0/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/manstep/phonemirrorBox/r0/a$a$a;
    }
.end annotation


# direct methods
.method public static G()Lcn/manstep/phonemirrorBox/r0/a;
    .registers 1

    .line 1
    sget-object v0, Lcn/manstep/phonemirrorBox/r0/a$a$a;->b:Lcn/manstep/phonemirrorBox/r0/a;

    return-object v0
.end method

.method public static u(Landroid/os/IBinder;)Lcn/manstep/phonemirrorBox/r0/a;
    .registers 3

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    const-string v0, "cn.manstep.phonemirrorBox.sdk.ICallInfoChangeListener"

    .line 1
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 2
    instance-of v1, v0, Lcn/manstep/phonemirrorBox/r0/a;

    if-eqz v1, :cond_13

    .line 3
    check-cast v0, Lcn/manstep/phonemirrorBox/r0/a;

    return-object v0

    .line 4
    :cond_13
    new-instance v0, Lcn/manstep/phonemirrorBox/r0/a$a$a;

    invoke-direct {v0, p0}, Lcn/manstep/phonemirrorBox/r0/a$a$a;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method
