.class public Lcom/tencent/mars/xlog/Log;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/mars/xlog/Log$LogInstance;,
        Lcom/tencent/mars/xlog/Log$LogImp;
    }
.end annotation


# static fields
.field public static final LEVEL_DEBUG:I = 0x1

.field public static final LEVEL_ERROR:I = 0x4

.field public static final LEVEL_FATAL:I = 0x5

.field public static final LEVEL_INFO:I = 0x2

.field public static final LEVEL_NONE:I = 0x6

.field public static final LEVEL_VERBOSE:I = 0x0

.field public static final LEVEL_WARNING:I = 0x3

.field private static final SYS_INFO:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "mars.xlog.log"

.field private static debugLog:Lcom/tencent/mars/xlog/Log$LogImp; = null

.field private static level:I = 0x6

.field private static logImp:Lcom/tencent/mars/xlog/Log$LogImp;

.field private static sLogInstanceMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/tencent/mars/xlog/Log$LogInstance;",
            ">;"
        }
    .end annotation
.end field

.field public static toastSupportContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const-string v0, "]\n"

    .line 1
    new-instance v1, Lcom/tencent/mars/xlog/Log$1;

    invoke-direct {v1}, Lcom/tencent/mars/xlog/Log$1;-><init>()V

    sput-object v1, Lcom/tencent/mars/xlog/Log;->debugLog:Lcom/tencent/mars/xlog/Log$LogImp;

    .line 2
    sput-object v1, Lcom/tencent/mars/xlog/Log;->logImp:Lcom/tencent/mars/xlog/Log$LogImp;

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    :try_start_10
    const-string v2, "VERSION.RELEASE-----------------------:["

    .line 4
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "VERSION.SDK_INT-----------------------:["

    .line 5
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "VERSION.CODENAME----------------------:["

    .line 6
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Landroid/os/Build$VERSION;->CODENAME:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "VERSION.INCREMENTAL-------------------:["

    .line 7
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "MANUFACTURER(ro.product.manufacturer)-:["

    .line 8
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "MODEL(ro.product.model)---------------:["

    .line 9
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "PRODUCT(ro.product.name)--------------:["

    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "ID(ro.build.id)-----------------------:["

    .line 11
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Landroid/os/Build;->ID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "BOARD---------------------------------:["

    .line 12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Landroid/os/Build;->BOARD:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "DEVICE--------------------------------:["

    .line 13
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "DISPLAY-------------------------------:["

    .line 14
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "HOST----------------------------------:["

    .line 15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Landroid/os/Build;->HOST:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "TAGS----------------------------------:["

    .line 16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Landroid/os/Build;->TAGS:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "TYPE----------------------------------:["

    .line 17
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "USER----------------------------------:["

    .line 18
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Landroid/os/Build;->USER:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "FINGERPRINT---------------------------:["

    .line 19
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_e2
    .catchall {:try_start_10 .. :try_end_e2} :catchall_e3

    goto :goto_e7

    :catchall_e3
    move-exception v0

    .line 20
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 21
    :goto_e7
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/mars/xlog/Log;->SYS_INFO:Ljava/lang/String;

    .line 22
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/tencent/mars/xlog/Log;->sLogInstanceMap:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()I
    .registers 1

    .line 1
    sget v0, Lcom/tencent/mars/xlog/Log;->level:I

    return v0
.end method

.method static synthetic access$300()Lcom/tencent/mars/xlog/Log$LogImp;
    .registers 1

    .line 1
    sget-object v0, Lcom/tencent/mars/xlog/Log;->logImp:Lcom/tencent/mars/xlog/Log$LogImp;

    return-object v0
.end method

.method public static appenderClose()V
    .registers 3

    .line 1
    sget-object v0, Lcom/tencent/mars/xlog/Log;->logImp:Lcom/tencent/mars/xlog/Log$LogImp;

    if-eqz v0, :cond_27

    .line 2
    invoke-interface {v0}, Lcom/tencent/mars/xlog/Log$LogImp;->appenderClose()V

    .line 3
    sget-object v0, Lcom/tencent/mars/xlog/Log;->sLogInstanceMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_11
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_27

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 4
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/tencent/mars/xlog/Log;->closeLogInstance(Ljava/lang/String;)V

    goto :goto_11

    :cond_27
    return-void
.end method

.method public static appenderFlush()V
    .registers 5

    .line 1
    sget-object v0, Lcom/tencent/mars/xlog/Log;->logImp:Lcom/tencent/mars/xlog/Log$LogImp;

    if-eqz v0, :cond_2a

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    .line 2
    invoke-interface {v0, v1, v2, v3}, Lcom/tencent/mars/xlog/Log$LogImp;->appenderFlush(JZ)V

    .line 3
    sget-object v0, Lcom/tencent/mars/xlog/Log;->sLogInstanceMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_14
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 4
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/mars/xlog/Log$LogInstance;

    invoke-virtual {v1}, Lcom/tencent/mars/xlog/Log$LogInstance;->appenderFlush()V

    goto :goto_14

    :cond_2a
    return-void
.end method

.method public static appenderFlushSync(Z)V
    .registers 4

    .line 1
    sget-object v0, Lcom/tencent/mars/xlog/Log;->logImp:Lcom/tencent/mars/xlog/Log$LogImp;

    if-eqz v0, :cond_9

    const-wide/16 v1, 0x0

    .line 2
    invoke-interface {v0, v1, v2, p0}, Lcom/tencent/mars/xlog/Log$LogImp;->appenderFlush(JZ)V

    :cond_9
    return-void
.end method

.method public static appenderOpen(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 13

    .line 1
    sget-object v0, Lcom/tencent/mars/xlog/Log;->logImp:Lcom/tencent/mars/xlog/Log$LogImp;

    if-eqz v0, :cond_d

    move v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    .line 2
    invoke-interface/range {v0 .. v6}, Lcom/tencent/mars/xlog/Log$LogImp;->appenderOpen(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    :cond_d
    return-void
.end method

.method public static appenderOpen(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .registers 15

    .line 3
    sget-object v0, Lcom/tencent/mars/xlog/Log;->logImp:Lcom/tencent/mars/xlog/Log$LogImp;

    if-eqz v0, :cond_e

    move v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    move-object v7, p6

    .line 4
    invoke-interface/range {v0 .. v7}, Lcom/tencent/mars/xlog/Log$LogImp;->appenderOpen(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    :cond_e
    return-void
.end method

.method public static closeLogInstance(Ljava/lang/String;)V
    .registers 5

    .line 1
    sget-object v0, Lcom/tencent/mars/xlog/Log;->sLogInstanceMap:Ljava/util/Map;

    monitor-enter v0

    .line 2
    :try_start_3
    sget-object v1, Lcom/tencent/mars/xlog/Log;->logImp:Lcom/tencent/mars/xlog/Log$LogImp;

    if-eqz v1, :cond_21

    .line 3
    sget-object v1, Lcom/tencent/mars/xlog/Log;->sLogInstanceMap:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 4
    sget-object v1, Lcom/tencent/mars/xlog/Log;->sLogInstanceMap:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/mars/xlog/Log$LogInstance;

    .line 5
    sget-object v2, Lcom/tencent/mars/xlog/Log;->logImp:Lcom/tencent/mars/xlog/Log$LogImp;

    invoke-interface {v2, p0}, Lcom/tencent/mars/xlog/Log$LogImp;->releaseXlogInstance(Ljava/lang/String;)V

    const-wide/16 v2, -0x1

    .line 6
    # setter for: Lcom/tencent/mars/xlog/Log$LogInstance;->mLogInstancePtr:J
    invoke-static {v1, v2, v3}, Lcom/tencent/mars/xlog/Log$LogInstance;->access$202(Lcom/tencent/mars/xlog/Log$LogInstance;J)J

    .line 7
    :cond_21
    monitor-exit v0

    return-void

    :catchall_23
    move-exception p0

    monitor-exit v0
    :try_end_25
    .catchall {:try_start_3 .. :try_end_25} :catchall_23

    throw p0
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, p1, v0}, Lcom/tencent/mars/xlog/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static varargs d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 16

    .line 2
    sget-object v0, Lcom/tencent/mars/xlog/Log;->logImp:Lcom/tencent/mars/xlog/Log$LogImp;

    if-eqz v0, :cond_3e

    const-wide/16 v1, 0x0

    invoke-interface {v0, v1, v2}, Lcom/tencent/mars/xlog/Log$LogImp;->getLogLevel(J)I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_3e

    if-nez p2, :cond_10

    goto :goto_14

    .line 3
    :cond_10
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :goto_14
    if-nez p1, :cond_18

    const-string p1, ""

    :cond_18
    move-object v12, p1

    .line 4
    sget-object v0, Lcom/tencent/mars/xlog/Log;->logImp:Lcom/tencent/mars/xlog/Log$LogImp;

    const-wide/16 v1, 0x0

    const/4 v6, 0x0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v7

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->getId()J

    move-result-wide v8

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->getId()J

    move-result-wide v10

    const-string v4, ""

    const-string v5, ""

    move-object v3, p0

    invoke-interface/range {v0 .. v12}, Lcom/tencent/mars/xlog/Log$LogImp;->logD(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIJJLjava/lang/String;)V

    :cond_3e
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, p1, v0}, Lcom/tencent/mars/xlog/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static varargs e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 16

    .line 2
    sget-object v0, Lcom/tencent/mars/xlog/Log;->logImp:Lcom/tencent/mars/xlog/Log$LogImp;

    if-eqz v0, :cond_3e

    const-wide/16 v1, 0x0

    invoke-interface {v0, v1, v2}, Lcom/tencent/mars/xlog/Log$LogImp;->getLogLevel(J)I

    move-result v0

    const/4 v1, 0x4

    if-gt v0, v1, :cond_3e

    if-nez p2, :cond_10

    goto :goto_14

    .line 3
    :cond_10
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :goto_14
    if-nez p1, :cond_18

    const-string p1, ""

    :cond_18
    move-object v12, p1

    .line 4
    sget-object v0, Lcom/tencent/mars/xlog/Log;->logImp:Lcom/tencent/mars/xlog/Log$LogImp;

    const-wide/16 v1, 0x0

    const/4 v6, 0x0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v7

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->getId()J

    move-result-wide v8

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->getId()J

    move-result-wide v10

    const-string v4, ""

    const-string v5, ""

    move-object v3, p0

    invoke-interface/range {v0 .. v12}, Lcom/tencent/mars/xlog/Log$LogImp;->logE(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIJJLjava/lang/String;)V

    :cond_3e
    return-void
.end method

.method public static f(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, p1, v0}, Lcom/tencent/mars/xlog/Log;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static varargs f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 16

    .line 2
    sget-object v0, Lcom/tencent/mars/xlog/Log;->logImp:Lcom/tencent/mars/xlog/Log$LogImp;

    if-eqz v0, :cond_3a

    const-wide/16 v1, 0x0

    invoke-interface {v0, v1, v2}, Lcom/tencent/mars/xlog/Log$LogImp;->getLogLevel(J)I

    move-result v0

    const/4 v1, 0x5

    if-gt v0, v1, :cond_3a

    if-nez p2, :cond_10

    goto :goto_14

    .line 3
    :cond_10
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :goto_14
    move-object v12, p1

    .line 4
    sget-object v0, Lcom/tencent/mars/xlog/Log;->logImp:Lcom/tencent/mars/xlog/Log$LogImp;

    const-wide/16 v1, 0x0

    const/4 v6, 0x0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v7

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->getId()J

    move-result-wide v8

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->getId()J

    move-result-wide v10

    const-string v4, ""

    const-string v5, ""

    move-object v3, p0

    invoke-interface/range {v0 .. v12}, Lcom/tencent/mars/xlog/Log$LogImp;->logF(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIJJLjava/lang/String;)V

    :cond_3a
    return-void
.end method

.method public static getImpl()Lcom/tencent/mars/xlog/Log$LogImp;
    .registers 1

    .line 1
    sget-object v0, Lcom/tencent/mars/xlog/Log;->logImp:Lcom/tencent/mars/xlog/Log$LogImp;

    return-object v0
.end method

.method public static getLogInstance(Ljava/lang/String;)Lcom/tencent/mars/xlog/Log$LogInstance;
    .registers 3

    .line 1
    sget-object v0, Lcom/tencent/mars/xlog/Log;->sLogInstanceMap:Ljava/util/Map;

    monitor-enter v0

    .line 2
    :try_start_3
    sget-object v1, Lcom/tencent/mars/xlog/Log;->sLogInstanceMap:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 3
    sget-object v1, Lcom/tencent/mars/xlog/Log;->sLogInstanceMap:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/tencent/mars/xlog/Log$LogInstance;

    monitor-exit v0

    return-object p0

    :cond_15
    const/4 p0, 0x0

    .line 4
    monitor-exit v0

    return-object p0

    :catchall_18
    move-exception p0

    .line 5
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_18

    throw p0
.end method

.method public static getLogLevel()I
    .registers 5

    .line 1
    sget-object v0, Lcom/tencent/mars/xlog/Log;->logImp:Lcom/tencent/mars/xlog/Log$LogImp;

    if-eqz v0, :cond_b

    const-wide/16 v1, 0x0

    .line 2
    invoke-interface {v0, v1, v2}, Lcom/tencent/mars/xlog/Log$LogImp;->getLogLevel(J)I

    move-result v0

    return v0

    :cond_b
    const/4 v0, 0x6

    return v0
.end method

.method public static getSysInfo()Ljava/lang/String;
    .registers 1

    .line 1
    sget-object v0, Lcom/tencent/mars/xlog/Log;->SYS_INFO:Ljava/lang/String;

    return-object v0
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, p1, v0}, Lcom/tencent/mars/xlog/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static varargs i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 16

    .line 2
    sget-object v0, Lcom/tencent/mars/xlog/Log;->logImp:Lcom/tencent/mars/xlog/Log$LogImp;

    if-eqz v0, :cond_3e

    const-wide/16 v1, 0x0

    invoke-interface {v0, v1, v2}, Lcom/tencent/mars/xlog/Log$LogImp;->getLogLevel(J)I

    move-result v0

    const/4 v1, 0x2

    if-gt v0, v1, :cond_3e

    if-nez p2, :cond_10

    goto :goto_14

    .line 3
    :cond_10
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :goto_14
    if-nez p1, :cond_18

    const-string p1, ""

    :cond_18
    move-object v12, p1

    .line 4
    sget-object v0, Lcom/tencent/mars/xlog/Log;->logImp:Lcom/tencent/mars/xlog/Log$LogImp;

    const-wide/16 v1, 0x0

    const/4 v6, 0x0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v7

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->getId()J

    move-result-wide v8

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->getId()J

    move-result-wide v10

    const-string v4, ""

    const-string v5, ""

    move-object v3, p0

    invoke-interface/range {v0 .. v12}, Lcom/tencent/mars/xlog/Log$LogImp;->logI(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIJJLjava/lang/String;)V

    :cond_3e
    return-void
.end method

.method public static openLogInstance(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lcom/tencent/mars/xlog/Log$LogInstance;
    .registers 16

    .line 1
    sget-object v0, Lcom/tencent/mars/xlog/Log;->sLogInstanceMap:Ljava/util/Map;

    monitor-enter v0

    .line 2
    :try_start_3
    sget-object v1, Lcom/tencent/mars/xlog/Log;->sLogInstanceMap:Ljava/util/Map;

    invoke-interface {v1, p4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 3
    sget-object p0, Lcom/tencent/mars/xlog/Log;->sLogInstanceMap:Ljava/util/Map;

    invoke-interface {p0, p4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/tencent/mars/xlog/Log$LogInstance;

    monitor-exit v0

    return-object p0

    .line 4
    :cond_15
    new-instance v9, Lcom/tencent/mars/xlog/Log$LogInstance;

    const/4 v8, 0x0

    move-object v1, v9

    move v2, p0

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move v7, p5

    invoke-direct/range {v1 .. v8}, Lcom/tencent/mars/xlog/Log$LogInstance;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/tencent/mars/xlog/Log$1;)V

    .line 5
    sget-object p0, Lcom/tencent/mars/xlog/Log;->sLogInstanceMap:Ljava/util/Map;

    invoke-interface {p0, p4, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    monitor-exit v0

    return-object v9

    :catchall_29
    move-exception p0

    .line 7
    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_3 .. :try_end_2b} :catchall_29

    throw p0
.end method

.method public static varargs printErrStackTrace(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 19

    .line 1
    sget-object v0, Lcom/tencent/mars/xlog/Log;->logImp:Lcom/tencent/mars/xlog/Log$LogImp;

    if-eqz v0, :cond_57

    const-wide/16 v1, 0x0

    invoke-interface {v0, v1, v2}, Lcom/tencent/mars/xlog/Log$LogImp;->getLogLevel(J)I

    move-result v0

    const/4 v1, 0x4

    if-gt v0, v1, :cond_57

    if-nez p3, :cond_12

    move-object/from16 v0, p2

    goto :goto_16

    .line 2
    :cond_12
    invoke-static/range {p2 .. p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_16
    if-nez v0, :cond_1a

    const-string v0, ""

    .line 3
    :cond_1a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "  "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p1 .. p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 4
    sget-object v2, Lcom/tencent/mars/xlog/Log;->logImp:Lcom/tencent/mars/xlog/Log$LogImp;

    const-wide/16 v3, 0x0

    const/4 v8, 0x0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v9

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v10

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v12

    const-string v6, ""

    const-string v7, ""

    move-object v5, p0

    invoke-interface/range {v2 .. v14}, Lcom/tencent/mars/xlog/Log$LogImp;->logE(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIJJLjava/lang/String;)V

    :cond_57
    return-void
.end method

.method public static setConsoleLogOpen(Z)V
    .registers 4

    .line 1
    sget-object v0, Lcom/tencent/mars/xlog/Log;->logImp:Lcom/tencent/mars/xlog/Log$LogImp;

    if-eqz v0, :cond_9

    const-wide/16 v1, 0x0

    .line 2
    invoke-interface {v0, v1, v2, p0}, Lcom/tencent/mars/xlog/Log$LogImp;->setConsoleLogOpen(JZ)V

    :cond_9
    return-void
.end method

.method public static setLevel(IZ)V
    .registers 4

    .line 1
    sput p0, Lcom/tencent/mars/xlog/Log;->level:I

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "new log level: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    return-void
.end method

.method public static setLogImp(Lcom/tencent/mars/xlog/Log$LogImp;)V
    .registers 1

    .line 1
    sput-object p0, Lcom/tencent/mars/xlog/Log;->logImp:Lcom/tencent/mars/xlog/Log$LogImp;

    return-void
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, p1, v0}, Lcom/tencent/mars/xlog/Log;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static varargs v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 16

    .line 2
    sget-object v0, Lcom/tencent/mars/xlog/Log;->logImp:Lcom/tencent/mars/xlog/Log$LogImp;

    if-eqz v0, :cond_3d

    const-wide/16 v1, 0x0

    invoke-interface {v0, v1, v2}, Lcom/tencent/mars/xlog/Log$LogImp;->getLogLevel(J)I

    move-result v0

    if-gtz v0, :cond_3d

    if-nez p2, :cond_f

    goto :goto_13

    .line 3
    :cond_f
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :goto_13
    if-nez p1, :cond_17

    const-string p1, ""

    :cond_17
    move-object v12, p1

    .line 4
    sget-object v0, Lcom/tencent/mars/xlog/Log;->logImp:Lcom/tencent/mars/xlog/Log$LogImp;

    const-wide/16 v1, 0x0

    const/4 v6, 0x0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v7

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->getId()J

    move-result-wide v8

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->getId()J

    move-result-wide v10

    const-string v4, ""

    const-string v5, ""

    move-object v3, p0

    invoke-interface/range {v0 .. v12}, Lcom/tencent/mars/xlog/Log$LogImp;->logV(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIJJLjava/lang/String;)V

    :cond_3d
    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, p1, v0}, Lcom/tencent/mars/xlog/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static varargs w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 16

    .line 2
    sget-object v0, Lcom/tencent/mars/xlog/Log;->logImp:Lcom/tencent/mars/xlog/Log$LogImp;

    if-eqz v0, :cond_3e

    const-wide/16 v1, 0x0

    invoke-interface {v0, v1, v2}, Lcom/tencent/mars/xlog/Log$LogImp;->getLogLevel(J)I

    move-result v0

    const/4 v1, 0x3

    if-gt v0, v1, :cond_3e

    if-nez p2, :cond_10

    goto :goto_14

    .line 3
    :cond_10
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :goto_14
    if-nez p1, :cond_18

    const-string p1, ""

    :cond_18
    move-object v12, p1

    .line 4
    sget-object v0, Lcom/tencent/mars/xlog/Log;->logImp:Lcom/tencent/mars/xlog/Log$LogImp;

    const-wide/16 v1, 0x0

    const/4 v6, 0x0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v7

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->getId()J

    move-result-wide v8

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->getId()J

    move-result-wide v10

    const-string v4, ""

    const-string v5, ""

    move-object v3, p0

    invoke-interface/range {v0 .. v12}, Lcom/tencent/mars/xlog/Log$LogImp;->logW(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIJJLjava/lang/String;)V

    :cond_3e
    return-void
.end method
