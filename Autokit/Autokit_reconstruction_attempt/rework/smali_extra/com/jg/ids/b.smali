.class final Lcom/jg/ids/b;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field private synthetic a:Lcom/jg/ids/a;


# direct methods
.method constructor <init>(Lcom/jg/ids/a;Landroid/os/Looper;)V
    .registers 3

    .prologue
    .line 34
    iput-object p1, p0, Lcom/jg/ids/b;->a:Lcom/jg/ids/a;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .registers 3

    .prologue
    .line 37
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 39
    :try_start_3
    iget-object v0, p0, Lcom/jg/ids/b;->a:Lcom/jg/ids/a;

    invoke-virtual {v0, p1}, Lcom/jg/ids/a;->a(Landroid/os/Message;)V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_8} :catch_9

    .line 43
    :goto_8
    return-void

    :catch_9
    move-exception v0

    goto :goto_8
.end method
