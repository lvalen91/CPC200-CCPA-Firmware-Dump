.class public final Lcom/jg/ids/j/d;
.super Lcom/jg/ids/g;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lcom/jg/ids/g;-><init>(Landroid/content/Context;)V

    .line 17
    return-void
.end method


# virtual methods
.method protected final a()Landroid/content/Intent;
    .registers 4

    .prologue
    .line 21
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 22
    const-string v1, "com.samsung.android.deviceidservice"

    const-string v2, "com.samsung.android.deviceidservice.DeviceIdService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 23
    return-object v0
.end method

.method protected final a(Landroid/os/IBinder;)V
    .registers 5

    .prologue
    .line 29
    :try_start_0
    invoke-static {p1}, Lcom/jg/ids/j/b;->a(Landroid/os/IBinder;)Lcom/jg/ids/j/a;

    move-result-object v0

    .line 30
    if-eqz v0, :cond_27

    .line 31
    iget-object v1, p0, Lcom/jg/ids/j/d;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/jg/ids/j/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 32
    iget-object v2, p0, Lcom/jg/ids/j/d;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/jg/ids/j/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 33
    invoke-interface {v0}, Lcom/jg/ids/j/a;->a()Ljava/lang/String;

    move-result-object v0

    .line 34
    invoke-virtual {p0, v1}, Lcom/jg/ids/j/d;->a(Ljava/lang/String;)V

    .line 35
    invoke-virtual {p0, v2}, Lcom/jg/ids/j/d;->b(Ljava/lang/String;)V

    .line 36
    invoke-virtual {p0, v0}, Lcom/jg/ids/j/d;->c(Ljava/lang/String;)V

    .line 38
    :cond_27
    invoke-virtual {p0}, Lcom/jg/ids/j/d;->b()V
    :try_end_2a
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_2a} :catch_2b

    .line 42
    :goto_2a
    return-void

    :catch_2b
    move-exception v0

    goto :goto_2a
.end method

.method public final d()Z
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 51
    iget-object v1, p0, Lcom/jg/ids/j/d;->a:Landroid/content/Context;

    if-nez v1, :cond_6

    .line 58
    :cond_5
    :goto_5
    return v0

    .line 55
    :cond_6
    :try_start_6
    iget-object v1, p0, Lcom/jg/ids/j/d;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "com.samsung.android.deviceidservice"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_12} :catch_17

    move-result-object v1

    .line 56
    if-eqz v1, :cond_5

    const/4 v0, 0x1

    goto :goto_5

    .line 58
    :catch_17
    move-exception v1

    goto :goto_5
.end method
