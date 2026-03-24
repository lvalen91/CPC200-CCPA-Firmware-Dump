.class public abstract Lcom/jg/ids/i/b;
.super Landroid/os/Binder;
.source "SourceFile"

# interfaces
.implements Lcom/jg/ids/i/a;


# direct methods
.method public static a(Landroid/os/IBinder;)Lcom/jg/ids/i/a;
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 52
    if-nez p0, :cond_5

    move-object v0, v1

    .line 64
    :goto_4
    return-object v0

    .line 55
    :cond_5
    :try_start_5
    const-string v0, "com.heytap.openid.IOpenID"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 56
    if-eqz v0, :cond_11

    instance-of v2, v0, Lcom/jg/ids/i/a;

    if-nez v2, :cond_1a

    .line 57
    :cond_11
    new-instance v0, Lcom/jg/ids/i/c;

    invoke-direct {v0, p0}, Lcom/jg/ids/i/c;-><init>(Landroid/os/IBinder;)V

    goto :goto_4

    .line 64
    :catch_17
    move-exception v0

    move-object v0, v1

    goto :goto_4

    .line 59
    :cond_1a
    check-cast v0, Lcom/jg/ids/i/a;
    :try_end_1c
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_1c} :catch_17

    goto :goto_4
.end method
