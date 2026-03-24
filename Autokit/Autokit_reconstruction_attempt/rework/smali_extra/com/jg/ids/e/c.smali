.class public abstract Lcom/jg/ids/e/c;
.super Landroid/os/Binder;
.source "SourceFile"

# interfaces
.implements Lcom/jg/ids/e/b;


# direct methods
.method public static a(Landroid/os/IBinder;)Lcom/jg/ids/e/b;
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 82
    if-nez p0, :cond_5

    move-object v0, v1

    .line 94
    :goto_4
    return-object v0

    .line 85
    :cond_5
    :try_start_5
    const-string v0, "com.google.android.gms.ads.identifier.internal.IAdvertisingIdService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 86
    if-eqz v0, :cond_11

    instance-of v2, v0, Lcom/jg/ids/e/b;

    if-nez v2, :cond_1a

    .line 87
    :cond_11
    new-instance v0, Lcom/jg/ids/e/d;

    invoke-direct {v0, p0}, Lcom/jg/ids/e/d;-><init>(Landroid/os/IBinder;)V

    goto :goto_4

    .line 94
    :catch_17
    move-exception v0

    move-object v0, v1

    goto :goto_4

    .line 89
    :cond_1a
    check-cast v0, Lcom/jg/ids/e/b;
    :try_end_1c
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_1c} :catch_17

    goto :goto_4
.end method


# virtual methods
.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 8

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 99
    sparse-switch p1, :sswitch_data_3e

    .line 116
    :try_start_5
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    .line 120
    :goto_9
    return v0

    .line 101
    :sswitch_a
    const-string v1, "com.google.android.gms.ads.identifier.internal.IAdvertisingIdService"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 102
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 103
    invoke-virtual {p0}, Lcom/jg/ids/e/c;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_9

    .line 120
    :catch_1a
    move-exception v1

    goto :goto_9

    .line 106
    :sswitch_1c
    const-string v2, "com.google.android.gms.ads.identifier.internal.IAdvertisingIdService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 107
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_36

    move v2, v0

    .line 108
    :goto_28
    invoke-virtual {p0, v2}, Lcom/jg/ids/e/c;->a(Z)Z

    move-result v2

    .line 109
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 110
    if-eqz v2, :cond_32

    move v1, v0

    :cond_32
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    :cond_36
    move v2, v1

    .line 107
    goto :goto_28

    .line 113
    :sswitch_38
    const-string v1, "com.google.android.gms.ads.identifier.internal.IAdvertisingIdService"

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
    :try_end_3d
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_3d} :catch_1a

    goto :goto_9

    .line 99
    :sswitch_data_3e
    .sparse-switch
        0x1 -> :sswitch_a
        0x2 -> :sswitch_1c
        0x5f4e5446 -> :sswitch_38
    .end sparse-switch
.end method
