.class public abstract Lcom/jg/ids/b/c;
.super Landroid/os/Binder;
.source "SourceFile"

# interfaces
.implements Lcom/jg/ids/b/b;


# direct methods
.method public static a(Landroid/os/IBinder;)Lcom/jg/ids/b/b;
    .registers 3

    .prologue
    .line 106
    if-nez p0, :cond_4

    .line 107
    const/4 v0, 0x0

    .line 113
    :goto_3
    return-object v0

    .line 109
    :cond_4
    const-string v0, "com.coolpad.deviceidsupport.IDeviceIdManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 110
    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/jg/ids/b/b;

    if-eqz v1, :cond_13

    .line 111
    check-cast v0, Lcom/jg/ids/b/b;

    goto :goto_3

    .line 113
    :cond_13
    new-instance v0, Lcom/jg/ids/b/d;

    invoke-direct {v0, p0}, Lcom/jg/ids/b/d;-><init>(Landroid/os/IBinder;)V

    goto :goto_3
.end method

.method public static c()Lcom/jg/ids/b/b;
    .registers 2

    .prologue
    .line 381
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 7

    .prologue
    const/4 v1, 0x1

    .line 123
    const-string v0, "com.coolpad.deviceidsupport.IDeviceIdManager"

    .line 124
    sparse-switch p1, :sswitch_data_8a

    .line 189
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    :goto_a
    return v1

    .line 126
    :sswitch_b
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_a

    .line 130
    :sswitch_f
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 132
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 133
    invoke-virtual {p0, v0}, Lcom/jg/ids/b/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 134
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 135
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_a

    .line 139
    :sswitch_21
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 141
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 142
    invoke-virtual {p0, v0}, Lcom/jg/ids/b/c;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 143
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 144
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_a

    .line 148
    :sswitch_33
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 150
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 151
    invoke-virtual {p0, v0}, Lcom/jg/ids/b/c;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 152
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 153
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_a

    .line 157
    :sswitch_45
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 159
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 160
    invoke-virtual {p0, v0}, Lcom/jg/ids/b/c;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 161
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 162
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_a

    .line 166
    :sswitch_57
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 168
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 169
    invoke-virtual {p0, v0}, Lcom/jg/ids/b/c;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 170
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 171
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_a

    .line 175
    :sswitch_69
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 176
    invoke-virtual {p0}, Lcom/jg/ids/b/c;->a()Z

    move-result v0

    .line 177
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 178
    if-eqz v0, :cond_7a

    move v0, v1

    :goto_76
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_a

    :cond_7a
    const/4 v0, 0x0

    goto :goto_76

    .line 182
    :sswitch_7c
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 183
    invoke-virtual {p0}, Lcom/jg/ids/b/c;->b()Ljava/lang/String;

    move-result-object v0

    .line 184
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 185
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_a

    .line 124
    :sswitch_data_8a
    .sparse-switch
        0x1 -> :sswitch_f
        0x2 -> :sswitch_21
        0x3 -> :sswitch_33
        0x4 -> :sswitch_45
        0x5 -> :sswitch_57
        0x6 -> :sswitch_69
        0x7 -> :sswitch_7c
        0x5f4e5446 -> :sswitch_b
    .end sparse-switch
.end method
