.class Lcn/manstep/phonemirrorBox/v0/e$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/manstep/phonemirrorBox/v0/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "c"
.end annotation


# instance fields
.field private a:Landroid/content/BroadcastReceiver;

.field private b:Z

.field final synthetic c:Lcn/manstep/phonemirrorBox/v0/e;


# direct methods
.method constructor <init>(Lcn/manstep/phonemirrorBox/v0/e;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/v0/e$c;->c:Lcn/manstep/phonemirrorBox/v0/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance p1, Lcn/manstep/phonemirrorBox/v0/e$c$a;

    invoke-direct {p1, p0}, Lcn/manstep/phonemirrorBox/v0/e$c$a;-><init>(Lcn/manstep/phonemirrorBox/v0/e$c;)V

    iput-object p1, p0, Lcn/manstep/phonemirrorBox/v0/e$c;->a:Landroid/content/BroadcastReceiver;

    const/4 p1, 0x0

    .line 3
    iput-boolean p1, p0, Lcn/manstep/phonemirrorBox/v0/e$c;->b:Z

    return-void
.end method


# virtual methods
.method a()V
    .registers 4

    const-string v0, "Uilogic,register: cn.manstep.phonemirrorBox.AUTO_BOX_CONTROL_CMD_EVT"

    .line 1
    invoke-static {v0}, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V

    .line 2
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "cn.manstep.phonemirrorBox.AUTO_BOX_CONTROL_CMD_EVT"

    .line 3
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 4
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/v0/e$c;->c:Lcn/manstep/phonemirrorBox/v0/e;

    invoke-static {v1}, Lcn/manstep/phonemirrorBox/v0/e;->h(Lcn/manstep/phonemirrorBox/v0/e;)Ljava/lang/ref/WeakReference;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    iget-object v2, p0, Lcn/manstep/phonemirrorBox/v0/e$c;->a:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcn/manstep/phonemirrorBox/v0/e$c;->b:Z

    return-void
.end method

.method b()V
    .registers 3

    const-string v0, "Uilogic,unregister: cn.manstep.phonemirrorBox.AUTO_BOX_CONTROL_CMD_EVT"

    .line 1
    invoke-static {v0}, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V

    .line 2
    iget-boolean v0, p0, Lcn/manstep/phonemirrorBox/v0/e$c;->b:Z

    if-eqz v0, :cond_26

    .line 3
    :try_start_9
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/v0/e$c;->c:Lcn/manstep/phonemirrorBox/v0/e;

    invoke-static {v0}, Lcn/manstep/phonemirrorBox/v0/e;->h(Lcn/manstep/phonemirrorBox/v0/e;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object v1, p0, Lcn/manstep/phonemirrorBox/v0/e$c;->a:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_1a} :catch_1b

    goto :goto_23

    :catch_1b
    move-exception v0

    .line 4
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/manstep/phonemirrorBox/util/s;->e(Ljava/lang/String;)V

    :goto_23
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcn/manstep/phonemirrorBox/v0/e$c;->b:Z

    :cond_26
    return-void
.end method
