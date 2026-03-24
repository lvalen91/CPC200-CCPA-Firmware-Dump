.class public final Lcom/jg/ids/c/a;
.super Lcom/jg/ids/g;
.source "SourceFile"


# instance fields
.field private b:Landroid/app/KeyguardManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 5

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/jg/ids/g;-><init>(Landroid/content/Context;)V

    .line 1029
    iget-object v0, p0, Lcom/jg/ids/c/a;->a:Landroid/content/Context;

    if-eqz v0, :cond_3a

    .line 1032
    iget-object v0, p0, Lcom/jg/ids/c/a;->a:Landroid/content/Context;

    const-string v1, "keyguard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    iput-object v0, p0, Lcom/jg/ids/c/a;->b:Landroid/app/KeyguardManager;

    .line 1033
    invoke-virtual {p0}, Lcom/jg/ids/c/a;->d()Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 1035
    :try_start_19
    iget-object v0, p0, Lcom/jg/ids/c/a;->b:Landroid/app/KeyguardManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "obtainOaid"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object v1, p0, Lcom/jg/ids/c/a;->b:Landroid/app/KeyguardManager;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1036
    if-eqz v0, :cond_3a

    .line 1037
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jg/ids/c/a;->c(Ljava/lang/String;)V
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_3a} :catch_3b

    .line 1041
    :cond_3a
    :goto_3a
    return-void

    :catch_3b
    move-exception v0

    goto :goto_3a
.end method


# virtual methods
.method protected final a()Landroid/content/Intent;
    .registers 2

    .prologue
    .line 47
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    return-object v0
.end method

.method protected final a(Landroid/os/IBinder;)V
    .registers 2

    .prologue
    .line 53
    return-void
.end method

.method public final d()Z
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 63
    iget-object v0, p0, Lcom/jg/ids/c/a;->a:Landroid/content/Context;

    if-nez v0, :cond_7

    move v0, v1

    .line 73
    :goto_6
    return v0

    .line 66
    :cond_7
    iget-object v0, p0, Lcom/jg/ids/c/a;->b:Landroid/app/KeyguardManager;

    if-nez v0, :cond_d

    move v0, v1

    .line 67
    goto :goto_6

    .line 70
    :cond_d
    :try_start_d
    iget-object v0, p0, Lcom/jg/ids/c/a;->b:Landroid/app/KeyguardManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v2, "isSupported"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object v2, p0, Lcom/jg/ids/c/a;->b:Landroid/app/KeyguardManager;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 71
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_2e} :catch_30

    move-result v0

    goto :goto_6

    .line 73
    :catch_30
    move-exception v0

    move v0, v1

    goto :goto_6
.end method
