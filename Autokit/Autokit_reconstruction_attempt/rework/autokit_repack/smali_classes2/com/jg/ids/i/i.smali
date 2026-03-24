.class public final Lcom/jg/ids/i/i;
.super Lcom/jg/ids/g;
.source "SourceFile"


# instance fields
.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/jg/ids/g;-><init>(Landroid/content/Context;)V

    .line 16
    const-string v0, ""

    iput-object v0, p0, Lcom/jg/ids/i/i;->b:Ljava/lang/String;

    .line 17
    const-string v0, ""

    iput-object v0, p0, Lcom/jg/ids/i/i;->c:Ljava/lang/String;

    .line 21
    return-void
.end method

.method private a(Landroid/content/Context;Lcom/jg/ids/i/h;Ljava/lang/String;)Ljava/lang/String;
    .registers 12

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 96
    if-eqz p1, :cond_c

    if-eqz p2, :cond_c

    invoke-virtual {p0}, Lcom/jg/ids/i/i;->d()Z

    move-result v2

    if-nez v2, :cond_f

    .line 97
    :cond_c
    const-string v0, ""

    .line 131
    :goto_e
    return-object v0

    .line 100
    :cond_f
    iget-object v2, p0, Lcom/jg/ids/i/i;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 101
    iget-object v3, p0, Lcom/jg/ids/i/i;->b:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_69

    .line 104
    :try_start_1d
    iget-object v3, p0, Lcom/jg/ids/i/i;->a:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/16 v4, 0x40

    invoke-virtual {v3, v2, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;
    :try_end_2b
    .catch Ljava/lang/Throwable; {:try_start_1d .. :try_end_2b} :catch_60

    .line 111
    :goto_2b
    if-eqz v2, :cond_67

    array-length v3, v2

    if-lez v3, :cond_67

    .line 112
    aget-object v2, v2, v1

    invoke-virtual {v2}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v2

    .line 114
    :try_start_36
    const-string v3, "SHA1"

    invoke-static {v3}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v3

    .line 115
    if-eqz v3, :cond_67

    .line 116
    invoke-virtual {v3, v2}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v2

    .line 117
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 118
    array-length v4, v2

    :goto_48
    if-ge v1, v4, :cond_63

    aget-byte v5, v2, v1

    .line 119
    and-int/lit16 v5, v5, 0xff

    or-int/lit16 v5, v5, 0x100

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    const/4 v7, 0x3

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    add-int/lit8 v1, v1, 0x1

    goto :goto_48

    .line 108
    :catch_60
    move-exception v2

    move-object v2, v0

    goto :goto_2b

    .line 121
    :cond_63
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_66
    .catch Ljava/lang/Throwable; {:try_start_36 .. :try_end_66} :catch_74

    move-result-object v0

    .line 128
    :cond_67
    :goto_67
    iput-object v0, p0, Lcom/jg/ids/i/i;->b:Ljava/lang/String;

    .line 131
    :cond_69
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/jg/ids/i/i;->b:Ljava/lang/String;

    invoke-interface {p2, v0, v1, p3}, Lcom/jg/ids/i/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_e

    :catch_74
    move-exception v1

    goto :goto_67
.end method


# virtual methods
.method protected final a()Landroid/content/Intent;
    .registers 5

    .prologue
    .line 25
    const/4 v0, 0x0

    .line 26
    iget-object v2, p0, Lcom/jg/ids/i/i;->c:Ljava/lang/String;

    const/4 v1, -0x1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_6c

    :cond_b
    :goto_b
    packed-switch v1, :pswitch_data_7a

    .line 40
    :goto_e
    return-object v0

    .line 26
    :sswitch_f
    const-string v3, "openid"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    const/4 v1, 0x0

    goto :goto_b

    :sswitch_19
    const-string v3, "mcsid"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    const/4 v1, 0x1

    goto :goto_b

    :sswitch_23
    const-string v3, "stdid"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    const/4 v1, 0x2

    goto :goto_b

    .line 1023
    :pswitch_2d
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1024
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.heytap.openid"

    const-string v3, "com.heytap.openid.IdentifyService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1025
    const-string v1, "action.com.heytap.openid.OPEN_ID_SERVICE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_e

    .line 2025
    :pswitch_44
    new-instance v0, Landroid/content/Intent;

    const-string v1, "action.com.oplus.stdid.ID_SERVICE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2026
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.coloros.mcs"

    const-string v3, "com.oplus.stdid.IdentifyService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto :goto_e

    .line 3025
    :pswitch_58
    new-instance v0, Landroid/content/Intent;

    const-string v1, "action.com.oplus.stdid.ID_SERVICE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3026
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.oplus.stdid"

    const-string v3, "com.oplus.stdid.IdentifyService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto :goto_e

    .line 26
    :sswitch_data_6c
    .sparse-switch
        -0x3c3c371b -> :sswitch_f
        0x62ebf78 -> :sswitch_19
        0x68ace7e -> :sswitch_23
    .end sparse-switch

    :pswitch_data_7a
    .packed-switch 0x0
        :pswitch_2d
        :pswitch_44
        :pswitch_58
    .end packed-switch
.end method

.method protected final a(Landroid/os/IBinder;)V
    .registers 7

    .prologue
    .line 46
    const/4 v0, 0x0

    .line 47
    :try_start_1
    iget-object v2, p0, Lcom/jg/ids/i/i;->c:Ljava/lang/String;

    const/4 v1, -0x1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_62

    :cond_b
    :goto_b
    packed-switch v1, :pswitch_data_70

    .line 61
    :goto_e
    iget-object v1, p0, Lcom/jg/ids/i/i;->a:Landroid/content/Context;

    const-string v2, "AUID"

    invoke-direct {p0, v1, v0, v2}, Lcom/jg/ids/i/i;->a(Landroid/content/Context;Lcom/jg/ids/i/h;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 62
    iget-object v2, p0, Lcom/jg/ids/i/i;->a:Landroid/content/Context;

    const-string v3, "OUID"

    invoke-direct {p0, v2, v0, v3}, Lcom/jg/ids/i/i;->a(Landroid/content/Context;Lcom/jg/ids/i/h;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 63
    iget-object v3, p0, Lcom/jg/ids/i/i;->a:Landroid/content/Context;

    const-string v4, "DUID"

    invoke-direct {p0, v3, v0, v4}, Lcom/jg/ids/i/i;->a(Landroid/content/Context;Lcom/jg/ids/i/h;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 64
    invoke-virtual {p0, v1}, Lcom/jg/ids/i/i;->a(Ljava/lang/String;)V

    .line 65
    invoke-virtual {p0, v0}, Lcom/jg/ids/i/i;->b(Ljava/lang/String;)V

    .line 66
    invoke-virtual {p0, v2}, Lcom/jg/ids/i/i;->c(Ljava/lang/String;)V

    .line 67
    invoke-virtual {p0}, Lcom/jg/ids/i/i;->b()V

    .line 71
    :goto_32
    return-void

    .line 47
    :sswitch_33
    const-string v3, "openid"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    const/4 v1, 0x0

    goto :goto_b

    :sswitch_3d
    const-string v3, "mcsid"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    const/4 v1, 0x1

    goto :goto_b

    :sswitch_47
    const-string v3, "stdid"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    const/4 v1, 0x2

    goto :goto_b

    .line 49
    :pswitch_51
    invoke-static {p1}, Lcom/jg/ids/i/b;->a(Landroid/os/IBinder;)Lcom/jg/ids/i/a;

    move-result-object v0

    goto :goto_e

    .line 53
    :pswitch_56
    invoke-static {p1}, Lcom/jg/ids/i/e;->a(Landroid/os/IBinder;)Lcom/jg/ids/i/d;

    move-result-object v0

    goto :goto_e

    .line 57
    :pswitch_5b
    invoke-static {p1}, Lcom/jg/ids/i/e;->a(Landroid/os/IBinder;)Lcom/jg/ids/i/d;
    :try_end_5e
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_5e} :catch_60

    move-result-object v0

    goto :goto_e

    .line 71
    :catch_60
    move-exception v0

    goto :goto_32

    .line 47
    :sswitch_data_62
    .sparse-switch
        -0x3c3c371b -> :sswitch_33
        0x62ebf78 -> :sswitch_3d
        0x68ace7e -> :sswitch_47
    .end sparse-switch

    :pswitch_data_70
    .packed-switch 0x0
        :pswitch_51
        :pswitch_56
        :pswitch_5b
    .end packed-switch
.end method

.method public final d()Z
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 80
    iget-object v1, p0, Lcom/jg/ids/i/i;->a:Landroid/content/Context;

    if-nez v1, :cond_6

    .line 92
    :cond_5
    :goto_5
    return v0

    .line 83
    :cond_6
    iget-object v1, p0, Lcom/jg/ids/i/i;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/jg/ids/i/g;->a(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 84
    const-string v1, "openid"

    iput-object v1, p0, Lcom/jg/ids/i/i;->c:Ljava/lang/String;

    .line 86
    :cond_12
    iget-object v1, p0, Lcom/jg/ids/i/i;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/jg/ids/j;->b(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 87
    const-string v1, "mcsid"

    iput-object v1, p0, Lcom/jg/ids/i/i;->c:Ljava/lang/String;

    .line 89
    :cond_1e
    iget-object v1, p0, Lcom/jg/ids/i/i;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/jg/ids/i/j;->d(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 90
    const-string v1, "stdid"

    iput-object v1, p0, Lcom/jg/ids/i/i;->c:Ljava/lang/String;

    .line 92
    :cond_2a
    iget-object v1, p0, Lcom/jg/ids/i/i;->c:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    const/4 v0, 0x1

    goto :goto_5
.end method
