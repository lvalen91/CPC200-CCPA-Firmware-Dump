.class public abstract Lcom/jg/ids/i/e;
.super Landroid/os/Binder;
.source "SourceFile"

# interfaces
.implements Lcom/jg/ids/i/d;


# direct methods
.method public static a(Landroid/os/IBinder;)Lcom/jg/ids/i/d;
    .registers 3

    .prologue
    .line 56
    if-nez p0, :cond_4

    .line 57
    const/4 v0, 0x0

    .line 63
    :goto_3
    return-object v0

    .line 59
    :cond_4
    const-string v0, "com.oplus.stdid.IStdID"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 60
    if-eqz v0, :cond_10

    instance-of v1, v0, Lcom/jg/ids/i/d;

    if-nez v1, :cond_16

    .line 61
    :cond_10
    new-instance v0, Lcom/jg/ids/i/f;

    invoke-direct {v0, p0}, Lcom/jg/ids/i/f;-><init>(Landroid/os/IBinder;)V

    goto :goto_3

    .line 63
    :cond_16
    check-cast v0, Lcom/jg/ids/i/d;

    goto :goto_3
.end method
