.class public abstract Lcom/jg/ids/j/b;
.super Landroid/os/Binder;
.source "SourceFile"

# interfaces
.implements Lcom/jg/ids/j/a;


# direct methods
.method public static a(Landroid/os/IBinder;)Lcom/jg/ids/j/a;
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 98
    if-nez p0, :cond_5

    move-object v0, v1

    .line 106
    :goto_4
    return-object v0

    .line 101
    :cond_5
    :try_start_5
    const-string v0, "com.samsung.android.deviceidservice.IDeviceIdService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 102
    if-eqz v0, :cond_11

    instance-of v2, v0, Lcom/jg/ids/j/a;

    if-nez v2, :cond_1a

    :cond_11
    new-instance v0, Lcom/jg/ids/j/c;

    invoke-direct {v0, p0}, Lcom/jg/ids/j/c;-><init>(Landroid/os/IBinder;)V

    goto :goto_4

    .line 106
    :catch_17
    move-exception v0

    move-object v0, v1

    goto :goto_4

    .line 102
    :cond_1a
    check-cast v0, Lcom/jg/ids/j/a;
    :try_end_1c
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_1c} :catch_17

    goto :goto_4
.end method


# virtual methods
.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 7

    .prologue
    const/4 v0, 0x1

    .line 111
    sparse-switch p1, :sswitch_data_4a

    .line 134
    :try_start_4
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    .line 139
    :goto_8
    return v0

    .line 113
    :sswitch_9
    const-string v1, "com.samsung.android.deviceidservice.IDeviceIdService"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 114
    invoke-virtual {p0}, Lcom/jg/ids/j/b;->a()Ljava/lang/String;

    move-result-object v1

    .line 115
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 116
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_8

    .line 139
    :catch_19
    move-exception v1

    goto :goto_8

    .line 119
    :sswitch_1b
    const-string v1, "com.samsung.android.deviceidservice.IDeviceIdService"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 120
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/jg/ids/j/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 121
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 122
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_8

    .line 125
    :sswitch_2f
    const-string v1, "com.samsung.android.deviceidservice.IDeviceIdService"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 126
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/jg/ids/j/b;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 127
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 128
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_8

    .line 131
    :sswitch_43
    const-string v1, "com.samsung.android.deviceidservice.IDeviceIdService"

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
    :try_end_48
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_48} :catch_19

    goto :goto_8

    .line 111
    nop

    :sswitch_data_4a
    .sparse-switch
        0x1 -> :sswitch_9
        0x2 -> :sswitch_1b
        0x3 -> :sswitch_2f
        0x5f4e5446 -> :sswitch_43
    .end sparse-switch
.end method
