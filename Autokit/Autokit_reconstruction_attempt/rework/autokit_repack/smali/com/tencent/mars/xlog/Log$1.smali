.class final Lcom/tencent/mars/xlog/Log$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/mars/xlog/Log$LogImp;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/mars/xlog/Log;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field private handler:Landroid/os/Handler;


# direct methods
.method constructor <init>()V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/tencent/mars/xlog/Log$1;->handler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public appenderClose()V
    .registers 1

    return-void
.end method

.method public appenderFlush(JZ)V
    .registers 4

    return-void
.end method

.method public appenderOpen(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 7

    return-void
.end method

.method public appenderOpen(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .registers 8

    return-void
.end method

.method public getLogLevel(J)I
    .registers 3

    .line 1
    # getter for: Lcom/tencent/mars/xlog/Log;->level:I
    invoke-static {}, Lcom/tencent/mars/xlog/Log;->access$000()I

    move-result p1

    return p1
.end method

.method public getXlogInstance(Ljava/lang/String;)J
    .registers 4

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public logD(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIJJLjava/lang/String;)V
    .registers 13

    .line 1
    # getter for: Lcom/tencent/mars/xlog/Log;->level:I
    invoke-static {}, Lcom/tencent/mars/xlog/Log;->access$000()I

    move-result p1

    const/4 p2, 0x1

    return-void
.end method

.method public logE(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIJJLjava/lang/String;)V
    .registers 13

    .line 1
    # getter for: Lcom/tencent/mars/xlog/Log;->level:I
    invoke-static {}, Lcom/tencent/mars/xlog/Log;->access$000()I

    move-result p1

    const/4 p2, 0x4

    return-void
.end method

.method public logF(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIJJLjava/lang/String;)V
    .registers 13

    .line 1
    # getter for: Lcom/tencent/mars/xlog/Log;->level:I
    invoke-static {}, Lcom/tencent/mars/xlog/Log;->access$000()I

    move-result p1

    const/4 p2, 0x5

    if-le p1, p2, :cond_8

    return-void

    .line 2
    :cond_8
    sget-object p1, Lcom/tencent/mars/xlog/Log;->toastSupportContext:Landroid/content/Context;

    if-eqz p1, :cond_16

    .line 3
    iget-object p1, p0, Lcom/tencent/mars/xlog/Log$1;->handler:Landroid/os/Handler;

    new-instance p2, Lcom/tencent/mars/xlog/Log$1$1;

    invoke-direct {p2, p0, p12}, Lcom/tencent/mars/xlog/Log$1$1;-><init>(Lcom/tencent/mars/xlog/Log$1;Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_16
    return-void
.end method

.method public logI(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIJJLjava/lang/String;)V
    .registers 13

    .line 1
    # getter for: Lcom/tencent/mars/xlog/Log;->level:I
    invoke-static {}, Lcom/tencent/mars/xlog/Log;->access$000()I

    move-result p1

    const/4 p2, 0x2

    return-void
.end method

.method public logV(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIJJLjava/lang/String;)V
    .registers 13

    .line 1
    # getter for: Lcom/tencent/mars/xlog/Log;->level:I
    invoke-static {}, Lcom/tencent/mars/xlog/Log;->access$000()I

    move-result p1

    return-void
.end method

.method public logW(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIJJLjava/lang/String;)V
    .registers 13

    .line 1
    # getter for: Lcom/tencent/mars/xlog/Log;->level:I
    invoke-static {}, Lcom/tencent/mars/xlog/Log;->access$000()I

    move-result p1

    const/4 p2, 0x3

    return-void
.end method

.method public openLogInstance(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)J
    .registers 7

    const-wide/16 p1, 0x0

    return-wide p1
.end method

.method public releaseXlogInstance(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public setAppenderMode(JI)V
    .registers 4

    return-void
.end method

.method public setConsoleLogOpen(JZ)V
    .registers 4

    return-void
.end method

.method public setMaxAliveTime(JJ)V
    .registers 5

    return-void
.end method

.method public setMaxFileSize(JJ)V
    .registers 5

    return-void
.end method
