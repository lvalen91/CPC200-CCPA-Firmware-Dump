.class public final Lcom/jg/ids/d/a;
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
    .registers 3

    .prologue
    .line 21
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.service.action.msa"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 22
    const-string v1, "com.android.creator"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 23
    return-object v0
.end method

.method protected final a(Landroid/os/IBinder;)V
    .registers 3

    .prologue
    .line 29
    :try_start_0
    invoke-static {p1}, Lcom/jg/ids/d/c;->a(Landroid/os/IBinder;)Lcom/jg/ids/d/b;

    move-result-object v0

    .line 30
    if-eqz v0, :cond_10

    .line 31
    invoke-interface {v0}, Lcom/jg/ids/d/b;->b()Ljava/lang/String;

    move-result-object v0

    .line 32
    invoke-virtual {p0, v0}, Lcom/jg/ids/d/a;->c(Ljava/lang/String;)V

    .line 33
    invoke-virtual {p0}, Lcom/jg/ids/d/a;->b()V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_10} :catch_11

    .line 38
    :cond_10
    :goto_10
    return-void

    .line 35
    :catch_11
    move-exception v0

    .line 36
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_10
.end method

.method public final d()Z
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 47
    iget-object v1, p0, Lcom/jg/ids/d/a;->a:Landroid/content/Context;

    if-nez v1, :cond_6

    .line 54
    :cond_5
    :goto_5
    return v0

    .line 51
    :cond_6
    :try_start_6
    iget-object v1, p0, Lcom/jg/ids/d/a;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "com.android.creator"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_12} :catch_17

    move-result-object v1

    .line 52
    if-eqz v1, :cond_5

    const/4 v0, 0x1

    goto :goto_5

    .line 54
    :catch_17
    move-exception v1

    goto :goto_5
.end method
