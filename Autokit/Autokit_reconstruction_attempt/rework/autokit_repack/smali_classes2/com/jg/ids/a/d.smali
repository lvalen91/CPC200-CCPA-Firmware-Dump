.class public final Lcom/jg/ids/a/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/jg/ids/a/b;


# instance fields
.field private a:Landroid/os/IBinder;


# direct methods
.method public constructor <init>(Landroid/os/IBinder;)V
    .registers 2

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/jg/ids/a/d;->a:Landroid/os/IBinder;

    .line 21
    return-void
.end method


# virtual methods
.method public final a()Z
    .registers 8

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 25
    .line 26
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 27
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    .line 29
    :try_start_a
    const-string v4, "com.asus.msa.SupplementaryDID.IDidAidlInterface"

    invoke-virtual {v2, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 30
    iget-object v4, p0, Lcom/jg/ids/a/d;->a:Landroid/os/IBinder;

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-interface {v4, v5, v2, v3, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 31
    invoke-virtual {v3}, Landroid/os/Parcel;->readException()V

    .line 32
    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I
    :try_end_1c
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_1c} :catch_26
    .catchall {:try_start_a .. :try_end_1c} :catchall_30

    move-result v4

    if-nez v4, :cond_3c

    .line 39
    :goto_1f
    :try_start_1f
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 40
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
    :try_end_25
    .catch Ljava/lang/Throwable; {:try_start_1f .. :try_end_25} :catch_3a

    .line 45
    :goto_25
    return v0

    :catch_26
    move-exception v1

    .line 39
    :try_start_27
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 40
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
    :try_end_2d
    .catch Ljava/lang/Throwable; {:try_start_27 .. :try_end_2d} :catch_2e

    goto :goto_25

    .line 44
    :catch_2e
    move-exception v1

    goto :goto_25

    .line 38
    :catchall_30
    move-exception v0

    .line 39
    :try_start_31
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 40
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
    :try_end_37
    .catch Ljava/lang/Throwable; {:try_start_31 .. :try_end_37} :catch_38

    .line 43
    :goto_37
    throw v0

    :catch_38
    move-exception v1

    goto :goto_37

    :catch_3a
    move-exception v1

    goto :goto_25

    :cond_3c
    move v0, v1

    goto :goto_1f
.end method

.method public final asBinder()Landroid/os/IBinder;
    .registers 2

    .prologue
    .line 49
    iget-object v0, p0, Lcom/jg/ids/a/d;->a:Landroid/os/IBinder;

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .registers 6

    .prologue
    .line 54
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 55
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 57
    :try_start_8
    const-string v0, "com.asus.msa.SupplementaryDID.IDidAidlInterface"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 58
    iget-object v0, p0, Lcom/jg/ids/a/d;->a:Landroid/os/IBinder;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 59
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 60
    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;
    :try_end_1a
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_1a} :catch_22
    .catchall {:try_start_8 .. :try_end_1a} :catchall_2c

    move-result-object v0

    .line 64
    :try_start_1b
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 65
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
    :try_end_21
    .catch Ljava/lang/Throwable; {:try_start_1b .. :try_end_21} :catch_38

    .line 70
    :goto_21
    return-object v0

    :catch_22
    move-exception v0

    .line 64
    :try_start_23
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 65
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
    :try_end_29
    .catch Ljava/lang/Throwable; {:try_start_23 .. :try_end_29} :catch_36

    .line 70
    :goto_29
    const-string v0, ""

    goto :goto_21

    .line 63
    :catchall_2c
    move-exception v0

    .line 64
    :try_start_2d
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 65
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
    :try_end_33
    .catch Ljava/lang/Throwable; {:try_start_2d .. :try_end_33} :catch_34

    .line 68
    :goto_33
    throw v0

    :catch_34
    move-exception v1

    goto :goto_33

    .line 69
    :catch_36
    move-exception v0

    goto :goto_29

    :catch_38
    move-exception v1

    goto :goto_21
.end method

.method public final c()Ljava/lang/String;
    .registers 6

    .prologue
    .line 75
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 76
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 78
    :try_start_8
    const-string v0, "com.asus.msa.SupplementaryDID.IDidAidlInterface"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 79
    iget-object v0, p0, Lcom/jg/ids/a/d;->a:Landroid/os/IBinder;

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 80
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 81
    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;
    :try_end_1a
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_1a} :catch_22
    .catchall {:try_start_8 .. :try_end_1a} :catchall_2c

    move-result-object v0

    .line 86
    :try_start_1b
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 87
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
    :try_end_21
    .catch Ljava/lang/Throwable; {:try_start_1b .. :try_end_21} :catch_38

    .line 92
    :goto_21
    return-object v0

    :catch_22
    move-exception v0

    .line 86
    :try_start_23
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 87
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
    :try_end_29
    .catch Ljava/lang/Throwable; {:try_start_23 .. :try_end_29} :catch_36

    .line 92
    :goto_29
    const-string v0, ""

    goto :goto_21

    .line 85
    :catchall_2c
    move-exception v0

    .line 86
    :try_start_2d
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 87
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
    :try_end_33
    .catch Ljava/lang/Throwable; {:try_start_2d .. :try_end_33} :catch_34

    .line 90
    :goto_33
    throw v0

    :catch_34
    move-exception v1

    goto :goto_33

    .line 91
    :catch_36
    move-exception v0

    goto :goto_29

    :catch_38
    move-exception v1

    goto :goto_21
.end method

.method public final d()Ljava/lang/String;
    .registers 6

    .prologue
    .line 97
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 98
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 100
    :try_start_8
    const-string v0, "com.asus.msa.SupplementaryDID.IDidAidlInterface"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 101
    iget-object v0, p0, Lcom/jg/ids/a/d;->a:Landroid/os/IBinder;

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 102
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 103
    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;
    :try_end_1a
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_1a} :catch_22
    .catchall {:try_start_8 .. :try_end_1a} :catchall_2c

    move-result-object v0

    .line 107
    :try_start_1b
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 108
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
    :try_end_21
    .catch Ljava/lang/Throwable; {:try_start_1b .. :try_end_21} :catch_38

    .line 113
    :goto_21
    return-object v0

    :catch_22
    move-exception v0

    .line 107
    :try_start_23
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 108
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
    :try_end_29
    .catch Ljava/lang/Throwable; {:try_start_23 .. :try_end_29} :catch_36

    .line 113
    :goto_29
    const-string v0, ""

    goto :goto_21

    .line 106
    :catchall_2c
    move-exception v0

    .line 107
    :try_start_2d
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 108
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
    :try_end_33
    .catch Ljava/lang/Throwable; {:try_start_2d .. :try_end_33} :catch_34

    .line 111
    :goto_33
    throw v0

    :catch_34
    move-exception v1

    goto :goto_33

    .line 112
    :catch_36
    move-exception v0

    goto :goto_29

    :catch_38
    move-exception v1

    goto :goto_21
.end method

.method public final e()Ljava/lang/String;
    .registers 6

    .prologue
    .line 118
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 119
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 121
    :try_start_8
    const-string v0, "com.asus.msa.SupplementaryDID.IDidAidlInterface"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 122
    iget-object v0, p0, Lcom/jg/ids/a/d;->a:Landroid/os/IBinder;

    const/4 v3, 0x5

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 123
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 124
    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_1a} :catch_22
    .catchall {:try_start_8 .. :try_end_1a} :catchall_2c

    move-result-object v0

    .line 128
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 129
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 131
    :goto_21
    return-object v0

    .line 128
    :catch_22
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 129
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 131
    const-string v0, ""

    goto :goto_21

    .line 128
    :catchall_2c
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 129
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method
