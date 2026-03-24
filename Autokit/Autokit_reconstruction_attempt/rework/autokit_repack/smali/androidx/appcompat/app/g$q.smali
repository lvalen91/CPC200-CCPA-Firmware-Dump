.class abstract Landroidx/appcompat/app/g$q;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/app/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "q"
.end annotation


# instance fields
.field private a:Landroid/content/BroadcastReceiver;

.field final synthetic b:Landroidx/appcompat/app/g;


# direct methods
.method constructor <init>(Landroidx/appcompat/app/g;)V
    .registers 2

    .line 1
    iput-object p1, p0, Landroidx/appcompat/app/g$q;->b:Landroidx/appcompat/app/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method a()V
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/appcompat/app/g$q;->a:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_e

    .line 2
    :try_start_4
    iget-object v1, p0, Landroidx/appcompat/app/g$q;->b:Landroidx/appcompat/app/g;

    iget-object v1, v1, Landroidx/appcompat/app/g;->f:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_b} :catch_b

    :catch_b
    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Landroidx/appcompat/app/g$q;->a:Landroid/content/BroadcastReceiver;

    :cond_e
    return-void
.end method

.method abstract b()Landroid/content/IntentFilter;
.end method

.method abstract c()I
.end method

.method abstract d()V
.end method

.method e()V
    .registers 4

    .line 1
    invoke-virtual {p0}, Landroidx/appcompat/app/g$q;->a()V

    .line 2
    invoke-virtual {p0}, Landroidx/appcompat/app/g$q;->b()Landroid/content/IntentFilter;

    move-result-object v0

    if-eqz v0, :cond_24

    .line 3
    invoke-virtual {v0}, Landroid/content/IntentFilter;->countActions()I

    move-result v1

    if-nez v1, :cond_10

    goto :goto_24

    .line 4
    :cond_10
    iget-object v1, p0, Landroidx/appcompat/app/g$q;->a:Landroid/content/BroadcastReceiver;

    if-nez v1, :cond_1b

    .line 5
    new-instance v1, Landroidx/appcompat/app/g$q$a;

    invoke-direct {v1, p0}, Landroidx/appcompat/app/g$q$a;-><init>(Landroidx/appcompat/app/g$q;)V

    iput-object v1, p0, Landroidx/appcompat/app/g$q;->a:Landroid/content/BroadcastReceiver;

    .line 6
    :cond_1b
    iget-object v1, p0, Landroidx/appcompat/app/g$q;->b:Landroidx/appcompat/app/g;

    iget-object v1, v1, Landroidx/appcompat/app/g;->f:Landroid/content/Context;

    iget-object v2, p0, Landroidx/appcompat/app/g$q;->a:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_24
    :goto_24
    return-void
.end method
