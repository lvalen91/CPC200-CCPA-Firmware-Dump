.class public final Lcom/jg/ids/i/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/jg/ids/i/a;


# instance fields
.field private a:Landroid/os/IBinder;


# direct methods
.method public constructor <init>(Landroid/os/IBinder;)V
    .registers 2

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/jg/ids/i/c;->a:Landroid/os/IBinder;

    .line 19
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 9

    .prologue
    .line 23
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 24
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 26
    :try_start_8
    const-string v0, "com.heytap.openid.IOpenID"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 27
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 28
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 29
    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 30
    iget-object v0, p0, Lcom/jg/ids/i/c;->a:Landroid/os/IBinder;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 31
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 32
    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;
    :try_end_23
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_23} :catch_2b
    .catchall {:try_start_8 .. :try_end_23} :catchall_35

    move-result-object v0

    .line 36
    :try_start_24
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 37
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
    :try_end_2a
    .catch Ljava/lang/Throwable; {:try_start_24 .. :try_end_2a} :catch_41

    .line 42
    :goto_2a
    return-object v0

    :catch_2b
    move-exception v0

    .line 36
    :try_start_2c
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 37
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
    :try_end_32
    .catch Ljava/lang/Throwable; {:try_start_2c .. :try_end_32} :catch_3f

    .line 42
    :goto_32
    const-string v0, ""

    goto :goto_2a

    .line 35
    :catchall_35
    move-exception v0

    .line 36
    :try_start_36
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 37
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
    :try_end_3c
    .catch Ljava/lang/Throwable; {:try_start_36 .. :try_end_3c} :catch_3d

    .line 40
    :goto_3c
    throw v0

    :catch_3d
    move-exception v1

    goto :goto_3c

    .line 41
    :catch_3f
    move-exception v0

    goto :goto_32

    :catch_41
    move-exception v1

    goto :goto_2a
.end method

.method public final asBinder()Landroid/os/IBinder;
    .registers 2

    .prologue
    .line 46
    iget-object v0, p0, Lcom/jg/ids/i/c;->a:Landroid/os/IBinder;

    return-object v0
.end method
