.class final Lcom/jg/ids/j/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/jg/ids/j/a;


# instance fields
.field private a:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .registers 2

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/jg/ids/j/c;->a:Landroid/os/IBinder;

    .line 17
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .registers 6

    .prologue
    .line 21
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 22
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 24
    :try_start_8
    const-string v0, "com.samsung.android.deviceidservice.IDeviceIdService"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 25
    iget-object v0, p0, Lcom/jg/ids/j/c;->a:Landroid/os/IBinder;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 26
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 27
    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;
    :try_end_1a
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_1a} :catch_22
    .catchall {:try_start_8 .. :try_end_1a} :catchall_2c

    move-result-object v0

    .line 32
    :try_start_1b
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 33
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
    :try_end_21
    .catch Ljava/lang/Throwable; {:try_start_1b .. :try_end_21} :catch_38

    .line 38
    :goto_21
    return-object v0

    :catch_22
    move-exception v0

    .line 32
    :try_start_23
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 33
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
    :try_end_29
    .catch Ljava/lang/Throwable; {:try_start_23 .. :try_end_29} :catch_36

    .line 38
    :goto_29
    const-string v0, ""

    goto :goto_21

    .line 31
    :catchall_2c
    move-exception v0

    .line 32
    :try_start_2d
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 33
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
    :try_end_33
    .catch Ljava/lang/Throwable; {:try_start_2d .. :try_end_33} :catch_34

    .line 36
    :goto_33
    throw v0

    :catch_34
    move-exception v1

    goto :goto_33

    .line 37
    :catch_36
    move-exception v0

    goto :goto_29

    :catch_38
    move-exception v1

    goto :goto_21
.end method

.method public final a(Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    .prologue
    .line 43
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 44
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 46
    :try_start_8
    const-string v0, "com.samsung.android.deviceidservice.IDeviceIdService"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 47
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 48
    iget-object v0, p0, Lcom/jg/ids/j/c;->a:Landroid/os/IBinder;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 49
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 50
    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;
    :try_end_1d
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_1d} :catch_25
    .catchall {:try_start_8 .. :try_end_1d} :catchall_2f

    move-result-object v0

    .line 55
    :try_start_1e
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 56
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
    :try_end_24
    .catch Ljava/lang/Throwable; {:try_start_1e .. :try_end_24} :catch_3b

    .line 61
    :goto_24
    return-object v0

    :catch_25
    move-exception v0

    .line 55
    :try_start_26
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 56
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
    :try_end_2c
    .catch Ljava/lang/Throwable; {:try_start_26 .. :try_end_2c} :catch_39

    .line 61
    :goto_2c
    const-string v0, ""

    goto :goto_24

    .line 54
    :catchall_2f
    move-exception v0

    .line 55
    :try_start_30
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 56
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
    :try_end_36
    .catch Ljava/lang/Throwable; {:try_start_30 .. :try_end_36} :catch_37

    .line 59
    :goto_36
    throw v0

    :catch_37
    move-exception v1

    goto :goto_36

    .line 60
    :catch_39
    move-exception v0

    goto :goto_2c

    :catch_3b
    move-exception v1

    goto :goto_24
.end method

.method public final asBinder()Landroid/os/IBinder;
    .registers 2

    .prologue
    .line 65
    iget-object v0, p0, Lcom/jg/ids/j/c;->a:Landroid/os/IBinder;

    return-object v0
.end method

.method public final b(Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    .prologue
    .line 70
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 71
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 73
    :try_start_8
    const-string v0, "com.samsung.android.deviceidservice.IDeviceIdService"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 74
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 75
    iget-object v0, p0, Lcom/jg/ids/j/c;->a:Landroid/os/IBinder;

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 76
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 77
    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;
    :try_end_1d
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_1d} :catch_25
    .catchall {:try_start_8 .. :try_end_1d} :catchall_2f

    move-result-object v0

    .line 82
    :try_start_1e
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 83
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
    :try_end_24
    .catch Ljava/lang/Throwable; {:try_start_1e .. :try_end_24} :catch_3b

    .line 88
    :goto_24
    return-object v0

    :catch_25
    move-exception v0

    .line 82
    :try_start_26
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 83
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
    :try_end_2c
    .catch Ljava/lang/Throwable; {:try_start_26 .. :try_end_2c} :catch_39

    .line 88
    :goto_2c
    const-string v0, ""

    goto :goto_24

    .line 81
    :catchall_2f
    move-exception v0

    .line 82
    :try_start_30
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 83
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
    :try_end_36
    .catch Ljava/lang/Throwable; {:try_start_30 .. :try_end_36} :catch_37

    .line 86
    :goto_36
    throw v0

    :catch_37
    move-exception v1

    goto :goto_36

    .line 87
    :catch_39
    move-exception v0

    goto :goto_2c

    :catch_3b
    move-exception v1

    goto :goto_24
.end method
