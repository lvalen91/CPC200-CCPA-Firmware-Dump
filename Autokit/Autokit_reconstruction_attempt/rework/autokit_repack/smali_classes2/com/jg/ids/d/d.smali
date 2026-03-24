.class final Lcom/jg/ids/d/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/jg/ids/d/b;


# instance fields
.field private a:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .registers 2

    .prologue
    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 167
    iput-object p1, p0, Lcom/jg/ids/d/d;->a:Landroid/os/IBinder;

    .line 168
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    .prologue
    .line 201
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 202
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 205
    :try_start_8
    const-string v0, "com.android.creator.IdsSupplier"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 206
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 207
    iget-object v0, p0, Lcom/jg/ids/d/d;->a:Landroid/os/IBinder;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    .line 208
    if-nez v0, :cond_2f

    invoke-static {}, Lcom/jg/ids/d/c;->d()Lcom/jg/ids/d/b;

    move-result-object v0

    if-eqz v0, :cond_2f

    .line 209
    invoke-static {}, Lcom/jg/ids/d/c;->d()Lcom/jg/ids/d/b;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/jg/ids/d/b;->a(Ljava/lang/String;)Ljava/lang/String;
    :try_end_27
    .catchall {:try_start_8 .. :try_end_27} :catchall_3d

    move-result-object v0

    .line 214
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 215
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 217
    :goto_2e
    return-object v0

    .line 211
    :cond_2f
    :try_start_2f
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 212
    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;
    :try_end_35
    .catchall {:try_start_2f .. :try_end_35} :catchall_3d

    move-result-object v0

    .line 214
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 215
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    goto :goto_2e

    .line 214
    :catchall_3d
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 215
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public final a()Z
    .registers 8

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 181
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 182
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    .line 185
    :try_start_a
    const-string v4, "com.android.creator.IdsSupplier"

    invoke-virtual {v2, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 186
    iget-object v4, p0, Lcom/jg/ids/d/d;->a:Landroid/os/IBinder;

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-interface {v4, v5, v2, v3, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    .line 187
    if-nez v4, :cond_2e

    invoke-static {}, Lcom/jg/ids/d/c;->d()Lcom/jg/ids/d/b;

    move-result-object v4

    if-eqz v4, :cond_2e

    .line 188
    invoke-static {}, Lcom/jg/ids/d/c;->d()Lcom/jg/ids/d/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/jg/ids/d/b;->a()Z
    :try_end_26
    .catchall {:try_start_a .. :try_end_26} :catchall_40

    move-result v0

    .line 193
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 194
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 196
    :goto_2d
    return v0

    .line 190
    :cond_2e
    :try_start_2e
    invoke-virtual {v3}, Landroid/os/Parcel;->readException()V

    .line 191
    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I
    :try_end_34
    .catchall {:try_start_2e .. :try_end_34} :catchall_40

    move-result v4

    if-eqz v4, :cond_3e

    .line 193
    :goto_37
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 194
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    goto :goto_2d

    :cond_3e
    move v0, v1

    .line 191
    goto :goto_37

    .line 193
    :catchall_40
    move-exception v0

    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 194
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public final asBinder()Landroid/os/IBinder;
    .registers 2

    .prologue
    .line 172
    iget-object v0, p0, Lcom/jg/ids/d/d;->a:Landroid/os/IBinder;

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .registers 6

    .prologue
    .line 222
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 223
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 226
    :try_start_8
    const-string v0, "com.android.creator.IdsSupplier"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 227
    iget-object v0, p0, Lcom/jg/ids/d/d;->a:Landroid/os/IBinder;

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    .line 228
    if-nez v0, :cond_2c

    invoke-static {}, Lcom/jg/ids/d/c;->d()Lcom/jg/ids/d/b;

    move-result-object v0

    if-eqz v0, :cond_2c

    .line 229
    invoke-static {}, Lcom/jg/ids/d/c;->d()Lcom/jg/ids/d/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/jg/ids/d/b;->b()Ljava/lang/String;
    :try_end_24
    .catchall {:try_start_8 .. :try_end_24} :catchall_3a

    move-result-object v0

    .line 234
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 235
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 237
    :goto_2b
    return-object v0

    .line 231
    :cond_2c
    :try_start_2c
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 232
    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;
    :try_end_32
    .catchall {:try_start_2c .. :try_end_32} :catchall_3a

    move-result-object v0

    .line 234
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 235
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    goto :goto_2b

    .line 234
    :catchall_3a
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 235
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public final b(Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    .prologue
    .line 262
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 263
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 266
    :try_start_8
    const-string v0, "com.android.creator.IdsSupplier"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 267
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 268
    iget-object v0, p0, Lcom/jg/ids/d/d;->a:Landroid/os/IBinder;

    const/4 v3, 0x5

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    .line 269
    if-nez v0, :cond_2f

    invoke-static {}, Lcom/jg/ids/d/c;->d()Lcom/jg/ids/d/b;

    move-result-object v0

    if-eqz v0, :cond_2f

    .line 270
    invoke-static {}, Lcom/jg/ids/d/c;->d()Lcom/jg/ids/d/b;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/jg/ids/d/b;->b(Ljava/lang/String;)Ljava/lang/String;
    :try_end_27
    .catchall {:try_start_8 .. :try_end_27} :catchall_3d

    move-result-object v0

    .line 275
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 276
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 278
    :goto_2e
    return-object v0

    .line 272
    :cond_2f
    :try_start_2f
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 273
    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;
    :try_end_35
    .catchall {:try_start_2f .. :try_end_35} :catchall_3d

    move-result-object v0

    .line 275
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 276
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    goto :goto_2e

    .line 275
    :catchall_3d
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 276
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public final c()Ljava/lang/String;
    .registers 6

    .prologue
    .line 242
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 243
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 246
    :try_start_8
    const-string v0, "com.android.creator.IdsSupplier"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 247
    iget-object v0, p0, Lcom/jg/ids/d/d;->a:Landroid/os/IBinder;

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    .line 248
    if-nez v0, :cond_2c

    invoke-static {}, Lcom/jg/ids/d/c;->d()Lcom/jg/ids/d/b;

    move-result-object v0

    if-eqz v0, :cond_2c

    .line 249
    invoke-static {}, Lcom/jg/ids/d/c;->d()Lcom/jg/ids/d/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/jg/ids/d/b;->c()Ljava/lang/String;
    :try_end_24
    .catchall {:try_start_8 .. :try_end_24} :catchall_3a

    move-result-object v0

    .line 254
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 255
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 257
    :goto_2b
    return-object v0

    .line 251
    :cond_2c
    :try_start_2c
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 252
    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;
    :try_end_32
    .catchall {:try_start_2c .. :try_end_32} :catchall_3a

    move-result-object v0

    .line 254
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 255
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    goto :goto_2b

    .line 254
    :catchall_3a
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 255
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method
