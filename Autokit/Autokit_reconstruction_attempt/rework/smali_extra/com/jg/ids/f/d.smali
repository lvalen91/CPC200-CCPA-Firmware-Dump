.class final Lcom/jg/ids/f/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/jg/ids/f/b;


# instance fields
.field private a:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .registers 2

    .prologue
    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    iput-object p1, p0, Lcom/jg/ids/f/d;->a:Landroid/os/IBinder;

    .line 123
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .registers 6

    .prologue
    .line 136
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 137
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 140
    :try_start_8
    const-string v0, "com.uodis.opendevice.aidl.OpenDeviceIdentifierService"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 141
    iget-object v0, p0, Lcom/jg/ids/f/d;->a:Landroid/os/IBinder;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    .line 142
    if-nez v0, :cond_2c

    invoke-static {}, Lcom/jg/ids/f/c;->c()Lcom/jg/ids/f/b;

    move-result-object v0

    if-eqz v0, :cond_2c

    .line 143
    invoke-static {}, Lcom/jg/ids/f/c;->c()Lcom/jg/ids/f/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/jg/ids/f/b;->a()Ljava/lang/String;
    :try_end_24
    .catchall {:try_start_8 .. :try_end_24} :catchall_3a

    move-result-object v0

    .line 148
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 149
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 151
    :goto_2b
    return-object v0

    .line 145
    :cond_2c
    :try_start_2c
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 146
    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;
    :try_end_32
    .catchall {:try_start_2c .. :try_end_32} :catchall_3a

    move-result-object v0

    .line 148
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 149
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    goto :goto_2b

    .line 148
    :catchall_3a
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 149
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public final asBinder()Landroid/os/IBinder;
    .registers 2

    .prologue
    .line 127
    iget-object v0, p0, Lcom/jg/ids/f/d;->a:Landroid/os/IBinder;

    return-object v0
.end method

.method public final b()Z
    .registers 7

    .prologue
    const/4 v0, 0x0

    .line 156
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 157
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 160
    :try_start_9
    const-string v3, "com.uodis.opendevice.aidl.OpenDeviceIdentifierService"

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 161
    iget-object v3, p0, Lcom/jg/ids/f/d;->a:Landroid/os/IBinder;

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-interface {v3, v4, v1, v2, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    .line 162
    if-nez v3, :cond_2d

    invoke-static {}, Lcom/jg/ids/f/c;->c()Lcom/jg/ids/f/b;

    move-result-object v3

    if-eqz v3, :cond_2d

    .line 163
    invoke-static {}, Lcom/jg/ids/f/c;->c()Lcom/jg/ids/f/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/jg/ids/f/b;->b()Z
    :try_end_25
    .catchall {:try_start_9 .. :try_end_25} :catchall_3e

    move-result v0

    .line 168
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 169
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 171
    :goto_2c
    return v0

    .line 165
    :cond_2d
    :try_start_2d
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 166
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I
    :try_end_33
    .catchall {:try_start_2d .. :try_end_33} :catchall_3e

    move-result v3

    if-eqz v3, :cond_37

    const/4 v0, 0x1

    .line 168
    :cond_37
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 169
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    goto :goto_2c

    .line 168
    :catchall_3e
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 169
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method
