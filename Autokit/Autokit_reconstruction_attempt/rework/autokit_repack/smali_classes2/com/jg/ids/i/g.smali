.class public Lcom/jg/ids/i/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/jg/ids/m/a;


# instance fields
.field private final a:Landroid/content/Context;

.field private b:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private c:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 1020
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1021
    iput-object p1, p0, Lcom/jg/ids/i/g;->a:Landroid/content/Context;

    .line 1023
    :try_start_5
    const-string v0, "android.app.ZteDeviceIdentifyManager"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lcom/jg/ids/i/g;->b:Ljava/lang/Class;

    .line 1024
    iget-object v0, p0, Lcom/jg/ids/i/g;->b:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/jg/ids/i/g;->c:Ljava/lang/Object;
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_15} :catch_16

    .line 1028
    :goto_15
    return-void

    .line 1025
    :catch_16
    move-exception v0

    .line 1026
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_15
.end method

.method public static a(Landroid/content/Context;)Z
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 13
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "com.heytap.openid"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_b} :catch_10

    move-result-object v1

    if-eqz v1, :cond_f

    .line 14
    const/4 v0, 0x1

    .line 18
    :cond_f
    :goto_f
    return v0

    :catch_10
    move-exception v1

    goto :goto_f
.end method


# virtual methods
.method public a()Z
    .registers 2

    .prologue
    .line 1032
    iget-object v0, p0, Lcom/jg/ids/i/g;->c:Ljava/lang/Object;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public b()Ljava/lang/String;
    .registers 6

    .prologue
    .line 1037
    iget-object v0, p0, Lcom/jg/ids/i/g;->a:Landroid/content/Context;

    if-eqz v0, :cond_3e

    .line 1038
    iget-object v0, p0, Lcom/jg/ids/i/g;->b:Ljava/lang/Class;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/jg/ids/i/g;->c:Ljava/lang/Object;

    if-nez v0, :cond_f

    .line 1040
    :cond_c
    const-string v0, ""

    .line 1052
    :cond_e
    :goto_e
    return-object v0

    .line 1043
    :cond_f
    :try_start_f
    iget-object v0, p0, Lcom/jg/ids/i/g;->b:Ljava/lang/Class;

    const-string v1, "getOAID"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/content/Context;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object v1, p0, Lcom/jg/ids/i/g;->c:Ljava/lang/Object;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/jg/ids/i/g;->a:Landroid/content/Context;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1044
    if-eqz v0, :cond_37

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_e

    .line 1045
    :cond_37
    const-string v0, ""
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_39} :catch_3a

    goto :goto_e

    .line 1048
    :catch_3a
    move-exception v0

    .line 1049
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1052
    :cond_3e
    const-string v0, ""

    goto :goto_e
.end method
