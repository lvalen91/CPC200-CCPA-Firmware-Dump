.class public Lcom/jg/ids/meizu/MeiZuReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 18
    if-eqz p1, :cond_1f

    if-eqz p2, :cond_1f

    .line 19
    :try_start_6
    const-string v0, "openIdNotifyFlag"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 20
    if-ne v0, v2, :cond_20

    .line 21
    const-string v0, "openIdPackage"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_34

    .line 43
    :cond_1f
    :goto_1f
    return-void

    .line 24
    :cond_20
    if-ne v0, v3, :cond_34

    .line 25
    const-string v0, "openIdPackageList"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 26
    if-eqz v0, :cond_1f

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 31
    :cond_34
    const-string v0, "openIdType"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 32
    const-string v1, "aaid"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4d

    .line 33
    invoke-static {}, Lcom/jg/ids/meizu/a;->a()Lcom/jg/ids/meizu/a;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/jg/ids/meizu/a;->a(I)V

    goto :goto_1f

    :catch_4b
    move-exception v0

    goto :goto_1f

    .line 34
    :cond_4d
    const-string v1, "vaid"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5e

    .line 35
    invoke-static {}, Lcom/jg/ids/meizu/a;->a()Lcom/jg/ids/meizu/a;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/jg/ids/meizu/a;->a(I)V

    goto :goto_1f

    .line 36
    :cond_5e
    const-string v1, "oaid"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 37
    invoke-static {}, Lcom/jg/ids/meizu/a;->a()Lcom/jg/ids/meizu/a;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/jg/ids/meizu/a;->a(I)V
    :try_end_6e
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6e} :catch_4b

    goto :goto_1f
.end method
