.class public abstract Lcom/jg/ids/a/c;
.super Landroid/os/Binder;
.source "SourceFile"

# interfaces
.implements Lcom/jg/ids/a/b;


# direct methods
.method public static a(Landroid/os/IBinder;)Lcom/jg/ids/a/b;
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 137
    if-nez p0, :cond_5

    move-object v0, v1

    .line 145
    :goto_4
    return-object v0

    .line 140
    :cond_5
    :try_start_5
    const-string v0, "com.asus.msa.SupplementaryDID.IDidAidlInterface"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 141
    if-eqz v0, :cond_11

    instance-of v2, v0, Lcom/jg/ids/a/b;

    if-nez v2, :cond_1a

    :cond_11
    new-instance v0, Lcom/jg/ids/a/d;

    invoke-direct {v0, p0}, Lcom/jg/ids/a/d;-><init>(Landroid/os/IBinder;)V

    goto :goto_4

    .line 145
    :catch_17
    move-exception v0

    move-object v0, v1

    goto :goto_4

    .line 141
    :cond_1a
    check-cast v0, Lcom/jg/ids/a/b;
    :try_end_1c
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_1c} :catch_17

    goto :goto_4
.end method


# virtual methods
.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 8

    .prologue
    const/4 v0, 0x1

    .line 149
    const-string v1, "com.asus.msa.SupplementaryDID.IDidAidlInterface"

    .line 151
    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_5d

    .line 152
    packed-switch p1, :pswitch_data_64

    .line 185
    :try_start_b
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_e} :catch_61
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_e} :catch_21

    move-result v0

    .line 196
    :goto_f
    return v0

    .line 154
    :pswitch_10
    :try_start_10
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 155
    invoke-virtual {p0}, Lcom/jg/ids/a/c;->a()Z

    move-result v1

    .line 156
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 157
    if-eqz v1, :cond_23

    move v1, v0

    :goto_1d
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_f

    .line 196
    :catch_21
    move-exception v1

    goto :goto_f

    .line 157
    :cond_23
    const/4 v1, 0x0

    goto :goto_1d

    .line 160
    :pswitch_25
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 161
    invoke-virtual {p0}, Lcom/jg/ids/a/c;->b()Ljava/lang/String;

    move-result-object v1

    .line 162
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 163
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_f

    .line 166
    :pswitch_33
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 167
    invoke-virtual {p0}, Lcom/jg/ids/a/c;->c()Ljava/lang/String;

    move-result-object v1

    .line 168
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 169
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_f

    .line 172
    :pswitch_41
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 173
    invoke-virtual {p0}, Lcom/jg/ids/a/c;->d()Ljava/lang/String;

    move-result-object v1

    .line 174
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 175
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_f

    .line 178
    :pswitch_4f
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 179
    invoke-virtual {p0}, Lcom/jg/ids/a/c;->e()Ljava/lang/String;

    move-result-object v1

    .line 180
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 181
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_f

    .line 192
    :cond_5d
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
    :try_end_60
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_60} :catch_21

    goto :goto_f

    .line 189
    :catch_61
    move-exception v1

    goto :goto_f

    .line 152
    nop

    :pswitch_data_64
    .packed-switch 0x1
        :pswitch_10
        :pswitch_25
        :pswitch_33
        :pswitch_41
        :pswitch_4f
    .end packed-switch
.end method
