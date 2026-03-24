.class final Lcom/jg/ids/b/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/jg/ids/b/b;


# instance fields
.field private a:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .registers 2

    .prologue
    .line 197
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 198
    iput-object p1, p0, Lcom/jg/ids/b/d;->a:Landroid/os/IBinder;

    .line 199
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    .prologue
    .line 212
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 213
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 216
    :try_start_8
    const-string v0, "com.coolpad.deviceidsupport.IDeviceIdManager"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 217
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 218
    iget-object v0, p0, Lcom/jg/ids/b/d;->a:Landroid/os/IBinder;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    .line 219
    if-nez v0, :cond_2f

    invoke-static {}, Lcom/jg/ids/b/c;->c()Lcom/jg/ids/b/b;

    move-result-object v0

    if-eqz v0, :cond_2f

    .line 220
    invoke-static {}, Lcom/jg/ids/b/c;->c()Lcom/jg/ids/b/b;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/jg/ids/b/b;->a(Ljava/lang/String;)Ljava/lang/String;
    :try_end_27
    .catchall {:try_start_8 .. :try_end_27} :catchall_3d

    move-result-object v0

    .line 225
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 226
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 228
    :goto_2e
    return-object v0

    .line 222
    :cond_2f
    :try_start_2f
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 223
    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;
    :try_end_35
    .catchall {:try_start_2f .. :try_end_35} :catchall_3d

    move-result-object v0

    .line 225
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 226
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    goto :goto_2e

    .line 225
    :catchall_3d
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 226
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public final a()Z
    .registers 7

    .prologue
    const/4 v0, 0x0

    .line 317
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 318
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 321
    :try_start_9
    const-string v3, "com.coolpad.deviceidsupport.IDeviceIdManager"

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 322
    iget-object v3, p0, Lcom/jg/ids/b/d;->a:Landroid/os/IBinder;

    const/4 v4, 0x6

    const/4 v5, 0x0

    invoke-interface {v3, v4, v1, v2, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    .line 323
    if-nez v3, :cond_2d

    invoke-static {}, Lcom/jg/ids/b/c;->c()Lcom/jg/ids/b/b;

    move-result-object v3

    if-eqz v3, :cond_2d

    .line 324
    invoke-static {}, Lcom/jg/ids/b/c;->c()Lcom/jg/ids/b/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/jg/ids/b/b;->a()Z
    :try_end_25
    .catchall {:try_start_9 .. :try_end_25} :catchall_3e

    move-result v0

    .line 329
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 330
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 332
    :goto_2c
    return v0

    .line 326
    :cond_2d
    :try_start_2d
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 327
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I
    :try_end_33
    .catchall {:try_start_2d .. :try_end_33} :catchall_3e

    move-result v3

    if-eqz v3, :cond_37

    const/4 v0, 0x1

    .line 329
    :cond_37
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 330
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    goto :goto_2c

    .line 329
    :catchall_3e
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 330
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public final asBinder()Landroid/os/IBinder;
    .registers 2

    .prologue
    .line 203
    iget-object v0, p0, Lcom/jg/ids/b/d;->a:Landroid/os/IBinder;

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .registers 6

    .prologue
    .line 337
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 338
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 341
    :try_start_8
    const-string v0, "com.coolpad.deviceidsupport.IDeviceIdManager"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 342
    iget-object v0, p0, Lcom/jg/ids/b/d;->a:Landroid/os/IBinder;

    const/4 v3, 0x7

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    .line 343
    if-nez v0, :cond_2c

    invoke-static {}, Lcom/jg/ids/b/c;->c()Lcom/jg/ids/b/b;

    move-result-object v0

    if-eqz v0, :cond_2c

    .line 344
    invoke-static {}, Lcom/jg/ids/b/c;->c()Lcom/jg/ids/b/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/jg/ids/b/b;->b()Ljava/lang/String;
    :try_end_24
    .catchall {:try_start_8 .. :try_end_24} :catchall_3a

    move-result-object v0

    .line 349
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 350
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 352
    :goto_2b
    return-object v0

    .line 346
    :cond_2c
    :try_start_2c
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 347
    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;
    :try_end_32
    .catchall {:try_start_2c .. :try_end_32} :catchall_3a

    move-result-object v0

    .line 349
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 350
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    goto :goto_2b

    .line 349
    :catchall_3a
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 350
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public final b(Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    .prologue
    .line 233
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 234
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 237
    :try_start_8
    const-string v0, "com.coolpad.deviceidsupport.IDeviceIdManager"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 238
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 239
    iget-object v0, p0, Lcom/jg/ids/b/d;->a:Landroid/os/IBinder;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    .line 240
    if-nez v0, :cond_2f

    invoke-static {}, Lcom/jg/ids/b/c;->c()Lcom/jg/ids/b/b;

    move-result-object v0

    if-eqz v0, :cond_2f

    .line 241
    invoke-static {}, Lcom/jg/ids/b/c;->c()Lcom/jg/ids/b/b;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/jg/ids/b/b;->b(Ljava/lang/String;)Ljava/lang/String;
    :try_end_27
    .catchall {:try_start_8 .. :try_end_27} :catchall_3d

    move-result-object v0

    .line 246
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 247
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 249
    :goto_2e
    return-object v0

    .line 243
    :cond_2f
    :try_start_2f
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 244
    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;
    :try_end_35
    .catchall {:try_start_2f .. :try_end_35} :catchall_3d

    move-result-object v0

    .line 246
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 247
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    goto :goto_2e

    .line 246
    :catchall_3d
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 247
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public final c(Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    .prologue
    .line 254
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 255
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 258
    :try_start_8
    const-string v0, "com.coolpad.deviceidsupport.IDeviceIdManager"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 259
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 260
    iget-object v0, p0, Lcom/jg/ids/b/d;->a:Landroid/os/IBinder;

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    .line 261
    if-nez v0, :cond_2f

    invoke-static {}, Lcom/jg/ids/b/c;->c()Lcom/jg/ids/b/b;

    move-result-object v0

    if-eqz v0, :cond_2f

    .line 262
    invoke-static {}, Lcom/jg/ids/b/c;->c()Lcom/jg/ids/b/b;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/jg/ids/b/b;->c(Ljava/lang/String;)Ljava/lang/String;
    :try_end_27
    .catchall {:try_start_8 .. :try_end_27} :catchall_3d

    move-result-object v0

    .line 267
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 268
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 270
    :goto_2e
    return-object v0

    .line 264
    :cond_2f
    :try_start_2f
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 265
    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;
    :try_end_35
    .catchall {:try_start_2f .. :try_end_35} :catchall_3d

    move-result-object v0

    .line 267
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 268
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    goto :goto_2e

    .line 267
    :catchall_3d
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 268
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public final d(Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    .prologue
    .line 275
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 276
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 279
    :try_start_8
    const-string v0, "com.coolpad.deviceidsupport.IDeviceIdManager"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 280
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 281
    iget-object v0, p0, Lcom/jg/ids/b/d;->a:Landroid/os/IBinder;

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    .line 282
    if-nez v0, :cond_2f

    invoke-static {}, Lcom/jg/ids/b/c;->c()Lcom/jg/ids/b/b;

    move-result-object v0

    if-eqz v0, :cond_2f

    .line 283
    invoke-static {}, Lcom/jg/ids/b/c;->c()Lcom/jg/ids/b/b;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/jg/ids/b/b;->d(Ljava/lang/String;)Ljava/lang/String;
    :try_end_27
    .catchall {:try_start_8 .. :try_end_27} :catchall_3d

    move-result-object v0

    .line 288
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 289
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 291
    :goto_2e
    return-object v0

    .line 285
    :cond_2f
    :try_start_2f
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 286
    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;
    :try_end_35
    .catchall {:try_start_2f .. :try_end_35} :catchall_3d

    move-result-object v0

    .line 288
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 289
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    goto :goto_2e

    .line 288
    :catchall_3d
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 289
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public final e(Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    .prologue
    .line 296
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 297
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 300
    :try_start_8
    const-string v0, "com.coolpad.deviceidsupport.IDeviceIdManager"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 301
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 302
    iget-object v0, p0, Lcom/jg/ids/b/d;->a:Landroid/os/IBinder;

    const/4 v3, 0x5

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    .line 303
    if-nez v0, :cond_2f

    invoke-static {}, Lcom/jg/ids/b/c;->c()Lcom/jg/ids/b/b;

    move-result-object v0

    if-eqz v0, :cond_2f

    .line 304
    invoke-static {}, Lcom/jg/ids/b/c;->c()Lcom/jg/ids/b/b;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/jg/ids/b/b;->e(Ljava/lang/String;)Ljava/lang/String;
    :try_end_27
    .catchall {:try_start_8 .. :try_end_27} :catchall_3d

    move-result-object v0

    .line 309
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 310
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 312
    :goto_2e
    return-object v0

    .line 306
    :cond_2f
    :try_start_2f
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 307
    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;
    :try_end_35
    .catchall {:try_start_2f .. :try_end_35} :catchall_3d

    move-result-object v0

    .line 309
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 310
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    goto :goto_2e

    .line 309
    :catchall_3d
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 310
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method
