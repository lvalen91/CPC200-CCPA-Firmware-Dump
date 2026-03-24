.class public abstract Lcom/jg/ids/g;
.super Lcom/jg/ids/f;
.source "SourceFile"


# instance fields
.field private b:Landroid/content/ServiceConnection;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 6

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/jg/ids/f;-><init>(Landroid/content/Context;)V

    .line 13
    new-instance v0, Lcom/jg/ids/h;

    invoke-direct {v0, p0}, Lcom/jg/ids/h;-><init>(Lcom/jg/ids/g;)V

    iput-object v0, p0, Lcom/jg/ids/g;->b:Landroid/content/ServiceConnection;

    .line 29
    invoke-virtual {p0}, Lcom/jg/ids/g;->c()Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-virtual {p0}, Lcom/jg/ids/g;->d()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 1042
    :try_start_16
    iget-object v0, p0, Lcom/jg/ids/g;->a:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/jg/ids/g;->a()Landroid/content/Intent;

    move-result-object v1

    iget-object v2, p0, Lcom/jg/ids/g;->b:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    :try_end_22
    .catch Ljava/lang/Throwable; {:try_start_16 .. :try_end_22} :catch_23

    .line 1044
    :cond_22
    :goto_22
    return-void

    :catch_23
    move-exception v0

    goto :goto_22
.end method


# virtual methods
.method protected abstract a()Landroid/content/Intent;
.end method

.method protected abstract a(Landroid/os/IBinder;)V
.end method

.method protected final b()V
    .registers 3

    .prologue
    .line 49
    :try_start_0
    iget-object v0, p0, Lcom/jg/ids/g;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/jg/ids/g;->b:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_7} :catch_8

    .line 52
    :goto_7
    return-void

    :catch_8
    move-exception v0

    goto :goto_7
.end method
