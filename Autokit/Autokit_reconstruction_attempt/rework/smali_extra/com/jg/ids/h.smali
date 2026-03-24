.class final Lcom/jg/ids/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field private synthetic a:Lcom/jg/ids/g;


# direct methods
.method constructor <init>(Lcom/jg/ids/g;)V
    .registers 2

    .prologue
    .line 13
    iput-object p1, p0, Lcom/jg/ids/h;->a:Lcom/jg/ids/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 4

    .prologue
    .line 17
    :try_start_0
    iget-object v0, p0, Lcom/jg/ids/h;->a:Lcom/jg/ids/g;

    invoke-virtual {v0, p2}, Lcom/jg/ids/g;->a(Landroid/os/IBinder;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_5} :catch_6

    .line 20
    :goto_5
    return-void

    :catch_6
    move-exception v0

    goto :goto_5
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 2

    .prologue
    .line 24
    return-void
.end method
